<%@ Page Language="C#" AutoEventWireup="true" CodeFile="_partnerlogin.aspx.cs" Inherits="homePage" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            background-color: #FFFFFF;
        }
        .style25
        {
            text-align: center;
        }
        .style27
        {
            width: 10px;
        }
        .style36
        {
            text-align: justify;
        }
        .style38
        {
            text-align: justify;
            height: 29px;
        }
        .style39
        {
            height: 29px;
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
        <td colspan="3" style="text-align: center; font-weight: 700">
                Partners Login Page</td>
        </tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                            <br />
                <br />
                <table class="style27">
                    <tr>
                        <td>
                            <br />
                            <br />
                            </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td class="style25">
                <br />
                    <table class="style1" width="100px">
                        <tr>
                            <td colspan="2" style="color: #800000; background-color: #FFFFFF">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label1" runat="server" style="font-weight: 700; color: #800000;"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style38">
                                <strong>Username</strong></td>
                            <td class="style39">
                                <asp:TextBox ID="username" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style36">
                                <strong>Password</strong></td>
                            <td>
                                <asp:TextBox ID="pwd" runat="server" TextMode="Password" Width="200px">*</asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                &nbsp;</td>
                            <td class="style1">
                                <asp:Button ID="loginbtn" runat="server" onclick="loginbtn_Click" Text="Login" 
                                Width="150px" Height="30px" 
                                    
                                    
                                    style="font-weight: 700; color: #800000; background-color: #FFFFFF; font-size: medium;" />
                            </td>
                        </tr>
                    </table>
                <div class="style36">
                    <p class="MsoNormal">
                        <span style="font-size:12.0pt;line-height:150%;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Don&#39;t have an account?
                        <asp:HyperLink ID="HyperLink1" runat="server" 
                            NavigateUrl="~/_partnersignup.aspx">Signup</asp:HyperLink>
                        ..<o:p></o:p></span></p>
                    <p class="MsoNormal">
                        &nbsp;</p>
                </div>
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
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="3" class="style25">
                <strong><em style="text-align: center">Copyright <span class="style47" 
                    style="font-family: arial, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 16px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                ©</span> Appoint 2017</em></strong></td>
        </tr>
    </table>
    </form>
</body>
</html>
