using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_online
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_buy_Click(object sender, EventArgs e)
        {

        }

        protected void btn_buy_Command(object sender, CommandEventArgs e)
        {

        }

        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
            
            if (e.CommandName == "buyitems")
            {

                Response.Redirect("BuyProduct.aspx?id=" + e.CommandArgument.ToString());//+ "&Product_Name = "+ e.CommandArgument.ToString()+ "&Prices=" + e.CommandArgument.ToString());


            }

        }
    }
}