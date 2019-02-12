using MiddleLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPSalesAndManagement
{
    public partial class ProductDescription : System.Web.UI.Page
    {
        ProductLogic pl = new ProductLogic();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
          id=Convert.ToInt32( Request.QueryString["id"].ToString());
          DataTable dt = pl.GetProductById(id);
          datalist.DataSource = dt;
          datalist.DataBind();

        }

        protected void datalist_SelectedIndexChanged(object sender, EventArgs e)
        {
      
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name="";
            float price=0;
            string image="";
            // int id = 0;
            int quantity=Convert.ToInt32(txtName.Value.ToString());
           
            DataTable dt = pl.GetProductById(id);
            foreach (DataRow dr in dt.Rows)
            {
                name = dr["ProductName"].ToString();
                price = Convert.ToInt32(dr["Price"].ToString());
                image = dr["ImageUrl"].ToString();
            }
            //string s = Request.Cookies["item"].Value;
            if (Request.Cookies["item"]==null)
            {
                Response.Cookies["item"].Value = name.ToString() + "," + price.ToString() + "," + quantity.ToString()+","+image.ToString();
                Response.Cookies["item"].Expires = DateTime.Now.AddDays(1);
            }
            else
            {
                Response.Cookies["item"].Value = Request.Cookies["item"].Value + "|" + name.ToString() + "," + price.ToString() + "," + quantity.ToString() + "," + image.ToString(); 
                Response.Cookies["item"].Expires = DateTime.Now.AddDays(1);
            }
            Response.Redirect("Cart.aspx");
        }
    }
}