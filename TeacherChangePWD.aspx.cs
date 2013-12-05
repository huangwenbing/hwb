using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Drawing;

public partial class Teacher_TeacherChangePWD : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["teacherID"] == null)
        {
            Response.Redirect("../Login.aspx");
        }
        //Session["teacher"] = "20001";
    }

    protected void btnChange_Click(object sender, EventArgs e)
    {
        if (BaseClass.CheckTeacher(Session["teacherID"].ToString(), txtOldPwd.Text.Trim()))
        {
            string strsql = "update tb_teacher set TeacherPwd='" + txtNewPwdA.Text.Trim() + "' where TeacherID='" + Session["teacherID"].ToString() + "'";
            BaseClass.OperateData(strsql);
            lblMessage.ForeColor = Color.Blue;
            lblMessage.Text = "密码修改成功";
            txtNewPwd.Text = "";
            txtNewPwdA.Text = "";
            txtOldPwd.Text = "";

        }
        else
        {
            lblMessage.ForeColor = Color.Red;
            lblMessage.Text = "旧密码错误";
            txtOldPwd.Text = "";
            txtOldPwd.Focus();
            return;
        }

    }

}
