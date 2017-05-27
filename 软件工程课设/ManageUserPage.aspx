<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageUserPage.aspx.cs" Inherits="ManageUserPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>欢迎来到博客世界</title>
    <style type="text/css">
        .auto-style2 {
            margin-left: 17px;
        }
        .auto-style4 {
            margin-left: 27px;
        }
        .auto-style5 {
            margin-left: 63px;
        }
        .auto-style8 {
            margin-left: 0px;
        }
        .auto-style10 {
            margin-left: 90px;
        }
        .auto-style11 {
            margin-left: 15px;
        }
        .auto-style12 {
            margin-left: 34px;
        }
    </style>
</head>
<body style="color:#ff0000" background="/img/用户.gif">
    <form id="form1" runat="server">
    <div id="page">
		<div id="header">
            <a href="index.html" id="logo"><img src="\img\1D43DDCE017FF2EBD08672101B6_E1A04F29_1D30E.jpg" height="100" width="100" alt="LOGO"></a>
			<div class="box">				
				<ul id="navigation">
					<li>
						<a href="HomePage.aspx">返回主页</a>
					</li>
					<li class="selected">
						<a href="ManageLogin.aspx">后台登录</a>
					</li>
                    <li>
						<a href="ManagePage.aspx">返回上一页</a>
					</li>
					</ul>
			</div>
			<span class="shadow"></span>
		</div>
		<div id="contents">
			<div id="about">
				<div class="frame1">
					<img src="\img\2345截图20170520093454.png" alt="Img"/>
				</div>
				<ul>
					<li>
						<h4>编辑用户</h4>
						<p>
							<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                <Columns>
                                    <asp:BoundField DataField="UserID" HeaderText="用户编号" ReadOnly="True" SortExpression="UserID" />
                                    <asp:BoundField DataField="UserName" HeaderText="用户名" SortExpression="UserName" />
                                    <asp:BoundField DataField="Password" HeaderText="密码" SortExpression="Password" />
                                    <asp:BoundField DataField="UserQQ" HeaderText="QQ" SortExpression="UserQQ" />
                                    <asp:BoundField DataField="UserEmail" HeaderText="E-mail" SortExpression="UserEmail" />
                                </Columns>
                                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#330099" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                <SortedDescendingHeaderStyle BackColor="#7E0000" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:webLoginconn %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
						</p>
                         <p>
                          
						     &nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" Text="用户名"></asp:Label>
                            <asp:TextBox ID="TextUser" runat="server" Width="116px" Height="19px" CssClass="auto-style2"></asp:TextBox>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          
						     <asp:TextBox ID="TextDelete" runat="server" BackColor="Yellow" ReadOnly="True" Width="186px" Wrap="False" CssClass="auto-style4" Height="16px">删除用户：只需填写用户名</asp:TextBox>
                          
						</p>
                        <p>
                            &nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text="密码"></asp:Label>
                            <asp:TextBox ID="TextPw" runat="server" Width="118px" Height="19px" CssClass="auto-style12"></asp:TextBox>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:Button ID="ButtonDeleteUser" runat="server" CssClass="auto-style8" Text="删除用户" Width="163px" OnClick="Deleteuser" />
						</p>
                           <p>
                            <asp:Label ID="Label4" runat="server" Text=" Q         Q         "></asp:Label>
                            &nbsp;&nbsp;
                            <asp:TextBox ID="Textqq" runat="server" Width="117px" Height="19px" CssClass="auto-style11"></asp:TextBox>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          
						     <asp:TextBox ID="TextBox3" runat="server" BackColor="Yellow" ReadOnly="True" Width="176px" Wrap="False" CssClass="auto-style5">新增用户编辑，可以选填：</asp:TextBox>
                                    <p>
                               &nbsp;<asp:Label ID="Label5" runat="server" Text="E-mail"></asp:Label>
                                        &nbsp;&nbsp;
                            <asp:TextBox ID="Textemail" runat="server" Width="118px" Height="16px" CssClass="auto-style8"></asp:TextBox>
						                <asp:Button ID="ButtonInsertUser" runat="server" CssClass="auto-style10" Height="20px" OnClick="insertUser" Text="新增用户" Width="166px" />
                          
						</p> 
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</li>
						<p>
							&nbsp;</p>
				<p>
                &nbsp;</p>
				</ul>
			</div>
		</div>
		<div id="footer">
			<asp:TextBox ID="TextException" runat="server" Width="298px"></asp:TextBox>
			<span class="shadow"></span>
		
	</div>
	</div>
        </form>
    </body>
</html>
