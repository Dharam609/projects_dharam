using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookFlight
{
   public class AirlineCoordinator
    {
        private FlightManager flManager;
        private CustomerManager custManager;
        private BookingManager bookManger;

        public AirlineCoordinator(int custIdSeed, int maxCust, int maxFlights, int bookingNumSeed, int maxBookingNum)
        //public AirlineCoordinator(int custIdSeed, int maxCust, int maxFlights, int bookingNumSeed)
        {
            flManager = new FlightManager(maxFlights);
            custManager = new CustomerManager(custIdSeed, maxCust);
            //bookManger = new BookingManager(bookingNumSeed);
            bookManger = new BookingManager(bookingNumSeed, maxBookingNum);
        }

        public bool addFlight(int flightNo, string origin, string destination, int maxSeats)
        {
            return flManager.addFlight(flightNo, origin, destination, maxSeats);
        }

        public bool addCustomer(string fname, string lname, string phone)
        {
            return custManager.addCustomer(fname, lname, phone);
        }

        public string flightList()
        {
            return flManager.getFlightList();
        }

        public string customerList()
        {
            return custManager.getCustomerList();
        }

        public bool deleteCustomer(int id)
        {
            return custManager.deleteCustomer(id);
        }

        public bool deleteFlight(int fid)
        {
            return flManager.deleteFlight(fid);
        }

        public bool addBooking(int custID, int flID)
        {
            return bookManger.addBooking(custManager.getCustomer(custID), flManager.getFlight(flID));
        }

        public string bookingList()
        {
            return bookManger.getBookingList();
        }

    }
}
