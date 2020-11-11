using CONTROLADORMRP;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Odbc;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace VISTAMRP
{
    public partial class frmPedidoDetalle : Form
    {
        clsControladorProduccion Controlador = new clsControladorProduccion();
        clsValidaciones valida = new clsValidaciones();
        string UsuarioAplicacion;

        public frmPedidoDetalle(string usuario)
        {
            InitializeComponent();
            rbtnHabilitado.Checked = true;
            //Manda el nombre se usuario al navegador
            UsuarioAplicacion = usuario;
            navegador1.Usuario = UsuarioAplicacion;
        }
        public void CargarCombobox()
        {
            //llenado de combobox producto
            cmbProducto.DisplayMember = "nombre_producto";
            cmbProducto.ValueMember = "pk_id_producto";
            cmbProducto.DataSource = Controlador.funcObtenerCamposCombobox("pk_id_producto", "nombre_producto", "producto", "estado_producto");
            cmbProducto.SelectedIndex = -1;

           

        }

        private void frmPedidoDetalle_Load(object sender, EventArgs e)
        {
            CargarCombobox();
        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            List<string> CamposTabla = new List<string>();
            List<Control> lista = new List<Control>();
            //llenado de  parametros para la aplicacion 
            navegador1.aplicacion = 3309;
            navegador1.tbl = "pedido_detalle";
            navegador1.campoEstado = "estado_pedido_detalle";

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
            navegador1.DatosActualizar = dgvPedido;
            navegador1.procActualizarData();
            navegador1.procCargar();
            navegador1.ayudaRuta = "AYUDAS/AyudasMRP.chm";
            navegador1.ruta = "AyudaActivos.html";
            rbtnHabilitado.Checked = true;
            rbtnDesabilitado.Checked = false;
        }

        private void cmbIdE_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void txtId_TextChanged(object sender, EventArgs e)
        {
           
        }

        private void cmbProducto_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtEstado.Text = "1";
            if (cmbProducto.SelectedIndex != -1)
            {
                txtProducto.Text = cmbProducto.SelectedValue.ToString();
            }
        }

        private void txtProducto_TextChanged(object sender, EventArgs e)
        {
            if (txtProducto.Text != "")
            {
                OdbcDataReader reader = Controlador.funcConsultaCombo("nombre_producto", "pk_id_producto", "producto", "estado_producto", txtProducto.Text);
                if (reader.Read())
                {
                    cmbProducto.Text = reader.GetString(0);
                }
                else
                {
                    cmbProducto.SelectedIndex = -1;
                }
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

        private void txtEstado_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtPrecioU_TextChanged(object sender, EventArgs e)
        {
            if(txtPrecioU.Text != "" && txtCantidad.Text != "")
            {
                double subTotal = (double.Parse(txtCantidad.Text.ToString()) * double.Parse(txtPrecioU.Text.ToString()));
                txtSubTotal.Text = subTotal.ToString();
            }
            
        }
    }
}
