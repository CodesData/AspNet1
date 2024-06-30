using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace AspNet1.Account
{
    public partial class SignIn : System.Web.UI.Page
    {
        SqlConnection MyConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (MyConnection.State == ConnectionState.Open)
            {
                MyConnection.Close();
            }
            MyConnection.Close();
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            MyConnection.Open();
            string SignIn_query = "SELECT COUNT(*) FROM tblUsers WHERE UserName='" + txtUserName.Text + "' AND Password='" + txtPassword.Text + "'";
            SqlCommand Mycmd = new SqlCommand(SignIn_query, MyConnection);
            int output = Convert.ToInt32(Mycmd.ExecuteScalar());
            MyConnection.Close();
            if (output == 1)
            {
                Session["User"] = txtUserName.Text;
                Response.Redirect("~/Account/Default.aspx");
            }
            else
            {
                Response.Redirect("~/Account/SignIn.aspx");
            }
        }
    }
}