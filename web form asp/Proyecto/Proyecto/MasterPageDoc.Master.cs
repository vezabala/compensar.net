using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class MasterPageDoc : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MiLabel.Text = this.Session["usuario"].ToString();
            MiLabel1.Text = this.Session["usuario"].ToString();
            MiLabel2.Text = this.Session["usuarioNA"].ToString();
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            this.Session.Clear();
            Response.Redirect("Default.aspx");
        }
    }
}