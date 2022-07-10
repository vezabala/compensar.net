using crudregistros.datos;
using crudregistros.modelos;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace crudregistros.Pages.cursos
{
    public class EditarModel : PageModel
    {
        private readonly ApplicationDbContext _contexto;

        [TempData]
        public string mensaje { get; set; }

        public EditarModel(ApplicationDbContext contexto)
        {
            _contexto = contexto;
        }

        [BindProperty]
        public curso cursos { get; set; }
        public async Task OnGet(int id)
        {
            cursos = await _contexto.curso.FindAsync(id);
        }

        public async Task<IActionResult> OnPost()
        {   
            if(ModelState.IsValid)
            { 
                var CursoBd = await _contexto.curso.FindAsync(cursos.id);
                CursoBd.nombreCurso= cursos.nombreCurso;
                CursoBd.cantidadDeClases = cursos.cantidadDeClases;
                CursoBd.precio=cursos.precio;

                await _contexto.SaveChangesAsync();
                mensaje = "Registro se ha actualizado correctamente";
                return RedirectToPage("Index");
            }
            return RedirectToPage();
        }
    }
}
