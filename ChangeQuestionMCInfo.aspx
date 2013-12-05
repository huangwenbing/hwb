<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangeQuestionMCInfo.aspx.cs" Inherits="Teacher_ChangeQuestionMCInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    <fieldset style="WIDTH: 483px; HEIGHT: 448px">
    <legend class="mailTitle">多选题详细信息</legend>
        <br />
        <table border="0" cellpadding="0" cellspacing="0" style=" text-align:center; width: 441px; height: 357px;">
            <tr>
                <td style="width: 120px; text-align: center">
                    所属课程号：</td>
                <td style="width: 281px; text-align: left">
                    <asp:TextBox ID="TxtCourseID" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 120px; text-align: center">
                    章节：</td>
                <td style="width: 281px; text-align: left">
                    <asp:TextBox ID="TxtChapter" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align: center; width:120px">
                    &nbsp;多选题编号：</td>
                <td style="text-align: left; width: 281px;">
                <asp:TextBox ID="txtQuestionID" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align: center">
                    &nbsp;多选题问题：</td>
                <td style="text-align: left; width: 281px;">
                    <asp:TextBox ID="txtContent" runat="server" EnableTheming="True" Height="108px" TextMode="MultiLine"
                        Width="314px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 125px; text-align: right">
                    &nbsp;选项A：</td>
                <td style="text-align: left; width: 281px;">
                    <asp:TextBox ID="txtAnsA" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
            </tr> 
            <tr>
                <td style="width: 125px; text-align: right">
                    &nbsp;选项B：</td>
                <td style="width: 281px; text-align: left">
                    <asp:TextBox ID="txtAnsB" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 125px; text-align: right">
                    &nbsp;选项C：</td>
                <td style="width: 281px; text-align: left">
                    <asp:TextBox ID="txtAnsC" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 125px; text-align: right">
                    &nbsp;选项D：</td>
                <td style="width: 281px; text-align: left">
                    <asp:TextBox ID="txtAnsD" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 125px; height: 43px; text-align: right">
                    选项E：</td>
                <td style="width: 281px; text-align: left">
                    <asp:TextBox ID="txtAnsE" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 125px; height: 43px; text-align: right">
                    选项F：</td>
                <td style="width: 281px; height: 19px; text-align: left">
                    <asp:TextBox ID="txtAnsF" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 125px; height: 43px; text-align: right">
                    选项G：</td>
                <td style="width: 281px; height: 19px; text-align: left">
                    <asp:TextBox ID="txtAnsG" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 125px; height: 43px; text-align: right">
                    选项H：</td>
                <td style="width: 281px; height: 19px; text-align: left">
                    <asp:TextBox ID="txtAnsH" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 125px; height: 43px; text-align: right">
                    选项I：</td>
                <td style="width: 281px; text-align: left">
                    <asp:TextBox ID="txtAnsI" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align: center; height: 32px;">
                    &nbsp;正选答案：</td>
                <td style="text-align: left; width: 281px; height: 32px;">
                    <asp:CheckBoxList ID="CkbAnswer" runat="server" RepeatDirection="Horizontal" Height="37px">
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                        <asp:ListItem>D</asp:ListItem>
                        <asp:ListItem>E</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                        <asp:ListItem>G</asp:ListItem>
                        <asp:ListItem>H</asp:ListItem>
                        <asp:ListItem>I</asp:ListItem>
                    </asp:CheckBoxList></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center; height: 55px;">
                    &nbsp;
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="保存" Font-Size="14pt" Height="28px" Width="69px" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="取消" Font-Size="14pt" Height="29px" Width="69px" />
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
