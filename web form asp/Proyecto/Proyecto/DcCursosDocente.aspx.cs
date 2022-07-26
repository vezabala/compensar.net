using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class DcCursosDocente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session.Count == 0)
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            String codigo = GridView1.SelectedRow.Cells[0].Text;
            Session["verEstudianteCurso"] = codigo;
            Session["verEstudianteCursoNombre"] = GridView1.SelectedRow.Cells[1].Text;
            Response.Redirect("DcCursosDocentesEstudiantes.aspx");
        }
    }
}