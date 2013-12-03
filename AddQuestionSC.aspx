<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddQuestionSC.aspx.cs" Inherits="Teacher_AddExamination" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>添加试题</title>
    <script language="javascript" type="text/javascript"> 
    function Preview(imgSrc) 
    {
    　　　document.getElementById("Image1").src = imgSrc;     
    } 
　　</script> 

</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <br />
        <br />
        <br />
        <fieldset style="width: 542px; height: 471px">
            <legend class="mailTitle" style="width: 193px">添加试题－－－单项选择</legend>&nbsp; &nbsp; &nbsp;&nbsp;<br />
            <table align="center" border="0" cellpadding="0" cellspacing="0" style="height: 321px; width: 502px;">
                <tr>
                    <td style="height: 26px; text-align: right; width: 125px;">
                        &nbsp;教师：</td>
                    <td colspan="2" style="height: 26px; text-align: left; width: 117px;">
                        <asp:Label ID="lblTeacher" runat="server" Width="76px"></asp:Label>
                    </td>
                    <td style="width: 9px">
                    </td>
                </tr> 
                <tr>
                    <td style="height: 29px; text-align: right; width: 125px;">
                        &nbsp;所属课程：</td>
                    <td colspan="2" style="height: 29px; text-align: left; width: 117px;">
                         <asp:Label ID="lblCourseName" runat="server" Text="" Width="210px"></asp:Label>
                    </td>
                    <td style="width: 9px; height: 29px;">
                    </td>
                </tr>                 
                <tr>
                    <td style="height: 27px; text-align: right; width: 125px;">
                        &nbsp;章：</td>
                    <td colspan="2" style="height: 27px; text-align: left; width: 117px;">
                        <asp:TextBox ID="txtChapter" runat="server" Width="105px"></asp:TextBox></td>
                    <td style="width: 9px">
                        <asp:CheckBox ID="cbShare" runat="server" Text="共享" Width="58px" Checked="True" ForeColor="Blue" /></td>
                </tr>
                <tr>
                    <td style="height: 27px; text-align: right; width: 125px;">
                        &nbsp;题号：
                    </td>
                    <td colspan="2" style="height: 27px; text-align: left; width: 117px;">
                        <asp:TextBox ID="txtID" runat="server" Width="100px"></asp:TextBox></td>                    
                    <td style="width: 9px; height: 27px;">
                        <asp:CheckBox ID="cbID" runat="server" ForeColor="Blue" Text="递增" Width="60px" Checked="True" /></td>
                </tr>
                <tr>
                    <td style="text-align: right; height: 122px; width: 125px;">
                        &nbsp;试题题目：</td>
                    <td colspan="2" style="text-align: left; height: 122px; width: 117px;">
                        <asp:TextBox ID="txtContent" runat="server" TextMode="MultiLine" Height="108px" Width="314px" EnableTheming="True"></asp:TextBox></td>
                    <td style="width: 9px">
                        <asp:RequiredFieldValidator ID="rfvContent" runat="server" ErrorMessage="试题题目不能空" ControlToValidate="txtContent">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="text-align: right; width: 125px;">
                        &nbsp;选项A：</td>
                    <td colspan="2" style="text-align: left; width: 117px;">
                        <asp:TextBox ID="txtAnsA" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
                    <td style="width: 9px">
                        <asp:RequiredFieldValidator ID="rfvA" runat="server" ErrorMessage="选项Ａ内容不能空" ControlToValidate="txtAnsA">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="text-align: right; width: 125px;">
                        &nbsp;选项B：</td>
                    <td colspan="2" style="text-align: left; width: 117px;">
                        <asp:TextBox ID="txtAnsB" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
                    <td style="width: 9px">
                        <asp:RequiredFieldValidator ID="rfvB" runat="server" ErrorMessage="选项Ｂ内容不能空" ControlToValidate="txtAnsB">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="text-align: right; width: 125px;">
                        &nbsp;选项C：</td>
                    <td colspan="2" style="text-align: left; width: 117px;">
                        <asp:TextBox ID="txtAnsC" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
                    <td style="width: 9px">
                        <asp:RequiredFieldValidator ID="rfvC" runat="server" ErrorMessage="选项Ｃ内容不能空" ControlToValidate="txtAnsC">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="text-align: right; width: 125px;">
                        &nbsp;选项D：</td>
                    <td colspan="2" style="text-align: left; width: 117px;">
                        <asp:TextBox ID="txtAnsD" runat="server"  TextMode="MultiLine" Width="316px"></asp:TextBox></td>
                    <td style="width: 9px">
                        <asp:RequiredFieldValidator ID="rfvD" runat="server" ErrorMessage="选项Ｄ内容不能空" ControlToValidate="txtAnsD">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="height: 43px; text-align: right; width: 125px;">
                        &nbsp;正确选项：</td>
                    <td colspan="2" style="height: 43px; text-align: left; width: 117px;">
                        <asp:RadioButtonList ID="rblRightAns" runat="server" RepeatDirection="Horizontal"
                            RepeatLayout="Flow" BackColor="#C0FFFF" Width="137px" Height="25px">
                            <asp:ListItem Value="1">A</asp:ListItem>
                            <asp:ListItem Value="2">B</asp:ListItem>
                            <asp:ListItem Value="3">C</asp:ListItem>
                            <asp:ListItem Value="4">D</asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td style="width: 9px; height: 43px;">
                        </td>
                </tr>

                <tr>
                    <td colspan="3" style="text-align: center; height: 26px;">
                        <asp:Button ID="btnConfirm" runat="server" OnClick="btnConfirm_Click" Text="确定" Font-Size="12pt" Height="31px" Width="69px" />
                        <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="重置" Font-Size="12pt" Height="31px" Width="63px" />&nbsp;
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                            ShowSummary="False" />
                    </td>
                    <td style="width: 9px">
                        &nbsp;</td>
                </tr>
            </table>
        </fieldset>    
    </div>
    </form>
</body>
</html>
