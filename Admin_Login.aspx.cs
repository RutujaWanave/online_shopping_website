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
    public partial class Admin_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("Data Source=DESKTOP-R5569UO\\SQLEXPRESS; Initial Catalog=Online_Shopping; Integrated Security=true;");




            SqlDataAdapter sda = new SqlDataAdapter("Select * from Admin where Username='" + User_Text.Text + "' and Password ='" + Pass_Text.Text + "'", connection);

            DataTable dt = new DataTable();
            int v = sda.Fill(dt);
            if (dt.Rows.Count == 1)
            {

                Response.Redirect("Admin_Panel.aspx");
               
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid Username and Password')", true);



            }
        }
    }
}