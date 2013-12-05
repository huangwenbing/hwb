<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangeExamInfo.aspx.cs" Inherits="Teacher_AssembledExam" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <fieldset style="width: 542px; height: 515px">
            <legend class="mailTitle" style="width: 193px">试卷信息</legend>&nbsp; &nbsp; &nbsp;&nbsp;<br />
            <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 568px;
                height: 342px">
                <tr>
                    <td style="width: 148px; height: 26px; text-align: center">
                        试卷编号:</td>
                    <td colspan="2" style="width: 34px; height: 26px; text-align: left">
                        <asp:TextBox ID="txtExamID" runat="server"></asp:TextBox></td>
                    <td colspan="1" style="width: 68px; height: 26px; text-align: left">
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtExamID"
                            ErrorMessage="输入不能为空">*</asp:RequiredFieldValidator></td>
                    <td style="width: 175px; height: 26px">
                    </td>
                    <td style="width: 72px; height: 26px">
                    </td>
                    <td style="width: 75px; height: 26px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 148px; height: 26px; text-align: center">
                        试卷标题:</td>
                    <td colspan="2" style="width: 34px; height: 26px; text-align: left">
                    <asp:TextBox ID="txtTitle" runat="server" Width="151px"></asp:TextBox></td>
                    <td colspan="1" style="width: 68px; height: 26px; text-align: left">
                    </td>
                    <td style="width: 175px; height: 26px;">
                        </td>
                    <td style="width: 72px; height: 26px;">
                    </td>
                    <td style="width: 75px; height: 26px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 148px; height: 29px; text-align: center">
                        课程编号:</td>
                    <td colspan="2" style="width: 34px; height: 29px; text-align: left">
                        <asp:DropDownList ID="ddlCourseID" runat="server" AutoPostBack="True">
                        </asp:DropDownList></td>
                    <td colspan="1" style="width: 68px; height: 29px; text-align: left">
                    </td>
                    <td style="width: 175px; height: 29px">
                        出题人编号:</td>
                    <td style="width: 72px; height: 29px; text-align: left;">
                        <asp:TextBox ID="txtPropositionPeopleID" runat="server" ReadOnly="True"></asp:TextBox></td>
                    <td style="width: 75px; height: 29px; text-align: left">
                    </td>
                </tr>
                <tr>
                    <td style="width: 148px; height: 27px; text-align: center">
                        专业编号:&nbsp;</td>
                    <td colspan="2" style="width: 34px; height: 27px; text-align: left">
                        <asp:DropDownList ID="ddlProfessionalID" runat="server" AutoPostBack="True">
                        </asp:DropDownList></td>
                    <td colspan="1" style="width: 68px; height: 27px; text-align: left">
                    </td>
                    <td style="width: 175px">
                        班级编号:</td>
                    <td style="width: 72px; text-align: left;">
                        <asp:DropDownList ID="ddlClassID" runat="server" AutoPostBack="True">
                        </asp:DropDownList></td>
                    <td style="width: 75px; text-align: left">
                    </td>
                </tr>
                <tr>
                    <td style="width: 148px; height: 27px; text-align: center">
                        试卷名:&nbsp;</td>
                    <td colspan="2" style="width: 34px; height: 27px; text-align: left">
                        <asp:TextBox ID="txtExamName" runat="server" Width="153px"></asp:TextBox></td>
                    <td colspan="1" style="width: 68px; height: 27px; text-align: left">
                    </td>
                    <td style="width: 175px; height: 27px">
                        创建时间:</td>
                    <td style="width: 72px; height: 27px">
                        <asp:TextBox ID="txtCreationTime" runat="server" ReadOnly="True"></asp:TextBox></td>
                    <td style="width: 75px; height: 27px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 148px; height: 31px; text-align: center">
                        开始时间:</td>
                    <td colspan="2" style="width: 34px; height: 31px; text-align: left">
                        <asp:TextBox ID="txtStartTime" runat="server"></asp:TextBox></td>
                    <td colspan="1" style="width: 68px; height: 31px; text-align: left">
                    </td>
                    <td style="width: 175px; height: 31px">
                        结束时间:</td>
                    <td style="width: 72px; height: 31px">
                        <asp:TextBox ID="txtEndTime" runat="server"></asp:TextBox></td>
                    <td style="width: 75px; height: 31px">
                    </td>
                </tr>
                <tr style="color: #000000">
                    <td style="width: 148px; height: 32px; text-align: center">
                        限时:</td>
                    <td colspan="2" style="width: 34px; height: 32px; text-align: left">
                        <%--                        <img  alt="图片位置"  id="myImg" src="" runat="server"　style="display:none;width: 310px; height: 91px" />
