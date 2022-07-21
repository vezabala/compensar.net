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
            if(ext.Equals(".bmp") || ext.Equals(".gif") || ext.Equals(".tif") || ext.Equals(".png") || ext.Equals(".pdf"))
            {
                if (System.IO.File.Exists(Server.MapPath(".") + "/imagenes/" + FileUpload1.FileName) || System.IO.File.Exists(Server.MapPath(".") + "/archivos/" + FileUpload1.FileName))
                {
                    Label5.Text = "Existe un archivo con dicho nombre en el servidor";

                }
                else
                {
                    if (ext.Equals(".bmp") || ext.Equals(".gif") || ext.Equals(".tif") || ext.Equals(".png"))
                    {
                        if (FileUpload1.PostedFile.ContentLength < 200000)
                        {
                            tamanioMb = ((double)FileUpload1.PostedFile.ContentLength / (double)1000) / 1000;
                            FileUpload1.SaveAs(Server.MapPath(".") + "/imagenes/" + FileUpload1.FileName);//guarda el archivo contenido en FileUpload1
                            Label7.Text = $"{tamanioMb.ToString()} MB";
                            Label9.Text = FileUpload1.FileName;
                            Label5.Text = "El archivo se a subido correctamente";
                            Label11.Text = ext;
                            Label12.Text = "Imagen subida:";
                            Image1.ImageUrl = $"~/imagenes/{FileUpload1.FileName}";
                        }
                        else
                        {
                            tamanioMb = ((double)FileUpload1.PostedFile.ContentLength / (double)1000) / 1000;
                            Label7.Text = $"{tamanioMb.ToString()} MB";
                            Label5.Text = "Se supero el peso de subida para la imagen, el peso debe ser menor de 0.2mb (200kb)";
                        }
                    }
                    if (ext.Equals(".pdf"))
                    {
                        if (FileUpload1.PostedFile.ContentLength < 200000)
                        {
                            tamanioMb = ((double)FileUpload1.PostedFile.ContentLength / (double)1000) / 1000;
                            FileUpload1.SaveAs(Server.MapPath(".") + "/archivos/" + FileUpload1.FileName);//guarda el archivo contenido en FileUpload1
                            Label7.Text = $"{tamanioMb.ToString()} MB";
                            Label9.Text = FileUpload1.FileName;
                            Label5.Text = "El archivo se a subido correctamente";
                            Label11.Text = ext;
                            Label12.Text = "Archivo subido:";
                            HyperLink1.Text = "Abrir archivo";
                            HyperLink1.NavigateUrl = $"~/archivos/{FileUpload1.FileName}";
                        }
                        else
                        {
                            tamanioMb = ((double)FileUpload1.PostedFile.ContentLength / (double)1000) / 1000;
                            Label7.Text = $"{tamanioMb.ToString()} MB";
                            Label5.Text = "Se supero el peso de subida para el archivo, el peso debe ser menor de 0.2mb (200kb)";
                        }
                    }
                }
            }
            else
            {
                Label11.Text = ext;
                Label5.Text = "La extencion de la imagen no es Valida, debe ser de imagen o archivo pdf";
            }
        }
    }
}