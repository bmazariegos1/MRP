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
            this.navegador1 = new CapaVistaNavegador.Navegador();
            this.gpbRecetas = new System.Windows.Forms.GroupBox();
            this.txtEstado = new System.Windows.Forms.TextBox();
            this.lblEstado = new System.Windows.Forms.Label();
            this.txtCodigo = new System.Windows.Forms.TextBox();
            this.lblCodigo = new System.Windows.Forms.Label();
            this.txtFecha = new System.Windows.Forms.TextBox();
            this.txtCantidad = new System.Windows.Forms.TextBox();
            this.txtTipoP = new System.Windows.Forms.TextBox();
            this.lblTipoP = new System.Windows.Forms.Label();
            this.lblFecha = new System.Windows.Forms.Label();
            this.lblCantidad = new System.Windows.Forms.Label();
            this.dgvRecetas = new System.Windows.Forms.DataGridView();
            this.gpbRecetas.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvRecetas)).BeginInit();
            this.SuspendLayout();
            // 
            // navegador1
            // 
            this.navegador1.BackColor = System.Drawing.Color.Transparent;
            this.navegador1.Location = new System.Drawing.Point(13, 13);
            this.navegador1.Margin = new System.Windows.Forms.Padding(4);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(1412, 129);
            this.navegador1.TabIndex = 0;
            // 
            // gpbRecetas
            // 
            this.gpbRecetas.Controls.Add(this.txtEstado);
            this.gpbRecetas.Controls.Add(this.lblEstado);
            this.gpbRecetas.Controls.Add(this.txtCodigo);
            this.gpbRecetas.Controls.Add(this.lblCodigo);
            this.gpbRecetas.Controls.Add(this.txtFecha);
            this.gpbRecetas.Controls.Add(this.txtCantidad);
            this.gpbRecetas.Controls.Add(this.txtTipoP);
            this.gpbRecetas.Controls.Add(this.lblTipoP);
            this.gpbRecetas.Controls.Add(this.lblFecha);
            this.gpbRecetas.Controls.Add(this.lblCantidad);
            this.gpbRecetas.Font = new System.Drawing.Font("Rockwell", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gpbRecetas.Location = new System.Drawing.Point(54, 158);
            this.gpbRecetas.Name = "gpbRecetas";
            this.gpbRecetas.Size = new System.Drawing.Size(469, 294);
            this.gpbRecetas.TabIndex = 1;
            this.gpbRecetas.TabStop = false;
            this.gpbRecetas.Text = "Recetas";
            // 
            // txtEstado
            // 
            this.txtEstado.Location = new System.Drawing.Point(178, 239);
            this.txtEstado.Name = "txtEstado";
            this.txtEstado.Size = new System.Drawing.Size(276, 31);
            this.txtEstado.TabIndex = 24;
            // 
            // lblEstado
            // 
            this.lblEstado.AutoSize = true;
            this.lblEstado.BackColor = System.Drawing.Color.Transparent;
            this.lblEstado.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEstado.Location = new System.Drawing.Point(11, 244);
            this.lblEstado.Name = "lblEstado";
            this.lblEstado.Size = new System.Drawing.Size(62, 20);
            this.lblEstado.TabIndex = 23;
            this.lblEstado.Text = "Estado";
            // 
            // txtCodigo
            // 
            this.txtCodigo.Location = new System.Drawing.Point(178, 60);
            this.txtCodigo.Name = "txtCodigo";
            this.txtCodigo.Size = new System.Drawing.Size(276, 31);
            this.txtCodigo.TabIndex = 22;
            // 
            // lblCodigo
            // 
            this.lblCodigo.AutoSize = true;
            this.lblCodigo.BackColor = System.Drawing.Color.Transparent;
            this.lblCodigo.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCodigo.Location = new System.Drawing.Point(11, 65);
            this.lblCodigo.Name = "lblCodigo";
            this.lblCodigo.Size = new System.Drawing.Size(124, 20);
            this.lblCodigo.TabIndex = 21;
            this.lblCodigo.Text = "Codigo Receta";
            // 
            // txtFecha
            // 
            this.txtFecha.Location = new System.Drawing.Point(178, 192);
            this.txtFecha.Name = "txtFecha";
            this.txtFecha.Size = new System.Drawing.Size(276, 31);
            this.txtFecha.TabIndex = 20;
            // 
            // txtCantidad
            // 
            this.txtCantidad.Location = new System.Drawing.Point(178, 147);
            this.txtCantidad.Name = "txtCantidad";
            this.txtCantidad.Size = new System.Drawing.Size(276, 31);
            this.txtCantidad.TabIndex = 19;
            // 
            // txtTipoP
            // 
            this.txtTipoP.Location = new System.Drawing.Point(178, 104);
            this.txtTipoP.Name = "txtTipoP";
            this.txtTipoP.Size = new System.Drawing.Size(276, 31);
            this.txtTipoP.TabIndex = 18;
            // 
            // lblTipoP
            // 
            this.lblTipoP.AutoSize = true;
            this.lblTipoP.BackColor = System.Drawing.Color.Transparent;
            this.lblTipoP.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTipoP.Location = new System.Drawing.Point(11, 109);
            this.lblTipoP.Name = "lblTipoP";
            this.lblTipoP.Size = new System.Drawing.Size(84, 20);
            this.lblTipoP.TabIndex = 15;
            this.lblTipoP.Text = "ID Tipo P.";
            // 
            // lblFecha
            // 
            this.lblFecha.AutoSize = true;
            this.lblFecha.BackColor = System.Drawing.Color.Transparent;
            this.lblFecha.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblFecha.Location = new System.Drawing.Point(11, 197);
            this.lblFecha.Name = "lblFecha";
            this.lblFecha.Size = new System.Drawing.Size(56, 20);
            this.lblFecha.TabIndex = 17;
            this.lblFecha.Text = "Fecha";
            // 
            // lblCantidad
            // 
            this.lblCantidad.AutoSize = true;
            this.lblCantidad.BackColor = System.Drawing.Color.Transparent;
            this.lblCantidad.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCantidad.Location = new System.Drawing.Point(11, 152);
            this.lblCantidad.Name = "lblCantidad";
            this.lblCantidad.Size = new System.Drawing.Size(80, 20);
            this.lblCantidad.TabIndex = 16;
            this.lblCantidad.Text = "Cantidad";
            // 
            // dgvRecetas
            // 
            this.dgvRecetas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvRecetas.Location = new System.Drawing.Point(579, 145);
            this.dgvRecetas.Name = "dgvRecetas";
            this.dgvRecetas.RowHeadersWidth = 51;
            this.dgvRecetas.RowTemplate.Height = 24;
            this.dgvRecetas.Size = new System.Drawing.Size(846, 331);
            this.dgvRecetas.TabIndex = 2;
            // 
            // frmRecetas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1442, 503);
            this.Controls.Add(this.dgvRecetas);
            this.Controls.Add(this.gpbRecetas);
            this.Controls.Add(this.navegador1);
            this.Name = "frmRecetas";
            this.Text = "frmRecetas";
            this.gpbRecetas.ResumeLayout(false);
            this.gpbRecetas.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvRecetas)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private CapaVistaNavegador.Navegador navegador1;
        private System.Windows.Forms.GroupBox gpbRecetas;
        private System.Windows.Forms.TextBox txtEstado;
        private System.Windows.Forms.Label lblEstado;
        private System.Windows.Forms.TextBox txtCodigo;
        private System.Windows.Forms.Label lblCodigo;
        private System.Windows.Forms.TextBox txtFecha;
        private System.Windows.Forms.TextBox txtCantidad;
        private System.Windows.Forms.TextBox txtTipoP;
        private System.Windows.Forms.Label lblTipoP;
        private System.Windows.Forms.Label lblFecha;
        private System.Windows.Forms.Label lblCantidad;
        private System.Windows.Forms.DataGridView dgvRecetas;
    }
}