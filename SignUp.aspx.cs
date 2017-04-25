using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SignUp : System.Web.UI.Page
{
    string user;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string connString = "Server=BIL-251-03;database=Alinas;User Id=sa;pwd=ikucse";
        SqlConnection connection = new SqlConnection(connString);
        connection.Open();
        SqlCommand command = new SqlCommand("INSERT INTO Customer(CustomerName, CustomerPassword, CustomerEmail) VALUES('"+uName.Text+"','"+uPassWord.Text+"','"+uEmail.Text+"')",connection);
        int result = command.ExecuteNonQuery();

        if (result > 0)
        {
            lblAlert.Text = "Succesfull";
            if (chkRememberMe.Checked)
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(30);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
            }
            else
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);

            }
            Response.Cookies["UserName"].Value = uName.Text.Trim();
            Response.Cookies["Password"].Value = uPassWord.Text.Trim();
        }
        else
            lblAlert.Text = "Failure";
    }
}