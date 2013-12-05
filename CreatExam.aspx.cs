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
public partial class Teacher_CreatExam : System.Web.UI.Page
{
    string ExamID="";//试卷编号
    string schoose;//单选题数
    string Judge;//判断题数
    string Input;//填空题数
    string application;//应用题数
    string CourseID="";
    SqlConnection conn = BaseClass.DBCon();    
    protected void Page_Load(object sender, EventArgs e)
    {

        ExamID = Request.QueryString["ExamID"].ToString();        
        SqlCommand cmd = new SqlCommand("select * from tb_examInfo where ExamID='"+ExamID+"'", conn);
        conn.Open();
        SqlDataReader sdr = cmd.ExecuteReader();        
        while (sdr.Read())
        {
            schoose = sdr["SChooseNum"].ToString();
            Judge = sdr["JudgeNum"].ToString();
            Input = sdr["InputNum"].ToString();
            application = sdr["ApplicationNum"].ToString();
            CourseID=sdr["CourseID"].ToString();
        }
        conn.Close();
        if (!IsPostBack)
        {
            lblSchoose.Text ="共有"+schoose+"道题";
            lblJudge.Text = "共有" + Judge + "道题";
            lblInput.Text = "共有" + Input + "道题";
            lblApplication.Text = "共有" + application + "道题";
        }

    }
    protected void cbPitch_CheckedChanged(object sender, EventArgs e)
    { 
        int i=0;        
        for (int j = 0; j < gvSchoose.Rows.Count; j++)
            if (((CheckBox)gvSchoose.Rows[j].FindControl("cbPitch")).Checked)
                i++;
        lblSchoose1.Text = i.ToString()+"题";
    }
    protected void cbPitch_CheckedChanged2(object sender, EventArgs e)
    {
        int i = 0;
        for (int j = 0; j < gvJudge.Rows.Count; j++)
            if (((CheckBox)gvJudge.Rows[j].FindControl("cbPitch")).Checked)
                i++;
        lblJudge3.Text = i.ToString() + "题";
    }
    protected void cbPitch_CheckedChanged3(object sender, EventArgs e)
    {
        int i = 0;
        for (int j = 0; j < gvInput.Rows.Count; j++)
            if (((CheckBox)gvInput.Rows[j].FindControl("cbPitch")).Checked)
                i++;
        lblInput4.Text = i.ToString() + "题";
    }
    protected void cbPitch_CheckedChanged4(object sender, EventArgs e)
    {
        int i = 0;
        for (int j = 0; j < gvApplication.Rows.Count; j++)
            if (((CheckBox)gvApplication.Rows[j].FindControl("cbPitch")).Checked)
                i++;
        lblApplication5.Text = i.ToString() + "题";
    }
    protected void btnOK_Click(object sender, EventArgs e)
    {        
        for (int i = 0; i < gvSchoose.Rows.Count; i++)
        {
            if (((CheckBox)gvSchoose.Rows[i].FindControl("cbPitch")).Checked)
            {
                int aa = Int32.Parse((gvSchoose.DataKeys[i].Value).ToString().Trim());
                SqlCommand cmd = new SqlCommand("select questionID from tb_schoose where ID=" + aa, conn);
                conn.Open();
                string str = cmd.ExecuteScalar().ToString().Trim();
                SqlCommand cmd1 = new SqlCommand("INSERT INTO [xTest].[dbo].[tb_workexam]([ExamID], [SubjectID], [SubjectType],[CourseID])VALUES('" + ExamID.Trim() + "','" + str.Trim() + "','单选','" + CourseID .Trim()+ "')", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
            }
        }
        for (int i = 0; i < gvJudge.Rows.Count; i++)
        {
            if (((CheckBox)gvJudge.Rows[i].FindControl("cbPitch")).Checked)
            {
                int aa = Int32.Parse((gvJudge.DataKeys[i].Value).ToString().Trim());
                SqlCommand cmd = new SqlCommand("select questionID from tb_judge where ID=" + aa, conn);
                conn.Open();
                string str = cmd.ExecuteScalar().ToString().Trim();
                SqlCommand cmd1 = new SqlCommand("INSERT INTO [xTest].[dbo].[tb_workexam]([ExamID], [SubjectID], [SubjectType],[CourseID])VALUES('" + ExamID.Trim() + "','" + str.Trim() + "','判断','" + CourseID.Trim() + "')", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
            }
        }

        for (int i = 0; i < gvInput.Rows.Count; i++)
        {
            if (((CheckBox)gvInput.Rows[i].FindControl("cbPitch")).Checked)
            {
                int aa = Int32.Parse((gvInput.DataKeys[i].Value).ToString().Trim());
                SqlCommand cmd = new SqlCommand("select questionID from tb_input where ID=" + aa, conn);
                conn.Open();
                string str = cmd.ExecuteScalar().ToString().Trim();
                SqlCommand cmd1 = new SqlCommand("INSERT INTO [xTest].[dbo].[tb_workexam]([ExamID], [SubjectID], [SubjectType],[CourseID])VALUES('" + ExamID.Trim() + "','" + str.Trim() + "','填空','" + CourseID .Trim()+ "')", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
            }
        }

        for (int i = 0; i < gvApplication.Rows.Count; i++)
        {
            if (((CheckBox)gvApplication.Rows[i].FindControl("cbPitch")).Checked)
            {
                int aa = Int32.Parse((gvApplication.DataKeys[i].Value).ToString().Trim());
                SqlCommand cmd = new SqlCommand("select questionID from tb_application where ID=" + aa, conn);
                conn.Open();
                string str = cmd.ExecuteScalar().ToString().Trim();
                SqlCommand cmd1 = new SqlCommand("INSERT INTO [xTest].[dbo].[tb_workexam]([ExamID], [SubjectID], [SubjectType],[CourseID])VALUES('" + ExamID.Trim() + "','" + str.Trim() + "','应用','" + CourseID.Trim() + "')", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
            }
        }
        Response.Write("<script lanuage=javascript>alert('完成抽卷！')</script>");
        Response.Redirect("WorkCreatExam.aspx");
    }
    protected void btnSchoose_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
    }
    protected void btnMschoose_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
    }
    protected void btnJudge_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel4.Visible = true;
        Panel5.Visible = false;
        Panel6.Visible = false;
    }
    protected void btninput_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = true;
        Panel6.Visible = false;
    }
    protected void btnApplication_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = true;
    }
}
