using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ex1
{
    internal class Employee
    {
        public int id { get; set; }
        public string name { get; set; }
        public int yearOfBirth { get; set; }
        public double salaryLevel { get; set; }
        public double basicSalary {  get; set; }

        public double GetInCome()
        {
            double InCome = (salaryLevel + basicSalary);
            return InCome;
        }
        public void Display()
        {
            Console.WriteLine("Định danh: " + id);
            Console.WriteLine("Tên: "+ name);
            Console.WriteLine("Năm sinh: " + yearOfBirth);
            Console.WriteLine("Lương cơ bản: " + basicSalary);
        }
    }
}
