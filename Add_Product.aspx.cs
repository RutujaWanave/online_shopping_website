using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Project_online
{
    public partial class Add_Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source = DESKTOP-R5569UO\\SQLEXPRESS; Initial Catalog = Online_Shopping; Integrated Security = true");
            if (imageUpload1.HasFile)
            {
                string filename = imageUpload1.FileName;
                string filepath = "Image/" + imageUpload1.FileName;
                imageUpload1.PostedFile.SaveAs(Server.MapPath("~/Image/") + filename);
                con.Open();

                SqlCommand cmd = new SqlCommand("insert into Product_details VALUES (@ProductName,@Prices,@ProductImage)", con);

                cmd.Parameters.AddWithValue("@ProductName", txtName.Text);
                cmd.Parameters.AddWithValue("@Prices", txtPrice.Text);
                cmd.Parameters.AddWithValue("@ProductImage", filepath);

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script> alert('Product Added Successfylly');</script>");



            }
            }
        }
}