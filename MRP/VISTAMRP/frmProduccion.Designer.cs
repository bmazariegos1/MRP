namespace VISTAMRP
{
    partial class frmProduccion
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
            this.lblCodigoPedido = new System.Windows.Forms.Label();
            this.txtCodigoPedido = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.cmbEstadoPedido = new System.Windows.Forms.ComboBox();
            this.txtCodEstadoPedido = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtComentarioPedido = new System.Windows.Forms.TextBox();
            this.txtEstado = new System.Windows.Forms.TextBox();
            this.dgvControlProduccion = new System.Windows.Forms.DataGridView();
            this.btnFinalizarPedido = new System.Windows.Forms.Button();
            this.dgvdetallePedido = new System.Windows.Forms.DataGridView();
            this.lblPedidos = new System.Windows.Forms.Label();
            this.lblDetallesPedido = new System.Windows.Forms.Label();
            this.colCodPedido = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColCodProducto = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColCantidad = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dgvControlProduccion)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvdetallePedido)).BeginInit();
            this.SuspendLayout();
            // 
            // navegador1
            // 
            this.navegador1.BackColor = System.Drawing.Color.Transparent;
            this.navegador1.Location = new System.Drawing.Point(12, 12);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(1059, 105);
            this.navegador1.TabIndex = 0;
            this.navegador1.Load += new System.EventHandler(this.navegador1_Load);
            // 
            // lblCodigo
            // 
            this.lblCodigo.AutoSize = true;
            this.lblCodigo.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCodigo.Location = new System.Drawing.Point(25, 169);
            this.lblCodigo.Name = "lblCodigo";
            this.lblCodigo.Size = new System.Drawing.Size(137, 16);
            this.lblCodigo.TabIndex = 1;
            this.lblCodigo.Text = "Código de Producción";
            // 
            // txtCodigo
            // 
            this.txtCodigo.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtCodigo.Location = new System.Drawing.Point(174, 166);
            this.txtCodigo.Name = "txtCodigo";
            this.txtCodigo.Size = new System.Drawing.Size(100, 23);
            this.txtCodigo.TabIndex = 2;
            this.txtCodigo.Tag = "pk_id_control_producto";
            // 
            // lblCodigoPedido
            // 
            this.lblCodigoPedido.AutoSize = true;
            this.lblCodigoPedido.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCodigoPedido.Location = new System.Drawing.Point(46, 198);
            this.lblCodigoPedido.Name = "lblCodigoPedido";
            this.lblCodigoPedido.Size = new System.Drawing.Size(112, 16);
            this.lblCodigoPedido.TabIndex = 3;
            this.lblCodigoPedido.Text = "Código de Pedido";
            // 
            // txtCodigoPedido
            // 
            this.txtCodigoPedido.Enabled = false;
            this.txtCodigoPedido.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtCodigoPedido.Location = new System.Drawing.Point(174, 198);
            this.txtCodigoPedido.Name = "txtCodigoPedido";
            this.txtCodigoPedido.Size = new System.Drawing.Size(100, 23);
            this.txtCodigoPedido.TabIndex = 4;
            this.txtCodigoPedido.Tag = "fk_id_estado_produccion_control_producto";
            this.txtCodigoPedido.TextChanged += new System.EventHandler(this.txtCodigoPedido_TextChanged);
            this.txtCodigoPedido.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtCodigoPedido_KeyPress);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(44, 229);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(112, 16);
            this.label1.TabIndex = 5;
            this.label1.Text = "Estado del Pedido";
            // 
            // cmbEstadoPedido
            // 
            this.cmbEstadoPedido.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbEstadoPedido.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbEstadoPedido.FormattingEnabled = true;
            this.cmbEstadoPedido.Location = new System.Drawing.Point(174, 229);
            this.cmbEstadoPedido.Name = "cmbEstadoPedido";
            this.cmbEstadoPedido.Size = new System.Drawing.Size(136, 24);
            this.cmbEstadoPedido.TabIndex = 6;
            this.cmbEstadoPedido.Tag = "saltar";
            this.cmbEstadoPedido.SelectedIndexChanged += new System.EventHandler(this.cmbEstadoPedido_SelectedIndexChanged);
            // 
            // txtCodEstadoPedido
            // 
            this.txtCodEstadoPedido.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtCodEstadoPedido.Location = new System.Drawing.Point(316, 230);
            this.txtCodEstadoPedido.Name = "txtCodEstadoPedido";
            this.txtCodEstadoPedido.Size = new System.Drawing.Size(58, 23);
            this.txtCodEstadoPedido.TabIndex = 7;
            this.txtCodEstadoPedido.Tag = "fk_id_estado_produccion_control_producto";
            this.txtCodEstadoPedido.TextChanged += new System.EventHandler(this.txtCodEstadoPedido_TextChanged);
            this.txtCodEstadoPedido.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtCodEstadoPedido_KeyPress);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(41, 264);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(119, 16);
            this.label2.TabIndex = 8;
            this.label2.Text = "Comentario Pedido";
            // 
            // txtComentarioPedido
            // 
            this.txtComentarioPedido.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtComentarioPedido.Location = new System.Drawing.Point(174, 264);
            this.txtComentarioPedido.Name = "txtComentarioPedido";
            this.txtComentarioPedido.Size = new System.Drawing.Size(121, 23);
            this.txtComentarioPedido.TabIndex = 9;
            this.txtComentarioPedido.Tag = "resultado_control_producto";
            // 
            // txtEstado
            // 
            this.txtEstado.Enabled = false;
            this.txtEstado.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtEstado.Location = new System.Drawing.Point(37, 292);
            this.txtEstado.Name = "txtEstado";
            this.txtEstado.Size = new System.Drawing.Size(34, 23);
            this.txtEstado.TabIndex = 10;
            this.txtEstado.Tag = "estado_control_producto";
            this.txtEstado.Visible = false;
            // 
            // dgvControlProduccion
            // 
            this.dgvControlProduccion.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvControlProduccion.Location = new System.Drawing.Point(414, 131);
            this.dgvControlProduccion.Name = "dgvControlProduccion";
            this.dgvControlProduccion.ReadOnly = true;
            this.dgvControlProduccion.Size = new System.Drawing.Size(647, 164);
            this.dgvControlProduccion.TabIndex = 11;
            // 
            // btnFinalizarPedido
            // 
            this.btnFinalizarPedido.BackColor = System.Drawing.Color.Green;
            this.btnFinalizarPedido.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnFinalizarPedido.ForeColor = System.Drawing.SystemColors.ControlLight;
            this.btnFinalizarPedido.Location = new System.Drawing.Point(145, 322);
            this.btnFinalizarPedido.Name = "btnFinalizarPedido";
            this.btnFinalizarPedido.Size = new System.Drawing.Size(95, 49);
            this.btnFinalizarPedido.TabIndex = 12;
            this.btnFinalizarPedido.Tag = "saltar";
            this.btnFinalizarPedido.Text = "Finalizar Pedido";
            this.btnFinalizarPedido.UseVisualStyleBackColor = false;
            this.btnFinalizarPedido.Click += new System.EventHandler(this.btnFinalizarPedido_Click);
            // 
            // dgvdetallePedido
            // 
            this.dgvdetallePedido.AllowUserToDeleteRows = false;
            this.dgvdetallePedido.AllowUserToOrderColumns = true;
            this.dgvdetallePedido.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvdetallePedido.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colCodPedido,
            this.ColCodProducto,
            this.ColCantidad});
            this.dgvdetallePedido.Location = new System.Drawing.Point(414, 328);
            this.dgvdetallePedido.Name = "dgvdetallePedido";
            this.dgvdetallePedido.ReadOnly = true;
            this.dgvdetallePedido.Size = new System.Drawing.Size(647, 132);
            this.dgvdetallePedido.TabIndex = 13;
            // 
            // lblPedidos
            // 
            this.lblPedidos.AutoSize = true;
            this.lblPedidos.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblPedidos.Location = new System.Drawing.Point(411, 112);
            this.lblPedidos.Name = "lblPedidos";
            this.lblPedidos.Size = new System.Drawing.Size(151, 15);
            this.lblPedidos.TabIndex = 14;
            this.lblPedidos.Text = "Pedidos en Producción";
            // 
            // lblDetallesPedido
            // 
            this.lblDetallesPedido.AutoSize = true;
            this.lblDetallesPedido.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDetallesPedido.Location = new System.Drawing.Point(411, 308);
            this.lblDetallesPedido.Name = "lblDetallesPedido";
            this.lblDetallesPedido.Size = new System.Drawing.Size(126, 15);
            this.lblDetallesPedido.TabIndex = 15;
            this.lblDetallesPedido.Text = "Detalles de Pedido";
            // 
            // colCodPedido
            // 
            this.colCodPedido.HeaderText = "Código de Pedido";
            this.colCodPedido.Name = "colCodPedido";
            this.colCodPedido.ReadOnly = true;
            // 
            // ColCodProducto
            // 
            this.ColCodProducto.HeaderText = "Código Producto";
            this.ColCodProducto.Name = "ColCodProducto";
            this.ColCodProducto.ReadOnly = true;
            // 
            // ColCantidad
            // 
            this.ColCantidad.HeaderText = "Cantidad";
            this.ColCantidad.Name = "ColCantidad";
            this.ColCantidad.ReadOnly = true;
            // 
            // frmProduccion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.PowderBlue;
            this.ClientSize = new System.Drawing.Size(1086, 472);
            this.Controls.Add(this.lblDetallesPedido);
            this.Controls.Add(this.lblPedidos);
            this.Controls.Add(this.dgvdetallePedido);
            this.Controls.Add(this.btnFinalizarPedido);
            this.Controls.Add(this.dgvControlProduccion);
            this.Controls.Add(this.txtEstado);
            this.Controls.Add(this.txtComentarioPedido);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtCodEstadoPedido);
            this.Controls.Add(this.cmbEstadoPedido);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtCodigoPedido);
            this.Controls.Add(this.lblCodigoPedido);
            this.Controls.Add(this.txtCodigo);
            this.Controls.Add(this.lblCodigo);
            this.Controls.Add(this.navegador1);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.MaximizeBox = false;
            this.Name = "frmProduccion";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "3313 - Control de Producción";
            ((System.ComponentModel.ISupportInitialize)(this.dgvControlProduccion)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvdetallePedido)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private CapaVistaNavegador.Navegador navegador1;
        private System.Windows.Forms.Label lblCodigo;
        private System.Windows.Forms.TextBox txtCodigo;
        private System.Windows.Forms.Label lblCodigoPedido;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cmbEstadoPedido;
        private System.Windows.Forms.TextBox txtCodEstadoPedido;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtComentarioPedido;
        private System.Windows.Forms.TextBox txtEstado;
        private System.Windows.Forms.DataGridView dgvControlProduccion;
        private System.Windows.Forms.Button btnFinalizarPedido;
        public System.Windows.Forms.TextBox txtCodigoPedido;
        private System.Windows.Forms.DataGridView dgvdetallePedido;
        private System.Windows.Forms.Label lblPedidos;
        private System.Windows.Forms.Label lblDetallesPedido;
        private System.Windows.Forms.DataGridViewTextBoxColumn colCodPedido;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColCodProducto;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColCantidad;
    }
}