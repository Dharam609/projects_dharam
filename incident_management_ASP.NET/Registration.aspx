<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="comp2139Assignment1_CustomerPages.Registration" %>

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
        

        .auto-style6 {
            margin-left: 0px;
        }
        .auto-style7 {
            margin-left: 0px;
        }
        .auto-style8 {
            margin-left: 0px;
        }       

        .auto-style13 {
            width: 331px;
        }
        .auto-style17 {
            width: 331px;
            height: 45px;
        }
        .auto-style18 {
            height: 45px;
        }
        .auto-style19 {
            text-decoration: underline;
        }
       /* Popup container - can be anything you want */
.popup {
  position: relative;
  display: inline-block;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* The actual popup */
.popup .popuptext {
  visibility: hidden;
  width: 160px;
  background-color: #555;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 8px 0;
  position: absolute;
  z-index: 1;
  bottom: 125%;
  left: 50%;
  margin-left: -80px;
}

/* Popup arrow */
.popup .popuptext::after {
  content: "";
  position: absolute;
  top: 100%;
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: #555 transparent transparent transparent;
}

/* Toggle this class - hide and show the popup */
.popup .show {
  visibility: visible;
  -webkit-animation: fadeIn 1s;
  animation: fadeIn 1s;
}

/* Add animation (fade in the popup) */
@-webkit-keyframes fadeIn {
  from {opacity: 0;} 
  to {opacity: 1;}
}

@keyframes fadeIn {
  from {opacity: 0;}
  to {opacity:1 ;}
}

        .auto-style21 {
            margin-left: 3px;
        }
        .auto-style23 {
            height: 38px;
        }
        .auto-style24 {
            height: 38px;
            width: 331px;
        }
        .auto-style25 {
            height: 44px;
        }
        .auto-style26 {
            width: 331px;
            height: 44px;
        }
        .auto-style27 {
            height: 41px;
        }
        .auto-style28 {
            height: 41px;
            width: 331px;
        }
        .auto-style29 {
            height: 39px;
        }
        .auto-style30 {
            height: 39px;
            width: 331px;
        }


        .auto-style31 {
            height: 45px;
            width: 163px;
        }
        .auto-style32 {
            height: 38px;
            width: 163px;
        }
        .auto-style33 {
            height: 44px;
            width: 163px;
        }
        .auto-style34 {
            height: 41px;
            width: 163px;
        }
        .auto-style35 {
            height: 39px;
            width: 163px;
        }
        .auto-style36 {
            width: 163px;
        }       
        .auto-style13 {
            margin-left: 0px;
        }
        .auto-style14 {
            width: 260px;
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
                               
                </tr>
            </table>    
            <hr />
            <br />
    
       <h5 class="auto-style19"><strong> Registration Page </strong></h5>
       
        <asp:Label ID="lblSuccess" runat="server" ForeColor="Blue"></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Validation errors" />
            <div style="margin-left:25px">
            <table>
                </table>
            <table>
                <tr>
                    <td class="auto-style31" style="vertical-align: top; font-weight: bold;">First Name*:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td class="auto-style17"><asp:TextBox ID="txtFirstName" runat="server" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ErrorMessage="First name is required" ForeColor="Red" ControlToValidate="txtFirstName">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revFN" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First name must be alphabet characters only" ForeColor="Red" ValidationExpression="^[A-Za-z]+$">*</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style31" style="vertical-align: top; font-weight: bold;">Last Name*:&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td class="auto-style17"><asp:TextBox ID="txtLastName" runat="server" Width="300px"></asp:TextBox><asp:RegularExpressionValidator ID="revLN" runat="server" ErrorMessage="Last name must be alphabet characters only" ForeColor="Red" ValidationExpression="^[A-Za-z]+$" ControlToValidate="txtLastName">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ErrorMessage="Last name is required" ForeColor="Red" ControlToValidate="txtLastName">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style31" style="vertical-align: top; font-weight: bold;">Address*:
                &nbsp; </td>
                    <td class="auto-style17"> 
                <asp:TextBox ID="txtAddress" runat="server" Width="500px" CssClass="auto-style21"></asp:TextBox>
            &nbsp; <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Address is required" ControlToValidate="txtAddress" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style31" style="vertical-align: top; font-weight: bold;">City*:&nbsp; </td>
                    <td class="auto-style17"><asp:TextBox ID="txtCity" runat="server" Width="300px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCity" ErrorMessage="City is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18"></td>
                </tr>
                <tr>
                    <td class="auto-style32" style="vertical-align: top; font-weight: bold;">Postal Code*:</td>
                    <td class="auto-style24"> <asp:TextBox ID="txtPostalCode" runat="server" Width="300px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="rfvPostalCode" runat="server" ControlToValidate="txtPostalCode" ErrorMessage="Postal code is required" ForeColor="Red">*</asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="revPostalCode" runat="server" ControlToValidate="txtPostalCode" ErrorMessage="Postal must be in &quot;x1x2x2&quot; format" ForeColor="Red" ValidationExpression="^([A-Za-z]\d[A-Za-z][-]?\d[A-Za-z]\d)">*</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style23"></td>
                </tr>
                <tr>
                    <td style="vertical-align: top; font-weight: bold;" class="auto-style33">Phone*:</td>
                    <td class="auto-style26"> <asp:TextBox ID="txtPhone" runat="server" Width="300px"></asp:TextBox>
            &nbsp;<asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone must be in &quot;418 555-5555&quot; format" ForeColor="Red" ValidationExpression="^([\(]{1}[0-9]{3}[\)]{1}[ |\-]{0,1}|^[0-9]{3}[\-| ])?[0-9]{3}(\-| ){1}[0-9]{4}(([ ]{0,1})|([ ]{1}[0-9]{3,4}|))$">*</asp:RegularExpressionValidator>
            &nbsp;<asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style25"></td>
                </tr>
                <tr>
                    <td class="auto-style34" style="vertical-align: top; font-weight: bold;">Email*:</td>
                    <td class="auto-style28">
            <asp:TextBox ID="txtEmail" runat="server" Width="300px" CssClass="auto-style7"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is required" ControlToValidate="txtEmail" ForeColor="Red">*</asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email must be in &quot;123@tech.net&quot; format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style27"></td>
                </tr>
                <tr>
                    <td style="vertical-align: top; font-weight: bold;" class="auto-style35">Password*:</td>
                    <td class="auto-style30">
            <asp:TextBox ID="txtPass" runat="server" Width="300px" CssClass="auto-style6" TextMode="Password"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password is required" ControlToValidate="txtPass" ForeColor="Red">*</asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="revPassChars" runat="server" ControlToValidate="txtPass" ErrorMessage="Password must have 6-12 characters" ForeColor="Red" ValidationExpression="^\S{6,12}">*</asp:RegularExpressionValidator>
            &nbsp;<asp:RegularExpressionValidator ID="revPassUpper" runat="server" ControlToValidate="txtPass" ErrorMessage="Pasword must have at least 1 uppercase letter" ForeColor="Red" ValidationExpression="(?=.*[A-Z]).+">*</asp:RegularExpressionValidator>
            &nbsp;<asp:RegularExpressionValidator ID="revPassSpecial" runat="server" ControlToValidate="txtPass" ErrorMessage="Password must have at least 1 special character (!@#$%^&amp;*(),.?&quot;:{}|&lt;&gt;)" ForeColor="Red" ValidationExpression="(?=.*[!@#$%^&amp;*(),.?&quot;:{}|&lt;&gt;]).+">*</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style29"></td>
                </tr>
                <tr>
                    <td style="vertical-align: top; font-weight: bold;" class="auto-style32">Confirm Password*:</td>
                    <td class="auto-style24">
            <asp:TextBox ID="txtConPass" runat="server" Width="300px" CssClass="auto-style8" TextMode="Password"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="rfvConPass" runat="server" ErrorMessage="Confirm Password is required" ControlToValidate="txtConPass" ForeColor="Red">*</asp:RequiredFieldValidator>
            &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password and Confirm password must match" ControlToCompare="txtPass" ControlToValidate="txtConPass" ForeColor="Red">*</asp:CompareValidator>
                    </td>
                    <td class="auto-style23"></td>
                </tr>
                <tr>
                    <td style="vertical-align: top; font-weight: bold;" class="auto-style32"></td>
                    <td class="auto-style24">
            <strong>
            <asp:CheckBox ID="cbTerms" runat="server" Text="" CausesValidation="True" />  &nbsp;<div class="popup" onclick="myFunction()">I agree to the terms of service.<span class="popuptext" id="myPopup">Np matter what you see, you must check the box to proceed, thanks!</span>
</div>

<script>
// When the user clicks on div, open the popup
function myFunction() {
  var popup = document.getElementById("myPopup");
  popup.classList.toggle("show");
}
</script>

            &nbsp;<asp:CustomValidator ID="cvCheckBox" runat="server" ErrorMessage="You must agree to the terms of service to continue" ForeColor="Red" OnServerValidate="cvCheckBox_ServerValidate">*</asp:CustomValidator>
            </strong>
                    </td>
                    <td class="auto-style23"></td>
                </tr>
                <tr>
                    <td style="vertical-align: top; font-weight: bold;" class="auto-style36">
                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" class="btn btn-success"/>
                    </td>
                    <td class="auto-style13">
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="False" OnClick="btnCancel_Click" class="btn btn-success" />
                    
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>           
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IMConnectionString %>"
            SelectCommand="SELECT * FROM [users]"
            InsertCommand="INSERT INTO [users] ([first_name], [last_name], [telephone], [email]) VALUES ( @first_name, @last_name, @telephone, @email)" >
            <InsertParameters>
                <asp:ControlParameter Name="first_name" ControlID="txtFirstName" PropertyName="Text"/>
                <asp:ControlParameter Name="last_name" ControlID="txtLastName" PropertyName="Text" />
                <asp:ControlParameter Name="telephone" ControlID="txtPhone" PropertyName="Text"/>
                <asp:ControlParameter Name="email" ControlID="txtEmail" PropertyName="Text" />
            </InsertParameters>
            
        </asp:SqlDataSource>
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
