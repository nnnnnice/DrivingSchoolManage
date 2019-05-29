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


namespace DrivingSchoolManage.users
{
    public partial class ManageUsers : System.Web.UI.Page
    {
        SqlConnection sqlcon;
        SqlCommand sqlcom;
        string strCon = "Server=DESKTOP-GP0GUGB\\SQLEXPRESS;Database=JXGL;Integrated Security = true;";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind();
            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            bind();
        }

        //删除
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string sqlstr = "delete from Users where ID='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";
            sqlcon = new SqlConnection(strCon);
            sqlcom = new SqlCommand(sqlstr, sqlcon);
            sqlcon.Open();
            sqlcom.ExecuteNonQuery();
            sqlcon.Close();
            bind();
        }

        //更新
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            sqlcon = new SqlConnection(strCon);
            string sqlstr = "update Users set username='"
                + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text.ToString().Trim() + "',userpwd='"
                + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim() + "',jobname='"
                + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text.ToString().Trim() + "',userstyle='"
                + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[4].Controls[0])).Text.ToString().Trim() + "',functions='"
                + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[5].Controls[0])).Text.ToString().Trim() + "' where ID='"
                + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";
            sqlcom = new SqlCommand(sqlstr, sqlcon);
            sqlcon.Open();
            sqlcom.ExecuteNonQuery();
            sqlcon.Close();
            GridView1.EditIndex = -1;
            bind();
        }

        //取消
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bind();
        }

        //绑定
        public void bind()
        {
            string sqlstr = "select * from Users";
            sqlcon = new SqlConnection(strCon);
            SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlcon);
            DataSet myds = new DataSet();
            sqlcon.Open();
            myda.Fill(myds, "Users");
            GridView1.DataSource = myds;
            GridView1.DataKeyNames = new string[] { "ID" };//主键
            GridView1.DataBind();
            sqlcon.Close();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //如果是绑定数据行 
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
                {
                    ((LinkButton)e.Row.Cells[8].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除：\"" + e.Row.Cells[1].Text + "\"吗?')");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sqlstr = "select * from Users where ID = '" + Textbox1.Text.ToString().Trim() + "';";
            sqlcon = new SqlConnection(strCon);
            SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlcon);
            DataSet myds = new DataSet();
            sqlcon.Open();
            myda.Fill(myds, "Users");
            GridView1.DataSource = myds;
            GridView1.DataKeyNames = new string[] { "ID" };//主键
            GridView1.DataBind();
            sqlcon.Close();
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
