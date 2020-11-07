namespace VISTAMRP
{
    partial class frmMDI
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.menuStrip = new System.Windows.Forms.MenuStrip();
            this.inicioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cerrarSesionToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mantenimientosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.productosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.CategoriaDeProductosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.estadosDeProducciónToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.procesosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolsMenu = new System.Windows.Forms.ToolStripMenuItem();
<<<<<<< HEAD
            this.seguridadToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cambioDeContraseñaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mantenimientoUsuarioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mantenimientoAplicacionesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.asignacionDePerfilYAplicacionesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mantenimientoModuloToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.perfilToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mantenimientoPerfilToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.asignacionDeAplicacionAPerfilToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
=======
>>>>>>> 3dfbd90fa96137925a44b3160192e0f423bcfaf9
            this.helpMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator8 = new System.Windows.Forms.ToolStripSeparator();
            this.toolTip = new System.Windows.Forms.ToolTip(this.components);
            this.txtUsuario = new System.Windows.Forms.TextBox();
<<<<<<< HEAD
            this.mantenimientoDeLineaDeProductoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
=======
            this.seguridadToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.lineaDeProductoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
>>>>>>> 3dfbd90fa96137925a44b3160192e0f423bcfaf9
            this.menuStrip.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip
            // 
            this.menuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.inicioToolStripMenuItem,
            this.mantenimientosToolStripMenuItem,
            this.procesosToolStripMenuItem,
            this.toolsMenu,
            this.helpMenu});
            this.menuStrip.Location = new System.Drawing.Point(0, 0);
            this.menuStrip.Name = "menuStrip";
            this.menuStrip.Size = new System.Drawing.Size(986, 24);
            this.menuStrip.TabIndex = 0;
            this.menuStrip.Text = "MenuStrip";
            // 
            // inicioToolStripMenuItem
            // 
            this.inicioToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.cerrarSesionToolStripMenuItem});
            this.inicioToolStripMenuItem.Name = "inicioToolStripMenuItem";
            this.inicioToolStripMenuItem.Size = new System.Drawing.Size(48, 20);
            this.inicioToolStripMenuItem.Text = "Inicio";
            // 
            // cerrarSesionToolStripMenuItem
            // 
            this.cerrarSesionToolStripMenuItem.Name = "cerrarSesionToolStripMenuItem";
            this.cerrarSesionToolStripMenuItem.Size = new System.Drawing.Size(143, 22);
            this.cerrarSesionToolStripMenuItem.Text = "Cerrar Sesión";
            this.cerrarSesionToolStripMenuItem.Click += new System.EventHandler(this.cerrarSesionToolStripMenuItem_Click);
            // 
            // mantenimientosToolStripMenuItem
            // 
            this.mantenimientosToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.productosToolStripMenuItem,
<<<<<<< HEAD
            this.tiposDeProductosToolStripMenuItem,
            this.estadosDeProducciónToolStripMenuItem,
            this.mantenimientoDeLineaDeProductoToolStripMenuItem});
=======
            this.CategoriaDeProductosToolStripMenuItem,
            this.estadosDeProducciónToolStripMenuItem,
            this.lineaDeProductoToolStripMenuItem});
>>>>>>> 3dfbd90fa96137925a44b3160192e0f423bcfaf9
            this.mantenimientosToolStripMenuItem.Name = "mantenimientosToolStripMenuItem";
            this.mantenimientosToolStripMenuItem.Size = new System.Drawing.Size(106, 20);
            this.mantenimientosToolStripMenuItem.Text = "Mantenimientos";
            // 
            // productosToolStripMenuItem
            // 
            this.productosToolStripMenuItem.Name = "productosToolStripMenuItem";
            this.productosToolStripMenuItem.Size = new System.Drawing.Size(330, 22);
            this.productosToolStripMenuItem.Text = "3302 - Mantenimiento de  Productos";
            this.productosToolStripMenuItem.Click += new System.EventHandler(this.productosToolStripMenuItem_Click);
            // 
            // CategoriaDeProductosToolStripMenuItem
            // 
