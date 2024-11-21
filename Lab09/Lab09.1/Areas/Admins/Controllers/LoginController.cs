using Lab09._1.Areas.Admins.Models;
using Microsoft.AspNetCore.Mvc;

namespace Lab09._1.Areas.Admins.Controllers
{
    [Area("Admins")]
    public class LoginController : Controller
    {
        [HttpGet]   //Get, hiển thị form để nhập dữ liệu
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]  //POST -> khi submit form
        public IActionResult Index(Login model)
        {
            if(!ModelState.IsValid)
            { 
                return View(model);     //trả về trạng thái lỗi
            }   
            //xử lý logic phần đăng nhập
            return View();
            
        }
    }
}
