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
    public partial class Product : System.Web.UI.Page
    {
        ProductLogic pl = new ProductLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable products = pl.GetUserByJoin();
                GridView1.DataSource = products;
                GridView1.DataBind();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProduct.aspx");
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int id= Convert.ToInt32(GridView1.DataKeys[e.NewEditIndex].Value.ToString());
            DataTable dt = pl.GetProductById(id);
            Session["id"] = id;
            Session["ProductName"] = dt.Rows[0]["ProductName"];
            Session["Description"] = dt.Rows[0]["Description"];
            Session["Quantity"] = dt.Rows[0]["Quantity"];
            Session["Price"] = dt.Rows[0]["Price"];


            lblProduct.Text = Session["ProductName"].ToString();


            Response.Redirect("EditProduct.aspx");
        }
    }
}