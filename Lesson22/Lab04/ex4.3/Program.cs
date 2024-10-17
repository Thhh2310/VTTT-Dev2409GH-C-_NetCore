namespace ex4._3
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Document document = new Document();
            //gán nội dung cho document
            document.content = "Đây là nội dung của document";
            //ghi vào file
            string filePath = "document.txt";
            document.Write(filePath);
            //đọc lại từ file
            document.Read(filePath);
            Console.WriteLine($"nội dung tài liệu:{document.content}");
            //mã hoá nội dung
            string encrytedContent = document.Encrypt();
            Console.WriteLine($"Mã hoá nội dung:{encrytedContent}");

            //gán dữ liệu đã mã hoá cho document để thử giải mã
            document.content = encrytedContent;
            string decrytedContent = document.Encrypt();
            Console.WriteLine($"Decryt nội dung:{decrytedContent}");
        }
    }
}
