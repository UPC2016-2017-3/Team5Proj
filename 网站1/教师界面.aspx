<%@ Page Language="C#" AutoEventWireup="true" CodeFile="教师界面.aspx.cs" Inherits="教师登录" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #Text1 {
            z-index: 1;
            left: 320px;
            top: 102px;
            position: absolute;
        }
        #Text2 {
            z-index: 1;
            left: 323px;
            top: 210px;
            position: absolute;
        }
        #Text3 {
            z-index: 1;
            left: 322px;
            top: 269px;
            position: absolute;
        }
        #Submit1 {
            z-index: 1;
            left: 197px;
            top: 322px;
            position: absolute;
            width: 69px;
            height: 28px;
            right: 543px;
        }
        #Submit2 {
            z-index: 1;
            left: 334px;
            top: 324px;
            position: absolute;
            height: 28px;
            width: 69px;
        }
        #Button1 {
            z-index: 1;
            left: 472px;
            top: 322px;
            position: absolute;
            height: 28px;
            width: 69px;
        }
        #Select1 {
            z-index: 1;
            left: 324px;
            top: 146px;
            position: absolute;
            width: 148px;
        }
        .auto-style3 {
            position: absolute;
            top: 205px;
            left: 322px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            left: 298px;
            top: 146px;
            }
        .auto-style5 {
            position: absolute;
            top: 266px;
            left: 320px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 97px;
            left: 323px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 339px;
            left: 186px;
            z-index: 1;
            width: 68px;
            height: 31px;
            right: 729px;
        }
        .auto-style10 {
            position: absolute;
            top: 338px;
            left: 454px;
            z-index: 1;
            width: 73px;
            height: 32px;
            right: 456px;
        }
        .auto-style11 {
            position: absolute;
            top: 337px;
            z-index: 1;
            height: 32px;
            width: 107px;
            right: 473px;
        }
        .auto-style12 {
            position: absolute;
            top: 201px;
            left: 629px;
            z-index: 1;
            height: 31px;
            bottom: 141px;
            width: 92px;
            right: 147px;
        }
        .auto-style13 {
            z-index: 1;
            left: 187px;
            top: 98px;
            position: absolute;
        }
        .auto-style14 {
            position: absolute;
            top: 62px;
            left: 561px;
            z-index: 1;
            height: 18px;
        }
        .auto-style15 {
            position: absolute;
            top: 62px;
            left: 681px;
            z-index: 1;
            height: 22px;
        }
        .auto-style16 {
            position: absolute;
            top: 100px;
            left: 563px;
            z-index: 1;
            font-size: x-large;
            width: 147px;
            color: #FF0000;
            text-align: center;
        }
        .auto-style17 {
            z-index: 1;
            left: 185px;
            top: 267px;
            position: absolute;
        }
        .auto-style18 {
            z-index: 1;
            left: 188px;
            top: 208px;
            position: absolute;
        }
        .auto-style19 {
            z-index: 1;
            left: 182px;
            top: 148px;
            position: absolute;
        }
        .auto-style20 {
            position: absolute;
            top: 241px;
            left: 642px;
            z-index: 1;
            width: 79px;
            height: 31px;
        }
        </style>
</head>
<body>
    <div style="width:100%;margin:0px auto">
    <form id="form1" runat="server" method="get">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style6" Text="1"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Text="评分" onclick="Button2_Click"/>
        <asp:Button ID="Button3" runat="server" CssClass="auto-style10" Text="换组 " onclick="Button3_Click"/>
        <asp:Button ID="Button4" runat="server" CssClass="auto-style11" Text="计算当前组评分" onclick="Button4_Click"/>
      
    
       <select id="Select1" name="D1" onchange="ok(this)" class="auto-style4">
           <option>0组</option>
            <option>1组</option>
            <option>2组</option>
            <option>3组</option>
            <option>4组</option>
            <option>5组</option>
            <option>6组</option>
            <option>7组</option>
            <option>8组</option>
            <option>9组</option>
            <option>10组</option>
            <option>11组</option>
            <option>12组</option>
            <option>13组</option>
            <option>14组</option>
            <option>15组</option>
            <option>16组</option>
        </select>
        
        <asp:Label ID="Label2" runat="server" Text="当前小组" CssClass="auto-style13"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style5"></asp:TextBox>
        
        <asp:Button ID="Button6" runat="server" style="z-index: 1; left: 626px; top: 258px; position: absolute; height: 31px; width: 95px; right: 147px" Text="查看详细评分" onclick="Button6_Click"/>
        
    <img src="image\tk.jpg" height="100%" width="100%">
        <strong><asp:Label ID="Label8" runat="server" CssClass="auto-style16" Text=" "></asp:Label>
        </strong>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style14" Text="欢迎您，评委："></asp:Label>
        <asp:Label ID="Label7" runat="server" CssClass="auto-style15" Text="Label"></asp:Label>
        <asp:Button ID="Button5" runat="server" CssClass="auto-style12" Text="查看排名" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 351px; top: 35px; position: absolute; width: 137px; font-size: xx-large" Text="教师界面"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="选择评分组" CssClass="auto-style19"></asp:Label>     
        <asp:Label ID="Label4" runat="server" Text="小组分数" CssClass="auto-style18"></asp:Label>
        <asp:Label ID="Label5" runat="server" Text="小组评价" CssClass="auto-style17"></asp:Label>
    <script>
        function ok(ss){
            var elm = document.getElementById('TextBox3')
            elm.value = ss.selectedIndex
        }
        </script>
    </form>
        </div>
    </body>
</html>
