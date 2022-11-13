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
    public partial class R3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LlenarGrid();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Resultados.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Persona.R3 = DropDownList1.SelectedValue;
            salvar();
            Label1.Text = "Nombre: " + Persona.Nombre + " Cedula: " + Persona.Cedula + " Genero: " + Persona.Genero + " Respuesta 1: " + Persona.R1 + " Respuesta 2: " + Persona.R2 + " Respuesta 3: " + Persona.R3;

        }

        

protected void LlenarGrid()
{
    string constr = ConfigurationManager.ConnectionStrings["ExamenesConnectionString"].ConnectionString;
    using (SqlConnection con = new SqlConnection(constr))
    {
        using (SqlCommand cmd = new SqlCommand("select Respuestas.id, Persona.nombre,Respuestas.cedulaR,Respuestas.r1,Respuestas.r2,Respuestas.r3 from Respuestas inner join Persona on Respuestas.cedulaR=Persona.cedulaP"))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
    }
}


protected void salvar()
{

    String s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenesConnectionString"].ConnectionString;
    SqlConnection conexion = new SqlConnection(s);
    conexion.Open();
    SqlCommand comando = new SqlCommand(" INSERT INTO Persona (cedulaP,nombre,genero) VALUES('" + Persona.Cedula + "', '" + Persona.Nombre + "', '" +Persona.Genero + "')", conexion);
    comando.ExecuteNonQuery();
    conexion.Close();


    conexion.Open();
    comando = new SqlCommand("INSERT INTO Respuestas VALUES('" + Persona.Cedula + "', '" + Persona.R1 + "','" + Persona.R2 +"', '" + Persona.R3 + "')", conexion);
    comando.ExecuteNonQuery();
    conexion.Close();


    LlenarGrid();
}


        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("R2.aspx");
        }
    }
}