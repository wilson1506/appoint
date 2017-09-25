<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 72px;
        }
        .style4
        {
            width: 155px;
        }
        .style5
        {
        }
        .style7
        {
            width: 69px;
        }
        .style8
        {
            width: 161px;
        }
        .style9
        {
            width: 72px;
            height: 26px;
        }
        .style10
        {
            width: 69px;
            height: 26px;
        }
        .style11
        {
            width: 161px;
            height: 26px;
        }
        .style12
        {
            width: 125px;
            height: 26px;
        }
        .style13
        {
            width: 155px;
            height: 26px;
        }
        .style14
        {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style5">
                    <asp:Label ID="Label4" runat="server" Text="Days of the week"></asp:Label>
                </td>
                <td class="style4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text="From"></asp:Label>
                </td>
                <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="To"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style10">
                    <asp:Label ID="Label3" runat="server" Text="Service ID"></asp:Label>
                </td>
                <td class="style11">
                    <asp:DropDownList ID="saviceidddl" runat="server" AutoPostBack="True" 
                        Height="20px" onselectedindexchanged="saviceidddl_SelectedIndexChanged" 
                        style="margin-left: 0px" Width="140px">
                        <asp:ListItem>Select a Service</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style12">
                    <asp:CheckBox ID="MondayCheckBox" runat="server" Text="Monday" />
                </td>
                <td class="style13">
                    <asp:TextBox ID="mondaystarttimetxt" runat="server"></asp:TextBox>
                </td>
                <td class="style14">
                    <asp:TextBox ID="mondayendtimetxt" runat="server"></asp:TextBox>
                </td>
                <td class="style14">
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style5">
                    <asp:CheckBox ID="TuesdayCheckBox" runat="server" Text="Tuesday" />
                </td>
                <td class="style4">
                    <asp:TextBox ID="tuesdaystarttimetxt" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="tuesdayendtimetxt" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style7">
                    <asp:Label ID="Label1" runat="server" Text="Start Date"></asp:Label>
                </td>
                <td class="style8">
                    <asp:TextBox ID="startdatetxt" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:CheckBox ID="WednesdayCheckBox" runat="server" Text="Wednesday" />
                </td>
                <td class="style4">
                    <asp:TextBox ID="wednesdaystarttimetxt" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="wednesdayendtimetxt" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style5">
                    <asp:CheckBox ID="ThursdayCheckBox" runat="server" Text="Thursday" />
                </td>
                <td class="style4">
                    <asp:TextBox ID="thursdaystarttimetxt" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="thursdayendtimetxt" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style7">
                    <asp:Label ID="Label2" runat="server" Text="End Date"></asp:Label>
                </td>
                <td class="style8">
                    <asp:TextBox ID="enddatetxt" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:CheckBox ID="FridayCheckBox" runat="server" Text="Friday" />
                </td>
                <td class="style4">
                    <asp:TextBox ID="fridaystarttimetxt" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="fridayendtimetxt" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style5">
                    <asp:CheckBox ID="SaturdayCheckBox" runat="server" Text="Saturday" />
                </td>
                <td class="style4">
                    <asp:TextBox ID="saturdaystarttimetxt" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="saturdayendtimetxt" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Width="40px"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:CheckBox ID="SundayCheckBox" runat="server" Text="Sunday" />
                </td>
                <td class="style4">
                    <asp:TextBox ID="sundaystarttimetxt" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="sundayendtimetxt" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style5" colspan="3">
                    <asp:Button ID="schedulebtn" runat="server" Height="40px" 
                        onclick="schedulebtn_Click" Text="Make Schedule" Width="200px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
&nbsp;<br />
        <br />
    
    </div>
    </form>
</body>
</html>
