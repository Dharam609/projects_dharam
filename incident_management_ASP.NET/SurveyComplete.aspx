<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SurveyComplete.aspx.cs" Inherits="comp2139Assignment1_CustomerPages.SurveyComplete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Survey Complete</title>
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
            width: 237px;
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
        .auto-style5 {
            text-decoration: underline;
        }
        .auto-style6 {
            font-size: medium;
        }
    </style>
</head>
<body style="background-color:honeydew">
    <div id="wrapper">
    <div style="margin-left:60px;margin-right:60px;margin-top:-40px">
    <form id="form1" runat="server" class="form-group" > 
        
        <table class="table">
            <tr>
                <td style="vertical-align: middle">
                    <asp:Button ID="btnHome" runat="server" Text="Home" class="btn btn-primary" OnClick="btnHome_Click"/>
                </td>
                <td style="vertical-align: middle">
                    <h4 class="text-center"><strong>TechKnow Pro - Incident Report Management Software </strong></h4>
                </td>
                <td class="text-right" style="vertical-align: middle">
                    <asp:Button ID="btnLogout" runat="server" Text="Logout" class="btn btn-danger" OnClick="btnLogout_Click" />
                </td>
            </tr>
        </table>
        
         <hr />  
        <br />
       
        <div style="margin-left:70px">
            <h4 class="auto-style5"><strong style="color: #0000FF">Survey Complete</strong></h4>
          
            
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style6">Thank you for your feedback!</span><br class="auto-style6" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style6">A customer service representative will contact you within 24hrs.</span></strong><br />
            <br />

            </div>
             <table class="auto-style1">
                        <tr>
                             <td class="auto-style4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnReturnToSurvey" runat="server" Text="Return to Survey" class="btn btn-success" />
                            </td>
                            <td>
                                &nbsp;</td>
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
