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
    public partial class category : System.Web.UI.Page
    {
        public string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("insert into Category(catname,catdesc) values(@cn,@cd)", con);
            cmd.Parameters.AddWithValue("@cn", txt_catname.Text);
            cmd.Parameters.AddWithValue("@cd", txt_desc.Text);
            con.Open();
            Label1.Text = "SAVED TO DATABASE"; 
            cmd.ExecuteNonQuery();
        }
    }
}