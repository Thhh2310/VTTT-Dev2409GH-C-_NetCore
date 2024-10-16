using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab04_4
{
    //Định nghĩa lớp nhân viên thực thi từ giao diện IPerson
    internal class Staff:IPerson
    {
        //Thực thi các phương thức của giao diện
        public void Insert(object obj)
        {
            Console.WriteLine("Đã lưu đối tượng: " + obj);
        }
        public void Delete(object obj)
        {
            Console.WriteLine("Đã xoá đối tượng: " + obj);
        }
        public void Update(object obj)
        {
            Console.WriteLine("Đã cập nhật đối tượng: " + obj);
        }
        public void Display(object obj)
        {
            Console.WriteLine("Thông tin đối tượng: " + obj);
        }
    }
}
