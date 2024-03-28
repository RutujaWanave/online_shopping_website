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
    public partial class BuyProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //    if (!IsPostBack)
            //    {
            //        // Session["buyitems"] = "false";
            //        DataTable dt = new DataTable();
            //        DataRow dr;



            //        dt.Columns.Add("ProductID");
            //        dt.Columns.Add("ProductName");
            //        dt.Columns.Add("Prices");
            //        dt.Columns.Add("ProductImage");

            //        if (Request.QueryString["ProductID"] != null)
            //        {
            //            if (Session["buyitems"] == null)
            //            {

            //                dr = dt.NewRow();
            //                string connection1 = "Data Source=DESKTOP-R5569UO\\SQLEXPRESS; Initial Catalog=Online_Shopping; Integrated Security=true";
            //                SqlConnection scon = new SqlConnection(connection1);

            //                string Query = "select * from Product_details where ProductID=" + Request.QueryString["id"];
            //                SqlCommand cmd = new SqlCommand();
            //                //  SqlDataAdapter da = new SqlDataAdapter("select * from Product_details where ProductID=" + Request.QueryString["id"],connection);
            //                cmd.CommandText = Query;
            //                cmd.Connection = scon;
            //                SqlDataAdapter da = new SqlDataAdapter();
            //                da.SelectCommand = cmd;
            //                DataSet ds = new DataSet();

            //                da.Fill(ds);



            //                dr["ProductID"] = dt.Rows[0]["ProductID"].ToString();
            //                dr["ProductName"] = dt.Rows[0]["ProductName"].ToString();
            //                dr["ProductImage"] = dt.Rows[0]["ProductImage"].ToString();
            //                dr["Prices"] = dt.Rows[0]["Prices"].ToString();


            //                dt.Rows.Add(dr);
            //                GridView1.DataSource = dt;
            //                GridView1.DataBind();
            //                Session["buyitems"] = dt;
            //                Response.Redirect("BuyProduct.aspx");



            //            }
            //            else
            //            {

            //                if (Session["buyitems"] == null)
            //                {
            //                    // dt = (DataTable)Session["byitmes"];
            //                    int sr;
            //                    sr = dt.Rows.Count;

            //                    dr = dt.NewRow();
            //                    dt.Rows.Add(dr);
            //                    String mycon = "Data Source=DESKTOP-R5569UO\\SQLEXPRESS; Initial Catalog=Online_Shopping; Integrated Security=true";
            //                    SqlConnection scon = new SqlConnection(mycon);
            //                    string Query = "select * from Product_details where ProductID=" + Request.QueryString["id"];
            //                    SqlCommand cmd = new SqlCommand();

            //                    cmd.CommandText = Query;
            //                    cmd.Connection = scon;
            //                    SqlDataAdapter da = new SqlDataAdapter();
            //                    da.SelectCommand = cmd;
            //                    DataSet ds = new DataSet();
            //                    da.Fill(ds);

            //                    dr["ProductID"] = ds.Tables[0].Rows[0]["ProductID"].ToString();
            //                    dr["ProductName"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
            //                    dr["ProductImage"] = ds.Tables[0].Rows[0]["ProductImage"].ToString();
            //                    dr["Prices"] = ds.Tables[0].Rows[0]["Prices"].ToString();
            //                    dt.Rows.Add(dr);
            //                    GridView1.DataSource = dt;
            //                    GridView1.DataBind();
            //                    Session["buyitems"] = dt;
            //                    Response.Redirect("BuyProduct.aspx");
            //                }
            //            }
            //        }
            //        else
            //        {
            //            dt = (DataTable)Session["buyitmes"];
            //            GridView1.DataSource = dt;
            //            GridView1.DataBind();
            //        }


            //    }

            //}

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            Response.Redirect("BUY_NOW.aspx?ProductID=" + gr.Cells[0].Text);// "&ProductName="+gr.Cells[1].Text+ "Prices="+gr.Cells[2].Text);
        }

        protected void btn_BUY_Click(object sender, EventArgs e)
        {
            //GridViewRow gr = GridView1.SelectedRow;
            //Response.Redirect("BUYNOW.aspx?Product ID=" + gr.Cells[0].Text + "Product Name=" + gr.Cells[1].Text + "Prices=" + gr.Cells[2].Text);
        }
    }
}
