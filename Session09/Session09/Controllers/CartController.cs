using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.AspNetCore.Mvc.Rendering;
using Newtonsoft.Json;
using Session09.Models;

namespace Session09.Controllers
{
    public class CartController : Controller, IActionFilter
    {
        private readonly DevXuongMocContext _context;
        private List<Cart> carts = new List<Cart>();
        public CartController(DevXuongMocContext context)
        {
            _context = context;
        }

        public override void OnActionExecuting(ActionExecutingContext context)
        {
            var cartInSesion = HttpContext.Session.GetString("My-Cart");
            if(cartInSesion != null)
            {
                //nếu cartInSession ko null thì gán giá trị cho biến carts
                //chuyển sang dữ liệu json
                carts = JsonConvert.DeserializeObject<List<Cart>>(cartInSesion);
            }
            base.OnActionExecuting(context);
        }

        public IActionResult Index()
        {
            float total = 0;
            foreach(var item in carts)
            {
                total += item.Quantity * item.Price;
            }
            ViewBag.total = total;  //tổng tiền của đơn hàng
            return View(carts);
        }


        /// <summary>
        /// Code cho chức năng thêm sản phẩm vào giỏ hàng
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public IActionResult Add(int id)
        {
            if(carts.Any(c => c.Id == id))  //nếu sp này đã có trong giỏ hàng
            {
                carts.Where(c => c.Id == id).First().Quantity += 1; //tăng số lượng
            }
            else //nếu sp chưa có trong giỏ hàng, thêm sản phẩm vào giỏ hàng
            {
                var p = _context.Products.Find(id); //tìm sp cần mua trong bảng sản phẩm
                //tạo mới một sp để thêm vào giỏ hàng
                var item = new Cart()
                {
                    Id = p.Id,
                    Name = p.Title,
                    Price = (float)p.PriceNew.Value,
                    Quantity = 1,
                    Image = p.Image,
                    Total = (float)p.PriceNew.Value * 1
                };
                //thêm sp vào giỏ hàng
                carts.Add(item);
            }
            //lưu carts vào session, cần chuyển sang dữ liệu json
            HttpContext.Session.SetString("My-Cart", JsonConvert.SerializeObject(carts));
            return RedirectToAction("Index");
        }


        /// <summary>
        /// Code cho chức năng xoá sản phẩm vào giỏ hàng
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public IActionResult Remove(int id)
        {
            if (carts.Any(c => c.Id == id))  
            {
                //tìm sản phẩm trong giỏ hàng
                var item = carts.Where(c => c.Id == id).First();
                //thực hiện xoá
                carts.Remove(item);
                //lưu carts vào session, cần phải chuyển sang dữ liệu json
                HttpContext.Session.SetString("My-Cart", JsonConvert.SerializeObject(carts));
            }
            
            return RedirectToAction("Index");
        }


        /// <summary>
        /// Code cho chức năng cập nhật dữ liệu trong giỏ hàng
        /// </summary>
        /// <param name="id"></param>
        /// <param name="quantity"></param>
        /// <returns></returns>
        public IActionResult Update(int id, int quantity)
        {
            if (carts.Any(c => c.Id == id))
            {
                //tìm sản phẩm trong giỏ hàng
                carts.Where(c => c.Id == id).First().Quantity = quantity;
                //lưu carts vào session, cần phải chuyển sang dữ liệu json
                HttpContext.Session.SetString("My-Cart", JsonConvert.SerializeObject(carts));
            }

            return RedirectToAction("Index");
        }


        /// <summary>
        /// Code cho chức xoá hết sp trong giỏ hàng
        /// </summary>
        /// <returns></returns>
        public IActionResult Clear()
        {
            HttpContext.Session.Remove("My-Cart");
            return RedirectToAction("Index");
        }


        /// <summary>
        /// Code logic để hiển thị thông tin giỏ hàng
        /// Dữ liệu giỏ hàng trong session cart
        /// </summary>
        /// <returns></returns>
       
       
        public IActionResult Orders()
        {
            if (HttpContext.Session.GetString("Member") == null)
            {
                //return RedirectToAction("Index", "CustomerMember");
                return Redirect("/customermember/index/?url=/cart/orders");
                //nếu người dùng chưa đăng nhập
            }
            else
            {
                var dataMember = JsonConvert.DeserializeObject<Customer>(HttpContext.Session.GetString("Member"));
                ViewBag.Customer = dataMember;

                float total = 0;
                foreach (var item in carts)
                {
                    total += item.Quantity * item.Price;
                }
                ViewBag.total = total;

                //Phương thức thanh toán
                var dataPay = _context.PaymentMethods.ToList();
                ViewData["IdPayment"] = new SelectList(dataPay, "Id", "Name", 1);
            }
            return View(carts);
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="form"></param>
        /// <returns></returns>
        [HttpPost]
        public async Task<IActionResult> OrderPay(IFormCollection form)
        {
            try
            {
                //Thêm bảng orders
                var order = new Order();
                order.NameReciver = form["NameReciver"];
                order.Email = form["Email"];
                order.Phone = form["Phone"];
                order.Address = form["Address"];
                order.Notes = form["Notes"];
                order.Idpayment = long.Parse(form["Idpayment"]);
                order.OrdersDate = DateTime.Now;

                var dataMember = JsonConvert.DeserializeObject<Customer>(HttpContext.Session.GetString("Member"));
                order.Idcustomer = dataMember.Id;

                decimal total = 0;
                foreach (var item in carts)
                {
                    total += item.Quantity * (decimal)item.Price;
                }
                order.TotalMoney = total;

                //tạo orderId
                var strOrderId = "DH";

                string timestamp = DateTime.Now.ToString("yyMMddss");
                strOrderId += timestamp;
                order.Idorders = strOrderId;

                _context.Add(order);
                await _context.SaveChangesAsync();

                //lấy id bảng orders
                var dataOrder = _context.Orders.OrderByDescending(x=>x.Id).FirstOrDefault();

                foreach (var item in carts)
                {
                    Orderdetail od = new Orderdetail();
                    od.Idord = dataOrder.Id;
                    od.Idproduct = item.Id;
                    od.Qty = item.Quantity;
                    od.Price = (decimal)item.Price;
                    od.Total = (decimal)item.Total;
                    od.ReturnQty = 0;

                    _context.Add(od);
                    await _context.SaveChangesAsync();
                }
                HttpContext.Session.Remove("My-Cart");
            }
            catch(Exception ex) 
            {
                throw;
            }
            return View();
        }
        public IActionResult OrderPay()
        {
            return View();
        }
        
    }
}
