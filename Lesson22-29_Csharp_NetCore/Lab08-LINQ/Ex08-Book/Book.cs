using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ex08
{
    /// <summary>
    /// lớp Book(id,name,author,price,publisher,year)
    /// lưu thông tin về sách
    /// </summary>
    internal class Book
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Author { get; set; }
        public decimal Price { get; set; }
        public string Publisher { get; set; }
        public int year { get; set; }

        public Book(int iD, string name, string author, decimal price, string publisher, int year)
        {
            ID = iD;
            Name = name;
            Author = author;
            Price = price;
            Publisher = publisher;
            this.year = year;
        }

        public override string ToString()
        {
            return "\nID: " + ID + "\nName: " + Name + "\nAuthor: " + Author + "\nPrice: " + Price + "\nYear: " + year;
        }
    }
}
