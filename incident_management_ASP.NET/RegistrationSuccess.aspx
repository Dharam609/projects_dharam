<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationSuccess.aspx.cs" Inherits="comp2139Assignment1_CustomerPages.RegistrationSuccess" %>

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
        .auto-style1 {
            font-weight: bold;
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
                        &nbsp;</td>
                </tr>
            </table>
       <hr />      
        
        <h5 class="auto-style1">
            Dear
            <asp:Label ID="lblName" runat="server"></asp:Label>
            ,</h5>
            <p class="auto-style1">
                Thank you for your registration at TechKnow Pro - Incident Report Management Software at
                <asp:Label ID="lblTime" runat="server"></asp:Label>
&nbsp;! </p>
            <p class="auto-style1">
                Please use your e-mail &quot;
                <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                &quot; as your login name. </p>
            <p class="auto-style1">
                For Password, if you need help, you can always click&nbsp;
                <asp:Button ID="btn_forget_pswd" runat="server" Font-Size="12px" Height="26px" Text="Forget Password" Width="126px" OnClick="btn_forget_pswd_Click" />
&nbsp;to reset your password.</p>
            <p class="auto-style1">
                You can proceed to login page by <a href="LogIn.aspx">&quot; Click here&quot; </a>Or the home button on the top left corner.</p>
            <p class="auto-style1">
                Thank you again for joining us!</p>
       
       
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
