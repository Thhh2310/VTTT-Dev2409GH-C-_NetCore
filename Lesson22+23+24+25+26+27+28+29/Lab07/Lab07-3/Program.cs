namespace Lab07_3
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //Khai báo mảng
            byte[] a = new byte[5];
            //nhập mảng
            try
            {
                for (int i = 0; i < 5; i++)
                {
                    Console.Write("a[{0}] = ", i + 1);
                    a[i] = Convert.ToByte(Console.ReadLine());
                }
            }
            catch(FormatException ex) 
            {
                Console.WriteLine("Không được nhập kí tự cho mảng số");
            }
            catch (OverflowException ex)
            {
                Console.WriteLine("Không được nhập giá trị từ ngoài miên 0-255");
            }
            catch (IndexOutOfRangeException ex)
            {
                Console.WriteLine("Lỗi vượt qua phạm vi của mảng");
            }
            //in mảng
            Console.WriteLine("Nội dung mảng");
            for (int i = 0;i < 5;i++) 
                Console.Write(" {0} ", a[i]);
        }
    }
}
