using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2139Assignment1_CustomerPages
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Session["stu1"] = "Yu Shi";
            Session["ID1"] = "101053814";
            Session["stu2"] = "Kevin Teran";
            Session["ID2"] = "101053814";
            Session["stu3"] = "Dharam K.C";
            Session["ID3"] = "101053814";
            Session["stu4"] = "Harmanpreet Kaur";
            Session["ID4"] = "101053814";

            if (IsValid)
            {
               
                    string role = "",cx_id="";

                    SqlConnection connect = new SqlConnection(sqlCheckidentity.ConnectionString);
                    connect.Open();
                    string query = "SELECT * FROM [users] WHERE [email]='" + txtUsername.Text+"'and [password]='"+txtPassword.Text+"'";
                   
                    SqlCommand check = new SqlCommand(query, connect);                        
                    SqlDataReader read = check.ExecuteReader();
                    read.Read();
                if (read.HasRows)
                {
                    role = read.GetValue(13).ToString();
                    cx_id = read.GetValue(0).ToString();
                    Response.Write(role);
                    connect.Close();
                    Session["role"] = role;
                    Session["cx_id"] =cx_id;
                    if (role == "admin")
                    {
                        Response.Redirect("AdminHome.aspx");
                    }
                    else if (role == "tech")
                    {
                        Response.Redirect("TechHome.aspx");
                    }
                    else if (role == "customer")
                    {
                        Response.Redirect("Customerhome.aspx");
                        
                    }
                }
                else
                {
                    
                    lblWarning.Text = "Please check your user name and password and try again!";
                }
                   

                
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}