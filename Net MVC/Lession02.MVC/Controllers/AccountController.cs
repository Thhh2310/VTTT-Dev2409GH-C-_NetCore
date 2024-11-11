using Lession02.MVC.Models;
using Microsoft.AspNetCore.Mvc;
using System.Xml.Linq;

namespace Lession02.MVC.Controllers
{
    public class AccountController : Controller
    {
        public IActionResult Index()
        {
            List<Account> accounts = new List<Account>
            {
                new Account()
                {
                    Id = 1,
                    Name = "Test",
                    Email = "test@gmail.com",
                    Phone = "035307234",
                    Avatar = Url.Content("/images/avatar/avatar1.jpg"),
                    Address = "Hà Nam",
                    Bio = "",
                    Gender = 1,
                    Birthday = new DateTime(2003,10,23)
                },
                new Account()
                {
                    Id = 2,
                    Name = "New",
                    Email = "new@gmail.com",
                    Phone = "0358746589",
                    Avatar = Url.Content("/images/avatar/avatar1.jpg"),
                    Address = "Hà Nội",
                    Bio = "",
                    Gender = 0,
                    Birthday = new DateTime(2003,05,02)
                },
                new Account()
                {
                    Id = 3,
                    Name = "Account",
                    Email = "account@gmail.com",
                    Phone = "0359871534",
                    Avatar = Url.Content("/images/avatar/avatar1.jpg"),
                    Address = "Hà Đông",
                    Bio = "",
                    Gender = 1,
                    Birthday = new DateTime(2003,07,15)
                },
            };

            ViewBag.Accounts = accounts;
            return View();
        }

        //định nghĩa url
        [Route("ho-so-cua-tui", Name = "profile")]
        public IActionResult Profile(int id)
        {
            List<Account> accounts = new List<Account>
            {
                new Account()
                {
                    Id = 1,
                    Name = "Test",
                    Email = "test@gmail.com",
                    Phone = "035307234",
                    Avatar = "/images/avatar/avatar1.jpg",
                    Address = "Hà Nam",
                    Bio = "",
                    Gender = 1,
                    Birthday = new DateTime(2003,10,23)
                },
                new Account()
                {
                    Id = 2,
                    Name = "New",
                    Email = "new@gmail.com",
                    Phone = "0358746589",
                    Avatar = "/images/avatar/avatar1.jpg",
                    Address = "Hà Nội",
                    Bio = "",
                    Gender = 0,
                    Birthday = new DateTime(2003,05,02)
                },
                new Account()
                {
                    Id = 3,
                    Name = "Account",
                    Email = "account@gmail.com",
                    Phone = "0359871534",
                    Avatar = "/images/avatar/avatar1.jpg",
                    Address = "Hà Đông",
                    Bio = "",
                    Gender = 1,
                    Birthday = new DateTime(2003,07,15)
                },
            };

            Account account = accounts.FirstOrDefault(a => a.Id == id);
            ViewBag.account = account;
            return View();
        }
    }
}
