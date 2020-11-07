namespace VISTAMRP
{
    partial class frmEmpleadoh
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
            this.lblOrden = new System.Windows.Forms.Label();
            this.lblFecha = new System.Windows.Forms.Label();
            this.lblEstado1 = new System.Windows.Forms.Label();
            this.txtOrden = new System.Windows.Forms.TextBox();
            this.cmbEmpleado = new System.Windows.Forms.ComboBox();
            this.navegador1 = new CapaVistaNavegador.Navegador();
            this.gpbHoras = new System.Windows.Forms.GroupBox();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.cmbEstado1 = new System.Windows.Forms.ComboBox();
            this.txtCodigo = new System.Windows.Forms.TextBox();
            this.lblEmpleado = new System.Windows.Forms.Label();
            this.lblCodigo = new System.Windows.Forms.Label();
            this.gpbDetalle = new System.Windows.Forms.GroupBox();
            this.txtTiempo = new System.Windows.Forms.TextBox();
            this.txtDescripcion = new System.Windows.Forms.TextBox();
            this.cmbHora = new System.Windows.Forms.ComboBox();
            this.txtDetalle = new System.Windows.Forms.TextBox();
            this.lblHora = new System.Windows.Forms.Label();
            this.lblDetalle = new System.Windows.Forms.Label();
            this.txtEstado = new System.Windows.Forms.TextBox();
            this.lblEstado2 = new System.Windows.Forms.Label();
            this.lblTiempo = new System.Windows.Forms.Label();
            this.lblDescripcion = new System.Windows.Forms.Label();
            this.dgvEmpleado = new System.Windows.Forms.DataGridView();
            this.gpbHoras.SuspendLayout();
            this.gpbDetalle.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvEmpleado)).BeginInit();
            this.SuspendLayout();
            // 
            // lblOrden
            // 
            this.lblOrden.AutoSize = true;
            this.lblOrden.BackColor = System.Drawing.Color.Transparent;
            this.lblOrden.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblOrden.Location = new System.Drawing.Point(29, 154);
            this.lblOrden.Name = "lblOrden";
            this.lblOrden.Size = new System.Drawing.Size(60, 20);
            this.lblOrden.TabIndex = 1;
            this.lblOrden.Text = "Orden";
            // 
            // lblFecha
            // 
            this.lblFecha.AutoSize = true;
            this.lblFecha.BackColor = System.Drawing.Color.Transparent;
            this.lblFecha.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblFecha.Location = new System.Drawing.Point(29, 201);
            this.lblFecha.Name = "lblFecha";
            this.lblFecha.Size = new System.Drawing.Size(56, 20);
            this.lblFecha.TabIndex = 2;
            this.lblFecha.Text = "Fecha";
            // 
            // lblEstado1
            // 
            this.lblEstado1.AutoSize = true;
            this.lblEstado1.BackColor = System.Drawing.Color.Transparent;
            this.lblEstado1.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEstado1.Location = new System.Drawing.Point(28, 249);
            this.lblEstado1.Name = "lblEstado1";
            this.lblEstado1.Size = new System.Drawing.Size(62, 20);
            this.lblEstado1.TabIndex = 3;
            this.lblEstado1.Text = "Estado";
            // 
            // txtOrden
            // 
            this.txtOrden.Location = new System.Drawing.Point(239, 154);
            this.txtOrden.Name = "txtOrden";
            this.txtOrden.Size = new System.Drawing.Size(215, 31);
            this.txtOrden.TabIndex = 6;
            this.txtOrden.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.eventOrden);
            // 
            // cmbEmpleado
            // 
            this.cmbEmpleado.FormattingEnabled = true;
            this.cmbEmpleado.Location = new System.Drawing.Point(239, 105);
            this.cmbEmpleado.Name = "cmbEmpleado";
            this.cmbEmpleado.Size = new System.Drawing.Size(214, 30);
            this.cmbEmpleado.TabIndex = 14;
            this.cmbEmpleado.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.eventEmpleado);
            // 
            // navegador1
            // 
            this.navegador1.BackColor = System.Drawing.Color.Transparent;
            this.navegador1.Location = new System.Drawing.Point(13, 13);
            this.navegador1.Margin = new System.Windows.Forms.Padding(4);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(1420, 129);
            this.navegador1.TabIndex = 15;
            this.navegador1.Load += new System.EventHandler(this.navegador1_Load);
            // 
            // gpbHoras
            // 
            this.gpbHoras.BackColor = System.Drawing.Color.CadetBlue;
            this.gpbHoras.Controls.Add(this.dateTimePicker1);
            this.gpbHoras.Controls.Add(this.cmbEstado1);
            this.gpbHoras.Controls.Add(this.txtCodigo);
            this.gpbHoras.Controls.Add(this.lblEmpleado);
            this.gpbHoras.Controls.Add(this.lblCodigo);
            this.gpbHoras.Controls.Add(this.cmbEmpleado);
            this.gpbHoras.Controls.Add(this.txtOrden);
            this.gpbHoras.Controls.Add(this.lblEstado1);
            this.gpbHoras.Controls.Add(this.lblFecha);
            this.gpbHoras.Controls.Add(this.lblOrden);
            this.gpbHoras.Font = new System.Drawing.Font("Rockwell", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gpbHoras.Location = new System.Drawing.Point(36, 149);
            this.gpbHoras.Name = "gpbHoras";
            this.gpbHoras.Size = new System.Drawing.Size(469, 324);
            this.gpbHoras.TabIndex = 18;
            this.gpbHoras.TabStop = false;
            this.gpbHoras.Text = "Horas Empleado";
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Location = new System.Drawing.Point(239, 201);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(214, 31);
            this.dateTimePicker1.TabIndex = 21;
            // 
            // cmbEstado1
            // 
            this.cmbEstado1.FormattingEnabled = true;
            this.cmbEstado1.Location = new System.Drawing.Point(239, 250);
            this.cmbEstado1.Name = "cmbEstado1";
            this.cmbEstado1.Size = new System.Drawing.Size(214, 30);
            this.cmbEstado1.TabIndex = 20;
            // 
            // txtCodigo
            // 
            this.txtCodigo.Location = new System.Drawing.Point(239, 53);
            this.txtCodigo.Name = "txtCodigo";
            this.txtCodigo.Size = new System.Drawing.Size(215, 31);
            this.txtCodigo.TabIndex = 19;
            // 
            // lblEmpleado
            // 
            this.lblEmpleado.AutoSize = true;
            this.lblEmpleado.BackColor = System.Drawing.Color.Transparent;
            this.lblEmpleado.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEmpleado.Location = new System.Drawing.Point(29, 105);
            this.lblEmpleado.Name = "lblEmpleado";
            this.lblEmpleado.Size = new System.Drawing.Size(110, 20);
            this.lblEmpleado.TabIndex = 16;
            this.lblEmpleado.Text = "ID Empleado";
            // 
            // lblCodigo
            // 
            this.lblCodigo.AutoSize = true;
            this.lblCodigo.BackColor = System.Drawing.Color.Transparent;
            this.lblCodigo.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCodigo.Location = new System.Drawing.Point(29, 58);
            this.lblCodigo.Name = "lblCodigo";
            this.lblCodigo.Size = new System.Drawing.Size(104, 20);
            this.lblCodigo.TabIndex = 15;
            this.lblCodigo.Text = "Codigo H.E.";
            // 
            // gpbDetalle
            // 
            this.gpbDetalle.BackColor = System.Drawing.Color.CadetBlue;
            this.gpbDetalle.Controls.Add(this.txtTiempo);
            this.gpbDetalle.Controls.Add(this.txtDescripcion);
            this.gpbDetalle.Controls.Add(this.cmbHora);
            this.gpbDetalle.Controls.Add(this.txtDetalle);
            this.gpbDetalle.Controls.Add(this.lblHora);
            this.gpbDetalle.Controls.Add(this.lblDetalle);
            this.gpbDetalle.Controls.Add(this.txtEstado);
            this.gpbDetalle.Controls.Add(this.lblEstado2);
            this.gpbDetalle.Controls.Add(this.lblTiempo);
            this.gpbDetalle.Controls.Add(this.lblDescripcion);
            this.gpbDetalle.Font = new System.Drawing.Font("Rockwell", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gpbDetalle.Location = new System.Drawing.Point(532, 149);
            this.gpbDetalle.Name = "gpbDetalle";
            this.gpbDetalle.Size = new System.Drawing.Size(474, 324);
            this.gpbDetalle.TabIndex = 19;
            this.gpbDetalle.TabStop = false;
            this.gpbDetalle.Text = "Detalle Empleado";
            // 
            // txtTiempo
            // 
            this.txtTiempo.Location = new System.Drawing.Point(238, 204);
            this.txtTiempo.Name = "txtTiempo";
            this.txtTiempo.Size = new System.Drawing.Size(215, 31);
            this.txtTiempo.TabIndex = 23;
            // 
            // txtDescripcion
            // 
            this.txtDescripcion.Location = new System.Drawing.Point(239, 155);
            this.txtDescripcion.Name = "txtDescripcion";
            this.txtDescripcion.Size = new System.Drawing.Size(213, 31);
            this.txtDescripcion.TabIndex = 22;
            // 
            // cmbHora
            // 
            this.cmbHora.FormattingEnabled = true;
            this.cmbHora.Location = new System.Drawing.Point(239, 105);
            this.cmbHora.Name = "cmbHora";
            this.cmbHora.Size = new System.Drawing.Size(214, 30);
            this.cmbHora.TabIndex = 20;
            // 
            // txtDetalle
            // 
            this.txtDetalle.Location = new System.Drawing.Point(239, 53);
            this.txtDetalle.Name = "txtDetalle";
            this.txtDetalle.Size = new System.Drawing.Size(215, 31);
            this.txtDetalle.TabIndex = 19;
            // 
            // lblHora
            // 
            this.lblHora.AutoSize = true;
            this.lblHora.BackColor = System.Drawing.Color.Transparent;
            this.lblHora.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblHora.Location = new System.Drawing.Point(29, 105);
            this.lblHora.Name = "lblHora";
            this.lblHora.Size = new System.Drawing.Size(88, 20);
            this.lblHora.TabIndex = 16;
            this.lblHora.Text = "ID Hora E.";
            // 
            // lblDetalle
            // 
            this.lblDetalle.AutoSize = true;
            this.lblDetalle.BackColor = System.Drawing.Color.Transparent;
            this.lblDetalle.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDetalle.Location = new System.Drawing.Point(29, 58);
            this.lblDetalle.Name = "lblDetalle";
            this.lblDetalle.Size = new System.Drawing.Size(86, 20);
            this.lblDetalle.TabIndex = 15;
            this.lblDetalle.Text = "ID Detalle";
            // 
            // txtEstado
            // 
            this.txtEstado.Location = new System.Drawing.Point(239, 249);
            this.txtEstado.Name = "txtEstado";
            this.txtEstado.Size = new System.Drawing.Size(215, 31);
            this.txtEstado.TabIndex = 6;
            // 
            // lblEstado2
            // 
            this.lblEstado2.AutoSize = true;
            this.lblEstado2.BackColor = System.Drawing.Color.Transparent;
            this.lblEstado2.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEstado2.Location = new System.Drawing.Point(28, 249);
            this.lblEstado2.Name = "lblEstado2";
            this.lblEstado2.Size = new System.Drawing.Size(62, 20);
            this.lblEstado2.TabIndex = 3;
            this.lblEstado2.Text = "Estado";
            // 
            // lblTiempo
            // 
            this.lblTiempo.AutoSize = true;
            this.lblTiempo.BackColor = System.Drawing.Color.Transparent;
            this.lblTiempo.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTiempo.Location = new System.Drawing.Point(29, 201);
            this.lblTiempo.Name = "lblTiempo";
            this.lblTiempo.Size = new System.Drawing.Size(69, 20);
            this.lblTiempo.TabIndex = 2;
            this.lblTiempo.Text = "Tiempo";
            // 
            // lblDescripcion
            // 
            this.lblDescripcion.AutoSize = true;
            this.lblDescripcion.BackColor = System.Drawing.Color.Transparent;
            this.lblDescripcion.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDescripcion.Location = new System.Drawing.Point(29, 154);
            this.lblDescripcion.Name = "lblDescripcion";
            this.lblDescripcion.Size = new System.Drawing.Size(104, 20);
            this.lblDescripcion.TabIndex = 1;
            this.lblDescripcion.Text = "Descripcion";
            // 
            // dgvEmpleado
            // 
            this.dgvEmpleado.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvEmpleado.Location = new System.Drawing.Point(1036, 149);
            this.dgvEmpleado.Name = "dgvEmpleado";
            this.dgvEmpleado.RowHeadersWidth = 51;
            this.dgvEmpleado.RowTemplate.Height = 24;
            this.dgvEmpleado.Size = new System.Drawing.Size(383, 323);
            this.dgvEmpleado.TabIndex = 20;
            // 
            // frmEmpleadoh
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1442, 503);
            this.Controls.Add(this.dgvEmpleado);
            this.Controls.Add(this.gpbDetalle);
            this.Controls.Add(this.gpbHoras);
            this.Controls.Add(this.navegador1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmEmpleadoh";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmEmpleadoh";
            this.gpbHoras.ResumeLayout(false);
            this.gpbHoras.PerformLayout();
            this.gpbDetalle.ResumeLayout(false);
            this.gpbDetalle.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvEmpleado)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Label lblOrden;
        private System.Windows.Forms.Label lblFecha;
        private System.Windows.Forms.Label lblEstado1;
        private System.Windows.Forms.TextBox txtOrden;
        private System.Windows.Forms.ComboBox cmbEmpleado;
        private CapaVistaNavegador.Navegador navegador1;
        private System.Windows.Forms.GroupBox gpbHoras;
        private System.Windows.Forms.TextBox txtCodigo;
        private System.Windows.Forms.Label lblEmpleado;
        private System.Windows.Forms.Label lblCodigo;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.ComboBox cmbEstado1;
        private System.Windows.Forms.GroupBox gpbDetalle;
        private System.Windows.Forms.TextBox txtTiempo;
        private System.Windows.Forms.TextBox txtDescripcion;
        private System.Windows.Forms.ComboBox cmbHora;
        private System.Windows.Forms.TextBox txtDetalle;
        private System.Windows.Forms.Label lblHora;
        private System.Windows.Forms.Label lblDetalle;
        private System.Windows.Forms.TextBox txtEstado;
        private System.Windows.Forms.Label lblEstado2;
        private System.Windows.Forms.Label lblTiempo;
        private System.Windows.Forms.Label lblDescripcion;
        private System.Windows.Forms.DataGridView dgvEmpleado;
    }
}