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


public partial class Teacher_ChangeInput : System.Web.UI.Page
{
    string input = ""; 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
             Session["ExamID"] = Request.QueryString["ExamID"].ToString().Trim();
        }            
        SqlConnection conn = BaseClass.DBCon();
        SqlCommand cmd1 = new SqlCommand("select InputPoint from tb_examInfo where ExamID='" + Request.QueryString["ExamID"].ToString().Trim() + "'", conn);
        conn.Open();
        input = cmd1.ExecuteScalar().ToString();
        conn.Close();
        lblExamID.Text = "您改的是试卷编号为:(" + Request.QueryString["ExamID"].ToString().Trim() + ")的试卷!该试卷的每小题为" + input + "分";        
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {  
        string str = "";        
        SqlConnection conn = BaseClass.DBCon();
        for (int i = 0; i < DataList1.Items.Count; i++)
        {
            str = ((Label)(DataList1.Items[i].FindControl("SubjectIDLabel"))).Text.ToString().Trim();
            SqlCommand cmd = new SqlCommand("select questionText from tb_input where questionID='"+str+"'", conn);
            conn.Open();
            ((Label)(DataList1.Items[i].FindControl("lblSubject"))).Text = cmd.ExecuteScalar().ToString();
            conn.Close();
            ((Label)(DataList1.Items[i].FindControl("lblFullmark"))).Text = input;
        }
    }
    protected void btnInputOK_Click(object sender, EventArgs e)
    {
        string str = "";
        string point = "";
        SqlConnection conn = BaseClass.DBCon();
        for (int i = 0; i < DataList1.Items.Count; i++)
        {
            str = ((Label)(DataList1.Items[i].FindControl("lblStudentID"))).Text.ToString().Trim();
            point = ((TextBox)(DataList1.Items[i].FindControl("txtGrade"))).Text.ToString().Trim();
            SqlCommand OldCmd = new SqlCommand("select InputResult from tb_examResult where [StudentID]='"+str+"'", conn);
            conn.Open();
            float OldResult = float.Parse(OldCmd.ExecuteScalar().ToString().Trim()) + float.Parse(point);
            SqlCommand cmd = new SqlCommand("UPDATE [xTest].[dbo].[tb_examResult] set InputResult=" + OldResult + "where [StudentID]='" + str + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();            
        }               
        Response.Redirect("ChangeApplication.aspx");        
    }
}
