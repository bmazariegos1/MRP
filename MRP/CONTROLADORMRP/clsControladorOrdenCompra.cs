using MODELOMRP;
using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CONTROLADORMRP
{
    public class clsControladorOrdenCompra
    {
        clsModeloOrdenCompra Modelo = new clsModeloOrdenCompra();
        public OdbcDataReader funcConsulta()
        {
            string Consulta = "SELECT pk_id_producto, nombre_producto, descripcion_producto FROM producto where estado_producto = 1;";
            return Modelo.funcConsulta(Consulta);
        }
    }
}
