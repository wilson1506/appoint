﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <asp:GridView id="grid" runat="server" AutoGenerateColumns="False" CellPadding="10" 
            GridLines="None" onselectedindexchanged="grid_SelectedIndexChanged">
        <Columns>
        <asp:BoundField DataField="servicename" HeaderText="Service Name" />
        <asp:BoundField DataField="s_date" HeaderText="Appoint Date" />
        <asp:BoundField DataField="s_time" HeaderText="Appoint Time" />
            <asp:ButtonField CommandName="Select" Text="See more" />
        </Columns>
    </asp:GridView>
            <br />
<asp:DetailsView id="scheduleDetails" runat="server" CellPadding="10" 
            AutoGenerateRows="False" onmodechanging="scheduleDetails_ModeChanging" 
            onitemupdating="scheduleDetails_ItemUpdating">
<Fields>
        <asp:TemplateField HeaderText="Schedule ID">
            <EditItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("sched_id") %>'></asp:Label>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="insertsched_idTextBox" runat="server" Text='<%# Bind("sched_id") %>'></asp:TextBox>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("sched_id") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Service name">
            <EditItemTemplate>
                <asp:TextBox ID="editservicenameTextBox" runat="server" Text='<%# Bind("servicename") %>'></asp:TextBox>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="insertservicenameTextBox" runat="server" Text='<%# Bind("servicename") %>'></asp:TextBox>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("servicename") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Service Date">
            <EditItemTemplate>
                <asp:TextBox ID="edits_dateTextBox" runat="server" Text='<%# Bind("s_date") %>'></asp:TextBox>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="inserts_dateTextBox" runat="server" Text='<%# Bind("s_date") %>'></asp:TextBox>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("s_date") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Service Time">
            <EditItemTemplate>
                <asp:TextBox ID="edits_timeTextBox" runat="server" Text='<%# Bind("s_time") %>'></asp:TextBox>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="inserts_timeTextBox" runat="server" Text='<%# Bind("s_time") %>'></asp:TextBox>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("s_time") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:CommandField ShowEditButton="True" />
    
</Fields>
        <HeaderTemplate>
        <%#Eval("username")%>
        </HeaderTemplate>
</asp:DetailsView>

    </div>
    </form>
</body>
</html>
