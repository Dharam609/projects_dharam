using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2139Assignment1_CustomerPages
{
    public partial class Survey : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["cx_id"] as string))
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                txtCusId.Text = Session["cx_id"].ToString();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                int shouldContact = 0;
                if (cbContact.Checked)
                {
                    shouldContact = 1;
                }
                SqlConnection conn = new SqlConnection(data_inc.ConnectionString);
                string updateQuery =    "update  [dbo].[Incident] set [respond_time]=@rspT, [tech_efficiency]=@techEff, " +
                    "                   [problem_resolution]=@ProbRes, [additional_comment]=@addCom, " +
                    "                   [shouldContact]=@shouldC, [survey_contact_method]=@sCM, [survey_status]=@status" +
                    " where [incident_id]=@inc_id";
                SqlCommand updateSurvey = new SqlCommand(updateQuery, conn);
                updateSurvey.Parameters.AddWithValue("@rspT", rblRT.SelectedValue);
                updateSurvey.Parameters.AddWithValue("@techEff", rblTE.SelectedValue);
                updateSurvey.Parameters.AddWithValue("@ProbRes",rblPR.SelectedValue);
                updateSurvey.Parameters.AddWithValue("@addCom", txtComments.Text);
                updateSurvey.Parameters.AddWithValue("@shouldC", shouldContact);
                updateSurvey.Parameters.AddWithValue("@sCM", rblContactvia.SelectedValue);
                updateSurvey.Parameters.AddWithValue("@status", "False");
                updateSurvey.Parameters.AddWithValue("@inc_id", Convert.ToInt32(lbIncidents.SelectedValue));
                updateSurvey.Parameters.AddWithValue("@survey_status","False");
                conn.Open();
                updateSurvey.ExecuteNonQuery();
                conn.Close();


                Response.Redirect("SurveyComplete.aspx");
            }
        }

        protected void cbContact_CheckedChanged(object sender, EventArgs e)
        {
            rblContactvia.Enabled = true;
        }

        protected void cvContactVia_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (cbContact.Checked)
            {
                args.IsValid = false;
                if(rblContactvia.SelectedValue == "email" || rblContactvia.SelectedValue == "phone")
                {
                    args.IsValid = true;
                }
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LogIn.aspx");
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customerhome.aspx");
        }

        
    }
}