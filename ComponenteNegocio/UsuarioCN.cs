using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ComponenteEntidad;
using ComponenteDatos;

namespace ComponenteNegocio
{
    public class UsuarioCN
    {
        UsuarioDA udao = new UsuarioDA();

        public string InsertarUsuario(Usuario1 u)
        {
            return udao.InsertarUsuario(u);
        }

        public string ActualizarU(Usuario1 u)
        {
            return udao.ActualizarU(u);
        }

        public string EliminarU(Usuario1 u)
        {
            return udao.EliminarU(u);
        }

        public List<Usuario1> ListarTodos()
        {
            return udao.ListarTodos();
        }

    }
}
