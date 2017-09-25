<%@ Page Language="C#" AutoEventWireup="true" CodeFile="_usersignup.aspx.cs" Inherits="staff" MaintainScrollPositionOnPostback="true" %>

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
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                                User Registration&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </span></strong></td>
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
                            <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;text-align:
justify;line-height:150%">
                                <o:p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </o:p>&nbsp;
                                &nbsp;&nbsp;
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/_userlogin.aspx">Go to login page</asp:HyperLink>
                                </p>
                            <table class="style2">
                                <tr>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td class="style4">
                                        <asp:Label ID="Label1" runat="server" style="font-weight: 700; color: #000066;"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style18">
                                        Email</td>
                                    <td class="style4">
                                        <asp:TextBox ID="username" runat="server" Width="120px"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style18">
                                        Password</td>
                                    <td class="style4">
                                        <asp:TextBox ID="pwd" runat="server" Width="120px" TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style18">
                                        Retype
                                        Password</td>
                                    <td class="style4">
                                        <asp:TextBox ID="retypepwd" runat="server" Width="120px" TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style18">
                                        Firstname</td>
                                    <td class="style4">
                                        <asp:TextBox ID="firstname" runat="server" Width="120px"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style18">
                                        Lastname</td>
                                    <td class="style4">
                                        <asp:TextBox ID="lastname" runat="server" Width="120px"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style18">
                                        Phone</td>
                                    <td class="style4">
                                        <asp:TextBox ID="tel" runat="server" Width="120px"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td class="style4">
                                        <asp:Button ID="regbtn" runat="server" Height="35px" onclick="regbtn_Click" 
                                            style="font-weight: 700; font-size: medium" Text="Sign up" Width="127px" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                </table>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    </table>
                <p class="MsoNormal">
                    &nbsp;</p>
                <p class="MsoNormal">
                    &nbsp;</p>
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
