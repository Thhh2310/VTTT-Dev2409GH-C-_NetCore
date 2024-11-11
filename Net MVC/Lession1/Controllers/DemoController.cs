using Microsoft.AspNetCore.Mvc;

namespace Lession1.Controllers
{
    public class DemoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
