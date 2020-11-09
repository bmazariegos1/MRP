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
    public partial class frmRecetaEncabezado : Form
    {
        clsControladorProduccion Controlador = new clsControladorProduccion();
        clsValidaciones valida = new clsValidaciones(); 
        string UsuarioAplicacion;
        public frmRecetaEncabezado(string usuario)
        {
            InitializeComponent();
            rbtnHabilitado.Checked = true;
            //Manda el nombre se usuario al navegador
            UsuarioAplicacion = usuario;
            navegador1.Usuario = UsuarioAplicacion;
        }


        private void frmRecetaEncabezado_Load(object sender, EventArgs e)
        {
            CargarCombobox();
        }
        public void CargarCombobox()
        {
            //llenado de combobox de linea 
            cmbProducto.DisplayMember = "nombre_producto";
            cmbProducto.ValueMember = "pk_id_producto";
            cmbProducto.DataSource = Controlador.funcObtenerCamposCombobox("pk_id_producto", "nombre_producto", "producto", "estado_producto");
            cmbProducto.SelectedIndex = -1;
            
        }

        private void navegador1_Load_1(object sender, EventArgs e)
        {
            List<string> CamposTabla = new List<string>();
            List<Control> lista = new List<Control>();
            //llenado de  parametros para la aplicacion 
            navegador1.aplicacion = 3306;
            navegador1.tbl = "recetas_encabezado";
            navegador1.campoEstado = "estado_encabezado_receta";

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
            navegador1.ruta = "AyudaRecetaEn.html";
            rbtnHabilitado.Checked = true;
            rbtnDesabilitado.Checked = false;
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

        private void cmbProducto_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtEstado.Text = "1";
            if (cmbProducto.SelectedIndex != -1)
            {
                txtProducto.Text = cmbProducto.SelectedValue.ToString();
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

        private void txtEstado_TextChanged_1(object sender, EventArgs e)
        {

        }

        private void txtProducto_KeyPress(object sender, KeyPressEventArgs e)
        {
            valida.CampoNumerico(e);
        }
    }
}
