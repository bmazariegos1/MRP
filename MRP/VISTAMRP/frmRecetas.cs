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
    public partial class frmRecetas : Form
    {
        clsControladorProduccion Controlador = new clsControladorProduccion();
        clsValidaciones valida = new clsValidaciones();
        string UsuarioAplicacion;
        public frmRecetas(string usuario)
        {
            InitializeComponent();
            rbtnHabilitado.Checked = true;
            //Manda el nombre se usuario al navegador
            UsuarioAplicacion = usuario;
            navegador1.Usuario = UsuarioAplicacion;
        }

        public void CargarCombobox()
        {
            //llenado de combobox de producto
            cmbProducto.DisplayMember = "nombre_producto";
            cmbProducto.ValueMember = "pk_id_producto";
            cmbProducto.DataSource = Controlador.funcObtenerCamposCombobox("pk_id_producto", "nombre_producto", "producto", "estado_producto");
            cmbProducto.SelectedIndex = -1;

            //llenado de combobox de estado produccion
            cmbProduccion.DisplayMember = "nombre_estado_produccion";
            cmbProduccion.ValueMember = "pk_id_estado_produccion";
            cmbProduccion.DataSource = Controlador.funcObtenerCamposCombobox("pk_id_estado_produccion", "nombre_estado_produccion", "estado_produccion", "estado_estado_produccion");
            cmbProduccion.SelectedIndex = -1;

            //llenado de combobox de estado receta encabezado
            cmbRecetaE.DisplayMember = "descripcion_receta_encabezado";
            cmbRecetaE.ValueMember = "pk_id_receta_encabezado";
            cmbRecetaE.DataSource = Controlador.funcObtenerCamposCombobox("pk_id_receta_encabezado", "descripcion_receta_encabezado", "recetas_encabezado", "estado_encabezado_receta");
            cmbRecetaE.SelectedIndex = -1;

        }

        private void gpbRecetas_Enter(object sender, EventArgs e)
        {

        }

        private void frmRecetas_Load(object sender, EventArgs e)
        {
            CargarCombobox();
        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            List<string> CamposTabla = new List<string>();
            List<Control> lista = new List<Control>();
            //llenado de  parametros para la aplicacion 
            navegador1.aplicacion = 3307;
            navegador1.tbl = "detalle_receta";
            navegador1.campoEstado = "estado_detalle_receta";

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
            navegador1.DatosActualizar = dgvRecetas;
            navegador1.procActualizarData();
            navegador1.procCargar();
            navegador1.ayudaRuta = "Ayudas/Ayudas.chm";
            navegador1.ruta = "AyudaRecetaD.html";
            rbtnHabilitado.Checked = true;
            rbtnDesabilitado.Checked = false;
        }

        private void cmbProduccion_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtEstado.Text = "1";
            if (cmbProduccion.SelectedIndex != -1)
            {
               txtEProduccion.Text = cmbProduccion.SelectedValue.ToString();
            }
        }

        private void cmbProducto_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtEstado.Text = "1";
            if (cmbProducto.SelectedIndex != -1)
            {
                txtProducto.Text = cmbProducto.SelectedValue.ToString();
            }
        }

        private void txtEProduccion_TextChanged(object sender, EventArgs e)
        {
            if (txtEProduccion.Text != "")
            {
                OdbcDataReader reader = Controlador.funcConsultaCombo("nombre_estado_produccion", "pk_id_estado_produccion", "estado_produccion", "estado_estado_produccion", txtEProduccion.Text);
                if (reader.Read())
                {
                    cmbProduccion.Text = reader.GetString(0);
                }
                else
                {
                    cmbProduccion.SelectedIndex = -1;
                }
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

        private void rbtnDesabilitado_CheckedChanged(object sender, EventArgs e)
        {
            txtEstado.Text = "0";
        }

        private void rbtnHabilitado_CheckedChanged(object sender, EventArgs e)
        {
            txtEstado.Text = "1";
        }

        private void txtEstado_TextChanged(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtEstado.Text = "1";
            if (cmbRecetaE.SelectedIndex != -1)
            {
                txtCRecetaE.Text = cmbRecetaE.SelectedValue.ToString();
            }
        }

        private void txtCRecetaE_TextChanged(object sender, EventArgs e)
        {
            if (txtCRecetaE.Text != "")
            {
                OdbcDataReader reader = Controlador.funcConsultaCombo("descripcion_receta_encabezado", "pk_id_receta_encabezado", "recetas_encabezado", "estado_encabezado_receta", txtCRecetaE.Text);
                if (reader.Read())
                {
                    cmbRecetaE.Text = reader.GetString(0);
                }
                else
                {
                    cmbRecetaE.SelectedIndex = -1;
                }
            }
        }

        private void txtCRecetaE_KeyPress(object sender, KeyPressEventArgs e)
        {
            valida.CampoNumerico(e);
        }

        private void txtEProduccion_KeyPress(object sender, KeyPressEventArgs e)
        {
            valida.CampoNumerico(e);
        }

        private void txtProducto_KeyPress(object sender, KeyPressEventArgs e)
        {
            valida.CampoNumerico(e);
        }

        private void txtCantidad_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtCantidad_KeyPress(object sender, KeyPressEventArgs e)
        {
            valida.Camposdecimales(e);
        }

        private void txtCostoU_KeyPress(object sender, KeyPressEventArgs e)
        {
            valida.Camposdecimales(e);
        }

        private void txtCostoU_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
