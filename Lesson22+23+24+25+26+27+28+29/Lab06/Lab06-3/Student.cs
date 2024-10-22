using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab06_3
{
    //lớp sinh viên
    internal class Student
    {
        //Khai báo thuộc tính tự động
        public string Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public bool Gender { get; set; }
        public double Avg { get; set; }

        //ghi đè phương thức toString
        public override string ToString()
        {
            return "\nId: " + Id + "\nFullName: " + FirstName + " " + LastName + "\nGender: " + (Gender ? "Male" : "Female") +"\nAverage mark: " + Avg;
        }
    }
}
