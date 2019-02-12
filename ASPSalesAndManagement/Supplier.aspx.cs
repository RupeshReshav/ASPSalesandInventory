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
    public partial class Supplier1 : System.Web.UI.Page
    {
        //User us = new User();
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    LoadGrid();
        //}
        //private void LoadGrid()
        //{
        //    DataTable dt = us.SupplierDeatil();
        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();
        //}
       

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        //protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    GridView1.EditIndex = e.NewEditIndex;
        //    LoadGrid();


        //}

        //protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        //{
        //    GridView1.EditIndex = -1;
        //    LoadGrid();
        //}

        //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{
        //    int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        //    DataTable dt = us.GetUserbyUserId(userid);
        //    if (dt.Rows.Count>0)
        //    {
        //        //string name = dt.Rows[0]["UserName"].ToString();
        //        User user = new User();
        //        user.UserId = userid;
        //        user.UserName= (GridView1.Rows[e.RowIndex].FindControl("txtuserName") as TextBox).Text.Trim();
        //        user.Email= (GridView1.Rows[e.RowIndex].FindControl("txtEmail") as TextBox).Text.Trim();
        //        user.PhoneNumber= (GridView1.Rows[e.RowIndex].FindControl("txtPhoneNumber") as TextBox).Text.Trim();
        //        user.Address= (GridView1.Rows[e.RowIndex].FindControl("txtAddress") as TextBox).Text.Trim();
        //        user.Password= dt.Rows[0]["Password"].ToString();
        //        user.Gender= dt.Rows[0]["Gender"].ToString();
        //        user.UserRole= Convert.ToInt32( dt.Rows[0]["UserroleId"].ToString());
        //        int response = user.UpdateUser(user);
        //        if (response>0)
        //        {
        //            LoadGrid();
        //            Label1.Text = "Row has been updated";
        //        }
        //    }
        //}

        //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        //    int response = us.DeleteSupplier(userid);
        //    if (response>0)
        //    {
        //        LoadGrid();
        //        Label1.Text = "Row has been deleted!!!!!";
        //    }
        //}
    }
}