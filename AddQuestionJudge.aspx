<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddQuestionJudge.aspx.cs" Inherits="Teacher_AddQuestionJudge" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>添加判断题</title>
<script language="javascript" type="text/javascript">
<!--

function TABLE1_onclick() {

}

// -->
</script>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
        <br />
        <br />
        <br />
    <fieldset style="width: 542px; height: 334px">
                <legend class="mailTitle" style="width: 193px">添加试题－－－判断题</legend>&nbsp; &nbsp; &nbsp;&nbsp;<br />
        <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 502px;
            height: 321px" id="TABLE1" language="javascript" onclick="return TABLE1_onclick()">
            <tr>
                <td style="width: 125px; height: 25px; text-align: right">
                    &nbsp;教师：</td>
                <td colspan="2" style="width: 117px; height: 25px; text-align: left">
                    <asp:Label ID="lblTeacher" runat="server" Width="76px"></asp:Label>
                </td>
                <td style="width: 9px; height: 25px;">
                </td>
            </tr>
            <tr>
                <td style="width: 125px; height: 29px; text-align: right">
                    &nbsp;所属课程：</td>
                <td colspan="2" style="width: 117px; height: 29px; text-align: left">
                    <asp:Label ID="lblCourseName" runat="server" Text="" Width="210px"></asp:Label>
                </td>
                <td style="width: 9px; height: 29px">
                </td>
            </tr>
            <tr>
                <td style="width: 125px; height: 27px; text-align: right">
                    &nbsp;章：</td>
                <td colspan="2" style="width: 117px; height: 27px; text-align: left">
                    <asp:TextBox ID="txtChapter" runat="server" Width="105px"></asp:TextBox></td>
                <td style="width: 9px; height: 27px;">
                    <asp:CheckBox ID="cbShare" runat="server" Checked="True" ForeColor="Blue" Text="共享"
                        Width="58px" /></td>
            </tr>
            <tr>
                <td style="width: 125px; height: 27px; text-align: right">
                    &nbsp;题号：
                </td>
                <td colspan="2" style="width: 117px; height: 27px; text-align: left">
                    <asp:TextBox ID="txtID" runat="server" Width="100px"></asp:TextBox></td>
                <td style="width: 9px; height: 27px">
                    <asp:CheckBox ID="cbID" runat="server" Checked="True" ForeColor="Blue" Text="递增"
                        Width="60px" /></td>
            </tr>
            <tr>
                <td style="width: 125px; height: 122px; text-align: right">
                    &nbsp;试题题目：</td>
                <td colspan="2" style="width: 117px; height: 122px; text-align: left">
                    <asp:TextBox ID="txtContent" runat="server" EnableTheming="True" Height="108px" TextMode="MultiLine"
                        Width="314px"></asp:TextBox></td>
                <td style="width: 9px">
                    <asp:RequiredFieldValidator ID="rfvContent" runat="server" ControlToValidate="txtContent"
                        ErrorMessage="试题题目不能空">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 125px; height: 43px; text-align: right">
                    &nbsp;正确选项：</td>
                <td colspan="2" style="width: 117px; height: 43px; text-align: left">
                    <asp:RadioButtonList ID="rblRightAns" runat="server" BackColor="#C0FFFF" Height="25px"
                        RepeatDirection="Horizontal" RepeatLayout="Flow" Width="137px">
                        <asp:ListItem Value="1">对</asp:ListItem>
                        <asp:ListItem Value="2">错</asp:ListItem>
                    </asp:RadioButtonList></td>
                <td style="width: 9px; height: 43px">
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 57px; text-align: center">
                    <asp:Button ID="btnConfirm" runat="server" Font-Size="12pt" Height="31px" OnClick="btnConfirm_Click"
                        Text="确定" Width="69px" />
                    <asp:Button ID="btnCancel" runat="server" Font-Size="12pt" Height="31px" OnClick="btnCancel_Click"
                        Text="重置" Width="63px" />&nbsp;
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                        ShowSummary="False" />
                </td>
                <td style="width: 9px; height: 57px;">
                    &nbsp;</td>
            </tr>
        </table>
         </fieldset>   
    </form>
</body>
</html>
