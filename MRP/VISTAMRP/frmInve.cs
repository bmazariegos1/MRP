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
    public partial class frmInve : Form
    {
        clsValidaciones va = new clsValidaciones();
        public frmInve()
        {
            InitializeComponent();
        }

        private void cmbMateria_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void eventMateria(object sender, KeyPressEventArgs e)
        {
            va.Combobox(e);
        }

        private void txtFecha_TextChanged(object sender, EventArgs e)
        {
            
        }

        private void eventFecha(object sender, KeyPressEventArgs e)
        {
            va.CamposNumerosYLetras(e);
        }

        private void eventCantidad(object sender, KeyPressEventArgs e)
        {
            va.CamposNumerosYLetras(e);
        }

        private void eventTipo(object sender, KeyPressEventArgs e)
        {
            va.Combobox(e);
        }
    }
}
