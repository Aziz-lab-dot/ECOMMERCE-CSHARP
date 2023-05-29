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
    public partial class login : System.Web.UI.Page

    {
        private static string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            Control mycontrolmenu = Page.Master.FindControl("divtemp");
            if(mycontrolmenu!=null)
            {
                mycontrolmenu.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlDataAdapter log = new SqlDataAdapter("select * from register where email = '" + TextBox1.Text +"' and password = '" + TextBox2.Text +"'", con);
            DataTable dt = new DataTable();
            log.Fill(dt);
            if(dt.Rows.Count==1)
            {
                Label1.Text = "Login Successful";
            }
            else
            {
                Label1.Text = "Login Unsuccessful";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }

      
    }
}