using System.Collections;

namespace CSharp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            Hashtable studentTable = new Hashtable(); //tạo một Hashtable
            bool run = true;

            while (run)
            {
                Console.WriteLine("Please select an option:");
                Console.WriteLine("===============================");
                Console.WriteLine("1. Insert new student...");
                Console.WriteLine("2. Display all the student list...");
                Console.WriteLine("3. Calculator average mark....");
                Console.WriteLine("4. Exit");
                Console.WriteLine("===============================");
                Console.Write("Option: ");

                string choice = Console.ReadLine();

                switch (choice)
                {
                    case "1":
                        Console.WriteLine("1. Insert new student...");
                        InsertStudent(studentTable);
                        break;
                    case "2":
                        Console.WriteLine("2. Display all the student list...");
                        DisplayStudent(studentTable);
                        break;
                    case "3":
                        Console.WriteLine("3. Calculator average mark....");
                        CalculateAndDisplayAverageMarks(studentTable);
                        break;
                    case "4":
                        run = false;
                        Console.WriteLine("4. Exit");
                        break;
                    default:
                        Console.WriteLine("Please choice again");
                        break;
                }
            }
        }

        /// <summary>
        /// 1. Insert new student...
        /// </summary>
        /// <param name="studentTable"></param>
        static void InsertStudent(Hashtable studentTable)
        {
            Student newStudent = new Student();

            Console.Write("Input student ID: ");
            newStudent.StudID = int.Parse(Console.ReadLine());
            Console.Write("Input student Name: ");
            newStudent.StudName = Console.ReadLine();
            Console.Write("Input student Gender: ");
            newStudent.StudGender = Console.ReadLine();
            Console.Write("Input student Age: ");
            newStudent.StudAge = int.Parse(Console.ReadLine());
            Console.Write("Input student Class: ");
            newStudent.StudClass = Console.ReadLine();

            //insert mark
            for (int i = 0; i < 3; i++)
            {
                Console.Write($"Input Mark {i + 1}: ");
                newStudent[i] = int.Parse(Console.ReadLine());
            }

            //add new student
            studentTable[newStudent.StudID] = newStudent;
            Console.WriteLine("Add Student Successfully!");
        }

        /// <summary>
        /// 2. Display all the student list...
        /// </summary>
        /// <param name="studentTable"></param>
        static void DisplayStudent(Hashtable studentTable)
        {
            if (studentTable.Count == 0)
            {
                Console.WriteLine("No students available.");
                return;
            }    

            foreach (DictionaryEntry entry in studentTable)
            {
                Student student = (Student)entry.Value;
                student.Print();
                Console.WriteLine();
            }
        }

        /// <summary>
        /// 3. Calculator average mark....
        /// </summary>
        /// <param name="studentTable"></param>
        static void CalculateAndDisplayAverageMarks(Hashtable studentTable)
        {
            if (studentTable.Count == 0)
            {
                Console.WriteLine("No students available to calculate average marks.");
                return;
            }

            foreach (DictionaryEntry entry in studentTable)
            {
                Student student = (Student)entry.Value;
                //student.Print();
                Console.WriteLine("Average Mark: {0:N2}", student.StudAvgMark);
                Console.WriteLine();
            }
        }
    }
}
