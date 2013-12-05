<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangeApplication.aspx.cs" Inherits="Teacher_ChangeApplication" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>应用题评分</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <strong>应用题改卷<br />
        </strong>
        <br />
        <asp:Label ID="lblApplication" runat="server" ForeColor="Red"></asp:Label>
        <asp:Button ID="btnWin" runat="server" ForeColor="Blue" OnClick="btnWin_Click" Text="开始改卷" /><br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="348px" Style="text-align: center" Width="474px">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <table style="width: 347px; height: 24px">
                        <tr>
                            <td>
                                题目ID:</td>
                            <td style="text-align: left">
                                <asp:Label ID="SubjectIDLabel" runat="server" Text='<%# Eval("SubjectID") %>'></asp:Label></td>
                            <td style="width: 3px">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                题目:</td>
                            <td style="text-align: left">
                                <asp:Label ID="lblSuject" runat="server"></asp:Label></td>
                            <td style="width: 3px">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                考生ID:
                            </td>
                            <td style="text-align: left">
                                <asp:Label ID="StudentIDLabel" runat="server" Text='<%# Eval("StudentID") %>'></asp:Label></td>
                            <td style="width: 3px">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                考生答案:</td>
                            <td style="text-align: left">
                                <asp:Label ID="AnswerLabel" runat="server" Text='<%# Eval("Answer") %>'></asp:Label></td>
                            <td style="width: 3px">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                本题满分为:</td>
                            <td style="text-align: left">
                                <asp:Label ID="lblFullmark" runat="server" ForeColor="Red" Text="请按开始改卷"></asp:Label></td>
                            <td style="width: 3px">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                老师打分:</td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtPoint" runat="server" Width="71px">0</asp:TextBox></td>
                            <td style="width: 3px">
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=xTest;Integrated Security=True"
                DeleteCommand="DELETE FROM [tb_examDetail] WHERE [ID] = @ID" InsertCommand="INSERT INTO [tb_examDetail] ([ExamID], [StudentID], [SubjectID], [SubjectType], [Answer], [Description], [TeacherID]) VALUES (@ExamID, @StudentID, @SubjectID, @SubjectType, @Answer, @Description, @TeacherID)"
                ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tb_examDetail] WHERE (([SubjectType] = @SubjectType) AND ([ExamID] = @ExamID))"
                UpdateCommand="UPDATE [tb_examDetail] SET [ExamID] = @ExamID, [StudentID] = @StudentID, [SubjectID] = @SubjectID, [SubjectType] = @SubjectType, [Answer] = @Answer, [Description] = @Description, [TeacherID] = @TeacherID WHERE [ID] = @ID">
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
                    <asp:Parameter DefaultValue="应用" Name="SubjectType" Type="String" />
                    <asp:SessionParameter DefaultValue="1" Name="ExamID" SessionField="ExamID" Type="String" />
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
            <asp:Button ID="btnApplication" runat="server" OnClick="btnApplication_Click" Text="完成改卷" />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
