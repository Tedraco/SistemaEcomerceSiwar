using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace BDConexion
{
    public class Usuario
    {
        //cadena de conexion para acceder a SQL server
        private static string cadena = @"Data Source=JULIOWHP;Initial Catalog=BDVENTAS_5;Integrated Security=True";
        private static SqlConnection conexion = new SqlConnection(cadena);

        public string CodUsuario
        { get; set; }
        public string Contrasena
        { get; set; }

        public bool login()
        {
            try
            {
                string consulta = "select count(*) from TUsuario where CodUsuario='" + CodUsuario + "' and Contrasena = '" + Contrasena + "'";
                SqlCommand comando = new SqlCommand(consulta, conexion);
                conexion.Open();
                int i = Convert.ToInt32(comando.ExecuteScalar());
                conexion.Close();
                if (i == 1) return true;
                else return false;
            }
            catch (SqlException ex)
            {
                return false;
            }
            catch (Exception e)
            {
                return false;
            }
            finally
            {
                conexion.Close();
            }
        }
    }
}



