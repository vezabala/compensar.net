using crudregistros.datos;
using crudregistros.modelos;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace crudregistros.Pages.cursos
{
    public class CrearModel : PageModel
    {
        private readonly ApplicationDbContext _contexto;

        [TempData]
        public string mensaje { get; set; }
        public CrearModel(ApplicationDbContext contexto)
        {
            _contexto = contexto;
        }

        [BindProperty]
        public curso cursos { get; set; }
        public void OnGet()
        {
        }
        public async Task<IActionResult> OnPost()
        {
            if (!ModelState.IsValid)
            {
                return Page();
                
            }
            cursos.fechaInicio=DateTime.Now;
            _contexto.Add(cursos);
            await _contexto.SaveChangesAsync();
            mensaje = "Registro se ha guardado correctamente";
            return RedirectToPage("Index");
        }
    }
}
