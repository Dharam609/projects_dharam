using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2139Assignment1_CustomerPages
{
    public partial class ViewIncident : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["cx_id"] as string))
            {
                Response.Redirect("Login.aspx");
            }
            else if (!IsPostBack)
            {
                lstBxInc.Items.Clear();
                ListItem selection = new ListItem("---Please select one---", "0");
                lstBxInc.Items.Insert(0,selection);
            }
         }

        protected void btnRtv_Click(object sender, EventArgs e)
        {
            SqlConnection connect = new SqlConnection(listBx.ConnectionString);
            connect.Open();
            string query = "select * From incident  where [incident_id]=@incident_id";
            SqlCommand check = new SqlCommand(query, connect);
            check.Parameters.AddWithValue("@incident_id", lstBxInc.SelectedValue);
            SqlDataReader read = check.ExecuteReader();
            read.Read();
            if (read.HasRows)
            {
                lblCxID.Text = read.GetValue(2).ToString();
                LblDate.Text = read.GetValue(3).ToString();
                LblStatus.Text = read.GetValue(4).ToString();
                LblInc.Text = read.GetValue(1).ToString();
                tBoxDesc.Text = read.GetValue(5).ToString();
            }
            connect.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("TechHome.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LogIn.aspx");        }
    }
}
