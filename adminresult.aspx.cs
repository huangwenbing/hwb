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

public partial class Admin_adminresult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string str = "select * from tb_examResult order by ID desc";
            BaseClass.BindDG(GridView1, "ID", str, "result");
        }
    }
    protected void btncx_Click(object sender, EventArgs e)
    {

        if (tbx_query.Text == "")
        {
            string strsql = "select * from tb_examResult order by ID desc";
            BaseClass.BindDG(GridView1, "ID", strsql, "stuinfo");
        }
        else
        {
            string stype = DropDownList1.SelectedItem.Text;
            string strsql = "";
            switch (stype)
            {
                case "学生编号":
                    strsql = "select * from tb_examResult where StudentID like '%" + tbx_query.Text.Trim() + "%'";
                    BaseClass.BindDG(GridView1, "ID", strsql, "stuinfo"); ;
                    break;
                case "试卷编号":
                    strsql = "select * from tb_examResult where ExamID like '%" + tbx_query.Text.Trim() + "%'";
                    BaseClass.BindDG(GridView1, "ID", strsql, "stuinfo");
                    break;
                case "总成绩":
                    strsql = "select * from tb_examResult where TotalResult like '%" + tbx_query.Text.Trim() + "%'";
                    BaseClass.BindDG(GridView1, "ID", strsql, "stuinfo");
                    break;

            }
        }
    }
    protected void link_Click(object sender, EventArgs e)
    {
        RegisterStartupScript("提示", "<script>window.close();</script>");
        //Response.Redirect("Login.aspx");
    }
}
