namespace VISTAMRP
{
    partial class frmOrdenes
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
            this.lblMp = new System.Windows.Forms.Label();
            this.lblCodigo = new System.Windows.Forms.Label();
            this.lblCantidad = new System.Windows.Forms.Label();
            this.lblfecha = new System.Windows.Forms.Label();
            this.txtCodigo = new System.Windows.Forms.TextBox();
            this.dgvOrdenes = new System.Windows.Forms.DataGridView();
            this.navegador1 = new CapaVistaNavegador.Navegador();
            this.gpbOrdenes = new System.Windows.Forms.GroupBox();
            this.dtpFecha = new System.Windows.Forms.DateTimePicker();
            this.cmbMp = new System.Windows.Forms.ComboBox();
            this.txtEstado = new System.Windows.Forms.TextBox();
            this.lblEstado = new System.Windows.Forms.Label();
            this.txtCantidad = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgvOrdenes)).BeginInit();
            this.gpbOrdenes.SuspendLayout();
            this.SuspendLayout();
            // 
            // lblMp
            // 
            this.lblMp.AutoSize = true;
            this.lblMp.BackColor = System.Drawing.Color.Transparent;
            this.lblMp.Font = new System.Drawing.Font("Rockwell", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMp.Location = new System.Drawing.Point(35, 135);
            this.lblMp.Name = "lblMp";
            this.lblMp.Size = new System.Drawing.Size(165, 22);
            this.lblMp.TabIndex = 5;
            this.lblMp.Text = "ID Materia Prima";
            // 
            // lblCodigo
            // 
            this.lblCodigo.AutoSize = true;
            this.lblCodigo.BackColor = System.Drawing.Color.Transparent;
            this.lblCodigo.Font = new System.Drawing.Font("Rockwell", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCodigo.Location = new System.Drawing.Point(35, 81);
            this.lblCodigo.Name = "lblCodigo";
            this.lblCodigo.Size = new System.Drawing.Size(79, 22);
            this.lblCodigo.TabIndex = 4;
            this.lblCodigo.Text = "Codigo";
            // 
            // lblCantidad
            // 
            this.lblCantidad.AutoSize = true;
            this.lblCantidad.BackColor = System.Drawing.Color.Transparent;
            this.lblCantidad.Font = new System.Drawing.Font("Rockwell", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCantidad.Location = new System.Drawing.Point(35, 239);
            this.lblCantidad.Name = "lblCantidad";
            this.lblCantidad.Size = new System.Drawing.Size(96, 22);
            this.lblCantidad.TabIndex = 7;
            this.lblCantidad.Text = "Cantidad";
            // 
            // lblfecha
            // 
            this.lblfecha.AutoSize = true;
            this.lblfecha.BackColor = System.Drawing.Color.Transparent;
            this.lblfecha.Font = new System.Drawing.Font("Rockwell", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblfecha.Location = new System.Drawing.Point(35, 185);
            this.lblfecha.Name = "lblfecha";
            this.lblfecha.Size = new System.Drawing.Size(121, 22);
            this.lblfecha.TabIndex = 6;
            this.lblfecha.Text = "Fecha Envio";
            // 
            // txtCodigo
            // 
            this.txtCodigo.Location = new System.Drawing.Point(255, 79);
            this.txtCodigo.Name = "txtCodigo";
            this.txtCodigo.Size = new System.Drawing.Size(235, 35);
            this.txtCodigo.TabIndex = 12;
            this.txtCodigo.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.eventFecha);
            // 
            // dgvOrdenes
            // 
            this.dgvOrdenes.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvOrdenes.Location = new System.Drawing.Point(570, 166);
            this.dgvOrdenes.Name = "dgvOrdenes";
            this.dgvOrdenes.RowHeadersWidth = 51;
            this.dgvOrdenes.RowTemplate.Height = 24;
            this.dgvOrdenes.Size = new System.Drawing.Size(842, 310);
            this.dgvOrdenes.TabIndex = 16;
            // 
            // navegador1
            // 
            this.navegador1.BackColor = System.Drawing.Color.Transparent;
            this.navegador1.Location = new System.Drawing.Point(17, 13);
            this.navegador1.Margin = new System.Windows.Forms.Padding(4);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(1412, 129);
            this.navegador1.TabIndex = 18;
            // 
            // gpbOrdenes
            // 
            this.gpbOrdenes.Controls.Add(this.dtpFecha);
            this.gpbOrdenes.Controls.Add(this.cmbMp);
            this.gpbOrdenes.Controls.Add(this.txtEstado);
            this.gpbOrdenes.Controls.Add(this.lblEstado);
            this.gpbOrdenes.Controls.Add(this.txtCantidad);
            this.gpbOrdenes.Controls.Add(this.txtCodigo);
            this.gpbOrdenes.Controls.Add(this.lblCantidad);
            this.gpbOrdenes.Controls.Add(this.lblfecha);
            this.gpbOrdenes.Controls.Add(this.lblMp);
            this.gpbOrdenes.Controls.Add(this.lblCodigo);
            this.gpbOrdenes.Font = new System.Drawing.Font("Rockwell", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gpbOrdenes.Location = new System.Drawing.Point(19, 142);
            this.gpbOrdenes.Name = "gpbOrdenes";
            this.gpbOrdenes.Size = new System.Drawing.Size(528, 333);
            this.gpbOrdenes.TabIndex = 19;
            this.gpbOrdenes.TabStop = false;
            this.gpbOrdenes.Text = "Ordenes ";
            // 
            // dtpFecha
            // 
            this.dtpFecha.Location = new System.Drawing.Point(255, 174);
            this.dtpFecha.Name = "dtpFecha";
            this.dtpFecha.Size = new System.Drawing.Size(235, 35);
            this.dtpFecha.TabIndex = 19;
            // 
            // cmbMp
            // 
            this.cmbMp.FormattingEnabled = true;
            this.cmbMp.Location = new System.Drawing.Point(255, 127);
            this.cmbMp.Name = "cmbMp";
            this.cmbMp.Size = new System.Drawing.Size(235, 34);
            this.cmbMp.TabIndex = 18;
            // 
            // txtEstado
            // 
            this.txtEstado.Location = new System.Drawing.Point(255, 283);
            this.txtEstado.Name = "txtEstado";
            this.txtEstado.Size = new System.Drawing.Size(235, 35);
            this.txtEstado.TabIndex = 17;
            // 
            // lblEstado
            // 
            this.lblEstado.AutoSize = true;
            this.lblEstado.BackColor = System.Drawing.Color.Transparent;
            this.lblEstado.Font = new System.Drawing.Font("Rockwell", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEstado.Location = new System.Drawing.Point(35, 291);
            this.lblEstado.Name = "lblEstado";
            this.lblEstado.Size = new System.Drawing.Size(73, 22);
            this.lblEstado.TabIndex = 16;
            this.lblEstado.Text = "Estado";
            // 
            // txtCantidad
            // 
            this.txtCantidad.Location = new System.Drawing.Point(255, 231);
            this.txtCantidad.Name = "txtCantidad";
            this.txtCantidad.Size = new System.Drawing.Size(235, 35);
            this.txtCantidad.TabIndex = 15;
            // 
            // frmOrdenes
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1442, 503);
            this.Controls.Add(this.gpbOrdenes);
            this.Controls.Add(this.navegador1);
            this.Controls.Add(this.dgvOrdenes);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmOrdenes";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmOrdenes";
            this.Load += new System.EventHandler(this.frmOrdenes_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvOrdenes)).EndInit();
            this.gpbOrdenes.ResumeLayout(false);
            this.gpbOrdenes.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Label lblMp;
        private System.Windows.Forms.Label lblCodigo;
        private System.Windows.Forms.Label lblCantidad;
        private System.Windows.Forms.Label lblfecha;
        private System.Windows.Forms.TextBox txtCodigo;
        private System.Windows.Forms.DataGridView dgvOrdenes;
        private CapaVistaNavegador.Navegador navegador1;
        private System.Windows.Forms.GroupBox gpbOrdenes;
        private System.Windows.Forms.TextBox txtEstado;
        private System.Windows.Forms.Label lblEstado;
        private System.Windows.Forms.TextBox txtCantidad;
        private System.Windows.Forms.DateTimePicker dtpFecha;
        private System.Windows.Forms.ComboBox cmbMp;
    }
}