using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


public partial class Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataList1.DataSource = getProducts();
        DataList1.DataBind();
        DataList2.DataSource = getCategory();
        DataList2.DataBind();
    }
    private DataTable getProducts()
    {
        //string connString = ConfigurationManager.ConnectionStrings["myConnString"].ConnectionString;
        string connString = "Server=BIL-251-03;database=Alinas;User Id=sa;pwd=ikucse";
        SqlConnection con = new SqlConnection(connString);
        con.Open();
        string query = "Select * From [dbo].[Products]";
        SqlDataAdapter adapter = new SqlDataAdapter(query, con);

        DataTable dtProducts = new DataTable();
        adapter.Fill(dtProducts);

        return dtProducts;

    }
    private DataTable getCategory()
    {
        //string connString = ConfigurationManager.ConnectionStrings["myConnString"].ConnectionString;
        string connString = "Server=BIL-251-03;database=Alinas;User Id=sa;pwd=ikucse";
        SqlConnection con = new SqlConnection(connString);
        con.Open();
        string query = "Select * From [dbo].[Category]";
        SqlDataAdapter adapter = new SqlDataAdapter(query, con);

        DataTable dtCategory = new DataTable();
        adapter.Fill(dtCategory);

        return dtCategory;

    }
}