<<<<<<< HEAD
            this.tiposDeProductosToolStripMenuItem.Name = "tiposDeProductosToolStripMenuItem";
            this.tiposDeProductosToolStripMenuItem.Size = new System.Drawing.Size(330, 22);
            this.tiposDeProductosToolStripMenuItem.Text = "3303 - Mantenimiento de categoría de producto";
            this.tiposDeProductosToolStripMenuItem.Click += new System.EventHandler(this.tiposDeProductosToolStripMenuItem_Click);
=======
            this.CategoriaDeProductosToolStripMenuItem.Name = "CategoriaDeProductosToolStripMenuItem";
            this.CategoriaDeProductosToolStripMenuItem.Size = new System.Drawing.Size(229, 22);
            this.CategoriaDeProductosToolStripMenuItem.Text = "3303 - Categoría de Producto";
            this.CategoriaDeProductosToolStripMenuItem.Click += new System.EventHandler(this.CategoriaDeProductosToolStripMenuItem_Click);
>>>>>>> 3dfbd90fa96137925a44b3160192e0f423bcfaf9
            // 
            // estadosDeProducciónToolStripMenuItem
            // 
            this.estadosDeProducciónToolStripMenuItem.Name = "estadosDeProducciónToolStripMenuItem";
            this.estadosDeProducciónToolStripMenuItem.Size = new System.Drawing.Size(330, 22);
            this.estadosDeProducciónToolStripMenuItem.Text = "3304 - Mantenimiento de Estados de Producción";
            this.estadosDeProducciónToolStripMenuItem.Click += new System.EventHandler(this.estadosDeProducciónToolStripMenuItem_Click);
            // 
            // procesosToolStripMenuItem
            // 
            this.procesosToolStripMenuItem.Name = "procesosToolStripMenuItem";
            this.procesosToolStripMenuItem.Size = new System.Drawing.Size(66, 20);
            this.procesosToolStripMenuItem.Text = "Procesos";
            // 
            // toolsMenu
            // 
            this.toolsMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.seguridadToolStripMenuItem});
            this.toolsMenu.Name = "toolsMenu";
            this.toolsMenu.Size = new System.Drawing.Size(90, 20);
            this.toolsMenu.Text = "&Herramientas";
            // 
