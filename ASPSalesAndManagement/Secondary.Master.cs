using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPSalesAndManagement
{
    public partial class Secondary : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserName"] == null)
            {
                Logout.Visible = false;
                Cart.Visible = false;
                linkbutton.Visible = false;
               // Response.Redirect("Login.aspx");

            }
            else
            {
                
                Logout.Visible = true;
                Cart.Visible = true;
                linkbutton.Visible = true;
                linkbutton.Text = "Welcome" + " " + Session["UserName"];
            }
        }
    }
}