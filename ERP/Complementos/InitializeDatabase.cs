using ERP.Complementos.ProcesoBehind;
using ERP.Models;
using ERP.Vistas.AdminSistema;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace ERP.Complementos
{
    public static class InitializeDatabase
    {
        private static Modelo bd = new Modelo();

        public static void IniciarBD()
        {
            SubirPerfil();
            SubirUsuario();
        }

        private static void SubirPerfil()
        {
            var coincidencia = bd.Perfil.FirstOrDefault(c => c.Nombre == "Super Admin");

            clsPerfil perfil = new clsPerfil()
            {
                Nombre = "Super Admin",
                Accesos = "1111"
            };

            try
            {
                if (coincidencia != null) { return; }

                bd.Perfil.Add(perfil);
                bd.SaveChanges();
            }
            catch
            {
                return ;
            }
        }

        private static void SubirUsuario()
        {
            int perfilID = bd.Perfil.Where(c => c.Nombre == "Super Admin").Select(c => c.ID).FirstOrDefault();
            var coincidencia = bd.Usuario.FirstOrDefault(c => c.perfil.Nombre == "Super Admin");

            clsUsuario UserSuperAdmin = new clsUsuario()
            {
                PerfilID = perfilID,
                Nombre = "Usuario Super Admin",
                Correo = "correoSuperAdmin@gmail.com",
                Contraseña = "2312-ACM"
            };

            try
            {
                if (coincidencia != null) { return; }

                bd.Usuario.Add(UserSuperAdmin);
                bd.SaveChanges();
            }
            catch
            {
                return; 
            }
        }

    }
}