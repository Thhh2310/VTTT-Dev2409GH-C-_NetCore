using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab04_1
{
    internal class Button:Window
    {
        //phương thức khởi tạo
        public Button (int top, int left)
            :base (top, left) //gọi constructor lớp cơ sở
        {

        }

        //Ghi đè phương thức
        public override void DrawWindow()
        {
            Console.WriteLine ("Drawing a button at {0}, {1}\n", top, left);
        }
    }
}
