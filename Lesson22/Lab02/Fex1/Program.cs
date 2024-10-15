namespace Fex1
{
    internal class Program
    {
        /// <summary>
        /// VD1(15/10/2024)
        /// Viết phương trình c# nhập vào các thông tin nhân viên (Id, Name, Address, Birthday, Salary, Bonus)
        /// In ra màn hình các thông tin nhân viên có định dạng và thêm trường TotalSalary=Salary+Bonus
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //Khai báo biến
            string id, name, address;
            decimal salary, bonus, totalSalary;
            DateTime birthday;

            //Nhập dữ liệu từ bàn phím
            Console.Write("Nhập mã nhân viên: ");
            id = Console.ReadLine();
            Console.Write("Nhập tên nhân viên: ");
            name = Console.ReadLine();
            Console.Write("Nhập địa chỉ: ");
            address = Console.ReadLine();
            Console.Write("Nhập ngày sinh: ");
            birthday = Convert.ToDateTime(Console.ReadLine());
            Console.Write("Nhập tiền lương: ");
            salary = Convert.ToDecimal(Console.ReadLine());
            Console.Write("Nhập tiền thưởng: ");
            bonus = Convert.ToDecimal(Console.ReadLine());
            //Tính tổng tiền
            totalSalary = salary + bonus;

            //Xuất ra màn hình
            Console.WriteLine("\nThông tin nhân viên");
            Console.WriteLine("Mã nhân viên: " + id);
            Console.WriteLine("Tên nhân viên: " + name);
            Console.WriteLine("Ngày sinh:{0:dd/MM/yy}", birthday);
            Console.WriteLine("Tiền lương: {0}", salary);
            Console.WriteLine("Tiền thưởng: {0}", bonus);
            Console.WriteLine("Tổng số tiền: {0}", totalSalary);
        }
    }
}
