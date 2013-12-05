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

public partial class Teacher_ChangeApplication : System.Web.UI.Page
{
    string input = ""; 
    
    SqlConnection conn = BaseClass.DBCon();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Response.Write("<script lanuage=javascript>alert('该试卷的填空已经修改完成,下面修改应用题！')</script>");            
        }
        SqlCommand cmd1 = new SqlCommand("select ApplicationPoint from tb_examInfo where ExamID='" + Session["ExamID"].ToString().Trim() + "'", conn);
        conn.Open();
        input = cmd1.ExecuteScalar().ToString();
        conn.Close();
        lblApplication.Text = "您改的是试卷编号为:(" + Session["ExamID"].ToString().Trim() + ")的试卷!该试卷的每小题为" + input + "分";
   }
    protected void btnApplication_Click(object sender, EventArgs e)
    {
        string str = "";
        string point = "";
        SqlConnection conn = BaseClass.DBCon();
        for (int i = 0; i < DataList1.Items.Count; i++)
        {
            str = ((Label)(DataList1.Items[i].FindControl("StudentIDLabel"))).Text.ToString().Trim();
            point = ((TextBox)(DataList1.Items[i].FindControl("txtPoint"))).Text.ToString().Trim();
            SqlCommand OldCmd = new SqlCommand("select ApplicationResult from tb_examResult where StudentID='"+str+"'", conn);            
            conn.Open();
            float OldPoint = float.Parse(OldCmd.ExecuteScalar().ToString().Trim()) + float.Parse(point);
            SqlCommand cmd = new SqlCommand("UPDATE [xTest].[dbo].[tb_examResult] set ApplicationResult=" +OldPoint+ "where [StudentID]='" + str + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        Response.Redirect("ChangeExam.aspx"); 
    }
    protected void btnWin_Click(object sender, EventArgs e)
    {
        string str = "";

        for (int i = 0; i < DataList1.Items.Count; i++)
        {
            str = ((Label)(DataList1.Items[i].FindControl("StudentIDLabel"))).Text.ToString().Trim();
            SqlCommand cmd = new SqlCommand("select questionText from tb_application where questionID='" + str + "'", conn);
            conn.Open();
            ((Label)(DataList1.Items[i].FindControl("lblSuject"))).Text = cmd.ExecuteScalar().ToString();
            conn.Close();
            ((Label)(DataList1.Items[i].FindControl("lblFullmark"))).Text = input;
        }
    }
}
