using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class DcCursosDocentesEstudiantes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["verEstudianteCurso"] != null && Session["verEstudianteCursoNombre"] != null)
            {
                if (!Session["verEstudianteCurso"].Equals("") && !Session["verEstudianteCursoNombre"].Equals(""))
                {
                    Label5.Text = $"Curso {Session["verEstudianteCursoNombre"]}";
                    Session["verEstudianteCursoNombre"] = "";
                }
                else
                {
                    Response.Redirect("DcCursosDocente.aspx");
                }
            }
            else
            {
                Response.Redirect("DcCursosDocente.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}