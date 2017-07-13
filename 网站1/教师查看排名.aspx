<%@ Page Language="C#" AutoEventWireup="true" CodeFile="教师查看排名.aspx.cs" Inherits="学生查看排名" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style6 {
            position: absolute;
            top: 154px;
            left: 450px;
            z-index: 1;
            font-size: xx-large;
            right: 258px;
            text-align: center;
        }
        .auto-style15 {
            position: absolute;
            top: 442px;
            left: 172px;
            z-index: 1;
            width: 104px;
            height: 27px;
            margin-top: 1px;
        }
        .auto-style16 {
            width: 333px;
            height: 115px;
            position: absolute;
            top: 224px;
            left: 485px;
            z-index: 1;
        }
        .auto-style17 {
            width: 199px;
            height: 115px;
            position: absolute;
            top: 224px;
            left: 110px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 156px;
            left: 182px;
            z-index: 1;
            width: 141px;
            height: 41px;
            font-size: xx-large;
            right: 660px;
        }
        </style>
</head>
<body>
    <div style="width:100%;margin:0px auto">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="auto-style16" CellPadding="4"  ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="参赛者编号" HeaderText="参赛者编号" ReadOnly="True" SortExpression="参赛者编号" />
                <asp:BoundField DataField="最终得分" HeaderText="最终得分" SortExpression="最终得分" />
                <asp:BoundField DataField="评价" HeaderText="评价" SortExpression="评价" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style17" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="规则" HeaderText="规则" SortExpression="规则" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" Height="60px" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <strong>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style18" Text="评分规则"></asp:Label>
        </strong>
    <img src="image\tk.jpg" height="100%" width="100%"><asp:Button ID="Button1" runat="server" CssClass="auto-style15" OnClick="Button1_Click" Text="返回评分" />
    &nbsp;<strong><asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text="排名情况"></asp:Label>
        </strong>
    </form>
        </div>
    </body>
</html>
