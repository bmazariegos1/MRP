using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MODELOMRP
{
    public class clsModeloOrdenCompra
    {
        clsConexion cn = new clsConexion();
        OdbcCommand Comm;
        public OdbcDataReader funcConsulta(string Consulta)
        {
            try
            {

                Comm = new OdbcCommand(Consulta, cn.conexion());
                OdbcDataReader reader = Comm.ExecuteReader();
                return reader;
            }
            catch (Exception Error)
            {
                Console.WriteLine("Error en modelo " + Error);
                return null;
            }

        }
    }
}
