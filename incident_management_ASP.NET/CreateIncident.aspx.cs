using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2139Assignment1_CustomerPages
{
    public partial class CreateIncident : System.Web.UI.Page
    {
        public void resetPage()
        {
            txtDesc.Text = "";
            dropdlCx.SelectedIndex=-1;
            dropIncident.SelectedIndex = -1;
            dropStatus.SelectedIndex = -1;
            radioContact.SelectedIndex = -1;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            //Check session exist, if not, redirect to login page
            if (string.IsNullOrEmpty(Session["cx_id"] as string))
            {
                Response.Redirect("Login.aspx");
            }
            // Initialize the page
            else if (!IsPostBack)
            {
                dropdlCx.DataBind();
                ListItem bb = new ListItem("--Select Customer please--", "0");
                dropdlCx.Items.Insert(0, bb);
                dropdlCx.SelectedIndex = 0;
                dropStatus.ClearSelection();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)//Sumbit button function
        {
            if (IsValid)
            {
                //new record
                if (dropStatus.SelectedValue == "new")
                {
                    SqlConnection connect = new SqlConnection(SqlDataSource1.ConnectionString);
                    connect.Open();
                    string insertC = "INSERT INTO [dbo].[Incident] " +
                                    "([full_name], [cx_id], [report_date], [status], [description], [contact_method], [survey_status])" +
                                    " VALUES ( @full_name, @cx_id, @rpt_date, @status,@desc, @contact_method, N'False')";
                    SqlCommand insert = new SqlCommand(insertC, connect);

                    insert.Parameters.AddWithValue("full_name", dropdlCx.SelectedItem.ToString());
                    insert.Parameters.AddWithValue("@cx_id", dropdlCx.SelectedValue);
                    insert.Parameters.AddWithValue("@rpt_date", DateTime.Now.ToString("dddd, dd MMMM yyyy HH:mm:ss"));
                    insert.Parameters.AddWithValue("@status", "in progress");
                    insert.Parameters.AddWithValue("@desc", txtDesc.Text);
                    insert.Parameters.AddWithValue("@contact_method", radioContact.SelectedValue);
                    insert.ExecuteNonQuery();
                    connect.Close();
                    lblNotify.Text = "The incident has been created!";
                }
                //update records
                else if (dropStatus.SelectedValue == "in progress" )
                {
                    dataUpdate.Update();
                    lblNotify.Text = "The incident has been updated";
                }
                else if (dropStatus.SelectedValue == "closed")
                {
                    dataClosed.Update();
                    lblNotify.Text = "The incident has been updated";
                }
                resetPage();
                
            }
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("TechHome.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LogIn.aspx");
        }

        protected void IndexChanged(object sender, EventArgs e)
        {
            //update page with selected incident ID
            SqlConnection connect = new SqlConnection(SqlDataSource1.ConnectionString);
            connect.Open();
            string query = "select * From incident  where [incident_id]=@incident_id";
            SqlCommand check = new SqlCommand(query, connect);
            check.Parameters.AddWithValue("@incident_id", dropIncident.SelectedValue);
            SqlDataReader read = check.ExecuteReader();
            read.Read();
            if (read.HasRows)
            {
                string status= read.GetValue(4).ToString();
                lblRptDate.Text = read.GetValue(3).ToString();
                switch (status)
                {
                    case "in progress":
                        dropStatus.SelectedIndex = 2;
                        break;
                    case "closed":
                        dropStatus.SelectedIndex = 3;
                        break;
                    default:
                        dropStatus.SelectedIndex = 1;
                        break;
                }
                txtDesc.Text = read.GetValue(5).ToString(); 
                radioContact.SelectedValue = read.GetValue(6).ToString();
                lblNotify.Text = "";
            }
            //dropIncident.DataBind();
            connect.Close();
            
            }

        protected void cxIndChg(object sender, EventArgs e)
        {
            dropIncident.DataBind();
            ListItem aa = new ListItem("--Please select a incident ID--", "0");
            dropIncident.Items.Insert(0,aa);
            dropIncident.SelectedIndex = 0;
        }
    }
    }
