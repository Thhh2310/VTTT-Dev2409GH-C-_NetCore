﻿namespace Lab05_3
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //khởi tạo đối tượng sinh viên với 3 sinh viên[i] và mỗi sinh viên gồm 2 điểm[j]
            Student st = new Student(3, 2);

            //sử dụng chỉ mục để truy cập vào thành phần mảng của lớp
            st[0] = "Nam";
            st[0, 0] = 9;
            st[0, 1] = 6.5;
            st[1] = "Long";
            st[1, 0] = 5;
            st[1, 1] = 7.5;
            st[2] = "Hạnh";
            st[2, 0] = 10;
            st[2, 1] = 9.5;

            //in ra thông tin
            Console.WriteLine("Thông tin sinh viên");
            for (int i = 0; i < 3; i++)
            {
                Console.WriteLine("Họ và tên: " + st[i]);
                Console.Write("Điểm: ");
                for (int j = 0; j < 2; j++)
                {
                    Console.Write(st[i, j] + ", ");
                }
                Console.WriteLine();
            }
        }
    }
}
