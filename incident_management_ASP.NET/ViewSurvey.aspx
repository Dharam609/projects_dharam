<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSurvey.aspx.cs" Inherits="comp2139Assignment1_CustomerPages.ViewSurvey" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Survey</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style5 {
            height: 30px;
            width: 202px;
        }
        .auto-style8 {
            width: 407px;
        }
        .auto-style11 {
            width: 53%;
        }
        .auto-style14 {
            text-decoration: underline;
        }
        .auto-style15 {
            width: 202px;
        }
        .auto-style16 {
            width: 156px;
            text-align: right;
            font-weight: bold;
        }
        .auto-style17 {
            width: 293px;
        }
        .auto-style18 {
            font-size: medium;
        }
        .auto-style19 {
            font-size: small;
        }
        .auto-style20 {
            font-size: medium;
            text-decoration: underline;
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
    <form id="form1" runat="server"> 
                       
            <table class="table">
            <tr>
                <td style="vertical-align: top">
            <asp:Button ID="Button3" runat="server"  Text="Home" OnClick="Button3_Click" CausesValidation="false" class="btn btn-primary"/>
                </td>               
                <td><h4 class="text-center"><strong>TechKnow Pro - Incident Report Management Software</strong></h4> </td>
                <td class="text-right"><asp:Button ID="Button4" runat="server" Text="Logout"  OnClick="Button1_Click" CausesValidation="false" class="btn btn-danger"/></td>
            </tr>            
        </table>
        <hr />
        <asp:SqlDataSource ID="data_cx_list" runat="server" ConnectionString="<%$ ConnectionStrings:IMConnectionString %>" SelectCommand="SELECT * FROM [users] where [role] ='customer'"></asp:SqlDataSource>
        
        <h5 class="auto-style14"><strong>View Survey</strong></h5>
        <div style="margin-left:60px">
            <table class="auto-style11">

                <tr>
                    <td class="auto-style8">            
                        <h6><span class="auto-style1">Select a customer:</span></h6>
                    </td>
                    <td>
                <asp:DropDownList ID="ddlCx" runat="server" DataSourceID="data_cx_list" DataTextField="full_name" DataValueField="Id" AutoPostBack="True" OnSelectedIndexChanged="ddlCx_SelectedIndexChanged"></asp:DropDownList></td>
                   
                    <td class="auto-style17">
                        <h6>&nbsp;</h6>
                        <h6 class="auto-style16">Customer ID:&nbsp;&nbsp;&nbsp; </h6>
&nbsp;</td>
                    <td>
                <asp:TextBox ID="txtCID" runat="server" Enabled="False"></asp:TextBox>            
                    </td>
                </tr>
            </table>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div>
                <h6 class="auto-style14"><strong>Survey Listing</strong></h6>
            <asp:ListBox ID="lstBxSurv" runat="server" DataSourceID="dat_lBox" DataTextField="in_id" DataValueField="incident_id" Height="150px" Width="589px"></asp:ListBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="You must select one survey!" ForeColor="Red" ControlToValidate="lstBxSurv">*</asp:RequiredFieldValidator>
            <asp:SqlDataSource ID="dat_lBox" runat="server" ConnectionString="<%$ ConnectionStrings:IMConnectionString %>" SelectCommand="SELECT 'Survey result for incident: ' +cast( incident_id as varchar(50)) +', '+report_date +', '+status +', '+description AS in_id, incident_id,cx_id, report_date, status, description, contact_method, survey_status, respond_time, tech_efficiency, problem_resolution, additional_comment, survey_contact_method, shouldContact FROM Incident where cx_id=@cx_id and survey_status='True'">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtCID" Name="cx_id" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
            <strong>
        <asp:Button ID="btnRtv" runat="server"   Text="Retrieve Survey Details" class="btn btn-success" OnClick="btnRtv_Click1" />
            
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" />
        </strong> <br />
        <table class="auto-style2">
            <tr>
                <td colspan="4" class="auto-style20"><strong>Customer Rating</strong></td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>&nbsp;&nbsp;&nbsp; Response Time:</strong></td>
                <td>
        
                    <asp:Label ID="lblRT" runat="server"></asp:Label>
        
                </td>
                <td class="auto-style19"><strong>Contact to discuss Incident:</strong></td>
                <td>
                    <asp:Label ID="lblCDI" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>&nbsp;&nbsp;&nbsp; Technician Efficiency:</strong></td>
                <td>
                    <asp:Label ID="lblTE" runat="server"></asp:Label>
                </td>
                <td class="auto-style19"><strong>Preferred Contact Method:</strong></td>
                <td>
                    <asp:Label ID="lblPCM" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>&nbsp;&nbsp;&nbsp; Problem Resolution:</strong></td>
                <td>
                    <asp:Label ID="lblPR" runat="server"></asp:Label>
                </td>
                
            </tr>
            
        </table>
            <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style15" style="vertical-align: top">&nbsp;<strong><span class="auto-style18"> Additional Comments:</span></strong></td>
                <td>
                    <asp:TextBox ID="txtAddc" runat="server" TextMode="MultiLine" Height="177px" Width="575px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
        </table>
        </div>
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


