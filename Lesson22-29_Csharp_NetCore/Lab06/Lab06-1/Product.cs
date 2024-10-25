using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab06_1
{
    //tạo lớp Product
    internal class Product
    {
        //Khai báo trường
        string name;
        double cost;
        int onhand;
        //contructor
        public Product(string n, double c, int h)
        {
            name = n;
            cost = c;
            onhand = h;
        }
        //ghi đè phương thức
        public override string ToString()
        {
            return String.Format("{0,-10} Cost: {1,6:C} On hand: {2}", name, cost, onhand);
        }
    }
}
