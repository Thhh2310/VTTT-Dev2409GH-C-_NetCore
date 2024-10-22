namespace ex2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            Book b1 = new Book();
            Book b2 = new Book("Test",20,"VN","Tâm Linh",2);
            b1.Display();
            b2.Display();

            b1.flipPageForWard();
            b1.flipPageBackWard();
            Console.ReadKey();

        }
    }
}
