namespace Lab02
{
    internal class Program
    {
        /// <summary>
        /// Chương trình minh hoạ việc sử dụng biến, hằng số và kiểu dữ liệu
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            // Xuất có unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //Khai báo các biến
            int id = 1;
            string name = "David";
            byte age = 18;
            char gender = 'M';
            //Khai báo hằng số
            const float percent = 75.50F;

            //Hiển thị giá trị các biến và hằng số
            Console.WriteLine("ID: {0}", id);
            Console.WriteLine("Name: {0}", name);
            Console.WriteLine("Age: " + age);
            Console.WriteLine("Gender: " + gender);
            Console.WriteLine("Percent: {0}", percent);
        }
    }
}
