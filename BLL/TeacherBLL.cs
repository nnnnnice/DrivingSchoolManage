using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using DAL;
using System.Web.Security;

namespace BLL
{
    public class TeacherBLL
    {
        private TeacherDAL _teacherDAL = new TeacherDAL();
        public bool RegisterTeacher(Teacher teacher)
        {
            //将注册密码加密
            teacher.TeaPwd = FormsAuthentication.HashPasswordForStoringInConfigFile(teacher.TeaPwd, "MD5");
            return _teacherDAL.InsertOneRecord(teacher);
        }

        public bool DeleteTeacher(string teaID)
        {
            return _teacherDAL.DeleteOneRecord(teaID);
        }

        public bool ModifyTeacher(Teacher teacher)
        {
            return _teacherDAL.UpdateOneRecord(teacher);
        }

        public bool ModifyTeacherPwd(string teaID, string newPwd)
        {
            Teacher teacher = _teacherDAL.QueryOneRecord(teaID);
            teacher.TeaPwd = FormsAuthentication.HashPasswordForStoringInConfigFile(newPwd, "MD5");
            return _teacherDAL.UpdateOneRecord(teacher);
        }

        public Teacher QueryTeacher(string teaID)
        {
            return _teacherDAL.QueryOneRecord(teaID);
        }

        public bool VerifyTeacherPwd(string teaID, string pwd)
        {
            Teacher teacher = _teacherDAL.QueryOneRecord(teaID);
            if (teacher == null)
                return false;
            string hashedPwd = FormsAuthentication.HashPasswordForStoringInConfigFile(pwd, "MD5");
            if (hashedPwd == teacher.TeaPwd)
                return true;
            else
                return false;
        }
    }
}
