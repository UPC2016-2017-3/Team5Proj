<%@ Page Language="C#" AutoEventWireup="true" CodeFile="详细评分.aspx.cs" Inherits="教师排名" %>

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
        #Select1 {
            z-index: 1;
            left: 669px;
            top: 252px;
            position: absolute;
            width: 112px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="overflow-y:scroll;height:20px" >
        <asp:GridView ID="GridView1" runat="server" style="z-index: 1; left: 90px; top: 117px; position: absolute; height: 270px; width: 250px; right: 643px;" AllowPaging="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="16" OnPageIndexChanging="GridView1_PageIndexChanging1" TabIndex="1">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" Height="20px" />
            <PagerSettings NextPageText="下一页" PageButtonCount="16" PreviousPageText="上一页" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" Height="20px" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" Width="20px" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
            </div>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 332px; top: 43px; position: absolute; height: 32px; width: 122px; font-size: x-large; font-weight: 700;" Text="详细评分"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 171px; top: 90px; position: absolute; height: 27px; width: 93px; right: 604px; text-align: center; font-weight: 700" Text="学生评分"></asp:Label>
    <img src="image\tk.jpg" height="100%" width="100%"><asp:Label ID="Label3" runat="server" style="z-index: 1; left: 482px; top: 84px; position: absolute; right: 293px; height: 20px; font-weight: 700; text-align: center" Text="教师评分"></asp:Label>
        <asp:GridView ID="GridView2" runat="server" AllowCustomPaging="True" AllowPaging="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="16" style="z-index: 1; left: 470px; top: 118px; position: absolute; height: 271px; width: 224px">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" Height="20px" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
&nbsp;
    <div>
    
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="返回评分" CssClass="auto-style5" />
    </form>
    </body>
</html>
