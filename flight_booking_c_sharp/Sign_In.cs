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
    public partial class Sign_In : Form
    {
       public AirlineCoordinator bookFlightData;
        
        public Sign_In(AirlineCoordinator allData)
        {
            bookFlightData = allData;
            InitializeComponent();
        }

        private void Sign_In_Load(object sender, EventArgs e)
        {

        }

        private void txtUsername_TextChanged(object sender, EventArgs e)
        {
            txtUsername.Text = "bookapp";
        }

        private void txtPassword_TextChanged(object sender, EventArgs e)
        {
            txtPassword.Text = "computer";
        }

        private void btnSignIn_Click(object sender, EventArgs e)
        {
            if ((txtUsername.Text != "bookapp") || (txtPassword.Text != "computer"))
            {
                txtInput.Text = "Wrong username or password";
            }
            else
            {
                this.Hide();
                Home form = new Home(bookFlightData);
                form.Show();
            }
        }
    }
}
