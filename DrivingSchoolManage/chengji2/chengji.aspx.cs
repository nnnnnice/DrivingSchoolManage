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

namespace JXGL.chengji2
{
    public partial class chengji : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = "Server=DESKTOP-GP0GUGB\\SQLEXPRESS;Database=JXGL;Integrated Security = true;";
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            string sql = string.Format("insert into Score(xnum,xname,firstscore,secondscore,thirdscore,forthscore) values ('"
                +TextBox1.Text +"','"+TextBox2.Text +"','"+TextBox3.Text +"','"
                +TextBox4.Text +"','"+TextBox5.Text +"','"+TextBox6.Text +"')");
            SqlCommand cmd = new SqlCommand(sql, conn); 
            int i = cmd.ExecuteNonQuery(); 
            if (i > 0) 
            { 
                lblResult.Text = "信息保存成功"; 
            } 
            else 
            { 
                lblResult.Text = "操作失败"; 
            } 
            conn.Close(); 
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
        
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";

        }
    }
}
