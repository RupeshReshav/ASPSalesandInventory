using DatAccessLayer;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MiddleLayer
{
    public class ProductLogic
    {
        DataClassesDataContext db = new DataClassesDataContext();
        public List<ProductDetails> GetProducts()
        {
            var products = from u in db.tblProducts select u;
            List<ProductDetails> lstpro = new List<ProductDetails>();
            foreach (tblProduct product in products)
            {
                ProductDetails pd = new ProductDetails();
                pd.ProductId = product.ProductId;
                pd.ProductName = product.ProductName;
                pd.Description = product.Description;
                pd.Quantity =(int) product.Quantity;
                pd.Price =(decimal) product.Price;
                pd.SupplierId =(int) product.SupplierId;
                pd.CategoryId =(int) product.CategoryId;
                lstpro.Add(pd);


            }
            return lstpro;
        }
        public ArrayList GetJoinedProduct()
        {
            var result = (from p in db.tblProducts
                          join c in db.tblCategories on p.CategoryId equals c.CategoryId
                          join u in db.tblUsers on p.SupplierId equals u.UserId
                          select new
                          {
                              p.ProductName,
                              p.Description,
                              p.Price,
                              p.Quantity,
                              c.CategoryName,
                              u.UserName
                          });
            ArrayList list = new ArrayList();
            list.Add(result);
            return list;
        }
        public List<UserDetails> GetAllUser()
        {
            var user = from u in db.tblUsers
                       where u.UserroleId==2
                       select u;
            List<UserDetails> lstuser = new List<UserDetails>();
            foreach (tblUser us in user)
            {
                UserDetails ud = new UserDetails();
                ud.UserId =(int) us.UserId;
                ud.UserName = us.UserName;
                ud.Password = us.Password;
                ud.PhoneNumber = us.PhoneNumber;
                ud.Address = us.Address;
                ud.Gender = us.Gender;
                ud.UserRole =(int) us.UserroleId;
                lstuser.Add(ud);
            }
            return lstuser;
        }
        public List<Category> GetCategories()
        {
            var category = from U in db.tblCategories
                           select U;
            List<Category> lstcat = new List<Category>();
            foreach (tblCategory cat in category)
            {
                Category ct = new Category();
                ct.CategoryId = cat.CategoryId;
                ct.CategoryName = cat.CategoryName;
                ct.Description = cat.Description;
                lstcat.Add(ct);
            }
            return lstcat;
        }
        public void CreateProduct(ProductDetails product)
        {
            tblProduct pro = new tblProduct();
            pro.ProductName = product.ProductName;
            pro.Description = product.Description;
            pro.Quantity = product.Quantity;
            pro.Price = product.Price;
            pro.SupplierId = product.SupplierId;
            pro.CategoryId = product.CategoryId;
            db.tblProducts.InsertOnSubmit(pro);
            db.SubmitChanges();

        }
        public string GetSupplierbyId(int id)
        {
            var user = from u in db.tblUsers
                       where u.UserId == id
                       select u;
            string supplier="";
            foreach (tblUser item in user)
            {
                supplier = item.UserName;
            }
            return supplier;
        }
        //public List<tblUser> GetUserforDropdown()
        //{
        //    List<tblUser> list = new List<tblUser>();
        //    list= (List<tblUser>)from u in db.tblUsers
        //          where u.UserroleId == 2
        //          select u;
        //    return list;
        //}
        DataAccess da = new DataAccess();
        public DataTable GetUserByJoin()
        {
            string sql = "select P.ProductId, P.ProductName, P.Description, P.Quantity, P.Price, C.CategoryName, U.UserName from((tblProduct P inner join tblCategory C on P.CategoryId= C.CategoryId) inner join tblUser U on P.SupplierId = U.UserId)";
            DataTable dt = da.GetTable(sql, CommandType.Text, null);
            return dt;
        }
        public DataTable GetProductById(int id)
        {
            string sql = "select *from tblProduct where ProductId=@productid";
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@productid",id)

            };
            DataTable dt = da.GetTable(sql, CommandType.Text, param);
            return dt;
        }
        public void UpdateProduct(ProductDetails pd)
        {
            string sql = "Update tblProduct set ProductName=@productname, Description=@description, Quantity=@quantity, Price=@price, SupplierId=@supplierid, CategoryId=@catgoryid where ProductId=@productid";
            SqlParameter[] param = new SqlParameter[]
            {
               
                new SqlParameter("@productname",pd.ProductName),
                new SqlParameter("@description",pd.Description),
                new SqlParameter("@quantity",pd.Quantity),
                new SqlParameter("@price",pd.Price),
                new SqlParameter("@supplierid", pd.SupplierId),
                new SqlParameter("@catgoryid",pd.CategoryId),
                 new SqlParameter("@productid",pd.ProductId)

            };
            da.IUD(sql, CommandType.Text, param);
        }
        public DataTable GetAllProduct()
        {
            string sql = "Select *from tblProduct";
            return da.GetTable(sql, CommandType.Text, null);
            
        }
    }
}
