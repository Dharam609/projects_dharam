using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookFlight
{
   public class Booking
    {
        private int bookingNumber;
        private string date;
        private Customer ourCustomer;
        private Flight ourFlight;

        public Booking(int bookingNum, string date, Customer cust, Flight fl)
        {
            this.date = date;
            bookingNumber = bookingNum;
            ourCustomer = cust;
            ourFlight = fl;
        }

        public static string getDateTime()
        {
            DateTime bookingDateTime = DateTime.Now;
            return bookingDateTime.ToString();
        }
        public Customer getCustomer() { return ourCustomer; }
        public Flight getFlight() { return ourFlight; }

        public string toString()
        {
            string str = "" + getDateTime() + "\t\t" + bookingNumber + "\t\t\t" + ourCustomer.getFirstName() + "\t\t\t" + ourCustomer.getLastName() + "\t\t" + ourFlight.getFlightNumber();
            return str;
        }
    }
}
