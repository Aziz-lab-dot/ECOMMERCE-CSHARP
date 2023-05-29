using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace SHOP
{
    public partial class Product : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT Catid,catname FROM Category"))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataSet ds = new DataSet();
                            sda.Fill(ds);
                            ddl_cat.DataSource = ds.Tables[0];
                            ddl_cat.DataTextField = "catname";
                            ddl_cat.DataValueField = "Catid";
                            ddl_cat.DataBind();
                        }
                    }
                }
                ddl_cat.Items.Insert(0, new ListItem("----Select Category---", "0"));
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (file_img.PostedFile != null)
            {
                string FileName = Path.GetFileName(file_img.PostedFile.FileName);
                file_img.SaveAs(Server.MapPath("Images/" + FileName));

                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand("Insert into Product (Prodname,Proddesc,Prodimg,Prodmodel,Color,size,catid,Prodimgname,price)values(@pn,@pd,@pi,@pm,@col,@siz,@cid,@pin,@price)", con);
                cmd.Parameters.AddWithValue("@pn", txt_pname.Text);
                cmd.Parameters.AddWithValue("@pd", txt_pdesc.Text);
                cmd.Parameters.AddWithValue("@pi", "Images/"+ FileName);
                cmd.Parameters.AddWithValue("@pm", txt_model.Text.ToString());
                cmd.Parameters.AddWithValue("@col", txt_color.Text);
                cmd.Parameters.AddWithValue("@siz", txt_size.Text.ToString());
                cmd.Parameters.AddWithValue("@cid", ddl_cat.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@pin", FileName);
                cmd.Parameters.AddWithValue("@price", txt_price.Text);
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Label1.Text = "SAVED TO DATABASE";
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }
            }
        }

     
    }
}