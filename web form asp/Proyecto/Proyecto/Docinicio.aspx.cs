using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class Docinicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session.Count == 0)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                Label1.Text = $"Pagina de inicio Docente ({this.Session["usuario"].ToString()})";
            }
        }
    }
}