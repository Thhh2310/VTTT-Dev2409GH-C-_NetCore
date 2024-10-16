using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab03_2
{
    internal class Contact
    {
        //Khai báo các trường
        private int id;
        private string firstname;
        private string lastname;
        private string address;
        private string email;
        private string phone;

        //tạo contructor không tham số
        public Contact()
        {
        }

        //tạo contructor với các tham số
        public Contact(int id, string firstname, string lastname, string address, string email, string phone)
        {
            this.id = id;
            this.firstname = firstname;
            this.lastname = lastname;
            this.address = address;
            this.email = email;
            this.phone = phone;
        }

        //tạo thuộc tính cho các trường
        public int Id
        { 
            get { return id; }
            set { id = value; }
        }
        public string Firstname
        {
            get{ return firstname; }
            set { firstname = value; }
        }
        public string Lastname
        {
            get { return lastname; }
            set { lastname = value; }
        }
        public string Address
        {
            get { return address; }
            set { address = value; }
        }
        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        public string Phone
        {
            get { return phone; }
            set { phone = value; }
        }

        //định nghĩa phương thức Display
        public void Display()
        {
            Console.WriteLine("Mã số: " + id);
            Console.WriteLine("Họ và tên: {0} {1}", firstname, lastname);
            Console.WriteLine("Địa chỉ: " + address);
            Console.WriteLine("Email: " + email);
            Console.WriteLine("Điện thoại: " + phone);
        }
    }
}