<<<<<<< HEAD
            // seguridadToolStripMenuItem
            // 
            this.seguridadToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.cambioDeContraseñaToolStripMenuItem,
            this.mantenimientoUsuarioToolStripMenuItem,
            this.mantenimientoAplicacionesToolStripMenuItem,
            this.asignacionDePerfilYAplicacionesToolStripMenuItem,
            this.mantenimientoModuloToolStripMenuItem,
            this.perfilToolStripMenuItem});
            this.seguridadToolStripMenuItem.Name = "seguridadToolStripMenuItem";
            this.seguridadToolStripMenuItem.Size = new System.Drawing.Size(127, 22);
            this.seguridadToolStripMenuItem.Text = "Seguridad";
            // 
            // cambioDeContraseñaToolStripMenuItem
            // 
            this.cambioDeContraseñaToolStripMenuItem.Name = "cambioDeContraseñaToolStripMenuItem";
            this.cambioDeContraseñaToolStripMenuItem.Size = new System.Drawing.Size(287, 22);
            this.cambioDeContraseñaToolStripMenuItem.Text = "0011-Cambio De Contraseña";
            this.cambioDeContraseñaToolStripMenuItem.Click += new System.EventHandler(this.cambioDeContraseñaToolStripMenuItem_Click);
            // 
            // mantenimientoUsuarioToolStripMenuItem
            // 
            this.mantenimientoUsuarioToolStripMenuItem.Name = "mantenimientoUsuarioToolStripMenuItem";
            this.mantenimientoUsuarioToolStripMenuItem.Size = new System.Drawing.Size(287, 22);
            this.mantenimientoUsuarioToolStripMenuItem.Text = "0002-Mantenimiento Usuario";
            this.mantenimientoUsuarioToolStripMenuItem.Click += new System.EventHandler(this.usuarioToolStripMenuItem_Click);
            // 
            // mantenimientoAplicacionesToolStripMenuItem
            // 
            this.mantenimientoAplicacionesToolStripMenuItem.Name = "mantenimientoAplicacionesToolStripMenuItem";
            this.mantenimientoAplicacionesToolStripMenuItem.Size = new System.Drawing.Size(287, 22);
            this.mantenimientoAplicacionesToolStripMenuItem.Text = "0003-Mantenimiento Aplicaciones";
            this.mantenimientoAplicacionesToolStripMenuItem.Click += new System.EventHandler(this.aplicacionesToolStripMenuItem_Click);
            // 
            // asignacionDePerfilYAplicacionesToolStripMenuItem
            // 
            this.asignacionDePerfilYAplicacionesToolStripMenuItem.Name = "asignacionDePerfilYAplicacionesToolStripMenuItem";
            this.asignacionDePerfilYAplicacionesToolStripMenuItem.Size = new System.Drawing.Size(287, 22);
            this.asignacionDePerfilYAplicacionesToolStripMenuItem.Text = "0006-Asignacion de Perfil y Aplicaciones";
            this.asignacionDePerfilYAplicacionesToolStripMenuItem.Click += new System.EventHandler(this.asignaciónDePerfílYAplicacionesToolStripMenuItem_Click);
            // 
            // mantenimientoModuloToolStripMenuItem
            // 
            this.mantenimientoModuloToolStripMenuItem.Name = "mantenimientoModuloToolStripMenuItem";
            this.mantenimientoModuloToolStripMenuItem.Size = new System.Drawing.Size(287, 22);
            this.mantenimientoModuloToolStripMenuItem.Text = "0008-Mantenimiento Modulo";
            this.mantenimientoModuloToolStripMenuItem.Click += new System.EventHandler(this.móduloToolStripMenuItem_Click);
            // 
            // perfilToolStripMenuItem
            // 
            this.perfilToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mantenimientoPerfilToolStripMenuItem,
            this.asignacionDeAplicacionAPerfilToolStripMenuItem});
            this.perfilToolStripMenuItem.Name = "perfilToolStripMenuItem";
            this.perfilToolStripMenuItem.Size = new System.Drawing.Size(287, 22);
            this.perfilToolStripMenuItem.Text = "Perfil";
            // 
            // mantenimientoPerfilToolStripMenuItem
            // 
            this.mantenimientoPerfilToolStripMenuItem.Name = "mantenimientoPerfilToolStripMenuItem";
            this.mantenimientoPerfilToolStripMenuItem.Size = new System.Drawing.Size(276, 22);
            this.mantenimientoPerfilToolStripMenuItem.Text = "0004-Mantenimiento Perfil";
            this.mantenimientoPerfilToolStripMenuItem.Click += new System.EventHandler(this.mantenimientoPerfílToolStripMenuItem_Click);
            // 
            // asignacionDeAplicacionAPerfilToolStripMenuItem
            // 
            this.asignacionDeAplicacionAPerfilToolStripMenuItem.Name = "asignacionDeAplicacionAPerfilToolStripMenuItem";
            this.asignacionDeAplicacionAPerfilToolStripMenuItem.Size = new System.Drawing.Size(276, 22);
            this.asignacionDeAplicacionAPerfilToolStripMenuItem.Text = "0005-Asignacion de Aplicacion a Perfil";
            this.asignacionDeAplicacionAPerfilToolStripMenuItem.Click += new System.EventHandler(this.asignaciónDeAplicaciónAPerfílToolStripMenuItem_Click);
            // 
