using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class DocinicioConsulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session.Count == 0)
            {
                Response.Redirect("Acdocentes.aspx");
            }
            else
            {
                if (TextBox4.Text.Equals("")) { 
                    TextBox4.Text = this.Session["codigoDocente"].ToString();
                }
                else
                {
                    this.Session["codigoDocente"]  = TextBox4.Text;
                }
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("DocinicioConsulta.aspx");
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            Label docImagen = FormView1.FindControl("imagenLabel") as Label;
            Label docArchivo = FormView1.FindControl("archivoLabel") as Label;
            if (!docImagen.Text.Equals(""))
            {
                //borrar imagen del directorio

                //Dado el caso, verifico que exista el archivo..

                if (System.IO.File.Exists(Server.MapPath(".") + "/imagenes/" + docImagen.Text))
                {
                    System.IO.File.Delete(Server.MapPath(".") + "/imagenes/" + docImagen.Text);
                }
            }
            if (!docArchivo.Text.Equals(""))
            {
                //borrar archivo del directorio

                //Dado el caso, verifico que exista el archivo..

                if (System.IO.File.Exists(Server.MapPath(".") + "/archivos/" + docArchivo.Text))
                {
                    System.IO.File.Delete(Server.MapPath(".") + "/archivos/" + docArchivo.Text);
                }
            }
        }
    }
}