<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="comp2139Assignment1_CustomerPages.ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forget Password</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 196px;
            height: 25px;
            font-size: medium;
        }
        .auto-style5 {
            width: 499px;
            height: 25px;
        }
        .auto-style8 {
            width: 196px;
            height: 43px;
            font-size: medium;
        }
        .auto-style9 {
            width: 499px;
            height: 43px;
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
        .auto-style11 {
            font-size: large;
            text-decoration: underline;
            color: #0000CC;
        }
        .newStyle1 {
            color: #FF0000;
        }
        .auto-style12 {
            font-size: small;
        }
        .auto-style13 {
            height: 43px;
        }
        .auto-style14 {
            width: 196px;
            height: 46px;
            font-size: medium;
        }
        .auto-style15 {
            width: 499px;
            height: 46px;
        }
        .auto-style16 {
            height: 46px;
        }
        .auto-style17 {
            width: 196px;
            height: 41px;
            font-size: medium;
        }
        .auto-style18 {
            width: 499px;
            height: 41px;
        }
        .auto-style19 {
            height: 41px;
        }
        .auto-style20 {
            width: 196px;
            height: 44px;
            font-size: medium;
        }
        .auto-style21 {
            width: 499px;
            height: 44px;
        }
        .auto-style22 {
            height: 44px;
        }
        .auto-style23 {
            width: 196px;
            height: 45px;
            font-size: medium;
        }
        .auto-style24 {
            width: 499px;
            height: 45px;
        }
        .auto-style25 {
            height: 45px;
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
        .auto-style26 {
            color: #0000CC;
        }
    </style>
</head>
<body style="background-color:honeydew">
<div id="wrapper">
    <div style="margin-left:60px;margin-right:60px;margin-top:-40px">
     <form id="form1" runat="server">
         <table class="table">
            <tr>
                <td style="vertical-align: middle">
                    <asp:Button ID="btnHome" runat="server" Text="Home" class="btn btn-primary" OnClick="btnHome_Click" CausesValidation="False"/>
                </td>
                <td style="vertical-align: middle">
                    <h4 class="text-center"><strong>TechKnow Pro - Incident Report Management Software </strong></h4>
                </td>
                <td class="text-right" style="vertical-align: middle">
                    &nbsp;</td>
            </tr>
        </table>
        
         <hr />  
    <h6 style="color: #FF0000"> <strong>Forget Password? Don&#39;t worry! Follow the instructons to reset:</strong></h6>
    
        <strong><span class="auto-style11">Instructions:</span></strong><br />
        <span class="auto-style12"><strong>&nbsp;&nbsp;&nbsp; - <span class="auto-style26">Enter your username</span></strong></span><span class="auto-style26"><strong><br class="auto-style12" />
        </strong><span class="auto-style12"><strong>&nbsp;&nbsp;&nbsp;
       - Answer the secret question.</strong></span><strong><br class="auto-style12" />
        </strong><span class="auto-style12"><strong>&nbsp;&nbsp;&nbsp;
       - Enter your new password</strong></span><br />
         </span><span class="auto-style12"><strong><span class="auto-style26">&nbsp;&nbsp;&nbsp;
       - Confirm and submit.
    </span>
         <br />
         </strong></span>
   
     <div style="margin-left:60px;">

            <table class="auto-style1">
                <tr>
                    <td class="auto-style8"><strong>Enter user name*:</strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtUserName" runat="server" Width="250px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnSubUser" runat="server" CausesValidation="False" OnClick="btnSubUser_Click" Text="Confirm Username" class="btn btn-success" />
                    </td>
                    <td class="auto-style13">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"><strong>Secret Question:</strong></td>
                    <td class="auto-style15">
                            <asp:DropDownList ID="ddlSecretQuestion" runat="server" Enabled="False">
                                <asp:ListItem Value="fatherBorn">What town was your father born in</asp:ListItem>
                                <asp:ListItem Value="motherBorn">What town was your mother born in?</asp:ListItem>
                                <asp:ListItem Value="cousinName">What is your oldest cousin&#39;s name?</asp:ListItem>
                                <asp:ListItem Value="nieceName">What is the first name of your oldest niece?</asp:ListItem>
                            </asp:DropDownList>
                    </td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style17"><strong>Secret Answer*:</strong></td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtSecretAnswer" runat="server" Enabled="False" Width="250px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnSubAns" runat="server" CausesValidation="False"  OnClick="btnSubAns_Click" Text="Confirm Answer" class="btn btn-success" />
                    </td>
                    <td class="auto-style19">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20"><strong>New password:</strong></td>
                    <td class="auto-style21">
                        <asp:TextBox ID="txtNewPass" runat="server" Enabled="False" TextMode="Password" Width="250px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPass" runat="server" ControlToValidate="txtNewPass" ErrorMessage="Password is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revPassChars" runat="server" ControlToValidate="txtNewPass" ErrorMessage="Password must have 6-12 characters" ForeColor="Red" ValidationExpression="^\S{6,12}">*</asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="revPassUpper" runat="server" ControlToValidate="txtNewPass" ErrorMessage="Pasword must have at least 1 uppercase letter" ForeColor="Red" ValidationExpression="(?=.*[A-Z]).+">*</asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="revPassSpecial" runat="server" ControlToValidate="txtNewPass" ErrorMessage="Password must have at least 1 special character (!@#$%^&amp;*(),.?&quot;:{}|&lt;&gt;)" ForeColor="Red" ValidationExpression="(?=.*[!@#$%^&amp;*(),.?&quot;:{}|&lt;&gt;]).+">*</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style22"></td>
                </tr>
                <tr>
                    <td class="auto-style23"><strong>Confirm password:</strong></td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtConPass" runat="server" Enabled="False" TextMode="Password" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvConPass" runat="server" ErrorMessage="Confirm Password is required" ControlToValidate="txtConPass" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password and Confirm password must match" ControlToCompare="txtNewPass" ControlToValidate="txtConPass" ForeColor="Red">*</asp:CompareValidator>
                    &nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style25">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <strong></strong></td>
                    <td class="auto-style5">
                        <asp:Button ID="btnLogin" runat="server" Text="Cancel" CausesValidation="False" OnClick="btnLogin_Click" class="btn btn-success" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnSubPass" runat="server" OnClick="btnSubPass_Click" Text="Confirm and Submit" class="btn btn-success"/>
                    </td>
                    <td></td>
                </tr>
            </table>

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IMConnectionString %>" SelectCommand="SELECT * FROM [contact_list]"></asp:SqlDataSource>
        <asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
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
