using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class Accursos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["guardadoCur"] != null)
            {
                if (Session["guardadoCur"].ToString().Equals("guardado"))
                {
                    Label7.Text = "Se a guardado con exito el curso";
                    Label7.Visible = true;
                    Button4.Visible = true;
                    Session["guardadoCur"] = "";
                }
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label7.Visible = false;
            Button4.Visible = false;
        }
    }
}