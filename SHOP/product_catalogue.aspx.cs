using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SHOP
{
    public partial class product_catalogue : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }
        protected void BindData()
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("select ProdId,Prodname,Prodimg,price from Product", con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(ds);
            dlst_prod.DataSource = ds.Tables[0];
            dlst_prod.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string productid = Convert.ToInt16(((Button)sender).CommandArgument).ToString();
            if (Session["MyCart"] != null)
            {
                DataTable dt = (DataTable)Session["MyCart"];
                dt.Rows.Add(productid);
                Session["MyCart"] = dt;
                LinkButton1.Text = dt.Rows.Count.ToString();
            }
            else
            {
                DataTable dt = new DataTable();
                dt.Columns.Add("ProdId", typeof(string));
                dt.Columns.Add("Prodname");
                dt.Rows.Add(productid);
                Session["MyCart"] = dt;
                LinkButton1.Text = dt.Rows.Count.ToString();
            }
        }
    }
}