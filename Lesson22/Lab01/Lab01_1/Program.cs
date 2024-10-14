using static System.Net.Mime.MediaTypeNames;
using System.Text;

namespace Lab01
{
    internal class Program
    {
        /// <summary>
        /// Chương trình C# đầu tiên
        /// In ra thông tin giới thiệu về bản thân
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            // Xuất có unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //Lệnh in ra 1 dòng văn bản sau đó xuống dòng 
            Console.WriteLine("Họ và tên: Hoàng Dung");
            Console.WriteLine("Ngày sinh: 12/05/1979");
            Console.WriteLine("Địa chỉ: CoMo");
            Console.WriteLine("Số Điện Thoại: 0333222199");
            Console.WriteLine("Rất Thích Khi Được Học Csharp");
            //Lệnh chờ màn hình và nhân 1 phím
            Console.Read();
        }
    }
}
