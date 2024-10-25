namespace BaiLamThem
{
    internal class Program
    {
        /// <summary>
        /// Bài Tập Về Nhà
        /// - Khởi tạo một mảng 1 chiều gồm 10 phần tử Student.
        /// - Tìm phần tử student có tuổi nhỏ nhất của mảng.
        /// - Sắp xếp mảng tăng dần theo tuổi sinh viên (student).
        /// - Tìm sinh viên có tuổi lớn nhất.
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            // Khởi tạo mảng 1 chiều gồm 10 phần tử Student
            Student[] students = new Student[10]
            {
                new Student { Id = 1, Name = "Alice", Age = 20 },
                new Student { Id = 2, Name = "Bob", Age = 22 },
                new Student { Id = 3, Name = "Charlie", Age = 19 },
                new Student { Id = 4, Name = "David", Age = 23 },
                new Student { Id = 5, Name = "Eve", Age = 21 },
                new Student { Id = 6, Name = "Frank", Age = 24 },
                new Student { Id = 7, Name = "Grace", Age = 18 },
                new Student { Id = 8, Name = "Hannah", Age = 22 },
                new Student { Id = 9, Name = "Isaac", Age = 25 },
                new Student { Id = 10, Name = "Jack", Age = 21 },
            };

            // Tìm sinh viên có tuổi nhỏ nhất
            Student youngestStudent = FindYoungestStudent(students);
            Console.WriteLine($"Sinh viên có tuổi nhỏ nhất: {youngestStudent.Name}, {youngestStudent.Age} tuổi.");

            // Sắp xếp mảng sinh viên theo tuổi tăng dần
            Array.Sort(students, (s1, s2) => s1.Age.CompareTo(s2.Age));
            Console.WriteLine("Danh sách sinh viên sắp xếp theo tuổi tăng dần:");
            foreach (var student in students)
            {
                Console.WriteLine($"ID: {student.Id}, Tên: {student.Name}, Tuổi: {student.Age}");
            }

            // Tìm sinh viên có tuổi lớn nhất
            Student oldestStudent = FindOldestStudent(students);
            Console.WriteLine($"Sinh viên có tuổi lớn nhất: {oldestStudent.Name}, {oldestStudent.Age} tuổi.");
        }

        /// <summary>
        /// Tìm sinh viên có tuổi nhỏ nhất
        /// </summary>
        /// <param name="students"></param>
        /// <returns></returns>
        static Student FindYoungestStudent(Student[] students)
        {
            Student youngest = students[0];
            foreach (var student in students)
            {
                if (student.Age < youngest.Age)
                {
                    youngest = student;
                }
            }
            return youngest;
        }

        /// <summary>
        /// Tìm sinh viên có tuổi lớn nhất
        /// </summary>
        /// <param name="students"></param>
        /// <returns></returns>
        static Student FindOldestStudent(Student[] students)
        {
            Student oldest = students[0];
            foreach (var student in students)
            {
                if (student.Age > oldest.Age)
                {
                    oldest = student;
                }
            }
            return oldest;
        }
    }
}
