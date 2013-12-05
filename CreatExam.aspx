<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreatExam.aspx.cs" Inherits="Teacher_CreatExam" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>组卷</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <strong style="text-align: center">手工组卷<br />
            <table style="width: 547px; height: 37px">
                <tr>
                    <td colspan="4">
                        <asp:Button ID="btnSchoose" runat="server" OnClick="btnSchoose_Click" Text="单选题" Height="29px" /></td>
                    <td>
                        <asp:Button ID="btnJudge" runat="server" OnClick="btnJudge_Click" Text="判断题" Height="26px" /></td>
                    <td>
                        <asp:Button ID="btninput" runat="server" OnClick="btninput_Click" Text="填空" Height="28px" Width="59px" /></td>
                    <td>
                        <asp:Button ID="btnApplication" runat="server" OnClick="btnApplication_Click" Text="应用题" Height="25px" /></td>
                    <td>
            <asp:Button ID="btnOK" runat="server" Text="确定组卷" OnClick="btnOK_Click" Width="110px" /></td>
                </tr>
            </table>
            <asp:Panel ID="Panel2" runat="server" Height="223px" Visible="False" Width="543px">
            (<span style="color: #0000ff">单选题</span>) &nbsp;
            <asp:Label ID="lblSchoose" runat="server" ForeColor="Red"></asp:Label>
            &nbsp; &nbsp; 你已经选了<asp:Label ID="lblSchoose1" runat="server" ForeColor="Red">0道题</asp:Label>
                &nbsp;&nbsp;
            <asp:GridView ID="gvSchoose" runat="server" AutoGenerateColumns="False"
                BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"
                CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" PageSize="5" Width="557px">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <Columns>
                    <asp:BoundField DataField="questionText" HeaderText="题目" SortExpression="questionText" />
                    <asp:BoundField DataField="chooseA" HeaderText="答案A" SortExpression="chooseA" />
                    <asp:BoundField DataField="chooseB" HeaderText="答案B" SortExpression="chooseB" />
                    <asp:BoundField DataField="chooseC" HeaderText="答案C" SortExpression="chooseC" />
                    <asp:BoundField DataField="chooseD" HeaderText="答案D" SortExpression="chooseD" />
                    <asp:BoundField DataField="answer" HeaderText="正确答案" SortExpression="answer" />
                    <asp:TemplateField HeaderText="抽题">
                        <ItemTemplate>
                            <asp:CheckBox ID="cbPitch" runat="server" AutoPostBack="True" OnCheckedChanged="cbPitch_CheckedChanged" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField />
                </Columns>
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:xTestConnectionString %>"
                    SelectCommand="SELECT [ID], [questionText], [chooseA], [chooseB], [chooseC], [chooseD], [answer] FROM [tb_schoose]">
                </asp:SqlDataSource>
            </asp:Panel>
            &nbsp;
            <asp:Panel ID="Panel4" runat="server" Height="214px" Visible="False" Width="559px">
            (<span style="color: #0000ff">判断题</span>)<asp:Label ID="lblJudge" runat="server" ForeColor="Red"></asp:Label>&nbsp; 你已经选了<asp:Label ID="lblJudge3" runat="server"
                    ForeColor="Red">0道题</asp:Label><br />
            <asp:GridView ID="gvJudge" runat="server" AutoGenerateColumns="False"
                BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"
                CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource2" PageSize="5"
                Width="553px">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <Columns>
                    <asp:BoundField DataField="questionText" HeaderText="题目" SortExpression="questionText" />
                    <asp:BoundField DataField="answer" HeaderText="正确答案" SortExpression="answer" />
                    <asp:TemplateField HeaderText="抽题">
                        <ItemTemplate>
                            <asp:CheckBox ID="cbPitch" runat="server" AutoPostBack="True" OnCheckedChanged="cbPitch_CheckedChanged2" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            </asp:GridView>
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel5" runat="server" Height="255px" Visible="False" Width="551px">
            (<span style="color: #0000ff">填空题<span style="color: #000000">)</span></span><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:xTestConnectionString %>"
                SelectCommand="SELECT [ID], [questionText], [answer] FROM [tb_judge]"></asp:SqlDataSource>
            <span style="color: #0000ff"></span>
            )<asp:Label ID="lblInput" runat="server" ForeColor="Red"></asp:Label>&nbsp;
            你已经选了<asp:Label ID="lblInput4" runat="server" ForeColor="Red">0道题</asp:Label><br />
            <asp:GridView ID="gvInput" runat="server" AutoGenerateColumns="False"
                BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"
                CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource3" PageSize="5"
                Width="554px">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <Columns>
                    <asp:BoundField DataField="questionText" HeaderText="题目" SortExpression="questionText" />
                    <asp:BoundField DataField="answer" HeaderText="正确答案" SortExpression="answer" />
                    <asp:TemplateField HeaderText="抽题">
                        <ItemTemplate>
                            <asp:CheckBox ID="cbPitch" runat="server" AutoPostBack="True" OnCheckedChanged="cbPitch_CheckedChanged3" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:xTestConnectionString %>"
                    SelectCommand="SELECT [ID], [questionText], [answer] FROM [tb_input]"></asp:SqlDataSource>
            </asp:Panel>
            <asp:Panel ID="Panel6" runat="server" Height="224px" Visible="False" Width="551px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            (<span style="color: #0000ff">应用题</span>)<asp:Label ID="lblApplication" runat="server" ForeColor="Red"></asp:Label>&nbsp; 你已经选了<asp:Label ID="lblApplication5" runat="server"
                    ForeColor="Red">0道题</asp:Label><br />
            <asp:GridView ID="gvApplication" runat="server" AutoGenerateColumns="False"
                BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"
                CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource4" PageSize="5"
                Width="553px">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <Columns>
                    <asp:BoundField DataField="questionText" HeaderText="题目" SortExpression="questionText" />
                    <asp:BoundField DataField="answer" HeaderText="正确答案" SortExpression="answer" />
                    <asp:TemplateField HeaderText="抽题">
                        <ItemTemplate>
                            <asp:CheckBox ID="cbPitch" runat="server" AutoPostBack="True" OnCheckedChanged="cbPitch_CheckedChanged4" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:xTestConnectionString %>"
                    SelectCommand="SELECT [ID], [questionText], [answer] FROM [tb_application]"></asp:SqlDataSource>
            </asp:Panel>
            <br />
            <br />
        </strong>&nbsp;</div>
    </form>
</body>
</html>
