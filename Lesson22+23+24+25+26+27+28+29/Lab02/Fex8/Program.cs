namespace Fex8
{
    internal class Program
    {
        /// <summary>
        /// VD8(15/10/2024)
        /// Nhập vào số tiền gửi, lãi suất ngân hàng(tính theo năm) và số tháng gửi
        /// tính và xuất số dư cuối kỳ và tiền lãi cuối kỳ, biết rằng:
        /// --lãi suất tháng = (lãi xuất năm/12)/100
        /// --tiền lãi tháng = tiền gốc*lãi suất tháng
        /// --tiền lãi mỗi tháng sẽ đc gộp chung vào tiền gốc
        /// --tiền lãi cuối kỳ sẽ đc tích luỹ tiến từ tiền lãi mỗi tháng + tiền gốc
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            //Xuất Unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //Nhập và khai báo
            Console.Write("Nhập số tiền gửi: ");
            double soTienGui = double.Parse(Console.ReadLine());
            Console.Write("Nhập lãi suất ngân hàng (%): ");
            double laiSuatNam = double.Parse(Console.ReadLine());
            Console.Write("Nhập số tháng gửi: ");
            int soThangGui = int.Parse(Console.ReadLine());

            //Tính số dư cuối kỳ và tiền lãi cuối kỳ
            double laiSuatThang = (laiSuatNam / 12) /100;
            double soDu = soTienGui;
            Console.WriteLine("Tháng:\t Số Dư:\t Lãi: ");
            for (int thang = 1; thang <= soThangGui; thang++) 
            {
                double lai = soDu * laiSuatThang;
                soDu += lai;
                Console.WriteLine($"{thang}\t {soDu:N2}\t {lai:N2}");
            }
            double tongLai = soDu - soTienGui;
            Console.WriteLine($"Tổng lãi sau {soThangGui} tháng: {tongLai:N}");
        }
    }
}
