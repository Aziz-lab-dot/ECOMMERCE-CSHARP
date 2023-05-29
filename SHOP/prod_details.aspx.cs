using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace SHOP
{
    public partial class prod_details : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string pid = Request.QueryString["pid"];
            if (pid != null)
            {
                SqlConnection cn = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand("SELECT * FROM Product where ProdId=@ProdId", cn);
                cmd.Connection.Open();
                cmd.Parameters.Add(new SqlParameter("ProdId", pid));
                ListView1.DataSource = cmd.ExecuteReader();
                ListView1.DataBind();
                cmd.Connection.Close();
                cmd.Connection.Dispose();
            }
            else
            {
                Label1.Text = "No product To display";
            }
        }
    }
}