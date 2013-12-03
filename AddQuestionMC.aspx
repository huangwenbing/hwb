<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddQuestionMC.aspx.cs" Inherits="MChoose_MChooseInsert" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>添加多选题</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <br />
            <strong>添加试题－－－多项选择</strong><br />
            <br />
            <fieldset style="width: 542px; height: 650px">
                &nbsp; &nbsp; &nbsp;
                &nbsp;&nbsp;<br />
                <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 502px;
                    height: 321px">
                    <tr>
                        <td style="width: 125px; height: 26px; text-align: right">
                            &nbsp;教师：</td>
                        <td colspan="2" style="width: 117px; height: 26px; text-align: left">
                            <asp:Label ID="lblTeacher" runat="server" Width="84px"></asp:Label>
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
                            <asp:TextBox ID="txtChapter" runat="server" Width="97px"></asp:TextBox></td>
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
                        <td style="width: 125px; height: 27px; text-align: right">
                            答案个数：</td>
                        <td colspan="2" style="width: 117px; height: 27px; text-align: left">
                            <asp:TextBox ID="txtNum" runat="server" Width="100px"></asp:TextBox></td>
                        <td style="width: 9px; height: 27px">
                        </td>
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
                        <td style="width: 125px; text-align: right">
                            &nbsp;选项A：</td>
                        <td colspan="2" style="width: 117px; text-align: left">
                            <asp:TextBox ID="txtAnsA" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
                        <td style="width: 9px">
                            <asp:RequiredFieldValidator ID="rfvA" runat="server" ControlToValidate="txtAnsA"
                                ErrorMessage="选项Ａ内容不能空">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 125px; text-align: right">
                            &nbsp;选项B：</td>
                        <td colspan="2" style="width: 117px; text-align: left">
                            <asp:TextBox ID="txtAnsB" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
                        <td style="width: 9px">
                            <asp:RequiredFieldValidator ID="rfvB" runat="server" ControlToValidate="txtAnsB"
                                ErrorMessage="选项Ｂ内容不能空">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 125px; text-align: right">
                            &nbsp;选项C：</td>
                        <td colspan="2" style="width: 117px; text-align: left">
                            <asp:TextBox ID="txtAnsC" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
                        <td style="width: 9px">
                            <asp:RequiredFieldValidator ID="rfvC" runat="server" ControlToValidate="txtAnsC"
                                ErrorMessage="选项Ｃ内容不能空">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 125px; text-align: right">
                            &nbsp;选项D：</td>
                        <td colspan="2" style="width: 117px; text-align: left">
                            <asp:TextBox ID="txtAnsD" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
                        <td style="width: 9px; vertical-align: middle; text-align: left;">
                            <asp:RequiredFieldValidator ID="rfvD" runat="server" ControlToValidate="txtAnsD"
                                ErrorMessage="选项Ｄ内容不能空">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 125px; height: 43px; text-align: right">
                            选项E：</td>
                        <td colspan="2" style="width: 117px; height: 43px; text-align: left">
                            <asp:TextBox ID="txtAnsE" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
                        <td style="width: 9px; height: 43px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 125px; height: 43px; text-align: right">
                            选项F：</td>
                        <td colspan="2" style="width: 117px; height: 43px; text-align: left">
                            <asp:TextBox ID="txtAnsF" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
                        <td style="width: 9px; height: 43px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 125px; height: 43px; text-align: right">
                            选项G：</td>
                        <td colspan="2" style="width: 117px; height: 43px; text-align: left">
                            <asp:TextBox ID="txtAnsG" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
                        <td style="width: 9px; height: 43px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 125px; height: 43px; text-align: right">
                            选项H：</td>
                        <td colspan="2" style="width: 117px; height: 43px; text-align: left">
                            <asp:TextBox ID="txtAnsH" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
                        <td style="width: 9px; height: 43px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 125px; height: 43px; text-align: right">
                            选项I：</td>
                        <td colspan="2" style="width: 117px; height: 43px; text-align: left">
                            <asp:TextBox ID="txtAnsI" runat="server" TextMode="MultiLine" Width="316px"></asp:TextBox></td>
                        <td style="width: 9px; height: 43px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 125px; height: 43px; text-align: right">
                            &nbsp;正确选项：</td>
                        <td colspan="2" style="width: 117px; height: 43px; text-align: left; vertical-align: bottom;">
                            <br />
                            <asp:CheckBoxList ID="CkbAnswer" runat="server" RepeatDirection="Horizontal">
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
                        <td style="width: 9px; height: 43px">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 26px; text-align: center">
                            <asp:Button ID="btnOK" runat="server" Text="出题" OnClick="btnOK_Click" />
                            <asp:Button ID="btnClose" runat="server" Text="重置" />
                            &nbsp;
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                                ShowSummary="False" />
                        </td>
                        <td style="width: 9px">
                            &nbsp;</td>
                    </tr>
                </table>
            </fieldset>
        </div>
    
    </div>
    </form>
</body>
</html>
