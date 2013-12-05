<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminresult.aspx.cs" Inherits="Admin_adminresult" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div>
        <br />
        <span style="font-size: 24pt">成绩结果查询:</span><br />
        <br />
        <table style="width: 682px; height: 169px">
            <tr>
                <td style="height: 43px">
                </td>
                <td style="width: 613px; height: 43px; text-align: center">
                    <asp:Label ID="Label3" runat="server" Height="24px" Text="关键字："></asp:Label><asp:TextBox ID="tbx_query" runat="server"></asp:TextBox>
                    <asp:Label ID="Label4" runat="server" Height="23px" Text="查询条件："></asp:Label><asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>学生编号</asp:ListItem>
                        <asp:ListItem>试卷编号</asp:ListItem>
                        <asp:ListItem>总成绩</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btncx" runat="server" OnClick="btncx_Click" Text="查询" /></td>
                <td style="height: 43px">
                </td>
            </tr>
            <tr>
                <td style="height: 10px">
                </td>
                <td style="width: 613px; height: 10px">
                    <table align="center" border="10" bordercolordark="#99ff66" bordercolorlight="#ffff99"
                        cellpadding="2" cellspacing="0" width="612" id="TABLE1" onclick="return TABLE1_onclick()" style="height: 134px">
                        <tr>
                            <td align="center" style="width: 500px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="13px"
                        Width="649px">
                        <Columns>
                            <asp:BoundField DataField="StudentID" HeaderText="学生编号" />
                            <asp:BoundField DataField="ExamID" HeaderText="试卷编号" />
                            <asp:BoundField DataField="SChooseResult" HeaderText="单选成绩" />
                            <asp:BoundField DataField="MChooseResult" HeaderText="多选成绩" />
                            <asp:BoundField DataField="JudgeResult" HeaderText="判断成绩" />
                            <asp:BoundField DataField="InputResult" HeaderText="填空成绩" />
                            <asp:BoundField DataField="ApplicationResult" HeaderText="应用成绩" />
                            <asp:BoundField DataField="TotalResult" HeaderText="总成绩" />
                        </Columns>
                    </asp:GridView>
                                <%--<asp:Label ID="labeltishi" runat="server" Font-Bold="true" Font-Size="13px" ForeColor="Green"
                                    Text=""></asp:Label>
                                考生:<asp:Label ID="label1" runat="server" Font-Bold="true" ForeColor="Red" Text=""></asp:Label>
                                的最后得分为:<asp:Label ID="label2" runat="server" Font-Bold="true" ForeColor="Red" Text=""></asp:Label>
                                &nbsp;<asp:LinkButton ID="link" runat="server"  Text="退出系统" OnClick="link_Click"></asp:LinkButton>--%>
                            </td>
                        </tr>
                    </table>
                    &nbsp;</td>
                <td style="height: 10px">
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td style="width: 613px">
                </td>
                <td style="font-size: 12pt">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
