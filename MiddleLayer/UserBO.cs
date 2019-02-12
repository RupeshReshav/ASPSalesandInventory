using DatAccessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MiddleLayer
{
   public  class UserBO
    {
        public string UserName { get; set; }
        public string Password { get; set; }
        public int UserRoleId { get; set; }
        
        DataAccess dl = new DataAccess();
        public int GetUserbtUsernameAndPassword(string username, string password)
        {
            string sql = "select *from tblUser where UserName='"+ @username + "' and Password='"+ @password + "'";
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@username",username),
                new SqlParameter("@password",password)
            };
            
            if (dl.GetSelectedTable(sql,CommandType.Text,param).Tables[0].Rows.Count>0)
            {
                DataSet ds = dl.GetSelectedTable(sql, CommandType.Text, param);
                DataRow dr =ds.Tables["UserTable"].Rows[0];
                UserRoleId = Convert.ToInt32(dr["UserroleId"].ToString());

               return UserRoleId;
            }
            else
            {

             return 0;
            }
        }
        //public int checUserForLogin()
        //{
        //    if (dl.LoginCheck(UserName, Password).Tables[0].Rows.Count >0)
        //    {
        //        DataSet ds = dl.LoginCheck(UserName, Password);
        //        DataRow dr =ds.Tables["UserTable"].Rows[0];
        //        UserRoleId = Convert.ToInt32(dr["UserroleId"].ToString());

        //        return UserRoleId;
        //    }
        //    else
        //    {

        //        return 0;
        //    }



        //}


    }
}
