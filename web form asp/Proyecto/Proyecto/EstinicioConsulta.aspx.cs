using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class EstinicioConsulta : System.Web.UI.Page
    {
        SqlConnection conexion = new SqlConnection("server=DESKTOP-D4K75HQ\\SQLEXPRESS ; database=proyectoasp ; integrated security = true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session.Count == 0)
            {
                Response.Redirect("Acestudiantes.aspx");
            }
            else
            {
                if (TextBox4.Text.Equals(""))
                {
                    TextBox4.Text = this.Session["codigoEstudiante"].ToString();
                }
                else
                {
                    this.Session["codigoEstudiante"] = TextBox4.Text;
                }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("EstinicioConsulta.aspx");
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            conexion.Open();
            Label docImagen = FormView1.FindControl("imagenLabel") as Label;
            if (!docImagen.Text.Equals(""))
            {
                //borrar imagen del directorio

                //Dado el caso, verifico que exista el archivo..

                if (System.IO.File.Exists(Server.MapPath(".") + "/imagenes/" + docImagen.Text))
                {
                    System.IO.File.Delete(Server.MapPath(".") + "/imagenes/" + docImagen.Text);
                }
            }
            Label estCodigo = FormView1.FindControl("estcodigoLabel") as Label;
            string cadena = $"DELETE FROM tblestudiantes  WHERE estcodigo  = {estCodigo.Text}";
            SqlCommand comando = new SqlCommand(cadena, conexion);
            comando.ExecuteReader();
            Session["guardadoEst"] = "eliminado";
            conexion.Close();
            Response.Redirect("Acestudiantes.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            DropDownList usuCodigo = FormView1.FindControl("usucodigoDropDownList1") as DropDownList;
            Label estCodigo = FormView1.FindControl("estcodigoLabel1") as Label;
            TextBox estTelefono = FormView1.FindControl("estelefonoTextBox") as TextBox;
            TextBox estIngreso = FormView1.FindControl("estingresoTextBox") as TextBox;
            TextBox estApellido1 = FormView1.FindControl("estapellido1TextBox") as TextBox;
            TextBox estApellido2 = FormView1.FindControl("estapellido2TextBox") as TextBox;
            TextBox estNombre1 = FormView1.FindControl("estnombre1TextBox") as TextBox;
            TextBox estNombre2 = FormView1.FindControl("estnombre2TextBox") as TextBox;
            FileUpload estImagen = FormView1.FindControl("estimagenFileUpload1") as FileUpload;
            Label label9 = FormView1.FindControl("Label9") as Label;
            Label label10 = FormView1.FindControl("Label10") as Label;
            Label label11 = FormView1.FindControl("Label11") as Label;
            Acestudiantes actualizar = new Acestudiantes();
            bool redirigir = false;
            redirigir = actualizar.actualizar(usuCodigo, estCodigo, estTelefono, estIngreso, estApellido1, estApellido2, estNombre1, estNombre2, estImagen, label9, label10, label11);
            if (redirigir == true)
            {
                Response.Redirect("Acestudiantes.aspx");
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Label estCodigo = FormView1.FindControl("estcodigoLabel1") as Label;
            Label label9 = FormView1.FindControl("Label9") as Label;
            Label label10 = FormView1.FindControl("Label10") as Label;
            Label label11 = FormView1.FindControl("Label11") as Label;
            Acestudiantes eliminarImg = new Acestudiantes();
            bool redirigir;
            redirigir = eliminarImg.eliminarImgRegi(estCodigo, label9, label10, label11);
            if (redirigir == true)
            {
                Response.Redirect("Acestudiantes.aspx");
            }
        }
    }
}