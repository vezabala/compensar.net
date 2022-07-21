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
    }
}