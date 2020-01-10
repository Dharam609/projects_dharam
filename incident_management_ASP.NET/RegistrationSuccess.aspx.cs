using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2139Assignment1_CustomerPages
{
    public partial class RegistrationSuccess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!string.IsNullOrEmpty(Session["regCXName"] as string)&&!string.IsNullOrEmpty(Session["regTime"] as string))
            {
                lblName.Text = Session["regCXName"].ToString();
                lblEmail.Text = Session["email"].ToString();
                lblTime.Text = Session["regTime"].ToString();
            }
           
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LogIn.aspx");
        }

        protected void btn_forget_pswd_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgetPassword.aspx");
        }
    }
}