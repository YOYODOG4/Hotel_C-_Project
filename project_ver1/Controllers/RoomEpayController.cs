using Microsoft.AspNetCore.Mvc;
using System.Text;
using System.Web;
using System.Security.Cryptography;

namespace project_ver1.Controllers
{
    public class RoomEpayController : Controller
    {
        //因為我們的字串的變數同名的有很多個(但是單一比顯示訂單會跑出都叫做RoomName的東西，所以我們用陣列來接住他們，才不會跟上個客人的訂單重複到)

        //IActionResult跟ActionResult沒關係都可以用
        public IActionResult Index(int RoomSumPrice,List<string> RoomName) 
        {
            var orderId = Guid.NewGuid().ToString().Replace("-", "").Substring(0, 20);
            //需填入你的網址
            var website = $"http://localhost:5192";
            //初始值設一個空字串，因應下面的迴圈，我的商品名稱叫a沒有這一行的話，綠界定單商品名稱會跑aaa，string myStr = "aaa";
            string myStr = string.Empty;
            //這個就是把全部的RoomName陣列串起來，全部都串成同一個字串，官方是用#號來分割的(一人房#二人房#三人房#四人房#)，為什麼不是List<string>因為我們已經拿出來了，所以叫string
            foreach (string item in RoomName)
            {
                myStr += item + "#";
            };
            //Dictionary<string, string>這個是key value
            var order = new Dictionary<string, string>
       {
        //綠界需要的參數
        { "MerchantTradeNo",  orderId},
        { "MerchantTradeDate",  DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss")},
        { "TotalAmount", RoomSumPrice.ToString()},
        { "TradeDesc",  "無"},
        { "ItemName", myStr},
        { "ExpireDate",  "3"},
        { "CustomField1",  ""},
        { "CustomField2",  ""},
        { "CustomField3",  ""},
        { "CustomField4",  ""},
        { "ReturnURL",  "http://localhost:5192"},
        //{ "OrderResultURL", $"{website}/Home/Order"},
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
            //他就會把這筆訂單傳回index視圖裡面
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
    }
}
