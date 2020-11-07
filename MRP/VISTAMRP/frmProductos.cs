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
    public partial class frmProductos : Form
    {
        clsControladorProduccion Controlador = new clsControladorProduccion();
        clsValidaciones validaciones = new clsValidaciones();
        string UsuarioAplicacion;
        public frmProductos(string usuario)
        {
            InitializeComponent();
            rbtnHabilitado.Checked = true;
            //Manda el nombre se usuario al navegador
            UsuarioAplicacion = usuario;
            navegador1.Usuario = UsuarioAplicacion;
            ttMensaje.SetToolTip(this.txtlinea, "Ingrese codigo de linea de producto para buscar por código");
            ttMensaje.SetToolTip(this.txtCategoria, "Ingrese codigo de categoría para buscar por código");
            ttMensaje.SetToolTip(this.cmbLinea, "Seleccione una opción de linea de producto");
            ttMensaje.SetToolTip(this.cmbCategoria, "Seleccione una opcion de Categoría de Producto");
        }

        private void rbtnHabilitado_CheckedChanged(object sender, EventArgs e)
        {
            txtEstado.Text = "1";
        }

        private void rbtnDesabilitado_CheckedChanged(object sender, EventArgs e)
        {
            txtEstado.Text = "0";
        }

        private void txtNombre_TextChanged(object sender, EventArgs e)
        {
            txtEstado.Text = "1";
        }
        //Lenados de parametros para el funcionamiento del navegador
        private void navegador1_Load(object sender, EventArgs e)
        {
            List<string> CamposTabla = new List<string>();
            List<Control> lista = new List<Control>();
            //llenado de  parametros para la aplicacion 
            navegador1.aplicacion = 3302;
            navegador1.tbl = "producto";
            navegador1.campoEstado = "estado_producto";

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
            navegador1.DatosActualizar = dgvProducto;
            navegador1.procActualizarData();
            navegador1.procCargar();
            navegador1.ayudaRuta = "AYUDAS/AyudasMRP.chm";
            navegador1.ruta = "AyudaActivos.html";
            rbtnHabilitado.Checked = true;
            rbtnDesabilitado.Checked = false;
        }

        private void txtEstado_TextChanged(object sender, EventArgs e)
        {
        }

        private void txtPrecio_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaciones.Camposdecimales(e);
        }

        private void frmProductos_Load(object sender, EventArgs e)
        {
            CargarCombobox();
        }
        public void CargarCombobox()
        {
            //llenado de combobox de linea 
            cmbLinea.DisplayMember = "nombre_linea_producto";
            cmbLinea.ValueMember = "pk_id_linea_producto";
            cmbLinea.DataSource = Controlador.funcObtenerCamposCombobox("pk_id_linea_producto", "nombre_linea_producto", "linea_producto", "estado_linea_producto");
            cmbLinea.SelectedIndex = -1;
            // lenado de combobox de categoria
            cmbCategoria.DisplayMember = "nombre_categoria_producto";
            cmbCategoria.ValueMember = "pk_id_categoria_producto";
            cmbCategoria.DataSource = Controlador.funcObtenerCamposCombobox("pk_id_categoria_producto", "nombre_categoria_producto", "categoria_producto", "estado_categoria_producto");
            cmbCategoria.SelectedIndex = -1;
        }

        private void cmbLinea_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtEstado.Text = "1";
            if (cmbLinea.SelectedIndex != -1)
            {
                txtlinea.Text = cmbLinea.SelectedValue.ToString();
            }
            
        }

        private void cmbCategoria_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cmbCategoria.SelectedIndex != -1)
            {
               txtCategoria.Text = cmbCategoria.SelectedValue.ToString();
            }
        }

        private void txtlinea_TextChanged(object sender, EventArgs e)
        {
            if (txtlinea.Text!="")
            {
                OdbcDataReader reader = Controlador.funcConsultaCombo("nombre_linea_producto", "pk_id_linea_producto", "linea_producto", "estado_linea_producto", txtlinea.Text);
                if (reader.Read())
                {
                    cmbLinea.Text = reader.GetString(0);
                }
                else
                {
                    cmbLinea.SelectedIndex = -1;
                }
            }
            
            
        }

        private void txtCategoria_TextChanged(object sender, EventArgs e)
        {
            if (txtCategoria.Text != "")
            {
                OdbcDataReader reader = Controlador.funcConsultaCombo("nombre_categoria_producto", "pk_id_categoria_producto", "categoria_producto", "estado_categoria_producto", txtCategoria.Text);
                if (reader.Read())
                {
                    cmbCategoria.Text = reader.GetString(0);
                }
                else
                {
                    cmbCategoria.SelectedIndex = -1;
                }
            }
        }

        private void txtlinea_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaciones.CampoNumerico(e);
        }

        private void txtCategoria_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaciones.CampoNumerico(e);
        }

        private void txtMedida_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaciones.Camposdecimales(e);
        }

        private void txtCodigo_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaciones.CampoNumerico(e);
        }
    }
}
