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
    public partial class List_Customer : Form
    {
        public AirlineCoordinator bookFlightData;
        public List_Customer(AirlineCoordinator air)
        {
            bookFlightData = air;
            InitializeComponent();
        }

        private void List_Customer_Load(object sender, EventArgs e)
        {
            txtListCustomer.Text = bookFlightData.customerList();
        }

        private void btnBack_Click(object sender, EventArgs e)
        {
            this.Hide();
            Home form = new Home(bookFlightData);
            form.Show();
        }
    }
}
