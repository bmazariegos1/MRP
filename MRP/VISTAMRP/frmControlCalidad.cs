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
    public partial class frmControlCalidad : Form
    {
        clsValidaciones va = new clsValidaciones();
        
        public frmControlCalidad()
        {
            InitializeComponent();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void frmControlCalidad_Load(object sender, EventArgs e)
        {
            
        }

        private void cmbOrden_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        private void eventOrden(object sender, KeyPressEventArgs e)
        {
            va.Combobox(e);
           
        }

        private void eventInventario(object sender, KeyPressEventArgs e)
        {
            va.Combobox(e);
        }

        private void cmEmpleado_SelectedIndexChanged(object sender, EventArgs e)
        {
         
        }

        private void cmbResultado_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        private void eventEmpleado(object sender, KeyPressEventArgs e)
        {
            va.Combobox(e);
        }

        private void eventResultado(object sender, KeyPressEventArgs e)
        {
            va.Combobox(e);
        }
    }
}
