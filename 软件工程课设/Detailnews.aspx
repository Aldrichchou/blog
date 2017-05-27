<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Detailnews.aspx.cs" Inherits="Detailnews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>浙江农林大学信息工程学院欢迎你</title>
    <style type="text/css">
        .auto-style1 {
            position: relative;
            left: 0px;
            top: 0px;

        }
    </style>
</head>
<body style="color:#ff0000" background="/img/201392515417.jpg">
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
				<div class="frame1">
					<img src="\img\2345截图20170520093454.png" alt="Img"/>
				</div>
               	<p><h4>新闻详情</h4>
                    <asp:Label ID="Label1" runat="server" Font-Size="Large" OnLoad="page_Load" Text="我在这里" BackColor="White"></asp:Label>
                </p>
				<ul>
					<li>
						<h4>请自由发表评论</h4>
						<p>
							<asp:TextBox ID="TextReview" runat="server" Width="267px" Height="126px" CssClass="auto-style1"></asp:TextBox>
						</p>
                        <p>
                            <asp:Label ID="Label2" runat="server" Text="用户名"></asp:Label>
                            <asp:TextBox ID="TextUser" runat="server" Width="122px" Height="19px"></asp:TextBox>
						</p>
					</li>
						<p>
							<asp:Label ID="Label3" runat="server" Text="密  码"></asp:Label>
                            <asp:TextBox ID="TextPw" runat="server" Width="131px" Height="22px" style="margin-top: 5px"></asp:TextBox>
						</p>
				<p>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="width: 78px; " Text="提交评论" />
                </p>
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
