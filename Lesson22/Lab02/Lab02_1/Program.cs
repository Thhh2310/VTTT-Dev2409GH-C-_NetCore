namespace Lab02_1
{
    internal class Program
    {
        /// <summary>
        /// Chương trình minh hoạ việc nhập, xuất trong ứng dụng console
        /// Nhập vào mã sinh viên, tên sinh viên, ngày sinh, điểm 3 môn
        /// in ra thông tin sinh viên và điểm trung bình
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //Khai báo các biến
            string id, name;
            double mark1, mark2, mark3, average;
            DateTime birthday;

            //Nhập dữ liệu từ bàn phím
            Console.Write("Nhập mã số: ");
            id = Console.ReadLine();
            Console.Write("Nhập tên: ");
            name = Console.ReadLine();
            Console.Write("Nhập ngày sinh: ");
            birthday = Convert.ToDateTime(Console.ReadLine());
            Console.Write("Nhập điểm môn 1: ");
            mark1 = Convert.ToDouble(Console.ReadLine());
            Console.Write("Nhập điểm môn 2: ");
            mark2 = Convert.ToDouble(Console.ReadLine());
            Console.Write("Nhập điểm môn 3: ");
            mark3 = Convert.ToDouble(Console.ReadLine());
            //Tính điểm trung bình
            average = (mark1 + mark2 + mark3) / 3;

            //In thông tin ra màn hình
            Console.WriteLine("\nThông tin sinh viên");
            Console.WriteLine("Mã số: {0}", id);
            Console.WriteLine("Họ và tên: {0}", name);
            Console.WriteLine("Ngày sinh: {0:dd/MM/yyyy}", birthday);
            Console.WriteLine("Điểm 1: {0:N}, Điểm 2: {1:N}, Điểm 3: {2:N}", mark1, mark2, mark3);
            Console.WriteLine("Điểm trung bình: {0:N}", average);
        }
    }
}
