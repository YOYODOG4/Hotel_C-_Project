using Microsoft.AspNetCore.Mvc;
using project_ver1.Models;
using System;
using System.Data.Common;
using System.Diagnostics;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;
using MyWebsite.Extensions;
using static project_ver1.Controllers.ProductController;

namespace project_ver1.Controllers
{
    public class RoomController : Controller
    {
        private readonly HomeDbContext _context;

        //OrderData orderData declaration
        private OrderData orderData;

        public RoomController(HomeDbContext context)
        {
            _context = context;
        }

        public async Task<IActionResult> Index()
        {
            SetUserViewBag();
            if (HttpContext.Session.GetObject<OrderData>("room") != null)
            {
                var orderData = HttpContext.Session.GetObject<OrderData>("room");
                ViewBag.CheckInDate = orderData.CheckIn;
                ViewBag.CheckOutDate = orderData.CheckOut;
            }
            
            // Retrieve room data from the database
            var rooms = await _context.Rooms
                .Include(r => r.Category) // Include related category data if needed
                .ToListAsync();

            // Pass room data to the view
            return View(rooms);
        }

        [HttpPost]
        public ActionResult SearchRooms(DateTime checkInDate, DateTime checkOutDate, int roomType)
        {
            SetUserViewBag();
            if (HttpContext.Session.GetInt32("UserId") != null)
            {
                // 獲取所有房間
                var allRooms = _context.Rooms
                                   .Where(r => r.CategoryID == roomType)
                                   .ToList();

                // 獲取已預訂的房間ID
                var bookedRoomIds = (from rs in _context.Rooms
                                     join orderDetails in _context.RoomOrderDetails on rs.ID equals orderDetails.RoomID
                                     join order in _context.RoomOrder on orderDetails.OrderID equals order.ID
                                     where order.CheckIn < checkOutDate && order.CheckOut > checkInDate
                                     select orderDetails.RoomID).ToList();


                // 獲取可用房間
                var availableRooms = allRooms.Where(r => !bookedRoomIds.Contains(r.ID)).ToList();
                //remove rooms from orderData.Details
                if (HttpContext.Session.GetObject<OrderData>("room") != null)
                {
                    var orderData = HttpContext.Session.GetObject<OrderData>("room");
                    if (orderData.Details != null)
                    {
                        var excludeRooms = orderData.Details.Select(d => d.RoomID).ToList();
                        availableRooms.RemoveAll(r => excludeRooms.Contains(r.ID));
                    }
                }

                // 將可用房間轉換成 RoomViewModel
                var availableRoomViewModels = availableRooms.Select(r => new Rooms
                {
                    ID = r.ID,
                    Price = r.Price,
                    Image = r.Image

                }).ToList();
                ViewBag.CheckInDate = checkInDate;
                ViewBag.CheckOutDate = checkOutDate;
                ViewBag.roomCategory = roomType;
                return View(availableRoomViewModels);
            }
            else
            {
                return Redirect("/Home/member");
            }
        }

        public IActionResult BookRoom(int roomId, DateTime checkInDate, DateTime checkOutDate)
        {
            SetUserViewBag();
            if (HttpContext.Session.GetInt32("UserId") != null)
            {
                ViewBag.CheckInDate = checkInDate;
                ViewBag.CheckOutDate = checkOutDate;
                var rooms = _context.Rooms.Include(r => r.Category).FirstOrDefault(r => r.ID == roomId);
                ViewBag.roomCategory = rooms?.Category;
                return View(rooms);
            }
            else
            {
                return Redirect("/Home/member");
            }

        }
        public IActionResult ConfirmBooking()
        {
            if (HttpContext.Session.GetInt32("UserId") != null)
            {
                SetUserViewBag();
                return View();
            }
            else
            {
                return Redirect("/Home/member");
            }
        }

