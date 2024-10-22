namespace Lab02_7
{
    internal class Program
    {
        /// <summary>
        /// Sử dụng foreach in ra danh sách các phần tử của mảng
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //Khai báo và khởi tạo mảng tên
            string[] names = { "Hoàng", "Thành", "Thăng", "Long" };
            Console.Write("Danh sách sinh viên:\n");
            foreach (var n in names) 
            { 
                Console.WriteLine(n);
            }
        }
    }
}
