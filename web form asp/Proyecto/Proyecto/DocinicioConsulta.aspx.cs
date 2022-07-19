using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class DocinicioConsulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session.Count == 0)
            {
                Response.Redirect("Acdocentes.aspx");
            }
            else
            {
                if (TextBox4.Text.Equals("")) { 
                    TextBox4.Text = this.Session["codigoDocente"].ToString();
                }
                else
                {
                    this.Session["codigoDocente"]  = TextBox4.Text;
                }
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("DocinicioConsulta.aspx");
        }
    }
}