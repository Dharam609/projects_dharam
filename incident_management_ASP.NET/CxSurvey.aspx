<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CxSurvey.aspx.cs" Inherits="comp2139Assignment1_CustomerPages.Survey" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Survey</title>    
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style4 {
            width: 782px;
        }
        .auto-style8 {
            width: 749px;
        }
        .auto-style11 {
            font-weight: bold;
            font-size: small;
        }
        .auto-style12 {
            font-size: medium;
        }         
        .auto-style13 {
            margin-left: 0px;
        }
        .auto-style14 {
            width: 260px;
        }
        html, body {height: 100%;}
        #separator{height:75px;}
        #footer {height:75px;}
        #wrapper {min-height:100%;}
        #footer {
            background: #cfc3c3;
            min-width: 100%;
            
            float: left;
            margin-bottom: -150px;
        }
    #footerContent {width:940px;padding:15px;}
        </style>
</head>
<body style="background-color:honeydew">
<div id="wrapper">
    <div style="margin-left:60px;margin-right:60px;margin-top:-40px">
    <form id="form1" runat="server" class="form-group" > 
        
        <table class="table">
            <tr>
                <td style="vertical-align: middle">
                    <asp:Button ID="btnHome" runat="server" Text="Home" class="btn btn-primary" OnClick="btnHome_Click" CausesValidation="False"/>
                </td>
                <td style="vertical-align: middle">
                    <h4 class="text-center"><strong>TechKnow Pro - Incident Report Management Software </strong></h4>
                </td>
                <td class="text-right" style="vertical-align: middle">
                    <asp:Button ID="btnLogout" runat="server" Text="Logout" class="btn btn-danger" OnClick="btnLogout_Click" CausesValidation="False"/>
                </td>
            </tr>
        </table>
        
         <hr />  
       

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
           
            <h5><strong>&nbsp;&nbsp; Surveys - Collect feedback from customers</strong></h5>
        <br />
        

       
        <span class="auto-style11">&nbsp;&nbsp;&nbsp; Customer ID:</span>&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCusId" runat="server" Enabled="False" BackColor="White"></asp:TextBox><br />
        <asp:SqlDataSource ID="data_CID" runat="server" ConnectionString="<%$ ConnectionStrings:IMConnectionString %>" SelectCommand="SELECT Id, first_name+' , '+last_name as 'name', password, email, telephone, address, city, postal_code, profile_name, secret_question, secret_answer, role, position_title FROM users"></asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;&nbsp; <asp:ListBox ID="lbIncidents" runat="server" Width="1032px" DataSourceID="data_inc" DataTextField="Column1" DataValueField="incident_id" Height="117px"></asp:ListBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="lbIncidents" ErrorMessage="You must choose one" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:SqlDataSource ID="data_inc" runat="server" ConnectionString="<%$ ConnectionStrings:IMConnectionString %>" SelectCommand="SELECT 'Incident for '+cast(incident_id as varchar(50))+' ,' +status+' ,'+report_date+' , -'+description,incident_id, full_name, cx_id, report_date, status, description, contact_method, survey_status, respond_time, tech_efficiency, problem_resolution, additional_comment, survey_contact_method, shouldContact FROM Incident WHERE (cx_id = @cx_id) AND (status = 'closed') AND (survey_status = 'True')">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtCusId" Name="cx_id" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        &nbsp;<h5>&nbsp;&nbsp;&nbsp;<strong>&nbsp;&nbsp; </strong> <span class="auto-style12"><strong>Please rate this incident by the following categories:</strong></span></h5>
        
        <table class="table" style="margin-left:40px">
            <tr>
                <td class="auto-style4"><strong>Response Time</strong></td>
                <td class="auto-style8">
                    <asp:RadioButtonList ID="rblRT" runat="server" RepeatDirection="Horizontal" Width="800px">
                        <asp:ListItem>&nbsp;Not Satisfied</asp:ListItem>
                        <asp:ListItem>&nbsp;Somewhat Satisfied</asp:ListItem>
                        <asp:ListItem>&nbsp;Satisfied</asp:ListItem>
                        <asp:ListItem>&nbsp;Completely Satisfied</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvRT" runat="server" ControlToValidate="rblRT" ErrorMessage="Select an option for Response Time" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Technician Efficiency</strong></td>
                <td class="auto-style8">
                    <asp:RadioButtonList ID="rblTE" runat="server" RepeatDirection="Horizontal" Width="800px">
                        <asp:ListItem>&nbsp;Not Satisfied</asp:ListItem>
                        <asp:ListItem>&nbsp;Somewhat Satisfied</asp:ListItem>
                        <asp:ListItem>&nbsp;Satisfied</asp:ListItem>
                        <asp:ListItem>&nbsp;Completely Satisfied</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvTE" runat="server" ControlToValidate="rblTE" ErrorMessage="Select an option for Technician Efficiency" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Problem Resolution</strong></td>
                <td class="auto-style8">
                    <asp:RadioButtonList ID="rblPR" runat="server" RepeatDirection="Horizontal" Width="800px">
                        <asp:ListItem>&nbsp;Not Satisfied</asp:ListItem>
                        <asp:ListItem>&nbsp;Somewhat Satisfied</asp:ListItem>
                        <asp:ListItem>&nbsp;Satisfied</asp:ListItem>
                        <asp:ListItem>&nbsp;Completely Satisfied</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvPR" runat="server" ControlToValidate="rblPR" ErrorMessage="Select an option for Problem Resolution" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>           
            </table>
        <p>
        </p>
        <table class="table" style="margin-left:40px">
            <tr>
                
                <td class="auto-style14"><strong>Additional Comments</strong></td>
                <td ><asp:TextBox ID="txtComments" runat="server" Height="103px" TextMode="MultiLine" Width="418px" resize="none" CssClass="auto-style13"></asp:TextBox></td>
            </tr>
            </table>
        <p>
        </p>
        <table class="table" style="margin-left:40px">
            <tr>
                <td>
                    <strong>
                    <asp:CheckBox ID="cbContact"  runat="server" Text="Please contact me to discuss this incident" AutoPostBack="True" OnCheckedChanged="cbContact_CheckedChanged" />
                    </strong>
                </td>
                </tr>
            <tr>
                <td>
                    <asp:RadioButtonList ID="rblContactvia" runat="server" RepeatDirection="Horizontal" Enabled="False">
                        <asp:ListItem Value="email">&nbsp;Contact via Email</asp:ListItem>
                        <asp:ListItem Value="phone">&nbsp;Contact via phone</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" class="btn btn-success" />
                &nbsp;&nbsp;
                    <asp:CustomValidator ID="cvContactVia" runat="server" ErrorMessage="Please select a contact option" ForeColor="Red" OnServerValidate="cvContactVia_ServerValidate">*</asp:CustomValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            </table>       
    </form>
    </div>
    <hr />
         <div id="separator"></div>
    
    </div>
    <div id="footer">
      <div id="footerContent">@2019-COMP2139-TechKnow Pro</div>
  </div>
</body>
</html>
