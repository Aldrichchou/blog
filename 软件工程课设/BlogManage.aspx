<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BlogManage.aspx.cs" Inherits="BlogManage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>欢迎来到博客世界</title>
    <style type="text/css">
        .auto-style1
       {
            margin-left: 80px;
        }
          .listover150
      {
          width:150px;
          text-align:left;
          overflow:hidden;
          text-overflow:ellipsis;//超长设置省略号
          white-space:nowrap;
      }
        .auto-style2 {
            margin-left: 48px;
        }
        </style>
</head>
<body style="background-image: url(../img/写博客.jpg); background-attachment: fixed; background-repeat:no-repeat;MARGIN:auto;background-position-x:center" > 
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
						<a href="HomePage.aspx">返回上一页</a><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Height="139px" Width="1261px" BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" OnRowDataBound="gv_showReport_RowDataBound" CssClass="auto-style2" DataKeyNames="Subject" OnRowDeleting="Gridview_RowDeleting" OnRowUpdating="Gridview_RowUpdating">
                        <Columns>
<asp:BoundField DataField="Subject" HeaderText="你的文章标题" SortExpression="Subject"></asp:BoundField>
<asp:BoundField DataField="Content" HeaderText="你的文章内容" SortExpression="Content" ></asp:BoundField>
                            <asp:BoundField DataField="Class" HeaderText="你的文章类别" SortExpression="Class" />
                            <asp:BoundField DataField="Time" HeaderText="你的发布时间" SortExpression="Time" />
                            <asp:CommandField ShowDeleteButton="True" />
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
                    &nbsp;</li>
				</ul>
			</div>
			<span class="shadow"></span>
		</div>
          <div id="about">
				<div class="frame1">
				
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:webLoginconn %>" SelectCommand="SELECT [Subject], [Content], [Class], [Time] FROM [tb_Article] WHERE ([Author] = @Author)" OnDeleting="GridView1_SelectedIndexChanged">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="UserName" Name="Author" SessionField="UserName" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
				
                </div>
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
