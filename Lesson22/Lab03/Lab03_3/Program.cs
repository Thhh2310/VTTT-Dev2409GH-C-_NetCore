namespace Lab03_3
{
    internal class Program
    {
        static void Main(string[] args)
        {
           //Xuất unicode
           Console.OutputEncoding = System.Text.Encoding.UTF8;

            //Tạo đối tượng
            StudentModel action = new StudentModel();

            //gọi phương thức lấy tất cả sinh viên
            List<Student> listall = action.GetStudent();
            //Hiển thị
            foreach (var item in listall)
            {
                item.Display();
            }

            //gọi phương thức lấy sv theo id
            Student st = action.GetStudent(2);
            //hiển thị
            st.Display();

            //Gọi phương thức lấy sv có tuổi từ 25-30
            List<Student> listage = action.GetStudent(25, 30);
            //hiển thị
            foreach (var item in listage)
            {
                item.Display();
            }
        }
    }
}
