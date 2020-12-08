using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BookFlight
{
    public partial class Add_Customer : Form
    {
        public AirlineCoordinator bookFlightData;
        public Add_Customer(AirlineCoordinator air)
        {
            bookFlightData = air;
            InitializeComponent();
        }

        private void btnSubmit_Click(object sender, EventArgs e)
        {
            string fName = txtFirstName.Text;
            string lName = txtLastName.Text;
            string phone = txtPhone.Text;
            if (bookFlightData.addCustomer(fName, lName, phone))
            {
                lblMessage.Text = "Coustomer successfully added!";
            }
            else {
                lblMessage.Text = "Adding customer failed!";
            }
        }

        private void btnBack_Click(object sender, EventArgs e)
        {
            this.Hide();
            Home form = new Home(bookFlightData);
            form.Show();
        }
    }
}
