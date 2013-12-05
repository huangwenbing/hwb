<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangeInput.aspx.cs" Inherits="Teacher_ChangeInput" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>填空题修改</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <strong>填空题评卷 &nbsp;
            <br />
            <br />
        </strong>
        <asp:Panel ID="Panel1" runat="server" Height="322px" Style="text-align: center" Width="445px">
            &nbsp; &nbsp;&nbsp;
            <asp:Label ID="lblExamID" runat="server" Text="Label" ForeColor="Red"></asp:Label>
            &nbsp; &nbsp;
            <asp:Button ID="btnstart" runat="server" ForeColor="Blue" OnClick="Button1_Click"
                Text="开始改卷" /><br />
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="ID">
                <ItemTemplate>
                    <table style="width: 377px; height: 1px">
                        <tr>
                            <td style="width: 279px; height: 21px">
                                考生ID:</td>
                            <td style="width: 199px; height: 21px; text-align: left">
                                <asp:Label ID="lblStudentID" runat="server" Text='<%# Eval("StudentID") %>'></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 279px; height: 21px">
                                题目ID:</td>
                            <td style="width: 199px; height: 21px; text-align: left">
                                <asp:Label ID="SubjectIDLabel" runat="server" Text='<%# Eval("SubjectID") %>'></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 279px">
                                题目:</td>
                            <td style="text-align: left; width: 199px;">
                                <asp:Label ID="lblSubject" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 279px">
                                考生答案:</td>
                            <td style="text-align: left; width: 199px;">
                                <asp:Label ID="AnswerLabel" runat="server" Text='<%# Eval("Answer") %>'></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 279px">
                                本题满分为:</td>
                            <td style="width: 199px; text-align: left">
                                <asp:Label ID="lblFullmark" runat="server" ForeColor="Red" Text="请按开始改卷"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 279px">
                                老师打分:</td>
                            <td style="text-align: left; width: 199px;">
                                <asp:TextBox ID="txtGrade" runat="server" Width="75px">0</asp:TextBox></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=xTest;Integrated Security=True" DeleteCommand="DELETE FROM [tb_examDetail] WHERE [ID] = @ID" InsertCommand="INSERT INTO [tb_examDetail] ([ExamID], [StudentID], [SubjectID], [SubjectType], [Answer], [Description], [TeacherID]) VALUES (@ExamID, @StudentID, @SubjectID, @SubjectType, @Answer, @Description, @TeacherID)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tb_examDetail] WHERE (([SubjectType] = @SubjectType) AND ([ExamID] = @ExamID))" UpdateCommand="UPDATE [tb_examDetail] SET [ExamID] = @ExamID, [StudentID] = @StudentID, [SubjectID] = @SubjectID, [SubjectType] = @SubjectType, [Answer] = @Answer, [Description] = @Description, [TeacherID] = @TeacherID WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ExamID" Type="String" />
                    <asp:Parameter Name="StudentID" Type="String" />
                    <asp:Parameter Name="SubjectID" Type="String" />
                    <asp:Parameter Name="SubjectType" Type="String" />
                    <asp:Parameter Name="Answer" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="TeacherID" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="填空" Name="SubjectType" Type="String" />
                    <asp:QueryStringParameter DefaultValue="1" Name="ExamID" QueryStringField="ExamID"
                        Type="String" />
                </SelectParameters>
                <InsertParameters>
                    <asp:Parameter Name="ExamID" Type="String" />
                    <asp:Parameter Name="StudentID" Type="String" />
                    <asp:Parameter Name="SubjectID" Type="String" />
                    <asp:Parameter Name="SubjectType" Type="String" />
                    <asp:Parameter Name="Answer" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="TeacherID" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:Button ID="btnInputOK" runat="server" Text="填空题完成修改" OnClick="btnInputOK_Click" /><br />
            &nbsp;
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
