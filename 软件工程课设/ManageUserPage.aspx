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
        .auto-style12 {
            margin-left: 19px;
        }
        .auto-style13 {
            margin-left: 39px;
        }
        .auto-style14 {
            margin-left: 13px;
            margin-bottom: 0px;
        }
        .auto-style15 {
            margin-left: 25px;
        }
        .auto-style16 {
            margin-left: 30px;
        }
    </style>
</head>
<body style="color:#ff0000" background="/img/用户.gif">
    <form id="form1" runat="server">
    <div id="page">
		<div id="header">
            <a href="index.html" id="logo"><img src="\img\33.jpg" height="100" width="100" alt="LOGO"></a>
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
				<ul>
					<li>
						<h4>编辑用户</h4>
						<p>
							<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="BlogID" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                <Columns>
                                    <asp:BoundField DataField="BlogID" HeaderText="BlogID" ReadOnly="True" SortExpression="BlogID" InsertVisible="False" />
                                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                                    <asp:BoundField DataField="PassWord" HeaderText="PassWord" SortExpression="PassWord" />
                                    <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                                    <asp:BoundField DataField="ReallyName" HeaderText="ReallyName" SortExpression="ReallyName" />
                                    <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
                                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                    <asp:BoundField DataField="PostCode" HeaderText="PostCode" SortExpression="PostCode" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                    <asp:BoundField DataField="HomePhone" HeaderText="HomePhone" SortExpression="HomePhone" />
                                    <asp:BoundField DataField="MobilePhone" HeaderText="MobilePhone" SortExpression="MobilePhone" />
                                    <asp:BoundField DataField="QQ" HeaderText="QQ" SortExpression="QQ" />
                                    <asp:BoundField DataField="ICQ" HeaderText="ICQ" SortExpression="ICQ" />
                                    <asp:BoundField DataField="RegTime" HeaderText="RegTime" SortExpression="RegTime" />
                                    <asp:BoundField DataField="IP" HeaderText="IP" SortExpression="IP" />
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
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:webLoginconn %>" SelectCommand="SELECT * FROM [tb_Blog]"></asp:SqlDataSource>
						</p>
                         <p>
                          
						     用户名&nbsp;
                            <asp:TextBox ID="TextUserName" runat="server" Width="116px" Height="19px" CssClass="auto-style2"></asp:TextBox>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          
						     <asp:TextBox ID="TextDelete" runat="server" BackColor="Yellow" ReadOnly="True" Width="186px" Wrap="False" CssClass="auto-style4" Height="20px">删除用户：只需填写用户名</asp:TextBox>
                          
						</p>
                        <p>
                            密码&nbsp;&nbsp; <asp:TextBox ID="TextPW" runat="server" Width="111px" Height="19px" CssClass="auto-style12"></asp:TextBox>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:Button ID="ButtonDeleteUser" runat="server" CssClass="auto-style8" Text="删除用户" Width="163px" OnClick="Deleteuser" />
						</p>
                        性 别&nbsp;&nbsp;
                        <asp:TextBox ID="TextSex" runat="server" Width="117px" Height="19px" CssClass="auto-style8"></asp:TextBox>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          
						     <asp:TextBox ID="TextBox3" runat="server" BackColor="Yellow" ReadOnly="True" Width="176px" Wrap="False" CssClass="auto-style5" Height="20px">新增用户编辑，可以选填：</asp:TextBox>
&nbsp;&nbsp;&nbsp;
				                    <p>
                                        真实姓名&nbsp; <asp:TextBox ID="TextReallyName" runat="server" Width="118px" Height="16px" CssClass="auto-style8"></asp:TextBox>
						                <asp:Button ID="ButtonInsertUser" runat="server" CssClass="auto-style10" Height="20px" OnClick="insertUser" Text="新增用户" Width="166px" />
                          
						</p>
                         <p>
                             生日<asp:TextBox ID="TextBirthday" runat="server" Width="116px" Height="19px" CssClass="auto-style13"></asp:TextBox>                      
						     地址 <asp:TextBox ID="TextAddress" runat="server" Width="116px" Height="19px" CssClass="auto-style13"></asp:TextBox>                      邮编<asp:TextBox ID="TextPostCode" runat="server" Width="116px" Height="19px" CssClass="auto-style13"></asp:TextBox>                      
						     Emai<asp:TextBox ID="TextEmail" runat="server" Width="116px" Height="19px" CssClass="auto-style13"></asp:TextBox>                      
                              电话<asp:TextBox ID="TextHomePhone" runat="server" Width="116px" Height="19px" CssClass="auto-style13"></asp:TextBox>                      
						</p>  
                         <p>
                             &nbsp;</p>
                              <p>
                                  手机<asp:TextBox ID="TextMobilePhone" runat="server" Width="116px" Height="19px" CssClass="auto-style13"></asp:TextBox>                      
                                   Q Q<asp:TextBox ID="TextQQ" runat="server" Width="124px" Height="19px" CssClass="auto-style13"></asp:TextBox>                      
                                        I C Q<asp:TextBox ID="TextICQ" runat="server" Width="116px" Height="19px" CssClass="auto-style15"></asp:TextBox>                      
						          注册时间<asp:TextBox ID="TextRegTime" runat="server" Width="116px" Height="19px" CssClass="auto-style14"></asp:TextBox>                      
						          ip地址<asp:TextBox ID="TextIP" runat="server" Width="116px" Height="19px" CssClass="auto-style16"></asp:TextBox>                      

						           <p>
                                       &nbsp;<p>
                             &nbsp;</p>  
                                        <p>
                                            &nbsp;</p>  
                                        <p>
                                            &nbsp;</p>  
						</p>  
						</p>  
						</p>             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</li>
				</ul>
			</div>
		</div>
	</div>
        </form>
    </body>
</html>
