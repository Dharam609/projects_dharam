using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace comp2139Assignment1_CustomerPages
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                SqlConnection conn = new SqlConnection(SqlDataSource1.ConnectionString);
                conn.Open();
                string emailQuery ="select email from users where email='"+txtEmail.Text+"'";
                SqlCommand emailCheck = new SqlCommand(emailQuery, conn);
                SqlDataReader reader = emailCheck.ExecuteReader();
                bool isDuplicate = reader.HasRows;
                reader.Close();
                if (isDuplicate)
                {
                    lblSuccess.Text = "User already in database";
                    conn.Close();
                }
                else
                {
                    string insertQuery = "insert into users(first_name,last_name,full_name,password,email,telephone,address,city,postal_code,role) values(@firstname,@lastname,@full_name,@pass,@email,@telephone,@address,@city,@postal_code,@role)";
                    SqlCommand cmd = new SqlCommand(insertQuery, conn);
                    //cmd.Parameters.AddWithValue("@id");
                    cmd.Parameters.AddWithValue("@firstname", txtFirstName.Text);
                    cmd.Parameters.AddWithValue("@lastname", txtLastName.Text);
                    cmd.Parameters.AddWithValue("@full_name", txtFirstName.Text + " " + txtLastName.Text);
                    cmd.Parameters.AddWithValue("@pass", txtPass.Text);
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@telephone", txtPhone.Text);
                    cmd.Parameters.AddWithValue("@address", txtAddress.Text);
                    cmd.Parameters.AddWithValue("@city", txtCity.Text);
                    cmd.Parameters.AddWithValue("@postal_code", txtPostalCode.Text);
                    cmd.Parameters.AddWithValue("@role", "customer");
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Session["regCXName"] = txtFirstName.Text + " " + txtLastName.Text;
                    Session["email"] = txtEmail.Text;
                    Session["regTime"] = DateTime.Now.ToString("dddd, dd MMMM yyyy HH:mm:ss");
                    Response.Redirect("RegistrationSuccess.aspx");
                }
            }
        }

        protected void cvCheckBox_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = false;
            if (cbTerms.Checked)
            {
                args.IsValid = true;
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void cbTerms_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}