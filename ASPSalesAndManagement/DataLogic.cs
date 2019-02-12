using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASPSalesAndManagement
{
    public class DataLogic
    {
        public DataLogic()
        {
        }
        public static string conString = ConfigurationManager.ConnectionStrings["DBConn"].ToString();
        public static SqlConnection GetConnection()
        {
            SqlConnection con = new SqlConnection(conString);
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            return con;
        }
        User123 user = new User123();
        public User123 GetDetailById(int userId)
        {
            using (SqlConnection con = GetConnection())
            {
               //string sql = "select* from tblUser where UserId=@Id";
                using (SqlCommand cmd = new SqlCommand("spGetUserById", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter param = new SqlParameter();
                    param.ParameterName = "@Id";
                    param.Value = userId;
                    cmd.Parameters.Add(param);

                    SqlDataReader rd = cmd.ExecuteReader();
                    while (rd.Read())
                    {
                        user.UserId =Convert.ToInt32( rd["UserId"]);
                        user.UserName = rd["UserName"].ToString();
                        user.Password = rd["Password"].ToString();
                        user.Email = rd["Email"].ToString();
                        user.PhoneNumber = rd["PhoneNumber"].ToString();
                        user.Address = rd["Address"].ToString();
                        user.UserRole =Convert.ToInt32( rd["UserroleId"]);
                        user.Gender = rd["Gender"].ToString();

                    }
                    return user;
                }
            }
        }
    }
}