using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace SHOP
{
    public partial class Register : System.Web.UI.Page
    { 

         private static string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            Control mycontrolmenu = Page.Master.FindControl("divtemp");
            if (mycontrolmenu != null)
            {
                mycontrolmenu.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into register" + "(fname,lname,email,gender,phone,password) values (@fname,@lname,@email,@gender,@phone,@password)", con);
            cmd.Parameters.AddWithValue("@fname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@lname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@phone", TextBox4.Text);
            cmd.Parameters.AddWithValue("@password", TextBox5.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Registered Succesfully !";
            
        }
    }
}