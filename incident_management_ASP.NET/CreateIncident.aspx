<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateIncident.aspx.cs" Inherits="comp2139Assignment1_CustomerPages.CreateIncident" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>Tech Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
            }
        .newStyle1 {
            font-size: x-large;
        }
        .auto-style10 {
            width: 305px;
            height: 46px;
        }
        .auto-style12 {
            font-size: small;
        }
        .auto-style13 {
            height: 91px;
        }
        .auto-style14 {
            font-size: small;
            height: 91px;
            width: 184px;
        }
        .auto-style15 {
            width: 305px;
            height: 91px;
        }
        .auto-style16 {
            font-size: small;
            height: 62px;
        }
        .auto-style19 {
            height: 46px;
        }
        .auto-style20 {
            font-size: small;
            height: 46px;
            width: 184px;
        }
        .auto-style21 {
            margin-top: 0px;
        }
        .auto-style22 {
            height: 62px;
        }
        .auto-style23 {
            font-size: small;
            height: 62px;
            width: 184px;
        }
        .auto-style24 {
            width: 305px;
            height: 62px;
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
         <form id="form2" runat="server" class="form-group" >
             
          <table class="table" >
                <tr>                    
                    <td class="text-left"><asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Home" CausesValidation="False" class="btn btn-primary"  />           
                    </td>
                    <td><h4 class="text-center"><strong>TechKnow Pro - Incident Report Management Software</strong></h4> </td>
                    <td class="text-right"><asp:Button ID="btnLogout" runat="server" Text="Logout"  OnClick="Button2_Click" CausesValidation="False" class="btn btn-danger"/></td>
                </tr>
            </table>
             <hr />                      
        
        <h5 class="auto-style1"><strong>Incident Report Page</strong></h5>
<div style="margin-left:40px">
        <table style="margin-left:40px" class="auto-style21">
            <tr>
                <td class="auto-style13"><strong><span class="auto-style12">Select a customer:</span></strong>&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style13">
                   
                    <asp:DropDownList ID="dropdlCx" runat="server" DataSourceID="cxInfo" DataTextField="name" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="cxIndChg">
                        <asp:ListItem Value="0">---Select a user---</asp:ListItem>
                    </asp:DropDownList>
                   <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="You must select a customer" ControlToValidate="dropdlCx" Display="Dynamic" ForeColor="Red" Operator="GreaterThan" ValueToCompare="0">*</asp:CompareValidator>
                    <asp:SqlDataSource ID="cxInfo" runat="server" ConnectionString="<%$ ConnectionStrings:IMConnectionString %>" SelectCommand="SELECT full_name as 'name',id FROM [users]"></asp:SqlDataSource>
                    
                   
                </td>
                <td class="auto-style14"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Report Date and Time:</strong></td>
                <td class="auto-style15">
                    <asp:Label ID="lblRptDate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style16"><strong>Customer ID:</strong></td>
                <td class="auto-style22">
                    <asp:Label ID="lblCxId" runat="server"></asp:Label>
                </td>
                <td class="auto-style23"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Incident#:</strong></td>
                <td class="auto-style24">
                    <asp:DropDownList ID="dropIncident" runat="server" DataSourceID="SqlDataSource1" DataTextField="incident_id" DataValueField="incident_id" AutoPostBack="True" OnSelectedIndexChanged="IndexChanged" >
                        <asp:ListItem Value="0">check</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IMConnectionString %>" 
                                SelectCommand="SELECT * FROM [Incident] WHERE ([cx_id] = @cx_id) and not [status]='new'" 
                                InsertCommand="INSERT INTO Incident(cx_first_name, cx_last_name, cx_id, report_date, status, description, contact_method)
                                                VALUES (@fist_name,@last_name,@cx_id,@report_date,@status,@description,@contact_method)">
                        
                        <InsertParameters>
                            <asp:Parameter Name="fist_name" />
                            <asp:Parameter Name="last_name" />
                            <asp:Parameter Name="cx_id" />
                            <asp:Parameter Name="report_date" />
                            <asp:Parameter Name="status" />
                            <asp:Parameter Name="description" />
                            <asp:Parameter Name="contact_method" />
                        </InsertParameters>
                        
                        <SelectParameters>
                            <asp:ControlParameter ControlID="dropdlCx" Name="cx_id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style19">
                    </td>
                <td class="auto-style20"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Status:</strong></td>
                <td class="auto-style10">
                    <asp:DropDownList ID="dropStatus" runat="server" >
                        <asp:ListItem Value="0">--Please Select status--</asp:ListItem>
                        <asp:ListItem Value="new">New</asp:ListItem>
                        <asp:ListItem Value="in progress">In Progress</asp:ListItem>
                        <asp:ListItem Value="closed">Closed</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="dropStatus" Display="Dynamic" ErrorMessage="You must select a status" ForeColor="Red" Operator="GreaterThan" ValueToCompare="0">*</asp:CompareValidator>
                </td>
            </tr>
        </table>
            
        <h4 class="auto-style12"><strong>&nbsp;Description of Problem:</strong></h4>
        <h4><asp:TextBox ID="txtDesc" runat="server" Height="126px"  Width="439px" TextMode="MultiLine"></asp:TextBox>
        </h4>
        <table class="auto-style1">
            <tr>
                <td style="vertical-align: middle" class="auto-style12" ><strong>Method of Contact:</strong></td>
                <td class="text-center">
                    <strong>
                    <asp:RadioButtonList ID="radioContact" runat="server" Height="41px" RepeatDirection="Horizontal" Width="717px" CssClass="auto-style12">
                        <asp:ListItem Value="1">Email</asp:ListItem>
                        <asp:ListItem Value="2">Telephone</asp:ListItem>
                        <asp:ListItem Value="3">In-Person</asp:ListItem>
                    </asp:RadioButtonList>
                    </strong></td>
                <td>
                    </td>
                <td>
                    </td>
            </tr>
        </table>
            </div>
        <asp:Label ID="lblNotify" runat="server"></asp:Label>
        <br />
        <asp:SqlDataSource ID="dataUpdate" runat="server" ConnectionString="<%$ ConnectionStrings:IMConnectionString %>" 
            SelectCommand="SELECT Incident.* FROM Incident" 
            UpdateCommand="UPDATE Incident SET description = @description, contact_method = @contact_method, status = @status, survey_status = 'False' WHERE (incident_id = @incident_id)">
            <UpdateParameters>
               
                <asp:ControlParameter Name="description" ControlID="txtDesc" PropertyName="Text"/>
                <asp:ControlParameter Name="contact_method" ControlID="radioContact" PropertyName="SelectedValue" />
                <asp:ControlParameter Name="status" ControlId="dropStatus" PropertyName="SelectedValue" />
                <asp:ControlParameter Name="incident_id" ControlId="dropIncident" PropertyName="SelectedValue" />
                
            </UpdateParameters>
        </asp:SqlDataSource>
             <strong>
        <asp:SqlDataSource ID="dataClosed" runat="server" ConnectionString="<%$ ConnectionStrings:IMConnectionString %>" 
            SelectCommand="SELECT Incident.* FROM Incident" 
            UpdateCommand="UPDATE Incident SET description = @description, contact_method = @contact_method, status = @status, survey_status = 'True' WHERE (incident_id = @incident_id)">
            <UpdateParameters>
               
                <asp:ControlParameter Name="description" ControlID="txtDesc" PropertyName="Text"/>
                <asp:ControlParameter Name="contact_method" ControlID="radioContact" PropertyName="SelectedValue" />
                <asp:ControlParameter Name="status" ControlId="dropStatus" PropertyName="SelectedValue" />
                <asp:ControlParameter Name="incident_id" ControlId="dropIncident" PropertyName="SelectedValue" />
                
            </UpdateParameters>
        </asp:SqlDataSource>
       <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" />
             </strong>&nbsp;&nbsp;&nbsp; <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="Button1_Click" class="btn btn-success"/>
        <br />       
            
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

