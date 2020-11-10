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
    public partial class frmRecepcionPedidos : Form
    {
        clsControladorProduccion Controlador = new clsControladorProduccion();
        clsValidaciones valida = new clsValidaciones();
        string UsuarioAplicacion;
        public frmRecepcionPedidos(string usuario)
        {
            InitializeComponent();
           // rbtnHabilitado.Checked = true;
            //Manda el nombre se usuario al navegador
            UsuarioAplicacion = usuario;
            navegador1.Usuario = UsuarioAplicacion;
        }

        private void frmRecepcionPedidos_Load(object sender, EventArgs e)
        {
            CargarCombobox();
        }
        public void CargarCombobox()
        {
            //llenado de combobox fabrica 
            cmbFabrica.DisplayMember = "direccion_fabrica";
            cmbFabrica.ValueMember = "pk_id_fabrica";
            cmbFabrica.DataSource = Controlador.funcObtenerCamposCombobox("pk_id_fabrica", "direccion_fabrica", "fabrica", "estado_fabrica");
            cmbFabrica.SelectedIndex = -1;
            //llenado de combobox estado
            cmbEstadoP.DisplayMember = "nombre_estado_produccion";
            cmbEstadoP.ValueMember = "pk_id_estado_produccion";
            cmbEstadoP.DataSource = Controlador.funcObtenerCamposComboboxMora("pk_id_estado_produccion", "nombre_estado_produccion", "estado_produccion", "estado_estado_produccion");
            cmbEstadoP.SelectedIndex = -1;

        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            List<string> CamposTabla = new List<string>();
            List<Control> lista = new List<Control>();
            //llenado de  parametros para la aplicacion 
            navegador1.aplicacion = 3308;
            navegador1.tbl = "pedido_encabezado";
            navegador1.campoEstado = "estado_pedido_encabezado";

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
            navegador1.DatosActualizar = dgvPedidos;
            navegador1.procActualizarData();
            navegador1.procCargar();
            navegador1.ayudaRuta = "AYUDAS/AyudasMRP.chm";
            navegador1.ruta = "AyudaActivos.html";
            rbtnHabilitado.Checked = true;
            rbtnDesabilitado.Checked = false;
        }

        private void cmbEstadoP_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtEstado.Text = "1";
            if (cmbEstadoP.SelectedIndex != -1)
            {
               txtEstadoP.Text = cmbEstadoP.SelectedValue.ToString();
            }
        }

        private void cmbFabrica_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtEstado.Text = "1";
            if (cmbFabrica.SelectedIndex != -1)
            {
                txtFabrica.Text = cmbFabrica.SelectedValue.ToString();
            }
        }

        private void txtFabrica_TextChanged(object sender, EventArgs e)
        {
            if (txtFabrica.Text != "")
            {
                OdbcDataReader reader = Controlador.funcConsultaCombo("direccion_fabrica", "pk_id_fabrica", "fabrica", "estado_fabrica", txtFabrica.Text);
                if (reader.Read())
                {
                    cmbFabrica.Text = reader.GetString(0);
                }
                else
                {
                    cmbFabrica.SelectedIndex = -1;
                }
            }
        }

        private void txtEstadoP_TextChanged(object sender, EventArgs e)
        {
            if (txtEstadoP.Text != "")
            {
                OdbcDataReader reader = Controlador.funcConsultaCombo("nombre_estado_produccion", "pk_id_estado_produccion", "estado_produccion", "estado_estado_produccion", txtEstadoP.Text);
                if (reader.Read())
                {
                    cmbEstadoP.Text = reader.GetString(0);
                }
                else
                {
                    cmbEstadoP.SelectedIndex = -1;
                }
            }
        }

        private void txtEstado_TextChanged(object sender, EventArgs e)
        {

        }

        private void rbtnHabilitado_CheckedChanged(object sender, EventArgs e)
        {
            txtEstado.Text = "1";
        }

        private void rbtnDesabilitado_CheckedChanged(object sender, EventArgs e)
        {
            txtEstado.Text = "0";
        }

        private void txtFabrica_KeyPress(object sender, KeyPressEventArgs e)
        {
            valida.CampoNumerico(e);
        }

        private void txtFecha_TextChanged(object sender, EventArgs e)
        {
           
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            txtFecha.Text = dtp_fecha.Value.ToString(dtp_fecha.CustomFormat = "yyyy-MM-dd HH:mm:ss");
        }
    }
}
