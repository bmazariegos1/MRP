namespace VISTAMRP
{
    partial class frmRecetas
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
            this.lblCodigoEncabezado = new System.Windows.Forms.Label();
            this.lblCodigoDetalle = new System.Windows.Forms.Label();
            this.lblTipoP = new System.Windows.Forms.Label();
            this.lblCostoU = new System.Windows.Forms.Label();
            this.lblCantidad = new System.Windows.Forms.Label();
            this.dgvRecetas = new System.Windows.Forms.DataGridView();
            this.lblProducto = new System.Windows.Forms.Label();
            this.txtCDetalle = new System.Windows.Forms.TextBox();
            this.txtCRecetaE = new System.Windows.Forms.TextBox();
            this.txtEProduccion = new System.Windows.Forms.TextBox();
            this.txtProducto = new System.Windows.Forms.TextBox();
            this.txtCantidad = new System.Windows.Forms.TextBox();
            this.cmbProducto = new System.Windows.Forms.ComboBox();
            this.navegador1 = new CapaVistaNavegador.Navegador();
            this.gbxEstado = new System.Windows.Forms.GroupBox();
            this.rbtnDesabilitado = new System.Windows.Forms.RadioButton();
            this.rbtnHabilitado = new System.Windows.Forms.RadioButton();
            this.cmbProduccion = new System.Windows.Forms.ComboBox();
            this.cmbRecetaE = new System.Windows.Forms.ComboBox();
            this.txtCostoU = new System.Windows.Forms.TextBox();
            this.txtEstado = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgvRecetas)).BeginInit();
            this.gbxEstado.SuspendLayout();
            this.SuspendLayout();
            // 
            // lblCodigoEncabezado
            // 
            this.lblCodigoEncabezado.AutoSize = true;
            this.lblCodigoEncabezado.BackColor = System.Drawing.Color.Transparent;
            this.lblCodigoEncabezado.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCodigoEncabezado.Location = new System.Drawing.Point(75, 227);
            this.lblCodigoEncabezado.Name = "lblCodigoEncabezado";
            this.lblCodigoEncabezado.Size = new System.Drawing.Size(162, 20);
            this.lblCodigoEncabezado.TabIndex = 25;
            this.lblCodigoEncabezado.Text = "Receta Encabezado";
            // 
            // lblCodigoDetalle
            // 
            this.lblCodigoDetalle.AutoSize = true;
            this.lblCodigoDetalle.BackColor = System.Drawing.Color.Transparent;
            this.lblCodigoDetalle.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCodigoDetalle.Location = new System.Drawing.Point(80, 190);
            this.lblCodigoDetalle.Name = "lblCodigoDetalle";
            this.lblCodigoDetalle.Size = new System.Drawing.Size(184, 20);
            this.lblCodigoDetalle.TabIndex = 21;
            this.lblCodigoDetalle.Text = "Codigo Receta Detalle";
            // 
            // lblTipoP
            // 
            this.lblTipoP.AutoSize = true;
            this.lblTipoP.BackColor = System.Drawing.Color.Transparent;
            this.lblTipoP.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTipoP.Location = new System.Drawing.Point(75, 264);
            this.lblTipoP.Name = "lblTipoP";
            this.lblTipoP.Size = new System.Drawing.Size(177, 20);
            this.lblTipoP.TabIndex = 15;
            this.lblTipoP.Text = "ID Estado Produccion";
            // 
            // lblCostoU
            // 
            this.lblCostoU.AutoSize = true;
            this.lblCostoU.BackColor = System.Drawing.Color.Transparent;
            this.lblCostoU.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCostoU.Location = new System.Drawing.Point(75, 375);
            this.lblCostoU.Name = "lblCostoU";
            this.lblCostoU.Size = new System.Drawing.Size(122, 20);
            this.lblCostoU.TabIndex = 17;
            this.lblCostoU.Text = "Costo Unitario";
            // 
            // lblCantidad
            // 
            this.lblCantidad.AutoSize = true;
            this.lblCantidad.BackColor = System.Drawing.Color.Transparent;
            this.lblCantidad.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCantidad.Location = new System.Drawing.Point(75, 338);
            this.lblCantidad.Name = "lblCantidad";
            this.lblCantidad.Size = new System.Drawing.Size(80, 20);
            this.lblCantidad.TabIndex = 16;
            this.lblCantidad.Text = "Cantidad";
            // 
            // dgvRecetas
            // 
            this.dgvRecetas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvRecetas.Location = new System.Drawing.Point(636, 145);
            this.dgvRecetas.Name = "dgvRecetas";
            this.dgvRecetas.RowHeadersWidth = 51;
            this.dgvRecetas.RowTemplate.Height = 24;
            this.dgvRecetas.Size = new System.Drawing.Size(789, 331);
            this.dgvRecetas.TabIndex = 2;
            // 
            // lblProducto
            // 
            this.lblProducto.AutoSize = true;
            this.lblProducto.BackColor = System.Drawing.Color.Transparent;
            this.lblProducto.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblProducto.Location = new System.Drawing.Point(75, 300);
            this.lblProducto.Name = "lblProducto";
            this.lblProducto.Size = new System.Drawing.Size(80, 20);
            this.lblProducto.TabIndex = 26;
            this.lblProducto.Text = "Producto";
            // 
            // txtCDetalle
            // 
            this.txtCDetalle.Location = new System.Drawing.Point(345, 188);
            this.txtCDetalle.Name = "txtCDetalle";
            this.txtCDetalle.Size = new System.Drawing.Size(100, 22);
            this.txtCDetalle.TabIndex = 27;
            this.txtCDetalle.Tag = "pk_id_detalle_detalle_receta";
            // 
            // txtCRecetaE
            // 
            this.txtCRecetaE.Location = new System.Drawing.Point(517, 223);
            this.txtCRecetaE.Name = "txtCRecetaE";
            this.txtCRecetaE.Size = new System.Drawing.Size(55, 22);
            this.txtCRecetaE.TabIndex = 28;
            this.txtCRecetaE.Tag = "fk_id_receta_encabezado_detalle";
            this.txtCRecetaE.TextChanged += new System.EventHandler(this.txtCRecetaE_TextChanged);
            this.txtCRecetaE.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtCRecetaE_KeyPress);
            // 
            // txtEProduccion
            // 
            this.txtEProduccion.Location = new System.Drawing.Point(517, 254);
            this.txtEProduccion.Name = "txtEProduccion";
            this.txtEProduccion.Size = new System.Drawing.Size(55, 22);
            this.txtEProduccion.TabIndex = 29;
            this.txtEProduccion.Tag = "fk_id_estado_produccion_detalle_receta";
            this.txtEProduccion.TextChanged += new System.EventHandler(this.txtEProduccion_TextChanged);
            this.txtEProduccion.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtEProduccion_KeyPress);
            // 
            // txtProducto
            // 
            this.txtProducto.Location = new System.Drawing.Point(517, 291);
            this.txtProducto.Name = "txtProducto";
            this.txtProducto.Size = new System.Drawing.Size(55, 22);
            this.txtProducto.TabIndex = 30;
            this.txtProducto.Tag = "fk_id_producto_detalle_receta";
            this.txtProducto.TextChanged += new System.EventHandler(this.txtProducto_TextChanged);
            this.txtProducto.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtProducto_KeyPress);
            // 
            // txtCantidad
            // 
            this.txtCantidad.Location = new System.Drawing.Point(345, 327);
            this.txtCantidad.Name = "txtCantidad";
            this.txtCantidad.Size = new System.Drawing.Size(100, 22);
            this.txtCantidad.TabIndex = 31;
            this.txtCantidad.Tag = "cantidad_detalle_receta";
            this.txtCantidad.TextChanged += new System.EventHandler(this.txtCantidad_TextChanged);
            this.txtCantidad.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtCantidad_KeyPress);
            // 
            // cmbProducto
            // 
            this.cmbProducto.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbProducto.FormattingEnabled = true;
            this.cmbProducto.Location = new System.Drawing.Point(345, 290);
            this.cmbProducto.Name = "cmbProducto";
            this.cmbProducto.Size = new System.Drawing.Size(166, 24);
            this.cmbProducto.TabIndex = 34;
            this.cmbProducto.Tag = "saltar";
            this.cmbProducto.SelectedIndexChanged += new System.EventHandler(this.cmbProducto_SelectedIndexChanged);
            // 
            // navegador1
            // 
            this.navegador1.BackColor = System.Drawing.Color.Transparent;
            this.navegador1.Location = new System.Drawing.Point(13, 9);
            this.navegador1.Margin = new System.Windows.Forms.Padding(4);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(1412, 129);
            this.navegador1.TabIndex = 3;
            this.navegador1.Load += new System.EventHandler(this.navegador1_Load);
            // 
            // gbxEstado
            // 
            this.gbxEstado.Controls.Add(this.rbtnDesabilitado);
            this.gbxEstado.Controls.Add(this.rbtnHabilitado);
            this.gbxEstado.Font = new System.Drawing.Font("Rockwell", 9.75F);
            this.gbxEstado.Location = new System.Drawing.Point(154, 460);
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
            // cmbProduccion
            // 
            this.cmbProduccion.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbProduccion.FormattingEnabled = true;
            this.cmbProduccion.Location = new System.Drawing.Point(345, 254);
            this.cmbProduccion.Name = "cmbProduccion";
            this.cmbProduccion.Size = new System.Drawing.Size(166, 24);
            this.cmbProduccion.TabIndex = 35;
            this.cmbProduccion.Tag = "saltar";
            this.cmbProduccion.SelectedIndexChanged += new System.EventHandler(this.cmbProduccion_SelectedIndexChanged);
            // 
            // cmbRecetaE
            // 
            this.cmbRecetaE.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbRecetaE.FormattingEnabled = true;
            this.cmbRecetaE.Location = new System.Drawing.Point(345, 223);
            this.cmbRecetaE.Name = "cmbRecetaE";
            this.cmbRecetaE.Size = new System.Drawing.Size(166, 24);
            this.cmbRecetaE.TabIndex = 36;
            this.cmbRecetaE.Tag = "saltar";
            this.cmbRecetaE.SelectedIndexChanged += new System.EventHandler(this.comboBox1_SelectedIndexChanged);
            // 
            // txtCostoU
            // 
            this.txtCostoU.Location = new System.Drawing.Point(345, 373);
            this.txtCostoU.Name = "txtCostoU";
            this.txtCostoU.Size = new System.Drawing.Size(100, 22);
            this.txtCostoU.TabIndex = 37;
            this.txtCostoU.Tag = "costo_unitario_detalle_receta";
            this.txtCostoU.TextChanged += new System.EventHandler(this.txtCostoU_TextChanged);
            this.txtCostoU.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtCostoU_KeyPress);
            // 
            // txtEstado
            // 
            this.txtEstado.Enabled = false;
            this.txtEstado.Location = new System.Drawing.Point(84, 493);
            this.txtEstado.Name = "txtEstado";
            this.txtEstado.Size = new System.Drawing.Size(53, 22);
            this.txtEstado.TabIndex = 38;
            this.txtEstado.Tag = "estado_detalle_receta";
            this.txtEstado.Visible = false;
            this.txtEstado.TextChanged += new System.EventHandler(this.txtEstado_TextChanged);
            // 
            // frmRecetas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.PaleTurquoise;
            this.ClientSize = new System.Drawing.Size(1450, 570);
            this.Controls.Add(this.txtEstado);
            this.Controls.Add(this.txtCostoU);
            this.Controls.Add(this.cmbRecetaE);
            this.Controls.Add(this.cmbProduccion);
            this.Controls.Add(this.cmbProducto);
            this.Controls.Add(this.gbxEstado);
            this.Controls.Add(this.txtCantidad);
            this.Controls.Add(this.navegador1);
            this.Controls.Add(this.txtProducto);
            this.Controls.Add(this.dgvRecetas);
            this.Controls.Add(this.txtEProduccion);
            this.Controls.Add(this.txtCRecetaE);
            this.Controls.Add(this.lblCantidad);
            this.Controls.Add(this.txtCDetalle);
            this.Controls.Add(this.lblCostoU);
            this.Controls.Add(this.lblProducto);
            this.Controls.Add(this.lblTipoP);
            this.Controls.Add(this.lblCodigoEncabezado);
            this.Controls.Add(this.lblCodigoDetalle);
            this.Name = "frmRecetas";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "3307 - Mantenimiento Receta Detalle";
            this.Load += new System.EventHandler(this.frmRecetas_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvRecetas)).EndInit();
            this.gbxEstado.ResumeLayout(false);
            this.gbxEstado.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label lblCodigoDetalle;
        private System.Windows.Forms.Label lblTipoP;
        private System.Windows.Forms.Label lblCostoU;
        private System.Windows.Forms.Label lblCantidad;
        private System.Windows.Forms.DataGridView dgvRecetas;
        private System.Windows.Forms.Label lblCodigoEncabezado;
        private System.Windows.Forms.ComboBox cmbProducto;
        private System.Windows.Forms.TextBox txtCantidad;
        private System.Windows.Forms.TextBox txtProducto;
        private System.Windows.Forms.TextBox txtEProduccion;
        private System.Windows.Forms.TextBox txtCRecetaE;
        private System.Windows.Forms.TextBox txtCDetalle;
        private System.Windows.Forms.Label lblProducto;
        private CapaVistaNavegador.Navegador navegador1;
        private System.Windows.Forms.GroupBox gbxEstado;
        private System.Windows.Forms.RadioButton rbtnDesabilitado;
        private System.Windows.Forms.RadioButton rbtnHabilitado;
        private System.Windows.Forms.ComboBox cmbProduccion;
        private System.Windows.Forms.ComboBox cmbRecetaE;
        private System.Windows.Forms.TextBox txtCostoU;
        private System.Windows.Forms.TextBox txtEstado;
    }
}