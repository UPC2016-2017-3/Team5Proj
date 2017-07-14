<%@ Page Language="C#" AutoEventWireup="true" CodeFile="学生界面.aspx.cs" Inherits="学生界面" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style3 {
            position: absolute;
            top: 222px;
            left: 391px;
            z-index: 1;
            color: #CC9900;
        }
        .auto-style4 {
            position: absolute;
            top: 281px;
            left: 386px;
            z-index: 1;
            color: #CC9900;
        }
        .auto-style7 {
            position: absolute;
            top: 113px;
            left: 480px;
            z-index: 1;
            font-size: x-large;
        }
        .auto-style9 {
            position: absolute;
            top: 379px;
            left: 383px;
            z-index: 1;
            width: 79px;
            height: 32px;
        }
        .auto-style10 {
            position: absolute;
            top: 200px;
            left: 745px;
            z-index: 1;
            margin-top: 179px;
            height: 31px;
        }
        .auto-style11 {
            position: absolute;
            top: 222px;
            left: 578px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 282px;
            left: 577px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 152px;
            left: 622px;
            z-index: 1;
            height: 20px;
            }
        .auto-style14 {
            position: absolute;
            top: 150px;
            left: 730px;
            z-index: 1;
            width: 40px;
            height: 20px;
        }
        .auto-style15 {
            position: absolute;
            top: 153px;
            left: 788px;
            z-index: 1;
            width: 51px;
        }
        .auto-style16 {
            position: absolute;
            top: 180px;
            left: 525px;
            z-index: 1;
            font-size: x-large;
            color: #FF0000;
        }
        #Button3 {
            z-index: 1;
            top: 378px;
            position: absolute;
            right: 206px;
            height: 30px;
        }
    </style>
    <script >
        function aaa() {
            window.location.href = window.location.href;
        }

    </script>
</head>
<body >
    <div style="width:100%;margin:0px auto">
    <form id="form1" runat="server">
        <asp:Button ID="Button1" runat="server" CssClass="auto-style9" Text="评分" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" CssClass="auto-style10" OnClick="Button2_Click" Text="查看排名" />  
        &nbsp;<asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style11" ReadOnly="True"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style12" MaxLength="3" OnTextChanged="TextBox2_TextChanged" TextMode="Number"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style13" Text="欢迎登陆 第："></asp:Label>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style14" Text="xxx"></asp:Label>
        <asp:Label ID="Label7" runat="server" CssClass="auto-style16" Text=" "></asp:Label>
        &nbsp;<input id="Button3" type="button" value="刷新" onclick="aaa()" style="width: 79px"/><img src="image\tk.jpg" height="100%" width="100%"><asp:Label ID="Label6" runat="server" CssClass="auto-style15" Text="组"></asp:Label>
        <p>
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="当前小组"></asp:Label>
            </strong>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style7" Text="学生界面"></asp:Label>
        </p>
        <strong>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="小组分数"></asp:Label>
        </strong>
    </form>
        </div>
</body>
</html>
