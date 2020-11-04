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
    public partial class frmEmpleadoh : Form
    {
        clsValidaciones va = new clsValidaciones();
        public frmEmpleadoh()
        {
            InitializeComponent();
        }

        private void cmbEmpleado_KeyPress(object sender, KeyPressEventArgs e)
        {

        }

        private void eventEmpleado(object sender, KeyPressEventArgs e)
        {
            va.Combobox(e);
        }

        private void eventTiempo(object sender, EventArgs e)
        {
           
        }

        private void eventTiempo(object sender, KeyPressEventArgs e)
        {
            va.CamposNumerosYLetras(e);
        }

        private void eventOrden(object sender, KeyPressEventArgs e)
        {
            va.CamposNumerosYLetras(e);
        }

        private void navegador1_Load(object sender, EventArgs e)
        {

        }
    }
}
