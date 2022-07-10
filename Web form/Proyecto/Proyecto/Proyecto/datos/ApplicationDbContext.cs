using Microsoft.EntityFrameworkCore;
using Proyecto.modelos;

namespace Proyecto.datos
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)

        {

        }
        // colocar modelos de tablas 
        public DbSet<producto> producto { get; set; }
    }
}
