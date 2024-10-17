using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ex4._1
{
    public class Account
    {
        public decimal Balance;

        //contructor với tham số đầu vào
        public Account(decimal initialize) 
        {
            if (initialize < 0)
            {
                throw new ArgumentNullException("Số tiền đầu vào không hợp lệ");
            }
            Balance = initialize;
        }

        //tạo phương thức cho lớp Account
        //phương thức gửi tiền cho ghi đè
        public virtual void Deposite(decimal money)
        {
            if (money > 0)
            {
                Balance += money;
            }
            else
            {
                throw new ArgumentException("Số tiền nạp vào khồn hợp lệ");
            }
        }
        //phương thức rút tiền từ tài khoản
        public virtual void WithDraw(decimal money)
        {
            if (money <= 0)
            {
                throw new ArgumentException("Số tiền rút không hợp lệ");
            }
            if (money > Balance)
            {
                throw new ArgumentException("Không đủ số dư để rút tiền");
            }
            else
            {
                Balance -= money;
            }
        }
        public decimal GetBalance()
        {
            return Balance;
        }
    }


    public class SavingAccount:Account
    {
        private decimal rate; //tỉ lệ lãi suất
        //contructor  với 3tham số đầu vào để khởi tạo giá trị ban đầu
        public SavingAccount(decimal initialize ,decimal rate)
    }
}
