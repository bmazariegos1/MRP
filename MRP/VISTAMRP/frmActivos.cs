﻿using CONTROLADORMRP;
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
    public partial class frmActivos : Form
    {
        string UsuarioAplicacion;
        public frmActivos(string usuario)
        {
            InitializeComponent();
            rbtnHabilitado.Checked = true;
            //Manda el nombre se usuario al navegador
            UsuarioAplicacion = usuario;
            navegador1.Usuario = UsuarioAplicacion;
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
            navegador1.tbl = "activos_mrp";
            navegador1.campoEstado = "estado_activos_mrp";

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
            navegador1.DatosActualizar = dgvActivos;
            navegador1.procActualizarData();
            navegador1.procCargar();
            navegador1.ayudaRuta = "AYUDAS/AyudasMRP.chm";
            navegador1.ruta = "AyudaActivos.html";
        }

        private void txtEstado_TextChanged(object sender, EventArgs e)
        {
        }

        private void txtPrecio_KeyPress(object sender, KeyPressEventArgs e)
        {
            clsValidaciones validaciones = new clsValidaciones();
            validaciones.Camposdecimales(e);
        }
    }
}
