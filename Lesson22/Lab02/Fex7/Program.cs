namespace Fex7
{
    internal class Program
    {
        /// <summary>
        /// VD7(15/10/2003)
        /// Viết chương trình C# hiển thị ra tháp tam giác
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
           //Xuất unicode
           Console.OutputEncoding = System.Text.Encoding.UTF8;

            //Khai báo số dòng
            int soDong = 10;

            for (int i = 1; i <= soDong; i++) 
            { 
                Console.Write(new string(' ',(soDong-i)));
                int num = i;

                //In ra số tăng dần
                for (int j = 1; j <= i; j++)
                {
                    Console.Write(num % 10);
                    num++;
                }
                num -= 2;
                //In ra số giảm dần
                for (int j = 1; j < i; j++)
                {
                    Console.Write(num % 10);
                    num--;
                }    

                Console.WriteLine();//Xuống dòng
            }
        }
    }
}
