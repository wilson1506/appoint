﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SQLDataSourceDefault4.aspx.cs" Inherits="SQLDataSourceDefault4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:GridView ID="grid" runat="server" AllowPaging="True" AllowSorting="True" 
        AutoGenerateColumns="False" DataKeyNames="sched_id" 
        DataSourceID="scheduleDataSource" onsorting="grid_Sorting" PageSize="3">
    </asp:GridView>
    <asp:SqlDataSource ID="scheduleDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:aunConnectionString2 %>" 
        SelectCommand="SELECT * FROM [s_schedule] ORDER BY [sched_id]"></asp:SqlDataSource>
    <br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /><br />
    <asp:DetailsView ID="scheduleDetails" runat="server" Height="50px" 
        Width="125px">
    </asp:DetailsView>
    <br />
    <asp:TextBox ID="starttxt" runat="server"></asp:TextBox>
    <asp:TextBox ID="endtxt" runat="server"></asp:TextBox>
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Button" />
    <br />
    </form>
</body>
</html>
