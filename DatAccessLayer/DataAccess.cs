using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatAccessLayer
{
    public class DataAccess
    {
        public DataAccess()
        {
        }
       public static string conString = ConfigurationManager.ConnectionStrings["DBConn"].ToString();
        public static SqlConnection GetConnection()
        {
            SqlConnection con = new SqlConnection(conString);
            if (con.State!=ConnectionState.Open)
            {
                con.Open();
            }
            return con;
        }
        public DataTable GetTable(string sql, CommandType cmdtype, SqlParameter[] param)
        {
            using (SqlConnection con= GetConnection())
            {
                using (SqlCommand cmd=new SqlCommand(sql,con))
                {
                    if (param!=null)
                    {
                        cmd.Parameters.AddRange(param);
                    }
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    return dt;
                }
            }
        }
        public DataSet GetSelectedTable(string sql, CommandType cmdtype, SqlParameter[] param)
        {
            using (SqlConnection con = GetConnection())
            {
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    if (param != null)
                    {
                       
                        cmd.Parameters.AddRange(param);
                        cmd.Parameters.Clear();

                    }
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet dt = new DataSet();
                    da.Fill(dt,"Usertable");
                    return dt;
                    
                }
            }
        }
        public int IUD(string sql, CommandType cmdtype, SqlParameter[] param)
        {
            
            using (SqlConnection con= GetConnection())
            {
                using (SqlCommand cmd=new SqlCommand(sql,con))
                {
                    
                    if (param!=null)
                    {
                        cmd.Parameters.AddRange(param);
                    }
                    return cmd.ExecuteNonQuery();

                }
            }
        }
        //public DataSet LoginCheck(string username, string password)
        //{
        //    SqlConnection con = GetConnection();
        //    SqlCommand cmd = new SqlCommand("select *from tblUser where UserName='" + username + "' and Password='" + password + "'", con);
        //    DataSet ds = new DataSet();
        //    SqlDataAdapter sda = new SqlDataAdapter(cmd);
        //    sda.Fill(ds,"UserTable");
            
        //    return ds;
        //}
        //public DataTable GetAllSupplier()
        //{
        //    SqlConnection con = GetConnection();
        //    SqlCommand cmd = new SqlCommand("Select *from tblUser where UserroleId='" + 2 + "' ", con);
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    return dt;
        //}
        public DataSet GetUserbyUserId(int id)
        {
            SqlConnection con = GetConnection();
            SqlCommand cmd = new SqlCommand("Select *from tblUser where UserId='" + id + "' ", con);
            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(ds, "UserDetail");

            return ds;
        }
       
        //public int CreateUser(string username, string password, string email, string phonenumber, string address,
        //    string gender, int userroleid)
        //{
        //    using (SqlConnection con = GetConnection())
        //    {
        //        SqlCommand cmd = new SqlCommand("insert into tblUser (UserName, Password, Email, PhoneNumber, Address, Gender, UserroleId) values('" + username + "','" + password + "' ,'" + email + "' ,'" + phonenumber + "' ,'" + address + "' ,'" + gender + "' ,'" + userroleid + "')", con);
        //        int i = cmd.ExecuteNonQuery();
                
        //        return i;
        //    }
                
            

        //}
    }
}
