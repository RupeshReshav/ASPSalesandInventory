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
    public partial class Cart : System.Web.UI.Page
    {
        ProductLogic pl = new ProductLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            string s;
            string t;
            string[] a = new string[4];
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[]
            {
                new DataColumn("Name"),
                new DataColumn("Price"),
                new DataColumn("Quantity"),
                new DataColumn("ImageUrl")
            });
            if (Request.Cookies["item"]!=null)
            {
                s = Convert.ToString(Request.Cookies["item"].Value);
                string[] str = s.Split('|');
                for (int i = 0; i < str.Length; i++)
                {
                    t = Convert.ToString(str[i].ToString());
                    string[] str1 = t.Split(',');
                    for (int j = 0; j < str1.Length; j++)
                    {
                        a[j] = str1[j].ToString();
                    }
                    dt.Rows.Add(a[0].ToString(), a[1].ToString(), a[2].ToString(), a[3].ToString());
                }
            }
            //string s = Convert.ToString(Request.Cookies["item"].Values);
            //string[] str = s.Split(',');

            //for (int i = 0; i < str.Length; i++)
            //{
            //    int id1 =Convert.ToInt32( str[i].ToString());
            //    DataTable dt = pl.GetProductById(id1);
            //    datalist.DataSource = dt;
            //    datalist.DataBind();
            //}
            //int id = Convert.ToInt32(Request.QueryString["id"].ToString());
            //DataTable dt = pl.GetProductById(id);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void btnMore_Click(object sender, EventArgs e)
        {
            Response.Redirect("Landing.aspx");
        }
    }
}