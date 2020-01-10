<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminContact.aspx.cs" Inherits="comp2139Assignment1_CustomerPages.AdminContact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tech Customer</title>
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
        .auto-style3 {
            margin-right: 131px;
        }
        .auto-style4 {
            width: 241px;
        }
        .auto-style5 {
            text-decoration: underline;
        }
        </style>
</head>
<body style="background-color:honeydew">
<div id="wrapper">      
    <div style="margin-left:60px;margin-right:60px;margin-top:-40px">
    <form id="form2" runat="server">          
            <table class="table" >
                <tr>
                    <td style="vertical-align: middle">
                    <asp:Button ID="btnHome" runat="server" Text="Home" class="btn btn-primary" OnClick="btnHome_Click" CausesValidation="False"/>
                </td>
                <td style="vertical-align: middle">
                    <h4 class="text-center"><strong>TechKnow Pro - Incident Report Management Software </strong></h4>
                </td>
                    <td class="text-right">
                        <strong>
                             <asp:Button ID="Button3" runat="server"  CausesValidation="False" Text="Logout" class="btn btn-danger" OnClick="Button3_Click" />

                        </strong>
                    </td>
                </tr>
            </table>
       <hr />      
        
        <h5>
            <strong>Contact List - Manage your contact list&nbsp;</strong></h5>
            <div style="margin-left:60px">
                <span class="auto-style5">
            <strong>Contact List:</strong></span>
            <table class="w-100">
                <tr>
                    <td rowspan="2" class="auto-style4">
                    <asp:ListBox ID="lstBx" runat="server" Height="200px" SelectionMode="Multiple" Width="620px" DataSourceID="data_contact" DataTextField="Infor" DataValueField="id" CssClass="auto-style3"></asp:ListBox>
                    </td>
                    <td>&nbsp;&nbsp;
                    <asp:Button ID="btnRmvCtct" runat="server" Text="Remove Contact" Width="140px" OnClick="btnRmvCtct_Click" class="btn btn-danger"  />
                        &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="lstBx" ErrorMessage="Please choose one" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <br />
                        <br />
&nbsp;&nbsp;
                    <asp:Button ID="btnEmpLst" runat="server" Text="Empty List" Width="98px" OnClick="btnEmpLst_Click" CausesValidation="false" class="btn btn-danger"/>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;
                        &nbsp;</td>
                </tr>
            </table>
                 
           
       
        <table>            
            <tr>
                <td >
                    <asp:SqlDataSource ID="data_contact" runat="server" ConnectionString="<%$ ConnectionStrings:IMConnectionString %>" 
                        SelectCommand="SELECT first_name +', '+last_name+' ;'+telephone+' ;' +email as 'Infor',id FROM contact_list"></asp:SqlDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblNotify" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" />                    

                    <asp:Button ID="Button2" runat="server" Text="Select Additional Customers" Width="226px" OnClick="btnAddCx_Click" CausesValidation="false" class =" btn btn-success"/>
                    &nbsp; &nbsp;  &nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View Survey" CausesValidation="false" class =" btn btn-success" />
                 </td>             
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