--%>
                        <asp:TextBox ID="txtLimitedTime" runat="server"></asp:TextBox></td>
                    <td colspan="1" style="width: 68px; height: 32px; text-align: left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtLimitedTime"
                            ErrorMessage="输入不能为空">*</asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValidator11"
                                runat="server" ControlToValidate="txtLimitedTime" ErrorMessage="请输入正确的数值" MaximumValue="1000"
                                MinimumValue="0" Type="Integer">*</asp:RangeValidator></td>
                    <td colspan="2" style="height: 32px">
                        以分钟为单位最大1000分钟</td>
                    <td style="width: 75px; height: 32px">
                    </td>
                </tr>
                <tr style="color: #000000">
                    <td colspan="7" style="height: 32px">
                        以下输入数值不得超过100</td>
                </tr>
                <tr>
                    <td style="width: 148px; height: 43px; text-align: center">
                        单选题数:</td>
                    <td colspan="2" style="width: 34px; height: 43px; text-align: left">
                        <asp:TextBox ID="txtSchooseNum" runat="server"></asp:TextBox></td>
                    <td colspan="1" style="width: 68px; height: 43px; text-align: left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSchooseNum"
                            ErrorMessage="输入不能为空">*</asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValidator1"
                                runat="server" ControlToValidate="txtSchooseNum" ErrorMessage="请输入正确的数值" MaximumValue="100"
                                MinimumValue="0" Type="Integer">*</asp:RangeValidator></td>
                    <td style="width: 175px; height: 43px">
                        单选题分值:</td>
                    <td style="width: 72px; height: 43px">
                        <asp:TextBox ID="txtSchoosePoint" runat="server"></asp:TextBox></td>
                    <td style="width: 75px; height: 43px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtSchoosePoint"
                            ErrorMessage="输入不能为空">*</asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValidator6"
                                runat="server" ControlToValidate="txtSchoosePoint" ErrorMessage="请输入正确的数值" MaximumValue="100"
                                MinimumValue="0" Type="Integer">*</asp:RangeValidator></td>
                </tr>
                <tr>
                    <td style="width: 148px; height: 42px; text-align: center">
                        多选题数：</td>
                    <td colspan="2" style="width: 34px; height: 42px; text-align: left">
                        <%--                     <input name="fulImg" type="file" id="fulImg" runat="server"　　onchange="document.getElementById('myImg').src =this.value ;" style="width: 325px" />
