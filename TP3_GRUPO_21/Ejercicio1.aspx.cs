using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3_GRUPO_21
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void btnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }
        protected void btnGuardarUsuario_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblBienvenido.Text = "Bienvenido " + txtUsuario.Text;
            }
        }
        protected void cvLocalidad_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string nuevaLoc = args.Value.Trim().ToLower();
            bool duplicado = false;

            foreach (ListItem item in ddlLocalidades.Items)
            {
                if (item.Text.Trim().ToLower() == nuevaLoc)
                {
                    duplicado = true;
                    break;
                }
            }
            args.IsValid = !duplicado;
        }

        protected void btnGuardarLoc_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                ddlLocalidades.Items.Add(new ListItem(txtLocalidad.Text.Trim()));
            }
        }

       
    }
}