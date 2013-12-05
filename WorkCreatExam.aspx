<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WorkCreatExam.aspx.cs" Inherits="Teacher_WorkCreatExam" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>手工组卷</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <strong>请选择您要手工出卷的卷子<br />
        </strong>
        <br />
        <asp:Panel ID="Panel1" runat="server" BorderColor="Gray" BorderStyle="Double" Height="321px"
            Style="text-align: center" Width="457px">
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84"
                BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"
                DataKeyNames="ID" DataSourceID="SqlDataSource2" Width="347px">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <Columns>
                    <asp:BoundField DataField="ExamID" HeaderText="考卷编号" SortExpression="ExamID" />
                    <asp:BoundField DataField="ExamName" HeaderText="考卷名" SortExpression="ExamName" />
                    <asp:HyperLinkField DataNavigateUrlFields="ExamID" DataNavigateUrlFormatString="CreatExam.aspx?ExamID={0}"
                    HeaderText="组卷" Text="组卷">
                    </asp:HyperLinkField>
                </Columns>
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=.;Initial Catalog=xTest;Integrated Security=True"
                DeleteCommand="DELETE FROM [tb_examInfo] WHERE [ID] = @ID" InsertCommand="INSERT INTO [tb_examInfo] ([ExamID], [ExamName]) VALUES (@ExamID, @ExamName)"
                ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ExamID], [ExamName], [ID] FROM [tb_examInfo] WHERE ([Type] = @Type)"
                UpdateCommand="UPDATE [tb_examInfo] SET [ExamID] = @ExamID, [ExamName] = @ExamName WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ExamID" Type="String" />
                    <asp:Parameter Name="ExamName" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="手工" Name="Type" Type="String" />
                </SelectParameters>
                <InsertParameters>
                    <asp:Parameter Name="ExamID" Type="String" />
                    <asp:Parameter Name="ExamName" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
