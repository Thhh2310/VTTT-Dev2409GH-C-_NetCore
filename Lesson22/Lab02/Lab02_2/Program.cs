namespace Lab02_2
{
    internal class Program
    {
        /// <summary>
        /// Chương trình tính tiền điện
        /// Nhập vào tên thuê bao, số điẹn trên công tơ sau đó tính:
        /// --Nếu số phút gọi <=30 số thì cước phí tính 30$
        /// --Nếu từ 30-50 số trong khoảng (30-50] sẽ tính theo 1.2$ cho mỗi số
        /// --Nếu trên 50 số thì số trên 50 đc tính theo 1.5$ cho mỗi số
        /// In ra màn hình toàn bộ thông tin
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //Khai báo Biến
            string name;
            int number;
            double money = 0;

            //Nhập thông tin
            Console.Write("Nhập tên thuê bao: ");
            name = Console.ReadLine();
            Console.Write("Nhập số điện sử dụng: ");
            number = Convert.ToInt32(Console.ReadLine());

            //Tính tiền điện
            if (number <= 30)
                money = 30;
            else if (number > 30 && number <= 50)
                money = 30 + (number - 30) * 1.2;
            else if (number > 50)
                money = 30 + 20 * 1.2 + (number - 50) * 1.5;

            //In ra thông tin
            Console.WriteLine("\nThông tin tiền điện");
            Console.WriteLine("Họ và tên: " + name);
            Console.WriteLine("Số điện sử dụng: " + number);
            Console.WriteLine("Số tiền phải nộp: {0:C}", money);

        }
    }
}
