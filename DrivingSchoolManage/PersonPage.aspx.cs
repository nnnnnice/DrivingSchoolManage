using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;


namespace DrivingSchoolManage
{
    public partial class PersonPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonModify_Click(object sender, EventArgs e)
        {
            string connectionString = "Server=DESKTOP-GP0GUGB\\SQLEXPRESS;Database=JXGL;Integrated Security = true;";
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            if (this.TextBox1.Text.Trim() == string.Empty)
            {
                Response.Write("请输入正确的旧密码!");
            }
            else
            {
                if (this.TextBox2.Text.Trim() != this.TextBox3.Text.Trim())
                {
                    Response.Write("新密码输入不一致,请重新输入!");
                }
                else
                {
                    //TextBox2 TextBox3相等,所以只需要验证一个不为空即可  
                    if (this.TextBox2.Text.Trim() != string.Empty)
                    {
                        //写入数据库操作
                        SqlCommand selectedcmd = new SqlCommand("select username,userpwd from Users where username='" + txtid.Text.Trim() + "'and userpwd='" + TextBox1.Text.Trim() + "'", conn);
                        SqlDataReader sdr = selectedcmd.ExecuteReader();
                        if (sdr.Read())
                        {
                            sdr.Close();
                            SqlCommand updatecmd = new SqlCommand("update Users set userpwd='" + TextBox2.Text.Trim() + "'where username='" + txtid.Text.Trim() + "'", conn);
                            int i = updatecmd.ExecuteNonQuery();
                            if (i == 1)
                            {
                                Response.Write("<script language =javascript>alert('密码修改成功')</script>");
                            }
                            else
                            {
                                Response.Write("<script language =javascript>alert('密码修改失败')</script>");
                            }
                        }
                        else
                        {
                            Response.Write("<script language =javascript>alert('原密码错误')</script>");

                        }
                        conn.Close();
                    }
                }
            }
        }
    }
}
