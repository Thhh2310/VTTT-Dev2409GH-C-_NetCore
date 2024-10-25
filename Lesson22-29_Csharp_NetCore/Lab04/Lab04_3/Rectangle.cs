using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab04_3
{
    internal class Rectangle:Shape
    {
        //phương thức nhập dữ liệu
        public void InputData()
        {
            Console.Write("Nhập chiều dài: ");
            lenght = int.Parse(Console.ReadLine());
            Console.Write("Nhập chiều rộng: ");
            width = int.Parse(Console.ReadLine());
        }

        //ghi đè phương thức tính diện tích hình chữ nhật
        public override float Area()
        {
            return lenght * width;
        }
        //ghi đè phương thức tính chu vi hình chữ nhật
        public override float Circumference()
        {
            return 2 * lenght * width;
        }
    }
}
