using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2139Assignment1_CustomerPages
{
    public partial class CxContact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["cx_id"] as string))
            {
                Response.Redirect("Login.aspx");
            }
            else if(!string.IsNullOrEmpty(Session["message"] as string))
            {
                lblNotify.Text = Session["message"].ToString();
            }
        }

        protected void btnRmvCtct_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                string query = "delete from [contact_list] where id='" + lstBx.SelectedValue + "'";
                SqlConnection connect = new SqlConnection(data_contact.ConnectionString);
                connect.Open();
                SqlCommand check = new SqlCommand(query, connect);
                check.ExecuteNonQuery();
                connect.Close();
                Session["message"] = "Selected customer has been removed";
                Response.Redirect("TechContact.aspx");
                
            }

        }

        protected void btnEmpLst_Click(object sender, EventArgs e)
        {
            SqlConnection connect1 = new SqlConnection(data_contact.ConnectionString);
            connect1.Open();
            string insStr = "truncate table contact_list";
            SqlCommand insCmd = new SqlCommand(insStr, connect1);
            insCmd.ExecuteNonQuery();
            connect1.Close();
            Session["message"] = "Contact list has been cleared";
            Response.Redirect("TechContact.aspx");
            
        }

        protected void btnAddCx_Click(object sender, EventArgs e)
        {
            Response.Redirect("TechCustomer.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LogIn.aspx");
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("TechHome.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewIncident.aspx");
        }
    }
}