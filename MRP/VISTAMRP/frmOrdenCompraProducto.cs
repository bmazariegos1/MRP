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
    public partial class frmOrdenCompraProducto : Form
    {

        clsControladorOrdenCompra Controlador = new clsControladorOrdenCompra();
        public frmOrdenCompraProducto()
        {
            InitializeComponent();
            LlenarDgv();
        }
        DataTable Dt = new DataTable();
        public void LlenarDgv()
        {
            dgvProductos.Rows.Clear();
            Dt.Columns.Add("Codigo", typeof(string));
            Dt.Columns.Add("Nombre_Producto", typeof(string));
            Dt.Columns.Add("Descripcion", typeof(string));
            OdbcDataReader mostrar = Controlador.funcConsulta();
            try
            {
                while (mostrar.Read())
                {
                    DataRow row;
                    row = Dt.NewRow();
                    row["Codigo"] = mostrar.GetString(0);
                    row["Nombre_Producto"] = mostrar.GetString(1);
                    row["Descripcion"] = mostrar.GetString(2);
                    Dt.Rows.Add(row);
                }
                dgvProductos.DataSource = Dt;
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }

        }

        private void txtCodigo_TextChanged(object sender, EventArgs e)
        {
            if (txtCodigo.Text == " ")
            {
                dgvProductos.Rows.Clear();
                dgvProductos.DataSource = Dt;
                return;
            }

            Dt.DefaultView.RowFilter = $"Codigo LIKE '{txtCodigo.Text}%'";
        }

        private void txtProducto_TextChanged(object sender, EventArgs e)
        {
            if (txtCodigo.Text == " ")
            {
                dgvProductos.Rows.Clear();
                dgvProductos.DataSource = Dt;
                return;
            }

            Dt.DefaultView.RowFilter = $"Nombre_Producto LIKE '{txtProducto.Text}%'";
        }

        private void btnSeleccionar_Click(object sender, EventArgs e)
        {
            if (dgvProductos.Rows.Count == 0)
            {
                MessageBox.Show("Debe seleccionar la Aplicación deseada");
                // return;
            }
            else
            {
                DialogResult = DialogResult.OK;
                Close();
            }
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }
    }
}
