<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangeQuestionSCInfo.aspx.cs" Inherits="Teacher_ChangeQuestionSCInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    <fieldset style="WIDTH: 483px; HEIGHT: 448px">
    <legend class="mailTitle">单选题详细信息</legend>
        <br />
        <table border="0" cellpadding="0" cellspacing="0" style=" text-align:center; width: 441px; height: 357px;">
            <tr>
                <td style="text-align: center; width:120px">
                    &nbsp;单选题编号：</td>
                <td style="text-align: left; width: 281px;">
                    &nbsp;<asp:TextBox ID="TxtId" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align: center">
                    &nbsp;单选题问题：</td>
                <td style="text-align: left; width: 281px;">
                <asp:TextBox ID="txtQuestionText" runat="server" TextMode="MultiLine" Width="314px" Height="113px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align: center">
                    &nbsp;答案A：</td>
                <td style="text-align: left; width: 281px;">
                    <asp:TextBox ID="txtChooseA" runat="server" MaxLength="12" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
            </tr> 
            <tr>
                <td style="text-align: center">
                    答案B：</td>
                <td style="width: 281px; text-align: left">
                    <asp:TextBox ID="TxtChooseB" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align: center">
                    答案C：</td>
                <td style="width: 281px; text-align: left">
                    <asp:TextBox ID="TxtChooseC" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align: center">
                    答案D：</td>
                <td style="width: 281px; text-align: left">
                    <asp:TextBox ID="TxtChooseD" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align: center; height: 19px;">
                    &nbsp;正选答案：</td>
                <td style="text-align: left; width: 281px; height: 19px;">
                  <asp:RadioButtonList ID="rblAnswer" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                     <asp:ListItem Value="A">A</asp:ListItem>
                     <asp:ListItem Value="B">B</asp:ListItem>
                      <asp:ListItem>C</asp:ListItem>
                      <asp:ListItem>D</asp:ListItem>
                  </asp:RadioButtonList></td>
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
                    <asp:TextBox ID="txtQuestionID" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center; height: 55px;">
                    &nbsp;
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="保存" />
                <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="取消" />
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
