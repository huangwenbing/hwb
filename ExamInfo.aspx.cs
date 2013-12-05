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

public partial class Teacher_ComPaper : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        SqlConnection conn = BaseClass.DBCon();
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into tb_examInfo ( ExamID,ExamTitle,CourseID,PropositionPeopleID, ProfessionalID, ClassID, ExamName,SChooseNum,SChoosePoint,MChooseNum,MChoosePoint,InputNum,InputPoint,JudgeNum, JudgePoint, ApplicationNum, ApplicationPoint, CreationTime, StartTime, EndTime, LimitedTime) values('"+txtEID.Text.Trim()+"','"+txtEtitle.Text.Trim()+"','"+txtCourseID.Text.Trim()+"','"+txtPeople.Text.Trim()+"','"+txtPID.Text.Trim()+"','"+txtClassID.Text.Trim()+"','"+txtEName.Text.Trim()+"','"+txtSCNum.Text.Trim()+"','"+txtSCPoint.Text.Trim()+"','"+txtMCNum.Text.Trim()+"','"+txtMCPoint.Text.Trim()+"','"+txtINum.Text.Trim()+"','"+txtIPoint.Text.Trim()+"','"+txtJNum.Text.Trim()+"','"+txtJPoint.Text.Trim()+"','"+txtANum.Text.Trim()+"','"+txtAPoint.Text.Trim()+"','"+txtTime.Text.Trim()+"','"+txtStartTime.Text.Trim()+"','"+txtEndTime.Text.Trim()+"','"+txtExamTime.Text.Trim()+"')",conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script>alert('插入成功!')</script>");
                    
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Teacher.aspx");
    }
}
