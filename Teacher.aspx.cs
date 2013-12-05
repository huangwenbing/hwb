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


public partial class Teacher_Teacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["teacherID"] == "")
            Response.Redirect("Login.aspx");
        if (!IsPostBack)
        {
            lbl_teacherId.Text = Session["teacherID"].ToString();
            SqlConnection conn = BaseClass.DBCon();
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from tb_teacher where teacherID='" + Session["teacherID"].ToString() + "'", conn);
            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            lbl_teacherName.Text = sdr["TeacherName"].ToString();
            Label1.Text = sdr["Sex"].ToString();
            conn.Close();
            Session["TeacherName"] = lbl_teacherName.Text;
            Session["Sex"] = Label1.Text;
        }
        
        
    }
}
