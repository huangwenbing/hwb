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
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
	            string strSqlCourse = "select * from tb_course";
	            string strSqlProfessional = "select * from tb_professional";
	            id = Request.QueryString["EIid"].ToString();
	            string strSqlClass = "select * from tb_class";
	            BaseClass.BindDDL(ddlClassID, "ClassName", "ClassID", strSqlClass, "tb_class");
	            BaseClass.BindDDL(ddlCourseID, "CourseName", "CourseID", strSqlCourse, "tb_course");
	            BaseClass.BindDDL(ddlProfessionalID, "ProfessionalName", "ProfessionalID", strSqlProfessional, "tb_professional");
	            SqlConnection conn = BaseClass.DBCon();
	            conn.Open();
	            SqlCommand cmd = new SqlCommand("select * from tb_examInfo where ID=" + id, conn);
	            SqlDataReader sdr = cmd.ExecuteReader();
	            while (sdr.Read())
	            {
	                txtExamID.Text = sdr["ExamID"].ToString();
	                txtTitle.Text = sdr["ExamTitle"].ToString();
	                txtPropositionPeopleID.Text = sdr["PropositionPeopleID"].ToString().Trim();
	                txtExamName.Text = sdr["ExamName"].ToString();
	                txtStartTime.Text = sdr["StartTime"].ToString();
	                txtCreationTime.Text = sdr["CreationTime"].ToString();
	                txtEndTime.Text = sdr["EndTime"].ToString();
	                txtLimitedTime.Text = sdr["LimitedTime"].ToString();
	                txtSchooseNum.Text = sdr["SChooseNum"].ToString();
	                txtSchoosePoint.Text = sdr["SchoosePoint"].ToString();
	                txtMchooseNum.Text = sdr["MchooseNum"].ToString();
	                txtMchoosePoint.Text = sdr["MchoosePoint"].ToString();
	                txtInputNum.Text = sdr["InputNum"].ToString();
	                txtInputPoint.Text = sdr["InputPoint"].ToString();
	                txtJudgeNum.Text = sdr["JudgeNum"].ToString();
	                txtJudgePoint.Text = sdr["JudgePoint"].ToString();
	                txtApplicationNum.Text = sdr["ApplicationNum"].ToString();
	                txtApplicationPoint.Text = sdr["ApplicationPoint"].ToString();
                    this.ddlCourseID.Items.FindByValue(sdr["CourseID"].ToString()).Selected = true;
                    this.ddlProfessionalID.Items.FindByValue(sdr["ProfessionalID"].ToString()).Selected = true;
                    this.ddlClassID.Items.FindByValue(sdr["ClassID"].ToString()).Selected = true;
	            }
	            conn.Close();
                int a = Int32.Parse(txtSchoosePoint.Text.ToString().Trim()) * Int32.Parse(txtSchooseNum.Text.ToString().Trim());
                int b = Int32.Parse(txtMchoosePoint.Text.ToString().Trim()) * Int32.Parse(txtMchooseNum.Text.ToString().Trim());
                int c = Int32.Parse(txtInputPoint.Text.ToString().Trim()) * Int32.Parse(txtInputNum.Text.ToString().Trim());
                int d = Int32.Parse(txtJudgePoint.Text.ToString().Trim()) * Int32.Parse(txtJudgeNum.Text.ToString().Trim());
                int f = Int32.Parse(txtApplicationPoint.Text.ToString().Trim()) * Int32.Parse(txtApplicationNum.Text.ToString().Trim());
                lblStat.Text = (a + b + c + d + f).ToString();
            }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {

        id = Request.QueryString["EIid"].ToString();
        string strSql = " UPDATE [tb_examInfo] set [ExamID] = '" + txtExamID.Text.Trim() + "',[ExamTitle] ='" + txtTitle.Text.Trim() + "',[CourseID]='" + ddlCourseID.SelectedValue.Trim() + "',[PropositionPeopleID]='" + txtPropositionPeopleID.Text.Trim() + "',[ProfessionalID]='" + ddlProfessionalID.SelectedValue.Trim() + "',[ClassID]='" + ddlClassID.SelectedValue.Trim() + "',[ExamName]='" + txtExamName.Text.Trim() + "',[SChooseNum]='" + txtSchooseNum.Text.Trim() + "',[SChoosePoint]='" + txtSchoosePoint.Text.Trim() + "',[MChooseNum]='" + txtMchooseNum.Text.Trim() + "',[MChoosePoint]='" + txtMchoosePoint.Text.Trim() + "',[InputNum]='" + txtInputNum.Text.Trim() + "',[InputPoint]='" + txtInputPoint.Text.Trim() + "',[JudgeNum]='" + txtJudgeNum.Text.Trim() + "',[JudgePoint]='" + txtJudgePoint.Text.Trim() + "',[ApplicationNum]='" + txtApplicationNum.Text.Trim() + "',[ApplicationPoint]='" + txtApplicationPoint.Text.Trim() + "',[CreationTime]='" + txtCreationTime.Text.Trim() + "',[StartTime]='" + txtStartTime.Text.Trim() + "',[EndTime]='" + txtEndTime.Text.Trim() + "',[LimitedTime]='" + txtLimitedTime.Text.Trim()+"',[Pass]='"+txtPass.Text.Trim()+"' where ID='"+id+"'";
        BaseClass.OperateData(strSql);
        Response.Write("<script>alert('修改成功');</script>");
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManagerExamInfo.aspx");
    }
    protected void btnStat_Click(object sender, EventArgs e)
    {
        int a = Int32.Parse(txtSchoosePoint.Text.ToString().Trim()) * Int32.Parse(txtSchooseNum.Text.ToString().Trim());
        int b = Int32.Parse(txtMchoosePoint.Text.ToString().Trim()) * Int32.Parse(txtMchooseNum.Text.ToString().Trim());
        int c = Int32.Parse(txtInputPoint.Text.ToString().Trim()) * Int32.Parse(txtInputNum.Text.ToString().Trim());
        int d = Int32.Parse(txtJudgePoint.Text.ToString().Trim()) * Int32.Parse(txtJudgeNum.Text.ToString().Trim());
        int f = Int32.Parse(txtApplicationPoint.Text.ToString().Trim()) * Int32.Parse(txtApplicationNum.Text.ToString().Trim());
        lblStat.Text = (a + b + c + d + f).ToString();
    }
}
