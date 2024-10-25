namespace Fex2
{
    internal class Program
    {
        /// <summary>
        /// VD2(15/10/2024)
        /// Viết phương trình nhập vào năm x tháng y sau đó in ra số ngày trong tháng năm đó.
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //Khai báo biến
            string x,y;

            //Nhập từ bàn phím
            Console.WriteLine("Nhập năm: ");
            x = Console.ReadLine();
            Console.WriteLine("Nhập tháng: ");
            y = Console.ReadLine();

            switch (x)
            {
                case "1":
                case "3":
                case "5":
                case "7":
                case "8":
                case "10":
                case "12":
                    Console.WriteLine("");
                    break;
            }
        }
    }
}
