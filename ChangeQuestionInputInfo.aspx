<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangeQuestionInputInfo.aspx.cs" Inherits="Teacher_ChangeQuestionInputInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    <fieldset style="WIDTH: 483px; HEIGHT: 354px">
    <legend class="mailTitle">填空题详细信息</legend>
        <br />
        <table border="0" cellpadding="0" cellspacing="0" style=" text-align:center; width: 441px; height: 357px;">
            <tr>
                <td style="text-align: center; width:120px">
                    &nbsp;填空题编号：</td>
                <td style="text-align: left; width: 281px;">
                <asp:TextBox ID="txtQuestionID" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align: center">
                    章节：</td>
                <td style="width: 281px; text-align: left">
                    <asp:TextBox ID="TxtChapter" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align: center">
                    所属课程号：</td>
                <td style="width: 281px; text-align: left">
                    <asp:TextBox ID="TxtCourseID" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align: center">
                    填空题问题：</td>
                <td style="width: 281px; text-align: left">
                    <asp:TextBox ID="txtContent" runat="server" EnableTheming="True" Height="108px" TextMode="MultiLine"
                        Width="314px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align: center">
                    正选答案：</td>
                <td style="width: 281px; text-align: left">
                    <asp:TextBox ID="answerTxt" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center; height: 55px;">
                    &nbsp;
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="保存" Font-Size="14pt" Height="29px" Width="75px" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="取消" Font-Size="14pt" Height="28px" Width="73px" />
                    </td>
            </tr>
            <tr>
                <td style="text-align: center; height: 45px;">
                    </td>
                <td style="text-align: left; width: 281px; height: 45px;">
                    <asp:Label ID="lblMessage" runat="server" style="color: red; font-family: 宋体"></asp:Label></td>
            </tr>
        </table>
    </fieldset>   
    </div>
    </form>
</body>
</html>
