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
    public class User
    {
        
        public int UserId { get; set; }
        public string UserName { get; set; }

        public string Email { get; set; }
        public string Password { get; set; }
        
        
        public string Address { get; set; }
        public string PhoneNumber { get; set; }
        public string Gender { get; set; }
        public int UserRole { get; set; }

        DataAccess da = new DataAccess();
        public int GetAlluser(User user)
        {
            string sql = "insert into tblUser (UserName, Password, Email, PhoneNumber, Address, Gender, UserroleId)" + " values(@username, @password, @email, @phonenumber, @address,@gender, @userroleid)";
            //string sql = "insert into tblUser (UserName, Password, Email, PhoneNumber, Address, Gender, UserroleId) " +
            //    "values('" + user.UserName + "','" + user.Password + "' ,'" + user.Email + "' ,'" + user.PhoneNumber + "' ,'" + user.Address + "' ,'" + user.Gender + "' ,'" + user.u + "')";
            SqlParameter[] param = new SqlParameter[]
            {

                new SqlParameter("@username",user.UserName),
                new SqlParameter("@password",user.Password),
                new SqlParameter("@email",user.Email),
                new SqlParameter("@phonenumber",user.PhoneNumber),
                new SqlParameter("@address",user.Address),
                new SqlParameter("@gender",user.Gender),
                 new SqlParameter("@userroleid",user.UserRole)
            };
            return da.IUD(sql, CommandType.Text, param);
            
        }

        public DataTable SupplierDeatil()
        {
            string sql = "Select *from tblUser where UserroleId='" + 2 + "' ";

            DataTable dt = da.GetTable(sql,CommandType.Text,null);
            return dt;
        }
        //public User GetUserByID()
        //{
        //    User us = new User();
        //    if (da.GetUserbyUserId(UserId).Tables[0].Rows.Count>0)
        //    {
                
        //        DataSet ds = da.GetUserbyUserId(UserId);
        //        us.UserId=Convert.ToInt32( ds.Tables["UserDetail"].Rows[0].ToString());
        //        us.UserName = ds.Tables["UserDetail"].Rows[1].ToString();
        //        us.Password= ds.Tables["UserDetail"].Rows[2].ToString();
        //        us.Email= ds.Tables["UserDetail"].Rows[3].ToString();
        //        us.PhoneNumber= ds.Tables["UserDetail"].Rows[4].ToString();
        //        us.Address= ds.Tables["UserDetail"].Rows[5].ToString();
        //        us.UserRole=Convert.ToInt32( ds.Tables["UserDetail"].Rows[6].ToString());
        //        us.Gender= ds.Tables["UserDetail"].Rows[7].ToString();
        //    }

        //    return us;

        //}
        public DataTable GetUserbyUserId(int id)
        {
            string sql = "select *from tblUser where UserId='" + @id + "'";
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@id",id),

            };
            DataTable dt = da.GetTable(sql, CommandType.Text, param);
            return dt;
        }
        public int UpdateUser(User user)
        {
            string sql = "update tblUser set UserName=@username, Password=@password, Email=@email, Phonenumber=@phonenumber, Address=@address, gender=@gender, UserroleId=@roleid where UserId=@userid";
            //string sql = "insert into tblUser (UserName, Password, Email, PhoneNumber, Address, Gender, UserroleId) " +
            //    "values('" + user.UserName + "','" + user.Password + "' ,'" + user.Email + "' ,'" + user.PhoneNumber + "' ,'" + user.Address + "' ,'" + user.Gender + "' ,'" + user.u + "')";
            SqlParameter[] param = new SqlParameter[]
            {

                new SqlParameter("@username",user.UserName),
                new SqlParameter("@password",user.Password),
                new SqlParameter("@email",user.Email),
                new SqlParameter("@phonenumber",user.PhoneNumber),
                new SqlParameter("@address",user.Address),
                new SqlParameter("@gender",user.Gender),
                 new SqlParameter("@roleid",user.UserRole),
                 new SqlParameter("@userid",user.UserId)
            };
            return da.IUD(sql, CommandType.Text, param);

        }
        public int DeleteSupplier(int id)
        {
            string sql = "Delete from tblUser where UserId=@userid";
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@userid",id)
            };
            return da.IUD(sql, CommandType.Text, param);
        }
    }
}
