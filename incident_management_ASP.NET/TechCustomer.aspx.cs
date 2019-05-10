using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2139Assignment1_CustomerPages
{
    public partial class TechCustomer : System.Web.UI.Page
    {
        static string first_name = "";
        static string last_name = "";
        static string full_name = "";
        static string tel = "";
        static string email = "";
        static string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["cx_id"] as string))
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                txtBoxAdd.Text = "";
                txtPhone.Text = "";
                txtEmail.Text = "";
                if (IsPostBack)
                {
                    string query = "select * from [users] where id='" + ddlCxID.SelectedValue + "'";
                    SqlConnection connect = new SqlConnection(dataCxID.ConnectionString);
                    connect.Open();
                    SqlCommand check = new SqlCommand(query, connect);
                    SqlDataReader read = check.ExecuteReader();
                    read.Read();
                    if (read.HasRows)
                    {
                        txtBoxAdd.Text += read.GetValue(7) + "\n" + read.GetValue(8) + "\n" + read.GetValue(9);
                        txtEmail.Text += read.GetValue(5);
                        txtPhone.Text += read.GetValue(6);
                        email = read.GetValue(5).ToString();
                        first_name = read.GetValue(1).ToString();
                        last_name = read.GetValue(2).ToString();
                        full_name = first_name + " " + last_name;
                        id = ddlCxID.SelectedValue;
                        tel = read.GetValue(6).ToString();
                    }
                    connect.Close();
                }
            }


        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                string query = "select * from [contact_list] where id='" + ddlCxID.SelectedValue + "'";
                SqlConnection connect = new SqlConnection(dataCxID.ConnectionString);
                connect.Open();
                SqlCommand check = new SqlCommand(query, connect);
                SqlDataReader read = check.ExecuteReader();
                read.Read();
                if (read.HasRows)
                {
                    lblAddSuc.Text = "Customer already existed in contact list!";
                    connect.Close();
                }
                else
                {
                    connect.Close();
                    SqlConnection connect1 = new SqlConnection(dataCxID.ConnectionString);
                    connect1.Open();
                    string insStr = "INSERT INTO [dbo].[contact_list] ([Id], [first_name], [last_name],[full_name], [telephone], [email]) VALUES (@id,@first_name, @last_name,@full_name, @tel, @email)";
                    SqlCommand insCmd = new SqlCommand(insStr, connect1);
                    insCmd.Parameters.AddWithValue("@id", id);
                    insCmd.Parameters.AddWithValue("@first_name", first_name);
                    insCmd.Parameters.AddWithValue("@last_name", last_name);
                    insCmd.Parameters.AddWithValue("@full_name", full_name);
                    insCmd.Parameters.AddWithValue("@email", email);
                    insCmd.Parameters.AddWithValue("@tel", tel);
                    insCmd.ExecuteNonQuery();
                    lblAddSuc.Text = "Customer is successfully added to contact list!";
                    connect1.Close();
                }

            }
        }

        protected void btnDisp_Click(object sender, EventArgs e)
        {
            Response.Redirect("TechContact.aspx");
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.RedirectPermanent("TechHome.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.RedirectPermanent("LogIn.aspx");
        }
    }

}