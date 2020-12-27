using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

using ComponenteNegocio;
using ComponenteEntidad;

namespace CarritoCompras
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }   
        private void limpiar()
        {
            txtCodUsuario.Text = "";
            txtDescripcion.Text = "";
            txtrol.Text = "";
            txtcorreo.Text = "";
            txttelf.Text = "";
            txtdni.Text = "";
            txtpass.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            limpiar();
            txtCodUsuario.Enabled = true;
            txtDescripcion.Enabled = true;
            txtrol.Enabled = true;
            txtcorreo.Enabled = true;
            txttelf.Enabled = true;
            txtdni.Enabled = true;
            txtpass.Enabled = true;
        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            ComponenteNegocio.UsuarioCN ucn = new ComponenteNegocio.UsuarioCN();
            ComponenteEntidad.Usuario1 uce = new ComponenteEntidad.Usuario1();
            uce.Codusuario = txtCodUsuario.Text;
            uce.Nombre = txtDescripcion.Text;
            uce.Rol = txtrol.Text;
            uce.Correo = txtcorreo.Text;
            uce.Telefono = txttelf.Text;
            uce.Dni = txtdni.Text;
            uce.Contrasena = txtpass.Text;


            ucn.InsertarUsuario(uce);
            limpiar();

        }

    }
}