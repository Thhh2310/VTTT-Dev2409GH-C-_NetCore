using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSharp
{
    //tạo lớp student
    public class Student:IStudent
    {
        //properties
        public int StudID { get; set; }
        public string StudName { get; set; }
        public string StudGender { get; set; }
        public int StudAge { get; set; }
        public string StudClass { get; set; }
        private int[] MarkList = new int[3];//Marklist array
        private double studAvgMark;
        public double StudAvgMark
        {
            get
            {
                return studAvgMark; //read only property
            }
        }


        //method to print student details
        public void Print()
        {
            Console.WriteLine("ID: " + StudID);
            Console.WriteLine("Name: " + StudName);
            Console.WriteLine("Gender: " + StudGender);
            Console.WriteLine("Age: " + StudAge);
            Console.WriteLine("Class: " + StudClass);
            Console.WriteLine("Averge Mark:{0:N2} ", StudAvgMark);
        }

        //Indexer for MarkList
        public int this[int index]
        {
            get
            {
                if (index <0 || index >= MarkList.Length)
                    throw new ArgumentOutOfRangeException("Index out of range.");
                return MarkList[index];
            }
            set
            {
                if (index < 0 || index >= MarkList.Length)
                    throw new ArgumentOutOfRangeException("Index out of range.");
                MarkList[index] = value;
                CalAvg(); //update Average
            }
        }

        //method to calculate average
        public void CalAvg()
        {
            studAvgMark = (MarkList[0] + MarkList[1] + MarkList[2]) / 3;
        }
    }
}
