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
    public partial class SignUp : System.Web.UI.Page
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

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            MyConnection.Open();
            string SignUp_query = "INSERT INTO tblUsers VALUES('" + txtUserName.Text + "','" + txtPassword.Text + "','" + txtEMail.Text + "')";
            SqlCommand Mycmd = new SqlCommand(SignUp_query, MyConnection);
            Mycmd.ExecuteNonQuery();
            MyConnection.Close();

            Response.Write("<script>alert('Hello ' + '" + txtUserName.Text + "');</script>");
            ClearData();
        }
        protected void ClearData()
        {
            txtUserName.Text = "";
            txtPassword.Text = "";
            txtEMail.Text = "";
        }
    }
}