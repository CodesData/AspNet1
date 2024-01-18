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
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection MyConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (MyConnection.State == ConnectionState.Open)
            {
                MyConnection.Close();
            }
            MyConnection.Close();

            if (Session["User"] != null)
            {
                Response.Write("<script>alert('Hello ' + '" + Convert.ToString(Session["User"]) + "');</script>");
                lblAdmin.Text = Convert.ToString(Session["User"]);
            }
            else
            {
                Response.Redirect("~/Account/SignIn.aspx");
            }
        }
    }
}