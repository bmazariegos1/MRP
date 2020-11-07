namespace VISTAMRP
{
    partial class frmRecetaEncabezado
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
            this.txtDescripcion = new System.Windows.Forms.TextBox();
            this.txtEstado = new System.Windows.Forms.TextBox();
            this.lblDescripcion = new System.Windows.Forms.Label();
            this.lblArea = new System.Windows.Forms.Label();
            this.gpbRecetas = new System.Windows.Forms.GroupBox();
            this.lblCodigo = new System.Windows.Forms.Label();
            this.txtCodigo = new System.Windows.Forms.TextBox();
            this.cmbArea = new System.Windows.Forms.ComboBox();
            this.dgvRecetas = new System.Windows.Forms.DataGridView();
            this.gbxEstado = new System.Windows.Forms.GroupBox();
            this.rbtnDesabilitado = new System.Windows.Forms.RadioButton();
            this.rbtnHabilitado = new System.Windows.Forms.RadioButton();
            this.gpbRecetas.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvRecetas)).BeginInit();
            this.gbxEstado.SuspendLayout();
            this.SuspendLayout();
            // 
            // navegador1
            // 
            this.navegador1.BackColor = System.Drawing.Color.Transparent;
            this.navegador1.Location = new System.Drawing.Point(13, 11);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(1059, 105);
            this.navegador1.TabIndex = 0;
            // 
            // txtDescripcion
            // 
            this.txtDescripcion.Location = new System.Drawing.Point(164, 71);
            this.txtDescripcion.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.txtDescripcion.Name = "txtDescripcion";
            this.txtDescripcion.Size = new System.Drawing.Size(206, 25);
            this.txtDescripcion.TabIndex = 1;
            // 
            // txtEstado
            // 
            this.txtEstado.Location = new System.Drawing.Point(34, 312);
            this.txtEstado.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.txtEstado.Name = "txtEstado";
            this.txtEstado.Size = new System.Drawing.Size(71, 20);
            this.txtEstado.TabIndex = 3;
            // 
            // lblDescripcion
            // 
            this.lblDescripcion.AutoSize = true;
            this.lblDescripcion.BackColor = System.Drawing.Color.Transparent;
            this.lblDescripcion.Font = new System.Drawing.Font("Rockwell", 11.25F);
            this.lblDescripcion.Location = new System.Drawing.Point(22, 79);
            this.lblDescripcion.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lblDescripcion.Name = "lblDescripcion";
            this.lblDescripcion.Size = new System.Drawing.Size(94, 17);
            this.lblDescripcion.TabIndex = 5;
            this.lblDescripcion.Text = "Descripcion";
            // 
            // lblArea
            // 
            this.lblArea.AutoSize = true;
            this.lblArea.BackColor = System.Drawing.Color.Transparent;
            this.lblArea.Font = new System.Drawing.Font("Rockwell", 11.25F);
            this.lblArea.Location = new System.Drawing.Point(22, 118);
            this.lblArea.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lblArea.Name = "lblArea";
            this.lblArea.Size = new System.Drawing.Size(72, 17);
            this.lblArea.TabIndex = 6;
            this.lblArea.Text = "Producto";
            // 
            // gpbRecetas
            // 
            this.gpbRecetas.Controls.Add(this.lblCodigo);
            this.gpbRecetas.Controls.Add(this.txtCodigo);
            this.gpbRecetas.Controls.Add(this.cmbArea);
            this.gpbRecetas.Controls.Add(this.lblArea);
            this.gpbRecetas.Controls.Add(this.lblDescripcion);
            this.gpbRecetas.Controls.Add(this.txtDescripcion);
            this.gpbRecetas.Font = new System.Drawing.Font("Rockwell", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gpbRecetas.Location = new System.Drawing.Point(34, 121);
            this.gpbRecetas.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.gpbRecetas.Name = "gpbRecetas";
            this.gpbRecetas.Padding = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.gpbRecetas.Size = new System.Drawing.Size(403, 171);
            this.gpbRecetas.TabIndex = 8;
            this.gpbRecetas.TabStop = false;
            this.gpbRecetas.Text = "Recetas";
            // 
            // lblCodigo
            // 
            this.lblCodigo.AutoSize = true;
            this.lblCodigo.BackColor = System.Drawing.Color.Transparent;
            this.lblCodigo.Font = new System.Drawing.Font("Rockwell", 11.25F);
            this.lblCodigo.Location = new System.Drawing.Point(56, 40);
            this.lblCodigo.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lblCodigo.Name = "lblCodigo";
            this.lblCodigo.Size = new System.Drawing.Size(60, 17);
            this.lblCodigo.TabIndex = 10;
            this.lblCodigo.Text = "Codigo";
            // 
            // txtCodigo
            // 
            this.txtCodigo.Location = new System.Drawing.Point(164, 32);
            this.txtCodigo.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.txtCodigo.Name = "txtCodigo";
            this.txtCodigo.Size = new System.Drawing.Size(206, 25);
            this.txtCodigo.TabIndex = 9;
            // 
            // cmbArea
            // 
            this.cmbArea.FormattingEnabled = true;
            this.cmbArea.Location = new System.Drawing.Point(164, 110);
            this.cmbArea.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.cmbArea.Name = "cmbArea";
            this.cmbArea.Size = new System.Drawing.Size(205, 25);
            this.cmbArea.TabIndex = 8;
            // 
            // dgvRecetas
            // 
            this.dgvRecetas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvRecetas.Location = new System.Drawing.Point(475, 121);
            this.dgvRecetas.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.dgvRecetas.Name = "dgvRecetas";
            this.dgvRecetas.RowHeadersWidth = 51;
            this.dgvRecetas.RowTemplate.Height = 24;
            this.dgvRecetas.Size = new System.Drawing.Size(578, 266);
            this.dgvRecetas.TabIndex = 9;
            // 
            // gbxEstado
            // 
            this.gbxEstado.Controls.Add(this.rbtnDesabilitado);
            this.gbxEstado.Controls.Add(this.rbtnHabilitado);
            this.gbxEstado.Font = new System.Drawing.Font("Rockwell", 9.75F);
            this.gbxEstado.Location = new System.Drawing.Point(130, 298);
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
            // 
            // frmRecetaEncabezado
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1028, 409);
            this.Controls.Add(this.gbxEstado);
            this.Controls.Add(this.dgvRecetas);
            this.Controls.Add(this.gpbRecetas);
            this.Controls.Add(this.navegador1);
            this.Controls.Add(this.txtEstado);
            this.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.Name = "frmRecetaEncabezado";
            this.gpbRecetas.ResumeLayout(false);
            this.gpbRecetas.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvRecetas)).EndInit();
            this.gbxEstado.ResumeLayout(false);
            this.gbxEstado.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private CapaVistaNavegador.Navegador navegador1;
        private System.Windows.Forms.TextBox txtDescripcion;
        private System.Windows.Forms.TextBox txtEstado;
        private System.Windows.Forms.Label lblDescripcion;
        private System.Windows.Forms.Label lblArea;
        private System.Windows.Forms.GroupBox gpbRecetas;
        private System.Windows.Forms.DataGridView dgvRecetas;
        private System.Windows.Forms.ComboBox cmbArea;
        private System.Windows.Forms.Label lblCodigo;
        private System.Windows.Forms.TextBox txtCodigo;
        private System.Windows.Forms.GroupBox gbxEstado;
        private System.Windows.Forms.RadioButton rbtnDesabilitado;
        private System.Windows.Forms.RadioButton rbtnHabilitado;
    }
}