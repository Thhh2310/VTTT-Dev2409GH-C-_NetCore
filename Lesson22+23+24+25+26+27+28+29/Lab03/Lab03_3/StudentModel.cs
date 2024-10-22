using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab03_3
{
    internal class StudentModel
    {
        //Khai báo danh tập hợp chứa các sinh viên
        List<Student> liststudent;
        //phương thức khởi tạo
        public StudentModel()
        {
            //Khởi tạo danh sách sinh viên
            this.liststudent = new List<Student>
            {
                new Student(){Id=1,Name="Dung",Age=20},
                new Student(){Id=2,Name="Tuấn",Age=25},
                new Student(){Id=3,Name="Hạ",Age=18},
                new Student(){Id=4,Name="Anh",Age=30},
                new Student(){Id=5,Name="Long",Age=24},
            };
        }
        #region các phương thức overloading
        //phương thức trả về danh sách sinh viên
        public List<Student> GetStudent()
        {
            return this.liststudent;
        }
        //phương thức trả về sinh viên theo id
        public Student GetStudent (int id)
        {
            Student st = null;
            foreach (var item in liststudent)
            {
                if (item.Id == id) 
                    st = item;
            }
            return st;
        }
        //phương thức trả về sinh viên có tuổi từ x-y
        public List<Student> GetStudent(int x, int y)
        {
            List<Student> result = new List<Student>();
            foreach (var item in liststudent)
            {
                if (item.Age >= x && item.Age <= y)
                    result.Add(item);
            }
            return result;
        }
        #endregion
    }
}
