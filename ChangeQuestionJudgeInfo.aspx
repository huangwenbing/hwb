<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangeQuestionJudgeInfo.aspx.cs" Inherits="Teacher_ChangeQuestionJudgeInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    <fieldset style="WIDTH: 483px; HEIGHT: 290px">
    <legend class="mailTitle">判断题详细信息</legend>
        <br />
        <table border="0" cellpadding="0" cellspacing="0" style=" text-align:center; width: 441px; height: 357px;">
            <tr>
                <td style="text-align: center; width:120px">
                    &nbsp;判断题编号：</td>
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
                    判断题问题：</td>
                <td style="width: 281px; text-align: left">
                    <asp:TextBox ID="txtContent" runat="server" EnableTheming="True" Height="108px" TextMode="MultiLine"
                        Width="314px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align: center">
                    正选答案：</td>
                <td style="width: 281px; text-align: left">
                    <asp:RadioButtonList ID="rblRightAns" runat="server" BackColor="#C0FFFF" Height="25px"
                        RepeatDirection="Horizontal" RepeatLayout="Flow" Width="137px">
                        <asp:ListItem Value="对">对</asp:ListItem>
                        <asp:ListItem Value="错">错</asp:ListItem>
                    </asp:RadioButtonList></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center; height: 35px;">
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="保存" Font-Size="14pt" Height="26px" Width="69px" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="取消" Font-Size="14pt" Height="26px" Width="69px" />
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
