using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using ComponenteNegocio;
using ComponenteDatos;

using System.Data;
using System.Data.SqlClient;

namespace CarritoCompras
{
    public partial class Contact : Page
    {
        DataTable dtb;
        DataTable carrito = new DataTable();
        string html = "";

        public void CargarDetalle()
        {
            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
      
        }
        private void limpiar()           
        {
            txtCodgio.Text = "";
            txtDescripcion.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ComponenteNegocio.CategoriasCN catcn = new ComponenteNegocio.CategoriasCN();
            ComponenteEntidad.Categorias categ = new ComponenteEntidad.Categorias();

            categ.Codcategoria = txtCodgio.Text;
            categ.Descategoria = txtDescripcion.Text;
            catcn.InsertarCategorias(categ);
            limpiar();

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Categoria.aspx");

        }


    }
}