using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaDeInteligencia
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Persona.Cedula = TCedula.Text;
            Persona.Nombre = TNombre.Text;

            if (RBMasculino.Checked)
                Persona.Genero = "M";
            else 
                Persona.Genero = "F";

            Response.Redirect("R1.aspx");
        }

        protected void TCedula_TextChanged(object sender, EventArgs e)
        {

        }
    }
}