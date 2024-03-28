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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string connection = "Data Source=DESKTOP-R5569UO\\SQLEXPRESS;Initial Catalog=Online_Shopping;Integrated Security=True";

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("insert into Register" + "(Fname,Lname,Email,Gender,Address,Phone,Password) Values(@Fname,@Lname,@Email,@Gender,@Address,@Phone,@Password)", conn);

            conn.Open();
 cmd.Parameters.AddWithValue("@Fname",txtname.Text);
          cmd.Parameters.AddWithValue("@Lname",txtsname.Text);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
           cmd.Parameters.AddWithValue("@Address", txtadd.Text);
           cmd.Parameters.AddWithValue("@Phone", txtmo.Text);
           cmd.Parameters.AddWithValue("@Password",txtpass.Text);
            cmd.ExecuteNonQuery();

            conn.Close();


        }
    }
}