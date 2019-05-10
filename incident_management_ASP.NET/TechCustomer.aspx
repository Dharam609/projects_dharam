<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TechCustomer.aspx.cs" Inherits="comp2139Assignment1_CustomerPages.TechCustomer" %>

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
        .auto-style2 {
            width: 50%;
        }
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
        </style>
</head>
<body style="background-color:honeydew">
    <div id="wrapper">
    <div style="margin-left:60px;margin-right:60px;margin-top:-40px">
    <form id="form1" runat="server" class="form-group" > 
        
        <table class="table">
            <tr>
                <td style="vertical-align: middle">
                    <asp:Button ID="btnHome" runat="server" Text="Home" class="btn btn-primary" CausesValidation="False" OnClick="btnHome_Click"/>
                </td>
                <td style="vertical-align: middle">
                    <h4 class="text-center"><strong>TechKnow Pro - Incident Report Management Software </strong></h4>
                </td>
                <td class="text-right" style="vertical-align: middle">
                    <asp:Button ID="btnLogout" runat="server" Text="Logout" class="btn btn-danger" CausesValidation="False" OnClick="btnLogout_Click" />
                </td>
            </tr>
        </table>
        
         <hr />  
        <br />
        <h5>
            <strong>Customer - Search and view your customer contact information &nbsp;</strong></h5>
            <br />
          
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" />
        <div class="form-inline" style="margin-left:50px">
            <strong>Select a Customer:</strong>&nbsp;&nbsp;
            <asp:DropDownList ID="ddlCxID" runat="server"  Height="30px"  Width="25%" AutoPostBack="True" DataSourceID="dataCxID" DataTextField="Id" DataValueField="Id" AppendDataBoundItems="True">
                <asp:ListItem Value="0">Please select an ID</asp:ListItem>
            </asp:DropDownList>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="ddlCxID" Display="Dynamic" ErrorMessage="You must select an ID" ForeColor="Red" Operator="GreaterThan" Type="Integer" ValueToCompare="0">*</asp:CompareValidator>
            <asp:SqlDataSource ID="dataCxID" runat="server" ConnectionString="<%$ ConnectionStrings:IMConnectionString %>" SelectCommand="SELECT * FROM [users] WHERE ([role] = @role)" >
                <SelectParameters>
                    <asp:Parameter DefaultValue="customer" Name="role" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
         <br/>  
            <br />
            <br />
        
        </div> 
        
            <div class="form-inline" style="margin-left:50px">
                 <strong>Address:&nbsp;&nbsp;&nbsp;</strong>   
                <asp:TextBox ID="txtBoxAdd" runat="server" CssClass="auto-style2" Height="100px" Width="446px" TextMode="MultiLine" Enabled="False" BackColor="White" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBoxAdd" Display="Dynamic" ErrorMessage="Address can't be empty" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br/>
            <br/>
            <br/>
            </div>
            
            
       
        <div class="form-inline" style="margin-left:50px">
            <b>Phone:&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="txtPhone" runat="server" Enabled="False" BackColor="White" Width="280px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Phone can't be empty" ForeColor="Red">*</asp:RequiredFieldValidator>
            </b>
            <br/>
            <br/>
            <br/>
        </div>
        <div class="form-inline" style="margin-left:50px">
            <strong>Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </strong>
            <asp:TextBox ID="txtEmail" runat="server" Width="280px" Enabled="False" BackColor="White"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBoxAdd" Display="Dynamic" ErrorMessage="Email can't be empty" ForeColor="Red">*</asp:RequiredFieldValidator>
            
            <br/>
            <br/>
            <br/>
        </div>
        <div>
            <asp:Label ID="lblAddSuc" runat="server"></asp:Label>
        </div>
       <div class="form-inline" style="margin-left:50px">
            <asp:Button ID="btnAdd" runat="server" Height="30px" Text="Add to Contact List" Width="161px" OnClick="btnAdd_Click" class="btn btn-success"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDisp" runat="server" Height="30px" Text="Display Contact List" Width="158px" OnClick="btnDisp_Click" CausesValidation="False" class="btn btn-success" />
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
