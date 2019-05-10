<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewIncident.aspx.cs" Inherits="comp2139Assignment1_CustomerPages.ViewIncident" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Incident</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style7 {
            margin-left: 3px;
        }
        .auto-style17 {
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
        .auto-style24 {
            font-weight: bold;
        }
        .auto-style25 {
            font-size: medium;
        }
        .auto-style26 {
            width: 318px;
        }
        .auto-style27 {
            text-decoration: underline;
            height: 45px;
        }
        .auto-style28 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body style="background-color:honeydew">  
    <div id="wrapper">
     <div style="margin-left:60px;margin-right:60px;margin-top:-40px">
    <form id="form1" runat="server">      
        <table class="table">
            <tr>
                <td><strong><asp:Button ID="Button3" runat="server" Text="Home" OnClick="Button3_Click" class="btn btn-primary" CausesValidation="false"/></strong></td>               
                <td><h4 class="text-center"><strong>TechKnow Pro - Incident Report Management Software</strong></h4> </td>
                <td class="text-right"><asp:Button ID="Button1" runat="server" Text="Logout"  OnClick="Button1_Click" class="btn btn-danger" CausesValidation="false"/></td>
            </tr>            
        </table>
        <hr />
        
        <h5 class="auto-style17"><strong>View Incident</strong></h5>
         <br />
        <div style="margin-left:60px">
        <table>
            <tr>
                <td>
                    <h6><b>S</b><span class="auto-style24">elect a customer:</span></h6>
                </td>
                <td>
                    <asp:DropDownList ID="dpLstIncId" runat="server" DataSourceID="incidList" DataTextField="full_name" DataValueField="cx_id" Height="25px" Width="210px" AppendDataBoundItems="True" AutoPostBack="True">
                        <asp:ListItem Value="0">---Please Select Incident---</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="You must select a customer to proceed" ForeColor="Red" ControlToValidate="dpLstIncId" Operator="GreaterThan" ValueToCompare="0">*</asp:CompareValidator>
                    <asp:SqlDataSource ID="incidList" runat="server" ConnectionString="<%$ ConnectionStrings:IMConnectionString %>" SelectCommand="SELECt distinct cx_id, full_name FROM Incident"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
            <br />
            <strong><span class="auto-style25">Incident List</span></strong>
        <table>        
        <tr>
            <td>
                <asp:ListBox ID="lstBxInc" runat="server" DataSourceID="listBx" DataTextField="listName" DataValueField="incident_id" Width="705px" Height="124px">
                    <asp:ListItem Value="0">---Select a submitted Incident</asp:ListItem>
                </asp:ListBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="lstBxInc" Display="Dynamic" ErrorMessage="You must select an incident to proceed" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:SqlDataSource ID="listBx" runat="server" ConnectionString="<%$ ConnectionStrings:IMConnectionString %>" SelectCommand="SELECT incident_id,full_name, cx_id, report_date, status, description, contact_method,  cast(incident_id as varchar(50)) +'     '+full_name AS 'listName' FROM Incident where cx_id=@cx_id ">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="dpLstIncId" Name="cx_id" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
        <asp:Button ID="btnRtv" runat="server" Text="Retrieve" OnClick="btnRtv_Click" class="btn btn-success"/>&nbsp;&nbsp;<strong><asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" CssClass="auto-style28" Height="53px" Width="429px" /></strong>
        <div>
            &nbsp;&nbsp;
            <br />   
                
            <table>
                <tr>
                    <td class="auto-style27" colspan="2"><strong>Details</strong></td>
                    <td class="auto-style27"><strong>Description</strong></td>
                </tr>
                <tr>
                    <td>
                        <h6><b>C</b><span class="auto-style24">ustomer ID:</span></h6>
                    </td>
                    <td class="auto-style26">
                    <asp:Label ID="lblCxID" runat="server"></asp:Label>
                    </td>
                    <td rowspan="4">
                    <asp:TextBox ID="tBoxDesc" runat="server" BorderStyle="Solid" BorderWidth="4px" CssClass="auto-style7" Height="219px" Width="568px" TextMode="MultiLine" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h6><strong>R</strong><span class="auto-style24">eport Date and Time:</span></h6>
                    </td>
                    <td class="auto-style26">
                    <asp:Label ID="LblDate" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h6><b>I</b><span class="auto-style24">ncident #:</span></h6>
                    </td>
                    <td class="auto-style26">
                    <asp:Label ID="LblInc" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h6><b>S</b><span class="auto-style24">tatus:</span></h6>
                    </td>
                    <td class="auto-style26">
                    <asp:Label ID="LblStatus" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>           
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