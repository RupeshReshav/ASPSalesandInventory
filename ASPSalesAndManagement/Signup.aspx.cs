using MiddleLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPSalesAndManagement
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    if (Page.IsValid)
        //    {
        //        User us = new User();
        //        us.UserName = txtUsername.Text;
        //        us.Password = txtPassword.Text;
        //        us.Email = txtEmail.Text;
        //        us.Address = txtAddress.Text;
        //        us.PhoneNumber = txtPhoneNumber.Text;
        //        string radiovalue;
        //        if (rbdMale.Checked)
        //        {
        //            radiovalue = "Male";
        //        }
        //        else
        //        {
        //            radiovalue = "Female";
        //        }

        //        us.Gender = radiovalue;

        //        us.UserRole = Convert.ToInt32(DropDownList1.SelectedValue);

        //        int result = us.GetAlluser(us);
        //        if (result == 2)
        //        {
        //            lblResult.Text = "Signup Successful!!!!!!";
        //            txtUsername.Text = "";
        //            txtPassword.Text = "";
        //            txtConfirmPassword.Text = "";
        //            txtEmail.Text = "";
        //            txtPhoneNumber.Text = "";
        //            txtAddress.Text = "";
        //            DropDownList1.SelectedValue = "1";
        //            rbdMale.Checked = true;
                    


        //        }
        //        else
        //        {
        //            Response.Write("Something wrong!");
        //        }
        //    }
            
        //}
    }
}