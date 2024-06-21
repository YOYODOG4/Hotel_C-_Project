using Microsoft.AspNetCore.Mvc;
using System.Text;
using System.Web;
using System.Security.Cryptography;
using System.Net;

namespace project_ver1.Controllers
{
    public class EpayController : Controller
    {
        public IActionResult Index(int SumPrice,List<string> ProductName)
        {
            SetUserViewBag();
            var orderId = Guid.NewGuid().ToString().Replace("-", "").Substring(0, 20);
            //需填入你的網址
            var website = $"http://localhost:5192";
            string myStr = string.Empty;
            foreach (string item in ProductName)
            {
                myStr += item + "#";
            };
            var order = new Dictionary<string, string>
       {
        //綠界需要的參數
        { "MerchantTradeNo",  orderId},
        { "MerchantTradeDate",  DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss")},
        { "TotalAmount", SumPrice.ToString()},
        { "TradeDesc",  "無"},
        { "ItemName", myStr},
        { "ExpireDate",  "3"},
        { "CustomField1",  ""},
        { "CustomField2",  ""},
        { "CustomField3",  ""},
        { "CustomField4",  ""},
        { "ReturnURL",  "http://localhost:5192"},
        //{ "OrderResultURL", $"{website}/Home/Index"},
        //{ "PaymentInfoURL",  $"{website}/api/Ecpay/AddAccountInfo"},
        //{ "ClientRedirectURL",  $"{website}/Home/AccountInfo/{orderId}"},
        { "MerchantID",  "2000132"},
        { "IgnorePayment",  "GooglePay#WebATM#CVS#BARCODE"},
        { "PaymentType",  "aio"},
        { "ChoosePayment",  "ALL"},
        { "EncryptType",  "1"},
       };
            //檢查碼
            order["CheckMacValue"] = GetCheckMacValue(order);
            return View(order);
        }
        private string GetCheckMacValue(Dictionary<string, string> order)
        {
            
            var param = order.Keys.OrderBy(x => x).Select(key => key + "=" + order[key]).ToList();
            var checkValue = string.Join("&", param);
            //測試用的 HashKey
            var hashKey = "5294y06JbISpM5x9";
            //測試用的 HashIV
            var HashIV = "v77hoKGq4kWxNNIS";
            checkValue = $"HashKey={hashKey}" + "&" + checkValue + $"&HashIV={HashIV}";
            checkValue = HttpUtility.UrlEncode(checkValue).ToLower();
            checkValue = GetSHA256(checkValue);
            return checkValue.ToUpper();
        }
        private string GetSHA256(string value)
        {
            var result = new StringBuilder();
            var sha256 = SHA256Managed.Create();
            var bts = Encoding.UTF8.GetBytes(value);
            var hash = sha256.ComputeHash(bts);
            for (int i = 0; i < hash.Length; i++)
            {
                result.Append(hash[i].ToString("X2"));
            }
            return result.ToString();
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

        /// step5 : 取得付款資訊，更新資料庫
        //[HttpPost]
        //public ActionResult PayInfo(FormCollection id)
        //{
        //    var data = new Dictionary<string, string>();
        //    foreach (string key in id.Keys)
        //    {
        //        data.Add(key, id[key]);
        //    }
        //    Database1Entities db = new Database1Entities();
        //    string temp = id["MerchantTradeNo"]; //寫在LINQ(下一行)會出錯，
        //    var ecpayOrder = db.EcpayOrders.Where(m => m.MerchantTradeNo == temp).FirstOrDefault();
        //    if (ecpayOrder != null)
        //    {
        //        ecpayOrder.RtnCode = int.Parse(id["RtnCode"]);
        //        if (id["RtnMsg"] == "Succeeded") ecpayOrder.RtnMsg = "已付款";
        //        ecpayOrder.PaymentDate = Convert.ToDateTime(id["PaymentDate"]);
        //        ecpayOrder.SimulatePaid = int.Parse(id["SimulatePaid"]);
        //        db.SaveChanges();
        //    }
        //    return View("EcpayView", data);
        //}
        ///// step5 : 取得虛擬帳號 資訊
        //[HttpPost]
        //public ActionResult AccountInfo(FormCollection id)
        //{
        //    var data = new Dictionary<string, string>();
        //    foreach (string key in id.Keys)
        //    {
        //        data.Add(key, id[key]);
        //    }
        //    Database1Entities db = new Database1Entities();
        //    string temp = id["MerchantTradeNo"]; //寫在LINQ會出錯
        //    var ecpayOrder = db.EcpayOrders.Where(m => m.MerchantTradeNo == temp).FirstOrDefault();
        //    if (ecpayOrder != null)
        //    {
        //        ecpayOrder.RtnCode = int.Parse(id["RtnCode"]);
        //        if (id["RtnMsg"] == "Succeeded") ecpayOrder.RtnMsg = "已付款";
        //        ecpayOrder.PaymentDate = Convert.ToDateTime(id["PaymentDate"]);
        //        ecpayOrder.SimulatePaid = int.Parse(id["SimulatePaid"]);
        //        db.SaveChanges();
        //    }
        //    return View("EcpayView", data);
        //}
    }
}
