using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BDConexion;

namespace CarritoCompras
{
    public partial class inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
           
            Usuario usuario = new Usuario();
            // leer datos del Login
            string codUsuario = Login1.UserName;
            string contrasena = Login1.Password;
            usuario.CodUsuario = codUsuario;
            usuario.Contrasena = contrasena;
            if (usuario.login() == true)
                //damos acceso al sitio web
                FormsAuthentication.RedirectFromLoginPage(codUsuario, false);
            else
                Login1.FailureText = "Usuario y/o contraseña incorretas";

            

        }
    }
}