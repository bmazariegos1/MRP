namespace VISTAMRP
{
    partial class frmControlCalidad
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
            this.lblInventario = new System.Windows.Forms.Label();
            this.lblEmpleado = new System.Windows.Forms.Label();
            this.lblResultado = new System.Windows.Forms.Label();
            this.cmbOrden = new System.Windows.Forms.ComboBox();
            this.cmbInventario = new System.Windows.Forms.ComboBox();
            this.cmEmpleado = new System.Windows.Forms.ComboBox();
            this.cmbResultado = new System.Windows.Forms.ComboBox();
            this.btnIngresar = new System.Windows.Forms.Button();
            this.gpbControlCalidad = new System.Windows.Forms.GroupBox();
            this.txtCodigo = new System.Windows.Forms.TextBox();
            this.lblCodigo = new System.Windows.Forms.Label();
            this.txtEstado = new System.Windows.Forms.TextBox();
            this.lblEstado = new System.Windows.Forms.Label();
            this.gpbControlCalidad.SuspendLayout();
            this.SuspendLayout();
            // 
            // lblOrden
            // 
            this.lblOrden.AutoSize = true;
            this.lblOrden.BackColor = System.Drawing.Color.Transparent;
            this.lblOrden.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblOrden.Location = new System.Drawing.Point(32, 115);
            this.lblOrden.Name = "lblOrden";
            this.lblOrden.Size = new System.Drawing.Size(154, 20);
            this.lblOrden.TabIndex = 3;
            this.lblOrden.Text = "Orden Producción";
            // 
            // lblInventario
            // 
            this.lblInventario.AutoSize = true;
            this.lblInventario.BackColor = System.Drawing.Color.Transparent;
            this.lblInventario.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblInventario.Location = new System.Drawing.Point(32, 171);
            this.lblInventario.Name = "lblInventario";
            this.lblInventario.Size = new System.Drawing.Size(89, 20);
            this.lblInventario.TabIndex = 4;
            this.lblInventario.Text = "Inventario";
            // 
            // lblEmpleado
            // 
            this.lblEmpleado.AutoSize = true;
            this.lblEmpleado.BackColor = System.Drawing.Color.Transparent;
            this.lblEmpleado.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEmpleado.Location = new System.Drawing.Point(33, 229);
            this.lblEmpleado.Name = "lblEmpleado";
            this.lblEmpleado.Size = new System.Drawing.Size(89, 20);
            this.lblEmpleado.TabIndex = 5;
            this.lblEmpleado.Text = "Empleado";
            this.lblEmpleado.Click += new System.EventHandler(this.label2_Click);
            // 
            // lblResultado
            // 
            this.lblResultado.AutoSize = true;
            this.lblResultado.BackColor = System.Drawing.Color.Transparent;
            this.lblResultado.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblResultado.Location = new System.Drawing.Point(33, 283);
            this.lblResultado.Name = "lblResultado";
            this.lblResultado.Size = new System.Drawing.Size(116, 20);
            this.lblResultado.TabIndex = 6;
            this.lblResultado.Text = "Resultado CC";
            // 
            // cmbOrden
            // 
            this.cmbOrden.FormattingEnabled = true;
            this.cmbOrden.Location = new System.Drawing.Point(267, 107);
            this.cmbOrden.Name = "cmbOrden";
            this.cmbOrden.Size = new System.Drawing.Size(203, 34);
            this.cmbOrden.TabIndex = 7;
            this.cmbOrden.SelectedIndexChanged += new System.EventHandler(this.cmbOrden_SelectedIndexChanged);
            this.cmbOrden.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.eventOrden);
            // 
            // cmbInventario
            // 
            this.cmbInventario.FormattingEnabled = true;
            this.cmbInventario.Location = new System.Drawing.Point(267, 163);
            this.cmbInventario.Name = "cmbInventario";
            this.cmbInventario.Size = new System.Drawing.Size(203, 34);
            this.cmbInventario.TabIndex = 8;
            this.cmbInventario.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.eventInventario);
            // 
            // cmEmpleado
            // 
            this.cmEmpleado.FormattingEnabled = true;
            this.cmEmpleado.Location = new System.Drawing.Point(267, 221);
            this.cmEmpleado.Name = "cmEmpleado";
            this.cmEmpleado.Size = new System.Drawing.Size(203, 34);
            this.cmEmpleado.TabIndex = 9;
            this.cmEmpleado.SelectedIndexChanged += new System.EventHandler(this.cmEmpleado_SelectedIndexChanged);
            this.cmEmpleado.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.eventEmpleado);
            // 
            // cmbResultado
            // 
            this.cmbResultado.FormattingEnabled = true;
            this.cmbResultado.Location = new System.Drawing.Point(267, 275);
            this.cmbResultado.Name = "cmbResultado";
            this.cmbResultado.Size = new System.Drawing.Size(203, 34);
            this.cmbResultado.TabIndex = 10;
            this.cmbResultado.SelectedIndexChanged += new System.EventHandler(this.cmbResultado_SelectedIndexChanged);
            this.cmbResultado.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.eventResultado);
            // 
            // btnIngresar
            // 
            this.btnIngresar.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnIngresar.Location = new System.Drawing.Point(181, 434);
            this.btnIngresar.Name = "btnIngresar";
            this.btnIngresar.Size = new System.Drawing.Size(134, 41);
            this.btnIngresar.TabIndex = 12;
            this.btnIngresar.Text = "Ingresar";
            this.btnIngresar.UseVisualStyleBackColor = true;
            // 
            // gpbControlCalidad
            // 
            this.gpbControlCalidad.Controls.Add(this.txtCodigo);
            this.gpbControlCalidad.Controls.Add(this.lblCodigo);
            this.gpbControlCalidad.Controls.Add(this.txtEstado);
            this.gpbControlCalidad.Controls.Add(this.lblEstado);
            this.gpbControlCalidad.Controls.Add(this.cmbResultado);
            this.gpbControlCalidad.Controls.Add(this.cmEmpleado);
            this.gpbControlCalidad.Controls.Add(this.cmbInventario);
            this.gpbControlCalidad.Controls.Add(this.cmbOrden);
            this.gpbControlCalidad.Controls.Add(this.lblResultado);
            this.gpbControlCalidad.Controls.Add(this.lblEmpleado);
            this.gpbControlCalidad.Controls.Add(this.lblInventario);
            this.gpbControlCalidad.Controls.Add(this.lblOrden);
            this.gpbControlCalidad.Font = new System.Drawing.Font("Rockwell", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gpbControlCalidad.Location = new System.Drawing.Point(18, 24);
            this.gpbControlCalidad.Name = "gpbControlCalidad";
            this.gpbControlCalidad.Size = new System.Drawing.Size(502, 393);
            this.gpbControlCalidad.TabIndex = 13;
            this.gpbControlCalidad.TabStop = false;
            this.gpbControlCalidad.Text = "Control de Calidad ";
            // 
            // txtCodigo
            // 
            this.txtCodigo.Location = new System.Drawing.Point(267, 55);
            this.txtCodigo.Name = "txtCodigo";
            this.txtCodigo.Size = new System.Drawing.Size(203, 35);
            this.txtCodigo.TabIndex = 14;
            // 
            // lblCodigo
            // 
            this.lblCodigo.AutoSize = true;
            this.lblCodigo.BackColor = System.Drawing.Color.Transparent;
            this.lblCodigo.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCodigo.Location = new System.Drawing.Point(32, 63);
            this.lblCodigo.Name = "lblCodigo";
            this.lblCodigo.Size = new System.Drawing.Size(107, 20);
            this.lblCodigo.TabIndex = 13;
            this.lblCodigo.Text = "Codigo C.C.";
            // 
            // txtEstado
            // 
            this.txtEstado.Location = new System.Drawing.Point(267, 335);
            this.txtEstado.Name = "txtEstado";
            this.txtEstado.Size = new System.Drawing.Size(202, 35);
            this.txtEstado.TabIndex = 12;
            // 
            // lblEstado
            // 
            this.lblEstado.AutoSize = true;
            this.lblEstado.BackColor = System.Drawing.Color.Transparent;
            this.lblEstado.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEstado.Location = new System.Drawing.Point(33, 343);
            this.lblEstado.Name = "lblEstado";
            this.lblEstado.Size = new System.Drawing.Size(62, 20);
            this.lblEstado.TabIndex = 11;
            this.lblEstado.Text = "Estado";
            // 
            // frmControlCalidad
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(532, 503);
            this.Controls.Add(this.gpbControlCalidad);
            this.Controls.Add(this.btnIngresar);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmControlCalidad";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmControlCalidad";
            this.Load += new System.EventHandler(this.frmControlCalidad_Load);
            this.gpbControlCalidad.ResumeLayout(false);
            this.gpbControlCalidad.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label lblOrden;
        private System.Windows.Forms.Label lblInventario;
        private System.Windows.Forms.Label lblEmpleado;
        private System.Windows.Forms.Label lblResultado;
        private System.Windows.Forms.ComboBox cmbOrden;
        private System.Windows.Forms.ComboBox cmbInventario;
        private System.Windows.Forms.ComboBox cmEmpleado;
        private System.Windows.Forms.ComboBox cmbResultado;
        private System.Windows.Forms.Button btnIngresar;
        private System.Windows.Forms.GroupBox gpbControlCalidad;
        private System.Windows.Forms.TextBox txtEstado;
        private System.Windows.Forms.Label lblEstado;
        private System.Windows.Forms.Label lblCodigo;
        private System.Windows.Forms.TextBox txtCodigo;
    }
}