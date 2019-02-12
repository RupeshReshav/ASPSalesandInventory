using MiddleLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPSalesAndManagement
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserBO obj = new UserBO();
            obj.UserName = txtUserName.Text;
            obj.Password = txtPassword.Text;
            int result = obj.GetUserbtUsernameAndPassword(txtUserName.Text, txtPassword.Text);
            switch (result)
            {
                case 1:
                    {
                        Session["UserName"] = txtUserName.Text.Trim();
                        Session["Role"] = result.ToString();
                        Response.Redirect("Admin.aspx?role=" + result.ToString() + "&username=" + txtUserName.Text);
                        break;
                    }
                case 2:
                    {
                        Session["UserName"] = txtUserName.Text.Trim();
                        Session["Role"] = result.ToString();
                        Response.Redirect("Supplier.aspx?role=" + result.ToString() + "&username=" + txtUserName.Text);
                        break;
                    }
                case 3:
                    {
                        Session["UserName"] = txtUserName.Text.Trim();
                        Session["Role"] = result.ToString();
                        Response.Redirect("Landing.aspx?role=" + result.ToString() + "&username=" + txtUserName.Text);
                        break;
                    }
                default:
                    Label1.Text = "Invalid Username and Password";
                    break;

            }

        }

        //protected void GetUserName( int userrole)
        //{
        //    switch (userrole)
        //    {
        //        case 1:
        //            {
        //                //Session["username"] = username.Trim();
        //                Session["role"] = userrole.ToString();
        //                Response.Redirect("admin.aspx");
        //                break;
        //            }
        //        case 2:
        //            {
        //                //Session["username"] = username.Trim();
        //                Session["role"] = userrole.ToString();
        //                Response.Redirect("supplier.aspx");
        //                break;
        //            }
        //        case 3:
        //            {
        //                //Session["username"] = username.Trim();
        //                Session["role"] = userrole.ToString();
        //                Response.Redirect("landing.aspx");
        //                break;
        //            }
        //        default:
                    
        //            break;

        //    }
        //}
        }
}