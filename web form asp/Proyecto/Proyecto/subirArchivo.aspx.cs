using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class subirArchivo : System.Web.UI.Page
    {
        public String ext;
        public double tamanioMb;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ext = System.IO.Path.GetExtension(FileUpload1.FileName);
            String nombreArchivo = FileUpload1.FileName;
            int contador = 0;
            bool condicion = true;
            if(ext.Equals(".bmp") || ext.Equals(".gif") || ext.Equals(".tif") || ext.Equals(".png") || ext.Equals(".pdf"))
            {                
                while (condicion == true)
                {
                    if (System.IO.File.Exists(Server.MapPath(".") + "/imagenes/" + nombreArchivo) || System.IO.File.Exists(Server.MapPath(".") + "/archivos/" + nombreArchivo))
                    {
                        string variableNombreSinExt = System.IO.Path.GetFileNameWithoutExtension(FileUpload1.FileName);
                        contador++;
                        nombreArchivo = $"{variableNombreSinExt}-{contador}{ext}";
                    }
                    else
                    {
                        condicion = false;
                    }
                }
                if (FileUpload1.PostedFile.ContentLength > 200000)
                {
                    tamanioMb = ((double)FileUpload1.PostedFile.ContentLength / (double)1000) / 1000;
                    Label7.Text = $"{tamanioMb.ToString()} MB";
                    Label5.Text = "Se supero el peso de subida para la imagen, el peso debe ser menor de 0.2mb (200kb)";
                    Label9.Text = "";
                    Label11.Text = "";
                    Label12.Text = "";
                    Image1.ImageUrl = "";
                    HyperLink1.Text = "";
                    HyperLink1.NavigateUrl = "";
                }
                else if (ext.Equals(".bmp") || ext.Equals(".gif") || ext.Equals(".tif") || ext.Equals(".png"))
                {
                    tamanioMb = ((double)FileUpload1.PostedFile.ContentLength / (double)1000) / 1000;
                    FileUpload1.SaveAs(Server.MapPath(".") + "/imagenes/" + nombreArchivo);//guarda el archivo contenido en FileUpload1
                    Label7.Text = $"{tamanioMb.ToString()} MB";
                    Label9.Text = nombreArchivo;
                    Label5.Text = "La imagen se a subido correctamente";
                    Label11.Text = ext;
                    Label12.Text = "Imagen subida:";
                    Image1.ImageUrl = $"~/imagenes/{nombreArchivo}";
                }
                else if (ext.Equals(".pdf"))
                {  
                    tamanioMb = ((double)FileUpload1.PostedFile.ContentLength / (double)1000) / 1000;
                    FileUpload1.SaveAs(Server.MapPath(".") + "/archivos/" + nombreArchivo);//guarda el archivo contenido en FileUpload1
                    Label7.Text = $"{tamanioMb.ToString()} MB";
                    Label9.Text = nombreArchivo;
                    Label5.Text = "El archivo se a subido correctamente";
                    Label11.Text = ext;
                    Label12.Text = "Archivo subido:";
                    HyperLink1.Text = "Abrir archivo";
                    HyperLink1.NavigateUrl = $"~/archivos/{nombreArchivo}";
                    Image1.ImageUrl = "";
                    
                }
                
            }
            else
            {
                Label11.Text = ext;
                Label5.Text = "La extencion del archivo no es Valida, debe ser de imagen o archivo pdf";
                Label7.Text = "";
                Label9.Text = "";
                Label11.Text = "";
                Label12.Text = "";
                Image1.ImageUrl = "";
                HyperLink1.Text = "";
                HyperLink1.NavigateUrl = "";
            }
        }
    }
}