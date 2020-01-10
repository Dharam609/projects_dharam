<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SuccessfulRegistration.aspx.cs" Inherits="comp2139Assignment1_CustomerPages.SuccessfulRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <style type="text/css">
        .newStyle1 {
        }
        .auto-style3 {
            color: #00CC66;
            font-size: medium;
            border-style: solid;
            border-width: 1px;
            padding-left: 2px;
            padding-right: 9px;
            padding-top: 2px;
            padding-bottom: 37px;
        }
        .auto-style4 {
            width: 608px;
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
        }
        .auto-style5 {
            color: #00CC00;
        }html, body {height: 100%;}
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
    <div style="margin-left:60px;margin-right:60px;margin-top:-40px" class="text-center">
    <form id="form1" runat="server" class="form-group" > 
        
        <table class="table">
            <tr>
                
                <td style="vertical-align: middle">
                    <h4 class="text-center"><strong>TechKnow Pro - Incident Report Management Software </strong></h4>
                </td>
                
            </tr>
        </table>
        
         <hr />  
        <div style="margin-left:25%;" class="auto-style4">

            <h5 class="auto-style5"><strong>Successfully Registered User!</strong></h5>
&nbsp; <strong>
            <asp:CheckBox ID="CheckBox1" runat="server" CssClass="auto-style3" Text="An email has been sent to   .Please check your email to verify and confirm." />
            </strong>
            <br />
            <br />
            <br />

        </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Return to Log In" class="btn btn-success" OnClick="Button1_Click"/>
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