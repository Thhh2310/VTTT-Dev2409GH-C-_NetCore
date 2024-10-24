
using DongVat.AnCo;
using DongVat.AnThit;

namespace DongVat
{
    public class Program
    {
        static void Main(string[] args)
        {
            Bo bo = new Bo(1, "Bo", 500);
            Trau trau = new Trau(2, "Trau", 100);
            De de = new De(3, "De", 300);

            CaSau caSau = new CaSau(4, "Ca Sau", 200);
            Ho ho = new Ho(5, "Ho", 400);
            SuTu suTu = new SuTu(6, "Su Tu", 600);

            //Sử dụng phương thức để hiển thị thông tin
            Console.WriteLine(bo.GetInfo());
            Console.WriteLine(trau.GetInfo());
            Console.WriteLine(de.GetInfo());

            Console.WriteLine(caSau.GetInfo());
            Console.WriteLine(ho.GetInfo());
            Console.WriteLine(suTu.GetInfo());
        }
    }
}
