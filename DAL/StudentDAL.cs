﻿﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data.SqlClient;
using System.Configuration;

namespace DAL
{
    public class StudentDAL
    {
        //增
        public bool InsertOneRecord(Student student)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ProjectAnswerConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string queryString = "insert into Student(StuID,StuPwd,StuName,Sex,Age,StuPhone) values(@StuID,@StuPwd,@StuName,@Sex,@Age,@StuPhone)";
            SqlParameter[] sqlParam = new SqlParameter[6];
            sqlParam[0] = new SqlParameter("@StuID", student.StuID);
            sqlParam[1] = new SqlParameter("@StuPwd", student.StuPwd);
            sqlParam[2] = new SqlParameter("@StuName", student.StuName);
            sqlParam[3] = new SqlParameter("@Sex", student.Sex);
            sqlParam[4] = new SqlParameter("@Age", student.Age);
            sqlParam[5] = new SqlParameter("@StuPhone", student.StuPhone);
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
        public bool DeleteOneRecord(string stuID)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ProjectAnswerConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string queryString = "delete from Student where StuID=@StuID";
            SqlCommand command = new SqlCommand(queryString, connection);

            command.Parameters.AddWithValue("StuID", stuID);

            int r = command.ExecuteNonQuery();

            connection.Close();

            if (r == 1)
                return true;
            else
                return false;
        }
        //改
        public bool UpdateOneRecord(Student student)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ProjectAnswerConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string queryString = "update Student set StuPwd=@StuPwd,StuName=@StuName,Sex=@Sex,Age=@Age,StuPhone=@StuPhone where StuID=@StuID";
            SqlCommand command = new SqlCommand(queryString, connection);

            SqlParameter[] sqlParam = new SqlParameter[6];
            sqlParam[0] = new SqlParameter("@StuPwd", student.StuPwd);
            sqlParam[1] = new SqlParameter("@StuName", student.StuName);
            sqlParam[2] = new SqlParameter("@Sex", student.Sex);
            sqlParam[3] = new SqlParameter("@Age", student.Age);
            sqlParam[4] = new SqlParameter("@StuPhone", student.StuPhone);
            sqlParam[5] = new SqlParameter("@StuID", student.StuID);
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
        public Student QueryOneRecord(string stuID)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ProjectAnswerConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            Student student = null;
            connection.Open();
            string queryString = "select * from Student where StuID=@StuID";
            SqlCommand command = new SqlCommand(queryString, connection);
            command.Parameters.AddWithValue("StuID", stuID);

            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                student = new Student();
                student.StuID = reader["StuID"].ToString();
                student.StuPwd = reader["StuPwd"].ToString();
                student.StuName = reader["StuName"].ToString();
                student.Sex = reader["Sex"].ToString();
                student.Age = Convert.ToInt32(reader["Age"]);
                student.StuPhone = reader["StuPhone"].ToString();
            }

            reader.Close();
            connection.Close();
            return student;
        }
    }
}
