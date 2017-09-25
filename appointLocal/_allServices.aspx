<%@ Page Language="C#" AutoEventWireup="true" CodeFile="_allServices.aspx.cs" Inherits="feedback" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  <title>Appoint Partner Services In Repeater Mode</title>
</head>
<body>
  <form id="form1" runat="server">
    <div style="margin:auto; width:50%">
      
<asp:Repeater ID="rptServices" runat="server">

    <HeaderTemplate>
       <table cellspacing="0" rules="all" border="1">
         
            <tr style="background-color:black; color:white; font-weight: bold;">
                <th scope="col" style="width: 100px">
                    Username
                </th>
                <th scope="col" style="width: 150px">
                    Servicename
                </th>
                 <th scope="col" style="width: 300px">
                    Description
                </th>
                
                <th scope="col" style="width: 60px">
                    Price
                </th>
               
            </tr>
    </HeaderTemplate>
    <ItemTemplate>
        <tr style="height:50px; text-align:center">
            <td>
                <asp:Label ID="lblusername" runat="server" Text='<%# Eval("username") %>' />
            </td>
            <td>
                <asp:Label ID="lblservicename" runat="server" Text='<%# Eval("servicename") %>' />
            </td>
            <td>
                <asp:Label ID="lbldesc" runat="server" Text='<%# Eval("descriptn") %>' />
            </td>
           
            <td>
                <asp:Label ID="lblprice" runat="server" Text='<%# Eval("price") %>' />
            </td>
           
        </tr>
    </ItemTemplate>

    <FooterTemplate>
        </table>
    </FooterTemplate>

</asp:Repeater>

    </div>
  </form>
</body>
</html>