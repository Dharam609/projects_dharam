using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2139Assignment1_CustomerPages
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubUser_Click(object sender, EventArgs e)
        {
            lblResult.Text = "";
            SqlConnection conn = new SqlConnection(SqlDataSource1.ConnectionString);
            conn.Open();

            string emailQuery = "select email from users where email='" + txtUserName.Text + "'";
            SqlCommand emailCheck = new SqlCommand(emailQuery, conn);
            SqlDataReader reader = emailCheck.ExecuteReader();

            bool isDuplicate = reader.HasRows;
            reader.Close();

            if (isDuplicate)
            {
                txtUserName.Enabled = false;
                btnSubUser.Enabled = false;

                string dropDownQuery = "select secret_question from users where email='"+txtUserName.Text+"'";
                SqlCommand dropDownCheck = new SqlCommand(dropDownQuery, conn);
                SqlDataReader reader2 = dropDownCheck.ExecuteReader();
                reader2.Read();

                if (DBNull.Value.Equals(reader2[0]))
                {
                    conn.Close();
                    lblResult.Text = "Secret Question is null in database! Account is not recoverable. ";

                }
                else
                {
                    ddlSecretQuestion.SelectedIndex = (int)reader2[0];
                    txtSecretAnswer.Enabled = true;

                    btnSubAns.Enabled = true;

                    conn.Close();

                }
            }
            else
            {
                conn.Close();
                lblResult.Text = "User not in database!";
            }
        }

        protected void btnSubAns_Click(object sender, EventArgs e)
        {
            lblResult.Text = "";
            SqlConnection conn = new SqlConnection(SqlDataSource1.ConnectionString);
            conn.Open();
            string secretAnswerCheck = "select secret_answer from users where email ='" + txtUserName.Text + "'";
            SqlCommand secretAnswerQuery = new SqlCommand(secretAnswerCheck, conn);
            SqlDataReader reader = secretAnswerQuery.ExecuteReader();
            reader.Read();

            if(txtSecretAnswer.Text == (string)reader[0])
            {
                txtSecretAnswer.Enabled = false;
                btnSubAns.Enabled = false;

                txtNewPass.Enabled = true;
                txtConPass.Enabled = true;
                btnSubPass.Enabled = true;

                conn.Close();
            }
            else
            {
                conn.Close();
                lblResult.Text = "Secret Answer is wrong!";
            }
        }

        protected void btnSubPass_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                txtNewPass.Enabled = false;
                txtConPass.Enabled = false;
                btnSubPass.Enabled = false;

                string update = "update users set password='" + txtNewPass.Text + "' where email='"+txtUserName.Text+"'";

                SqlConnection conn = new SqlConnection(SqlDataSource1.ConnectionString);
                conn.Open();

                SqlCommand updateQuery = new SqlCommand(update, conn);
                updateQuery.ExecuteNonQuery();
                conn.Close();
                txtUserName.Text = "";
                txtSecretAnswer.Text = "";
                lblResult.Text = "Password updated! Return to Login page.";
            }
        }

        
        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customerhome.aspx");
        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogIn.aspx");
        }
    }
}