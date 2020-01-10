using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookFlight
{
   public class BookingManager
    {
        private static int currentBookingNum;
        private int numBookings;
        private Booking[] bookingList;
        //IList<Booking> bookingList;
        private int maxBookingNum;

        public BookingManager(int bookingNum, int maxBookings)
        //public BookingManager(int bookingNum)
        {
            currentBookingNum = bookingNum;
            numBookings = 0;
            maxBookingNum = maxBookings;
            // bookingList = new List<Booking>();
        }

        public bool addBooking(Customer ourCustomer, Flight ourFlight)
        {

            Booking ourBooking = new Booking(currentBookingNum, Booking.getDateTime(), ourCustomer, ourFlight);

            if (((ourBooking.getCustomer()) != null) && ((ourBooking.getFlight() != null)))
            {
                if (ourBooking.getFlight().getNumPassengers() < ourBooking.getFlight().getMaxSeats())
                {
                    bookingList[numBookings] = ourBooking;
                    // bookingList.Add(new Booking(currentBookingNum, Booking.getDateTime(), ourCustomer, ourFlight));
                    ourBooking.getFlight().addPassenger(ourCustomer);
                    numBookings++;
                    currentBookingNum++;
                    ourBooking.getCustomer().setNumBookings();
                    return true;
                }
            }
            return false;
        }


        public string getBookingList()
        {
            string str = "=====The Booking List========\n\nDate and Time\t\t\tBooking Number\t\tFirst Name\t\tLast Name\t\tFlight Number\n+" +
                                                         "===============\t\t=============\t\t===========\t\t=========\t\t=============\n";
            for (int x = 0; x < numBookings; x++)
            {
                str += bookingList[x].toString() + "\n";
            }
            return str;
        }
    }
}
