using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class Acestudiantes : System.Web.UI.Page
    {
        SqlConnection conexion = new SqlConnection("server=DESKTOP-D4K75HQ\\SQLEXPRESS ; database=proyectoasp ; integrated security = true");
        private bool condicion = false;
        private String codigoEstudiante = "";
        public String extImg;
        public String extArc;
        public double tamanioMb;
        public int contador = 0;
        public bool condicion2 = true;
        public string nombreImagen = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["guardadoEst"] != null)
            {
                if (Session["guardadoEst"].ToString().Equals("guardado"))
                {
                    Label7.Text = "Se a guardado con exito el registro";
                    Label7.Visible = true;
                    Button4.Visible = true;
                    Session["guardadoEst"] = "";
                }
                else if (Session["guardadoEst"].ToString().Equals("eliminado"))
                {
                    Label7.Text = "Se a eliminado con exito el registro";
                    Label7.Visible = true;
                    Button4.Visible = true;
                    Session["guardadoEst"] = "";
                }
                else if (Session["guardadoEst"].ToString().Equals("actualizado"))
                {
                    Label7.Text = "Se a actualizado con exito el registro";
                    Label7.Visible = true;
                    Button4.Visible = true;
                    Session["guardadoEst"] = "";
                }
                else if (Session["guardadoEst"].ToString().Equals("actualizadoImgBorrado"))
                {
                    Label7.Text = "Se a eliminado la foto del registro con exito";
                    Label7.Visible = true;
                    Button4.Visible = true;
                    Session["guardadoEst"] = "";
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            conexion.Open();
            if (TextBox4.Text.Equals(""))
            {
                Response.Redirect("Acestudiantes.aspx");
            }
            else
            {
                string cadena = "select * from tblestudiantes";
                SqlCommand comando = new SqlCommand(cadena, conexion);
                SqlDataReader registros = comando.ExecuteReader();
                while (registros.Read())
                {
                    if (registros["estcodigo"].ToString().Equals(TextBox4.Text))
                    {
                        codigoEstudiante = (registros["estcodigo"].ToString());
                        condicion = true;
                    }
                }
                if (condicion == false)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(),
                        "alert",
                        "alert('No se encontro estudiante con este codigo');", true);
                    conexion.Close();
                    TextBox4.Text = "";
                }
                else
                {
                    //Almacenamos las dos variables de sesion
                    Session["codigoEstudiante"] = codigoEstudiante;
                    //Redireccionamos a la siguiente pagina

                    Response.Redirect("EstinicioConsulta.aspx");

                    conexion.Close();
                }
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label7.Visible = false;
            Button4.Visible = false;
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            conexion.Open();
            Label estImagen = FormView1.FindControl("imagenLabel") as Label;
            if (!estImagen.Text.Equals(""))
            {
                //borrar imagen del directorio

                //Dado el caso, verifico que exista el archivo..

                if (System.IO.File.Exists(Server.MapPath(".") + "/imagenes/" + estImagen.Text))
                {
                    System.IO.File.Delete(Server.MapPath(".") + "/imagenes/" + estImagen.Text);
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

        //      Insertar
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string excepcion;
            DropDownList usuCodigo = FormView1.FindControl("usucodigoDropDownList1") as DropDownList;
            TextBox estCodigo = FormView1.FindControl("estcodigoTextBox") as TextBox;
            TextBox estTelefono = FormView1.FindControl("estelefonoTextBox") as TextBox;
            TextBox estTngreso = FormView1.FindControl("estingresoTextBox") as TextBox;
            TextBox estApellido1 = FormView1.FindControl("estapellido1TextBox") as TextBox;
            TextBox estApellido2 = FormView1.FindControl("estapellido2TextBox") as TextBox;
            TextBox estNombre1 = FormView1.FindControl("estnombre1TextBox") as TextBox;
            TextBox estNombre2 = FormView1.FindControl("estnombre2TextBox") as TextBox;
            FileUpload estImagen = FormView1.FindControl("estimagenFileUpload1") as FileUpload;
            Label label5 = FormView1.FindControl("Label5") as Label;
            Label label6 = FormView1.FindControl("Label6") as Label;
            Label label8 = FormView1.FindControl("Label8") as Label;

            String imagenVar = "";
            excepcion = vallidarLLavesRepetidas(estCodigo);
            if (excepcion.Equals("repetidas"))
            {
                label8.Text = "Error, el codigo de este estudiante ya existe";
            }
            else
            {
                if (estImagen.FileName.Equals(""))
                {
                    label5.Text = "";
                    label6.Text = "";
                    label8.Text = "";
                    conexion.Open();
                    string cadena = $"INSERT INTO tblestudiantes (usucodigo, estcodigo, estapellido1, estapellido2, estnombre1, estnombre2, estingreso, estelefono) VALUES({Int32.Parse(usuCodigo.Text)}, {Int32.Parse(estCodigo.Text)}, '{estApellido1.Text}', '{estApellido2.Text}', '{estNombre1.Text}', '{estNombre2.Text}', '{estTngreso.Text}', '{estTelefono.Text}');";
                    SqlCommand comando = new SqlCommand(cadena, conexion);
                    comando.ExecuteReader();
                    conexion.Close();
                    Session["guardadoEst"] = "guardado";
                    Response.Redirect("Acestudiantes.aspx");

                }
                else if (!estImagen.FileName.Equals(""))
                {
                    label5.Text = "";
                    label6.Text = "";
                    label8.Text = "";
                    imagenVar = estImagen.FileName;
                    label5.Text = subirImagen(imagenVar, estImagen);
                    if (label5.Text.Equals(nombreImagen))
                    {
                        conexion.Open();
                        string cadena = $"INSERT INTO tblestudiantes (usucodigo, estcodigo, estapellido1, estapellido2, estnombre1, estnombre2, estingreso, estelefono, imagen) VALUES({Int32.Parse(usuCodigo.Text)}, {Int32.Parse(estCodigo.Text)}, '{estApellido1.Text}', '{estApellido2.Text}', '{estNombre1.Text}', '{estNombre2.Text}', '{estTngreso.Text}', '{estTelefono.Text}', '{nombreImagen}');";
                        SqlCommand comando = new SqlCommand(cadena, conexion);
                        comando.ExecuteReader();
                        conexion.Close();
                        Session["guardadoEst"] = "guardado";
                        Response.Redirect("Acestudiantes.aspx");
                    }

                }
            }
        }

        public string subirImagen(string imagenVar, FileUpload estImagen)
        {
            String label5 = "";
            extImg = System.IO.Path.GetExtension(imagenVar);
            if (extImg.Equals(".bmp") || extImg.Equals(".gif") || extImg.Equals(".tif") || extImg.Equals(".png"))
            {
                while (condicion2 == true)
                {
                    if (System.IO.File.Exists(Server.MapPath(".") + "/imagenes/" + imagenVar))
                    {
                        string variableNombreSinExt = System.IO.Path.GetFileNameWithoutExtension(estImagen.FileName);
                        contador++;
                        imagenVar = $"{variableNombreSinExt}-{contador}{extImg}";
                    }
                    else
                    {
                        condicion2 = false;
                    }
                }
                if (estImagen.PostedFile.ContentLength > 200000)
                {
                    tamanioMb = ((double)estImagen.PostedFile.ContentLength / (double)1000) / 1000;
                    label5 = $"Se supero el peso de subida para la imagen, el peso debe ser menor de 0.2mb (200kb), se subio con {tamanioMb.ToString()} MB";
                    return label5;
                }
                else
                {
                    estImagen.SaveAs(Server.MapPath(".") + "/imagenes/" + imagenVar);//guarda el archivo contenido en FileUpload1
                    nombreImagen = imagenVar;
                    return imagenVar;
                }
            }
            else
            {
                label5 = "La extencion de la imagen no es Valida";
                return label5;
            }
        }

        public string vallidarLLavesRepetidas(TextBox estCodigo)
        {
            conexion.Open();
            string cadena = "select estcodigo from tblestudiantes";
            SqlCommand comando = new SqlCommand(cadena, conexion);
            SqlDataReader registros = comando.ExecuteReader();
            string error = "";
            while (registros.Read())
            {
                if (registros["estcodigo"].ToString().Equals(estCodigo.Text))
                {
                    error = "repetidas";
                }
            }
            conexion.Close();
            return error;
        }

        //      Actualizar
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
            bool redirigir = false;
            redirigir = actualizar(usuCodigo, estCodigo, estTelefono, estIngreso, estApellido1, estApellido2, estNombre1, estNombre2, estImagen, label9, label10, label11);
            if (redirigir == true)
            {
                Response.Redirect("Acestudiantes.aspx");
            }
        }

        public bool actualizar(DropDownList usuCodigo, Label estCodigo, TextBox estTelefono, TextBox estIngreso, TextBox estApellido1, TextBox estApellido2, TextBox estNombre1, TextBox estNombre2, FileUpload estImagen, Label label9, Label label10, Label label11)
        {
            bool retorno = false;
            String imagenVar = "";
            if (estImagen.FileName.Equals(""))
            {
                label9.Text = "";
                label10.Text = "";
                label11.Text = "";
                conexion.Open();
                string cadena = $"UPDATE tblestudiantes SET usucodigo = {usuCodigo.Text}, estapellido1 = '{estApellido1.Text}', estapellido2 = '{estApellido2.Text}', estnombre1 = '{estNombre1.Text}', estnombre2 = '{estNombre2.Text}', estingreso = '{estIngreso.Text}', estelefono = '{estTelefono.Text}' WHERE estcodigo = {estCodigo.Text};";
                SqlCommand comando = new SqlCommand(cadena, conexion);
                comando.ExecuteReader();
                conexion.Close();
                Session["guardadoEst"] = "actualizado";
                retorno = true;
            }
            else if (!estImagen.FileName.Equals(""))
            {
                label9.Text = "";
                label10.Text = "";
                label11.Text = "";
                imagenVar = estImagen.FileName;
                label9.Text = subirImagen(imagenVar, estImagen);
                if (label9.Text.Equals(nombreImagen))
                {
                    string varImagen = "";
                    conexion.Open();
                    string cadena = $"select imagen from tblestudiantes WHERE estcodigo = {estCodigo.Text};";
                    SqlCommand comando = new SqlCommand(cadena, conexion);
                    SqlDataReader registros = comando.ExecuteReader();
                    while (registros.Read())
                    {
                        if (!registros["imagen"].ToString().Equals(""))
                        {
                            varImagen = (registros["imagen"].ToString());
                        }
                    }
                    conexion.Close();
                    if (varImagen.Equals(""))
                    {
                        conexion.Open();
                        string cadena2 = $"UPDATE tblestudiantes SET usucodigo = {usuCodigo.Text}, estapellido1 = '{estApellido1.Text}', estapellido2 = '{estApellido2.Text}', estnombre1 = '{estNombre1.Text}', estnombre2 = '{estNombre2.Text}', estingreso = '{estIngreso.Text}', estelefono = '{estTelefono.Text}', imagen = '{nombreImagen}' WHERE estcodigo = {estCodigo.Text};";
                        SqlCommand comando2 = new SqlCommand(cadena2, conexion);
                        comando2.ExecuteReader();
                        conexion.Close();
                        Session["guardadoEst"] = "actualizado";
                        retorno = true;
                    }
                    else
                    {
                        //borrar imagen anerior del directorio
                        //Dado el caso, verifico que exista el archivo..
                        if (System.IO.File.Exists(Server.MapPath(".") + "/imagenes/" + varImagen))
                        {
                            System.IO.File.Delete(Server.MapPath(".") + "/imagenes/" + varImagen);
                        }
                        conexion.Open();
                        string cadena2 = $"UPDATE tblestudiantes SET usucodigo = {usuCodigo.Text}, estapellido1 = '{estApellido1.Text}', estapellido2 = '{estApellido2.Text}', estnombre1 = '{estNombre1.Text}', estnombre2 = '{estNombre2.Text}', estingreso = '{estIngreso.Text}', estelefono = '{estTelefono.Text}', imagen = '{nombreImagen}' WHERE estcodigo = {estCodigo.Text};";
                        SqlCommand comando2 = new SqlCommand(cadena2, conexion);
                        comando2.ExecuteReader();
                        conexion.Close();
                        Session["guardadoEst"] = "actualizado";
                        retorno = true;
                    }
                }
            }
            return retorno;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Label estCodigo = FormView1.FindControl("estcodigoLabel1") as Label;
            Label label9 = FormView1.FindControl("Label9") as Label;
            Label label10 = FormView1.FindControl("Label10") as Label;
            Label label11 = FormView1.FindControl("Label11") as Label;
            bool redirigir;
            redirigir = eliminarImgRegi(estCodigo, label9, label10, label11);
            if (redirigir == true)
            {
                Response.Redirect("Acestudiantes.aspx");
            }
        }

        public bool eliminarImgRegi(Label estCodigo, Label label9, Label label10, Label label11)
        {
            bool retorno = false;
            String nombreImagen2 = "";
            label9.Text = "";
            label10.Text = "";
            label11.Text = "";
            conexion.Open();
            string cadena = $"select imagen from tblestudiantes WHERE estcodigo = {estCodigo.Text}";
            SqlCommand comando = new SqlCommand(cadena, conexion);
            SqlDataReader registros = comando.ExecuteReader();
            while (registros.Read())
            {
                if (!registros["imagen"].ToString().Equals(""))
                {
                    nombreImagen2 = (registros["imagen"].ToString());
                }
            }
            conexion.Close();
            if (!nombreImagen2.Equals(""))
            {
                if (System.IO.File.Exists(Server.MapPath(".") + "/imagenes/" + nombreImagen2))
                {
                    System.IO.File.Delete(Server.MapPath(".") + "/imagenes/" + nombreImagen2);
                }
                conexion.Open();
                string cadena2 = $"UPDATE tblestudiantes SET imagen = null WHERE estcodigo = {estCodigo.Text};";
                SqlCommand comando2 = new SqlCommand(cadena2, conexion);
                comando2.ExecuteReader();
                conexion.Close();
                Session["guardadoEst"] = "actualizadoImgBorrado";
                retorno = true;
            }
            else
            {
                label9.Text = "No existe ninguna foto insertada en este registro";
            }
            return retorno;
        }
    }
}