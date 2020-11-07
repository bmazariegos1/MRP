namespace VISTAMRP
{
    partial class frmCategoriaProducto
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
            this.lblCodigo = new System.Windows.Forms.Label();
            this.txtCodigo = new System.Windows.Forms.TextBox();
            this.txtNombre = new System.Windows.Forms.TextBox();
            this.lblNombre = new System.Windows.Forms.Label();
            this.txtDescripcion = new System.Windows.Forms.TextBox();
            this.lblDescripcion = new System.Windows.Forms.Label();
            this.txtEstado = new System.Windows.Forms.TextBox();
            this.gbxEstado = new System.Windows.Forms.GroupBox();
            this.rbtnDesabilitado = new System.Windows.Forms.RadioButton();
            this.rbtnHabilitado = new System.Windows.Forms.RadioButton();
            this.dgvCategoria = new System.Windows.Forms.DataGridView();
            this.gbxEstado.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvCategoria)).BeginInit();
            this.SuspendLayout();
            // 
            // navegador1
            // 
            this.navegador1.BackColor = System.Drawing.Color.Transparent;
            this.navegador1.Location = new System.Drawing.Point(14, 15);
            this.navegador1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(1238, 111);
            this.navegador1.TabIndex = 0;
            this.navegador1.Load += new System.EventHandler(this.navegador1_Load);
            // 
            // lblCodigo
            // 
            this.lblCodigo.AutoSize = true;
            this.lblCodigo.Font = new System.Drawing.Font("Rockwell", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCodigo.Location = new System.Drawing.Point(92, 150);
            this.lblCodigo.Name = "lblCodigo";
            this.lblCodigo.Size = new System.Drawing.Size(60, 17);
            this.lblCodigo.TabIndex = 1;
            this.lblCodigo.Text = "Código";
            // 
            // txtCodigo
            // 
            this.txtCodigo.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtCodigo.Location = new System.Drawing.Point(171, 148);
            this.txtCodigo.Name = "txtCodigo";
            this.txtCodigo.Size = new System.Drawing.Size(100, 23);
            this.txtCodigo.TabIndex = 2;
            this.txtCodigo.Tag = "pk_id_categoria_producto";
            // 
            // txtNombre
            // 
            this.txtNombre.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNombre.Location = new System.Drawing.Point(171, 187);
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.Size = new System.Drawing.Size(256, 23);
            this.txtNombre.TabIndex = 4;
            this.txtNombre.Tag = "nombre_categoria_producto";
            this.txtNombre.TextChanged += new System.EventHandler(this.txtNombre_TextChanged);
            // 
            // lblNombre
            // 
            this.lblNombre.AutoSize = true;
            this.lblNombre.Font = new System.Drawing.Font("Rockwell", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNombre.Location = new System.Drawing.Point(12, 187);
            this.lblNombre.Name = "lblNombre";
            this.lblNombre.Size = new System.Drawing.Size(159, 17);
            this.lblNombre.TabIndex = 3;
            this.lblNombre.Text = "Nombre de categoría";
            // 
            // txtDescripcion
            // 
            this.txtDescripcion.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtDescripcion.Location = new System.Drawing.Point(171, 233);
            this.txtDescripcion.Multiline = true;
            this.txtDescripcion.Name = "txtDescripcion";
            this.txtDescripcion.Size = new System.Drawing.Size(256, 88);
            this.txtDescripcion.TabIndex = 6;
            this.txtDescripcion.Tag = "descripcion_categoria_producto";
            // 
            // lblDescripcion
            // 
            this.lblDescripcion.AutoSize = true;
            this.lblDescripcion.Font = new System.Drawing.Font("Rockwell", 11.25F);
            this.lblDescripcion.Location = new System.Drawing.Point(66, 233);
            this.lblDescripcion.Name = "lblDescripcion";
            this.lblDescripcion.Size = new System.Drawing.Size(94, 17);
            this.lblDescripcion.TabIndex = 5;
            this.lblDescripcion.Text = "Descripción";
            // 
            // txtEstado
            // 
            this.txtEstado.Enabled = false;
            this.txtEstado.Location = new System.Drawing.Point(36, 353);
            this.txtEstado.Name = "txtEstado";
            this.txtEstado.Size = new System.Drawing.Size(40, 20);
            this.txtEstado.TabIndex = 7;
            this.txtEstado.Tag = "estado_categoria_producto";
            this.txtEstado.Visible = false;
            // 
            // gbxEstado
            // 
            this.gbxEstado.Controls.Add(this.rbtnDesabilitado);
            this.gbxEstado.Controls.Add(this.rbtnHabilitado);
            this.gbxEstado.Font = new System.Drawing.Font("Rockwell", 9.75F);
            this.gbxEstado.Location = new System.Drawing.Point(120, 353);
            this.gbxEstado.Margin = new System.Windows.Forms.Padding(4);
            this.gbxEstado.Name = "gbxEstado";
            this.gbxEstado.Padding = new System.Windows.Forms.Padding(4);
            this.gbxEstado.Size = new System.Drawing.Size(307, 71);
            this.gbxEstado.TabIndex = 14;
            this.gbxEstado.TabStop = false;
            this.gbxEstado.Text = "Estado";
            // 
            // rbtnDesabilitado
            // 
            this.rbtnDesabilitado.AutoSize = true;
            this.rbtnDesabilitado.Location = new System.Drawing.Point(164, 27);
            this.rbtnDesabilitado.Margin = new System.Windows.Forms.Padding(4);
            this.rbtnDesabilitado.Name = "rbtnDesabilitado";
            this.rbtnDesabilitado.Size = new System.Drawing.Size(105, 20);
            this.rbtnDesabilitado.TabIndex = 7;
            this.rbtnDesabilitado.TabStop = true;
            this.rbtnDesabilitado.Text = "Deshabilitado";
            this.rbtnDesabilitado.UseVisualStyleBackColor = true;
            this.rbtnDesabilitado.CheckedChanged += new System.EventHandler(this.rbtnDesabilitado_CheckedChanged);
            // 
            // rbtnHabilitado
            // 
            this.rbtnHabilitado.AutoSize = true;
            this.rbtnHabilitado.Location = new System.Drawing.Point(24, 27);
            this.rbtnHabilitado.Margin = new System.Windows.Forms.Padding(4);
            this.rbtnHabilitado.Name = "rbtnHabilitado";
            this.rbtnHabilitado.Size = new System.Drawing.Size(85, 20);
            this.rbtnHabilitado.TabIndex = 6;
            this.rbtnHabilitado.TabStop = true;
            this.rbtnHabilitado.Text = "Habilitado";
            this.rbtnHabilitado.UseVisualStyleBackColor = true;
            this.rbtnHabilitado.CheckedChanged += new System.EventHandler(this.rbtnHabilitado_CheckedChanged);
            // 
            // dgvCategoria
            // 
            this.dgvCategoria.AllowUserToOrderColumns = true;
            this.dgvCategoria.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvCategoria.Location = new System.Drawing.Point(493, 151);
            this.dgvCategoria.Name = "dgvCategoria";
            this.dgvCategoria.ReadOnly = true;
            this.dgvCategoria.Size = new System.Drawing.Size(555, 272);
            this.dgvCategoria.TabIndex = 15;
            // 
            // frmCategoriaProducto
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.PowderBlue;
            this.ClientSize = new System.Drawing.Size(1074, 462);
            this.Controls.Add(this.dgvCategoria);
            this.Controls.Add(this.gbxEstado);
            this.Controls.Add(this.txtEstado);
            this.Controls.Add(this.txtDescripcion);
            this.Controls.Add(this.lblDescripcion);
            this.Controls.Add(this.txtNombre);
            this.Controls.Add(this.lblNombre);
            this.Controls.Add(this.txtCodigo);
            this.Controls.Add(this.lblCodigo);
            this.Controls.Add(this.navegador1);
            this.Name = "frmCategoriaProducto";
            this.Text = "3303 - Mantenimiento Categoría de Producto";
            this.gbxEstado.ResumeLayout(false);
            this.gbxEstado.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvCategoria)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private CapaVistaNavegador.Navegador navegador1;
        private System.Windows.Forms.Label lblCodigo;
        private System.Windows.Forms.TextBox txtCodigo;
        private System.Windows.Forms.TextBox txtNombre;
        private System.Windows.Forms.Label lblNombre;
        private System.Windows.Forms.TextBox txtDescripcion;
        private System.Windows.Forms.Label lblDescripcion;
        private System.Windows.Forms.TextBox txtEstado;
        private System.Windows.Forms.GroupBox gbxEstado;
        private System.Windows.Forms.RadioButton rbtnDesabilitado;
        private System.Windows.Forms.RadioButton rbtnHabilitado;
        private System.Windows.Forms.DataGridView dgvCategoria;
    }
}