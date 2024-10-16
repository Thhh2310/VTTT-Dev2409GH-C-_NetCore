namespace Lab03_2
{
    internal class Program
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //tạo đối tượng contact với contractor ko tham số
            Contact ct1 = new Contact();

            //gán giá trị cho ct1
            ct1.Id = 1;
            ct1.Firstname = "Test";
            ct1.Lastname = "Test";
            ct1.Address = "Hà Nội";
            ct1.Phone = "0221115588";
            ct1.Email = "Test@gmail.com";

            //tạo đối tượng contact với contructor có tham số
            Contact ct2 = new Contact(2, "Trần Thị", "Hoa", "Hà Đông", "033245879", "hoa@gmail.com");

            //hiển thị thông tin ct1 và ct2
            ct1.Display();
            ct2.Display();
        }
    }
}
