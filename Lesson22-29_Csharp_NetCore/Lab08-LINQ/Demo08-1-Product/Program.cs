namespace Demo08_1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            List<Product> listProduct = new List<Product>
            {
                new Product{Id = 1, Name = "Coca Cola", Price = 25000},
                new Product{Id = 2, Name = "Fanta", Price = 12000},
                new Product{Id = 3, Name = "Pepsi", Price = 21000},
                new Product{Id = 4, Name = "Sprite", Price = 20000},
                new Product{Id = 5, Name = "7Up", Price = 18000},
                new Product{Id = 6, Name = "Dr Pepper", Price = 27000},
                new Product{Id = 7, Name = "Sierra Mist", Price = 30000},
                new Product{Id = 8, Name = "Club Soda", Price = 15000},
                new Product{Id = 9, Name = "Tonix Water", Price = 26000},
                new Product{Id = 10, Name = "LaCroix", Price = 28000},
            };

            //Sử dụng LINQ

            //Where: Lọc sản phẩm có giá > 25000
            var expensiveProduct = listProduct.Where(p => p.Price >= 25000).ToList();
            Console.WriteLine("Products with price greater than 25000: ");
            foreach (var product in expensiveProduct)
            {
                Console.WriteLine($"{product.Name} - {product.Price}");
            }

            //OrderBy: Sắp xếp sản phẩm theo giá
            var sortedProduct = listProduct.OrderBy(p => p.Price);
            Console.WriteLine("\nProducts sorted by price: ");
            foreach (var product in sortedProduct)
            {
                Console.WriteLine($"{product.Name} - {product.Price}");
            }

            //GroupBy: Nhóm sản phẩm theo giá (đắt hoặc rẻ).
            var groupedProduct = listProduct.GroupBy(p => p.Price >= 25000 ? "Expensive" : "Cheap");
            Console.WriteLine("\nGrouped products: ");
            foreach (var group in groupedProduct)
            {
                Console.WriteLine($"{group.Key}:");
                foreach (var product in group)
                {
                    Console.WriteLine($"{product.Name} - {product.Price}");
                }    
            }


            //Phân trang sản phầm - product
            int pageSize = 3;   //Số sản phẩm mỗi trang
            int pageNumber = 2; //Số trang hiện tại(1,2,3,...)

            var pageProduct = listProduct
                              .Skip((pageNumber -1) * pageSize) //Bỏ qua sản phẩm của các trang trước
                              .Take(pageSize)       //Lấy số sản phẩm tương ứng với pageSize
                              .ToList();
            Console.WriteLine($"Product on page {pageNumber}: ");
            foreach (var product in pageProduct)
            {
                Console.WriteLine($"{product.Name} - {product.Price}");
            }
        }
    }
}
