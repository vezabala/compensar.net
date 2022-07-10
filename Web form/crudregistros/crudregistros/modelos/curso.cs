using System.ComponentModel.DataAnnotations;

namespace crudregistros.modelos
{
    public class curso
    {
        [Key]
        public int id { get; set; }
        [Required]

        [Display(Name = "Nombre del curso")]
        public string nombreCurso { get; set; }

        [Display(Name = "Cantidad de clases")]
        public int cantidadDeClases { get; set; }

        public int precio { get; set; }

        [Display(Name = "fecha de Inicio")]

        public DateTime fechaInicio { get; set; }
    }
}
