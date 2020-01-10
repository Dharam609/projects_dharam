<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="comp2139Assignment1_CustomerPages.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LogIn</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

    <style type="text/css">
       
        .auto-style1 {
            width: 100%;
            position: absolute;
            height: 123px;
            top: 280px;
            left: 310px;
            z-index: 1;
        }
        .auto-style2 {
            text-align: center;
            width: 265px;
            height: 32px;
        }
        .auto-style4 {
            text-align: left;
          
            font-size: x-large;
            height: 32px;
        }
        .auto-style5 {
            font-size: medium;
            height: 43px;
        }
        .auto-style6 {
            text-decoration: underline;
            font-size: medium;
        }
        .auto-style8 {
            width: 265px;
        }
        .auto-style13 {
            width: 265px;
            height: 43px;
        }
        .auto-style14 {
            text-align: right;
            font-size: large;
            width: 265px;
            height: 60px;
        }
        .auto-style15 {
            height: 60px;
        }
        .auto-style16 {
            text-align: right;
            font-size: large;
            width: 265px;
            height: 43px;
        }
        .auto-style17 {
            height: 43px;
        }
        .auto-style18 {
            text-align: center;
            width: 265px;
            height: 11px;
        }
        .auto-style19 {
            text-align: left;
            font-size: medium;
            height: 11px;
        }
        .validation_summary_as_bulletlist ul
        {
            display: none

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
                    
                    <td><h4 class="text-center"><strong>TechKnow Pro - Incident Report Management Software</strong></h4> </td>
                    
                </tr>
            </table>
             <hr />                        
         
        <div >
            <img style="margin-left:625px;margin-top:15px" src="IMSlogo.png" alt="" width="150" height="150"/>
                        
            <table class="auto-style1" style= "margin-left:95px";>
           
                <tr>       
           
                    <td class="auto-style2"></td>
                    <td class="auto-style4"><strong>Please sign in</strong></td>
                </tr>
                <tr>
                    <td class="auto-style18"></td>
                    <td class="auto-style19">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText ="Invalid username or password!" ShowModelStateErrors="False" CssClass="validation_summary_as_bulletlist" ForeColor="#FF3300"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>Username:&nbsp;&nbsp;&nbsp; </strong></td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtUsername" runat="server"  ToolTip="Enter your email address."></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="User name format is wrong">*</asp:RegularExpressionValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="User name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14"><strong>Password:&nbsp;&nbsp;&nbsp; </strong></td>
                    <td class="auto-style15">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ToolTip="Enter your password."></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Password is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style5"><strong>
                        <asp:Button ID="btnLogin" runat="server" Text="Log In" OnClick="btnLogin_Click" class="btn btn-success"/>
                        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnRegister" runat="server" Text="Register" CausesValidation="False" OnClick="btnRegister_Click" class="btn btn-success" />
                        <asp:SqlDataSource ID="sqlCheckidentity" runat="server" ConnectionString="<%$ ConnectionStrings:IMConnectionString %>" SelectCommand="SELECT * FROM [users]">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txtUsername" Name="email" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtPassword" Name="password" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        </strong>
                        <asp:Label ID="lblWarning" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6"><strong><a href="ForgetPassword.aspx">Forgot your password?</a></strong></td>
                </tr>
            </table>
        </div>
    </form>
    </div>
        <div id="separator"></div>
    </div>
    <div id="footer">
      <div id="footerContent">@2019-COMP2139-TechKnow Pro</div>
  </div>
</body>
 
</html>
