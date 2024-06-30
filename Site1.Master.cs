using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNet1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                lblUser.Text = string.Empty;
                lblUser.ForeColor = System.Drawing.Color.LightGreen;
                lblUser.Text = "Hello, " + Convert.ToString(Session["User"]);
            }
        }
    }
}