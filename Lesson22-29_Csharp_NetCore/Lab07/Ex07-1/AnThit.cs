using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DongVat.AnThit
{
    public class CaSau
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public double Weight { get; set; }

        public CaSau(int iD, string name, double weight)
        {
            ID = iD;
            Name = name;
            Weight = weight;
        }
        public string GetInfo()
        {
            return $"CaSau-Id:{ID},Name:{Name},Weight:{Weight}kg";
        }
    }

    public class Ho
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public double Weight { get; set; }

        public Ho(int iD, string name, double weight)
        {
            ID = iD;
            Name = name;
            Weight = weight;
        }
        public string GetInfo()
        {
            return $"Ho-Id:{ID},Name:{Name},Weight:{Weight}kg";
        }
    }

    public class SuTu
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public double Weight { get; set; }

        public SuTu(int iD, string name, double weight)
        {
            ID = iD;
            Name = name;
            Weight = weight;
        }
        public string GetInfo()
        {
            return $"SuTu-Id:{ID},Name:{Name},Weight:{Weight}kg";
        }
    }
}
