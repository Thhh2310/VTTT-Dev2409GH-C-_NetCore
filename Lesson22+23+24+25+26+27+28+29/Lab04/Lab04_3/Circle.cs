using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab04_3
{
    internal class Circle:Shape
    {
        //phương thức nhập dữ liệu
        public void InputData()
        {
            Console.Write("Nhập bán kính: ");
            radius = int.Parse(Console.ReadLine());
        }

        //ghi đè phương thức tính diện tích hình tròn
        public override float Area()
        {
            return 3.14F * radius * radius;
        }
        //ghi đè phương thức tính chu vi hình tròn
        public override float Circumference()
        {
            return 2 * 3.14F * radius;
        }
    }
}
