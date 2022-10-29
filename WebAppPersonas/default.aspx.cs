using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebAppPersonas.ServiceReference1;

namespace WebAppPersonas
{
    public partial class _default : System.Web.UI.Page
    {
        ServiceReference1.Service1Client objServiceClient = new ServiceReference1.Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Load_Data();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            bool verificarForm = Verified_Form();
            

            if (verificarForm)
            {
                try
                {
                    PersonsDetails persons = new PersonsDetails();
                    persons.IdentidadPerson = TextBoxIdentidad.Text;
                    persons.NombrePerson = TextBoxNombres.Text;
                    persons.ApellidoPerson = TextBoxApellidos.Text;
                    persons.NacimientoPerson = DateTime.Parse(TextBoxFecha.Text);
                    persons.TelefonoPerson = TextBoxTel.Text;
                    persons.DireccionPerson = TextBoxDir.Text;
                    persons.TipoDireccionPerson = Page.Request.Form["tipoAddress"].ToString();
                    persons.TipoTelefonoPerson = Page.Request.Form["tipo"].ToString();
                    persons.CorreoPerson = TextBoxCorreo.Text;
                    string result = objServiceClient.InsertPersondetails(persons);
                    LabelMessage.Visible = true;
                    LabelMessage.Text = result;
                    TextBoxIdentidad.Text = "";
                    TextBoxNombres.Text = "";
                    TextBoxApellidos.Text = "";
                    TextBoxFecha.Text = "";
                    TextBoxTel.Text = "";
                    TextBoxDir.Text = "";
                    TextBoxCorreo.Text = "";
                    Label1.Text = "";
                    Load_Data();
                }
                catch (Exception ex)
                {
                    Label1.Text = "Se presento el siguiente error: " + ex.Message;
                }
            }
        }

        private void Load_Data()
        {
            try
            {
                DataSet ds = new DataSet();
                ServiceReference1.Service1Client personas = new ServiceReference1.Service1Client();
                ds = personas.GetPersonRecords();
                grdPersonas.DataSource = ds;
                grdPersonas.DataBind();
            }
            catch (Exception ex)
            {
                TextBoxIdentidad.Enabled = false;
                TextBoxNombres.Enabled = false;
                TextBoxApellidos.Enabled = false;
                TextBoxFecha.Enabled = false;
                TextBoxTel.Enabled = false;
                TextBoxDir.Enabled = false;
                TextBoxCorreo.Enabled = false;
                //Button1.Enabled = false;                
                Label1.Text = "Se presento error en la comunicacion con el service: " + ex.Message;
            }            
        }

        public bool Verified_Form() {
            bool verificador = true;
            bool resultNom = Regex.IsMatch(TextBoxNombres.Text, @"^[a-zA-Z]+$");
            bool resultIdentidad = Regex.IsMatch(TextBoxIdentidad.Text, @"^[a-zA-Z_0-9]+$");
            if (!resultNom)
            {
                verificador = false;
                Label1.Text = "El campo Nombres no puede tener valores numericos" + "<br/>";
                TextBoxTel.Text = "";
            }
            if (!resultIdentidad)
            {
                verificador = false;
                Label1.Text = Label1.Text + "El campo Documento Identidad debe ser alfanumericos" + "<br/>";
                TextBoxTel.Text = "";
            }
            if (TextBoxDir.Text == "" && TextBoxCorreo.Text == "")
            {
                verificador = false;
                Label1.Text = Label1.Text + "Se debe ingresar al menos una direccion fisica o un correo electronico" + "<br/>";
                TextBoxTel.Text = "";
            }

            string[] telefonosList = TextBoxTel.Text.Split(',');
            string[] direccionesList = TextBoxDir.Text.Split(',');
            string[] correosList = TextBoxCorreo.Text.Split(',');

            if (correosList.Length > 2)
            {
                Label1.Text = Label1.Text + "Solo se almacenaran 2 correos electronicos" + "<br/>";
            }
            if (direccionesList.Length > 2)
            {
                Label1.Text = Label1.Text + "Solo se almacenaran 2 direcciones fisicas" + "<br/>";
            }
            if (telefonosList.Length > 2)
            {
                Label1.Text = Label1.Text + "Solo se almacenaran 2 numeros de telefonos" + "<br/>";
            }
            return verificador;
        }
    }
}