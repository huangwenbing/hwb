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

public partial class Teacher_Input : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["questionID"] = "1";
            Session["teacher"] = "叶";
            Session["teacherID"] = "";
            Session["courseName"] = "数学";
            Session["chapterName"] = "";
            Session["imgFile"] = ""; 
        }
        lblTeacher.Text = Session["teacher"].ToString();
        lblCourseName.Text = Session["courseName"].ToString();
        txtChapter.Text = Session["chapterName"].ToString();
        txtID.Text = Session["questionID"].ToString();  
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtContent.Text = "";
        txtContent.Focus();
    }
    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        string isShare = "";
        if (cbShare.Checked == true)
            isShare = "1";
        else
            isShare = "0";
        string str = "insert into tb_input(questionID,questionText,answer,courseID,teacherID,chapter,share) values('" + Session["questionID"].ToString() + "','" + txtContent.Text.Trim() + "','" + answerTxt.Text.Trim() + "','" + Session["courseName"].ToString() + "','" + Session["teacherID"].ToString() + "','" + Session["chapterName"].ToString() + "','" + isShare + "')";
        if (cbID.Checked)
        {
            Session["questionID"] = Int64.Parse(Session["questionID"].ToString()) + 1;
            txtID.Text = Session["questionID"].ToString();
        }
        else
        {
            txtID.Text = "";
        }                              
        //调用公共类的方法，向数据库插入记录
        BaseClass.OperateData(str);
        btnCancel_Click(sender, e);
    }
}
