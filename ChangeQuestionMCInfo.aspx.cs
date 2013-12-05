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

public partial class Teacher_ChangeQuestionMCInfo : System.Web.UI.Page
{
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            id = Request.QueryString["MCid"].ToString();
            SqlConnection conn = BaseClass.DBCon();  
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from tb_mchoose where ID=" + id, conn);
            SqlDataReader sdr = cmd.ExecuteReader();
            string answer = "";
            while (sdr.Read())
            {
                txtQuestionID.Text = sdr["questionID"].ToString();
                txtContent.Text = sdr["questionText"].ToString();
                txtAnsA.Text = sdr["chooseA"].ToString();
                txtAnsB.Text = sdr["chooseB"].ToString();
                txtAnsC.Text = sdr["chooseC"].ToString();
                txtAnsD.Text = sdr["chooseD"].ToString();
                txtAnsE.Text = sdr["chooseE"].ToString();
                txtAnsF.Text = sdr["chooseF"].ToString();
                txtAnsG.Text = sdr["chooseG"].ToString();
                txtAnsH.Text = sdr["chooseH"].ToString();
                txtAnsI.Text = sdr["chooseI"].ToString();
                //取出答案
                answer = sdr["answer"].ToString().Trim();
                //得出长度循环
                for (int i = 0; i < CkbAnswer.Items.Count; i++)
                 {
                    //一个一个取出进行判断
                     for (int a = 0; a < answer.Length;a++ )
                     {
                         if (CkbAnswer.Items[i].Value == answer.Substring(a,1))
                         {
                             CkbAnswer.Items[i].Selected = true;
                         }
                     }
                }
                TxtChapter.Text = sdr["chapter"].ToString();
                TxtCourseID.Text = sdr["courseID"].ToString();
            }
            conn.Close();
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
            
        string answer = "";
        for (int i = 0; i < CkbAnswer.Items.Count; i++)
        {
            if (CkbAnswer.Items[i].Selected == true)
            {
                answer += CkbAnswer.Items[i].Value;
            }
        }
        //调试备忘，一定要重新获取id值，不知为何?
        id = Request.QueryString["MCid"].ToString();
        string str = "update tb_mchoose set questionID='" + txtQuestionID.Text.Trim() + "',questionText='" + txtContent.Text.Trim() + "',chooseA='" + txtAnsA.Text.Trim() + "',chooseB='" + txtAnsB.Text.Trim() + "',chooseC='" + txtAnsC.Text.Trim() + "',chooseD='" + txtAnsD.Text.Trim() + "',chooseE='" + txtAnsE.Text.Trim() + "',chooseF='" + txtAnsF.Text.Trim() + "',chooseG='" + txtAnsG.Text.Trim() + "',chooseH='" + txtAnsH.Text.Trim() + "',chooseI='" + txtAnsI.Text.Trim() + "',answer='" + answer + "',chapter='" + TxtChapter.Text.Trim() + "',courseID='" + TxtCourseID.Text.Trim() + "' where ID='" + id + "'";
        BaseClass.OperateData(str);
        Response.Write("<script>alert('保存成功');</script>");
        Response.End();     
        
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManagerQuestionMC.aspx");
    }
}
