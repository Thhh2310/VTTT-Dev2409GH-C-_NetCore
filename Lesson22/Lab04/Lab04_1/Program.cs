namespace Lab04_1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //khởi tạo lớp windows
            Window win = new Window(1, 2);
            //khởi tạo lớp listBox
            ListBox lb = new ListBox(3, 4, "Stand alone list box");
            //khởi tạo lớp button
            Button b = new Button(5, 6);

            win.DrawWindow();
            lb.DrawWindow();
            b.DrawWindow();

            //khởi tạo mảng windows
            Window[] winArray = new Window[3];
            winArray[0] = new Window(1, 2);
            winArray[1] = new ListBox(3, 4, "List Box in aray");
            winArray[2] = new Button(5, 6);
            for (int i = 0; i < 3; i++)
            {
                winArray[i].DrawWindow();
            }
        }
    }
}