--%>
                        <asp:TextBox ID="txtMchooseNum" runat="server"></asp:TextBox></td>
                    <td colspan="1" style="width: 68px; height: 42px; text-align: left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMchooseNum"
                            ErrorMessage="输入不能为空">*</asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValidator2"
                                runat="server" ControlToValidate="txtMchooseNum" ErrorMessage="请输入正确的数值" MaximumValue="100"
                                MinimumValue="0" Type="Integer">*</asp:RangeValidator></td>
                    <td style="width: 175px; height: 42px">
                        多选题分值:</td>
                    <td style="width: 72px; height: 42px">
                        <asp:TextBox ID="txtMchoosePoint" runat="server"></asp:TextBox></td>
                    <td style="width: 75px; height: 42px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtMchoosePoint"
                            ErrorMessage="输入不能为空">*</asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValidator7"
                                runat="server" ControlToValidate="txtMchoosePoint" ErrorMessage="请输入正确的数值" MaximumValue="100"
                                MinimumValue="0" Type="Integer">*</asp:RangeValidator></td>
                </tr>
                <tr>
                    <td style="width: 148px; height: 42px; text-align: center">
                        填空题数:</td>
                    <td colspan="2" style="width: 34px; height: 42px; text-align: left">
                        <asp:TextBox ID="txtInputNum" runat="server"></asp:TextBox></td>
                    <td colspan="1" style="width: 68px; height: 42px; text-align: left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtInputNum"
                            ErrorMessage="输入不能为空">*</asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValidator3"
                                runat="server" ControlToValidate="txtInputNum" ErrorMessage="请输入正确的数值" MaximumValue="100"
                                MinimumValue="0" Type="Integer">*</asp:RangeValidator></td>
                    <td style="width: 175px; height: 42px">
                        填空题分值:</td>
                    <td style="width: 72px; height: 42px">
                        <asp:TextBox ID="txtInputPoint" runat="server"></asp:TextBox></td>
                    <td style="width: 75px; height: 42px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtInputPoint"
                            ErrorMessage="输入不能为空">*</asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValidator8"
                                runat="server" ControlToValidate="txtInputPoint" ErrorMessage="请输入正确的数值" MaximumValue="100"
                                MinimumValue="0" Type="Integer">*</asp:RangeValidator></td>
                </tr>
                <tr>
                    <td style="width: 148px; height: 42px; text-align: center">
                        判断题数:</td>
                    <td colspan="2" style="width: 34px; height: 42px; text-align: left">
                        <asp:TextBox ID="txtJudgeNum" runat="server"></asp:TextBox></td>
                    <td colspan="1" style="width: 68px; height: 42px; text-align: left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtJudgeNum"
                            ErrorMessage="输入不能为空">*</asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValidator4"
                                runat="server" ControlToValidate="txtJudgeNum" ErrorMessage="请输入正确的数值" MaximumValue="100"
                                MinimumValue="0" Type="Integer">*</asp:RangeValidator></td>
                    <td style="width: 175px; height: 42px">
                        判断题分值:</td>
                    <td style="width: 72px; height: 42px">
                        <asp:TextBox ID="txtJudgePoint" runat="server"></asp:TextBox></td>
                    <td style="width: 75px; height: 42px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtJudgePoint"
                            ErrorMessage="输入不能为空">*</asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValidator9"
                                runat="server" ControlToValidate="txtJudgePoint" ErrorMessage="请输入正确的数值" MaximumValue="100"
                                MinimumValue="0" Type="Integer">*</asp:RangeValidator></td>
                </tr>
                <tr>
                    <td style="width: 148px; height: 42px; text-align: center">
                        应用题数:</td>
                    <td colspan="2" style="width: 34px; height: 42px; text-align: left">
                        <asp:TextBox ID="txtApplicationNum" runat="server"></asp:TextBox></td>
                    <td colspan="1" style="width: 68px; height: 42px; text-align: left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtApplicationNum"
                            ErrorMessage="输入不能为空">*</asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValidator5"
                                runat="server" ControlToValidate="txtApplicationNum" ErrorMessage="请输入正确的数值"
                                MaximumValue="100" MinimumValue="0" Type="Integer">*</asp:RangeValidator></td>
                    <td style="width: 175px; height: 42px">
                        应用题分值:</td>
                    <td style="width: 72px; height: 42px">
                        <asp:TextBox ID="txtApplicationPoint" runat="server"></asp:TextBox></td>
                    <td style="width: 75px; height: 42px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtApplicationPoint"
                            ErrorMessage="输入不能为空">*</asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValidator10"
                                runat="server" ControlToValidate="txtApplicationPoint" ErrorMessage="请输入正确的数值"
                                MaximumValue="100" MinimumValue="0" Type="Integer">*</asp:RangeValidator></td>
                </tr>
                <tr>
                    <td style="width: 148px; height: 42px; text-align: center">
                        及格分数:</td>
                    <td colspan="2" style="width: 34px; height: 42px; text-align: left">
                        <asp:TextBox ID="txtPass" runat="server"></asp:TextBox></td>
                    <td colspan="1" style="width: 68px; height: 42px; text-align: left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtPass"
                            ErrorMessage="输入不能为空">*</asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValidator12"
                                runat="server" ControlToValidate="txtPass" ErrorMessage="请输入正确的数值" MaximumValue="10000"
                                MinimumValue="0" Type="Integer">*</asp:RangeValidator></td>
                    <td style="width: 175px; height: 42px">
                        <asp:Button ID="btnStat" runat="server" OnClick="btnStat_Click" Text="统计总分" /></td>
                    <td style="width: 72px; height: 42px">
                        <asp:Label ID="lblStat" runat="server"></asp:Label>
                    </td>
                    <td style="width: 75px; height: 42px">
                    </td>
                </tr>
                <tr>
                    <td colspan="6" style="height: 43px; text-align: center">
                        <asp:Button ID="btnSave" runat="server" Text="提交" OnClick="btnSave_Click" />
                        &nbsp; &nbsp;&nbsp;<asp:Button ID="btnCancel" runat="server" Text="返回" CausesValidation="False" OnClick="btnCancel_Click" /></td>
                    <td colspan="1" style="width: 75px; height: 43px; text-align: center">
                    </td>
                </tr>
                <tr>
                    <td colspan="6" style="height: 43px">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                            ShowSummary="False" />
                    </td>
                    <td style="width: 75px; height: 43px">
                    </td>
                </tr>
            </table>
        </fieldset>
    
    </div>
    </form>
</body>
</html>
