namespace Lab06_3
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8; 

            //Khai báo và khởi tạo danh sách sinh viên sử dụng list generic
            List<Student> list = new List<Student>()
            {
                new Student { Id = "S10", FirstName = "Nguyễn Thu", LastName = "Phương", Avg = 9.5 },
                new Student { Id = "S11", FirstName = "Trần Thị", LastName = "Thuỷ", Avg = 9.0 },
                new Student { Id = "S12", FirstName = "Lê Hoàng", LastName = "Nhật", Avg = 8.0 },
                new Student { Id = "S13", FirstName = "Nguyễn Văn", LastName = "Phong", Avg = 6.5 },
                new Student { Id = "S14", FirstName = "Hoàng Thị", LastName = "Huệ", Avg = 9.7 },
                new Student { Id = "S15", FirstName = "Nguyễn Tiến", LastName = "Tùng", Avg = 5.0 },
                new Student { Id = "S16", FirstName = "Nguyễn Thiên", LastName = "Nhân", Avg = 4.8 }
            };
            //in ra danh sách sinh viên
            Console.WriteLine("Dah sách sinh viên: ");
            foreach (var st in list)
            {
                Console.WriteLine(st);
            }
            Console.WriteLine();

            //tìm sinh viên có điểm trung bình thấp nhất
            double max = list[0].Avg;
            Student stmax = list[0];
            foreach (var st in list)
            {
                if (st.Avg > max)
                {
                    max = st.Avg;
                    stmax = st;
                }
            }
            //in kết quả
            Console.Write("Sinh viên có điểm trung bình cao nhất là: ");
            Console.Write(stmax);
        }
    }
}
