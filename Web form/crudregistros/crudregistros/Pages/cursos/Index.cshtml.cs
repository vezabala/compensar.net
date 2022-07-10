using crudregistros.datos;
using crudregistros.modelos;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;

namespace crudregistros.Pages.cursos
{
    public class IndexModel : PageModel
    {
        private readonly ApplicationDbContext _contexto;
        [TempData]
        public string mensaje { get; set; }

        public IndexModel(ApplicationDbContext contexto)
        {
            _contexto = contexto;
        }
        public IEnumerable<curso> cursos { set; get; }
        public async Task OnGet()
        {
            cursos = await _contexto.curso.ToListAsync();
        }

        public async Task<IActionResult> OnPostBorrar(int id)
        {
            var Cursobd = await _contexto.curso.FindAsync(id);

            _contexto.curso.Remove(Cursobd);
            await _contexto.SaveChangesAsync();
            mensaje = "Registro se ha eliminado correctamente";
            return RedirectToPage("Index");
        }
    }
}
