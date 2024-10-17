namespace Lab05_4
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8; 

            //tạo đối tượng book
            Book b = new Book("Programming with Csharp", 4);

            //nhập thông tin các chương
            b[0] = new Book("Chapter 1", "Intoduction to CSharp");
            b[1] = new Book("Chapter 2", "DataType and Variables in Csharp");
            b[2] = new Book("Chapter 3", "Input and Output in Console Application");
            b[3] = new Book("Chapter 4", "Statement Conditions and Loops");

            //in thông tin sách
            Console.WriteLine("List of book: ");
            Console.WriteLine(b.Name);
            //danh sách chương
            for (int i = 0; i < 4; i++)
            {
                Console.WriteLine(b[i]);
            }
            //thông tin chương 3
            Console.WriteLine("Detail of Chapter 3");
            Console.WriteLine(b["Chapter 3"]);
            Console.Read();
        }
    }
}
