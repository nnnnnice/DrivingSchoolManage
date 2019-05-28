using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using DAL;
using System.Web.Security;

namespace BLL
{
    public class StudentBLL
    {
        private StudentDAL _studentDAL = new StudentDAL();
        public bool RegisterStudent(Student student)
        {
            //将注册密码加密
            student.StuPwd = FormsAuthentication.HashPasswordForStoringInConfigFile(student.StuPwd, "MD5");
            return _studentDAL.InsertOneRecord(student);
        }

        public bool DeleteStudent(string stuID)
        {
            return _studentDAL.DeleteOneRecord(stuID);
        }

        public bool ModifyStudent(Student student)
        {
            return _studentDAL.UpdateOneRecord(student);
        }

        public bool ModifyStudentPwd(string stuID, string newPwd)
        {
            Student student = _studentDAL.QueryOneRecord(stuID);
            student.StuPwd = FormsAuthentication.HashPasswordForStoringInConfigFile(newPwd, "MD5");
            return _studentDAL.UpdateOneRecord(student);
        }

        public Student QueryStudent(string stuID)
        {
            return _studentDAL.QueryOneRecord(stuID);
        }

        public bool VerifyStudentPwd(string stuID, string pwd)
        {
            Student student = _studentDAL.QueryOneRecord(stuID);
            if (student == null)
                return false;
            string hashedPwd = FormsAuthentication.HashPasswordForStoringInConfigFile(pwd, "MD5");
            if (hashedPwd == student.StuPwd)
                return true;
            else
                return false;
        }

        //重置密码
        public bool ResetPassword(string stuID)
        {
            return ModifyStudentPwd(stuID, "123456");
        }
    }
}
