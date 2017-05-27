<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>欢迎来到博客世界</title>
</head> 
<body style="color:#ff0000" background="img/121.jpg">  
    <form id="form1" runat="server">
    <div id="header">
<h1 align="center">THE BLOG</h1>
</div>

<div align = "center"id="nav">输入你想查询的博客
<asp:TextBox ID="Textkey" runat="server"></asp:TextBox>
    <asp:ImageButton ID="ImageButton1" runat="server" BorderStyle="None" EnableTheming="True" Height="24px" ImageAlign="Bottom" ImageUrl="~/img/serchlogo.jpg" Width="56px" OnClick="searchNews" />
</div>

<div id="section">
<h1>最新博客</h1>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ArticleID" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="selectedNews">
        <Columns>
            <asp:BoundField DataField="ArticleID" HeaderText="ArticleID" ReadOnly="True" SortExpression="ArticleID" InsertVisible="False" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
            <asp:BoundField DataField="Content" HeaderText="Content" SortExpression="Content" />
            <asp:BoundField DataField="BlogID" HeaderText="BlogID" SortExpression="BlogID" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:webLoginconn %>" SelectCommand="SELECT * FROM [tb_Article]"></asp:SqlDataSource>
</p>
<div>

    <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" Width="73px" BackColor="Yellow" ImageUrl="~/img/用户管理.png" OnClick="ButtonClick_manage" />

    <asp:Label ID="Label1" runat="server" BorderColor="#FF3300" BorderStyle="Solid" ForeColor="#663300" Text="后台管理"></asp:Label>

</div>
</div>

<div id="footer">
Copyright 2017/5/21   周哲颖/陈浩楠/张伟    计算机143班144班
</div>

</form>
</body>
</html>
