using static Ex07_3.InvalidMarkException;


namespace Ex07_3
{
    public class Program
    {
        static void Main(string[] args)
        {
            Student st = new Student();

            Console.Write("Nhap ID: " +  st.Id);
            st.Id = Convert.ToInt32(Console.ReadLine());

            Console.Write("Nhap Name: " + st.Name);
            st.Name = (Console.ReadLine());

            Console.Write("Nhap Diem Ly Thuyet: " + st.TheoryMark);
            st.TheoryMark = Convert.ToByte(Console.ReadLine());

            Console.Write("Nhap Diem Thuc Hanh: " + st.LabMark);
            st.LabMark = Convert.ToInt32(Console.ReadLine());

            try
            {
                if (st.TheoryMark < 0 || st.TheoryMark > 10)
                {
                    throw new InvalidMarkException("Invalid mark value: " + st.TheoryMark);
                }
            }
            catch (InvalidMarkException e)
            {
                Console.WriteLine("Error:" + e.Message);
            }

            try
            {
                if (st.LabMark < 0 || st.LabMark > 10)
                {
                    throw new InvalidMarkException("Invalid mark value: " + st.LabMark);
                }
            }
            catch (InvalidMarkException e)
            {
                Console.WriteLine("Error:" + e.Message);
            }
        }
    }
}
