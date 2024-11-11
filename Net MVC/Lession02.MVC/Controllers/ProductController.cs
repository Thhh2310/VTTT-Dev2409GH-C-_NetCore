using Lession02.MVC.Models;
using Microsoft.AspNetCore.Mvc;

namespace Lession02.MVC.Controllers
{
    public class ProductController : Controller
    {
        public IActionResult Index()
        {
            List<Product> products = new List<Product>
            {
                new Product()
                {

                }
            };

            List<Category> categories = new List<Category>
            {

            };

            return View();
        }
    }
}
