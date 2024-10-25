namespace Lab05_1
{
    internal class Program
    {
        /// <summary>
        /// một số thao tác với mảng một chiều
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //Khai báo và khởi tạo mảng một chiều
            int[] m = { 1, 2, 3, 5, 0, 8, 7};

            //duyệt mảng và in dữ liệu
            Console.Write("Các phần tử của mảng: ");
            for (int i = 0; i < m.Length; i++)
            {
                Console.Write(" {0} ", m[i]);
            }

            //tìm phần tử lớn nhất
            int max = m[0];
            for (int i = 0; i < m.Length; i++)
            {
                if (m[i] > max)
                    max = m[i];
            }
            Console.WriteLine("\nPhần tử lớn nhất là: " + max);

            //kiểm tra mảng có đối xứng không
            bool kt = true;//giả sử mảng là đối xứng
            for (int i = 0; i < m.Length / 2; i++)
            {
                if (m[i] != m[m.Length - 1 - i])
                {
                    kt = false;
                    break;
                }
            }
            if (kt)
                Console.WriteLine("Mảng đối xứng");
            else
                Console.WriteLine("Mảng không đối xứng");
        }
    }
}
