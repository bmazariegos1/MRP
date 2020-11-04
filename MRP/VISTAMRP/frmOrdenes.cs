using CONTROLADORMRP;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace VISTAMRP
{
    public partial class frmOrdenes : Form
    {
        clsValidaciones va = new clsValidaciones();
        public frmOrdenes()
        {
            InitializeComponent();
        }

        private void eventFecha(object sender, KeyPressEventArgs e)
        {
            va.CamposNumerosYLetras(e);
        }

        private void frmOrdenes_Load(object sender, EventArgs e)
        {

        }

        private void eventCantidad(object sender, KeyPressEventArgs e)
        {
            va.CampoNumerico(e);

        }

        private void eventEstado(object sender, KeyPressEventArgs e)
        {
            va.CamposNumerosYLetras(e);
        }

        private void eventEncargado(object sender, KeyPressEventArgs e)
        {
            va.Combobox(e);
        }
    }
}
