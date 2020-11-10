/*
 * Bryan Estuardo Mazariegos Davila
 * 0901-17-1001
 */
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
using CONTROLADORMRP;

namespace VISTAMRP
{
    public partial class frmProduccion : Form
    {
        clsControladorProduccion Controlador = new clsControladorProduccion();
        clsValidaciones validaciones = new clsValidaciones();
        string UsuarioAplicacion;
        public frmProduccion(string usuario)
        {
            InitializeComponent();
            //Manda el nombre se usuario al navegador
            UsuarioAplicacion = usuario;
            navegador1.Usuario = UsuarioAplicacion;
            CargarCombobox();
        }

        public void CargarCombobox()
        {
            //llenado de combobox de linea 
            cmbEstadoPedido.DisplayMember = "nombre_estado_produccion";
            cmbEstadoPedido.ValueMember = "pk_id_estado_produccion";
            cmbEstadoPedido.DataSource = Controlador.funcObtenerCamposCombobox("pk_id_estado_produccion", "nombre_estado_produccion", "estado_Produccion", "estado_estado_produccion");
            cmbEstadoPedido.SelectedIndex = -1;
        }
        //Lee el codigo del Estado de Proceso
        private void cmbEstadoPedido_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtEstado.Text = "1";
            if (cmbEstadoPedido.SelectedIndex != -1)
            {
                txtCodEstadoPedido.Text = cmbEstadoPedido.SelectedValue.ToString();
            }
        }
        //Busca el nombre del estado en la base de datos y lo coloca en el combobox
        private void txtCodEstadoPedido_TextChanged(object sender, EventArgs e)
        {
            if ((txtCodEstadoPedido.Text != "") && (int.Parse(txtCodEstadoPedido.Text) > 4))
            {
                OdbcDataReader reader = Controlador.funcConsultaCombo("nombre_estado_produccion", "pk_id_estado_produccion", "estado_Produccion", "estado_estado_produccion", txtCodEstadoPedido.Text);
                if (reader.Read())
                {
                    cmbEstadoPedido.Text = reader.GetString(0);
                }
                else
                {
                    cmbEstadoPedido.SelectedIndex = -1;
                }
            }
        }
        // validacion de Solo numeros
        private void txtCodEstadoPedido_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaciones.CampoNumerico(e);
        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            List<string> CamposTabla = new List<string>();
            List<Control> lista = new List<Control>();
            //llenado de  parametros para la aplicacion 
            navegador1.aplicacion = 3313;
            navegador1.tbl = "control_producto";
            navegador1.campoEstado = "estado_control_producto";

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
            navegador1.DatosActualizar = dgvControlProduccion;
            navegador1.procActualizarData();
            navegador1.procCargar();
            navegador1.ayudaRuta = "AYUDAS/AyudasMRP.chm";
            navegador1.ruta = "AyudaActivos.html";

            txtCodEstadoPedido.Enabled = false;
            codigoPedido = txtCodEstadoPedido.Text;
        }
        string codigoPedido;
        private void txtCodigoPedido_TextChanged(object sender, EventArgs e)
        {
            txtCodEstadoPedido.Enabled = false;
            txtCodEstadoPedido.Text = codigoPedido;
            CargarDetalles();
        }

        private void txtCodigoPedido_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaciones.CampoNumerico(e);
        }
        //Boton para fianlizar el proceso de producción  paracarlo como terminado
        private void btnFinalizarPedido_Click(object sender, EventArgs e)
        {
            DialogResult r = MessageBox.Show("El pedido Número:" + txtCodigoPedido.Text +
                                             "\nse marcara como Finalizado" +
                                             "\nDesea continuar ",
                                             "Confirmar acción", MessageBoxButtons.OKCancel, MessageBoxIcon.Information);
            if (r == DialogResult.OK)
            {
                Controlador.funcEliminar_perfil(txtCodigo.Text);
            }
        }
        //funcion para llenadr los datos de los detalles de pedido
        public void CargarDetalles()
        {
            if (txtCodigoPedido.Text != "")
            {
                dgvdetallePedido.Rows.Clear();

                OdbcDataReader mostrar = Controlador.funcConsultaDetalles("pedido_detalle", txtCodigoPedido.Text);
                try
                {
                    while (mostrar.Read())
                    {
                        dgvdetallePedido.Rows.Add(mostrar.GetString(0), mostrar.GetString(2), mostrar.GetString(3));
                    }
                }
                catch (Exception err)
                {
                    Console.WriteLine(err.Message);
                }
            }
        }
    }
}
