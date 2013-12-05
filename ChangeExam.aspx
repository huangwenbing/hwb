<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangeExam.aspx.cs" Inherits="Teacher_ManagerQuestioninput" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <strong>
            <br />
            请选择你要改的考卷<br />
        </strong>
        <br />
        <fieldset style="width: 542px; height: 373px">
            <br />
        <asp:GridView ID="gvExaminationInfo" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="356px" AllowPaging="True" PageSize="5" DataKeyNames="ID" OnPageIndexChanging="gvExaminationInfo_PageIndexChanging" OnRowDeleting="gvExaminationInfo_RowDeleting" Height="186px">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <Columns>
                <asp:BoundField DataField="ExamID" HeaderText="试卷编号" />
                <asp:HyperLinkField DataNavigateUrlFields="ExamID" DataNavigateUrlFormatString="ChangeInput.aspx?ExamID={0}"
                    HeaderText="改卷" Text="改卷">
                    <ItemStyle HorizontalAlign="Center" Width="60px" />
                </asp:HyperLinkField>
            </Columns>
            <RowStyle ForeColor="#000066" Height="15px" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Height="15px" />
        </asp:GridView>
        </fieldset>     
    </div>
    </form>
</body>
</html>
