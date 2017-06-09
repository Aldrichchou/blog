<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Detailnews.aspx.cs" Inherits="Detailnews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>欢迎来到博客世界</title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 500px;
        }
        .auto-style2 {
            margin-left: 360px;
        }
        .auto-style5 {
            margin-left: 400px;
            width: 382px;
        }
        .auto-style7 {
            margin-left: 400px;
            width: 382px;
            height: 25px;
        }
        .auto-style8 {
            margin-left: 394px;
            width: 382px;
            height: 25px;
        }
        .auto-style9 {
            margin-left: 441px;
        }
        .auto-style10 {
            margin-top: 61px;
        }
        .auto-style12 {
            width: 1233px;
        }
        .auto-style14 {
            margin-left: 600px;
        }
        .auto-style15 {
            margin-left: 243px;
        }
        .auto-style17 {
            margin-left: 260px;
        }
        </style>
</head>
<body style="background-image: url(../img/详情.gif); background-repeat:no-repeat;MARGIN:auto;background-position-x:center" > 
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
						<a href="HomePage.aspx">返回上一页</a>
					</li>
				</ul>
			</div>
			<span class="shadow"></span>
		</div>
		<div id="contents">
			<div id="about">
				<div class="auto-style10" style="center">
					&nbsp;<asp:Image ID="ImgArticle" runat="server" Height="187px" Width="430px" CssClass="auto-style9" ImageUrl="~/ArticleImg/何江演讲截图.png" />
				</div>
               	<h4 align="center" class="auto-style12">博客详情</h4>
                <p align="center">
                    <asp:Label ID="Label1" runat="server" Font-Size="Large" OnLoad="page_Load"  BackColor="White" Width="35%" BorderColor="#660033" BorderWidth="2px">&nbsp;</asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:webLoginconn %>" SelectCommand="SELECT [Time], [VisitorName], [Content], [Subject] FROM [tb_Revert] WHERE ([ArticleID] = @ArticleID) ORDER BY [Time] DESC">
                        <SelectParameters>
                            <asp:SessionParameter Name="ArticleID" SessionField="NEWSID" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </p>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4"  DataSourceID="SqlDataSource1" Height="100px" Width="400px" CssClass="auto-style1">
                    <Columns>
                        <asp:BoundField DataField="Content" HeaderText="评论内容" SortExpression="Content" />
                        <asp:BoundField DataField="VisitorName" HeaderText="评论者" SortExpression="VisitorName" />
                        <asp:BoundField DataField="Time" HeaderText="发布时间" SortExpression="Time" />
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
				<ul>
					<h4 class="auto-style2">请自由发表评论</h4>
						<p class="auto-style15">
							<asp:TextBox ID="TextReview" runat="server" Width="267px" Height="126px" CssClass="auto-style17"></asp:TextBox>
						</p>
                        <p class="auto-style5">
                            &nbsp;</p>
                        <div class="auto-style7"  style="text-align:right">
                            <asp:Label ID="Label2" runat="server" Text="用户名"></asp:Label>
                            <asp:TextBox ID="TextUser" runat="server" Width="181px" Height="19px"></asp:TextBox> </div>
                    <div class="auto-style8"  style="text-align:right">
                        <asp:Label ID="Label3" runat="server" Text="密  码"></asp:Label>
                        <asp:TextBox ID="TextPw" runat="server" Width="174px" Height="22px" ></asp:TextBox> 
                    </div>
                   	<p class="auto-style14">
                        `&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交评论" Width="147px" />
                    </p>
				</ul>
			</div>
		</div>
	</div>
        </form>
    </body>
</html>
