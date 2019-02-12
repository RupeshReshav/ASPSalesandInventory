using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;

namespace ASPSalesAndManagement
{
    /// <summary>
    /// Summary description for UserService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class UserService : System.Web.Services.WebService
    {
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
       

        public object JavaScriptSerialize { get; private set; }

        [WebMethod]
        public void GetUserById(int userId)
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
                    User123 user = new User123();
                    SqlDataReader rd = cmd.ExecuteReader();
                    while (rd.Read())
                    {
                       
                        user.UserId = Convert.ToInt32(rd["UserId"]);
                        user.UserName = rd["UserName"].ToString();
                        user.Password = rd["Password"].ToString();
                        user.Email = rd["Email"].ToString();
                        user.PhoneNumber = rd["PhoneNumber"].ToString();
                        user.Address = rd["Address"].ToString();
                        user.UserRole = Convert.ToInt32(rd["UserroleId"]);
                        user.Gender = rd["Gender"].ToString();

                    }
                    JavaScriptSerializer js = new JavaScriptSerializer();
                    Context.Response.Write(js.Serialize(user));
                   
                }
            }


        }

      
        List<User123> list = new List<User123>();
        [WebMethod]
        public void GetAllUserbyRole()
        {
            using (SqlConnection con=GetConnection())
            {
                using (SqlCommand cmd= new SqlCommand("select * from tblUser where UserroleId=2",con))
                {
                    cmd.CommandType = CommandType.Text;
                    //cmd.Parameters.AddWithValue("@roleid", roleid);
                    SqlDataReader rd = cmd.ExecuteReader();
                    while (rd.Read())
                    {
                        User123 user = new User123();
                        user.UserId = Convert.ToInt32(rd["UserId"]);
                        user.UserName = rd["UserName"].ToString();
                        user.Password = rd["Password"].ToString();
                        user.Email = rd["Email"].ToString();
                        user.PhoneNumber = rd["PhoneNumber"].ToString();
                        user.Address = rd["Address"].ToString();
                        user.UserRole = Convert.ToInt32(rd["UserroleId"]);
                        user.Gender = rd["Gender"].ToString();
                        list.Add(user);
                    }
                    
                    JavaScriptSerializer js = new JavaScriptSerializer();
                    Context.Response.Write(js.Serialize(list));
                }
            }
        }

        [WebMethod]
        public void CreateUser(User123 user)
        {
            using (SqlConnection con=GetConnection())
            {
                using (SqlCommand cmd=new SqlCommand("spCreateUser", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    //cmd.Parameters.Add(new SqlParameter()
                    //{
                    //     ParameterName= "@username",
                    //     Value=user.UserName

                    //});
                    //cmd.Parameters.Add(new SqlParameter()
                    //{
                    //    ParameterName = "@password",
                    //    Value = user.Password

                    //});
                    //cmd.Parameters.Add(new SqlParameter()
                    //{
                    //    ParameterName = "@email",
                    //    Value = user.Email

                    //});
                    //cmd.Parameters.Add(new SqlParameter()
                    //{
                    //    ParameterName = "@phonenumber",
                    //    Value = user.PhoneNumber

                    //});
                    //cmd.Parameters.Add(new SqlParameter()
                    //{
                    //    ParameterName = "@address",
                    //    Value = user.Address

                    //});
                    //cmd.Parameters.Add(new SqlParameter()
                    //{
                    //    ParameterName = "@userrole",
                    //    Value = user.UserRole

                    //});
                    //cmd.Parameters.Add(new SqlParameter()
                    //{
                    //    ParameterName = "@gender",
                    //    Value = user.Gender*

                    //});
                    cmd.Parameters.AddWithValue("@username", user.UserName);
                    cmd.Parameters.AddWithValue("@password", user.Password);
                    cmd.Parameters.AddWithValue("@email", user.Email);
                    cmd.Parameters.AddWithValue("@phonenumber", user.PhoneNumber);
                    cmd.Parameters.AddWithValue("@address", user.UserRole);
                    cmd.Parameters.AddWithValue("@userrole", user.UserRole);
                    cmd.Parameters.AddWithValue("@gender", user.Gender);
                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}
    