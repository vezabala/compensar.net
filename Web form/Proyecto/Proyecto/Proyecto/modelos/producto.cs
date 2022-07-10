using System.ComponentModel.DataAnnotations;
using static System.Net.Mime.MediaTypeNames;

namespace Proyecto.modelos
{
    public class producto
    {
        [Key]
        public int id { get; set; }
        [Required]
        [Display(Name = "Nombre comercial del medicamento")]
        public string nombreComercialMedicamento { get; set; }

        [Display(Name = "Presentacion")]
        public string presentacion { get; set; }

        [Display(Name = "Precio")]
        public int precio { get; set; }

        [Display(Name = "Fecha de Vencimiento")]
        public DateTime fechaVencimiento { get; set; }

        [Display(Name = "Imagen (Solo se acepta extencion .png)")]
        public string imagen { get; set; }
    }
}
