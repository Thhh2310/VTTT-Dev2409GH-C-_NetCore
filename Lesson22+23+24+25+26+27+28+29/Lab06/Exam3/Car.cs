using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exam3
{
    /// <summary>
    /// lớp car lưu trữ thông tin (name, color)
    /// </summary>
    //Tạo lớp Car
    internal class Car
    {
        //Khai báo thuộc tính tự động
        public string Name {  get; set; }
        public string Color { get; set; }

        //contructor
        public Car(string name, string color)
        {
            Name = name;
            Color = color;
        }

        //ghi đè thuộc tính toString
        public override string ToString()
        {
            return "\nName: " + Name + "\nColor: " + Color;
        }
    }
}
