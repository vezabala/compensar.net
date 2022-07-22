using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class Acdocentes : System.Web.UI.Page
    {
        SqlConnection conexion = new SqlConnection("server=DESKTOP-D4K75HQ\\SQLEXPRESS ; database=proyectoasp ; integrated security = true");
        private bool condicion = false;
        private String codigoDocente = "";
        public String extImg;
        public String extArc;
        public double tamanioMb;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            conexion.Open();
            if (TextBox4.Text.Equals(""))
            {
                Response.Redirect("Acdocentes.aspx");
            }
            else
            {
                string cadena = "select * from tbldocentes";
                SqlCommand comando = new SqlCommand(cadena, conexion);
                SqlDataReader registros = comando.ExecuteReader();
                while (registros.Read())
                {
                    if (registros["doccodigo"].ToString().Equals(TextBox4.Text))
                    {
                        codigoDocente = (registros["doccodigo"].ToString());
                        condicion = true;
                    }
                }
                if (condicion == false)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(),
                        "alert",
                        "alert('No se encontro docente con este codigo');", true);
                    conexion.Close();
                    TextBox4.Text = "";
                }
                else
                {
                    //Almacenamos las dos variables de sesion
                    Session["codigoDocente"] = codigoDocente;                   
                    //Redireccionamos a la siguiente pagina

                    Response.Redirect("DocinicioConsulta.aspx");

                    conexion.Close();
                }
            }
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            Label docImagen = FormView1.FindControl("docimagenLabel") as Label;
            Label docArchivo = FormView1.FindControl("docarchivoLabel") as Label;
            if (!docImagen.Text.Equals("")){
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            conexion.Open();
            TextBox usuCodigo = FormView1.FindControl("usucodigoTextBox") as TextBox;
            TextBox docCodigo = FormView1.FindControl("doccodigoTextBox") as TextBox;
            TextBox doTelefono = FormView1.FindControl("dotelefonoTextBox") as TextBox; 
            TextBox docTngreso = FormView1.FindControl("docingresoTextBox") as TextBox;
            TextBox docApellido1 = FormView1.FindControl("docapellido1TextBox") as TextBox;
            TextBox docApellido2 = FormView1.FindControl("docapellido2TextBox") as TextBox;
            TextBox docNombre1 = FormView1.FindControl("docnombre1TextBox") as TextBox;
            TextBox docNombre2 = FormView1.FindControl("docnombre2TextBox") as TextBox;
            FileUpload docImagen = FormView1.FindControl("docimagenFileUpload1") as FileUpload;
            FileUpload docArchivo = FormView1.FindControl("docarchivoFileUpload1") as FileUpload;
            Label label5 = FormView1.FindControl("Label5") as Label;

            String imagenVar = "";
            String archivoVar = "";
            int contador = 0;
            bool condicion = true;

            if (!docImagen.FileName.Equals(""))
            {
                imagenVar = docImagen.FileName;
                extImg = System.IO.Path.GetExtension(imagenVar);
                if (extImg.Equals(".bmp") || extImg.Equals(".gif") || extImg.Equals(".tif") || extImg.Equals(".png"))
                {
                    while (condicion == true)
                    {
                        if (System.IO.File.Exists(Server.MapPath(".") + "/imagenes/" + imagenVar))
                        {
                            string variableNombreSinExt = System.IO.Path.GetFileNameWithoutExtension(docImagen.FileName);
                            contador++;
                            imagenVar = $"{variableNombreSinExt}-{contador}{extImg}";
                        }
                        else
                        {
                            condicion = false;
                        }                      
                    }
                    if (docImagen.PostedFile.ContentLength > 200000)
                    {
                        tamanioMb = ((double)docImagen.PostedFile.ContentLength / (double)1000) / 1000;
                        label5.Text = $"Se supero el peso de subida para la imagen, el peso debe ser menor de 0.2mb (200kb), se subio con {tamanioMb.ToString()} MB";
                    }
                    else
                    {
                        docImagen.SaveAs(Server.MapPath(".") + "/imagenes/" + imagenVar);//guarda el archivo contenido en FileUpload1
                    }
                }
                else
                {
                    label5.Text = "La extencion del archivo no es Valida, debe ser de imagen";
                }
            }
            condicion = true;
            if (!docArchivo.FileName.Equals(""))
            {
                archivoVar = docArchivo.FileName;
                extArc = System.IO.Path.GetExtension(archivoVar);
                if (extArc.Equals(".pdf"))
                {
                    while (condicion == true)
                    {
                        if (System.IO.File.Exists(Server.MapPath(".") + "/archivos/" + archivoVar))
                        {
                            string variableNombreSinExt = System.IO.Path.GetFileNameWithoutExtension(docArchivo.FileName);
                            contador++;
                            archivoVar = $"{variableNombreSinExt}-{contador}{extArc}";
                        }
                        else
                        {
                            condicion = false;
                        }
                    }
                    if (docArchivo.PostedFile.ContentLength > 200000)
                    {
                        tamanioMb = ((double)docImagen.PostedFile.ContentLength / (double)1000) / 1000;
                        label5.Text = $"Se supero el peso de subida para el archivo, el peso debe ser menor de 0.2mb (200kb), se subio con {tamanioMb.ToString()} MB";
                    }
                    else
                    {
                        docArchivo.SaveAs(Server.MapPath(".") + "/archivos/" + archivoVar);//guarda el archivo contenido en FileUpload1
                    }

                }
                else
                {
                    label5.Text = "La extencion del archivo no es Valida, debe ser un archivo .pdf";
                }
            }
            string cadena = $"INSERT INTO tbldocentes (usucodigo, doccodigo, docapellido1, docapellido2, docnombre1, docnombre2, docingreso, dotelefono, imagen, archivo) VALUES({Int32.Parse(usuCodigo.Text)}, {Int32.Parse(docCodigo.Text)}, '{docApellido1.Text}', '{docApellido2.Text}', '{docNombre1.Text}', '{docNombre2.Text}', '{docTngreso.Text}', '{doTelefono.Text}', '{imagenVar}', '{archivoVar}');";
            SqlCommand comando = new SqlCommand(cadena, conexion);
            comando.ExecuteReader();
        }

        public void subirImagen()
        {

        }
    }
}