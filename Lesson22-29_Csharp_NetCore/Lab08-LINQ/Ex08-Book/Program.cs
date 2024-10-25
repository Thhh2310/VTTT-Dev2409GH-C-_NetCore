namespace Ex08
{
    internal class Program
    {
        /// <summary>
        /// --tạo lớp Book(id, name, author, publisher, year) lưu thông tin sách
        /// --khởi tạo 10 quyển sách
        /// --sử dụng câu truy vấn LINQ để thực hiện các thao tác trên mảng sách vừa tạo:
        /// +hiển thị tất cả các quyển sách
        /// +hiển thị những quyển sách có giá từ 10000-50000
        /// +hiển thị những quyển sách xuất bản năm 2015
        /// +hiển thị những quyển sách có tên lập trình
        /// +đếm các quyển sách của nhà xuất bản Giáo Dục
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            List<Book> listBook = new List<Book>
            {
                new Book(1, "1984", "George Orwell", 45000, "Nxb Giáo Dục", 1949),
                new Book(2, "To Kill a Mockingbird", "Harper Lee", 30000, "Nxb Nhi Đồng", 1960),
                new Book(3, "The Great Gatsby", "F. Scott Fitzgerald", 20000, "Nxb Giáo Dục", 1925),
                new Book(4, "Pride and Prejudice", "Jane Austen", 15000, "Nxb Giáo Dục", 1813),
                new Book(5, "Moby-Dick", "Herman Melville", 25000, "Nxb Tuổi Trẻ", 1851),
                new Book(6, "War and Peace", "Leo Tolstoy", 55000, "Nxb Thanh Xuân", 1869),
                new Book(7, "The Catcher in the Rye", "J.D. Salinger", 60000, "Nxb Giáo Dục", 1951),
                new Book(8, "Brave New World", "Aldous Huxley", 65000, "Nxb Tuổi Trẻ", 1932),
                new Book(9, "Fahrenheit 451", "Ray Bradbury", 28000, "Nxb Ban Mai", 1953),
                new Book(10, "The Alchemist", "Paulo Coelho", 7000, "Nxb Giáo Dục", 1988)
            };

            //Hiển thị tất cả các quyển sách
            Console.WriteLine("List danh sách ban đầu: ");
            foreach (var item in listBook )
            {
                Console.WriteLine(item);
            }

            //Hiển thị những quyển sách có giá 10000-50000
            Console.WriteLine("===Những quyển sách có giá 10000-50000===");
            var searchPrice = listBook.Where(x => x.Price >= 10000 && x.Price <= 50000);
            foreach (var item in searchPrice )
            {
                Console.WriteLine(item);
            }

            //Hiển thị những quyển sách xuất bản năm 1949
            Console.WriteLine("===Những quyển sách xuất bản năm 1949===");
            var searchYear = listBook.Where(x => x.year == 1949);
            foreach (var item in searchYear )
            {
                Console.WriteLine(item);
            }

            //Hiển thị những quyển sách có tên "Fahrenheit 451"
            Console.WriteLine("===Những quyển sách có tên Fahrenheit 451===");
            var searchName = listBook.Where(x => x.Name == "Fahrenheit 451");
            foreach (var item in searchName )
            {
                Console.WriteLine(item);
            }

            //Đếm các quyển sách của nhà xuất bản Giáo Dục
            int countPublisher = listBook.Count(x => x.Publisher == "Nxb Giáo Dục");
            Console.WriteLine("===Số quyển sách của Nxb Giáo Dục: " + countPublisher);
        }
    }
}
