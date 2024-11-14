﻿using Lession4.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Reflection;

namespace Lession4.Controllers
{
    public class PeoplesController : Controller
    {
        // GET: PeoplesController
        public ActionResult Index()
        {
            var _peoples = DataLocal.GetPeoples();
            return View(_peoples);
        }

        // GET: PeoplesController/Details/5
        public ActionResult Details(int id)
        {
            var peoples = DataLocal.GetPeopleById(id);
            return View(peoples);
        }

        // GET: PeoplesController/Create
        public ActionResult Create()
        {
            People people = new People();
            return View(people);
        }

        // POST: PeoplesController/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(People model)
        {
            try
            {
                //upload file vào thư mục ảnh
                var files = HttpContext.Request.Form.Files;
                //using System.Linq
                if (files.Count() > 0 && files[0].Length > 0 )
                {
                    var file = files[0];
                    var FileName = file.FileName;
                    //using System.IO
                    var path = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot\\images\\avatar", FileName);
                    using (var stream = new FileStream(path, FileMode.Create))
                    {
                        file.CopyTo(stream);
                        model.Avatar = "images/avatar/" + FileName; //Gán tên ảnh cho thuộc tính avatar
                    }
                }    
                //thêm peoples vào danh sách DataLocal
                DataLocal._peoples.Add(model);
                return RedirectToAction(nameof(Index));
            }
            catch(Exception ex)
            {
                ViewBag.error = ex.Message;
                return View(model);
            }
        }

        // GET: PeoplesController/Edit/5
        public ActionResult Edit(int id)
        {
            var people = DataLocal.GetPeopleById(id);
            return View(people);
        }

        // POST: PeoplesController/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int id, People model)
        {
            try
            {
                //upload file vào thư mục ảnh
                var files = HttpContext.Request.Form.Files;
                //using System.Linq
                if (files.Count() > 0 && files[0].Length > 0)
                {
                    var file = files[0];
                    var FileName = file.FileName;
                    //using System.IO
                    var path = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot\\images\\avatar", FileName);
                    using (var stream = new FileStream(path, FileMode.Create))
                    {
                        file.CopyTo(stream);
                        model.Avatar = "images/avatar/" + FileName; //Gán tên ảnh cho thuộc tính avatar
                    }
                }
                //Cập nhật model vào danh sách DataLocal
                for (int i = 0; i < DataLocal._peoples.Count; i++) 
                {
                    if (DataLocal._peoples[i].Id == id)
                    {
                        DataLocal._peoples[i] = model;
                        break;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View(model);
            }
        }

        // GET: PeoplesController/Delete/5
        public ActionResult Delete(int id)
        {
            var peoples = DataLocal.GetPeopleById(id);
            return View(peoples);
        }

        // POST: PeoplesController/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id, People model)
        {
            try
            {
                for (int i = 0; i < DataLocal._peoples.Count; i++)
                {
                    if (DataLocal._peoples[i].Id == id)
                    {
                        DataLocal._peoples.RemoveAt(i);
                        break;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
    }
}
