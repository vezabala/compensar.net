using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection conexion = new SqlConnection("server=DESKTOP-D4K75HQ\\SQLEXPRESS ; database=proyectoasp ; integrated security = true");

        String us;
        bool condicion = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            conexion.Open();
            if (TextBox1.Text.Equals(""))
            {
                Response.Redirect("Default.aspx");
            }

            string cadena = "select usucodigo, doccodigo, docapellido1, docapellido2, docnombre1, docnombre2, docingreso from tbldocentes";
            SqlCommand comando = new SqlCommand(cadena, conexion);
            SqlDataReader registros = comando.ExecuteReader();
            while (registros.Read())
            {
                if (registros["docingreso"].ToString().Equals(TextBox1.Text))
                {
                    us = (registros["usucodigo"].ToString());
                    condicion = true;
                }
            }
            if (condicion == false)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(),
                    "alert",
                    "alert('La contraseña es incorrecta, no existe');", true);
                conexion.Close();
            }
            else
            {
                //Almacenamos las dos variables de sesion
                Session["usuario"] = us;
                Session["clave"] = TextBox1.Text;
                //Redireccionamos a la siguiente pagina

                Response.Redirect("AdInicio.aspx");

                conexion.Close();
            }
        }
    }
}