using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using Proyecto.datos;
using Proyecto.modelos;

namespace Proyecto.Pages
{
    public class IndexModel : PageModel
    {
        private readonly ApplicationDbContext _contexto;

        public IndexModel(ApplicationDbContext contexto)
        {
            _contexto = contexto;
        }
        public IEnumerable<producto> productos { set; get; }
        public async Task OnGet()
        {
            productos = await _contexto.producto.ToListAsync();
        }
    }
}