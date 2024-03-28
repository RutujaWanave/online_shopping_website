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
    public partial class BUY_NOW : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          Txt_Id.Text = Request.QueryString["ProductID"].ToString();
            //         txt_name.Text = Request.QueryString["ProductName"].ToString();
            //txt_Prices.Text = Request.QueryString["Prices "].ToString();

           
            }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = DESKTOP-R5569UO\\SQLEXPRESS; Initial Catalog = Online_Shopping; Integrated Security = true");

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into FeedBack2 VALUES (@id,@ProductName,@Prices," +
                "@Fname,@Lname,@UserName,@Address,@Phone,@CardNo,@CVC)", con);

            cmd.Parameters.AddWithValue("@id", Txt_Id.Text);
            cmd.Parameters.AddWithValue("@ProductName", txt_fname.Text);
            cmd.Parameters.AddWithValue("@Prices", txt_Prices.Text);
            cmd.Parameters.AddWithValue("@Fname", txt_fname.Text);
            cmd.Parameters.AddWithValue("@Lname", txt_lname.Text);
            cmd.Parameters.AddWithValue("@UserName", txt_name.Text);
            cmd.Parameters.AddWithValue("@Address", txt_add.Text);
            cmd.Parameters.AddWithValue("@Phone", txt_pho.Text);

            cmd.Parameters.AddWithValue("@CardNo", txt_cardno.Text);
            cmd.Parameters.AddWithValue("@CVC", txt_cvc.Text);

            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("<script> alert('Product Buy Successfylly');</script>");





        }
    }
}