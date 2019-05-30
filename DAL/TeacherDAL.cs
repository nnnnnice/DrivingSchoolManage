using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data.SqlClient;
using System.Configuration;

namespace DAL
{
    public class TeacherDAL
    {
        //增
        public bool InsertOneRecord(Teacher teacher)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ProjectAnswerConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string queryString = "insert into Teacher(TeaID,TeaPwd,TeaName,Sex,Age,TeaPhone) values(@TeaID,@TeaPwd,@TeaName,@Sex,@Age,@TeaPhone)";
            SqlParameter[] sqlParam = new SqlParameter[6];
            sqlParam[0] = new SqlParameter("@TeaID", teacher.TeaID);
            sqlParam[1] = new SqlParameter("@TeaPwd", teacher.TeaPwd);
            sqlParam[2] = new SqlParameter("@TeaName", teacher.TeaName);
            sqlParam[3] = new SqlParameter("@Sex", teacher.Sex);
            sqlParam[4] = new SqlParameter("@Age", teacher.Age);
            sqlParam[5] = new SqlParameter("@TeaPhone", teacher.TeaPhone);
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
        public bool DeleteOneRecord(string teaID)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ProjectAnswerConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string queryString = "delete from Teacher where TeaID=@TeaID";
            SqlCommand command = new SqlCommand(queryString, connection);

            command.Parameters.AddWithValue("TeaID", teaID);

            int r = command.ExecuteNonQuery();

            connection.Close();

            if (r == 1)
                return true;
            else
                return false;
        }
        //改
        public bool UpdateOneRecord(Teacher teacher)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ProjectAnswerConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string queryString = "update Teacher set TeaPwd=@TeaPwd,TeaName=@TeaName,Sex=@Sex,Age=@Age,TeaPhone=@TeaPhone where TeaID=@TeaID";
            SqlCommand command = new SqlCommand(queryString, connection);

            SqlParameter[] sqlParam = new SqlParameter[6];
            sqlParam[0] = new SqlParameter("@TeaPwd", teacher.TeaPwd);
            sqlParam[1] = new SqlParameter("@TeaName", teacher.TeaName);
            sqlParam[2] = new SqlParameter("@Sex", teacher.Sex);
            sqlParam[3] = new SqlParameter("@Age", teacher.Age);
            sqlParam[4] = new SqlParameter("@TeaPhone", teacher.TeaPhone);
            sqlParam[5] = new SqlParameter("@TeaID", teacher.TeaID);
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
        public Teacher QueryOneRecord(string teaID)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ProjectAnswerConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            Teacher teacher = null;
            connection.Open();
            string queryString = "select * from Teacher where TeaID=@TeaID";
            SqlCommand command = new SqlCommand(queryString, connection);
            command.Parameters.AddWithValue("TeaID", teaID);

            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                teacher = new Teacher();
                teacher.TeaID = reader["TeaID"].ToString();
                teacher.TeaPwd = reader["TeaPwd"].ToString();
                teacher.TeaName = reader["TeaName"].ToString();
                teacher.Sex = reader["Sex"].ToString();
                teacher.Age = Convert.ToInt32(reader["Age"]);
                teacher.TeaPhone = reader["TeaPhone"].ToString();
            }

            reader.Close();
            connection.Close();
            return teacher;
        }
    }
}
