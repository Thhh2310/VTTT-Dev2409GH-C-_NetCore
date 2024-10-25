using System.Collections;
using static System.Reflection.Metadata.BlobBuilder;

namespace Exam1
{
    internal class Program
    {
        /// <summary>
        /// --tạo 1  collection gồm 10 quyển sách
        /// --in danh sách các quyển sách tăng dần theo giá
        /// --tìm quyển sách có title trùng với giá trị nhập từ bàn phím
        /// --đưa ra những quyển sách xuất bản năm 2014
        /// --xoá những quyển sách của nhà xuất bản "Nhi Đồng"
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //Tạo ArrayList
            ArrayList book = new ArrayList();
            //Thêm phần tử vào danh sách
            book.Add(new Book("B10", "Tôi Thấy Hoa Vàng Trên Cỏ Xanh", "Nguyễn Nhật Ánh", "Nxb Thiếu Niên", 2012, 170000));
            book.Add(new Book("B11", "Người Nổi Tiếng", "Ken Follett", "Nxb Nhi Đồng", 2018, 250000));
            book.Add(new Book("B12", "Đắc Nhân Tâm", "Dale Carnegie", "Nxb Tổng Hợp", 2019, 120000));
            book.Add(new Book("B13", "Hà Nội 36 Phố Phường", "Thế Anh", "Nxb Văn Học", 2020, 150000));
            book.Add(new Book("B14", "Sống Để Kể Một Câu Chuyện", "Haruki Murakami", "Nxb Nhã Nam", 2021, 200000));
            book.Add(new Book("B15", "Mùa Hè Sôi Động", "J.K. Rowling", "Nxb Trẻ", 2017, 300000));
            book.Add(new Book("B16", "Tâm Lý Học Tình Yêu", "John Gray", "Nxb Phụ Nữ", 2022, 190000));
            book.Add(new Book("B17", "Lão Hạc", "Nam Cao", "Nxb Văn Học", 1943, 80000));
            book.Add(new Book("B18", "Chạy Đi Để Trở Về", "Tim Ferriss", "Nxb Hà Nội", 2016, 175000));
            book.Add(new Book("B19", "Lời Nói Dối Cuối Cùng", "Dạ Ngân", "Nxb Kim Đồng", 2014, 180000));
            //In ra danh sách
            Console.WriteLine("===List sách ban đầu===");
            foreach (var item in book)
            {
                Console.WriteLine(item);
            }


            //In sách tăng dần theo giá
            var sortedBooks = book.Cast<Book>().OrderBy(book => book.Price).ToList();
            Console.WriteLine("\n===Danh sách các quyển sách tăng dần theo giá===");
            foreach (var item in sortedBooks)
            {
                Console.WriteLine(item);
            }


            //tìm sách theo tiêu đề
            Console.Write("\nNhập vào tiêu đề sách cần tìm: ");
            string title = Console.ReadLine();
            var foundBook = book.Cast<Book>().Where(book => book.Title.Contains(title, StringComparison.OrdinalIgnoreCase)).ToList();
            Console.WriteLine("==Những quyển sách cần tìm==");
            foreach (var item in foundBook)
            {
                Console.WriteLine(item);
            }


            //Những quyển sách xb năm 2014
            var book2014 = book.Cast<Book>().Where(book => book.Year == 2014).ToList();
            Console.WriteLine("\n==Những quyển sách xuất bản vào năm 2014==");
            foreach (var item in book2014)
            {
                Console.WriteLine(item);
            }


            //xoá quyển sách của Nxb Nhi Đồng
            book.Remove(book.Cast<Book>().FirstOrDefault(book => book.Publisher == "Nxb Nhi Đồng"));
            Console.WriteLine("\n==Danh sách sau khi xoá Nxb Nhi Đồng==");
            foreach (var item in book)
            {
                Console.WriteLine(item);
            }    
        }
    }
}
