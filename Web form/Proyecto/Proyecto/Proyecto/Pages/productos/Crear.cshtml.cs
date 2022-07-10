using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.VisualBasic;
using Proyecto.datos;
using Proyecto.modelos;
using System.Text.RegularExpressions;

namespace Proyecto.Pages.productos
{
    public class CrearModel : PageModel
    {
        private readonly ApplicationDbContext _contexto;

        [BindProperty]
        public SubirArchivoModel subirArchivo { get; set; }

        [TempData]
        public string mensaje { get; set; }
        public CrearModel(ApplicationDbContext contexto)
        {
            _contexto = contexto;
        }

        [BindProperty]
        public producto productos { get; set; }
        public void OnGet()
        {
        }

        public async Task<IActionResult> OnPost()
        {
           if (!ModelState.IsValid)
            {
                return Page();
            }
           
           //validar extension png
            string getArchivo = subirArchivo.imagen.FileName;
            string pngValidacion = Strings.Right(getArchivo, 3);
            if (!pngValidacion.Equals("png"))
            {
                mensaje = "Error la extension de la imagen debe ser .png";
                return Page();
            }

            string nombreArchivo = "2.png";
            string directorio = Directory.GetCurrentDirectory() + "\\wwwroot\\img";
            string validacionDirectorio = directorio + "\\" + nombreArchivo;
            //Condicion para guardar imagen en directorio y nombre en la base de datos
            //Chequeo que la extensión sea efectivamente .png
            if (System.IO.Path.GetExtension(validacionDirectorio).ToLower() == ".png")
            {
                bool condicion = true;
                while (condicion == true){
                    //Dado el caso, verifico que exista el archivo..
                    if (System.IO.File.Exists(validacionDirectorio))
                    {
                        
                        string variableNombrePng = nombreArchivo[..^4];
                        int numero = int.Parse(variableNombrePng) +1;
                        nombreArchivo = numero + ".png";
                        validacionDirectorio = directorio + "\\" + nombreArchivo;

                    }
                    else
                    {
                        string path = Path.Combine(directorio, nombreArchivo);
                        using var stream = new FileStream(path, FileMode.Create);
                        await subirArchivo.imagen.CopyToAsync(stream);
                        productos.imagen = nombreArchivo;
                        condicion = false;
                    }
                }
            }

            _contexto.Add(productos);
            await _contexto.SaveChangesAsync();
            mensaje = "Registro se ha guardado correctamente";
            return RedirectToPage("Index");
        }
    }
    public class SubirArchivoModel
    {
        public IFormFile imagen { get; set; }
    }
}
