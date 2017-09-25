<%@ Page Language="C#" AutoEventWireup="true" CodeFile="_userpage.aspx.cs" Inherits="student" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
        .style4
        {
            width: 87px;
        }
        .style5
        {
            width: 322px;
        }
        .style7
        {
            width: 24px;
        }
        .style10
        {
            width: 33px;
        }
        .style11
        {
            width: 9px;
        }
        .style12
        {
            width: 115px;
        }
        .style13
        {
            width: 2px;
        }
        .style14
        {
            width: 75px;
        }
        .style15
        {
            width: 61px;
        }
        .style17
        {
            width: 10px;
            text-align: right;
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
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
        <td colspan="2" style="text-align: center; font-weight: 700">
                <table class="style2">
                    <tr>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style12">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style15">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style13">
                            &nbsp;</td>
                        <td class="style14">
                            &nbsp;</td>
                        <td class="style11">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
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
                            <p class="style1" 
                                style="margin-bottom:0in;margin-bottom:.0001pt;line-height:150%">
                                <span 
                                    
                                    style="font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;; text-align: center;"> 
                                <strong>User Page</strong></span></p>
                            <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;text-align:
justify;line-height:150%">
                                <o:p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </o:p>
                                <asp:Label ID="welcome" runat="server" 
                                    style="font-weight: 700; color: #800000;"></asp:Label>
&nbsp;&nbsp;<strong>&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                            <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;text-align:
justify;line-height:150%">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label1" runat="server" style="font-weight: 700; color: #000066"></asp:Label>
                            </p>
                            <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;text-align:
justify;line-height:150%">
                                <table class="style2">
                                    <tr>
                                        <td class="style13">
                                            &nbsp;</td>
                                        <td class="style17">
                                            &nbsp;</td>
                                        <td>
                                            <asp:TextBox ID="enqtxt" runat="server" Height="111px" 
                                                style="margin-left: 0px; margin-top: 0px" TextMode="MultiLine" Width="234px"></asp:TextBox>
                                            </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style13">
                                            &nbsp;</td>
                                        <td class="style17">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    </table>
                            </p>
                            <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;text-align:
justify;line-height:150%">
                                &nbsp;&nbsp;
                            </p>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            &nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                    </tr>
                </table>
                <strong><em style="text-align: center">Copyright <span class="style47" 
                    style="font-family: arial, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 16px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                ©</span> Appoint 2017</em></strong></td>
        </tr>
    </table>
    </form>
</body>
</html>
