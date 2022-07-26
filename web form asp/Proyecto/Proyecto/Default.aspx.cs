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

        String apellido1;
        String apellido2;
        String nombre1;
        String nombre2;
        String us;
        String usNA;
        String imagen;
        String codigo;
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
            if (DropDownList1.SelectedValue.Equals("3"))
            {
                if (TextBox1.Text.Equals(""))
                {
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    string cadena = "select usucodigo, doccodigo, docapellido1, docapellido2, docnombre1, docnombre2, docingreso, imagen from tbldocentes";
                    SqlCommand comando = new SqlCommand(cadena, conexion);
                    SqlDataReader registros = comando.ExecuteReader();
                    while (registros.Read())
                    {
                        if (registros["docingreso"].ToString().Equals(TextBox1.Text))
                        {
                            apellido1 = (registros["docapellido1"].ToString());
                            apellido2 = (registros["docapellido2"].ToString());
                            nombre1 = (registros["docnombre1"].ToString());
                            nombre2 = (registros["docnombre2"].ToString());
                            imagen = (registros["imagen"].ToString());
                            codigo = (registros["doccodigo"].ToString());
                            us = ($"{nombre1} {nombre2} {apellido1} {apellido2}");
                            usNA = ($"{nombre1} {apellido1}");
                            condicion = true;
                        }
                    }
                    if (condicion == false)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(),
                            "alert",
                            "alert('La contraseña es incorrecta, no existe');", true);
                        conexion.Close();
                        TextBox1.Text = "";
                    }
                    else
                    {
                        //Almacenamos las dos variables de sesion
                        Session["codigo"] = codigo;
                        Session["usuario"] = us;
                        Session["usuarioNA"] = usNA;
                        Session["imagen"] = imagen;
                        Session["clave"] = TextBox1.Text;
                        //Redireccionamos a la siguiente pagina

                        Response.Redirect("Docinicio.aspx");

                        conexion.Close();
                    }
                }
            }
            if (DropDownList1.SelectedValue.Equals("1"))
            {
                Response.Redirect("Adinicio.aspx");

                conexion.Close();
            }
            if (DropDownList1.SelectedValue.Equals("4"))
            {
                if (TextBox1.Text.Equals(""))
                {
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    string cadena = "select usucodigo, estcodigo, estapellido1, estapellido2, estnombre1, estnombre2, estingreso, imagen from tblestudiantes";
                    SqlCommand comando = new SqlCommand(cadena, conexion);
                    SqlDataReader registros = comando.ExecuteReader();
                    while (registros.Read())
                    {
                        if (registros["estingreso"].ToString().Equals(TextBox1.Text))
                        {
                            apellido1 = (registros["estapellido1"].ToString());
                            apellido2 = (registros["estapellido2"].ToString());
                            nombre1 = (registros["estnombre1"].ToString());
                            nombre2 = (registros["estnombre2"].ToString());
                            imagen = (registros["imagen"].ToString());
                            codigo = (registros["estcodigo"].ToString());
                            us = ($"{nombre1} {nombre2} {apellido1} {apellido2}");
                            usNA = ($"{nombre1} {apellido1}");
                            condicion = true;
                        }
                    }
                    if (condicion == false)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(),
                            "alert",
                            "alert('La contraseña es incorrecta, no existe');", true);
                        conexion.Close();
                        TextBox1.Text = "";
                    }
                    else
                    {
                        //Almacenamos las dos variables de sesion
                        Session["codigo"] = codigo;
                        Session["usuario"] = us;
                        Session["usuarioNA"] = usNA;
                        Session["imagen"] = imagen;
                        Session["clave"] = TextBox1.Text;
                        //Redireccionamos a la siguiente pagina

                        Response.Redirect("Estinicio.aspx");

                        conexion.Close();
                    }
                }
            }
        }
    }
}