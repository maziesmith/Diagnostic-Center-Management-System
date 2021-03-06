﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="unpaidReportUI.aspx.cs" Inherits="DiagnosticCenter.Admin.unpaidReportUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Unpaid Bill Report</title>
     <style>
        .center-div { margin: 0 auto; width: 50% }
        .center-table { margin: 0 auto; width: 100%; }
        .center-table-halfwidth { margin: 50px auto 0; width: 50%; }
        .table-bg { background: #ccc; }
    </style>
</head>
<body>
<center>
 <h2 style="color: white; background-color: darkcyan" >Welcome to DiagnosticCenter || Admin Panel</h2> 
    <h3><a href="adminHome.aspx">Admin Home</a></h3>
<h3 style="color: white; background-color:darkgoldenrod">Unpaid Bill Report</h3>
    <form id="form1" runat="server">
    <div>
        <fieldset class="center-div">
            <legend>Unpaid Bill Report</legend>

            <table>
                <tr>
                    <td>
                        <asp:Label ID="fromDateLabel" runat="server" Text="From Date"></asp:Label></td>
                    <td><input type="date" id="fromDateTextBox" runat="server" placeholder="DD-MM-YYYY" readonly /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="toDateReportLabel" runat="server" Text="To Date"></asp:Label></td>
                    <td><input type="date" id="toDateTextBox" runat="server" placeholder="DD-MM-YYYY" readonly /></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="unpaidBillButton" runat="server" Text="Show" OnClick="testReportButton_Click" /></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="messageLabel" runat="server" Text=""></asp:Label></td>
                </tr>
            </table>
        </fieldset>
    </div>

        <div style="margin: 50px auto 0; width: 52%">

            <asp:GridView ID="unpaidBillReportGridView" runat="server" AutoGenerateColumns="false" CssClass="center-table" Visible="false" OnRowDataBound="unpaidBillReportGridView_RowDataBound" ShowFooter="true">

                <Columns>

                    <asp:TemplateField HeaderText="Sl.No"></asp:TemplateField>
                    <asp:BoundField DataField="BillNO" HeaderText="Bill No" />
                    <asp:BoundField DataField="MobileNo" HeaderText="Contact No" />
                    <asp:BoundField DataField="PatientName" HeaderText="Paitent Name" />
                    <asp:BoundField DataField="TotalAmount" HeaderText="Total Amount" />
                    <asp:BoundField DataField="PaidAmount" HeaderText="Paid Amount" />
                </Columns>
            </asp:GridView>
        </div>
        <br/>
        <asp:Button ID="logoutButton" runat="server" Text="Logout" OnClick="logoutButton_Click" />
    </form>
    <link href="../Scripts/jquery-ui.css" rel="stylesheet" />
<script src="../Scripts/jquery-3.1.1.min.js"></script>
<script src="../Scripts/jquery-ui.js"></script>
      <script type="text/javascript">
          $(document).ready(function() {
              $('#fromDateTextBox').datepicker({
                  showOn: 'button',
                  dateFormat: 'dd-mm-yy',
                  changeMonth: true,
                  changeYear: true
              });
              $('#toDateTextBox').datepicker({
                  showOn: 'button',
                  dateFormat: 'dd-mm-yy',
                  changeMonth: true,
                  changeYear: true
              });
          });
 </script>
    </center>
</body>
</html>
