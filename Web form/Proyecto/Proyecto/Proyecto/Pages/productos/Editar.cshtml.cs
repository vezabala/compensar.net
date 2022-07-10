using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.VisualBasic;
using Proyecto.datos;
using Proyecto.modelos;

namespace Proyecto.Pages.productos
{
    public class EditarModel : PageModel
    {
        private readonly ApplicationDbContext _contexto;

        [BindProperty]
        public SubirArchivoModelEditar subirArchivoEditar { get; set; }

        [TempData]
        public string mensaje { get; set; }

        public EditarModel(ApplicationDbContext contexto)
        {
            _contexto = contexto;
        }

        [BindProperty]
        public producto productos { get; set; }
        public async Task OnGet(int id)
        {
            productos = await _contexto.producto.FindAsync(id);
        }

        public async Task<IActionResult> OnPost()
        {
            if(subirArchivoEditar.imagen != null)
            {
                //validar extension png
                string getArchivo = subirArchivoEditar.imagen.FileName;
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
                    while (condicion == true)
                    {
                        //Dado el caso, verifico que exista el archivo..
                        if (System.IO.File.Exists(validacionDirectorio))
                        {

                            string variableNombrePng = nombreArchivo[..^4];
                            int numero = int.Parse(variableNombrePng) + 1;
                            nombreArchivo = numero + ".png";
                            validacionDirectorio = directorio + "\\" + nombreArchivo;

                        }
                        else
                        {
                            string path = Path.Combine(directorio, nombreArchivo);
                            using var stream = new FileStream(path, FileMode.Create);
                            await subirArchivoEditar.imagen.CopyToAsync(stream);
                            //eliminar anterior imagen
                            System.IO.File.Delete(directorio + "\\" + productos.imagen);
                            //colocar la nueva referencia de la imagen en la base de datos
                            productos.imagen = nombreArchivo;  
                            condicion = false;
                        }
                    }
                }
            }

            if (ModelState.IsValid)
            {

                var productoBd = await _contexto.producto.FindAsync(productos.id);
                productoBd.nombreComercialMedicamento = productos.nombreComercialMedicamento;
                productoBd.presentacion = productos.presentacion;
                productoBd.precio = productos.precio;
                productoBd.fechaVencimiento = productos.fechaVencimiento;
                productoBd.imagen = productos.imagen;

                await _contexto.SaveChangesAsync();
                mensaje = "Registro se ha actualizado correctamente";
                return RedirectToPage("Index");
            }
            return RedirectToPage();
        }
    }

    public class SubirArchivoModelEditar
    {
        public IFormFile? imagen { get; set; }
    }
}
