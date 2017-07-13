<%@ Page Language="C#" AutoEventWireup="true" CodeFile="教师排名.aspx.cs" Inherits="教师排名" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style5 {
            z-index: 1;
            left: 820px;
            top: 376px;
            position: absolute;
            height: 29px;
        }
        .auto-style7 {
            width: 298px;
            height: 165px;
            position: absolute;
            top: 241px;
            left: 493px;
            z-index: 1;
            right: 77px;
        }
        .auto-style8 {
            z-index: 1;
            left: 591px;
            top: 183px;
            position: absolute;
        }
        .auto-style9 {
            width: 199px;
            height: 257px;
            position: absolute;
            top: 243px;
            left: 179px;
            z-index: 1;
            margin-right: 0px;
        }
        .auto-style10 {
            position: absolute;
            top: 185px;
            left: 206px;
            z-index: 1;
            width: 145px;
            height: 36px;
            font-size: xx-large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style7" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"   EnableSortingAndPagingCallbacks="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style9" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Height="50px" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style10" Text="评分规则"></asp:Label>
    <img src="image\tk.jpg" height="100%" width="100%">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" style="font-size: xx-large" Text="小组排名" CssClass="auto-style8"></asp:Label>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="返回评分" CssClass="auto-style5" />
    </form>
    </body>
</html>
