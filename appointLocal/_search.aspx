<%@ Page Language="C#" AutoEventWireup="true" CodeFile="_search.aspx.cs" Inherits="editStaff" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<script type="text/javascript" language="javascript">
    window.history.forward(1);
    document.attachEvent("onkeydown", my_onkeydown_handler);
    function my_onkeydown_handler() {
        switch (event.keyCode) {
            case 117: // F5;
                event.returnValue = false;
                event.keyCode = 0;
                window.status = "We have disabled F5";
                break;
        }
    }
</script>
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            text-align: right;
            width: 193px;
        }
        .style4
        {
            text-align: left;
            }
        .style18
        {
            text-align: right;
            width: 193px;
            font-weight: bold;
        }
        .style19
        {
            text-align: left;
        }
        .style47
        {
            font-size: medium;
            color: rgb(0, 0, 0);
        }
        </style>
</head>
<body style=" background-color:Black">
    <form id="form1" runat="server">
    <table border="2" style=" background-color:White; margin-left:150px; width:1040px">
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
        <td colspan="3" style="text-align: center; font-weight: 700">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <strong>
                <span style="font-size:12.0pt;line-height:150%;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">&nbsp;<asp:HyperLink ID="HyperLink4" 
                    runat="server" NavigateUrl="~/Default2.aspx">default2</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink5" runat="server" 
                    NavigateUrl="~/Default3.aspx">default3</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink6" runat="server" 
                    NavigateUrl="~/Default4.aspx">ToSQLDataSource</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;
                                </span></strong>&nbsp;&nbsp;&nbsp; 
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/_partnerlogin.aspx">Partners</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/_userlogin.aspx">Users</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/_allServices.aspx">All Services</asp:HyperLink>
            </td>
        </tr>
            <td>
                &nbsp;<br />
                <br />
                            <br />
                <br />
                <table class="style27">
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td class="style25">
                <table class="style1">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <p 
                                style="margin-bottom:0in;margin-bottom:.0001pt;line-height:150%">
                                <span 
                                    
                                    style="font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;; text-align: center;"> 
                                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span></p>
                            <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;text-align:
justify;line-height:150%">
                                <o:p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </o:p>
                                <asp:Label ID="welcome" 
                                    runat="server" style="font-weight: 700; color: #990000"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                </p>
                            <table class="style2">
                                <tr>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td class="style4" colspan="3">
                                        <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #000066"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style18">
                                        &nbsp;</td>
                                    <td class="style4">
                                        &nbsp;</td>
                                    <td class="style19">
                                        &nbsp;</td>
                                    <td class="style19">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style18">
                                        Service</td>
                                    <td class="style4">
                                        <asp:TextBox ID="savice" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="style19">
                                        <strong>Location</strong></td>
                                    <td class="style19">
                                        <asp:TextBox ID="location" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style18">
                                        &nbsp;</td>
                                    <td class="style4">
                                        &nbsp;</td>
                                    <td class="style19">
                                        &nbsp;</td>
                                    <td class="style19">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style18">
                                        Date</td>
                                    <td class="style4">
                                        <asp:TextBox ID="date" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="style19">
                                        <strong>Time</strong></td>
                                    <td class="style19">
                                        <asp:TextBox ID="time" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style18">
                                        &nbsp;</td>
                                    <td class="style4">
                                        &nbsp;</td>
                                    <td class="style19">
                                        &nbsp;</td>
                                    <td class="style19">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style18">
                                        &nbsp;</td>
                                    <td class="style4">
                                        <asp:Button ID="searchbtn" runat="server" Height="37px" 
                                            style="font-weight: 700; color: #990000" Text="Search" Width="159px" 
                                            onclick="updateButton_Click" />
                                    </td>
                                    <td class="style19">
                                        &nbsp;</td>
                                    <td class="style19">
                                        &nbsp;</td>
                                </tr>
                                </table>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      
<asp:Repeater ID="rptServices" runat="server">

    <HeaderTemplate>
       <table cellspacing="0" rules="all" border="1">
         
            <tr style="background-color:black; color:white; font-weight: bold;">
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

        </td>
            <td>
                <br />

    <div style="margin:auto; width:50%">
      
    </div>
                <br />
                <br />
                <table class="style27">
                    <tr>
                        <td>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="3" class="style1">
                <strong><em style="text-align: center">Copyright <span class="style47" 
                    style="font-family: arial, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 16px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                ©</span> Appoint 2017</td>
                    </tr>
                </table>
            &nbsp;</tr></table></form>
</body>
</html>
