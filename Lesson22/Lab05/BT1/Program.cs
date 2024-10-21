namespace BT1
{
    internal class Program
    {
        /// <summary>
        /// BT1(21/10/2024)
        /// --Khởi tạo một mảng một chiều số nguyên gồm 10 phần tử
        /// --tìm phần tử nhỏ nhất của mảng
        /// --đảo ngược mảng
        /// --sắp xếp mảng tăng hoặc giảm
        /// --tìm phần tử là số nguyên tố
        /// --In ra số lượng các số dương liên tiếp nhiều nhất
        /// --tính trung bình cộng các phần tử dương
        /// --kiểm tra xem mảng có phải chứa các phần tử âm dương, đan xen không?
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //Khai báo và khởi tạo mảng 1 chiều
            int[] arrays = { 11, 21, 31, 42, 24, 55, 33, 32, 67, 90,};

            int chon = 0;

            do
            {
                menu();
                Console.Write("Mời bạn chọn:");
                chon = int.Parse(Console.ReadLine());
                switch(chon)
                {
                    case 1:
                        Console.WriteLine("1: tìm phần tử nhỏ nhất của mảng");
                        int min = minArrays(arrays);
                        Console.WriteLine("Min: {0}", min);
                        break;
                    case 2:
                        Console.WriteLine("2: đảo ngược mảng");
                        //Console.WriteLine("Array:{0} ", String.Join(" ", arrays));
                        //Array.Reverse(arrays);
                        //Console.WriteLine("Reverse: " + String.Join(" ", arrays));
                        ReverseArray(arrays);
                        break;
                    case 3:
                        Console.WriteLine("3: sắp xếp mảng tăng hoặc giảm");
                        SortArray(arrays);
                        break;
                    case 4:
                        Console.WriteLine("4: tìm phần tử là số nguyên tố");
                        PrintPrime(arrays);
                        break;
                    case 5:
                        Console.WriteLine("5: In ra số lượng các số dương liên tiếp nhiều nhất");
                        int maxCount = MaxCountPositiveNumber(arrays);
                        Console.WriteLine("Số lượng số dương liên tiếp nhiều nhất: {0}", maxCount);
                        break;
                    case 6:
                        Console.WriteLine("6: tính trung bình cộng các phần tử dương");
                        double avg = AverageOfPositiveNumbers(arrays);
                        Console.WriteLine("Trung bình cộng các phần tử dương: {0}", avg);
                        break;
                    case 7:
                        Console.WriteLine("7: kiểm tra xem mảng có phải chứa các phần tử âm dương, đan xen không?");
                        bool isAlternating = CheckAlternating(arrays);
                        Console.WriteLine("Mảng chứa các phần tử âm dương đan xen không? " + (isAlternating ? "Có" : "Không"));
                        break;
                    case 8:
                        Console.WriteLine("8: Kết thúc");
                        break;
                    default:
                        Console.WriteLine("Bạn chọn sai chức năng");
                        break;
                }
            }
            while (chon != 0);
            ////duyệt mảng và in ra dữ liệu
            //Console.Write("Các phần tử trong mảng: ");
            //for (int i = 0; i < m.Length; i++)
            //{
            //    Console.Write(" {0} ", m[i]);
            //}
            //Console.WriteLine();

            ////tìm phần tử nhỏ nhất
            //int min = m[0];
            //for (int i = 0; i < m.Length; i++)
            //{
            //    if (m[i] < min)
            //        min = m[i];
            //}
            //Console.WriteLine("Phần tử nhỏ nhất là: " + min);
        }

        static void menu()
        {
            Console.WriteLine("==========Menu==========");
            Console.WriteLine("1: tìm phần tử nhỏ nhất của mảng.\r\n" +
                "2: đảo ngược mảng.\r\n" +
                "3: sắp xếp mảng tăng hoặc giảm.\r\n" +
                "4: tìm phần tử là số nguyên tố.\r\n" +
                "5: In ra số lượng các số dương liên tiếp nhiều nhất.\r\n" +
                "6: tính trung bình cộng các phần tử dương.\r\n" +
                "7: kiểm tra xem mảng có phải chứa các phần tử âm dương, đan xen không?\r\n" +
                "8: Kết thúc.\r\n");
        }

        /// <summary>
        /// 1: tìm phần tử nhỏ nhất của mảng
        /// </summary>
        /// <param name="array"></param>
        /// <returns></returns>
        static int minArrays(int[] array)
        {
            int min = array[0];
            for(int i=0; i<array.Length; i++)
            {
                if(array[i] < min)
                    array[i] = min;
            }
            return min;
        }

        /// <summary>
        /// 2: đảo ngược mảng
        /// </summary>
        /// <param name="arr"></param>
        static void ReverseArray(int[] arr)
        {
            Console.WriteLine("Array:{0} ", String.Join(" ", arr));
            Array.Reverse(arr);
            Console.WriteLine("Reverse: " + String.Join(" ", arr));
        }

        /// <summary>
        /// 3: sắp xếp mảng tăng hoặc giảm
        /// </summary>
        /// <param name="arr"></param>
        static void SortArray(int[] arr)
        {
            Console.WriteLine("Mảng trước khi sắp:{0} ", String.Join(" ", arr));
            Array.Sort(arr);
            Console.WriteLine("Sorted: " + String.Join(" ", arr));
        }

        /// <summary>
        /// 4: tìm phần tử là số nguyên tố
        /// </summary>
        /// <param name="arr"></param>
        static void PrintPrime(int[] arr)
        {
            Console.Write("Số nguyên tố:");
            for (int i = 0; i < arr.Length; i++)
            {
                if (IsPrime(arr[i]))
                {
                    Console.Write(" {0} ", arr[i]);
                }
            }
            Console.WriteLine();
        }
        /// <summary>
        /// IsPrime
        /// </summary>
        /// <param name="number"></param>
        /// <returns></returns>
        static bool IsPrime(int number)
        {
            if (number < 2)
            {
                return false;
            }    

            for (int i = 2; i <= Math.Sqrt(number); i++)
            {
                if (number % i == 0)
                {
                    return false;
                }
            }
            return true;
        }

        /// <summary>s
        /// 5: In ra số lượng các số dương liên tiếp nhiều nhất
        /// </summary>
        /// <param name="arr"></param>
        /// <returns>int</returns>
        static int MaxCountPositiveNumber(int[] arr)
        {
            int maxCount = 0;
            int currentCount = 0;
            foreach (int num in arr)
            {
                if(num > 0)
                {
                    currentCount++;
                    if (currentCount > maxCount)
                    {
                        maxCount = currentCount;
                    }
                }else
                {
                    currentCount = 0; //reset đến khi gặp số không dương
                }    
            }

            return maxCount;
        }

        /// <summary>
        /// 6: tính trung bình cộng các phần tử dương
        /// </summary>
        /// <param name="arr"></param>
        /// <returns></returns>
        static double AverageOfPositiveNumbers(int[] arr)
        {
            double sum = 0;
            int count = 0;
            foreach (int num in arr)
            {
                if (num > 0)
                {
                    sum += num;
                    count++;
                }
            }
            return count > 0 ? sum / count : 0;
        }

        /// <summary>
        /// 7: kiểm tra xem mảng có phải chứa các phần tử âm dương, đan xen không
        /// </summary>
        /// <param name="arr"></param>
        /// <returns></returns>
        static bool CheckAlternating(int[] arr)
        {
            bool lastWasPositive = arr[0] > 0;
            for (int i = 1; i < arr.Length; i++)
            {
                if ((arr[i] > 0 && lastWasPositive) || (arr[i] < 0 && !lastWasPositive))
                {
                    return false; // hai số liên tiếp cùng dấu
                }
                lastWasPositive = arr[i] > 0;
            }
            return true;
        }
    }
}
