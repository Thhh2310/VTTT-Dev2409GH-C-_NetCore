using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DongVat.AnCo
{
    public class Bo
    {
        public int ID {  get; set; }
        public string Name { get; set; }
        public double Weight { get; set; }

        public Bo(int iD, string name, double weight)
        {
            ID = iD;
            Name = name;
            Weight = weight;
        }
        public string GetInfo()
        {
            return $"Bo-Id:{ID},Name:{Name},Weight:{Weight}kg";
        }
    }

    public class Trau
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public double Weight { get; set; }

        public Trau(int iD, string name, double weight)
        {
            ID = iD;
            Name = name;
            Weight = weight;
        }
        public string GetInfo()
        {
            return $"Trau-Id:{ID},Name:{Name},Weight:{Weight}kg";
        }
    }

    public class De
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public double Weight { get; set; }

        public De(int iD, string name, double weight)
        {
            ID = iD;
            Name = name;
            Weight = weight;
        }
        public string GetInfo()
        {
            return $"De-Id:{ID},Name:{Name},Weight:{Weight}kg";
        }
    }
}
