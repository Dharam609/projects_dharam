<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TechContact.aspx.cs" Inherits="comp2139Assignment1_CustomerPages.CxContact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tech Contact List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <style type="text/css">
        .newStyle1 {
            font-size: x-large;
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
        .auto-style1 {
            width: 577px;
        }
        </style>
</head>
<body style="background-color:honeydew"> 
    <div id="wrapper">
     <div style="margin-left:60px;margin-right:60px;margin-top:-40px">
    <form id="form1" runat="server">          
            <table class="table" >
                <tr>
                    <td>
                        <asp:Button ID="btnHome" runat="server" CausesValidation="False" class="btn btn-primary" Height="42px" OnClick="btnHome_Click" Text="Home" Width="74px" />
                    </td>
                    <td><h4 class="text-center"><strong>TechKnow Pro - Incident Report Management Software</strong></h4> </td>
                    <td class="text-right">
                        <strong>
                        <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" class="btn btn-primary" Height="41px" Width="82px" />
                        </strong>
                    </td>
                </tr>
            </table>
       <hr /> 
     
       
            <br />
        
        <h5>
            <strong>Contact List - Manage your contact list&nbsp;</strong></h5>
            <br />
        
           
       
        <div style="margin-left:40px">

                   <h5>
            <strong>Contact List - Manage your contact list&nbsp;</strong></h5>
            <div style="margin-left:60px">
                <span class="auto-style5">
            <strong>Contact List:</strong></span>
            <table class="w-100">    <tr>
                    <td rowspan="2" class="auto-style1">
                    <asp:ListBox ID="lstBx" runat="server" Height="200px" SelectionMode="Multiple" Width="620px" DataSourceID="data_contact" DataTextField="Infor" DataValueField="id" CssClass="auto-style3"></asp:ListBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="lstBx" ErrorMessage="Please choose one" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;&nbsp;<br />
&nbsp;<asp:Button ID="btnRmvCtct" runat="server" Text="Remove Contact" Width="140px" OnClick="btnRmvCtct_Click" class="btn btn-danger"  />
                        &nbsp;
                        <br />
                        <br />
&nbsp;<asp:Button ID="btnEmpLst" runat="server" Text="Empty List" Width="98px" OnClick="btnEmpLst_Click" CausesValidation="false" class="btn btn-danger"/>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                           <tr>
                <td class="auto-style1" >
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IMConnectionString %>" 
                        SelectCommand="SELECT first_name +', '+last_name+' ;'+telephone+' ;' +email as 'Infor',id FROM contact_list"></asp:SqlDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblNotify" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" Width="348px" />                    

                    <asp:Button ID="Button2" runat="server" Text="Select Additional Customers" Width="226px" OnClick="btnAddCx_Click" CausesValidation="false" class =" btn btn-success"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button3" runat="server"  Text="View Incident" CausesValidation="false" class =" btn btn-success" OnClick="Button3_Click" style="height: 31px" />
                 </td>             
            </tr>         
            </table>
        </div> 
                    </div>
       
    </form>
         </div>
     <div id="separator">
                    <asp:SqlDataSource ID="data_contact" runat="server" ConnectionString="<%$ ConnectionStrings:IMConnectionString %>"
                        SelectCommand="SELECT first_name +', '+last_name+' ;'+telephone+' ;' +email as 'Infor',id FROM contact_list"  >
                    </asp:SqlDataSource>
                    </div>
    </div>
    <div id="footer">
      <div id="footerContent">@2019-COMP2139-TechKnow Pro</div>
  </div>
</body>
</html>

