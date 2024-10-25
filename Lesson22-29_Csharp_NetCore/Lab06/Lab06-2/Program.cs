namespace Lab06_2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8; 

            //tạo sortedlist generic
            SortedList<string, string> listEm = new SortedList<string, string>();
            //đưa dữ liệu vào
            listEm.Add("E01", "Trần Thị Thuỷ");
            listEm.Add("E02", "Lê Hải Hà");
            listEm.Add("E03", "Nguyễn Văn Hưng");
            listEm.Add("E04", "Hoàng Thị Thơm");
            listEm.Add("E05", "Trịnh Văn Chiến");
            //in ra dánh sách
            Console.WriteLine("Danh sách nhân viên:");
            foreach (var key in listEm.Keys)
            {
                Console.WriteLine(key + ":" + listEm[key]);
            }
            Console.WriteLine();

            //tìm kiếm tất cả các nhân viên có tên bắt đầu bằng chữ TH
            Console.WriteLine("Danh sách nhân viên bắt đầu bằng chữ Tr");
            foreach (var key in listEm.Keys)
            {
                if (listEm[key].StartsWith("Tr"))
                    Console.WriteLine(key + ":" + listEm[key]);
            }
            Console.WriteLine();

            //xoá nhân viên có mã E04
            listEm.Remove("E04");
            Console.WriteLine();

            //in ra danh sách sau khi xoá, thêm
            Console.WriteLine("Danh sách nhân viên sau khi xoá, thêm");
            foreach (var key in listEm.Keys)
            {
                Console.WriteLine(key + ":" + listEm[key]);
            }
        }
    }
}
