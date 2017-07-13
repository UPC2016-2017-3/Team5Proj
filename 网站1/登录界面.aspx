<%@ Page Language="C#" AutoEventWireup="true" CodeFile="登录界面.aspx.cs" Inherits="登录界面" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8 "/>

    <title>用户登录</title>
   
    <style type="text/css">
        #Text1 {
            z-index: 1;
            left: 351px;
            top: 121px;
            position: absolute;
        }
        #Text2 {
            z-index: 1;
            left: 352px;
            top: 166px;
            position: absolute;
        }
        #Password1 {
            z-index: 1;
            left: 350px;
            top: 170px;
            position: absolute;
        }
        .auto-style5 {
            z-index: 1;
            left: 531px;
            top: 203px;
            position: absolute;
            color: #000000;
        }
        .auto-style6 {
            position: absolute;
            top: 13px;
            left: 295px;
            z-index: 1;
            margin-top: 0px;
        }
        .auto-style8 {
            position: absolute;
            top: 66px;
            left: 297px;
            z-index: 1;
            margin-top: 0px;
        }
        .auto-style9 {
            position: absolute;
            top: 120px;
            left: 370px;
            z-index: 1;
            height: 23px;
            width: 90px;
            margin-top: 0px;
        }
        .auto-style10 {
            z-index: 1;
            left: 221px;
            top: 118px;
            position: absolute;
            height: 25px;
        }
        .auto-style11 {
            z-index: 1;
            left: 54px;
            top: 19px;
            position: absolute;
            width: 84px;
        }
        .auto-style12 {
            z-index: 1;
            left: 55px;
            top: 65px;
            position: absolute;
            width: 79px;
        }
        .auto-style13 {
            z-index: 1;
            left: 53px;
            top: 118px;
            position: absolute;
            height: 25px;
        }
        .auto-style14 {
            margin-top: 0px;
        }
        .auto-style15 {
            height: 147px;
            position: absolute;
            top: 315px;
            left: 355px;
            width: 42%;
            z-index: 1;
        }
        .auto-style16 {
            height: 43px;
            width: 75px;
        }
        .auto-style18 {
            width: 304px;
            height: 48px;
        }
        .auto-style20 {
            height: 46px;
            width: 75px;
        }
        .auto-style21 {
            height: 43px;
            width: 43px;
        }
        .auto-style22 {
            height: 46px;
            width: 43px;
        }
        </style>
   
</head>
<body>
  <div style="width:100%;margin:0px auto">
    <form id="form1" runat="server">

        <table class="auto-style15" border="0" style="border: thin groove #00FFFF; list-style-type: circle; list-style-image: url('http://localhost:62486/网站1/image/bj1.jpg'); list-style-position: inside" >
            <tr>
                <td class="auto-style21" style="border: thin groove #00FFFF">
        <asp:Label ID="Label2" runat="server" style="font-size: large" Text="用户名:" CssClass="auto-style11"></asp:Label>
                </td>
                <td class="auto-style16" style="border: thin groove #00FFFF">
    
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style6"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style22" style="border: thin groove #00FFFF"><asp:Label ID="Label3" runat="server" Text="密码:" CssClass="auto-style12"></asp:Label></td>
                <td class="auto-style20" style="border: thin groove #00FFFF"><asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style8" TextMode="Password"></asp:TextBox></td>
               
            </tr>
            <tr>
                <td colspan="2" class="auto-style18"  style="border: thin groove #00FFFF"> 
                    <asp:Button ID="Button1" runat="server" Text="学生登录" OnClick="Button1_Click" CssClass="auto-style13" /><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="教师登录" CssClass="auto-style10" /><asp:Button ID="Button3" runat="server" CssClass="auto-style9" Text="管理员登陆" onclick="Button3_Click"/>

                </td>   
            </tr>
        </table>

        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 479px; top: 258px; position: absolute; color: #FF0000; height: 32px; width: 241px; font-size: x-large; text-align: center" Text=" "></asp:Label>

        <img src="image\tk.jpg" height="100%" width="100%" class="auto-style14" style="border: thin double #0000FF">
&nbsp;<strong><asp:Label ID="Label1" runat="server" style="font-size: xx-large; " Text="用户登录" CssClass="auto-style5" ForeColor="Black"></asp:Label>
        </strong>
</form>
    </div>
    </body>
</html>
