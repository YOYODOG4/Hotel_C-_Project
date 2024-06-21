using Microsoft.AspNetCore.Mvc;

namespace project_ver1.Controllers
{
    public class EcpayController1 : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        //Database1Entities db = new Database1Entities();
        ////step4 : 新增訂單
        //[System.Web.Http.HttpPost]
        //[System.Web.Http.Route("api/Ecpay/AddOrders")]
        //public string AddOrders(get_localStorage json)
        //{
        //    string num = "0";
        //    try
        //    {
        //        EcpayOrders Orders = new EcpayOrders();
        //        Orders.MemberID = json.MerchantID;
        //        Orders.MerchantTradeNo = json.MerchantTradeNo;
        //        Orders.RtnCode = 0; //未付款
        //        Orders.RtnMsg = "訂單成功尚未付款";
        //        Orders.TradeNo = json.MerchantID.ToString();
        //        Orders.TradeAmt = json.TotalAmount;
        //        Orders.PaymentDate = Convert.ToDateTime(json.MerchantTradeDate);
        //        Orders.PaymentType = json.PaymentType;
        //        Orders.PaymentTypeChargeFee = "0";
        //        Orders.TradeDate = json.MerchantTradeDate;
        //        Orders.SimulatePaid = 0;
        //        db.EcpayOrders.Add(Orders);
        //        db.SaveChanges();
        //        num = "OK";
        //    }
        //    catch (Exception ex)
        //    {
        //        num = ex.ToString();
        //    }
        //    return num;
        //}
        //[System.Web.Http.HttpPost]
        //[System.Web.Http.Route("api/Ecpay/AddPayInfo")]
        //public HttpResponseMessage AddPayInfo(JObject info)
        //{
        //    try
        //    {
        //        var cache = MemoryCache.Default;
        //        cache.Set(info.Value<string>("MerchantTradeNo"), info, DateTime.Now.AddMinutes(60));
        //        return ResponseOK();
        //    }
        //    catch (Exception e)
        //    {
        //        return ResponseError();
        //    }
        //}
        //[System.Web.Http.HttpPost]
        //[System.Web.Http.Route("api/Ecpay/AddAccountInfo")]
        //public HttpResponseMessage AddAccountInfo(JObject info)
        //{
        //    try
        //    {
        //        var cache = MemoryCache.Default;
        //        cache.Set(info.Value<string>("MerchantTradeNo"), info, DateTime.Now.AddMinutes(60));
        //        return ResponseOK();
        //    }
        //    catch (Exception e)
        //    {
        //        return ResponseError();
        //    }
        //}
        //private HttpResponseMessage ResponseError()
        //{
        //    var response = new HttpResponseMessage();
        //    response.Content = new StringContent("0|Error");
        //    response.Content.Headers.ContentType = new MediaTypeHeaderValue("text/html");
        //    return response;
        //}
        //private HttpResponseMessage ResponseOK()
        //{
        //    var response = new HttpResponseMessage();
        //    response.Content = new StringContent("1|OK");
        //    response.Content.Headers.ContentType = new MediaTypeHeaderValue("text/html");
        //    return response;
        //}
    }
}