        [HttpPost]
        public IActionResult ConfirmBooking(int roomId, DateTime checkInDate, DateTime checkOutDate, int Price)
        {
            SetUserViewBag();
            if (HttpContext.Session.GetInt32("UserId") != null)
            {
                if (HttpContext.Session.GetObject<OrderData>("room") == null)
                {
                    // create a new orderData
                    orderData = new OrderData();
                    orderData.CustomerID = (int)HttpContext.Session.GetInt32("UserId");
                    orderData.OrderTime = DateTime.Now;
                    orderData.CheckIn = checkInDate;
                    orderData.CheckOut = checkOutDate;
                    orderData.OrderFinished = false;
                    orderData.EmployeeID = null;
                    orderData.SumPrice = 0;
                }
                else
                {
                    orderData = HttpContext.Session.GetObject<OrderData>("room");
                }

                DetailData detailData = new DetailData
                {
                    RoomID = roomId,
                    Price = Price
                };

                orderData.SumPrice += detailData.Price;
                // add orderData.Details
                orderData.Details.Add(detailData);

                // set value of session storage "value"
                HttpContext.Session.SetObject("room", orderData);
                ViewBag.CheckInDate = checkInDate;
                ViewBag.CheckOutDate = checkOutDate;

                var roomList = new List<object>();
                var ID_List = new List<int>();

                // get all data from table [Rooms] based on orderData.Details
                foreach (var item in orderData.Details)
                {
                    var query = _context.Rooms.Find(item.RoomID);
                  if(query != null)
                    {
                        ViewBag.roomCategory = query.CategoryID;
                    }
                    roomList.Add(query);
                    ID_List.Add(query.ID);
                }
                ViewBag.Room_List = ID_List;
                return View(roomList);
            }
            else
            {

                return Redirect("/Home/member");
            }
        }

        [HttpPost]
        public IActionResult Remove(int productId, int roomCategory)
        {
            SetUserViewBag();
            var orderData = HttpContext.Session.GetObject<OrderData>("room");
            var removeRoom = orderData.Details.FirstOrDefault(r => r.RoomID == productId);
            ViewBag.roomCategory = roomCategory;
            orderData.Details.Remove(removeRoom);
            orderData.SumPrice -= removeRoom.Price;
            HttpContext.Session.SetObject("room", orderData);
            ViewBag.CheckInDate = orderData.CheckIn;
            ViewBag.CheckInDate = orderData.CheckOut;

            var roomList = new List<object>();
            var ID_List = new List<int>();

            // get all data from table [Rooms] based on orderData.Details
            foreach (var item in orderData.Details)
            {
                var query = _context.Rooms.Find(item.RoomID);
                if (query != null)
                {
                    ViewBag.roomCategory = query.CategoryID;
                }
                roomList.Add(query);
                ID_List.Add(query.ID);
            }
            ViewBag.Room_List = ID_List;
            return View("ConfirmBooking", roomList);
        }

        [HttpPost]
        public IActionResult SaveToDatabase()
        {
            if (HttpContext.Session.GetInt32("UserId") != null)
            {

                var orderData = HttpContext.Session.GetObject<OrderData>("room");

                if (orderData != null)
                {

                    var roomOrder = new Room_Order
                    {
                        CustomerID = orderData.CustomerID,
                        OrderTime = orderData.OrderTime,
                        CheckIn = orderData.CheckIn,
                        CheckOut = orderData.CheckOut,
                        OrderFinished = orderData.OrderFinished,
                        EmployeeID = orderData.EmployeeID,
                        SumPrice = orderData.SumPrice
                    };


                    _context.RoomOrder.Add(roomOrder);
                    _context.SaveChanges();

                    // Insert data in Room_Order_Details
                    foreach (var detail in orderData.Details)
                    {
                        var roomOrderDetail = new Room_Order_Details
                        {
                            OrderID = roomOrder.ID,
                            RoomID = detail.RoomID,
                            Price = detail.Price
                        };

                        _context.RoomOrderDetails.Add(roomOrderDetail);

                    }


                    _context.SaveChanges();


                    HttpContext.Session.Remove("room");
                }


                return RedirectToAction("Index");
            }
            else
            {
                return Redirect("/Home/member");
            }
        }

        private void SetUserViewBag()
        {
            if (HttpContext.Session.GetInt32("UserId") != null)
            {
                var userName = HttpContext.Session.GetString("UserName");
                var userId = HttpContext.Session.GetInt32("UserId");

                ViewBag.UserName = userName;
                ViewBag.UserId = userId;
            }

            if (HttpContext.Session.GetInt32("EmployeeId") != null)
            {
                var EmployeeName = HttpContext.Session.GetString("EmployeeName");
                var EmployeeId = HttpContext.Session.GetInt32("EmployeeId");

                ViewBag.UserName = EmployeeName;
                ViewBag.UserId = EmployeeId;
            }
        }
        public class OrderData : Room_Order
        {

            public List<DetailData> Details { get; set; }
            public OrderData()
            {
                Details = new List<DetailData>();
            }
        }
        public class DetailData : Room_Order_Details
        {

        }
    }
}