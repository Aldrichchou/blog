<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>欢迎来到博客世界</title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 263px;
        }
        .auto-style2 {
            margin-left: 520px;
        }
        .auto-style3 {
            margin-left: 80px;
        }
        .auto-style4 {
            margin-left: 40px;
        }
    </style>
</head> 
<body style="background-image: url(../img/121.jpg); background-attachment: fixed; background-repeat:no-repeat;MARGIN:auto;background-position-x:center" > 
    <form id="form1" runat="server">
    <div id="header">
<h1 align="center">THE BLOG</h1>
</div>

<div align = "center"id="nav">输入你想查询的博客
<asp:TextBox ID="Textkey" runat="server"></asp:TextBox>
    <asp:ImageButton ID="ImageButton1" runat="server" BorderStyle="None" EnableTheming="True" Height="24px" ImageAlign="Bottom" ImageUrl="~/img/serchlogo.jpg" Width="56px" OnClick="searchNews" />
</div>

<div id="section">
<h1 class="auto-style2">最新博客</h1>
    <p class="auto-style2">
        <asp:TextBox ID="TextMessage" runat="server" BackColor="#993300" ForeColor="#FF9900" Height="16px" ReadOnly="True" style="position: relative" Width="254px" Wrap="False">您好</asp:TextBox>
    </p>
<p>
    &nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ArticleID" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="sic" AllowSorting="True" CssClass="auto-style1">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ArticleID" HeaderText="文章编号" ReadOnly="True" SortExpression="ArticleID" InsertVisible="False" />
            <asp:BoundField DataField="Author" HeaderText="文章作者" SortExpression="Author" />
            <asp:BoundField DataField="Subject" HeaderText="文章标题" SortExpression="Subject" />
            <asp:BoundField DataField="BlogID" HeaderText="博客编号" SortExpression="BlogID" />
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
    &nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:webLoginconn %>" SelectCommand="SELECT * FROM [tb_Article]"></asp:SqlDataSource>
</p>
<div position:absolute;bottom:0;overflow:hidden; class="auto-style3">

    <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" Width="73px" BackColor="Yellow" ImageUrl="~/img/用户管理.png" OnClick="ButtonClick_manage" />

    <asp:Label ID="Label1" runat="server" BorderColor="#FF3300" BorderStyle="Solid" ForeColor="#663300" Text="后台管理"></asp:Label>

    <asp:ImageButton ID="ImageResign" runat="server" Height="40px" Width="73px" ImageUrl="~/img/注册登录.png" OnClick="UserLogin_Click" />
    <asp:Label ID="Label2" runat="server" BorderColor="#FF3300" BorderStyle="Solid" ForeColor="#663300" Text="注册登录"></asp:Label>

    <asp:ImageButton ID="ImageButton3" runat="server" Height="40px" Width="73px" />
    <asp:Label ID="Label3" runat="server" BorderColor="#FF3300" BorderStyle="Solid" ForeColor="#663300" Text="博客"></asp:Label>

</div>
</div>

<div id="footer" >
    <p class="auto-style4">
Copyright 2017/5/21   周哲颖/陈浩楠/张伟    计算机143班144班
</p>
</div>

</form>
</body>
</html>
