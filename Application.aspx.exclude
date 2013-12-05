<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Application.aspx.cs" Inherits="Teacher_Application" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <br />
        <br />
        <br />
        <fieldset style="width: 542px; height: 650px">
            <legend class="mailTitle" style="width: 193px">添加试题－－－应用题</legend>&nbsp; &nbsp;
            &nbsp;&nbsp;<br />
            <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 502px;
                height: 321px">
                <tr>
                    <td style="width: 125px; height: 26px; text-align: right">
                        &nbsp;教师：</td>
                    <td colspan="2" style="width: 117px; height: 26px; text-align: left">
                        <asp:Label ID="lblTeacher" runat="server" Width="76px"></asp:Label>
                    </td>
                    <td style="width: 9px">
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
                    <td style="width: 9px">
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
                        参考答案：</td>
                    <td colspan="2" style="width: 117px; height: 43px; text-align: left">
                        <asp:TextBox ID="txtAnswer" runat="server" TextMode="MultiLine" Width="310px"></asp:TextBox></td>
                    <td style="width: 9px; height: 43px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 125px; height: 42px; text-align: right">
                        附加图片：</td>
                    <td colspan="2" style="width: 117px; height: 42px; text-align: left">
                        <%--                     <input name="fulImg" type="file" id="fulImg" runat="server"　　onchange="document.getElementById('myImg').src =this.value ;" style="width: 325px" />
--%>
                        <asp:FileUpload ID="fulImg" runat="server" ForeColor="#C04000" Height="27px" Width="319px" />
                    </td>
                    <td style="width: 9px; height: 42px">
                        <asp:Button ID="btnPreview" runat="server" Height="26px" OnClick="btnPreview_Click"
                            OnClientClick="javascript:Preview(fulImg.Text)" Text="预览图片" Width="66px" /></td>
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
    
    </div>
    </form>
</body>
</html>
