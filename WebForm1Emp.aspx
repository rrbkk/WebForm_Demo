﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1Emp.aspx.cs" Inherits="Demo.WebForm1" %>
<%@OutputCache Duration="120" VaryByParam="None" %>
<!-- This is the design part for WebForm1Emp-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div><center>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Employee's Detail"></asp:Label>
&nbsp;&nbsp;<br />
        &nbsp;
        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="185px" Width="269px" CssClass="auto-style1">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Next" />
        <br />
        <br />
        Server Time:
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        Client Time:
        <!--JavaScript code to display the current date & time -->
        <script>
            document.write(Date());
        </script>
        </center>
    </div>
    </form>
</body>
</html>
