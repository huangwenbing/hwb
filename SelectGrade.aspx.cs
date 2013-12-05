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

public partial class Teacher_SelectGrade : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strsql = "select * from tb_examResult ";
            BaseClass.BindDG(GridView1, "ID", strsql, "stuInfo");
        }
    }
    protected void btnSerch_Click(object sender, EventArgs e)
    {
        if (txtKey.Text == "")
        {
            string strsql = "select * from tb_examResult ";
            BaseClass.BindDG(GridView1, "ID", strsql, "stuinfo");
        }
        else
        {
            string stype = ddlType.SelectedItem.Text;
            string strsql = "";
            switch (stype)
            {
                case "学号":
                    strsql = "select StudentID from tb_examResult where StudentID like '%" + txtKey.Text.Trim() + "%'";
                    BaseClass.BindDG(GridView1, "ID", strsql, "stuinfo"); ;
                    break;
                case "试卷号":
                    strsql = "select * from tb_examResult where StudentName like '%" + txtKey.Text.Trim() + "%'";
                    BaseClass.BindDG(GridView1, "ID", strsql, "stuinfo");
                    break;
            }
        }
    }
    protected void btnReturn_Click(object sender, EventArgs e)
    {
        Response.Write("<script>location='../Teacher/SelectGrade.aspx'</script>");
    }
}
