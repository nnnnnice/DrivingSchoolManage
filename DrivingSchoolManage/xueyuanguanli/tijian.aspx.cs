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

namespace JXGL.xueyuanguanli
{
    public partial class tijian : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string semang = "";
            if (RadioButton1.Checked)
            {
                semang = RadioButton1.Text ;
            }
            else if (RadioButton2.Checked)
            {
                semang = RadioButton2.Text ;
            }
            string hear = "";
            if (RadioButton3.Checked)
            {
                hear = RadioButton3.Text;
            }
            else if (RadioButton4.Checked)
            {
                hear = RadioButton4.Text;
            }
            string leg = "";
            if (RadioButton5.Checked)
            {
                leg = RadioButton5.Text;
            }
            else if (RadioButton6.Checked)
            {
                leg = RadioButton6.Text;
            }
            string limb = "";
            if (RadioButton7.Checked)
            {
                limb = RadioButton7.Text;
            }
            else if (RadioButton8.Checked)
            {
                limb = RadioButton8.Text;
            }
            string body = "";
            if (RadioButton9.Checked)
            {
                body = RadioButton9.Text;
            }
            else if (RadioButton10.Checked)
            {
                body = RadioButton10.Text;
            }

            string connectionString = "Server=DESKTOP-GP0GUGB\\SQLEXPRESS;Database=JXGL;Integrated Security = true;";
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            string sql = string.Format("insert into Tijian(xnum,xname,height,lsight,rsight,semang,hear,leg,limb,body,result) values ('"
                + textbox1.Text + "','" + textbox2.Text + "','" + textbox3.Text + "','" + textbox4.Text + "','"+ textbox6.Text + "','" 
                + semang + "','" + hear + "','" + leg + "','" + limb + "','" + body + "','" + textbox5.Text + "')");
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            textbox1.Text = "";
            textbox2.Text = "";
            textbox3.Text = "";
            textbox4.Text = "";
            textbox5.Text = "";
            lblResult.Text = ""; 
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}
