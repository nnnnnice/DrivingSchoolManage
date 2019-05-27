using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DrivingSchoolManage
{
    public partial class MainPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["username"] = "pth";
            Session["jobname"] = "管理员";
            if (Session["username"] == null)
            {
                Response.Redirect("~/login.aspx");
            }

            if (IsPostBack == false)
            {
                //判断当前登录的角色
                /*
                 * if (Session["jobname"].ToString() == "学员")
                    SiteMapDataSourceMenu.SiteMapProvider = "StudentSiteMapProvider";
                if (Session["jobname"].ToString() == "教练")
                    SiteMapDataSourceMenu.SiteMapProvider = "TeacherSiteMapProvider";
                 */
                if (Session["jobname"].ToString() == "管理员")
                    SiteMapDataSourceMenu.SiteMapProvider = "AdminSiteMapProvider";
             
            }
        }
    }
}
