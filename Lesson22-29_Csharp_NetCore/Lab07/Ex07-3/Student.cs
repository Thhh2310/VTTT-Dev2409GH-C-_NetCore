using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ex07_3
{
    public class InvalidMarkException : Exception
    {
        public InvalidMarkException() : base("Invalid mark value provided.")
        {

        }
        public InvalidMarkException(string message) : base(message)
        {

        }
        public InvalidMarkException(string message,  Exception innerException) : base(message, innerException)
        {

        }
        
    }
    public class Student
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int TheoryMark { get; set; }
        public int LabMark { get; set; }

        public Student()
        {

        }
    }
}
