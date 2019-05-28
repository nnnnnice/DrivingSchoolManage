using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using DAL;
using System.Web.Security;

namespace BLL
{
    public class AdminBLL
    {
        private AdminDAL _adminDAL = new AdminDAL();
        public bool RegisterAdmin(Admin admin)
        {
            //将注册密码加密
            admin.AdminPwd = FormsAuthentication.HashPasswordForStoringInConfigFile(admin.AdminPwd, "MD5");
            return _adminDAL.InsertOneRecord(admin);
        }

        public bool DeleteAdmin(string adminID)
        {
            return _adminDAL.DeleteOneRecord(adminID);
        }

        public bool ModifyAdmin(Admin admin)
        {
            return _adminDAL.UpdateOneRecord(admin);
        }

        public bool ModifyAdminPwd(string adminID, string newPwd)
        {
            Admin admin = _adminDAL.QueryOneRecord(adminID);
            admin.AdminPwd = FormsAuthentication.HashPasswordForStoringInConfigFile(newPwd, "MD5");
            return _adminDAL.UpdateOneRecord(admin);
        }

        public Admin QueryAdmin(string adminID)
        {
            return _adminDAL.QueryOneRecord(adminID);
        }

        public bool VerifyAdminPwd(string adminID, string pwd)
        {
            Admin admin = _adminDAL.QueryOneRecord(adminID);
            if (admin == null)
                return false;
            string hashedPwd = FormsAuthentication.HashPasswordForStoringInConfigFile(pwd, "MD5");
            if (hashedPwd == admin.AdminPwd)
                return true;
            else
                return false;
        }
    }
}
