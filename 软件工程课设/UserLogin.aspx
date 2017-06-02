<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="ResignOrLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户登录</title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 19px;
        }
        .auto-style2 {
            margin-left: 13px;
        }
        .auto-style3 {
            height: 344px;
            width: 371px;
        }
    </style>
</head> 
<body style="background-image: url(../img/121.jpg); background-attachment: fixed; background-repeat:no-repeat;MARGIN:auto;background-position-x:center" >  
    <form id="form1" runat="server">
     <div class="box">				
				<ul id="navigation">
					<li>
						<a href="HomePage.aspx">返回主页</a>&nbsp;&nbsp;&nbsp;&nbsp;
					</li>
                    <li>
						<a href="HomePage.aspx">返回上一页</a>
					</li>
    			</ul>
	 </div>
<div style="text-align: center;">
    <img alt="" src="/img/33.jpg" class="auto-style3" />
</div>
      
<div style="text-align: center;">
    <asp:Label ID="Label1" runat="server" Text="用户名"></asp:Label>
    <asp:TextBox ID="TextUserName" runat="server" CssClass="auto-style2" Height="17px" Width="148px"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="密 码"></asp:Label>
    <asp:TextBox ID="Textuserpw" runat="server" CssClass="auto-style1" Height="17px" Width="134px"></asp:TextBox>
    <br />
    <br />
</div>
<div style="text-align: center;">
     &nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Button ID="ButtonUserLogin" runat="server" Text="登录" Width="162px" OnClick="User_Login" />
     <br />
</div>

</form>
</body>
</html>


