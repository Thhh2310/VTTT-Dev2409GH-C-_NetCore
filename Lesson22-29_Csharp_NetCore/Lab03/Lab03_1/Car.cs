using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab03_1
{
    /// <summary>
    /// /// BÀI 3.1
    /// --Tạo lớp Car gồm các trường (make, model, color, year) có phạm vi là public
    /// --Tạo phương thức start và Stop in ra thông báo về tình trạng của xe
    /// --trong hàm Main khởi tạo đối tượng Car, gán giá trị cho các trường, hiển thị thông tin xe, gọi phương thức Start, Stop.
    /// </summary>
    internal class Car
    {

        //Khai báo các trường với phạm vi public
        public string make;
        public string model;
        public string color;
        public int year;

        //định nghĩa phương thức start
        public void Start()
        {
            System.Console.WriteLine(model + "Khởi động");
        }

        //định nghĩa phương thức stop
        public void Stop()
        {
            System.Console.WriteLine(model + "Dừng");
        }
    }
}
