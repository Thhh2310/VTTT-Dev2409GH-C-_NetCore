using Store;
namespace Lab07_1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //Tạo mới nhà phân phối cung cấp đầy đủ namespace
            Supply.Manufacturer dealer =new Supply.Manufacturer();
            //gán giá trị
            dealer.Name = "Test";
            dealer.Email = "Test@ gmail.com";
            dealer.phone = "1234567890";
            //In thông tin
            Console.WriteLine("Dealer Information");
            Console.WriteLine("\t Name: " + dealer.Name);
            Console.WriteLine("\t Email: " + dealer.Email);
            Console.WriteLine("\t Phone: " + dealer.phone);

            //tạo mới sản phẩm nằm trong namespace store
            StoreItem si = new StoreItem();
            //gán giá trị
            si.ItemNo = 631508;
            si.ItemName = "Fanta";
            si.Price = 80.00M;
            //In thông tin
            Console.WriteLine("Store Inventory");
            Console.Write("\t Item #:     ");
            Console.WriteLine(si.ItemNo);
            Console.Write("\t Item Name:  ");
            Console.WriteLine(si.ItemName);
            Console.Write("\t Unit Price: ");
            Console.WriteLine(si.Price);

            Console.Read();
        }
    }
}
