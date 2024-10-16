namespace Lab04_4
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //Tạo một nhân viên
            IPerson staff = new Staff();
            object data = "Back Khoa Aptech";

            //gọi các hành động
            staff.Insert(data);
            staff.Delete(data);
            staff.Update(data);
            staff.Display(data);

            //tạo sinh viên
            IPerson student = new Student()
            {Id = "S10", Name = "Dung", Age = 20};

            //hiển thị dữ liệu
            student.Display(student);
        }
    }
}
