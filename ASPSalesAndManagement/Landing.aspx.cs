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
    public partial class Landing : System.Web.UI.Page
    {

        ProductLogic pl = new ProductLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserName"] == null)
                {
                   // Logout.Visible = false;
                    Response.Redirect("Login.aspx");

                }
                if (!string.IsNullOrEmpty(Request.QueryString["role"]))
                {
                    string roleid = Request.QueryString["role"].ToString();
                }

                DataTable dt = pl.GetAllProduct();
                datalist.DataSource = dt;
                datalist.DataBind();
            }
            
        }
    }
}