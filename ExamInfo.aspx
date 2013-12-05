<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ExamInfo.aspx.cs" Inherits="Teacher_ComPaper" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <strong>
        考试管理---- 试卷信息<br />
        </strong>
        <fieldset style="width: 542px; height: 650px; text-align: center">
            <table>
                <tr>
                    <td style="width: 144px; text-align: right;">
                        试卷号</td>
                    <td style="width: 289px; text-align: left;">
                        <asp:TextBox ID="txtEID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 144px; text-align: right;">
                        试卷标题</td>
                    <td style="width: 289px; text-align: left;">
                        <asp:TextBox ID="txtEtitle" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 144px; height: 26px; text-align: right;">
                        课程号</td>
                    <td style="width: 289px; height: 26px; text-align: left;">
                        <asp:TextBox ID="txtCourseID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 144px; text-align: right;">
                        出卷人ID</td>
                    <td style="width: 289px; text-align: left;">
                        <asp:TextBox ID="txtPeople" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 144px; text-align: right;">
                        专业号</td>
                    <td style="width: 289px; text-align: left;">
                        <asp:TextBox ID="txtPID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 144px; text-align: right;">
                        班级号</td>
                    <td style="width: 289px; text-align: left;">
                        <asp:TextBox ID="txtClassID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 144px; text-align: right;">
                        试卷名</td>
                    <td style="width: 289px; text-align: left;">
                        <asp:TextBox ID="txtEName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 144px; text-align: right;">
                        单选题数</td>
                    <td style="width: 289px; text-align: left;">
                        <asp:TextBox ID="txtSCNum" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 144px; text-align: right;">
                        单选每题分值</td>
                    <td style="width: 289px; text-align: left;">
                        <asp:TextBox ID="txtSCPoint" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 144px; text-align: right;">
                        多选题数</td>
                    <td style="width: 289px; text-align: left;">
                        <asp:TextBox ID="txtMCNum" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 144px; text-align: right;">
                        多选每题分值</td>
                    <td style="width: 289px; text-align: left;">
                        <asp:TextBox ID="txtMCPoint" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 144px; text-align: right;">
                        填空题数</td>
                    <td style="width: 289px; text-align: left;">
                        <asp:TextBox ID="txtINum" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 144px; height: 21px; text-align: right;">
                        填空每题分值</td>
                    <td style="width: 289px; height: 21px; text-align: left;">
                        <asp:TextBox ID="txtIPoint" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 144px; text-align: right;">
                        判断题数</td>
                    <td style="width: 289px; text-align: left;">
                        <asp:TextBox ID="txtJNum" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 144px; text-align: right;">
                        判断每题分值</td>
                    <td style="width: 289px; text-align: left;">
                        <asp:TextBox ID="txtJPoint" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 144px; text-align: right;">
                        应用题数</td>
                    <td style="width: 289px; text-align: left;">
                        <asp:TextBox ID="txtANum" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 144px; text-align: right;">
                        应用每题分值</td>
                    <td style="width: 289px; text-align: left;">
                        <asp:TextBox ID="txtAPoint" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 144px; text-align: right;">
                        出卷时间</td>
                    <td style="width: 289px; text-align: left;">
                        <asp:TextBox ID="txtTime" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 144px; text-align: right;">
                        考试有效开始时间</td>
                    <td style="width: 289px; text-align: left;">
                        <asp:TextBox ID="txtStartTime" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 144px; text-align: right;">
                        考试有效结束时间</td>
                    <td style="width: 289px; text-align: left;">
                        <asp:TextBox ID="txtEndTime" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 144px; text-align: right;">
                        考试时间</td>
                    <td style="width: 289px; text-align: left;">
                        <asp:TextBox ID="txtExamTime" runat="server"></asp:TextBox></td>
                </tr>
            </table>
            <br />
            <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="插入" />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button
                ID="btnCancel" runat="server" Text="取消" OnClick="btnCancel_Click" /><br />
        </fieldset>
    
    </div>
    </form>
</body>
</html>
