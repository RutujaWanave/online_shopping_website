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
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
   

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-R5569UO\\SQLEXPRESS;Initial Catalog=Online_Shopping;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Register where Email='" + txtemail.Text+ "' and Password='"+ txtpass.Text +"'", conn);
           
            DataTable dt = new DataTable();
         int v=  sda.Fill(dt);

            if (dt.Rows.Count == 1)
            {

                Response.Redirect("webForm1.aspx");
             
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid Username and Password')", true);



            }

        }
    }
}