=======
>>>>>>> 3dfbd90fa96137925a44b3160192e0f423bcfaf9
            // helpMenu
            // 
            this.helpMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripSeparator8});
            this.helpMenu.Name = "helpMenu";
            this.helpMenu.Size = new System.Drawing.Size(53, 20);
            this.helpMenu.Text = "Ay&uda";
            // 
            // toolStripSeparator8
            // 
            this.toolStripSeparator8.Name = "toolStripSeparator8";
            this.toolStripSeparator8.Size = new System.Drawing.Size(57, 6);
            // 
            // txtUsuario
            // 
            this.txtUsuario.Location = new System.Drawing.Point(0, 451);
            this.txtUsuario.Name = "txtUsuario";
            this.txtUsuario.Size = new System.Drawing.Size(94, 20);
            this.txtUsuario.TabIndex = 4;
            // 
<<<<<<< HEAD
            // mantenimientoDeLineaDeProductoToolStripMenuItem
            // 
            this.mantenimientoDeLineaDeProductoToolStripMenuItem.Name = "mantenimientoDeLineaDeProductoToolStripMenuItem";
            this.mantenimientoDeLineaDeProductoToolStripMenuItem.Size = new System.Drawing.Size(330, 22);
            this.mantenimientoDeLineaDeProductoToolStripMenuItem.Text = "3305 - Mantenimiento de Linea de Producto";
            this.mantenimientoDeLineaDeProductoToolStripMenuItem.Click += new System.EventHandler(this.mantenimientoDeLineaDeProductoToolStripMenuItem_Click);
=======
            // seguridadToolStripMenuItem
            // 
            this.seguridadToolStripMenuItem.Name = "seguridadToolStripMenuItem";
            this.seguridadToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.seguridadToolStripMenuItem.Text = "Seguridad";
            // 
            // lineaDeProductoToolStripMenuItem
            // 
            this.lineaDeProductoToolStripMenuItem.Name = "lineaDeProductoToolStripMenuItem";
            this.lineaDeProductoToolStripMenuItem.Size = new System.Drawing.Size(229, 22);
            this.lineaDeProductoToolStripMenuItem.Text = "3305 - Linea de Producto";
            this.lineaDeProductoToolStripMenuItem.Click += new System.EventHandler(this.lineaDeProductoToolStripMenuItem_Click);
>>>>>>> 3dfbd90fa96137925a44b3160192e0f423bcfaf9
            // 
            // frmMDI
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.PowderBlue;
            this.ClientSize = new System.Drawing.Size(986, 473);
            this.Controls.Add(this.txtUsuario);
            this.Controls.Add(this.menuStrip);
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip;
            this.Name = "frmMDI";
            this.Text = "3301 - Módulo MRP";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.frmMDI_Load);
            this.menuStrip.ResumeLayout(false);
            this.menuStrip.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }
        #endregion


        private System.Windows.Forms.MenuStrip menuStrip;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator8;
        private System.Windows.Forms.ToolStripMenuItem toolsMenu;
        private System.Windows.Forms.ToolStripMenuItem helpMenu;
        private System.Windows.Forms.ToolTip toolTip;
        private System.Windows.Forms.ToolStripMenuItem inicioToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem procesosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem mantenimientosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem productosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem CategoriaDeProductosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem estadosDeProducciónToolStripMenuItem;
        private System.Windows.Forms.TextBox txtUsuario;
        private System.Windows.Forms.ToolStripMenuItem cerrarSesionToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem seguridadToolStripMenuItem;
<<<<<<< HEAD
        private System.Windows.Forms.ToolStripMenuItem cambioDeContraseñaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem mantenimientoUsuarioToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem mantenimientoAplicacionesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem asignacionDePerfilYAplicacionesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem mantenimientoModuloToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem perfilToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem mantenimientoPerfilToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem asignacionDeAplicacionAPerfilToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem mantenimientoDeLineaDeProductoToolStripMenuItem;
=======
        private System.Windows.Forms.ToolStripMenuItem lineaDeProductoToolStripMenuItem;
>>>>>>> 3dfbd90fa96137925a44b3160192e0f423bcfaf9
    }
}



