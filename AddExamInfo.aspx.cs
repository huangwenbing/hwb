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

public partial class Teacher_AssembledExam : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
       {
	        string strSqlClass = "select * from tb_class";
	        string strSqlCourse = "select * from tb_course";
	        string strSqlProfessional = "select * from tb_professional";
           
	        BaseClass.BindDDL(ddlClassID, "ClassName", "ClassID", strSqlClass, "tb_class");
	        BaseClass.BindDDL(ddlCourseID, "CourseName", "CourseID", strSqlCourse, "tb_course");
	        BaseClass.BindDDL(ddlProfessionalID, "ProfessionalName", "ProfessionalID", strSqlProfessional, "tb_professional");
	        DateTime today = System.DateTime.Now;
	        txtCreationTime.Text = today.ToString().Trim();
	        txtStartTime.Text=today.ToString().Trim();
	        txtEndTime.Text = today.ToString().Trim();
       } 

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string strSql = "INSERT INTO [tb_examInfo] ( [ExamID],[ExamTitle] ,[CourseID] ,[PropositionPeopleID] ,[ProfessionalID] ,[ClassID] ,[ExamName] ,[SChooseNum] ,[SChoosePoint] ,[MChooseNum] ,[MChoosePoint] ,[InputNum] ,[InputPoint] ,[JudgeNum] ,[JudgePoint] ,[ApplicationNum] ,[ApplicationPoint] ,[CreationTime] ,[StartTime] ,[EndTime] ,[LimitedTime],[Pass] ) VALUES ('" + txtExamID.Text.Trim() + "','" + txtTitle.Text.Trim() + "','" + ddlCourseID.SelectedValue.Trim() + "','" + txtPropositionPeopleID .Text.Trim()+ "','" + ddlProfessionalID.SelectedValue.Trim() + "','" + ddlClassID.SelectedValue.Trim() + "','" + txtExamName.Text.Trim() + "','" + txtSchooseNum.Text.Trim() + "','" + txtSchoosePoint.Text.Trim() + "','" + txtMchooseNum.Text.Trim() + "','" + txtMchoosePoint.Text.Trim() + "','" + txtInputNum.Text.Trim() + "','" + txtInputPoint.Text.Trim() + "','" + txtJudgeNum.Text.Trim() + "','" + txtJudgePoint.Text.Trim() + "','" + txtApplicationNum.Text.Trim() + "','" + txtApplicationPoint.Text.Trim() + "','" + txtCreationTime.Text.Trim() + "','" + txtStartTime.Text.Trim() + "','" + txtEndTime.Text.Trim() + "','" + txtLimitedTime.Text.Trim() + "','"+txtPass.Text.Trim()+")";
        BaseClass.OperateData(strSql);
        Response.Write("<script>alert('插入成功');</script>");
    }
    protected void btnStat_Click(object sender, EventArgs e)
    {
    int a= Int32.Parse(txtSchoosePoint.Text.ToString().Trim())*Int32.Parse(txtSchooseNum.Text.ToString().Trim());
    int b=  Int32.Parse(txtMchoosePoint.Text.ToString().Trim())*Int32.Parse(txtMchooseNum.Text.ToString().Trim());
    int c= Int32.Parse(txtInputPoint.Text.ToString().Trim())*Int32.Parse(txtInputNum.Text.ToString().Trim());
    int d= Int32.Parse(txtJudgePoint.Text.ToString().Trim())*Int32.Parse(txtJudgeNum.Text.ToString().Trim());
    int f=  Int32.Parse(txtApplicationPoint.Text.ToString().Trim())* Int32.Parse(txtApplicationNum.Text.ToString().Trim());
    lblStat.Text = (a + b + c + d + f).ToString();
    }
}
