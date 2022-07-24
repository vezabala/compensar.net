using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class DocinicioConsulta : System.Web.UI.Page
    {
        SqlConnection conexion = new SqlConnection("server=DESKTOP-D4K75HQ\\SQLEXPRESS ; database=proyectoasp ; integrated security = true");
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
            conexion.Open();
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
            Label docCodigo = FormView1.FindControl("doccodigoLabel") as Label;
            string cadena = $"DELETE FROM tbldocentes  WHERE doccodigo  = {docCodigo.Text}";
            SqlCommand comando = new SqlCommand(cadena, conexion);
            comando.ExecuteReader();
            Session["guardadoDoc"] = "eliminado";
            conexion.Close();
            Response.Redirect("Acdocentes.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            DropDownList usuCodigo = FormView1.FindControl("usucodigoDropDownList1") as DropDownList;
            Label docCodigo = FormView1.FindControl("doccodigoLabel1") as Label;
            TextBox doTelefono = FormView1.FindControl("dotelefonoTextBox") as TextBox;
            TextBox docIngreso = FormView1.FindControl("docingresoTextBox") as TextBox;
            TextBox docApellido1 = FormView1.FindControl("docapellido1TextBox") as TextBox;
            TextBox docApellido2 = FormView1.FindControl("docapellido2TextBox") as TextBox;
            TextBox docNombre1 = FormView1.FindControl("docnombre1TextBox") as TextBox;
            TextBox docNombre2 = FormView1.FindControl("docnombre2TextBox") as TextBox;
            FileUpload docImagen = FormView1.FindControl("docimagenFileUpload1") as FileUpload;
            FileUpload docArchivo = FormView1.FindControl("docarchivoFileUpload1") as FileUpload;
            Label label9 = FormView1.FindControl("Label9") as Label;
            Label label10 = FormView1.FindControl("Label10") as Label;
            Label label11 = FormView1.FindControl("Label11") as Label;
            Acdocentes actualizar = new Acdocentes();
            bool redirigir = false;
            redirigir = actualizar.actualizar(usuCodigo, docCodigo, doTelefono, docIngreso, docApellido1, docApellido2, docNombre1, docNombre2, docImagen, docArchivo, label9, label10, label11);
            if (redirigir == true)
            {
                Response.Redirect("Acdocentes.aspx");
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Label docCodigo = FormView1.FindControl("doccodigoLabel1") as Label;
            Label label9 = FormView1.FindControl("Label9") as Label;
            Label label10 = FormView1.FindControl("Label10") as Label;
            Label label11 = FormView1.FindControl("Label11") as Label;
            Acdocentes eliminarImg = new Acdocentes();
            bool redirigir;
            redirigir = eliminarImg.eliminarImgRegi(docCodigo, label9, label10, label11);
            if (redirigir == true)
            {
                Response.Redirect("Acdocentes.aspx");
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Label docCodigo = FormView1.FindControl("doccodigoLabel1") as Label;
            Label label9 = FormView1.FindControl("Label9") as Label;
            Label label10 = FormView1.FindControl("Label10") as Label;
            Label label11 = FormView1.FindControl("Label11") as Label;
            Acdocentes eliminarArc = new Acdocentes();
            bool redirigir;
            redirigir = eliminarArc.eliminarArcRegi(docCodigo, label9, label10, label11);
            if (redirigir == true)
            {
                Response.Redirect("Acdocentes.aspx");
            }
        }
    }
}