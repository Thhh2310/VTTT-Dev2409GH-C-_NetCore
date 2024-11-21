using Microsoft.AspNetCore.Mvc;
using Session09.Areas.Admins.Models;
using Session09.Models;
using System.Text;

namespace Session09.Areas.Admins.Controllers
{
    [Area("Admins")]
    public class LoginController : Controller
    {
        private readonly DevXuongMocContext _context;

        public LoginController(DevXuongMocContext context)
        {
            _context = context;
        }

        [HttpGet]   //Get, hiển thị form để nhập dữ liệu
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]  //POST -> khi submit form
        public IActionResult Index(Login model)
        {
            if (!ModelState.IsValid)
            {
                return View(model);     //trả về trạng thái lỗi
            }
            //xử lý logic phần đăng nhập tại đây
            var pass = model.Password;
            var dataLogin = _context.AdminUsers.Where(x => x.Email.Equals(model.Email) && x.Password.Equals(pass)).FirstOrDefault();
            if(dataLogin != null)
            {
                //Lưu session khi đăng nhập thành công
                HttpContext.Session.SetString("AdminLogin", model.Email);
                return RedirectToAction("Index", "Dashboard");
            }
            return View(model);
            

        }

        [HttpGet]
        public IActionResult Logout()
        {
            HttpContext.Session.Remove("AdminLogin");   //huỷ session với ADMINLOGIN đã đăng nhập trc đó

            return RedirectToAction("Index");
        }


    }
}
