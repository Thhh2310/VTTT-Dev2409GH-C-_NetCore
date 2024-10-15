namespace Fex5
{
    internal class Program
    {
        /// <summary>
        /// VD5(15/10/2024)
        /// Viết chương trình in ra các hình
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //Khai báo nhập số dòng
            //Console.Write("Nhập số dòng: ");
            //int soDong = int.Parse(Console.ReadLine());

            //for (int i = 1; i <= soDong; i++)
            //{
            //    for (int j = 1; j <= i; j++)
            //    {
            //        Console.Write("*");
            //    }
            //    Console.WriteLine();
            //}


            //Console.Write("Nhập số dòng: ");
            //int soDong = int.Parse(Console.ReadLine());

            //for (int i = soDong; i >= 1; i--)
            //{
            //    for (int j = i; j >= 1; j--)
            //    {
            //        Console.Write("$");
            //    }    
            //    Console.WriteLine();
            //}


            Console.Write("Nhập số dòng: ");
            int soDong = int.Parse(Console.ReadLine());

            for (int i = 1; i <= soDong; i++)
            {
                for (int j = soDong; j > i; j--)
                {
                    Console.Write(" ");
                }
                for (int k = 1; k <= (2 * i - 1); k++)
                {
                    Console.Write("*");
                }    
                Console.WriteLine();
            }
        }
    }
}
