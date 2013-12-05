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

public partial class Teacher_ManagerQuestioninput : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["teacherID"] == null)
        //{
        //    Response.Redirect("../Login.aspx");
        //}
        if (!IsPostBack)
        {
            gvExaminationInfo_Bind();
        }
    }

    public void gvExaminationInfo_Bind()
    {
        string strsql = "select * from tb_examDetail order by ID desc";
        BaseClass.BindDG(gvExaminationInfo, "ID", strsql, "SingleChooseInfo");
        SqlConnection conn = BaseClass.DBCon();
        //conn.Open();
        //SqlCommand cmd = new SqlCommand("select * from tb_examDetail", conn);
        //SqlDataReader sdr = cmd.ExecuteReader();
        //this.ddlEkm.DataSource = sdr;
        //this.ddlEkm.DataTextField = "ExamID";
        //this.ddlEkm.DataValueField = "ID";
        //this.ddlEkm.DataBind();
        //conn.Close();
    }
    protected void gvExaminationInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvExaminationInfo.PageIndex = e.NewPageIndex;
        gvExaminationInfo_Bind();
    }
    protected void gvExaminationInfo_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int ID = (int)gvExaminationInfo.DataKeys[e.RowIndex].Value;//获取GridView主键的值
        string strsql = "delete from tb_examDetail where ID ='" + ID + "'";
        BaseClass.OperateData(strsql);
        gvExaminationInfo_Bind();
    }
    protected void btnSerch_Click(object sender, EventArgs e)
    {
        //lbltype.Text = ddlEkm.SelectedItem.Text.Trim();
        string strsql = "select * from tb_examDetail";
        BaseClass.BindDG(gvExaminationInfo, "ID", strsql, "SingleChooseInfo");
        SqlConnection conn = BaseClass.DBCon();
        //conn.Open();
        //SqlCommand cmd = new SqlCommand("select * from tb_examDetail", conn);
        //SqlDataReader sdr = cmd.ExecuteReader();
        //this.ddlEkm.DataSource = sdr;
        //this.ddlEkm.DataTextField = "ExamID";
        //this.ddlEkm.DataValueField = "ID";
        //this.ddlEkm.DataBind();
        //conn.Close();
    }
}
