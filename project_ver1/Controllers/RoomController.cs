using Microsoft.AspNetCore.Mvc;
using project_ver1.Models;
using System;
using System.Data.Common;
using System.Diagnostics;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;

namespace project_ver1.Controllers
{
    public class RoomController : Controller
    {
        private readonly HomeDbContext _context;

        public RoomController(HomeDbContext context)
        {
            _context = context;
        }

        public async Task<IActionResult> Index()
        {
            SetUserViewBag();
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

            // 將可用房間轉換成 RoomViewModel
            var availableRoomViewModels = availableRooms.Select(r => new Room_Order
            {
                ID = r.ID,
                CheckIn = checkInDate,
                CheckOut = checkOutDate
            }).ToList();
            ViewBag.CheckInDate = checkInDate;
            ViewBag.CheckOutDate = checkOutDate;
            return View(availableRoomViewModels);
        }

        public IActionResult BookRoom(int roomId, DateTime checkInDate, DateTime checkOutDate)
        {
            SetUserViewBag();
            ViewBag.CheckInDate = checkInDate;
            ViewBag.CheckOutDate = checkOutDate;
            var rooms = _context.Rooms.Include(r => r.Category).FirstOrDefault(r => r.ID == roomId);

            return View(rooms);
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


    }

}






