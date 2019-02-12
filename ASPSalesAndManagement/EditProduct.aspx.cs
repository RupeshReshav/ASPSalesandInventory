using MiddleLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPSalesAndManagement
{
    public partial class EditProduct : System.Web.UI.Page
    {
        ProductLogic pl = new ProductLogic();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtName.Text = Session["ProductName"].ToString();
                id = Convert.ToInt32(Session["id"].ToString());
                txtDescription.Value = Session["Description"].ToString();
                txtQuantity.Text = Session["Quantity"].ToString();
                txtUnitPrice.Text = Session["Price"].ToString();
                List<UserDetails> listuser = pl.GetAllUser();
                ddlSupplier.Items.Insert(0, new ListItem("Please select Supplier", ""));
                // ddlSupplier.DataTextField=listuser.
                foreach (UserDetails item in listuser)
                {
                    ddlSupplier.Items.Add(new ListItem(item.UserName, item.UserId.ToString()));

                }
                List<Category> listcategory = pl.GetCategories();
                ddlCategory.Items.Insert(0, new ListItem("Please select Category", ""));
                foreach (Category item in listcategory)
                {
                    ddlCategory.Items.Add(new ListItem(item.CategoryName, item.CategoryId.ToString()));
                }
            }
            
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            int id =Convert.ToInt32( Session["id"].ToString());
            ProductDetails prolist = new ProductDetails();
            prolist.ProductId = id;
            prolist.ProductName= txtName.Text;
            prolist.Quantity =Convert.ToInt32( txtQuantity.Text);
            prolist.Price = Convert.ToInt32(txtUnitPrice.Text);
            prolist.CategoryId =Convert.ToInt32( ddlCategory.SelectedValue);
            prolist.SupplierId = Convert.ToInt32(ddlSupplier.SelectedValue);
            pl.UpdateProduct(prolist);

            Response.Redirect("Product.aspx");


        }
    }
}