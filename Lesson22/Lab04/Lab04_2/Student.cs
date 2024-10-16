using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab04_2
{
    internal abstract class Student
    {
        //Khai báo biến
        protected string name;
        protected int year;

        //phương thức khởi tạo
        public Student(string name, int year)
        {
            this.name = name;
            this.year = year;
        }

        //phương thức hiển thị thông tin
        protected void Display()
        {
            Console.WriteLine("Name: " + name);
            Console.WriteLine("Year: " + year);
        }

        //Phương thức tính điểm trung bình
        public abstract double Average();
    }
}
