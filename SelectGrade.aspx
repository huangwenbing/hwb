<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SelectGrade.aspx.cs" Inherits="Teacher_SelectGrade" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <h1 style="text-align: center">
                <span style="font-size: 11pt">考试管理－－－成绩查询</span></h1>
            <div style="text-align: center">
                <fieldset style="width: 644px; height: 355px; text-align: left">
                    <br />
                    <table style="width: 672px; height: 35px">
                        <tr>
                            <td style="width: 100px">
                                查询条件:</td>
                            <td style="width: 100px">
                                <asp:DropDownList ID="ddlType" runat="server" Width="133px">
                                    <asp:ListItem>学号</asp:ListItem>
                                    <asp:ListItem>试卷号</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 100px">
                                关键字:</td>
                            <td style="width: 100px">
                                <asp:TextBox ID="txtKey" runat="server"></asp:TextBox></td>
                            <td style="width: 100px">
                                <asp:Button ID="btnSerch" runat="server" OnClick="btnSerch_Click" Text="查看" /></td>
                            <td style="width: 100px">
                                <asp:Button ID="btnReturn" runat="server" OnClick="btnReturn_Click" Text="返回" /></td>
                        </tr>
                    </table>
                    &nbsp; &nbsp; &nbsp;&nbsp;<br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="207px"
                        Width="673px">
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="编号" />
                            <asp:BoundField DataField="StudentID" HeaderText="学号" />
                            <asp:BoundField DataField="ExamID" HeaderText="试卷号" />
                            <asp:BoundField DataField="SChooseResult" HeaderText="单选题成绩" />
                            <asp:BoundField DataField="MChooseResult" HeaderText="多选题成绩" />
                            <asp:BoundField DataField="JudgeResult" HeaderText="判断题成绩" />
                            <asp:BoundField DataField="InputResult" HeaderText="填空题成绩" />
                            <asp:BoundField DataField="ApplicationResult" HeaderText="应用题成绩" />
                        </Columns>
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                </fieldset>
                <br />
                <br />
                <br />
                &nbsp;</div>
        </div>
    
    </div>
    </form>
</body>
</html>
