using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaDeInteligencia
{
    public partial class R2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BSiguiente_Click(object sender, EventArgs e)
        {

            Persona.R2 = DropDownList1.SelectedValue;
            Response.Redirect("R3.aspx");
        }

        protected void BRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("R1.aspx");
        }
    }
}