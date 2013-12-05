<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeacherChangePWD.aspx.cs" Inherits="Teacher_TeacherChangePWD" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        &nbsp;<br />
        <br />
        <br />
        &nbsp;<fieldset style="width: 344px; height: 250px; text-align: left">
            <legend class="mailTitle">教师修改密码</legend>
            <br />
            &nbsp;<br />
        <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 332px; height: 145px">
            <tr>
                <td style="width: 521px; text-align: right; height: 32px;">
                    &nbsp;输入旧密码：</td>
                <td style="width: 151px; height: 32px;">
                    <asp:TextBox ID="txtOldPwd" runat="server"></asp:TextBox>
                </td>                
                <td style="width: 100px; text-align: right; height: 32px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtOldPwd"
                        ErrorMessage="旧密码不能为空">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 521px; text-align: right; height: 35px;">
                    &nbsp;输入新密码：</td>
                <td style="width: 151px; height: 35px;">
                    <asp:TextBox ID="txtNewPwd" runat="server"></asp:TextBox>
                </td>
                <td style="width: 100px; text-align: right; height: 35px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNewPwd"
                        ErrorMessage="新密码不能为空">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 521px; text-align: right; height: 31px;">
                    再次输入新密码：</td>
                <td style="width: 151px; height: 31px;">
                    <asp:TextBox ID="txtNewPwdA" runat="server"></asp:TextBox>
                </td>
                <td style="width: 100px; text-align: right; height: 31px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNewPwdA"
                        ErrorMessage="再次新密码不能为空">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewPwd"
                        ControlToValidate="txtNewPwdA" ErrorMessage="两次新密码不相同">*</asp:CompareValidator></td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center; height: 56px;">
                    &nbsp;
                    <asp:Button ID="btnChange" runat="server" OnClick="btnChange_Click" Text="确定修改" Height="30px" Width="110px" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center; height: 40px;">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="42px" Width="326px" ShowMessageBox="True" ShowSummary="False" />
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Blue"></asp:Label>
                    &nbsp;
                </td>

            </tr>
        </table>
        </fieldset>    
    </div>
    </form>
</body>
</html>
