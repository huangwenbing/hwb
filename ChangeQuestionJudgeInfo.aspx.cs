﻿using System;
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

public partial class Teacher_ChangeQuestionJudgeInfo : System.Web.UI.Page
{
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            id = Request.QueryString["Jid"].ToString();
            SqlConnection conn = BaseClass.DBCon();  
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from tb_judge where ID=" + id, conn);
            SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                txtQuestionID.Text = sdr["questionID"].ToString();
                txtContent.Text = sdr["questionText"].ToString();
                rblRightAns.SelectedValue = sdr["answer"].ToString().Trim();
                TxtChapter.Text = sdr["chapter"].ToString();
                TxtCourseID.Text = sdr["courseID"].ToString();
            }
            conn.Close();
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
            
        //调试备忘，一定要重新获取id值，不知为何?
        id = Request.QueryString["Jid"].ToString();
        string str = "update tb_judge set questionID='" + txtQuestionID.Text.Trim() + "',questionText='" + txtContent.Text.Trim() + "',answer='" + rblRightAns.SelectedValue + "',chapter='" + TxtChapter.Text.Trim() + "',courseID='" + TxtCourseID.Text.Trim() + "' where ID='" + id + "'";
        BaseClass.OperateData(str);
        Response.Write("<script>alert('保存成功');</script>");
        Response.End();     
        
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManagerQuestionJudge.aspx");
    }
}
