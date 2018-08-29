<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1SearchByGender.aspx.cs" Inherits="Demo.WebForm2" %>
<%@ OutputCache Duration="120" VaryByParam="DropDownList1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="align-items:center">
    <form id="form1" runat="server">
    <div>
    <center>
        <br />
        Select search category
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"
            OnSelectedIndexCshanged="DropDownList1_SelectedIndexChanged"
            OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Text="All" Value="All"></asp:ListItem>
            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="199px" Width="290px">
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
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
        <br />
        <br />
        Server Time
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        Client Time: <script>
                         document.write(Date());
                     </script> <br />
    </center>
    </div>
    </form>
</body>
</html>
