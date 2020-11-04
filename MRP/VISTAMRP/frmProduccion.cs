using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CONTROLADORMRP;

namespace VISTAMRP
{
    public partial class frmProduccion : Form
    {
        clsValidaciones va = new clsValidaciones();
        public frmProduccion()
        {
            InitializeComponent();
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void eventNombre(object sender, KeyPressEventArgs e)
        {
            va.CamposNumerosYLetras(e);
        }

        private void eventDescrip(object sender, KeyPressEventArgs e)
        {

        }

        private void eventPrecio(object sender, KeyPressEventArgs e)
        {

        }

        private void eventPrima(object sender, KeyPressEventArgs e)
        {
            va.CamposNumerosYLetras(e);
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
