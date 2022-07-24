using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class MasterPageEst : System.Web.UI.MasterPage
    {
        string valorImagen;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Session["usuarioNA"].ToString();
            valorImagen = this.Session["imagen"].ToString();

            if (valorImagen.Equals(""))
            {
                Image1.ImageUrl = "~/imagenes/user.jpg";
            }
            else
            {
                Image1.ImageUrl = $"~/imagenes/{this.Session["imagen"].ToString()}";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.Session.Clear();
            Response.Redirect("Default.aspx");
        }
    }
}