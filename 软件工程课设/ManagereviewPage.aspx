<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManagereviewPage.aspx.cs" Inherits="ManagereviewPage" %>

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
        .auto-style8 {
            margin-left: 0px;
        }
        .auto-style9 {
            height: 573px;
        }
    </style>
</head>
<body style="color:#ff0000" background="/img/17.jpg">
    <form id="form1" runat="server">
    <div id="page">
		<div id="header">
            &nbsp;<div class="box">				
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
					<li class="auto-style9">
						<h4>编辑用户</h4>
						<p>
							<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="RevertID" DataSourceID="SqlDataSource2">
                                <Columns>
                                    <asp:BoundField DataField="RevertID" HeaderText="评论编号" ReadOnly="True" SortExpression="RevertID" InsertVisible="False" />
                                    <asp:BoundField DataField="Subject" HeaderText="主题" SortExpression="Subject" />
                                    <asp:BoundField DataField="Content" HeaderText="内容" SortExpression="Content" />
                                    <asp:BoundField DataField="ArticleID" HeaderText="评论文章编号" SortExpression="ArticleID" />
                                    <asp:BoundField DataField="BlogID" HeaderText="博客编号" SortExpression="BlogID" />
                                    <asp:BoundField DataField="Time" HeaderText="发布时间" SortExpression="Time" />
                                    <asp:BoundField DataField="IP" HeaderText="IP地址" SortExpression="IP" />
                                    <asp:BoundField DataField="VisitorID" HeaderText="评论发起者ID" SortExpression="VisitorID" />
                                    <asp:BoundField DataField="VisitorName" HeaderText="评论者发起者" SortExpression="VisitorName" />
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
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:webLoginconn %>" SelectCommand="SELECT * FROM [tb_Revert]"></asp:SqlDataSource>
						</p>
                         <p>
                          
						     &nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" Text="评论编号"></asp:Label>
                            <asp:TextBox ID="TextRevertID" runat="server" Width="116px" Height="19px" CssClass="auto-style2"></asp:TextBox>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          
						     <asp:TextBox ID="TextDelete" runat="server" BackColor="Yellow" ReadOnly="True" Width="186px" Wrap="False" CssClass="auto-style4" Height="16px">删除评论：只需填写评论编号</asp:TextBox>
                          
						</p>
                        <p>
                            &nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:Button ID="ButtonDeleteUser" runat="server" CssClass="auto-style8" Text="删除该评论" Width="163px" Height="25px" OnClick="Deletereview" />
						</p>
					</li>
						</ul>
			</div>
		</div>
	</div>
        </form>
    </body>
</html>

