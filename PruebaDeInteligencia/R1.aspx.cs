using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaDeInteligencia
{
    public partial class R1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DDLRespuestasP1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

        protected void BSiguiente_Click(object sender, EventArgs e)
        {
            Persona.R1 = DDLRespuestasP1.SelectedValue;
            Response.Redirect("R2.aspx");
        }
    }
}