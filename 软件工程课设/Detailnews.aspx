<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Detailnews.aspx.cs" Inherits="Detailnews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>欢迎来到博客世界</title>
    <style type="text/css">
        .auto-style1 {
            position: relative;
            left: 371px;
            top: 23px;

        }
        .auto-style2 {
            margin-left: 360px;
        }
        .auto-style4 {
            margin-left: 440px;
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
        .auto-style13 {
            margin-left: 26px;
        }
        .auto-style14 {
            margin-left: 600px;
        }
        </style>
</head>
<body align="center" style="color:#ff0000" background="/img/详情.gif">
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
                    <asp:Label ID="Label1" runat="server" Font-Size="Large" OnLoad="page_Load"  BackColor="White" Width="35%">&nbsp;</asp:Label>
                </p>
				<ul>
					<h4 class="auto-style2">请自由发表评论</h4>
						<p>
							<asp:TextBox ID="TextReview" runat="server" Width="267px" Height="126px" CssClass="auto-style1"></asp:TextBox>
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
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交评论" CssClass="auto-style13" Width="119px" />
                        &nbsp;</p>
				</ul>
			</div>
		</div>
		<div id="footer" class="auto-style4">
			<span class="shadow"></span>
		
			<asp:TextBox ID="TextException" runat="server" Width="298px"></asp:TextBox>
		
	</div>
	</div>
        </form>
    </body>
</html>
