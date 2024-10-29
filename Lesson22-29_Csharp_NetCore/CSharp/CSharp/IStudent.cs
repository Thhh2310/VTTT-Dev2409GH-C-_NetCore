using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSharp
{
    //Tạo interface IStudent
    public interface IStudent
    {
        //properties
        public int StudID { get; set; }
        public string StudName { get; set; }
        public string StudGender { get; set; }
        public int StudAge { get; set; }
        public string StudClass { get; set; }
        public double StudAvgMark { get; } //read only property

        //method
        void Print();
    }
}
