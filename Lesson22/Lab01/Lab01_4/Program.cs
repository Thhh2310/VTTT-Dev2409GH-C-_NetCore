namespace Lab04
{
    internal class Program
    {
        /// <summary>
        /// Viết chương trình thực hiện các yêu cầu:
        /// Khai báo biến, gán giá trị, hiển thị
        /// </summary>
        /// <param name="args"></param>

        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //Khai báo các biến và gán giá trị
            int id = 1;
            string name = "Vũ Thị Thanh Thảo";
            DateTime date = new DateTime(2003, 10, 23);
            string address = "Hà Nam";
            string phone = "0355442211";
            string email = "vuthao23102003@gmail.com";

            //Hiển thị thông tin
            Console.WriteLine("Mã nhân viên: " + id);
            Console.WriteLine("Họ tên nhân viên: " + name);
            Console.WriteLine("Ngày sinh: {0}", date.ToString("dd/MM/yyyy"));
            Console.WriteLine("Địa chỉ: " + address);
            Console.WriteLine("Số điện thoại: {0}", phone);
            Console.WriteLine("Email: " + email);
        }
    }
}
