using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2139Assignment1_CustomerPages
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["cx_id"] as string))
            {
                Response.Redirect("Login.aspx");
            }
            else
            if (!IsPostBack)
            {
                SqlConnection conn = new SqlConnection(SqlDataSource1.ConnectionString);
                string userInfoQuery = "select first_name,last_name,password,email,telephone,address,city,postal_code,profile_name,secret_question,secret_answer, position_title from users where id=" + Session["cx_id"].ToString();
                SqlCommand userInfo = new SqlCommand(userInfoQuery, conn);
                conn.Open();
                SqlDataReader reader = userInfo.ExecuteReader();
                reader.Read();
                txtFirstName.Text = (string)reader[0];
                txtLastName.Text = (string)reader[1];
                txtPass.Text = (string)reader[2];
                txtEmail.Text = (string)reader[3];
                txtUser.Text = (string)reader[3];
                txtPhone.Text = (string)reader[4];
                txtAddress.Text = (string)reader[5];
                txtCity.Text = (string)reader[6];
                txtPostalCode.Text = (string)reader[7];
                if (DBNull.Value.Equals(reader[8]))
                {
                    txtPN.Text = "";
                }
                else
                {
                    txtPN.Text = (string)reader[8];
                }
                if (DBNull.Value.Equals(reader[9]))
                {
                    ddlSecretQuestion.SelectedIndex = 0;
                }
                else
                {
                    ddlSecretQuestion.SelectedIndex = (int)reader[9];
                }
                if (DBNull.Value.Equals(reader[10]))
                {
                    txtSecretAnswer.Text = "";
                }
                else
                {
                    txtSecretAnswer.Text = (string)reader[10];
                }
                if (DBNull.Value.Equals(reader[11]))
                {
                    txtPosition.Text = "";
                }
                else
                {
                    txtPosition.Text = (string)reader[11];
                }

                conn.Close();

            }
        }

        protected void button2_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                SqlConnection conn = new SqlConnection(SqlDataSource1.ConnectionString);
                conn.Open();
                
                
                    lblUpdate.Text = "The email you entered found and updated.";
                    string updateQuery = "update users set first_name = '" + txtFirstName.Text + "'," +
                    "last_name = '" + txtLastName.Text + "'," +
                    "password= '" + txtPass.Text + "'," +
                    "email = '" + txtEmail.Text + "'," +
                    "telephone = '" + txtPhone.Text + "'," +
                    "address = '" + txtAddress.Text + "'," +
                    "city='" + txtCity.Text + "'," +
                    "postal_code='" + txtPostalCode.Text + "'," +
                    "profile_name='" + txtPN.Text + "'," +
                    "secret_question=" + ddlSecretQuestion.SelectedIndex + "," +
                    "secret_answer='" + txtSecretAnswer.Text + "'," +
                    "position_title = '"+txtPosition.Text+"' where Id = "+Session["cx_id"].ToString();
                    SqlCommand update = new SqlCommand(updateQuery, conn);
                    update.ExecuteNonQuery();
                    lblUpdate.Text = "database updated";
                
                conn.Close();
            }
        }
        public bool isDuplicate(SqlConnection conn)
        {
            string emailQuery = "select id, email from users where email='" + txtEmail.Text + "'";
            SqlCommand emailCheck = new SqlCommand(emailQuery, conn);
            SqlDataReader reader = emailCheck.ExecuteReader();
            bool hasResult = reader.HasRows;
            bool result = false;
            if (hasResult)
            {
                reader.Read();
                int id = (int)reader[0];
                if (id == 103)
                {
                    result = false;
                }
                else
                {
                    result = true;
                }
            }
            reader.Close();
            return result;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.RedirectPermanent("LogIn.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {

        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customerhome.aspx");
        }
    }
}