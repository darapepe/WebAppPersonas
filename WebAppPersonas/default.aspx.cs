using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
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

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            PersonsDetails persons = new PersonsDetails();
            persons.IdentidadPerson = TextBoxIdentidad.Text;
            persons.NombrePerson = TextBoxNombres.Text;
            persons.ApellidoPerson = TextBoxApellidos.Text;
            persons.NacimientoPerson = DateTime.Parse(TextBoxFecha.Text);
            string result = objServiceClient.InsertPersondetails(persons);
            LabelMessage.Visible = true;
            LabelMessage.Text = result;
        }
    }
}