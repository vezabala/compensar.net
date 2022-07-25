using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class AgregarCurso : System.Web.UI.Page
    {
        SqlConnection conexion = new SqlConnection("server=DESKTOP-D4K75HQ\\SQLEXPRESS ; database=proyectoasp ; integrated security = true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Equals("") || TextBox2.Text.Equals("") || TextBox3.Text.Equals(""))
            {
                Label5.Text = "ERROR, debe insertar todos los campos";
            }
            else
            {
                conexion.Open();
                string cadena = $"INSERT INTO tblcursos (curnombre1, curintensidadh, curdescripcion) VALUES('{TextBox1.Text}', '{TextBox2.Text}', '{TextBox3.Text}');";
                SqlCommand comando = new SqlCommand(cadena, conexion);
                comando.ExecuteReader();
                conexion.Close();
                Session["guardadoCur"] = "guardado";
                Response.Redirect("Accursos.aspx");
            }
        }
    }
}