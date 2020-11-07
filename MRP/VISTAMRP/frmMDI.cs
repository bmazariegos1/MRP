using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaVistaSeguridad;

namespace VISTAMRP
{
    public partial class frmMDI : Form
    {
        private int childFormNumber = 0;
        clsFuncionesSeguridad seguridad = new clsFuncionesSeguridad();
        clsVistaBitacora bit = new clsVistaBitacora();
        public frmMDI()
        {
            InitializeComponent();
        }

        private void frmMDI_Load(object sender, EventArgs e)
        {
            frmLogin frm = new frmLogin();
            if (frm.ShowDialog() == DialogResult.OK)
            {
                txtUsuario.Text = frm.usuario();
            }
        }

        

        private void cerrarSesionToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmLogin frm = new frmLogin();
            if (frm.ShowDialog() == DialogResult.OK)
            {
                txtUsuario.Text = frm.usuario();
            }
        }
        private void productosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("3302", txtUsuario.Text) == 1)
            {
                bit.user(txtUsuario.Text);
                frmProductos ventana = new frmProductos(txtUsuario.Text);
                ventana.MdiParent = this;
                ventana.Show();
            }
            else
            {
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }
        }

        private void CategoriaDeProductosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("3303", txtUsuario.Text) == 1)
            {
                bit.user(txtUsuario.Text);
                frmCategoriaProducto ventana = new frmCategoriaProducto(txtUsuario.Text);
                ventana.MdiParent = this;
                ventana.Show();
            }
            else
            {
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }
        }

        private void estadosDeProducciónToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("3304", txtUsuario.Text) == 1)
            {
                bit.user(txtUsuario.Text);
                frmEstadoProduccion ventana = new frmEstadoProduccion(txtUsuario.Text);
                ventana.MdiParent = this;
                ventana.Show();
            }
            else
            {
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }
        }

        private void lineaDeProductoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("3305", txtUsuario.Text) == 1)
            {
                bit.user(txtUsuario.Text);
                frmLineaProducto ventana = new frmLineaProducto(txtUsuario.Text);
                ventana.MdiParent = this;
                ventana.Show();
            }
            else
            {
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }
        }
    }
}
