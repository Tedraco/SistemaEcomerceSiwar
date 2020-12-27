using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ComponenteEntidad
{
    public class Usuario1
    {
        private string _codusuario;
        private string _nombre;
        private string _rol;
        private string _correo;
        private string _telefono;
        private string _dni;
        private string _contrasena;

        public string Codusuario
        {
            get
            {
                return _codusuario;
            }

            set
            {
                _codusuario = value;
            }
        }

        public string Nombre
        {
            get
            {
                return _nombre;
            }

            set
            {
                _nombre = value;
            }
        }

        public string Rol
        {
            get
            {
                return _rol;
            }

            set
            {
                _rol = value;
            }
        }

        public string Correo
        {
            get
            {
                return _correo;
            }

            set
            {
                _correo = value;
            }
        }

        public string Telefono
        {
            get
            {
                return _telefono;
            }

            set
            {
                _telefono = value;
            }
        }

        public string Dni
        {
            get
            {
                return _dni;
            }

            set
            {
                _dni = value;
            }
        }
        public string Contrasena
        {
            get
            {
                return _contrasena;
            }

            set
            {
                _contrasena = value;
            }
        }

        public Usuario1()
        {
        }

        public Usuario1(string ccodigo)
        {
            _codusuario = ccodigo;
        }

        public Usuario1(string ccodproducto, string cdesproducto, string ccodcategoria, string cpreproducto, string ccanproducto, string cimagen, string ccontrasena)
        {
            _codusuario = ccodproducto;
            _nombre = cdesproducto;
            _rol = ccodcategoria;
            _correo = cpreproducto;
            _telefono = ccanproducto;
            _dni = cimagen;
            _contrasena = ccontrasena;
        }

    }

}
