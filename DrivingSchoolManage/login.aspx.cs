using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Data.SqlClient; 
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace JXGL
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //记录用户名和用户类型
            Session["username"] = txtid.Text;
            Session["jobname"] = RadioButtonListRole.SelectedValue;

            string connectionString = "Server=(local);Database=JXGL;Integrated Security = true;";
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();

            string sql = "";
            if (RadioButtonListRole.SelectedValue == "学员")
            {
                sql = "select * from Users where username='" + txtid.Text + "'and userpwd='" + txtPwd.Text + "'and jobname='学员'";
                SqlCommand cmd = new SqlCommand(sql, conn);
                object obj = cmd.ExecuteScalar();
                if (obj != null) Response.Write("<script language=javascript>alert('登陆成功!');location='Student/StudentPage.aspx?a=" + txtid.Text + "';</script>");
                else Response.Write("<<script language=javascript>alert('登陆失败!');</script>");
            }
            else if (RadioButtonListRole.SelectedValue == "教练")
            {
                sql = "select * from Users where username='" + txtid.Text + "'and userpwd='" + txtPwd.Text + "'and jobname='教练'";
                SqlCommand cmd = new SqlCommand(sql, conn);
                object obj = cmd.ExecuteScalar();
                if (obj != null) Response.Write("<script language=javascript>alert('登陆成功!');location='Teacher/TeacherPage.aspx?a=" + txtid.Text + "';</script>");
                else Response.Write("<<script language=javascript>alert('登陆失败!');</script>");
            }
            else if (RadioButtonListRole.SelectedValue == "管理员")
            {
                sql = "select * from Users where username='" + txtid.Text + "'and userpwd='" + txtPwd.Text + "'and jobname='管理员'";
                SqlCommand cmd = new SqlCommand(sql, conn);
                object obj = cmd.ExecuteScalar();
                if (obj != null) Response.Write("<script language=javascript>alert('登陆成功!');location='Admin/AdminPage.aspx?a=" + txtid.Text + "';</script>");
                else Response.Write("<<script language=javascript>alert('登陆失败!');</script>");
            }

            conn.Close();
        }
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        { }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtid.Text = "";
            txtPwd.Text = "";
        } 
    }
}
