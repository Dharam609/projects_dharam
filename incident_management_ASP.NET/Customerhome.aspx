<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customerhome.aspx.cs" Inherits="comp2139Assignment1_CustomerPages.homeaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style3 {
            text-align: center;
            height: 24px;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            text-align: center;
            width: 17px;
        }
        .auto-style6 {
            text-align: left;
            height: 24px;
        }
        .auto-style7 {
            text-align: left;
            height: 36px;
        }
        .newStyle1 {
            font-size: x-large;
        }
        .auto-style8 {
            text-align: center;
            width: 17px;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
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
        <form id="form1" runat="server" >
        
            <table class="table" >
                <tr>
                    <td><h4 class="text-center"><strong>TechKnow Pro - Incident Report Management Software</strong></h4> </td>
                        <td class="text-right">
                        <strong>
                        <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" class="btn btn-danger" />
                        </strong>
                    </td>
                </tr>
            </table>
   
       <hr /> 
            <h5><strong>Welcome to the TechKnow Pro Support Portal</strong></h5>
    <br />
        <div style="margin-left:59px">
    <h5><strong>Getting Started</strong></h5>  
    
        <p>Go to <a href="Profile.aspx"><strong>Profile</strong></a> to update and/or customer information.</p>
    <br />
    <h5><strong>What do you think about our Service</strong></h5>
        <p><a href="CxSurvey.aspx"><strong>Submit a survey</strong></a> to provide your feedback for any support we have provided to you recently</p>
    <br />
    </div>
        </form>
    <div style="margin-right:800px">
    <table class="table table-hover ">
        
        <tr>
            <td class="auto-style7" colspan="3"><strong><span class="auto-style4">Group Members</span></strong></td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>S.N.</strong></td>
            <td class="auto-style6"><strong>Name</strong></td>
            <td class="auto-style6"><strong>Student Nmber</strong></td>
        </tr>
        <tr>
            <td class="auto-style8">1.</td>
            <td class="auto-style9">Yu Shi</td>
            <td class="auto-style9">101053814</td>
        </tr>
        <tr>
            <td class="auto-style5">2.</td>
            <td>Kevin Teran</td>
            <td>101125119</td>
        </tr>
        <tr>
            <td class="auto-style8">3.</td>
            <td class="auto-style9">Dharam K C</td>
            <td class="auto-style9">101044421</td>
        </tr>
        <tr>
            <td class="auto-style5">4.</td>
            <td>Harmanpreet Kaur</td>
            <td>101140952</td>
        </tr>
    </table>
        </div>
          </div>
    <hr />
         
    <div id="separator"></div>
    </div>
    <div id="footer">
      <div id="footerContent">@2019-COMP2139-TechKnow Pro</div>
  </div>
</body>
</html>
