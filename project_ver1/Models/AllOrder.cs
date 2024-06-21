using System;
using System.Collections.Generic;

namespace project_ver1.Models;

public class AgriculturalOrderModel
{
    public Agricultural_Order Order { get; set; }
    public List< Agricultural_Order_Details> OrderDetails { get; set; } = new List<Agricultural_Order_Details>();
    public List<Agricultural_Products> Products { get; set; } = new List<Agricultural_Products>();
    public List<Agricultural_Products_Category> ProductCategories { get; set; } = new List<Agricultural_Products_Category>();
}
public class RoomOrderModel
{
    public Room_Order RoomOrder { get; set; }
    public List<Room_Order_Details> RoomOrderDetails { get; set; } = new List<Room_Order_Details>();
    public List<Rooms> Rooms { get; set; } = new List<Rooms>();
    public List<Room_Category> RoomCategory { get; set; } = new List<Room_Category>();
}

public class CombinedOrderViewModel
{
    public List<AgriculturalOrderModel> AgriculturalOrders { get; set; }
    public List<RoomOrderModel> RoomOrders { get; set; }
}
public class RoomOrderViewModel
{
    public int OrderID { get; set; }
    public int CustomerID { get; set; }
    public string CustomerName { get; set; }
    public string? CustomerPhone { get; set; }
    public string? CustomerAddress { get; set; }
    public string? CustomerEmail { get; set; }
    public DateTime OrderTime { get; set; }
    public DateTime CheckIn { get; set; }
    public DateTime CheckOut { get; set; }
    public bool OrderFinished { get; set; }
    public int? EmployeeID { get; set; }
    public string EmployeeName { get; set; }
    public int? SumPrice { get; set; }
    public List<RoomOrderDetailViewModel> RoomOrderDetails { get; set; }
}

public class RoomOrderDetailViewModel
{
    public int RoomID { get; set; }
    public string RoomCategory { get; set; }
    public int? Price { get; set; }
}
