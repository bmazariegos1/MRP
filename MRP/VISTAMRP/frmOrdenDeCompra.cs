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
    public partial class frmOrdenDeCompra : Form
    {
        clsValidaciones validaciones = new clsValidaciones();
        string UsuarioAplicacion;
        public frmOrdenDeCompra(string usuario)
        {
            InitializeComponent();
            UsuarioAplicacion = usuario;
            navegador1.Usuario = UsuarioAplicacion;
            //Toolstips
            ttAyuda.SetToolTip(this.btnBuscar, "Buscar el codigo del Producto");
            ttAyuda.SetToolTip(this.dtpFecha, "Seleccione la fecha");
            ttAyuda.SetToolTip(this.rbtnHabilitado, "Estado Habilitado");
            ttAyuda.SetToolTip(this.rbtnDesabilitado, "Estado Desabiilitado");
            ttAyuda.SetToolTip(this.txtCantidad, "Ingrese la cantidad a solicitar");
            dtpFecha.Value.ToString(dtpFecha.CustomFormat = "dd-MM-yyyy HH:mm:ss");
            txtFecha.Text = dtpFecha.Value.ToString(dtpFecha.CustomFormat = "dd-MM-yyyy HH:mm:ss");
        }
        

        private void navegador1_Load(object sender, EventArgs e)
        {
            List<string> CamposTabla = new List<string>();
            List<Control> lista = new List<Control>();
            //llenado de  parametros para la aplicacion 
            navegador1.aplicacion = 3310;
            navegador1.tbl = "orden_compra";
            navegador1.campoEstado = "estado_orden_compra";

            //se agregan los componentes del formulario a la lista tipo control

            foreach (Control C in this.Controls)
            {
                if (C.Tag != null)
                {
                    if (C.Tag.ToString() == "saltar")
                    {
                    }
                    else
                    {
                        if (C is TextBox)
                        {
                            lista.Add(C);
                        }
                        else if (C is ComboBox)
                        {
                            lista.Add(C);
                        }
                        else if (C is DateTimePicker)
                        {
                            lista.Add(C);
                        }
                    }
                }
            }

            navegador1.control = lista;
            navegador1.formulario = this;
            navegador1.DatosActualizar = dgbOrdenCompra;
            navegador1.procActualizarData();
            navegador1.procCargar();
            navegador1.ayudaRuta = "";
            navegador1.ruta = "";
        }

        //obtener el codigo y el nombre del prodycto
        private void btnBuscar_Click(object sender, EventArgs e)
        {
            frmOrdenCompraProducto Consultar = new frmOrdenCompraProducto();

            if (Consultar.ShowDialog() == DialogResult.OK)
            {
                txtIdProducto.Text = Consultar.dgvProductos.Rows[Consultar.dgvProductos.CurrentRow.Index].Cells[0].Value.ToString();
                txtProducto.Text = Consultar.dgvProductos.Rows[Consultar.dgvProductos.CurrentRow.Index].Cells[1].Value.ToString();
            }
        }

        private void rbtnHabilitado_CheckedChanged(object sender, EventArgs e)
        {
            txtEstado.Text = "1";
        }

        private void rbtnDesabilitado_CheckedChanged(object sender, EventArgs e)
        {
            txtEstado.Text = "0";
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtIdProducto_KeyPress(object sender, KeyPressEventArgs e)
        {
            
        }

        private void txtProducto_KeyPress(object sender, KeyPressEventArgs e)
        {
            
        }

        //Formato de la fecha
        private void dtpFecha_ValueChanged(object sender, EventArgs e)
        {
            dtpFecha.Value.ToString(dtpFecha.CustomFormat = "dd-MM-yyyy HH:mm:ss");
            txtFecha.Text = dtpFecha.Value.ToString(dtpFecha.CustomFormat = "dd-MM-yyyy HH:mm:ss");
        }

        private void txtCantidad_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaciones.CampoNumerico(e);
        }

        private void txtOrdenDeCompra_TextChanged(object sender, EventArgs e)
        {
            txtIdProducto.Enabled = false;
        }
    }
}
