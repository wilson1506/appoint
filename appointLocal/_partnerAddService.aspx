<%@ Page Language="C#" AutoEventWireup="true" CodeFile="_partnerAddService.aspx.cs" Inherits="staff" MaintainScrollPositionOnPostback="true" %>

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
            width: 237px;
        }
        .style4
        {
            text-align: left;
        }
        .style5
        {
        }
        .style18
        {
            text-align: right;
            width: 237px;
            font-weight: bold;
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
                <table class="style2">
                    <tr>
                        <td class="style5">
                                <strong>
                                <span style="font-size:12.0pt;line-height:150%;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </span>
                                <asp:HyperLink ID="HyperLink1" runat="server" 
                                    NavigateUrl="~/_partnerAddSchedule.aspx">Add Schedule</asp:HyperLink>
                                </strong></td>
                    </tr>
                </table>
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
                            <p class="style25" 
                                style="margin-bottom:0in;margin-bottom:.0001pt;line-height:150%">
                                <span 
                                    
                                    style="font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;; text-align: center;"> 
                                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Appoint 
                                Business&nbsp;Partner Add Service!</strong></span></p>
                            <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;text-align:
justify;line-height:150%">
                                <o:p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </o:p>
                                <asp:Label ID="welcome" runat="server" style="font-weight: 700; color: #990000"></asp:Label>
                                &nbsp;
                                &nbsp;&nbsp;
                                </p>
                            <table class="style2">
                                <tr>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td class="style4">
                                        <asp:Label ID="Label1" runat="server" style="font-weight: 700; color: #000066;"></asp:Label>
                                    </td>
                                    <td>
                                <asp:Label ID="welcome1" runat="server" style="font-weight: 700; color: #990000" 
                                            Visible="False"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style18">
                                        &nbsp;Service 
                                        Name</td>
                                    <td class="style4">
                                        <asp:TextBox ID="servicename" runat="server" Width="120px"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style18">
                                        Description 
                                        [max 500 chars]</td>
                                    <td class="style4">
                                        <asp:TextBox ID="desc" runat="server" Width="120px" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style18">
                                        Price of Service</td>
                                    <td class="style4">
                                        <asp:TextBox ID="price" runat="server" Width="120px"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td class="style4">
                                        <asp:Button ID="regbtn" runat="server" Height="35px" onclick="regbtn_Click" 
                                            style="font-weight: 700; font-size: medium" Text="Add" Width="127px" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                </table>
                        </td>
                    </tr>
                    </table>
                        <span style="font-size:12.0pt;line-height:150%;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span style="font-size:12.0pt;line-height:150%;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">
<asp:Label ID="detailsLabel" runat="server" ForeColor="Red" />

                </span>
                <br />




                <asp:GridView ID="GridView1" runat="server" CssClass="GridMain" 
                    CellPadding="14" GridLines="None" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource2" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <RowStyle CssClass="GridRow" />
                    <SelectedRowStyle CssClass="GridSelectedRow" />
                    <HeaderStyle CssClass="GridHeader" />
                    <Columns>
                        <asp:BoundField DataField="username" HeaderText="Username" 
                            SortExpression="username" />
                        <asp:BoundField DataField="servicename" HeaderText="Service Name" 
                            SortExpression="servicename" />
                        <asp:BoundField DataField="descriptn" HeaderText="Description" 
                            SortExpression="descriptn" />
                        <asp:BoundField DataField="price" HeaderText="Service Price" SortExpression="price" />
                        <asp:ButtonField CommandName="Select" Text="Select" />
                    </Columns>
                </asp:GridView>

                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:aunConnectionString %>" 
                    SelectCommand="SELECT * FROM [savice] WHERE ([username] = @username)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="welcome1" Name="username" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

                </span>
                <p class="MsoNormal">
                    &nbsp;</p>
                <p class="MsoNormal">
                    &nbsp;</p>
            </td>
            <td>
                <br />
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
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="3" class="style1">
                <strong><em style="text-align: center">Copyright <span class="style47" 
                    style="font-family: arial, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 16px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                ©</span> Appoint 2017</em></strong></td>
        </tr>
    </table>
    </form>
</body>
</html>
