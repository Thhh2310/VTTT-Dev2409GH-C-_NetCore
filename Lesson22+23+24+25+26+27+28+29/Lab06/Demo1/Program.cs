using System.Collections;

namespace Demo1
{
    internal class Program
    {
        /// <summary>
        /// ArrayList
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            Console.WriteLine("Demo ArrayList");
            //Khởi tạo
            ArrayList arrayList = new ArrayList();

            //Thêm các phần tử
            //Add
            arrayList.Add(111);
            arrayList.Add("wyb");

            //AddRange
            string[] strs = { "Tùng", "Cúc", "Trúc", "Mai" };
            arrayList.AddRange(strs);

            //in mảng
            PrintArray(arrayList);

            //Insert
            arrayList.Insert(0, "Dev");
            PrintArray(arrayList);

            //Remove
            arrayList.Remove("Dev");
            PrintArray(arrayList);

            arrayList.RemoveAt(1);
            PrintArray(arrayList);

            //sort
            arrayList.AddRange(strs);
            PrintArray(arrayList);
            arrayList.Sort();
            PrintArray(arrayList);
        }

        static void PrintArray(ArrayList arrayList)
        {
            Console.WriteLine("Danh sách các phần tử");
            foreach (var item in arrayList)
            {
                Console.WriteLine(item);
            }
        }
    }
}
