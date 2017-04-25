using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string connString = "Server=BIL-251-03;database=Alinas;User Id=sa;pwd=ikucse";
        SqlConnection connection = new SqlConnection(connString);
        SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM Customer", connection);

        if(uName.Text == "emre")
            if(uEmail.Text == "emre")
                if(uPassWord.Text == "emre")
                    Response.Redirect("Home.aspx");
                else
                {
                    uPassWord.Text = "Password does not match";
                }
            else
            {
                uEmail.Text = "Email does not match";
            }
        else
        {
            uName.Text = "Username does not match";
        }
    }
}