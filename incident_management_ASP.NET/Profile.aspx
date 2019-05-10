<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="comp2139Assignment1_CustomerPages.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
     <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
         .auto-style5 {
             width: 178px;
         }
         .auto-style6 {
             width: 178px;
             text-align: right;
         }
         .auto-style7 {
             width: 178px;
             height: 30px;
             text-align: right;
         }
         .auto-style8 {
             height: 30px;
         }
         .auto-style9 {
             width: 178px;
             height: 29px;
             text-align: right;
         }
         .auto-style10 {
             height: 29px;
         }
         .auto-style12 {
             height: 28px;
         }         
         .auto-style13 {
             text-decoration: underline;
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
         <form id="form1" runat="server" class="form-group" >
        <table class="table">
            <tr>
                <td style="vertical-align: middle">
                    <asp:Button ID="btnHome" runat="server" Text="Home" class="btn btn-primary" OnClick="btnHome_Click" CausesValidation="False"/>
                </td>
                <td style="vertical-align: middle">
                    <h4 class="text-center"><strong>TechKnow Pro - Incident Report Management Software </strong></h4>
                </td>
                <td class="text-right" style="vertical-align: middle">
                   <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" class="btn btn-danger" CausesValidation="False" />
                </td>
            </tr>
        </table>
        
         <hr />  
   
        <asp:Label ID="lblUpdate" runat="server" ForeColor="Blue"></asp:Label>
            <asp:ValidationSummary ID="vsProfile" runat="server" ForeColor="Red" />
         
            
            <h4 class="auto-style13"><strong>Account Profile</strong></h4>
             <div style="margin-left:60px">
            <h5><strong>User Information</strong></h5>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">Profile Name:&nbsp;&nbsp; </td>
                    <td>
                        <asp:TextBox ID="txtPN" runat="server" Width="270px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">*Username:&nbsp;&nbsp; </td>
                    <td>
                        <asp:TextBox ID="txtUser" runat="server" Width="270px" Enabled="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUser" runat="server" ControlToValidate="txtUser" ErrorMessage="Username is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvUserEmail" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtUser" ErrorMessage="Username and email must be the same" ForeColor="Red">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">*Password:&nbsp;&nbsp; </td>
                    <td>
                        <asp:TextBox ID="txtPass" runat="server" Width="270px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPass" runat="server" ControlToValidate="txtPass" ErrorMessage="Password is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revPassChars" runat="server" ControlToValidate="txtPass" ErrorMessage="Password must have 6-12 characters" ForeColor="Red" ValidationExpression="^\S{6,12}">*</asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="revPassUpper" runat="server" ControlToValidate="txtPass" ErrorMessage="Pasword must have at least 1 uppercase letter" ForeColor="Red" ValidationExpression="(?=.*[A-Z]).+">*</asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="revPassSpecial" runat="server" ControlToValidate="txtPass" ErrorMessage="Password must have at least 1 special character (!@#$%^&amp;*(),.?&quot;:{}|&lt;&gt;)" ForeColor="Red" ValidationExpression="(?=.*[!@#$%^&amp;*(),.?&quot;:{}|&lt;&gt;]).+">*</asp:RegularExpressionValidator>
                    
                    
                    </td>
                    
                </tr>
                
            </table>
                    <br />
            <h5><strong>Contact Information</strong></h5>
                
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style9">*First Name:&nbsp;&nbsp; </td>
                        <td class="auto-style10">
                            <asp:TextBox ID="txtFirstName" runat="server" Width="270px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvFN" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revFN" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First name must be alphabet characters only" ForeColor="Red" ValidationExpression="^[A-Za-z]+$">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">*Last Name:&nbsp;&nbsp; </td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtLastName" runat="server" Width="270px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvLN" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revLN" runat="server" ErrorMessage="Last name must be alphabet characters only" ForeColor="Red" ValidationExpression="^[A-Za-z]+$" ControlToValidate="txtLastName">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">Position/Title:&nbsp;&nbsp; </td>
                        <td>
                            <asp:TextBox ID="txtPosition" runat="server" Width="270px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">*Secret Question:&nbsp;&nbsp; </td>
                        <td>
                            <asp:DropDownList ID="ddlSecretQuestion" runat="server">
                                <asp:ListItem Value="fatherBorn">What town was your father born in</asp:ListItem>
                                <asp:ListItem Value="motherBorn">What town was your mother born in?</asp:ListItem>
                                <asp:ListItem Value="cousinName">What is your oldest cousin&#39;s name?</asp:ListItem>
                                <asp:ListItem Value="nieceName">What is the first name of your oldest niece?</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvSQ" runat="server" ControlToValidate="ddlSecretQuestion" ErrorMessage="Secret question is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">*Secret Answer:&nbsp;&nbsp; </td>
                        <td>
                            <asp:TextBox ID="txtSecretAnswer" runat="server" Width="270px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvSA" runat="server" ControlToValidate="txtSecretAnswer" ErrorMessage="Secret Answer is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">*Email:&nbsp;&nbsp; </td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtEmail" runat="server" Width="270px" Enabled="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email must be in &quot;123@tech.net&quot; format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            *Address:&nbsp;&nbsp; </td>
                        <td>
                            <asp:TextBox ID="txtAddress" runat="server" Width="270px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            *City:&nbsp;&nbsp; </td>
                        <td>
                            <asp:TextBox ID="txtCity" runat="server" Width="270px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity" ErrorMessage="City is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            *Postal Code:&nbsp;&nbsp; </td>
                        <td>
                            <asp:TextBox ID="txtPostalCode" runat="server" Width="270px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPostalCode" runat="server" ControlToValidate="txtPostalCode" ErrorMessage="Postal Code required" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revPostalCode" runat="server" ControlToValidate="txtPostalCode" ErrorMessage="Postal must be in &quot;x1x2x2&quot; format" ForeColor="Red" ValidationExpression="^([A-Za-z]\d[A-Za-z][-]?\d[A-Za-z]\d)">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            *Phone Number:&nbsp;&nbsp; </td>
                        <td>
                            <asp:TextBox ID="txtPhone" runat="server" Width="270px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone must be in &quot;418 555-5555&quot; format" ForeColor="Red" ValidationExpression="^([\(]{1}[0-9]{3}[\)]{1}[ |\-]{0,1}|^[0-9]{3}[\-| ])?[0-9]{3}(\-| ){1}[0-9]{4}(([ ]{0,1})|([ ]{1}[0-9]{3,4}|))$">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr><td>    </td><td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        <br />
                        </td>   </tr>
                    <tr>
                        <td class="auto-style5">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td class="text-left">
                            <strong><asp:Button ID="btnUpdate" runat="server" Text="Update Profile" OnClick="btnUpdate_Click" class="btn btn-success" Width="126px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>
                            </strong>
                        </td>
                    </tr>
                </table>
                </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IMConnectionString %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
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