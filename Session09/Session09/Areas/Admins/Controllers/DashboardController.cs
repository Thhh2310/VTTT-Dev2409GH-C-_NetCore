using Microsoft.AspNetCore.Mvc;

namespace Session09.Areas.Admins.Controllers
{
    public class DashboardController : BaseController
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
