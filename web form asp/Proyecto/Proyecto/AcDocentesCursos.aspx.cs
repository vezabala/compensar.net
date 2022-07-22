using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class AcDocentesCursos : System.Web.UI.Page
    {
        SqlConnection conexion = new SqlConnection("server=DESKTOP-D4K75HQ\\SQLEXPRESS ; database=proyectoasp ; integrated security = true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            conexion.Open();
            string docente = DropDownList1.SelectedValue;
            string curso = DropDownList2.SelectedValue;

            try
            {
                string cadena = $"INSERT INTO tblcursodocente (curcodigo,doccodigo) VALUES ({curso} , {docente});";
                SqlCommand comando = new SqlCommand(cadena, conexion);
                comando.ExecuteNonQuery();
                Label5.Text = "Los datos se guardaron correctamente";
                GridView1.DataBind();
            }
            catch
            {
                Label5.Text = "ERROR, clave duplicada";
            }
            conexion.Close();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            int cont = 0;
            conexion.Open();
            string cadena = $"SELECT curcodigo, doccodigo FROM tblcursodocente Where doccodigo = {this.DropDownList1.SelectedValue};";
            SqlCommand comando = new SqlCommand(cadena, conexion);
            SqlDataReader registro = comando.ExecuteReader();
            while (registro.Read())
            {
                cont++;
            }
            if(cont == 0)
            {
                this.Label5.Text = "El docente no tiene materias asignadas";
            }
            if (cont > 0)
            {
                this.Label5.Text = $"El docente tiene asignado {cont} materias";
            }
            conexion.Close();
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            conexion.Open();
            string docente = DropDownList1.SelectedValue;
            string curso = DropDownList2.SelectedValue;

            try
            {
                string cadena = $"DELETE FROM tblcursodocente  WHERE curcodigo = {curso} AND doccodigo = {docente};";
                SqlCommand comando = new SqlCommand(cadena, conexion);
                comando.ExecuteNonQuery();
                Label5.Text = "los datos se eliminaron con EXITO";
                GridView1.DataBind();
            }
            catch
            {
                Label5.Text = "ERROR, no se a podido eliminar";
            }
            conexion.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int cont = 0;
            foreach (GridViewRow row in GridView1.Rows)
            {
                cont++;
            }
            Label5.Text = $"Existen {cont} materias en la pag";
        }
    }
}