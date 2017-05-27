<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManagePage.aspx.cs" Inherits="ManagePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>后台管理</title>
    </head> 
<body style="color:#ff0000" background="/img/08.jpg">
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
    <form id="form1" runat="server">
   <div style="text-align: center;">
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/用户管理.png" CssClass="auto-style1" Height="55px" Width="51px" OnClick="userEdit"/>
       <asp:Label ID="Label1" runat="server" Text="用户管理"></asp:Label>
       </div>
<div style="text-align: center;">
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <asp:ImageButton ID="ImageButton2" runat="server"
         ImageUrl="~/img/45编辑管理箱.png" CssClass="auto-style2" Height="58px" Width="57px" OnClick="newsEdit"
     />
    
     <asp:Label ID="Label2" runat="server" Text="新闻管理"></asp:Label>
    
</div>
 <div style="text-align: center;">
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
   <asp:ImageButton ID="ImageButton3" runat="server" 
        ImageUrl="~/img/评论管理.png" Height="57px" Width="46px" OnClick="reviewEdit"/>
    
     评论管理</div>

        <div style="color: white; clear: both; text-align: center; bottom: 0px;">
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="退出" OnClick="Button1_Click" />
        </div>
    </form>
    </body>
</html>


