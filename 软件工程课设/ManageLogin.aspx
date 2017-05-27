<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageLogin.aspx.cs" Inherits="ManageLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>后台管理</title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 19px;
        }
        .auto-style2 {
            margin-left: 13px;
        }
    </style>
</head> 
<body style="color:#ff0000">  
    <form id="form1" runat="server">
<div style="text-align: center;">
    <img alt="" src="/img/05.jpg" />
</div>
        <div class="box">				
				<ul id="navigation">
					<li>
						<a href="HomePage.aspx">返回主页</a>
					</li>
					<li class="selected">
						<a href="ManageLogin.aspx">后台登录</a>
					</li>
				</ul>
			</div>
<div style="text-align: center;">
    <asp:Label ID="Label1" runat="server" Text="用户名"></asp:Label>
    <asp:TextBox ID="TextManageName" runat="server" CssClass="auto-style2" Height="17px" Width="148px"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="密 码"></asp:Label>
    <asp:TextBox ID="TextPw" runat="server" CssClass="auto-style1" Height="17px" Width="134px"></asp:TextBox>
    <br />
    <br />
</div>
<div style="text-align: center;">
     &nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Button ID="ButtonManagerLogin" runat="server" Text="登录后台管理" Width="162px" OnClick="Manager_Login" />
     <br />
     <asp:Label ID="Tip" runat="server"></asp:Label>
</div>

</form>
</body>
</html>

