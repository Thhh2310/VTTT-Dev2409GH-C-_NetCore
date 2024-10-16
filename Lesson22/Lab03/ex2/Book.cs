using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ex2
{
    internal class Book
    {
        private string author;
        private int pages;
        private string isbn;
        private string title;
        private int curentpage;

        public Book()
        {
            author = "";
            pages = 0;
            isbn = "";
            title = "";
            curentpage = 1;
        }
        public Book(string author, int pages, string isbn, string title, int curentpage)
        {
            this.author = author;
            this.pages = pages;
            this.isbn = isbn;
            this.title = title;
            this.curentpage = curentpage;
        }
        public void Display()
        {
            Console.WriteLine("Tác giả: " + author);
            Console.WriteLine("Trang: " + pages);
            Console.WriteLine("isbn: " + isbn);
            Console.WriteLine("Tiêu đề: " + title);
            Console.WriteLine("Trang hiện tại: " + curentpage);
        }
        public void flipPageForWard()
        {
            Console.WriteLine("Lật sang trang trước");
        }
        public void flipPageBackWard()
        {
            Console.WriteLine("Lật sang trang sau");
        }
    }
}
