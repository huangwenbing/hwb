<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teacher.aspx.cs" Inherits="Teacher_Teacher" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>教师后台管理</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style></head>

<body>
<table width="1010" height="473" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td style="height: 201px; width: 903px;"><img src="../images/9.jpg"  alt="图片位置" height="200" style="width: 1015px"/>
                 
        
        </td>
      </tr>
    </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td style="width: 230px">
          <table>
             <tr>
             <td>
          <iframe src="left.htm" style="width: 230px; height: 682px" frameborder="0" scrolling="no"></iframe>
              </td>
          </tr>
          </table>
          </td>
          <td style="width: 664px">
              <span style="color: #ff0033">
                教师ID:</span><asp:Label id="lbl_teacherId" runat="server">未登录</asp:Label><span
                  style="color: #ff0033"> &nbsp; &nbsp; &nbsp;教师姓名:</span><asp:Label id="lbl_teacherName" runat="server"></asp:Label><span style="color: #ff0033"> &nbsp; &nbsp; &nbsp; &nbsp;教师性别:</span><asp:Label id="Label1" runat="server"></asp:Label>
             <iframe name="menu" frameborder="0" scrolling="auto" style="width: 780px; height:682px" src="TeacherChangePWD.aspx" id="IFRAME1"></iframe></td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>