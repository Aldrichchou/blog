<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManagenewPage.aspx.cs" Inherits="ManagenewPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>欢迎来到博客世界</title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 80px;
        }
        .auto-style2 {
            height: 531px;
            width: 952px;
        }
        </style>
</head>
<body style="color:#ff006e" background="/img/201392515417.jpg">
    <form id="form1" runat="server">
    <div id="page">
		<div id="header">
            <a href="index.html" id="logo"><img src="\img\33.jpg" height="100" width="100" alt="LOGO"></a>
			<div class="box">				
				<ul id="navigation">
					<li>
						<a href="HomePage.aspx">返回主页</a>
					</li>
					<li>
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
					<img src="\img\写博客.jpg" alt="Img" class="auto-style2"/>
				</div>
          
				<ul>
					<li>
						<h4>请编辑文章</h4>
						<p>
						
                            						<asp:TextBox ID="Textnewacontent" runat="server" Height="286px" Width="821px"></asp:TextBox>
						
                            						</p>
                        <p>
						
                            						<asp:FileUpload ID="FileUploadimg" runat="server" Width="404px" Height="25px" ToolTip="上传图片" />
						
                            						</p>
					</li>
                      <p>
                            <asp:Label runat="server" Text="文章名称" ID="TextAritSubject"></asp:Label>
                            <asp:TextBox ID="TextNewsname" runat="server" Width="290px" Height="38px"></asp:TextBox>
						</p>
                      <p>
                            <asp:Label runat="server" Text="文章类别" ID="TextArticleClass"></asp:Label>
                            <asp:TextBox ID="TextClassesName" runat="server" Width="281px" Height="32px"></asp:TextBox>
						</p>
				<p class="auto-style1">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交文章" Height="27px" Width="108px" />
                </p>
				</ul>
			</div>
		</div>
	</div>
        </form>
    </body>
</html>
