namespace Lab02_3
{
    internal class Program
    {
        /// <summary>
        /// Nhập vào một ký tự, in ra ký tự đó là nguyên âm hay phụ âm
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            char ch;
            Console.Write("Nhập vào ký tự: ");
            ch = (char)Console.Read();
            switch (ch)
            {
                case 'a':
                case 'o':
                case 'u':
                case 'e':
                case 'i':
                    Console.WriteLine("{0} là nguyên âm.", ch);
                    break;
                default: Console.WriteLine("{0} là phụ âm.", ch);
                    break;
            }
        }
    }
}
