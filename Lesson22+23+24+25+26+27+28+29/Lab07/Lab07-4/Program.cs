namespace Lab07_4
{
    //định nghĩa lớp custom ngoại lệ chỉ cho nhập số nguyên dương
    public class InvalidInputNumber : Exception
    {
        public InvalidInputNumber()
            : base("Hãy nhập 1 số >0") { }
    }

    internal class Program
    {
        static void Main(string[] args)
        {
            //xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            int intCnt;
            int intNum = 0;
            Console.Write("Nhập 1 số: ");
            //Nhập và tung ngoại lệ
            try
            {
                intNum = Convert.ToInt32(Console.ReadLine());
                if (intNum <= 0)
                {
                    throw new InvalidInputNumber();
                }
            }
            catch (InvalidInputNumber objInvalidInput)
            {
                Console.WriteLine(objInvalidInput.Message);
            }
            catch (System.FormatException objFormatException)
            {
                Console.WriteLine(objFormatException.Message);
            }
            finally
            {
                if (intNum > 0)
                {
                    //in ra dãy số *100
                    for (intCnt = 0; intCnt <= 10; intCnt++) 
                        Console.WriteLine(intNum + intCnt);
                }
            }
            Console.ReadLine();
        }
    }
}
