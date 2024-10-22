using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exam1
{
    /// <summary>
    /// tạo lớp Book với các thông tin(Id, Title, Author, Publisher, Year, Price)
    /// </summary>
    //Tạo lớp Book
    internal class Book
    {
        //Khai báo thuộc tính tự động
        public string Id { get; set; }
        public string Title { get; set; }
        public string Author { get; set; }
        public string Publisher { get; set; }
        public int Year { get; set; }
        public decimal Price { get; set; }

        //Contructor
        public Book(string id, string title, string author, string publisher, int year, decimal price)
        {
            Id = id;
            Title = title;
            Author = author;
            Publisher = publisher;
            Year = year;
            Price = price;
        }

        //ghi đè phuoqng thức toString
        public override string ToString()
        {
            return "\nID: " + Id + "\nTitle: " + Title + "\nAuthor: " + Author + "\nPublisher: " + Publisher + "\nYear: " + Year + "\nPrice: " + Price;
        }
    }
}
