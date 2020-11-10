namespace VISTAMRP
{
    partial class frmRecepcionPedidos
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.navegador1 = new CapaVistaNavegador.Navegador();
            this.dgvPedidos = new System.Windows.Forms.DataGridView();
            this.lblIDPedido = new System.Windows.Forms.Label();
            this.lblFabrica = new System.Windows.Forms.Label();
            this.lblEstadoP = new System.Windows.Forms.Label();
            this.lblFecha = new System.Windows.Forms.Label();
            this.lblTotal = new System.Windows.Forms.Label();
            this.txtIdPedido = new System.Windows.Forms.TextBox();
            this.txtFabrica = new System.Windows.Forms.TextBox();
            this.txtEstadoP = new System.Windows.Forms.TextBox();
            this.txtTotal = new System.Windows.Forms.TextBox();
            this.gbxEstado = new System.Windows.Forms.GroupBox();
            this.rbtnDesabilitado = new System.Windows.Forms.RadioButton();
            this.rbtnHabilitado = new System.Windows.Forms.RadioButton();
            this.txtEstado = new System.Windows.Forms.TextBox();
            this.cmbFabrica = new System.Windows.Forms.ComboBox();
            this.cmbEstadoP = new System.Windows.Forms.ComboBox();
            this.txtFecha = new System.Windows.Forms.TextBox();
            this.dtp_fecha = new System.Windows.Forms.DateTimePicker();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPedidos)).BeginInit();
            this.gbxEstado.SuspendLayout();
            this.SuspendLayout();
            // 
            // navegador1
            // 
            this.navegador1.BackColor = System.Drawing.Color.Transparent;
            this.navegador1.Location = new System.Drawing.Point(2, 13);
            this.navegador1.Margin = new System.Windows.Forms.Padding(4);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(1412, 129);
            this.navegador1.TabIndex = 0;
            this.navegador1.Load += new System.EventHandler(this.navegador1_Load);
            // 
            // dgvPedidos
            // 
            this.dgvPedidos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvPedidos.Location = new System.Drawing.Point(478, 137);
            this.dgvPedidos.Name = "dgvPedidos";
            this.dgvPedidos.RowHeadersWidth = 51;
            this.dgvPedidos.RowTemplate.Height = 24;
            this.dgvPedidos.Size = new System.Drawing.Size(932, 380);
            this.dgvPedidos.TabIndex = 1;
            // 
            // lblIDPedido
            // 
            this.lblIDPedido.AutoSize = true;
            this.lblIDPedido.Font = new System.Drawing.Font("Rockwell", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblIDPedido.Location = new System.Drawing.Point(58, 169);
            this.lblIDPedido.Name = "lblIDPedido";
            this.lblIDPedido.Size = new System.Drawing.Size(30, 21);
            this.lblIDPedido.TabIndex = 2;
            this.lblIDPedido.Text = "ID";
            // 
            // lblFabrica
            // 
            this.lblFabrica.AutoSize = true;
            this.lblFabrica.Font = new System.Drawing.Font("Rockwell", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblFabrica.Location = new System.Drawing.Point(58, 200);
            this.lblFabrica.Name = "lblFabrica";
            this.lblFabrica.Size = new System.Drawing.Size(76, 21);
            this.lblFabrica.TabIndex = 3;
            this.lblFabrica.Text = "Fabrica";
            // 
            // lblEstadoP
            // 
            this.lblEstadoP.AutoSize = true;
            this.lblEstadoP.Font = new System.Drawing.Font("Rockwell", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEstadoP.Location = new System.Drawing.Point(58, 233);
            this.lblEstadoP.Name = "lblEstadoP";
            this.lblEstadoP.Size = new System.Drawing.Size(176, 21);
            this.lblEstadoP.TabIndex = 4;
            this.lblEstadoP.Text = "Estado Produccion";
            // 
            // lblFecha
            // 
            this.lblFecha.AutoSize = true;
            this.lblFecha.Font = new System.Drawing.Font("Rockwell", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblFecha.Location = new System.Drawing.Point(58, 269);
            this.lblFecha.Name = "lblFecha";
            this.lblFecha.Size = new System.Drawing.Size(62, 21);
            this.lblFecha.TabIndex = 5;
            this.lblFecha.Text = "Fecha";
            // 
            // lblTotal
            // 
            this.lblTotal.AutoSize = true;
            this.lblTotal.Font = new System.Drawing.Font("Rockwell", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTotal.Location = new System.Drawing.Point(58, 310);
            this.lblTotal.Name = "lblTotal";
            this.lblTotal.Size = new System.Drawing.Size(54, 21);
            this.lblTotal.TabIndex = 6;
            this.lblTotal.Text = "Total";
            // 
            // txtIdPedido
            // 
            this.txtIdPedido.Location = new System.Drawing.Point(236, 164);
            this.txtIdPedido.Name = "txtIdPedido";
            this.txtIdPedido.Size = new System.Drawing.Size(100, 22);
            this.txtIdPedido.TabIndex = 7;
            this.txtIdPedido.Tag = "pk_id_pedido_encabezado";
            // 
            // txtFabrica
            // 
            this.txtFabrica.Location = new System.Drawing.Point(370, 195);
            this.txtFabrica.Name = "txtFabrica";
            this.txtFabrica.Size = new System.Drawing.Size(100, 22);
            this.txtFabrica.TabIndex = 8;
            this.txtFabrica.Tag = "fk_id_fabrica";
            this.txtFabrica.TextChanged += new System.EventHandler(this.txtFabrica_TextChanged);
            this.txtFabrica.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtFabrica_KeyPress);
            // 
            // txtEstadoP
            // 
            this.txtEstadoP.Location = new System.Drawing.Point(370, 228);
            this.txtEstadoP.Name = "txtEstadoP";
            this.txtEstadoP.Size = new System.Drawing.Size(100, 22);
            this.txtEstadoP.TabIndex = 9;
            this.txtEstadoP.Tag = "estado_proceso_pedido_encabezado";
            this.txtEstadoP.TextChanged += new System.EventHandler(this.txtEstadoP_TextChanged);
            // 
            // txtTotal
            // 
            this.txtTotal.Location = new System.Drawing.Point(236, 307);
            this.txtTotal.Name = "txtTotal";
            this.txtTotal.Size = new System.Drawing.Size(100, 22);
            this.txtTotal.TabIndex = 11;
            this.txtTotal.Tag = "total_pedido_encabezado";
            // 
            // gbxEstado
            // 
            this.gbxEstado.Controls.Add(this.rbtnDesabilitado);
            this.gbxEstado.Controls.Add(this.rbtnHabilitado);
            this.gbxEstado.Font = new System.Drawing.Font("Rockwell", 9.75F);
            this.gbxEstado.Location = new System.Drawing.Point(61, 366);
            this.gbxEstado.Margin = new System.Windows.Forms.Padding(5);
            this.gbxEstado.Name = "gbxEstado";
            this.gbxEstado.Padding = new System.Windows.Forms.Padding(5);
            this.gbxEstado.Size = new System.Drawing.Size(409, 87);
            this.gbxEstado.TabIndex = 15;
            this.gbxEstado.TabStop = false;
            this.gbxEstado.Text = "Estado";
            // 
            // rbtnDesabilitado
            // 
            this.rbtnDesabilitado.AutoSize = true;
            this.rbtnDesabilitado.Location = new System.Drawing.Point(219, 33);
            this.rbtnDesabilitado.Margin = new System.Windows.Forms.Padding(5);
            this.rbtnDesabilitado.Name = "rbtnDesabilitado";
            this.rbtnDesabilitado.Size = new System.Drawing.Size(138, 24);
            this.rbtnDesabilitado.TabIndex = 7;
            this.rbtnDesabilitado.TabStop = true;
            this.rbtnDesabilitado.Text = "Deshabilitado";
            this.rbtnDesabilitado.UseVisualStyleBackColor = true;
            this.rbtnDesabilitado.CheckedChanged += new System.EventHandler(this.rbtnDesabilitado_CheckedChanged);
            // 
            // rbtnHabilitado
            // 
            this.rbtnHabilitado.AutoSize = true;
            this.rbtnHabilitado.Location = new System.Drawing.Point(32, 33);
            this.rbtnHabilitado.Margin = new System.Windows.Forms.Padding(5);
            this.rbtnHabilitado.Name = "rbtnHabilitado";
            this.rbtnHabilitado.Size = new System.Drawing.Size(110, 24);
            this.rbtnHabilitado.TabIndex = 6;
            this.rbtnHabilitado.TabStop = true;
            this.rbtnHabilitado.Text = "Habilitado";
            this.rbtnHabilitado.UseVisualStyleBackColor = true;
            this.rbtnHabilitado.CheckedChanged += new System.EventHandler(this.rbtnHabilitado_CheckedChanged);
            // 
            // txtEstado
            // 
            this.txtEstado.Enabled = false;
            this.txtEstado.Location = new System.Drawing.Point(61, 461);
            this.txtEstado.Name = "txtEstado";
            this.txtEstado.Size = new System.Drawing.Size(100, 22);
            this.txtEstado.TabIndex = 16;
            this.txtEstado.Tag = "estado_pedido_encabezado";
            this.txtEstado.Visible = false;
            this.txtEstado.TextChanged += new System.EventHandler(this.txtEstado_TextChanged);
            // 
            // cmbFabrica
            // 
            this.cmbFabrica.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbFabrica.FormattingEnabled = true;
            this.cmbFabrica.Location = new System.Drawing.Point(236, 191);
            this.cmbFabrica.Name = "cmbFabrica";
            this.cmbFabrica.Size = new System.Drawing.Size(121, 24);
            this.cmbFabrica.TabIndex = 17;
            this.cmbFabrica.Tag = "saltar";
            this.cmbFabrica.SelectedIndexChanged += new System.EventHandler(this.cmbFabrica_SelectedIndexChanged);
            // 
            // cmbEstadoP
            // 
            this.cmbEstadoP.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbEstadoP.FormattingEnabled = true;
            this.cmbEstadoP.Location = new System.Drawing.Point(236, 226);
            this.cmbEstadoP.Name = "cmbEstadoP";
            this.cmbEstadoP.Size = new System.Drawing.Size(121, 24);
            this.cmbEstadoP.TabIndex = 18;
            this.cmbEstadoP.Tag = "saltar";
            this.cmbEstadoP.SelectedIndexChanged += new System.EventHandler(this.cmbEstadoP_SelectedIndexChanged);
            // 
            // txtFecha
            // 
            this.txtFecha.Enabled = false;
            this.txtFecha.Location = new System.Drawing.Point(236, 461);
            this.txtFecha.Name = "txtFecha";
            this.txtFecha.Size = new System.Drawing.Size(100, 22);
            this.txtFecha.TabIndex = 10;
            this.txtFecha.Tag = "fec_pedido_pedido_encabezado";
            this.txtFecha.Visible = false;
            this.txtFecha.TextChanged += new System.EventHandler(this.txtFecha_TextChanged);
            // 
            // dtp_fecha
            // 
            this.dtp_fecha.Location = new System.Drawing.Point(236, 269);
            this.dtp_fecha.Name = "dtp_fecha";
            this.dtp_fecha.Size = new System.Drawing.Size(200, 22);
            this.dtp_fecha.TabIndex = 19;
            this.dtp_fecha.ValueChanged += new System.EventHandler(this.dateTimePicker1_ValueChanged);
            // 
            // frmRecepcionPedidos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.PaleTurquoise;
            this.ClientSize = new System.Drawing.Size(1422, 566);
            this.Controls.Add(this.dtp_fecha);
            this.Controls.Add(this.cmbEstadoP);
            this.Controls.Add(this.cmbFabrica);
            this.Controls.Add(this.txtEstado);
            this.Controls.Add(this.gbxEstado);
            this.Controls.Add(this.txtTotal);
            this.Controls.Add(this.txtFecha);
            this.Controls.Add(this.txtEstadoP);
            this.Controls.Add(this.txtFabrica);
            this.Controls.Add(this.txtIdPedido);
            this.Controls.Add(this.lblTotal);
            this.Controls.Add(this.lblFecha);
            this.Controls.Add(this.lblEstadoP);
            this.Controls.Add(this.lblFabrica);
            this.Controls.Add(this.lblIDPedido);
            this.Controls.Add(this.dgvPedidos);
            this.Controls.Add(this.navegador1);
            this.Name = "frmRecepcionPedidos";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "3308 - RecepcionPedidos";
            this.Load += new System.EventHandler(this.frmRecepcionPedidos_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvPedidos)).EndInit();
            this.gbxEstado.ResumeLayout(false);
            this.gbxEstado.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private CapaVistaNavegador.Navegador navegador1;
        private System.Windows.Forms.DataGridView dgvPedidos;
        private System.Windows.Forms.Label lblIDPedido;
        private System.Windows.Forms.Label lblFabrica;
        private System.Windows.Forms.Label lblEstadoP;
        private System.Windows.Forms.Label lblFecha;
        private System.Windows.Forms.Label lblTotal;
        private System.Windows.Forms.TextBox txtIdPedido;
        private System.Windows.Forms.TextBox txtFabrica;
        private System.Windows.Forms.TextBox txtEstadoP;
        private System.Windows.Forms.TextBox txtTotal;
        private System.Windows.Forms.GroupBox gbxEstado;
        private System.Windows.Forms.RadioButton rbtnDesabilitado;
        private System.Windows.Forms.RadioButton rbtnHabilitado;
        private System.Windows.Forms.TextBox txtEstado;
        private System.Windows.Forms.ComboBox cmbFabrica;
        private System.Windows.Forms.ComboBox cmbEstadoP;
        private System.Windows.Forms.TextBox txtFecha;
        private System.Windows.Forms.DateTimePicker dtp_fecha;
    }
}