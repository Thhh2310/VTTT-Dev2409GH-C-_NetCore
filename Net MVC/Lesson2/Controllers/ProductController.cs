using Lesson2.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.CodeAnalysis;

namespace Lesson2.Controllers
{
    public class ProductController : Controller
    {
        public IActionResult Index()
        {
            ViewData["messageVD"] = "Dữ liệu trong ViewData";
            ViewBag.messageVD = "Dữ liệu trong ViewBag";
            TempData["messageTD"] = "Dữ liệu lưu trong ViewData";
            return View();
        }

        public IActionResult GetAllProduct()
        {
            
            return View("Products");
        }

        public IActionResult GetProduct()
        {
            Product p = new Product()
            {
                ProductId = 1,
                ProductName = "Test",
                Year = 2014,
                Price = 20000
            };
            ViewBag.product = p;
            ViewData["productVd"] = p;
            return View();
        }
    }
}
