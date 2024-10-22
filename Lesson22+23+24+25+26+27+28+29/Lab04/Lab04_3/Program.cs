namespace Lab04_3
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //khởi tạo hình chữ nhật
            Rectangle rec = new Rectangle();
            //Nhập dữ liệu
            rec.InputData();
            //In thông tin
            Console.WriteLine("Diện tích hình chữ nhật là: {0:N}", rec.Area());
            Console.WriteLine("Chu vi hình chữ nhật là: {0:N}", rec.Circumference());

            //Khởi tạo hình tròn
            Circle cir = new Circle();
            //Nhập dữ liệu
            cir.InputData();
            //In thông tin
            Console.WriteLine("Diện tích hình tròn là: {0:N}", cir.Area());
            Console.WriteLine("Chu vi hình tròn là: {0:N}", cir.Circumference());
        }
    }
}
