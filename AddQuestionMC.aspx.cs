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
using System.Data.SqlClient;

public partial class MChoose_MChooseInsert : System.Web.UI.Page
{    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["questionID"] = "98760001";
            Session["teacher"] = "黄素叶";
            Session["teacherID"] = "黄叶";
            Session["courseName"] = "C语言程序设计";
            Session["chapterName"] = "第一章";
            Session["imgFile"] = "";
        }
        lblTeacher.Text = Session["teacher"].ToString();
        lblCourseName.Text = Session["courseName"].ToString();
        txtChapter.Text = Session["chapterName"].ToString();
        txtID.Text = Session["questionID"].ToString(); 
    }
    protected void btnOK_Click(object sender, EventArgs e)
    {
        string str1="";
        for (int i = 0; i < CkbAnswer.Items.Count; i++)
        {
            if (CkbAnswer.Items[i].Selected == true)
            { 
                str1 += CkbAnswer.Items[i].Value;
            }
        }

        SqlConnection conn = BaseClass.DBCon();
        string str = "INSERT INTO [xTest].[dbo].[tb_mchoose]([questionID], [questionText], [chooseCount], [chooseA], [chooseB], [chooseC], [chooseD], [chooseE], [chooseF], [chooseG], [chooseH], [chooseI], [answer], [chapter])VALUES('"+txtID.Text.Trim()+"','"+txtContent.Text.Trim()+"','"+txtNum.Text.Trim()+"','"+txtAnsA.Text.Trim()+"','"+txtAnsB.Text.Trim()+"','"+txtAnsC.Text.Trim()+"','"+txtAnsD.Text.Trim()+"','"+txtAnsE.Text.Trim()+"','"+txtAnsF.Text.Trim()+"','"+txtAnsG.Text.Trim()+"','"+txtAnsH.Text.Trim()+"','"+txtAnsI.Text.Trim()+"','"+str1.Trim()+"','"+txtChapter.Text.Trim()+"')";
        SqlCommand cmd = new SqlCommand(str,conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        Response.Write("<script lanuage=javascript>alert('出题成功！')</script>");
        conn.Close();
        txtNum.Text = "";
        txtContent.Text = "";
        txtAnsA.Text = "";
        txtAnsB.Text = "";
        txtAnsC.Text = "";
        txtAnsD.Text = "";
        txtAnsE.Text = "";
        txtAnsF.Text = "";
        txtAnsH.Text = "";
        txtAnsI.Text = "";
        for (int i=0; i < CkbAnswer.Items.Count; i++)
        { CkbAnswer.Items[i].Selected = false; }

    }
}
