using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class AcEstudiantesCursos : System.Web.UI.Page
    {
        SqlConnection conexion = new SqlConnection("server=DESKTOP-D4K75HQ\\SQLEXPRESS ; database=proyectoasp ; integrated security = true");
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        { 
            string curso = DropDownList1.SelectedValue;
            string docente = DropDownList2.SelectedValue;
            string estudiante = DropDownList3.SelectedValue;
            if (docente.Equals(""))
            {
                Label5.Text = "ERROR! Este curso no tiene ningun docente asignado aun";
            }
            else
            {
                try
                {
                    conexion.Open();
                    string cadena = $"INSERT INTO tblcursoestudiante (doccodigo,curcodigo, estcodigo) VALUES ({docente}, {curso} , {estudiante});";
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
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            int cont = 0;
            conexion.Open();
            string cadena = $"SELECT curcodigo, estcodigo FROM tblcursoestudiante Where estcodigo = {this.DropDownList3.SelectedValue};";
            SqlCommand comando = new SqlCommand(cadena, conexion);
            SqlDataReader registro = comando.ExecuteReader();
            while (registro.Read())
            {
                cont++;
            }
            if (cont == 0)
            {
                this.Label5.Text = "El estudiante no esta inscrito a una materia";
            }
            if (cont > 0)
            {
                this.Label5.Text = $"El estudiante tiene inscrito {cont} materias";
            }
            conexion.Close();
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            conexion.Open();
            string estudiante = DropDownList3.SelectedValue;
            string curso = DropDownList1.SelectedValue;

            try
            {
                string cadena = $"DELETE FROM tblcursoestudiante  WHERE curcodigo = {curso} AND estcodigo = {estudiante};";
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

        protected void LinkButton4_Click(object sender, EventArgs e)
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