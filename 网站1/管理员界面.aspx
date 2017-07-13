<%@ Page Language="C#" AutoEventWireup="true" CodeFile="管理员界面.aspx.cs" Inherits="管理员界面" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 41px;
            left: 261px;
            z-index: 1;
            width: 167px;
            height: 41px;
            font-size: xx-large;
        }
        .auto-style2 {
            position: absolute;
            top: 165px;
            left: 26px;
            z-index: 1;
            height: 21px;
            }
        .auto-style3 {
            position: absolute;
            top: 166px;
            left: 128px;
            z-index: 1;
            height: 21px;
            right: 662px;
        }
        .auto-style4 {
            position: absolute;
            top: 166px;
            left: 234px;
            z-index: 1;
            height: 20px;
        }
        .auto-style5 {
            position: absolute;
            top: 52px;
            left: 517px;
            z-index: 1;
            height: 18px;
            width: 95px;
        }
        .auto-style8 {
            width: 281px;
            height: 197px;
            position: absolute;
            top: 253px;
            left: 16px;
            z-index: 1;
        }
        .auto-style10 {
            width: 301px;
            height: 195px;
            position: absolute;
            top: 254px;
            left: 342px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 108px;
            left: 122px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 109px;
            left: 395px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 108px;
            left: 47px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 110px;
            left: 326px;
            z-index: 1;
            height: 22px;
        }
        .auto-style15 {
            position: absolute;
            top: 166px;
            left: 378px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 165px;
            left: 474px;
            z-index: 1;
            right: 316px;
        }
        .auto-style17 {
            position: absolute;
            top: 165px;
            left: 576px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 211px;
            left: 119px;
            z-index: 1;
            height: 21px;
        }
        .auto-style19 {
            position: absolute;
            top: 219px;
            left: 433px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 540px;
            left: 740px;
            z-index: 1;
            width: 101px;
            height: 40px;
        }
        .auto-style21 {
            position: absolute;
            top: 472px;
            left: 740px;
            z-index: 1;
            width: 104px;
            height: 39px;
        }
        .auto-style22 {
            position: absolute;
            top: 258px;
            left: 688px;
            z-index: 1;
            height: 128px;
            width: 193px;
        }
        .auto-style23 {
            position: absolute;
            top: 405px;
            left: 739px;
            z-index: 1;
            width: 104px;
            height: 39px;
        }
        .auto-style24 {
            position: absolute;
            top: 223px;
            left: 748px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <div style="width:100%;margin:0px auto">
    <form id="form1" runat="server">
        <asp:Button ID="Button1" runat="server" CssClass="auto-style2" Text="新增观众" onclick="Button1_Click"/>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
        <asp:Button ID="Button3" runat="server" CssClass="auto-style4" Text="修改观众" onclick="Button3_Click"/>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:打分ConnectionString %>" SelectCommand="SELECT * FROM [用户名密码]"></asp:SqlDataSource>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style11"></asp:TextBox>
        <asp:Button ID="Button6" runat="server" CssClass="auto-style17" Text="修改教师" onclick="Button6_Click"/>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style12"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style13" Text="用户名"></asp:Label>
        <asp:Button ID="Button5" runat="server" CssClass="auto-style16" Text="删除教师" onclick="Button5_Click"/>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style3" Text="删除观众" onclick="Button2_Click"/>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style18" Text="观众信息"></asp:Label>
    <img src="image\tk.jpg" height="100%" width="100%"><asp:GridView ID="GridView1" runat="server" CssClass="auto-style8" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="组号" HeaderText="组号" SortExpression="组号" />
                <asp:BoundField DataField="密码" HeaderText="密码" SortExpression="密码" />
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
        <asp:Label ID="Label7" runat="server" CssClass="auto-style24" Text="规则编辑区"></asp:Label>
        <textarea id="TextArea1" class="auto-style22" name="S1" runat="server"></textarea><asp:Label ID="Label4" runat="server" CssClass="auto-style14" Text="密码"></asp:Label>
        <asp:Button ID="Button9" runat="server" CssClass="auto-style23" Text="提交规则" onclick="Button9_Click"/>
        <asp:Button ID="Button8" runat="server" CssClass="auto-style21" Text="清空分数" onclick="Button8_Click" OnClientClick=" return confirm('确定清空所有数据么？')"/>
        <asp:Button ID="Button7" runat="server" CssClass="auto-style20" Text="重新开始评分" onclick="Button7_Click" OnClientClick=" return confirm('确定重新开始吗？')"/>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style19" Text="教师信息"></asp:Label>
        <asp:Button ID="Button4" runat="server" CssClass="auto-style15" Text="新增教师" OnClick="Button4_Click"
             />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="auto-style10" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="教师用户名" HeaderText="教师用户名" ReadOnly="True" SortExpression="教师用户名" />
                <asp:BoundField DataField="密码" HeaderText="密码" SortExpression="密码" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" Height="50px" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:打分ConnectionString %>" SelectCommand="SELECT * FROM [教师用户]"></asp:SqlDataSource>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style5" Text=" " ForeColor="Red"></asp:Label>
&nbsp;<div>
    
    </div>
        <strong>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="管理员页面"></asp:Label>
        </strong>
    </form>
        </div>
</body>
</html>
