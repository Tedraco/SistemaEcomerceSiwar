using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using BDConexion;
using ComponenteEntidad;
using System.Data;
using System.Data.SqlClient;


namespace ComponenteDatos
{
    public class UsuarioDA
    {
        private conexionBD conn = new conexionBD();
        private SqlCommand cmdusuario = new SqlCommand();

        public string InsertarUsuario(Usuario1 usuario)
        {
            string rpta = "";
            try
            {
                cmdusuario.CommandType = CommandType.StoredProcedure;
                cmdusuario.CommandText = "pa_Usuario_insertar";
                cmdusuario.Connection = conn.conectarBD();
                {
                    cmdusuario.Parameters.AddWithValue("@codusuario", usuario.Codusuario);
                    cmdusuario.Parameters.AddWithValue("@nombre", usuario.Nombre);
                    cmdusuario.Parameters.AddWithValue("@rol", usuario.Rol);
                    cmdusuario.Parameters.AddWithValue("@corre", usuario.Correo);
                    cmdusuario.Parameters.AddWithValue("@telefono", usuario.Telefono);
                    cmdusuario.Parameters.AddWithValue("@documentoid", usuario.Dni);
                    cmdusuario.Parameters.AddWithValue("@contrasena", usuario.Contrasena);
                }
                int registros;
                registros = cmdusuario.ExecuteNonQuery();
                if (registros == 1)
                {
                    rpta = "OK";
                }
                else
                {
                    rpta = "Error al Insertar";
                }
            }
            catch (Exception ex)
            {
                System.Console.Write(ex.Message);
            }
            return rpta;
        }

        public string ActualizarU(Usuario1 us)
        {
            string rpta = "";
            try
            {
                cmdusuario.CommandType = CommandType.StoredProcedure;
                cmdusuario.CommandText = "pa_Usuario_actualizar";
                cmdusuario.Connection = conn.conectarBD();
                {
                    cmdusuario.Parameters.AddWithValue("@codusuario", us.Codusuario);
                    cmdusuario.Parameters.AddWithValue("@nombre", us.Nombre);
                    cmdusuario.Parameters.AddWithValue("@rol", us.Rol);
                    cmdusuario.Parameters.AddWithValue("@corre", us.Correo);
                    cmdusuario.Parameters.AddWithValue("@telefono", us.Telefono);
                    cmdusuario.Parameters.AddWithValue("@documentoid", us.Dni);
                    cmdusuario.Parameters.AddWithValue("@contrasena", us.Contrasena);
                }
                int registros;
                registros = cmdusuario.ExecuteNonQuery();
                if (registros == 1)
                {
                    rpta = "OK";
                }
                else
                {
                    rpta = "Error al Insertar";
                }
            }
            catch (Exception ex)
            {
                System.Console.Write(ex.Message);
            }
            return rpta;
        }

        public string EliminarU(Usuario1 prod)
        {
            string rpta = "";
            try
            {
                cmdusuario.CommandType = CommandType.StoredProcedure;
                cmdusuario.CommandText = "pa_Usuario_eliminar";
                cmdusuario.Connection = conn.conectarBD();
                {
                    cmdusuario.Parameters.AddWithValue("@codusuario", prod.Codusuario);
                }
                int registros;
                registros = cmdusuario.ExecuteNonQuery();
                if (registros == 1)
                {
                    rpta = "OK";
                }
                else
                {
                    rpta = "Error al Insertar";
                }
            }
            catch (Exception ex)
            {
                System.Console.Write(ex.Message);
            }
            return rpta;
        }
        public List<Usuario1> ListarTodos()
        {
            List<Usuario1> lista = new List<Usuario1>();
            Usuario1 p;
            SqlDataReader lector;
            try
            {
                cmdusuario.CommandType = CommandType.StoredProcedure;
                cmdusuario.CommandText = "pa_usuario_ListarTodos";
                cmdusuario.Connection = conn.conectarBD();

                lector = cmdusuario.ExecuteReader();

                while (lector.Read())
                {
                    p = new Usuario1();
                    p.Codusuario = (string)(lector[0]);
                    p.Nombre = (string)(lector[1]);
                    p.Rol = (string)(lector[2]);
                    p.Correo = (string)(lector[3]);
                    p.Telefono = (string)(lector[4]);
                    p.Dni = (string)(lector[5]);
                    p.Contrasena = (string)(lector[6]);
                    lista.Add(p);
                }
            }
            catch (Exception ex)
            {
                System.Console.Write(ex.Message);
            }
            return lista;
        }
    }
}
