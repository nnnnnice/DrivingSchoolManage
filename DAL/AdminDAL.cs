using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data.SqlClient;
using System.Configuration;

namespace DAL
{
    public class AdminDAL
    {
        //增
        public bool InsertOneRecord(Admin admin)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ProjectAnswerConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string queryString = "insert into Admin(AdminID,AdminPwd,AdminName,Sex,Age,AdminPhone) values(@AdminID,@AdminPwd,@AdminName,@Sex,@Age,@AdminPhone)";
            SqlParameter[] sqlParam = new SqlParameter[6];
            sqlParam[0] = new SqlParameter("@AdminID", admin.AdminID);
            sqlParam[1] = new SqlParameter("@AdminPwd", admin.AdminPwd);
            sqlParam[2] = new SqlParameter("@AdminName", admin.AdminName);
            sqlParam[3] = new SqlParameter("@Sex", admin.Sex);
            sqlParam[4] = new SqlParameter("@Age", admin.Age);
            sqlParam[5] = new SqlParameter("@AdminPhone", admin.AdminPhone);
            SqlCommand command = new SqlCommand(queryString, connection);

            command.Parameters.AddRange(sqlParam);

            int r = command.ExecuteNonQuery();

            connection.Close();

            if (r == 1)
                return true;
            else
                return false;
        }
        //删
        public bool DeleteOneRecord(string adminID)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ProjectAnswerConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string queryString = "delete from Teacher where AdminID=@AdminID";
            SqlCommand command = new SqlCommand(queryString, connection);

            command.Parameters.AddWithValue("AdminID", adminID);

            int r = command.ExecuteNonQuery();

            connection.Close();

            if (r == 1)
                return true;
            else
                return false;
        }
        //改
        public bool UpdateOneRecord(Admin admin)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ProjectAnswerConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string queryString = "update Teacher set AdminPwd=@AdminPwd,AdminName=@AdminName,Sex=@Sex,Age=@Age,AdminPhone=@AdminPhone where AdminID=@AdminID";
            SqlCommand command = new SqlCommand(queryString, connection);

            SqlParameter[] sqlParam = new SqlParameter[6];
            sqlParam[0] = new SqlParameter("@AdminPwd", admin.AdminPwd);
            sqlParam[1] = new SqlParameter("@AdminName", admin.AdminName);
            sqlParam[2] = new SqlParameter("@Sex", admin.Sex);
            sqlParam[3] = new SqlParameter("@Age", admin.Age);
            sqlParam[4] = new SqlParameter("@AdminPhone", admin.AdminPhone);
            sqlParam[5] = new SqlParameter("@AdminID", admin.AdminID);
            command.Parameters.AddRange(sqlParam);

            int r = command.ExecuteNonQuery();

            connection.Close();

            if (r == 1)
            {
                return true;
            }
            else
                return false;
        }
        //查
        public Admin QueryOneRecord(string adminID)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ProjectAnswerConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            Admin admin = null;
            connection.Open();
            string queryString = "select * from Admin where AdminID=@AdminID";
            SqlCommand command = new SqlCommand(queryString, connection);
            command.Parameters.AddWithValue("AdminID", adminID);

            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                admin = new Admin();
                admin.AdminID = reader["AdminID"].ToString();
                admin.AdminPwd = reader["AdminPwd"].ToString();
                admin.AdminName = reader["AdminName"].ToString();
                admin.Sex = reader["Sex"].ToString();
                admin.Age = Convert.ToInt32(reader["Age"]);
                admin.AdminPhone = reader["AdminPhone"].ToString();
            }

            reader.Close();
            connection.Close();
            return admin;
        }
    }
}
