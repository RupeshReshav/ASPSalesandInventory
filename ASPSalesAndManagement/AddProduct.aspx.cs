using MiddleLayer;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPSalesAndManagement
{
    public partial class AddProduct : System.Web.UI.Page
    {
        ProductLogic pl = new ProductLogic();

      

        protected void Page_Load(object sender, EventArgs e)
        {
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                ProductDetails pd = new ProductDetails();
                pd.ProductName = txtName.Text;
                pd.Description = txtDescription.Value;
                pd.Quantity =Convert.ToInt32( txtQuantity.Text);
                pd.Price =Convert.ToDecimal( txtUnitPrice.Text);
                pd.SupplierId =Convert.ToInt32( ddlSupplier.SelectedValue);
                pd.CategoryId = Convert.ToInt32(ddlCategory.SelectedValue);
                pl.CreateProduct(pd);
                Response.Redirect("Product.aspx");
            }
        }

        //protected void Create_Click(object sender, EventArgs e)
        //{
        //    lblResult.Text = ddlCategory.Text;
        //}
    }
}