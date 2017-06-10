<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManagenewPage.aspx.cs" Inherits="ManagenewPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>欢迎来到博客世界</title>
    <style type="text/css">
        .auto-style2 {
            margin-left: 457px;
        }
        .auto-style3 {
            margin-left: 304px;
        }
        .auto-style4 {
            margin-left: 315px;
        }
        .auto-style5 {
            margin-left: 320px;
        }
        .auto-style6 {
            margin-left: 360px;
        }
        .auto-style7 {
            margin-left: 320px;
            width: 335px;
            height: 32px;
        }
        </style>
</head>
<body style="background-image: url(../img/12.gif);background-repeat:no-repeat;MARGIN:auto;background-position-x:center;background-position-y:center" > 
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
					&nbsp;<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style2" DataKeyNames="ArticleID" DataSourceID="SqlDataSource1" OnRowDataBound="gv_showReport_RowDataBound" OnRowDeleting="Row_deleteArticle" Width="545px" PageSize="5">
                        <Columns>
                            <asp:BoundField DataField="ArticleID" HeaderText="文章ID" ReadOnly="True" SortExpression="ArticleID" />
                            <asp:BoundField DataField="Author" HeaderText="发布者" SortExpression="Author" />
                            <asp:BoundField DataField="Subject" HeaderText="文章题目" SortExpression="Subject" />
                            <asp:BoundField DataField="Content" HeaderText="文章内容" SortExpression="Content" />
                            <asp:BoundField DataField="BlogID" HeaderText="博客ID" SortExpression="BlogID" />
                            <asp:BoundField DataField="Time" HeaderText="发布时间" SortExpression="Time" />
                            <asp:BoundField DataField="Class" HeaderText="文章类型" SortExpression="Class" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:webLoginconn %>" SelectCommand="SELECT * FROM [tb_Article] ORDER BY [Time] DESC"></asp:SqlDataSource>
                </div>
          
				<ul>
					<li>
						<h4 class="auto-style6">请编辑文章&nbsp;&nbsp;&nbsp; </h4>
						<p>
						
                            						<asp:TextBox ID="Textnewacontent" runat="server" Height="165px" Width="821px" CssClass="auto-style3"></asp:TextBox>
						
                            						</p>
                        <p>
						
                            						<asp:FileUpload ID="FileUploadimg" runat="server" Width="291px" Height="25px" ToolTip="上传图片" CssClass="auto-style4" />
						
                            						</p>
					</li>
                      <p class="auto-style5">
                            <asp:Label runat="server" Text="文章名称" ID="TextAritSubject"></asp:Label>
                            <asp:TextBox ID="TextNewsname" runat="server" Width="205px" Height="22px"></asp:TextBox>
						</p>
                      <p class="auto-style7">
                            <asp:Label runat="server" Text="文章类别" ID="TextArticleClass"></asp:Label>
                            <asp:TextBox ID="TextClassesName" runat="server" Width="204px" Height="23px"></asp:TextBox>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    	</p>
                        <p class="auto-style5">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交文章" Height="27px" Width="108px" />
						</p>
				</ul>
			</div>
		</div>
	</div>
        </form>
    </body>
</html>
