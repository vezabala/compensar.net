using crudregistros.modelos;
using Microsoft.EntityFrameworkCore;

namespace crudregistros.datos
{
    public class ApplicationDbContext:DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext>options):base(options)
        {
            
        }
        // colocar modelos de tablas
        public DbSet<curso> curso { get; set; }
    }
}
