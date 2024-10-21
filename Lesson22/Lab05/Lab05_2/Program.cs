namespace Lab05_2
{
    internal class Program
    {
        /// <summary>
        /// Chương trình minh hoạ một số thao tác trên mảng 2 chiều
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            //Xuất unicode
             Console.OutputEncoding = System.Text.Encoding.UTF8;

            ////Khai báo và khởi tạo mảng
            //int[,] a =
            //{
            //    {4, 6, 9 },
            //    {2, 4, 5 },
            //    {9, 2, 6 },
            //    {1, 6, 3 },
            //};

            ////duyệt mảng và in theo hàng cột
            //Console.WriteLine("Nội dung mảng:");
            //for (int i = 0; i <= a.GetUpperBound(0); i++)
            //{
            //    Console.WriteLine();
            //    for (int j = 0; j <= a.GetUpperBound(1); j++)
            //    {
            //        Console.Write(" {0} ", a[i, j]);
            //    }    
            //    Console.WriteLine();
            //}

            ////tìm các phần tử có chỉ số hằng bằng chỉ số cột
            //Console.Write("Các phần tử có chỉ số hằng bằng chỉ số cột: ");
            //for (int i = 0; i <= a.GetUpperBound(0); i++)
            //{
            //    for (int j = 0; j <= a.GetUpperBound(1); j++)
            //    {
            //        if (i == j)
            //            Console.Write(" {0} ", a[i, j]);
            //    }    
            //}    
            //Console.WriteLine();

            ////các phần tử lớn nhất trên hàng
            //Console.WriteLine("Các phần tử lớn nhất trên hàng") ;
            //for (int i = 0; i <= a.GetUpperBound(0); i++)
            //{
            //    int max = a[i, 0];
            //    for (int j = 0; j <= a.GetUpperBound(1); j++)
            //    {
            //        if (max < a[i, j])
            //            max = a[i, j];
            //    }
            //    Console.WriteLine("Hàng {0}:{1}", i, max);
            //}


            Console.WriteLine("Mảng 2 chiều: ");
            int[,] array =
            {
                {4, 6, 9 },
                {2, 4, 5 },
                {9, 2, 6 },
                {1, 6, 3 },
            };

            //Duyệt mảng và in
            printArray(array);
            //chỉ số hàng bằng chỉ số cột
            printArrayXY(array);
            //số lớn nhất trên hàng
            printMaxRow(array);
        }

        //Hàm in ra mảng
        static void printArray(int[,] arrays)
        {
            Console.WriteLine("Các phần tử trong mảng\n");
            for(int i = 0; i <= arrays.GetUpperBound(0); i++)
            {
                for(int j = 0;j <= arrays.GetUpperBound(1); j++)
                {
                    Console.Write(" {0} ", arrays[i, j]);
                }
                Console.WriteLine() ;
            }
            
        }

        //Hàm xử lý chức năng
        static void printArrayXY(int[,] arrays)
        {
            Console.WriteLine("Các phần tử có chỉ số hàng bằng chỉ số cột: ");
            for (int i = 0; i <= arrays.GetUpperBound(0); i++)
            {
                for (int j = 0; j <= arrays.GetUpperBound(1); j++)
                {
                    if (i == j)
                    Console.Write(" {0} ", arrays[i, j]);
                }
                Console.WriteLine();
            }
            
        }

        //các phần tử lớn nhất trên hàng
        static void printMaxRow(int[,] arrays)
        {
            Console.WriteLine("Các phần tử lớn nhất trên hàng: ");
            int maxRow = 0;
            for (int i = 0; i <= arrays.GetUpperBound(0); i++)
            {
                maxRow = arrays[i, 0];
                for (int j = 0; j <= arrays.GetUpperBound(1); j++)
                {
                    if (maxRow < arrays[i, j])
                    {
                        maxRow = arrays[i, j];
                    }    
                }
                Console.WriteLine("Hàng {0}:{1}", i, maxRow);
            }
        }
    }
}
