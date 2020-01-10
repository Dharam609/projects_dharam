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
    public partial class Home : Form
    {
        public AirlineCoordinator bookFlightData;
        public Home(AirlineCoordinator allData)
        {
            bookFlightData = allData;
            InitializeComponent();
        }

        private void Home_Load(object sender, EventArgs e)
        {

        }

        private void btnAddCustomer_Click(object sender, EventArgs e)
        {
            this.Hide();
            Add_Customer form = new Add_Customer(bookFlightData);
            form.Show();
        }

        private void btnListCustomer_Click(object sender, EventArgs e)
        {
            this.Hide();
            List_Customer form = new List_Customer(bookFlightData);
            form.Show();
        }
    }
}
