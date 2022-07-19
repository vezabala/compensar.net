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
        String valorImagen;
        protected void Page_Load(object sender, EventArgs e)
        {
            valorImagen = this.Session["imagen"].ToString();
            MiLabel.Text = this.Session["usuario"].ToString();
            MiLabel1.Text = this.Session["usuario"].ToString();
            MiLabel2.Text = this.Session["usuarioNA"].ToString();
            if (valorImagen.Equals(""))
            {
                Image1.ImageUrl = "~/imagenes/imagenUsuario.png";
                Image2.ImageUrl = "~/imagenes/imagenUsuario.png";
            }
            else
            {
                Image1.ImageUrl = $"~/imagenes/{this.Session["imagen"].ToString()}";
                Image2.ImageUrl = $"~/imagenes/{this.Session["imagen"].ToString()}";
            }          
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            this.Session.Clear();
            Response.Redirect("Default.aspx");
        }
    }
}