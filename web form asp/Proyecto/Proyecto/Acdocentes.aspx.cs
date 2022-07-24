﻿using System;
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
        public int contador = 0;
        public bool condicion2 = true;
        public string nombreImagen = "";
        public string nombreArchivo = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["guardadoDoc"]!=null)
            {
                if (Session["guardadoDoc"].ToString().Equals("guardado")){
                    Label7.Text = "Se a guardado con exito el registro";
                    Label7.Visible = true;
                    Button4.Visible = true;
                    Session["guardadoDoc"] = "";
                }
                else if (Session["guardadoDoc"].ToString().Equals("eliminado"))
                {   
                    Label7.Text = "Se a eliminado con exito el registro";
                    Label7.Visible = true;
                    Button4.Visible = true;
                    Session["guardadoDoc"] = "";
                }
                else if (Session["guardadoDoc"].ToString().Equals("actualizado"))
                {
                    Label7.Text = "Se a actualizado con exito el registro";
                    Label7.Visible = true;
                    Button4.Visible = true;
                    Session["guardadoDoc"] = "";
                }
                else if (Session["guardadoDoc"].ToString().Equals("actualizadoImgBorrado"))
                {
                    Label7.Text = "Se a eliminado la foto del registro con exito";
                    Label7.Visible = true;
                    Button4.Visible = true;
                    Session["guardadoDoc"] = "";
                }
                else if (Session["guardadoDoc"].ToString().Equals("actualizadoArcBorrado"))
                {
                    Label7.Text = "Se a eliminado el archivo del registro con exito";
                    Label7.Visible = true;
                    Button4.Visible = true;
                    Session["guardadoDoc"] = "";
                }
            }
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
            conexion.Open();
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
            Label docCodigo = FormView1.FindControl("doccodigoLabel") as Label;
            string cadena = $"DELETE FROM tbldocentes  WHERE doccodigo  = {docCodigo.Text}";
            SqlCommand comando = new SqlCommand(cadena, conexion);
            comando.ExecuteReader();
            Session["guardadoDoc"] = "eliminado";
            conexion.Close();
            Response.Redirect("Acdocentes.aspx");
        }  

        // Insertar
        protected void Button3_Click(object sender, EventArgs e)
        {
            string excepcion;
            DropDownList usuCodigo = FormView1.FindControl("usucodigoDropDownList1") as DropDownList;
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
            Label label6 = FormView1.FindControl("Label6") as Label;
            Label label8 = FormView1.FindControl("Label8") as Label;

            String imagenVar = "";
            String archivoVar = "";
            excepcion = vallidarLLavesRepetidas(docCodigo);
            if (excepcion.Equals("repetidas"))
            {
                label8.Text = "Error, el codigo de este docente ya existe";
            }
            else
            {
                if (docImagen.FileName.Equals("") && docArchivo.FileName.Equals(""))
                {
                    label5.Text = "";
                    label6.Text = "";
                    label8.Text = "";
                    conexion.Open();
                    string cadena = $"INSERT INTO tbldocentes (usucodigo, doccodigo, docapellido1, docapellido2, docnombre1, docnombre2, docingreso, dotelefono) VALUES({Int32.Parse(usuCodigo.Text)}, {Int32.Parse(docCodigo.Text)}, '{docApellido1.Text}', '{docApellido2.Text}', '{docNombre1.Text}', '{docNombre2.Text}', '{docTngreso.Text}', '{doTelefono.Text}');";
                    SqlCommand comando = new SqlCommand(cadena, conexion);
                    comando.ExecuteReader();
                    conexion.Close();
                    Session["guardadoDoc"] = "guardado";
                    Response.Redirect("Acdocentes.aspx");

                }
                else if (!docImagen.FileName.Equals("") && docArchivo.FileName.Equals(""))
                {
                    label5.Text = "";
                    label6.Text = "";
                    label8.Text = "";
                    imagenVar = docImagen.FileName;
                    label5.Text = subirImagen(imagenVar, docImagen);
                    if (label5.Text.Equals(nombreImagen))
                    {
                        conexion.Open();
                        string cadena = $"INSERT INTO tbldocentes (usucodigo, doccodigo, docapellido1, docapellido2, docnombre1, docnombre2, docingreso, dotelefono, imagen) VALUES({Int32.Parse(usuCodigo.Text)}, {Int32.Parse(docCodigo.Text)}, '{docApellido1.Text}', '{docApellido2.Text}', '{docNombre1.Text}', '{docNombre2.Text}', '{docTngreso.Text}', '{doTelefono.Text}', '{nombreImagen}');";
                        SqlCommand comando = new SqlCommand(cadena, conexion);
                        comando.ExecuteReader();
                        conexion.Close();
                        Session["guardadoDoc"] = "guardado";
                        Response.Redirect("Acdocentes.aspx");
                    }

                }
                else if (docImagen.FileName.Equals("") && !docArchivo.FileName.Equals(""))
                {
                    label5.Text = "";
                    label6.Text = "";
                    label8.Text = "";
                    archivoVar = docArchivo.FileName;
                    label6.Text = subirArchivo(archivoVar, docArchivo);
                    if (label6.Text.Equals(nombreArchivo))
                    {
                        conexion.Open();
                        string cadena = $"INSERT INTO tbldocentes (usucodigo, doccodigo, docapellido1, docapellido2, docnombre1, docnombre2, docingreso, dotelefono, archivo) VALUES({Int32.Parse(usuCodigo.Text)}, {Int32.Parse(docCodigo.Text)}, '{docApellido1.Text}', '{docApellido2.Text}', '{docNombre1.Text}', '{docNombre2.Text}', '{docTngreso.Text}', '{doTelefono.Text}', '{nombreArchivo}');";
                        SqlCommand comando = new SqlCommand(cadena, conexion);
                        comando.ExecuteReader();
                        conexion.Close();
                        Session["guardadoDoc"] = "guardado";
                        Response.Redirect("Acdocentes.aspx");
                    }
                }
                else if (!docImagen.FileName.Equals("") && !docArchivo.FileName.Equals(""))
                {
                    label5.Text = "";
                    label6.Text = "";
                    label8.Text = "";
                    imagenVar = docImagen.FileName;
                    archivoVar = docArchivo.FileName;
                    label5.Text = subirImagen(imagenVar, docImagen);
                    condicion2 = true;
                    label6.Text = subirArchivo(archivoVar, docArchivo);
                    if (label5.Text.Equals(nombreImagen) && label6.Text.Equals(nombreArchivo))
                    {
                        conexion.Open();
                        string cadena = $"INSERT INTO tbldocentes (usucodigo, doccodigo, docapellido1, docapellido2, docnombre1, docnombre2, docingreso, dotelefono, imagen, archivo) VALUES({Int32.Parse(usuCodigo.Text)}, {Int32.Parse(docCodigo.Text)}, '{docApellido1.Text}', '{docApellido2.Text}', '{docNombre1.Text}', '{docNombre2.Text}', '{docTngreso.Text}', '{doTelefono.Text}', '{nombreImagen}', '{nombreArchivo}');";
                        SqlCommand comando = new SqlCommand(cadena, conexion);
                        comando.ExecuteReader();
                        conexion.Close();
                        Session["guardadoDoc"] = "guardado";
                        Response.Redirect("Acdocentes.aspx");
                    }
                    if(label5.Text.Equals(nombreImagen) && !label6.Text.Equals(nombreArchivo))
                    {
                        label5.Text = "";
                        if (System.IO.File.Exists(Server.MapPath(".") + "/imagenes/" + nombreImagen))
                        {
                            System.IO.File.Delete(Server.MapPath(".") + "/imagenes/" + nombreImagen);
                        }
                    }
                    if (!label5.Text.Equals(nombreImagen) && label6.Text.Equals(nombreArchivo))
                    {
                        label6.Text = "";
                        if (System.IO.File.Exists(Server.MapPath(".") + "/archivos/" + nombreArchivo))
                        {
                            System.IO.File.Delete(Server.MapPath(".") + "/archivos/" + nombreArchivo);
                        }
                    }
                }
            }
           
        }

        public string subirImagen(string imagenVar, FileUpload docImagen)
        {
            String label5="";
            extImg = System.IO.Path.GetExtension(imagenVar);
            if (extImg.Equals(".bmp") || extImg.Equals(".gif") || extImg.Equals(".tif") || extImg.Equals(".png"))
            {
                while (condicion2 == true)
                {
                    if (System.IO.File.Exists(Server.MapPath(".") + "/imagenes/" + imagenVar))
                    {
                        string variableNombreSinExt = System.IO.Path.GetFileNameWithoutExtension(docImagen.FileName);
                        contador++;
                        imagenVar = $"{variableNombreSinExt}-{contador}{extImg}";
                    }
                    else
                    {
                        condicion2 = false;
                    }
                }
                if (docImagen.PostedFile.ContentLength > 200000)
                {
                    tamanioMb = ((double)docImagen.PostedFile.ContentLength / (double)1000) / 1000;
                    label5 = $"Se supero el peso de subida para la imagen, el peso debe ser menor de 0.2mb (200kb), se subio con {tamanioMb.ToString()} MB";
                    return label5;
                }
                else
                {
                    docImagen.SaveAs(Server.MapPath(".") + "/imagenes/" + imagenVar);//guarda el archivo contenido en FileUpload1
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

        public string subirArchivo(string archivoVar, FileUpload docArchivo)
        {
            string label6 = ""; 
            extArc = System.IO.Path.GetExtension(archivoVar);
            if (extArc.Equals(".pdf"))
            {
                while (condicion2 == true)
                {
                    if (System.IO.File.Exists(Server.MapPath(".") + "/archivos/" + archivoVar))
                    {
                        string variableNombreSinExt = System.IO.Path.GetFileNameWithoutExtension(docArchivo.FileName);
                        contador++;
                        archivoVar = $"{variableNombreSinExt}-{contador}{extArc}";
                    }
                    else
                    {
                        condicion2 = false;
                    }
                }
                if (docArchivo.PostedFile.ContentLength > 200000)
                {
                    tamanioMb = ((double)docArchivo.PostedFile.ContentLength / (double)1000) / 1000;
                    label6 = $"Se supero el peso de subida para el archivo, el peso debe ser menor de 0.2mb (200kb), se subio con {tamanioMb.ToString()} MB";
                    return label6;
                }
                else
                {
                    docArchivo.SaveAs(Server.MapPath(".") + "/archivos/" + archivoVar);//guarda el archivo contenido en FileUpload1
                    nombreArchivo = archivoVar;
                    return archivoVar;
                }

            }
            else
            {
                label6 = "La extencion del archivo no es Valida, debe ser un archivo .pdf";
                return label6;
            }       
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label7.Visible = false;
            Button4.Visible = false;
        }

        public string vallidarLLavesRepetidas(TextBox docCodigo)
        {
            conexion.Open();
            string cadena = "select doccodigo from tbldocentes";
            SqlCommand comando = new SqlCommand(cadena, conexion);
            SqlDataReader registros = comando.ExecuteReader();
            string error = "";
            while (registros.Read())
            {
                if (registros["doccodigo"].ToString().Equals(docCodigo.Text))
                {
                    error = "repetidas";
                }
            }
            conexion.Close();
            return error;
        }

        //Actualizar
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

            String imagenVar = "";
            String archivoVar = "";
            if (docImagen.FileName.Equals("") && docArchivo.FileName.Equals(""))
            {
                label9.Text = "";
                label10.Text = "";
                label11.Text = "";
                conexion.Open();
                string cadena = $"UPDATE tbldocentes SET usucodigo = {usuCodigo.Text}, docapellido1 = '{docApellido1.Text}', docapellido2 = '{docApellido2.Text}', docnombre1 = '{docNombre1.Text}', docnombre2 = '{docNombre2.Text}', docingreso = '{docIngreso.Text}', dotelefono = '{doTelefono.Text}' WHERE doccodigo = {docCodigo.Text};";
                SqlCommand comando = new SqlCommand(cadena, conexion);
                comando.ExecuteReader();
                conexion.Close();
                Session["guardadoDoc"] = "actualizado";
                Response.Redirect("Acdocentes.aspx");
            }
            else if (!docImagen.FileName.Equals("") && docArchivo.FileName.Equals(""))
            {
                label9.Text = "";
                label10.Text = "";
                label11.Text = "";
                imagenVar = docImagen.FileName;
                label9.Text = subirImagen(imagenVar, docImagen);
                if (label9.Text.Equals(nombreImagen))
                {
                    string varImagen = "";
                    conexion.Open();
                    string cadena = $"select imagen from tbldocentes WHERE doccodigo = {docCodigo.Text};";
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
                        string cadena2 = $"UPDATE tbldocentes SET usucodigo = {usuCodigo.Text}, docapellido1 = '{docApellido1.Text}', docapellido2 = '{docApellido2.Text}', docnombre1 = '{docNombre1.Text}', docnombre2 = '{docNombre2.Text}', docingreso = '{docIngreso.Text}', dotelefono = '{doTelefono.Text}', imagen = '{nombreImagen}' WHERE doccodigo = {docCodigo.Text};";
                        SqlCommand comando2 = new SqlCommand(cadena2, conexion);
                        comando2.ExecuteReader();
                        conexion.Close();
                        Session["guardadoDoc"] = "actualizado";
                        Response.Redirect("Acdocentes.aspx");
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
                        string cadena2 = $"UPDATE tbldocentes SET usucodigo = {usuCodigo.Text}, docapellido1 = '{docApellido1.Text}', docapellido2 = '{docApellido2.Text}', docnombre1 = '{docNombre1.Text}', docnombre2 = '{docNombre2.Text}', docingreso = '{docIngreso.Text}', dotelefono = '{doTelefono.Text}', imagen = '{nombreImagen}' WHERE doccodigo = {docCodigo.Text};";
                        SqlCommand comando2 = new SqlCommand(cadena2, conexion);
                        comando2.ExecuteReader();
                        conexion.Close();
                        Session["guardadoDoc"] = "actualizado";
                        Response.Redirect("Acdocentes.aspx");
                    }
                } 
            }
            else if (docImagen.FileName.Equals("") && !docArchivo.FileName.Equals(""))
            {
                label9.Text = "";
                label10.Text = "";
                label11.Text = "";
                archivoVar = docArchivo.FileName;
                label9.Text = subirArchivo(archivoVar, docArchivo);
                if (label9.Text.Equals(nombreArchivo))
                {
                    string varArchivo = "";
                    conexion.Open();
                    string cadena = $"select archivo from tbldocentes WHERE doccodigo = {docCodigo.Text};";
                    SqlCommand comando = new SqlCommand(cadena, conexion);
                    SqlDataReader registros = comando.ExecuteReader();
                    while (registros.Read())
                    {
                        if (!registros["archivo"].ToString().Equals(""))
                        {
                            varArchivo = (registros["archivo"].ToString());
                        }
                    }
                    conexion.Close();
                    if (varArchivo.Equals(""))
                    {
                        conexion.Open();
                        string cadena2 = $"UPDATE tbldocentes SET usucodigo = {usuCodigo.Text}, docapellido1 = '{docApellido1.Text}', docapellido2 = '{docApellido2.Text}', docnombre1 = '{docNombre1.Text}', docnombre2 = '{docNombre2.Text}', docingreso = '{docIngreso.Text}', dotelefono = '{doTelefono.Text}', archivo = '{nombreArchivo}' WHERE doccodigo = {docCodigo.Text};";
                        SqlCommand comando2 = new SqlCommand(cadena2, conexion);
                        comando2.ExecuteReader();
                        conexion.Close();
                        Session["guardadoDoc"] = "actualizado";
                        Response.Redirect("Acdocentes.aspx");
                    }
                    else
                    {
                        //borrar archivo anerior del directorio
                        //Dado el caso, verifico que exista el archivo..
                        if (System.IO.File.Exists(Server.MapPath(".") + "/archivos/" + varArchivo))
                        {
                            System.IO.File.Delete(Server.MapPath(".") + "/archivos/" + varArchivo);
                        }
                        conexion.Open();
                        string cadena2 = $"UPDATE tbldocentes SET usucodigo = {usuCodigo.Text}, docapellido1 = '{docApellido1.Text}', docapellido2 = '{docApellido2.Text}', docnombre1 = '{docNombre1.Text}', docnombre2 = '{docNombre2.Text}', docingreso = '{docIngreso.Text}', dotelefono = '{doTelefono.Text}', archivo = '{nombreArchivo}' WHERE doccodigo = {docCodigo.Text};";
                        SqlCommand comando2 = new SqlCommand(cadena2, conexion);
                        comando2.ExecuteReader();
                        conexion.Close();
                        Session["guardadoDoc"] = "actualizado";
                        Response.Redirect("Acdocentes.aspx");
                    }
                }
            }
            else if (!docImagen.FileName.Equals("") && !docArchivo.FileName.Equals(""))
            {
                label9.Text = "";
                label10.Text = "";
                label11.Text = "";
                imagenVar = docImagen.FileName;
                archivoVar = docArchivo.FileName;
                label9.Text = subirImagen(imagenVar, docImagen);
                condicion2 = true;
                label10.Text = subirArchivo(archivoVar, docArchivo);
                if (label9.Text.Equals(nombreImagen) && label10.Text.Equals(nombreArchivo))
                {
                    string varArchivo = "";
                    string varImagen = "";
                    conexion.Open();
                    string cadena = $"select imagen, archivo from tbldocentes WHERE doccodigo = {docCodigo.Text};";
                    SqlCommand comando = new SqlCommand(cadena, conexion);
                    SqlDataReader registros = comando.ExecuteReader();
                    while (registros.Read())
                    {
                        if (!registros["archivo"].ToString().Equals(""))
                        {
                            varArchivo = (registros["archivo"].ToString());
                        }
                        if (!registros["imagen"].ToString().Equals(""))
                        {
                            varImagen = (registros["imagen"].ToString());
                        }
                    }
                    conexion.Close();
                    if (varImagen.Equals("") && varArchivo.Equals(""))
                    {
                        conexion.Open();
                        string cadena2 = $"UPDATE tbldocentes SET usucodigo = {usuCodigo.Text}, docapellido1 = '{docApellido1.Text}', docapellido2 = '{docApellido2.Text}', docnombre1 = '{docNombre1.Text}', docnombre2 = '{docNombre2.Text}', docingreso = '{docIngreso.Text}', dotelefono = '{doTelefono.Text}', imagen = '{nombreImagen}', archivo = '{nombreArchivo}' WHERE doccodigo = {docCodigo.Text};";
                        SqlCommand comando2 = new SqlCommand(cadena2, conexion);
                        comando2.ExecuteReader();
                        conexion.Close();
                        Session["guardadoDoc"] = "actualizado";
                        Response.Redirect("Acdocentes.aspx");
                    }
                    else if (!varImagen.Equals("") && varArchivo.Equals(""))
                    {
                        if (System.IO.File.Exists(Server.MapPath(".") + "/imagenes/" + varImagen))
                        {
                            System.IO.File.Delete(Server.MapPath(".") + "/imagenes/" + varImagen);
                        }
                        conexion.Open();
                        string cadena2 = $"UPDATE tbldocentes SET usucodigo = {usuCodigo.Text}, docapellido1 = '{docApellido1.Text}', docapellido2 = '{docApellido2.Text}', docnombre1 = '{docNombre1.Text}', docnombre2 = '{docNombre2.Text}', docingreso = '{docIngreso.Text}', dotelefono = '{doTelefono.Text}', imagen = '{nombreImagen}', archivo = '{nombreArchivo}' WHERE doccodigo = {docCodigo.Text};";
                        SqlCommand comando2 = new SqlCommand(cadena2, conexion);
                        comando2.ExecuteReader();
                        conexion.Close();
                        Session["guardadoDoc"] = "actualizado";
                        Response.Redirect("Acdocentes.aspx");
                    }
                    else if (varImagen.Equals("") && !varArchivo.Equals(""))
                    {
                        if (System.IO.File.Exists(Server.MapPath(".") + "/archivos/" + varArchivo))
                        {
                            System.IO.File.Delete(Server.MapPath(".") + "/archivos/" + varArchivo);
                        }
                        conexion.Open();
                        string cadena2 = $"UPDATE tbldocentes SET usucodigo = {usuCodigo.Text}, docapellido1 = '{docApellido1.Text}', docapellido2 = '{docApellido2.Text}', docnombre1 = '{docNombre1.Text}', docnombre2 = '{docNombre2.Text}', docingreso = '{docIngreso.Text}', dotelefono = '{doTelefono.Text}', imagen = '{nombreImagen}', archivo = '{nombreArchivo}' WHERE doccodigo = {docCodigo.Text};";
                        SqlCommand comando2 = new SqlCommand(cadena2, conexion);
                        comando2.ExecuteReader();
                        conexion.Close();
                        Session["guardadoDoc"] = "actualizado";
                        Response.Redirect("Acdocentes.aspx");
                    }
                    else if(!varImagen.Equals("") && !varArchivo.Equals(""))
                    {
                        if (System.IO.File.Exists(Server.MapPath(".") + "/imagenes/" + varImagen))
                        {
                            System.IO.File.Delete(Server.MapPath(".") + "/imagenes/" + varImagen);
                        }

                        if (System.IO.File.Exists(Server.MapPath(".") + "/archivos/" + varArchivo))
                        {
                            System.IO.File.Delete(Server.MapPath(".") + "/archivos/" + varArchivo);
                        }
                        conexion.Open();
                        string cadena2 = $"UPDATE tbldocentes SET usucodigo = {usuCodigo.Text}, docapellido1 = '{docApellido1.Text}', docapellido2 = '{docApellido2.Text}', docnombre1 = '{docNombre1.Text}', docnombre2 = '{docNombre2.Text}', docingreso = '{docIngreso.Text}', dotelefono = '{doTelefono.Text}', imagen = '{nombreImagen}', archivo = '{nombreArchivo}' WHERE doccodigo = {docCodigo.Text};";
                        SqlCommand comando2 = new SqlCommand(cadena2, conexion);
                        comando2.ExecuteReader();
                        conexion.Close();
                        Session["guardadoDoc"] = "actualizado";
                        Response.Redirect("Acdocentes.aspx");
                    }
                }
                if (label9.Text.Equals(nombreImagen) && !label10.Text.Equals(nombreArchivo))
                {
                    label9.Text = "";
                    if (System.IO.File.Exists(Server.MapPath(".") + "/imagenes/" + nombreImagen))
                    {
                        System.IO.File.Delete(Server.MapPath(".") + "/imagenes/" + nombreImagen);
                    }
                }
                if (!label9.Text.Equals(nombreImagen) && label10.Text.Equals(nombreArchivo))
                {
                    label10.Text = "";
                    if (System.IO.File.Exists(Server.MapPath(".") + "/archivos/" + nombreArchivo))
                    {
                        System.IO.File.Delete(Server.MapPath(".") + "/archivos/" + nombreArchivo);
                    }
                }
            }
        }

        //Eliminar foto del registro
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Label docCodigo = FormView1.FindControl("doccodigoLabel1") as Label;
            Label label9 = FormView1.FindControl("Label9") as Label;
            String nombreImagen2 = "";
            conexion.Open();
            string cadena = $"select imagen, archivo from tbldocentes WHERE doccodigo = {docCodigo.Text}";
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
                string cadena2 = $"UPDATE tbldocentes SET imagen = null WHERE doccodigo = {docCodigo.Text};";
                SqlCommand comando2 = new SqlCommand(cadena2, conexion);
                comando2.ExecuteReader();
                conexion.Close();
                Session["guardadoDoc"] = "actualizadoImgBorrado";
                Response.Redirect("Acdocentes.aspx");
            }
            else
            {
                label9.Text = "No existe ninguna foto insertada en este registro";
            }
        }

        //Eliminar archivo del registro
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Label docCodigo = FormView1.FindControl("doccodigoLabel1") as Label;
            Label label9 = FormView1.FindControl("Label9") as Label;
            String nombreArchivo2 = "";
            conexion.Open();
            string cadena = $"select imagen, archivo from tbldocentes WHERE doccodigo = {docCodigo.Text}";
            SqlCommand comando = new SqlCommand(cadena, conexion);
            SqlDataReader registros = comando.ExecuteReader();
            while (registros.Read())
            {
                if (!registros["archivo"].ToString().Equals(""))
                {
                    nombreArchivo2 = (registros["archivo"].ToString());
                }
            }
            conexion.Close();
            if (!nombreArchivo2.Equals(""))
            {
                if (System.IO.File.Exists(Server.MapPath(".") + "/archivos/" + nombreArchivo2))
                {
                    System.IO.File.Delete(Server.MapPath(".") + "/archivos/" + nombreArchivo2);
                }
                conexion.Open();
                string cadena2 = $"UPDATE tbldocentes SET archivo = null WHERE doccodigo = {docCodigo.Text};";
                SqlCommand comando2 = new SqlCommand(cadena2, conexion);
                comando2.ExecuteReader();
                conexion.Close();
                Session["guardadoDoc"] = "actualizadoArcBorrado";
                Response.Redirect("Acdocentes.aspx");
            }
            else
            {
                label9.Text = "No existe ningun archivo insertado en este registro";
            }
        }
    }
}