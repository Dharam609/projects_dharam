using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2139Assignment1_CustomerPages
{
    public partial class ViewSurvey : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty(Session["cx_id"] as string))
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHome.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LogIn.aspx");
        }

        protected void ddlCx_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCID.Text = ddlCx.SelectedValue;
        }

        protected void btnRtv_Click1(object sender, EventArgs e)
        {
            SqlConnection connect = new SqlConnection(dat_lBox.ConnectionString);
            connect.Open();
            string query = "select * From incident  where [incident_id]=@incident_id";
            SqlCommand check = new SqlCommand(query, connect);
            check.Parameters.AddWithValue("@incident_id", lstBxSurv.SelectedValue);
            SqlDataReader read = check.ExecuteReader();
            read.Read();
            if (read.HasRows)
            {
                lblCDI.Text = read.GetValue(13).ToString();
                lblRT.Text = read.GetValue(8).ToString();
                lblPCM.Text = read.GetValue(12).ToString();
                lblPR.Text = read.GetValue(10).ToString();
                lblTE.Text = read.GetValue(9).ToString();
                txtAddc.Text = read.GetValue(11).ToString();
            }
            connect.Close();
        }
    }
}
