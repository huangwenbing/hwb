using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Teacher_ChangeQuestionSCInfo : System.Web.UI.Page
{
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            id = Request.QueryString["SCid"].ToString();
            SqlConnection conn = BaseClass.DBCon();  
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from tb_schoose where ID=" + id, conn);
            SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                TxtId.Text = sdr["questionID"].ToString();
                txtQuestionText.Text = sdr["questionText"].ToString();
                txtChooseA.Text = sdr["chooseA"].ToString();
                TxtChooseB.Text = sdr["chooseB"].ToString();
                TxtChooseC.Text = sdr["chooseC"].ToString();
                TxtChooseD.Text = sdr["chooseD"].ToString();
                TxtChapter.Text = sdr["chapter"].ToString();
                txtQuestionID.Text = sdr["courseID"].ToString();
                rblAnswer.SelectedValue = sdr["answer"].ToString().Trim();

            }
            conn.Close();
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {

            //调试备忘，一定要重新获取id值，不知为何?
            id = Request.QueryString["SCid"].ToString();
            string str = "update tb_schoose set questionID='" + txtQuestionID.Text.Trim() + "',questionText='" + txtQuestionText.Text.Trim() + "',chooseA='" + txtChooseA.Text.Trim() + "',chooseB='" + TxtChooseB.Text.Trim() + "',chooseC='" + TxtChooseC.Text.Trim() + "',chooseD='" + TxtChooseD.Text.Trim() + "',answer='" + rblAnswer.SelectedValue + "',chapter='" + TxtChapter.Text.Trim() + "',courseID='" + txtQuestionID.Text.Trim() + "' where ID='" + id + "'";
            BaseClass.OperateData(str);
            Response.Write("<script>alert('保存成功');</script>");
            Response.End();     
        
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManagerQuestionSC.aspx");
    }
}
