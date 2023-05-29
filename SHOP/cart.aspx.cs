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
    public partial class cart : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlDataAdapter da = new SqlDataAdapter();

        //DataSet ds = new DataSet();
        string aa;
        decimal totcost = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                getcart();
                GetTotal();
            }
        }
        public void getcart()
        {
            DataTable dt = (DataTable)Session["MyCart"];
            string[] arrID = new string[20];
            if (Session["MyCart"] != null)
            {
                if (dt.Rows.Count != 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        arrID[i] = dt.Rows[i]["Prodid"].ToString() + ",";
                        aa += arrID[i];
                    }
                    aa = aa.Trim(',');
                    string Select;
                    Select = "Select * From product where Prodid in (" + aa + ")";
                    da = new SqlDataAdapter(Select, con);
                    DataSet ds1 = new DataSet();
                    da.Fill(ds1);
                    DropDownList1.DataSource = ds1;
                    DropDownList1.DataTextField = "Prodid";
                    DropDownList1.DataValueField = "Prodid";
                    DropDownList1.DataBind();
                    GridView1.DataSource = ds1;
                    GridView1.DataBind();
                }
            }
        }
        protected void qty_TextChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow gr in GridView1.Rows)
            {
                TextBox qty = (TextBox)gr.Cells[4].FindControl("qty");
                int quantity = Convert.ToInt32(qty.Text);

                Label cartid = (Label)gr.Cells[0].FindControl("cartid");

                Label cost = (Label)gr.Cells[3].FindControl("lbl_price");
                decimal totcost1 = decimal.Parse(cost.Text);

                totcost1 = totcost1 * quantity;
                gr.Cells[5].Text = totcost1.ToString();

                totcost = totcost + totcost1;

                //if (cartid.Text != "")
                //{
                //    da = new SqlDataAdapter("update tbl_addtocart set qty=" + quantity + ",totcost=" + totcost1 + " where cartid=" + Convert.ToInt32(cartid.Text) + " and uid=" + Convert.ToInt32(Session["uid"].ToString()) + " ", con);
                //    int n = da.SelectCommand.ExecuteNonQuery();
                //    if (n == 1)
                //    {
                //        GetUserSelectedproducts(Convert.ToInt32(Session["uid"].ToString()));
                //    }
                //}


                //gr.Cells[5].Text=
            }
            Label1.Text = totcost.ToString();
        }
        private void GetTotal()
        {
            foreach (GridViewRow gr in GridView1.Rows)
            {
                Label tcost = (Label)gr.Cells[5].FindControl("tcost");
                decimal totalcost = Convert.ToDecimal(tcost.Text);
                totcost = totcost + totalcost;
            }
            Label1.Text = totcost.ToString();
        }
        protected void delete_Command(object sender, CommandEventArgs e)
        {
            string productid = e.CommandArgument.ToString();
            DataTable dt = (DataTable)Session["MyCart"];

            var rows = dt.Select("Prodid = " + productid);
            foreach (var row in rows)
                row.Delete();

            getcart();
            GetTotal();

        }
        public void bindMyGV()
        {
            if (Session["MyCart"] != null)
            {
                DataTable dt = (DataTable)Session["MyCart"];
                if ((dt != null) && (dt.Rows.Count > 0))
                {
                    GridView1.Visible = true;
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                else
                {
                    GridView1.Visible = false;
                }
            }
        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {

        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {


        }

       
    }
}