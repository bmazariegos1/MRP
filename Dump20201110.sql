-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: db_clc
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aplicacion`
--

DROP TABLE IF EXISTS `aplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aplicacion` (
  `pk_id_aplicacion` int NOT NULL AUTO_INCREMENT,
  `fk_id_modulo` int NOT NULL,
  `nombre_aplicacion` varchar(40) NOT NULL,
  `descripcion_aplicacion` varchar(45) NOT NULL,
  `estado_aplicacion` int NOT NULL,
  PRIMARY KEY (`pk_id_aplicacion`),
  KEY `pk_id_aplicacion` (`pk_id_aplicacion`),
  KEY `fk_aplicacion_modulo` (`fk_id_modulo`),
  CONSTRAINT `fk_aplicacion_modulo` FOREIGN KEY (`fk_id_modulo`) REFERENCES `modulo` (`pk_id_modulo`)
) ENGINE=InnoDB AUTO_INCREMENT=3314 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplicacion`
--

LOCK TABLES `aplicacion` WRITE;
/*!40000 ALTER TABLE `aplicacion` DISABLE KEYS */;
INSERT INTO `aplicacion` VALUES (1,1,'Login','Ventana de Ingreso',1),(2,1,'Mantenimiento Usuario','Mantenimientos de usuario',1),(3,1,'Mantenimiento Aplicacion','ABC de las Aplicaciones',1),(4,1,'Mantenimiento Perfil','ABC de perfiles',1),(5,1,'Asignacion de Aplicaciones a Perfil','Asignacion Aplicacion y perfil',1),(6,1,'Asignacaion de Aplicaciones','Asignacion especificas a un usuario',1),(7,1,'Consulta Aplicacion','Mantenimiento de Aplicaciones',1),(8,1,'Agregar Modulo','Mantenimientos de Modulos',1),(9,1,'Consultar Perfil','Consultas de perfiles disponibles',1),(10,1,'Permisos','Asignar permisos a perfiles y aplicaciones',1),(11,1,'Cambio de Contraseña','Cambia las contraseñas',1),(101,3,'Gestor de Reportes','Gestor de Reportes',1),(102,3,'Reportes de Modulo','Muestra todos los reportes del modulo',1),(104,3,'Asignar Reportes a Modulo','Asignar Reportes al modulo',1),(105,3,'Asignar Reportes a Aplicacion','Asignacion de reportes a aplicacion',1),(2301,6,'Linea Producto','lINEA',1),(2302,6,'Categoria Producto','Categoria',1),(2303,6,'Producto','Producto',1),(2304,6,'Departamento','Deptos',1),(2305,6,'Municipio','Muni depto',1),(2306,6,'Ruta','Rutas',1),(2307,6,'Proveedores','Nada',1),(2308,6,'Telefono Proveedor','Telefonos ',1),(2309,6,'Correo Proveedor','Correos',1),(2310,6,'Pais','Pais de Proveedor',1),(2311,6,'Marca','Contiene la Marca de Vehiculos',1),(2312,6,'Vehiculo','Vehiculos usados para traslados',1),(2313,6,'Bodega','Localizacion de bodegas',1),(2314,6,'Encargado Bodega','Empleado dentro del area de bodegas',1),(2315,6,'Tipo de Movimiento','Movimientos de Inventarios',1),(2316,6,'Compras y Pedidos','Gestión de Órdenes de Compra y Pedido',1),(2318,6,'Fabrica','Fabrica',1),(3301,7,'MDI MRP','Ventana Principal MRP',1),(3302,7,'Mantenimiento Producto','Mantenimiento de los productos',1),(3303,7,'Mantenimiento de Categoria de produccion','Mantenimiento de Categoria de productos',1),(3304,7,'Mantenimiento de Estado de Produccion','Mantenimiento de Estados de  produccion',1),(3305,7,'Mantenimiento de Linea de produccion MRP','Mantenimiento de MRP para linea de producto',1),(3306,7,'Mantenimiento de Encabezado de receta','Mantenimiento de MRP de reseta ',1),(3307,7,'Mantenimiento de Detalle de Receta','Mantenimiento del detalle de la receta',1),(3308,7,'Proceso Recepcion de pedidos especiales','Proceso para ingreso de pedidos',1),(3309,7,'Pedido Detalle','Pedido Detalle ',1),(3310,7,'Orden de Compra','Genera Una Orden De Compra',1),(3311,7,'Consulta de Producto','Consulta todos los productos existentes',1),(3312,7,'Reporte Ordenes Pedido','Reporte de ordenes ',1),(3313,7,'Proceso de Produccion','Controla los estado de de los pedidos ',1);
/*!40000 ALTER TABLE `aplicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aplicacion_perfil`
--

DROP TABLE IF EXISTS `aplicacion_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aplicacion_perfil` (
  `pk_id_aplicacion_perfil` int NOT NULL AUTO_INCREMENT,
  `fk_idaplicacion_aplicacion_perfil` int DEFAULT NULL,
  `fk_idperfil_aplicacion_perfil` int DEFAULT NULL,
  `fk_idpermiso_aplicacion_perfil` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_aplicacion_perfil`),
  KEY `fk_aplicacionperfil_aplicacion` (`fk_idaplicacion_aplicacion_perfil`),
  KEY `fk_aplicacionperfil_perfil` (`fk_idperfil_aplicacion_perfil`),
  KEY `fk_aplicacionperfil_permiso` (`fk_idpermiso_aplicacion_perfil`),
  CONSTRAINT `fk_aplicacionperfil_aplicacion` FOREIGN KEY (`fk_idaplicacion_aplicacion_perfil`) REFERENCES `aplicacion` (`pk_id_aplicacion`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_aplicacionperfil_perfil` FOREIGN KEY (`fk_idperfil_aplicacion_perfil`) REFERENCES `perfil` (`pk_id_perfil`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_aplicacionperfil_permiso` FOREIGN KEY (`fk_idpermiso_aplicacion_perfil`) REFERENCES `permiso` (`pk_id_permiso`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplicacion_perfil`
--

LOCK TABLES `aplicacion_perfil` WRITE;
/*!40000 ALTER TABLE `aplicacion_perfil` DISABLE KEYS */;
INSERT INTO `aplicacion_perfil` VALUES (1,1,1,1),(2,4,1,2),(3,5,1,3),(4,2,1,4),(5,3,1,5),(6,6,1,6),(7,8,1,7),(8,2,3,8),(9,3,3,9),(10,4,3,11),(11,2,4,12),(12,8,4,13),(13,8,5,15),(14,3301,6,25),(15,3302,6,26),(16,3303,6,27),(17,3304,6,28),(18,3305,6,29),(19,3306,6,30),(20,3307,6,31),(21,3308,6,32),(22,3310,6,33),(23,3309,6,35),(24,3313,6,37),(25,3312,6,38);
/*!40000 ALTER TABLE `aplicacion_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aplicacion_usuario`
--

DROP TABLE IF EXISTS `aplicacion_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aplicacion_usuario` (
  `pk_id_aplicacion_usuario` int NOT NULL AUTO_INCREMENT,
  `fk_idlogin_aplicacion_usuario` int DEFAULT NULL,
  `fk_idaplicacion_aplicacion_usuario` int DEFAULT NULL,
  `fk_idpermiso_aplicacion_usuario` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_aplicacion_usuario`),
  KEY `fk_aplicacionusuario_login` (`fk_idlogin_aplicacion_usuario`),
  KEY `fk_aplicacionusuario_aplicacion` (`fk_idaplicacion_aplicacion_usuario`),
  KEY `fk_aplicacionusuario_permiso` (`fk_idpermiso_aplicacion_usuario`),
  CONSTRAINT `fk_aplicacionusuario_aplicacion` FOREIGN KEY (`fk_idaplicacion_aplicacion_usuario`) REFERENCES `aplicacion` (`pk_id_aplicacion`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_aplicacionusuario_login` FOREIGN KEY (`fk_idlogin_aplicacion_usuario`) REFERENCES `login` (`pk_id_login`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_aplicacionusuario_permiso` FOREIGN KEY (`fk_idpermiso_aplicacion_usuario`) REFERENCES `permiso` (`pk_id_permiso`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplicacion_usuario`
--

LOCK TABLES `aplicacion_usuario` WRITE;
/*!40000 ALTER TABLE `aplicacion_usuario` DISABLE KEYS */;
INSERT INTO `aplicacion_usuario` VALUES (1,1,4,1),(2,1,5,2),(3,1,6,3),(5,4,6,14),(6,5,5,16),(7,5,2,17),(8,1,3306,18),(9,1,3302,19),(10,1,3303,20),(11,1,3304,21),(12,1,3305,22),(13,1,3307,23),(14,1,3308,24),(15,1,3312,34),(16,1,3309,36),(17,1,3310,39),(18,1,3313,40);
/*!40000 ALTER TABLE `aplicacion_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ascenso`
--

DROP TABLE IF EXISTS `ascenso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ascenso` (
  `pk_id_ascenso` int NOT NULL,
  `fk_id_empleado_ascenso` int DEFAULT NULL,
  `fecha_ascenso` varchar(10) DEFAULT NULL,
  `fk_puesto_anterior_ascenso` int NOT NULL,
  `fk_departamento_anterior_ascenso` int DEFAULT NULL,
  `salario_anterior_ascenso` double DEFAULT NULL,
  `fk_puesto_nuevo_ascenso` int DEFAULT NULL,
  `fk_departamento_nuevo_ascenso` int DEFAULT NULL,
  `salario_nuevo_ascenso` double DEFAULT NULL,
  PRIMARY KEY (`pk_id_ascenso`),
  KEY `fk_ascenso_empleado` (`fk_id_empleado_ascenso`),
  KEY `fk_ascenso_puesto_anterior` (`fk_puesto_anterior_ascenso`),
  KEY `fk_ascenso_depto_anterior` (`fk_departamento_anterior_ascenso`),
  KEY `fk_ascenso_puesto_nuevo` (`fk_puesto_nuevo_ascenso`),
  KEY `fk_ascenso_depto_nuevo` (`fk_departamento_nuevo_ascenso`),
  CONSTRAINT `fk_ascenso_depto_anterior` FOREIGN KEY (`fk_departamento_anterior_ascenso`) REFERENCES `departamento_empresarial` (`pk_id__departamento_empresarial`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_ascenso_depto_nuevo` FOREIGN KEY (`fk_departamento_nuevo_ascenso`) REFERENCES `departamento_empresarial` (`pk_id__departamento_empresarial`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_ascenso_empleado` FOREIGN KEY (`fk_id_empleado_ascenso`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_ascenso_puesto_anterior` FOREIGN KEY (`fk_puesto_anterior_ascenso`) REFERENCES `puesto` (`pk_id_puesto`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_ascenso_puesto_nuevo` FOREIGN KEY (`fk_puesto_nuevo_ascenso`) REFERENCES `puesto` (`pk_id_puesto`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ascenso`
--

LOCK TABLES `ascenso` WRITE;
/*!40000 ALTER TABLE `ascenso` DISABLE KEYS */;
/*!40000 ALTER TABLE `ascenso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baja`
--

DROP TABLE IF EXISTS `baja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `baja` (
  `pk_id_baja` int NOT NULL,
  `fk_id_empleado_baja` int DEFAULT NULL,
  `fk_id_tipo_baja` int DEFAULT NULL,
  `prestaciones_baja` double DEFAULT NULL,
  `tiempo_laborado_baja` int DEFAULT NULL,
  `fecha_despido_baja` varchar(10) DEFAULT NULL,
  `causa_bajas` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pk_id_baja`),
  KEY `fk_bajas_empleado` (`fk_id_empleado_baja`),
  KEY `fk_tipo_bajas` (`fk_id_tipo_baja`),
  CONSTRAINT `fk_bajas_empleado` FOREIGN KEY (`fk_id_empleado_baja`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_tipo_bajas` FOREIGN KEY (`fk_id_tipo_baja`) REFERENCES `tipo_baja` (`pk_id_tipo_baja`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baja`
--

LOCK TABLES `baja` WRITE;
/*!40000 ALTER TABLE `baja` DISABLE KEYS */;
/*!40000 ALTER TABLE `baja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balance_detalle`
--

DROP TABLE IF EXISTS `balance_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `balance_detalle` (
  `pk_id_balance_encabezado` int NOT NULL,
  `pk_id_cuenta_contable` int NOT NULL,
  `debe_balance_detalle` double DEFAULT NULL,
  `haber_balance_detalle` double DEFAULT NULL,
  `deudor_balance_detalle` double DEFAULT NULL,
  `acreedor_balance_detalle` double DEFAULT NULL,
  PRIMARY KEY (`pk_id_balance_encabezado`),
  KEY `fk_balance_detalle_cuenta` (`pk_id_cuenta_contable`),
  CONSTRAINT `fk_balance_detalle_cuenta_contable` FOREIGN KEY (`pk_id_cuenta_contable`) REFERENCES `cuenta_contable` (`pk_id_cuenta_contable`),
  CONSTRAINT `fk_balance_encabezado_detalle` FOREIGN KEY (`pk_id_balance_encabezado`) REFERENCES `balance_encabezado` (`pk_id_balance_encabezado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balance_detalle`
--

LOCK TABLES `balance_detalle` WRITE;
/*!40000 ALTER TABLE `balance_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `balance_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balance_encabezado`
--

DROP TABLE IF EXISTS `balance_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `balance_encabezado` (
  `pk_id_balance_encabezado` int NOT NULL,
  `descripcion_balance_encabezado` varchar(75) DEFAULT NULL,
  `fecha_creacion_balance_encabezado` datetime DEFAULT NULL,
  `total_debe_haber_balance_encabezado` double DEFAULT NULL,
  `total_deudor_acreedor_balance_encabezado` double DEFAULT NULL,
  PRIMARY KEY (`pk_id_balance_encabezado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balance_encabezado`
--

LOCK TABLES `balance_encabezado` WRITE;
/*!40000 ALTER TABLE `balance_encabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `balance_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banco`
--

DROP TABLE IF EXISTS `banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banco` (
  `pk_id_banco` int NOT NULL,
  `nombre_banco` varchar(50) DEFAULT NULL,
  `estado_banco` tinyint DEFAULT NULL,
  PRIMARY KEY (`pk_id_banco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco`
--

LOCK TABLES `banco` WRITE;
/*!40000 ALTER TABLE `banco` DISABLE KEYS */;
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora` (
  `pk_id_bitacora` int NOT NULL AUTO_INCREMENT,
  `fk_idusuario_bitacora` int DEFAULT NULL,
  `fk_idaplicacion_bitacora` int DEFAULT NULL,
  `fechahora_bitacora` varchar(50) DEFAULT NULL,
  `direccionhost_bitacora` varchar(20) DEFAULT NULL,
  `nombrehost_bitacora` varchar(20) DEFAULT NULL,
  `accion_bitacora` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`pk_id_bitacora`),
  KEY `fk_login_bitacora` (`fk_idusuario_bitacora`),
  KEY `fk_aplicacion_bitacora` (`fk_idaplicacion_bitacora`),
  CONSTRAINT `fk_aplicacion_bitacora` FOREIGN KEY (`fk_idaplicacion_bitacora`) REFERENCES `aplicacion` (`pk_id_aplicacion`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_login_bitacora` FOREIGN KEY (`fk_idusuario_bitacora`) REFERENCES `login` (`pk_id_login`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (1,1,1,'07/11/2020 15:14:50','25.102.225.59','BRYANMZ','Logeo Exitoso'),(2,1,1,'07/11/2020 15:28:03','25.102.225.59','BRYANMZ','Logeo Exitoso'),(3,1,1,'07/11/2020 16:36:25','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(4,5,1,'07/11/2020 16:36:25','25.1.57.37','MoratayaAlienware','Logeo erroneo'),(5,1,1,'07/11/2020 16:36:25','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(6,1,1,'07/11/2020 16:12:35','25.102.225.59','BRYANMZ','Logeo Exitoso'),(7,1,3,'07/11/2020 16:12:35','25.102.225.59','BRYANMZ','Ingreso A Mantenimiento Aplicaciones'),(8,1,2,'07/11/2020 16:12:35','25.102.225.59','BRYANMZ','Ingreso A Mantenimiento Usuario'),(9,1,8,'07/11/2020 16:12:35','25.102.225.59','BRYANMZ','ingreso a Mantenimiento Modulo'),(10,1,8,'07/11/2020 16:12:35','25.102.225.59','BRYANMZ','Salir de la aplicacion'),(11,1,4,'07/11/2020 16:12:35','25.102.225.59','BRYANMZ','Ingreso a Mantenimiento Perfil'),(14,1,5,'07/11/2020 16:12:35','25.102.225.59','BRYANMZ','Ingreso a Asignacion de Aplicaciones a Perfil'),(15,1,3,'07/11/2020 16:12:35','25.102.225.59','BRYANMZ','Consulta Perfiles'),(16,1,3302,'07/11/2020 16:12:35','25.102.225.59','BRYANMZ','Intento Ingresar a Producto'),(17,1,1,'07/11/2020 16:24:10','25.102.225.59','BRYANMZ','Logeo Exitoso'),(18,1,3,'07/11/2020 16:24:10','25.102.225.59','BRYANMZ','Ingreso A Mantenimiento Aplicaciones'),(19,1,1,'08/11/2020 12:29:43','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(20,1,2,'08/11/2020 12:29:43','25.1.57.37','MoratayaAlienware','Ingreso A Mantenimiento Usuario'),(21,1,3,'08/11/2020 12:29:43','25.1.57.37','MoratayaAlienware','Ingreso A Mantenimiento Aplicaciones'),(22,1,8,'08/11/2020 12:29:43','25.1.57.37','MoratayaAlienware','ingreso a Mantenimiento Modulo'),(23,1,1,'08/11/2020 14:15:32','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(24,1,3306,'08/11/2020 14:15:32','25.1.57.37','MoratayaAlienware','Trato de Ingresar a Mantenimiento De Receta'),(25,1,3,'08/11/2020 14:15:32','25.1.57.37','MoratayaAlienware','Ingreso A Mantenimiento Aplicaciones'),(26,1,6,'08/11/2020 14:15:32','25.1.57.37','MoratayaAlienware','Ingreso a Asignacion de Perfil y Aplicaciones'),(27,1,3306,'08/11/2020 14:15:32','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(28,1,1,'08/11/2020 14:31:13','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(29,1,3302,'08/11/2020 14:31:13','25.1.57.37','MoratayaAlienware','Intento Ingresar a Producto'),(30,1,6,'08/11/2020 14:31:13','25.1.57.37','MoratayaAlienware','Ingreso a Asignacion de Perfil y Aplicaciones'),(31,1,3302,'08/11/2020 14:31:13','25.1.57.37','MoratayaAlienware','Ingreso Manteniento Producto'),(32,1,3302,'08/11/2020 14:31:13','25.1.57.37','MoratayaAlienware','Salir de la aplicacion'),(33,1,5,'08/11/2020 14:31:13','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento Linea De Productos'),(34,1,3305,'08/11/2020 14:31:13','25.1.57.37','MoratayaAlienware',' INSERT INTO linea_producto VALUES ( 1,  Prueba Linea,  Linea de pruebas descripcion,  1) '),(35,1,3305,'08/11/2020 14:31:13','25.1.57.37','MoratayaAlienware',' INSERT INTO linea_producto VALUES ( 2,  Prueba 2 linea,  Liena 2 pruebas,  1) '),(36,1,3305,'08/11/2020 14:31:13','25.1.57.37','MoratayaAlienware','Salir de la aplicacion'),(37,1,3302,'08/11/2020 14:31:13','25.1.57.37','MoratayaAlienware','Ingreso Manteniento Producto'),(38,1,3302,'08/11/2020 14:31:13','25.1.57.37','MoratayaAlienware','Salir de la aplicacion'),(39,1,3302,'08/11/2020 14:31:13','25.1.57.37','MoratayaAlienware','Ingreso Mantenimiento Categoria Productos'),(40,1,3302,'08/11/2020 14:31:13','25.1.57.37','MoratayaAlienware',' INSERT INTO categoria_producto VALUES ( 1,  Prueba Categoria Producto,  Descipcion categoria producto 1,  1) '),(41,1,3302,'08/11/2020 14:31:13','25.1.57.37','MoratayaAlienware',' INSERT INTO categoria_producto VALUES ( 2,  Prueba 2 categoria,  Cat 2 Prueba,  1) '),(42,1,3302,'08/11/2020 14:31:13','25.1.57.37','MoratayaAlienware','Salir de la aplicacion'),(43,1,3302,'08/11/2020 14:31:13','25.1.57.37','MoratayaAlienware','Ingreso Manteniento Producto'),(44,1,3302,'08/11/2020 14:31:13','25.1.57.37','MoratayaAlienware',' INSERT INTO producto VALUES ( 1,  1,  1,  Producto 1,  90.00,  54,  Prueba desc,  1) '),(45,1,3302,'08/11/2020 14:31:13','25.1.57.37','MoratayaAlienware',' INSERT INTO producto VALUES ( 2,  2,  2,  Producto 2,  70,  4,  Pru2,  1) '),(46,1,3302,'08/11/2020 14:31:13','25.1.57.37','MoratayaAlienware','Salir de la aplicacion'),(47,1,3302,'08/11/2020 14:31:13','25.1.57.37','MoratayaAlienware','Ingreso Manteniento Producto'),(48,1,3306,'08/11/2020 14:31:13','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(49,1,1,'08/11/2020 15:51:50','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(50,1,3306,'08/11/2020 15:51:50','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(51,1,6,'08/11/2020 15:51:50','25.1.57.37','MoratayaAlienware','Ingreso a Asignacion de Perfil y Aplicaciones'),(52,1,1,'08/11/2020 15:56:52','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(53,1,3306,'08/11/2020 15:56:52','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(54,1,1,'08/11/2020 16:23:56','25.1.57.37','MoratayaAlienware','Logeo erroneo'),(55,1,1,'08/11/2020 16:23:56','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(56,1,3306,'08/11/2020 16:23:56','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(57,1,1,'08/11/2020 16:27:38','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(58,1,3306,'08/11/2020 16:27:38','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(59,1,1,'08/11/2020 16:39:05','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(60,1,3306,'08/11/2020 16:39:05','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(61,1,1,'08/11/2020 16:42:14','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(62,1,3306,'08/11/2020 16:42:14','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(63,1,1,'08/11/2020 16:44:38','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(64,1,3306,'08/11/2020 16:44:38','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(65,1,1,'08/11/2020 16:47:22','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(66,1,3306,'08/11/2020 16:47:22','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(67,1,1,'08/11/2020 16:51:37','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(68,1,3306,'08/11/2020 16:51:37','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(69,1,1,'08/11/2020 16:53:29','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(70,1,3306,'08/11/2020 16:53:29','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(71,1,3306,'08/11/2020 16:53:29','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(72,1,3306,'08/11/2020 16:53:29','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(73,1,1,'08/11/2020 16:55:03','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(74,1,3306,'08/11/2020 16:55:03','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(75,1,1,'08/11/2020 16:56:27','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(76,1,3,'08/11/2020 16:56:27','25.1.57.37','MoratayaAlienware','Ingreso A Mantenimiento Aplicaciones'),(77,1,1,'08/11/2020 17:02:50','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(78,1,3306,'08/11/2020 17:02:50','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(79,1,1,'08/11/2020 17:04:04','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(80,1,3306,'08/11/2020 17:04:04','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(81,1,1,'08/11/2020 19:17:17','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(82,1,3306,'08/11/2020 19:17:17','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(83,1,1,'09/11/2020 11:06:59','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(84,1,3306,'09/11/2020 11:06:59','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(85,1,3302,'09/11/2020 11:06:59','25.1.57.37','MoratayaAlienware','Ingreso Manteniento Producto'),(86,1,6,'09/11/2020 11:06:59','25.1.57.37','MoratayaAlienware','Ingreso a Asignacion de Perfil y Aplicaciones'),(87,1,3306,'09/11/2020 11:06:59','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(88,1,3307,'09/11/2020 11:06:59','25.1.57.37','MoratayaAlienware','Ingreso a Detalle De Receta'),(89,1,3307,'09/11/2020 11:06:59','25.1.57.37','MoratayaAlienware','Ingreso a Detalle De Receta'),(90,1,1,'09/11/2020 11:19:23','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(91,1,3306,'09/11/2020 11:19:23','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(92,1,3307,'09/11/2020 11:19:23','25.1.57.37','MoratayaAlienware','Ingreso a Detalle De Receta'),(93,1,1,'09/11/2020 11:21:38','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(94,1,6,'09/11/2020 11:21:38','25.1.57.37','MoratayaAlienware','Ingreso a Asignacion de Perfil y Aplicaciones'),(95,1,3306,'09/11/2020 11:21:38','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(96,1,1,'09/11/2020 11:27:16','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(97,1,3306,'09/11/2020 11:27:16','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(98,1,1,'09/11/2020 11:46:43','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(99,1,3306,'09/11/2020 11:46:43','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(100,1,3306,'09/11/2020 11:46:43','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(101,1,3306,'09/11/2020 11:46:43','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(102,1,3306,'09/11/2020 11:46:43','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(103,1,3306,'09/11/2020 11:46:43','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(104,1,3306,'09/11/2020 11:46:43','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(105,1,3306,'09/11/2020 11:46:43','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(106,1,6,'09/11/2020 11:46:43','25.1.57.37','MoratayaAlienware','Ingreso a Asignacion de Perfil y Aplicaciones'),(107,1,3306,'09/11/2020 11:46:43','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(108,1,3306,'09/11/2020 11:46:43','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(109,1,3306,'09/11/2020 11:46:43','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(110,1,3306,'09/11/2020 11:46:43','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(111,1,1,'09/11/2020 11:52:13','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(112,1,3306,'09/11/2020 11:52:13','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(113,1,3306,'09/11/2020 11:52:13','25.1.57.37','MoratayaAlienware',' INSERT INTO recetas_encabezado VALUES ( 2,  nombre receta,  2,  1) '),(114,1,1,'09/11/2020 11:57:14','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(115,1,3306,'09/11/2020 11:57:14','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(116,1,3306,'09/11/2020 11:57:14','25.1.57.37','MoratayaAlienware',' INSERT INTO recetas_encabezado VALUES ( 3,  wsedrftg,  9,  0) '),(117,1,1,'09/11/2020 12:38:52','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(118,1,3307,'09/11/2020 12:38:52','25.1.57.37','MoratayaAlienware','Ingreso a Detalle De Receta'),(119,1,1,'09/11/2020 12:41:45','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(120,1,3307,'09/11/2020 12:41:45','25.1.57.37','MoratayaAlienware','Ingreso a Detalle De Receta'),(121,1,1,'09/11/2020 12:43:08','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(122,1,3304,'09/11/2020 12:43:08','25.1.57.37','MoratayaAlienware','Ingreso Estado de Produccion'),(123,1,3304,'09/11/2020 12:43:08','25.1.57.37','MoratayaAlienware',' INSERT INTO estado_produccion VALUES ( 1,  Estado1,  30 min,  1) '),(124,1,3304,'09/11/2020 12:43:08','25.1.57.37','MoratayaAlienware',' INSERT INTO estado_produccion VALUES ( 2,  Estado2,  3 dias,  1) '),(125,1,3302,'09/11/2020 12:43:08','25.1.57.37','MoratayaAlienware','Ingreso Manteniento Producto'),(126,1,3306,'09/11/2020 12:43:08','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(127,1,3307,'09/11/2020 12:43:08','25.1.57.37','MoratayaAlienware','Ingreso a Detalle De Receta'),(128,1,1,'09/11/2020 12:49:53','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(129,1,3307,'09/11/2020 12:49:53','25.1.57.37','MoratayaAlienware','Ingreso a Detalle De Receta'),(130,1,1,'09/11/2020 12:51:18','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(131,1,3307,'09/11/2020 12:51:18','25.1.57.37','MoratayaAlienware','Ingreso a Detalle De Receta'),(132,1,1,'09/11/2020 12:58:05','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(133,1,3307,'09/11/2020 12:58:05','25.1.57.37','MoratayaAlienware','Ingreso a Detalle De Receta'),(134,1,1,'09/11/2020 13:00:00','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(135,1,3307,'09/11/2020 13:00:00','25.1.57.37','MoratayaAlienware','Ingreso a Detalle De Receta'),(136,1,1,'09/11/2020 13:07:39','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(137,1,3307,'09/11/2020 13:07:39','25.1.57.37','MoratayaAlienware','Ingreso a Detalle De Receta'),(138,1,1,'09/11/2020 13:13:13','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(139,1,3307,'09/11/2020 13:13:13','25.1.57.37','MoratayaAlienware','Ingreso a Detalle De Receta'),(140,1,3307,'09/11/2020 13:13:13','25.1.57.37','MoratayaAlienware',' INSERT INTO detalle_receta VALUES ( 2,  2,  1,  1,  6,  1,  9) '),(141,1,1,'09/11/2020 13:15:44','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(142,1,3307,'09/11/2020 13:15:44','25.1.57.37','MoratayaAlienware','Ingreso a Detalle De Receta'),(143,1,3307,'09/11/2020 13:15:44','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(144,1,3307,'09/11/2020 13:15:44','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(145,1,3307,'09/11/2020 13:15:44','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(146,1,3307,'09/11/2020 13:15:44','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(147,1,3307,'09/11/2020 13:15:44','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(148,1,3307,'09/11/2020 13:15:44','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(149,1,3307,'09/11/2020 13:15:44','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(150,1,3307,'09/11/2020 13:15:44','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(151,1,3307,'09/11/2020 13:15:44','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(152,1,3307,'09/11/2020 13:15:44','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(153,1,3307,'09/11/2020 13:15:44','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(154,1,3307,'09/11/2020 13:15:44','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(155,1,3307,'09/11/2020 13:15:44','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(156,1,3307,'09/11/2020 13:15:44','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(157,1,1,'09/11/2020 13:25:01','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(158,1,3307,'09/11/2020 13:25:01','25.1.57.37','MoratayaAlienware','Ingreso a Detalle De Receta'),(159,1,3307,'09/11/2020 13:25:01','25.1.57.37','MoratayaAlienware','Ingreso a Detalle De Receta'),(160,1,1,'09/11/2020 13:29:16','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(161,1,3307,'09/11/2020 13:29:16','25.1.57.37','MoratayaAlienware','Ingreso a Detalle De Receta'),(162,1,3307,'09/11/2020 13:29:16','25.1.57.37','MoratayaAlienware',' INSERT INTO detalle_receta VALUES ( 3,  2,  1,  1,  5,  8,  1) '),(163,1,1,'09/11/2020 13:35:18','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(164,1,3306,'09/11/2020 13:35:18','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(165,1,3306,'09/11/2020 13:35:18','25.1.57.37','MoratayaAlienware',' INSERT INTO recetas_encabezado VALUES ( 3,  Pepian,  1,  1) '),(166,1,3306,'09/11/2020 13:35:18','25.1.57.37','MoratayaAlienware','Salir de la aplicacion'),(167,1,3307,'09/11/2020 13:35:18','25.1.57.37','MoratayaAlienware','Ingreso a Detalle De Receta'),(168,1,3307,'09/11/2020 13:35:18','25.1.57.37','MoratayaAlienware',' INSERT INTO detalle_receta VALUES ( 4,  3,  1,  2,  2,  10.00,  1) '),(169,1,1,'09/11/2020 12:58:48','25.79.247.79','DESKTOP-CS0DPTN','Logeo Exitoso'),(170,1,3302,'09/11/2020 12:58:48','25.79.247.79','DESKTOP-CS0DPTN','Ingreso Manteniento Producto'),(171,1,3302,'09/11/2020 12:58:48','25.79.247.79','DESKTOP-CS0DPTN',' INSERT INTO producto VALUES ( 3,  2,  2,  Hola,  50,  1,  hola,  1) '),(172,1,3302,'09/11/2020 12:58:48','25.79.247.79','DESKTOP-CS0DPTN','Salir de la aplicacion'),(173,1,3306,'09/11/2020 12:58:48','25.79.247.79','DESKTOP-CS0DPTN','Ingreso a Mantenimiento De Receta'),(174,1,3307,'09/11/2020 12:58:48','25.79.247.79','DESKTOP-CS0DPTN','Ingreso a Detalle De Receta'),(175,1,1,'09/11/2020 15:25:38','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(176,1,3307,'09/11/2020 15:25:38','25.1.57.37','MoratayaAlienware','Trato de Ingresar a Recepcion Pedido'),(177,1,3,'09/11/2020 15:25:38','25.1.57.37','MoratayaAlienware','Ingreso A Mantenimiento Aplicaciones'),(178,1,6,'09/11/2020 15:25:38','25.1.57.37','MoratayaAlienware','Ingreso a Asignacion de Perfil y Aplicaciones'),(179,1,3307,'09/11/2020 15:25:38','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(180,1,3307,'09/11/2020 15:25:38','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(181,1,1,'09/11/2020 14:44:12','25.79.247.79','DESKTOP-CS0DPTN','Logeo Exitoso'),(182,1,3302,'09/11/2020 14:44:12','25.79.247.79','DESKTOP-CS0DPTN','Ingreso Manteniento Producto'),(183,1,3302,'09/11/2020 14:44:12','25.79.247.79','DESKTOP-CS0DPTN','Ingreso Mantenimiento Categoria Productos'),(184,1,3304,'09/11/2020 14:44:12','25.79.247.79','DESKTOP-CS0DPTN','Ingreso Estado de Produccion'),(185,1,5,'09/11/2020 14:44:12','25.79.247.79','DESKTOP-CS0DPTN','Ingreso a Mantenimiento Linea De Productos'),(186,1,3306,'09/11/2020 14:44:12','25.79.247.79','DESKTOP-CS0DPTN','Ingreso a Mantenimiento De Receta'),(187,1,3307,'09/11/2020 14:44:12','25.79.247.79','DESKTOP-CS0DPTN','Ingreso a Detalle De Receta'),(188,1,1,'09/11/2020 16:26:13','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(189,1,3307,'09/11/2020 16:26:13','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(190,1,1,'09/11/2020 15:27:23','25.79.247.79','DESKTOP-CS0DPTN','Logeo Exitoso'),(191,1,1,'09/11/2020 16:28:10','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(192,1,3307,'09/11/2020 16:28:10','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(193,1,6,'09/11/2020 16:28:10','25.1.57.37','MoratayaAlienware','Ingreso a Asignacion de Perfil y Aplicaciones'),(194,1,1,'09/11/2020 16:37:20','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(195,1,3307,'09/11/2020 16:37:20','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(196,1,1,'09/11/2020 16:42:22','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(197,1,3307,'09/11/2020 16:42:22','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(198,1,3307,'09/11/2020 16:42:22','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(199,1,1,'09/11/2020 15:54:21','25.79.247.79','DESKTOP-CS0DPTN','Logeo Exitoso'),(200,1,3302,'09/11/2020 15:54:21','25.79.247.79','DESKTOP-CS0DPTN','Ingreso Manteniento Producto'),(201,1,1,'09/11/2020 16:54:33','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(202,1,3307,'09/11/2020 16:54:33','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(203,1,3302,'09/11/2020 15:54:21','25.79.247.79','DESKTOP-CS0DPTN','Formulario de ayuda'),(204,1,1,'09/11/2020 16:56:23','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(205,1,3307,'09/11/2020 16:56:23','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(206,1,3308,'09/11/2020 16:56:23','25.1.57.37','MoratayaAlienware','UPDATE pedido_encabezado SET   fk_id_fabrica =  1,  estado_proceso_pedido_encabezado =  3,  fec_pedido_pedido_encabezado =  1/1/2020 12:00:00 AM,  total_pedido_encabezado =  100,  estado_pedido_encabezado =  1  WHERE pk_id_pedido_encabezado = 1; '),(207,1,3308,'09/11/2020 16:56:23','25.1.57.37','MoratayaAlienware','UPDATE pedido_encabezado SET   fk_id_fabrica =  1,  estado_proceso_pedido_encabezado =  3,  fec_pedido_pedido_encabezado =  1/2/2020 12:00:00 AM,  total_pedido_encabezado =  200,  estado_pedido_encabezado =  1  WHERE pk_id_pedido_encabezado = 2; '),(208,1,3308,'09/11/2020 16:56:23','25.1.57.37','MoratayaAlienware','Salir de la aplicacion'),(209,1,3307,'09/11/2020 16:56:23','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(210,1,3308,'09/11/2020 16:56:23','25.1.57.37','MoratayaAlienware',' INSERT INTO pedido_encabezado VALUES ( 3,  1,  3,  2020-01-10,  432,  1) '),(211,1,1,'09/11/2020 17:05:46','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(212,1,3307,'09/11/2020 17:05:46','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(213,1,1,'09/11/2020 17:08:33','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(214,1,3307,'09/11/2020 17:08:33','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(215,1,3308,'09/11/2020 17:08:33','25.1.57.37','MoratayaAlienware','UPDATE pedido_encabezado SET   fk_id_fabrica =  1,  estado_proceso_pedido_encabezado =  2,  fec_pedido_pedido_encabezado =  1/2/2020 12:00:00 AM,  total_pedido_encabezado =  200,  estado_pedido_encabezado =  1  WHERE pk_id_pedido_encabezado = 2; '),(216,1,3308,'09/11/2020 17:08:33','25.1.57.37','MoratayaAlienware','UPDATE pedido_encabezado SET   fk_id_fabrica =  2,  estado_proceso_pedido_encabezado =  4,  fec_pedido_pedido_encabezado =  1/1/2020 12:00:00 AM,  total_pedido_encabezado =  100,  estado_pedido_encabezado =  1  WHERE pk_id_pedido_encabezado = 1; '),(217,1,3308,'09/11/2020 17:08:33','25.1.57.37','MoratayaAlienware','UPDATE pedido_encabezado SET   fk_id_fabrica =  1,  estado_proceso_pedido_encabezado =  5,  fec_pedido_pedido_encabezado =  1/10/2020 12:00:00 AM,  total_pedido_encabezado =  432,  estado_pedido_encabezado =  1  WHERE pk_id_pedido_encabezado = 3; '),(218,1,1,'09/11/2020 17:14:16','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(219,1,3307,'09/11/2020 17:14:16','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(220,1,1,'09/11/2020 17:15:32','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(221,1,3307,'09/11/2020 17:15:32','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(222,1,1,'09/11/2020 17:17:32','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(223,1,3307,'09/11/2020 17:17:32','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(224,1,3308,'09/11/2020 17:17:32','25.1.57.37','MoratayaAlienware','UPDATE pedido_encabezado SET   fk_id_fabrica =  2,  estado_proceso_pedido_encabezado =  3,  fec_pedido_pedido_encabezado =  1/10/2020 12:00:00 AM,  total_pedido_encabezado =  432,  estado_pedido_encabezado =  1  WHERE pk_id_pedido_encabezado = 3; '),(225,1,3308,'09/11/2020 17:17:32','25.1.57.37','MoratayaAlienware','Salir de la aplicacion'),(226,1,1,'09/11/2020 17:20:06','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(227,1,3307,'09/11/2020 17:20:06','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(228,1,3308,'09/11/2020 17:20:06','25.1.57.37','MoratayaAlienware','Refrescar Datos'),(229,1,1,'09/11/2020 17:22:22','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(230,1,3307,'09/11/2020 17:22:22','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(231,1,1,'09/11/2020 17:25:34','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(232,1,3307,'09/11/2020 17:25:34','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(233,1,3308,'09/11/2020 17:25:34','25.1.57.37','MoratayaAlienware','UPDATE pedido_encabezado SET   fk_id_fabrica =  1,  estado_proceso_pedido_encabezado =  5,  fec_pedido_pedido_encabezado =  2020-01-01 00:00:00,  total_pedido_encabezado =  100,  estado_pedido_encabezado =  1  WHERE pk_id_pedido_encabezado = 1; '),(234,1,3308,'09/11/2020 17:25:34','25.1.57.37','MoratayaAlienware','Cancelar'),(235,1,1,'09/11/2020 17:28:31','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(236,1,3307,'09/11/2020 17:28:31','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(237,1,1,'09/11/2020 17:30:49','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(238,1,3307,'09/11/2020 17:30:49','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(239,1,1,'09/11/2020 17:31:45','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(240,1,3307,'09/11/2020 17:31:45','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(241,1,1,'09/11/2020 17:37:00','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(242,1,3307,'09/11/2020 17:37:00','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(243,1,1,'09/11/2020 17:39:07','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(244,1,3307,'09/11/2020 17:39:07','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(245,1,3308,'09/11/2020 17:39:07','25.1.57.37','MoratayaAlienware',' INSERT INTO pedido_encabezado VALUES ( 4,  1,  4,  2020-11-09 17:39:13,  21356,  1) '),(246,2,1,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(247,2,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Trato de Ingresar A Mantenimiento Aplicaciones'),(248,1,1,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(249,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Ingreso A Mantenimiento Aplicaciones'),(250,1,6,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Asignacion de Perfil y Aplicaciones'),(251,1,4,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Mantenimiento Perfil'),(252,1,6,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Asignacion de Perfil y Aplicaciones'),(253,1,5,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Asignacion de Aplicaciones a Perfil'),(254,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Consulta Perfiles'),(255,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Consulta Perfiles'),(256,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Modificación de Aplicacion a perfil'),(257,1,4,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Mantenimiento Perfil'),(258,1,4,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','UPDATE perfil SET   nombre_perfil =  MRP,  descripcion_perfil =  Administrador del MRP,  estado_perfil =  1  WHERE pk_id_perfil = 6; '),(259,1,5,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Asignacion de Aplicaciones a Perfil'),(260,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Consulta Perfiles'),(261,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Consulta Aplicaciones'),(262,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Consulta Aplicaciones'),(263,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Insercion de Aplicacion a perfil'),(264,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Consulta Aplicaciones'),(265,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Insercion de Aplicacion a perfil'),(266,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Consulta Aplicaciones'),(267,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Insercion de Aplicacion a perfil'),(268,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Consulta Aplicaciones'),(269,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Insercion de Aplicacion a perfil'),(270,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Consulta Aplicaciones'),(271,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Insercion de Aplicacion a perfil'),(272,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Consulta Aplicaciones'),(273,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Insercion de Aplicacion a perfil'),(274,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Consulta Aplicaciones'),(275,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Insercion de Aplicacion a perfil'),(276,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Consulta Aplicaciones'),(277,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Insercion de Aplicacion a perfil'),(278,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Consulta Aplicaciones'),(279,1,3,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Insercion de Aplicacion a perfil'),(280,1,6,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Asignacion de Perfil y Aplicaciones'),(281,2,1,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(282,2,3310,'09/11/2020 19:02:48','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(283,1,1,'09/11/2020 20:23:22','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(285,1,6,'09/11/2020 20:23:22','25.1.57.37','MoratayaAlienware','Ingreso a Asignacion de Perfil y Aplicaciones'),(286,1,3,'09/11/2020 20:23:22','25.1.57.37','MoratayaAlienware','Ingreso A Mantenimiento Aplicaciones'),(287,1,1,'09/11/2020 20:27:31','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(288,1,6,'09/11/2020 20:27:31','25.1.57.37','MoratayaAlienware','Ingreso a Asignacion de Perfil y Aplicaciones'),(289,1,3312,'09/11/2020 20:27:31','25.1.57.37','MoratayaAlienware','Ingreso Reporte de Produccion'),(290,2,1,'09/11/2020 19:29:07','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(291,2,3310,'09/11/2020 19:29:07','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(292,2,1,'09/11/2020 19:30:33','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(293,2,3310,'09/11/2020 19:30:33','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(294,2,3310,'09/11/2020 19:30:33','25.1.115.145','DESKTOP-L2EJSC3','Cancelar'),(295,2,1,'09/11/2020 19:34:54','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(296,2,3310,'09/11/2020 19:34:54','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(297,1,1,'09/11/2020 20:35:46','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(298,1,3308,'09/11/2020 20:35:46','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(299,1,3312,'09/11/2020 20:35:46','25.1.57.37','MoratayaAlienware','Ingreso Reporte de Produccion'),(300,2,1,'09/11/2020 19:38:26','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(301,2,3310,'09/11/2020 19:38:26','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(302,2,1,'09/11/2020 19:42:07','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(303,2,3310,'09/11/2020 19:42:07','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(304,2,1,'09/11/2020 19:52:44','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(305,2,1,'09/11/2020 19:57:46','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(306,2,3310,'09/11/2020 19:57:46','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(307,2,6,'09/11/2020 19:57:46','25.1.115.145','DESKTOP-L2EJSC3','Trato de Ingresar a Asignacion de perfil y aplicaciones'),(308,1,1,'09/11/2020 19:57:46','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(309,1,6,'09/11/2020 19:57:46','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Asignacion de Perfil y Aplicaciones'),(310,1,5,'09/11/2020 19:57:46','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Asignacion de Aplicaciones a Perfil'),(311,1,3,'09/11/2020 19:57:46','25.1.115.145','DESKTOP-L2EJSC3','Consulta Perfiles'),(312,2,1,'09/11/2020 19:57:46','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(313,2,3310,'09/11/2020 19:57:46','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(316,1,1,'09/11/2020 21:06:05','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(318,1,3,'09/11/2020 21:06:05','25.1.57.37','MoratayaAlienware','Ingreso A Mantenimiento Aplicaciones'),(319,1,1,'09/11/2020 21:11:45','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(320,1,3309,'09/11/2020 21:11:45','25.1.57.37','MoratayaAlienware','Trato de Ingresar a Reporte Produccion '),(321,1,6,'09/11/2020 21:11:45','25.1.57.37','MoratayaAlienware','Ingreso a Asignacion de Perfil y Aplicaciones'),(322,1,5,'09/11/2020 21:11:45','25.1.57.37','MoratayaAlienware','Ingreso a Asignacion de Aplicaciones a Perfil'),(323,1,3,'09/11/2020 21:11:45','25.1.57.37','MoratayaAlienware','Consulta Perfiles'),(324,1,3,'09/11/2020 21:11:45','25.1.57.37','MoratayaAlienware','Consulta Aplicaciones'),(325,1,3,'09/11/2020 21:11:45','25.1.57.37','MoratayaAlienware','Consulta Perfiles'),(326,1,3,'09/11/2020 21:11:45','25.1.57.37','MoratayaAlienware','Consulta Aplicaciones'),(327,1,3,'09/11/2020 21:11:45','25.1.57.37','MoratayaAlienware','Insercion de Aplicacion a perfil'),(328,1,3309,'09/11/2020 21:11:45','25.1.57.37','MoratayaAlienware','Trato de Ingresar a Reporte Produccion '),(329,1,8,'09/11/2020 21:11:45','25.1.57.37','MoratayaAlienware','ingreso a Mantenimiento Modulo'),(330,1,6,'09/11/2020 21:11:45','25.1.57.37','MoratayaAlienware','Ingreso a Asignacion de Perfil y Aplicaciones'),(331,1,3309,'09/11/2020 21:11:45','25.1.57.37','MoratayaAlienware','Ingreso Reporte de Produccion'),(332,1,1,'09/11/2020 21:15:32','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(333,1,3309,'09/11/2020 21:15:32','25.1.57.37','MoratayaAlienware','Ingreso Reporte de Produccion'),(334,2,1,'09/11/2020 20:22:13','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(335,2,3310,'09/11/2020 20:22:13','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(336,2,3309,'09/11/2020 20:22:13','25.1.115.145','DESKTOP-L2EJSC3','Cancelar'),(337,2,1,'09/11/2020 20:26:04','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(338,2,3310,'09/11/2020 20:26:04','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(339,2,3309,'09/11/2020 20:26:04','25.1.115.145','DESKTOP-L2EJSC3',' INSERT INTO orden_compra VALUES ( 1,  Producto 2,  2020-11-09 20:26:45,  100,  1) '),(340,1,1,'09/11/2020 21:27:41','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(341,1,3309,'09/11/2020 21:27:41','25.1.57.37','MoratayaAlienware','Ingreso Reporte de Produccion'),(342,1,1,'09/11/2020 21:28:37','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(343,1,3309,'09/11/2020 21:28:37','25.1.57.37','MoratayaAlienware','Ingreso Reporte de Produccion'),(344,1,1,'09/11/2020 21:30:01','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(345,1,3309,'09/11/2020 21:30:01','25.1.57.37','MoratayaAlienware','Ingreso Reporte de Produccion'),(346,1,1,'09/11/2020 21:31:09','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(347,1,3309,'09/11/2020 21:31:09','25.1.57.37','MoratayaAlienware','Ingreso Reporte de Produccion'),(348,1,1,'09/11/2020 20:32:08','25.102.225.59','BRYANMZ','Logeo Exitoso'),(349,1,5,'09/11/2020 20:32:08','25.102.225.59','BRYANMZ','Ingreso a Asignacion de Aplicaciones a Perfil'),(350,1,3,'09/11/2020 20:32:08','25.102.225.59','BRYANMZ','Consulta Perfiles'),(351,1,3,'09/11/2020 20:32:08','25.102.225.59','BRYANMZ','Consulta Aplicaciones'),(352,1,3,'09/11/2020 20:32:08','25.102.225.59','BRYANMZ','Insercion de Aplicacion a perfil'),(353,1,3,'09/11/2020 20:32:08','25.102.225.59','BRYANMZ','Consulta Perfiles'),(354,1,6,'09/11/2020 20:32:08','25.102.225.59','BRYANMZ','Ingreso a Asignacion de Perfil y Aplicaciones'),(355,1,1,'09/11/2020 21:35:21','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(356,1,3309,'09/11/2020 21:35:21','25.1.57.37','MoratayaAlienware','Ingreso Reporte de Produccion'),(357,1,2,'09/11/2020 20:32:08','25.102.225.59','BRYANMZ','Ingreso A Mantenimiento Usuario'),(358,1,2,'09/11/2020 20:32:08','25.102.225.59','BRYANMZ','Cancelar'),(359,1,6,'09/11/2020 20:32:08','25.102.225.59','BRYANMZ','Ingreso a Asignacion de Perfil y Aplicaciones'),(360,1,1,'09/11/2020 21:37:28','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(361,1,3309,'09/11/2020 21:37:28','25.1.57.37','MoratayaAlienware','Ingreso Reporte de Produccion'),(362,2,1,'09/11/2020 20:37:51','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(363,2,3310,'09/11/2020 20:37:51','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(364,3,1,'09/11/2020 20:32:08','25.102.225.59','BRYANMZ','Logeo Exitoso'),(365,1,1,'09/11/2020 21:38:33','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(366,1,3309,'09/11/2020 21:38:33','25.1.57.37','MoratayaAlienware','Ingreso Reporte de Produccion'),(367,3,11,'09/11/2020 20:32:08','25.102.225.59','BRYANMZ','Ingreso A Cambio de Contraseña'),(368,3,1,'09/11/2020 20:32:08','25.102.225.59','BRYANMZ','Logeo Exitoso'),(369,3,3313,'09/11/2020 20:32:08','25.102.225.59','BRYANMZ','Trato de Ingresar a Produccion'),(370,3,3313,'09/11/2020 20:32:08','25.102.225.59','BRYANMZ','Trato de Ingresar a Produccion'),(371,1,1,'09/11/2020 20:32:08','25.102.225.59','BRYANMZ','Logeo Exitoso'),(372,1,5,'09/11/2020 20:32:08','25.102.225.59','BRYANMZ','Ingreso a Asignacion de Aplicaciones a Perfil'),(373,1,3,'09/11/2020 20:32:08','25.102.225.59','BRYANMZ','Consulta Perfiles'),(374,1,1,'09/11/2020 21:42:26','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(375,1,3309,'09/11/2020 21:42:26','25.1.57.37','MoratayaAlienware','Ingreso Reporte de Produccion'),(376,1,3313,'09/11/2020 20:32:08','25.102.225.59','BRYANMZ','Trato de Ingresar a Produccion'),(377,2,1,'09/11/2020 20:44:02','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(378,2,3310,'09/11/2020 20:44:02','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(379,3,1,'09/11/2020 20:45:26','25.102.225.59','BRYANMZ','Logeo Exitoso'),(380,3,3313,'09/11/2020 20:45:26','25.102.225.59','BRYANMZ','Trato de Ingresar a Produccion'),(381,3,5,'09/11/2020 20:45:26','25.102.225.59','BRYANMZ','Trato de Ingresar A Asignacion de Aplicaciones a perfil'),(382,1,1,'09/11/2020 21:46:37','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(383,1,3309,'09/11/2020 21:46:37','25.1.57.37','MoratayaAlienware','Ingreso Reporte de Produccion'),(384,1,1,'09/11/2020 20:45:26','25.102.225.59','BRYANMZ','Logeo Exitoso'),(385,1,5,'09/11/2020 20:45:26','25.102.225.59','BRYANMZ','Ingreso a Asignacion de Aplicaciones a Perfil'),(386,1,3,'09/11/2020 20:45:26','25.102.225.59','BRYANMZ','Consulta Perfiles'),(387,1,6,'09/11/2020 20:45:26','25.102.225.59','BRYANMZ','Ingreso a Asignacion de Perfil y Aplicaciones'),(388,1,6,'09/11/2020 20:45:26','25.102.225.59','BRYANMZ','Ingreso a Asignacion de Perfil y Aplicaciones'),(389,3,1,'09/11/2020 20:45:26','25.102.225.59','BRYANMZ','Logeo Exitoso'),(390,3,3313,'09/11/2020 20:45:26','25.102.225.59','BRYANMZ','Ingreso a Produccion'),(391,2,1,'09/11/2020 20:52:54','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(392,2,3310,'09/11/2020 20:52:54','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(393,2,1,'09/11/2020 20:53:31','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(394,2,3310,'09/11/2020 20:53:31','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(395,2,3310,'09/11/2020 20:53:31','25.1.115.145','DESKTOP-L2EJSC3','Cancelar'),(396,1,1,'09/11/2020 21:58:14','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(397,1,3312,'09/11/2020 21:58:14','25.1.57.37','MoratayaAlienware','Ingreso Reporte de Produccion'),(398,1,3306,'09/11/2020 21:58:14','25.1.57.37','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(399,1,3307,'09/11/2020 21:58:14','25.1.57.37','MoratayaAlienware','Ingreso a Detalle De Receta'),(400,1,3308,'09/11/2020 21:58:14','25.1.57.37','MoratayaAlienware','Ingreso Recepcion Pedido'),(401,1,3309,'09/11/2020 21:58:14','25.1.57.37','MoratayaAlienware','Ingreso Reporte de Produccion'),(402,3,1,'09/11/2020 20:59:14','25.102.225.59','BRYANMZ','Logeo Exitoso'),(403,3,3313,'09/11/2020 20:59:14','25.102.225.59','BRYANMZ','Ingreso a Produccion'),(404,3,3313,'09/11/2020 20:59:14','25.102.225.59','BRYANMZ','Cancelar'),(405,3,3313,'09/11/2020 20:59:14','25.102.225.59','BRYANMZ','Cancelar'),(406,3,3313,'09/11/2020 20:59:14','25.102.225.59','BRYANMZ','Cancelar'),(407,3,3313,'09/11/2020 20:59:14','25.102.225.59','BRYANMZ','Ingreso a Produccion'),(408,3,1,'09/11/2020 21:49:50','25.102.225.59','BRYANMZ','Logeo Exitoso'),(409,3,3313,'09/11/2020 21:49:50','25.102.225.59','BRYANMZ','Ingreso a Produccion'),(410,3,3313,'09/11/2020 21:49:50','25.102.225.59','BRYANMZ','UPDATE control_producto SET   fk_id_estado_produccion_control_producto =  1,  fk_id_estado_produccion_control_producto =  6,  resultado_control_producto =   En corte,  estado_control_producto =  1  WHERE pk_id_control_producto = 2; '),(411,2,1,'09/11/2020 22:18:56','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(412,2,3310,'09/11/2020 22:18:56','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(413,2,1,'09/11/2020 22:21:29','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(414,2,3310,'09/11/2020 22:21:29','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(415,2,3310,'09/11/2020 22:21:29','25.1.115.145','DESKTOP-L2EJSC3','Cancelar'),(416,2,1,'09/11/2020 22:25:16','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(417,2,3310,'09/11/2020 22:25:16','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(418,2,3310,'09/11/2020 22:25:16','25.1.115.145','DESKTOP-L2EJSC3','Cancelar'),(419,2,1,'09/11/2020 22:28:17','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(420,2,3310,'09/11/2020 22:28:17','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(421,2,3310,'09/11/2020 22:28:17','25.1.115.145','DESKTOP-L2EJSC3',' INSERT INTO orden_compra VALUES ( 1,  2,  09-11-2020 22:28:39,  100,  1) '),(422,2,1,'09/11/2020 22:42:23','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(423,2,3310,'09/11/2020 22:42:23','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(424,2,3310,'09/11/2020 22:42:23','25.1.115.145','DESKTOP-L2EJSC3',' INSERT INTO orden_compra VALUES ( 1,  2,  10-11-2020 22:42:39,  100,  1) '),(425,2,3310,'09/11/2020 22:42:23','25.1.115.145','DESKTOP-L2EJSC3','Salir de la aplicacion'),(426,2,1,'09/11/2020 22:52:51','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(427,2,3310,'09/11/2020 22:52:51','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(428,2,1,'09/11/2020 22:54:34','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(429,2,3310,'09/11/2020 22:54:34','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(430,2,1,'09/11/2020 22:56:25','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(431,2,3310,'09/11/2020 22:56:25','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(432,2,3310,'09/11/2020 22:56:25','25.1.115.145','DESKTOP-L2EJSC3','Cancelar'),(433,2,1,'09/11/2020 22:58:02','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(434,2,3310,'09/11/2020 22:58:02','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(435,2,3310,'09/11/2020 22:58:02','25.1.115.145','DESKTOP-L2EJSC3',' INSERT INTO orden_compra VALUES ( 2,  1,  09-11-2020 22:58:19,  1500,  1) '),(436,2,1,'09/11/2020 23:01:07','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(437,2,3310,'09/11/2020 23:01:07','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(438,2,1,'09/11/2020 23:07:04','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(439,2,3310,'09/11/2020 23:07:04','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(440,2,1,'09/11/2020 23:12:06','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(441,2,3310,'09/11/2020 23:12:06','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Orden de Compra'),(442,2,3310,'09/11/2020 23:12:06','25.1.115.145','DESKTOP-L2EJSC3',' INSERT INTO orden_compra VALUES ( 3,  3,  10-11-2020 23:12:55,  1250,  1) '),(443,2,3310,'09/11/2020 23:12:06','25.1.115.145','DESKTOP-L2EJSC3','Salir de la aplicacion'),(444,3,1,'09/11/2020 23:13:55','25.102.225.59','BRYANMZ','Logeo Exitoso'),(445,3,3313,'09/11/2020 23:13:55','25.102.225.59','BRYANMZ','Ingreso a Produccion'),(446,3,3313,'09/11/2020 23:13:55','25.102.225.59','BRYANMZ','Ingreso a Produccion'),(447,3,1,'09/11/2020 23:21:16','25.102.225.59','BRYANMZ','Logeo Exitoso'),(448,3,3313,'09/11/2020 23:21:16','25.102.225.59','BRYANMZ','Ingreso a Produccion'),(449,3,3304,'09/11/2020 23:21:16','25.102.225.59','BRYANMZ','Ingreso Estado de Produccion'),(450,3,3304,'09/11/2020 23:21:16','25.102.225.59','BRYANMZ','UPDATE estado_produccion SET   nombre_estado_produccion =  En Espera,  duracion_estado_produccion =  2 horas,  estado_estado_produccion =  1  WHERE pk_id_estado_produccion = 3; '),(451,3,3304,'09/11/2020 23:21:16','25.102.225.59','BRYANMZ','UPDATE estado_produccion SET   nombre_estado_produccion =  En Espera,  duracion_estado_produccion =  1 dia,  estado_estado_produccion =  1  WHERE pk_id_estado_produccion = 3; '),(452,3,3304,'09/11/2020 23:21:16','25.102.225.59','BRYANMZ','UPDATE estado_produccion SET   nombre_estado_produccion =  Estado1,  duracion_estado_produccion =   min,  estado_estado_produccion =  1  WHERE pk_id_estado_produccion = 1; '),(453,3,3304,'09/11/2020 23:21:16','25.102.225.59','BRYANMZ','UPDATE estado_produccion SET   nombre_estado_produccion =  Estado1,  duracion_estado_produccion =   30min,  estado_estado_produccion =  1  WHERE pk_id_estado_produccion = 1; '),(454,3,3304,'09/11/2020 23:21:16','25.102.225.59','BRYANMZ',' INSERT INTO estado_produccion VALUES ( 7,  Costura,  1 hora,  1) '),(455,3,3304,'09/11/2020 23:21:16','25.102.225.59','BRYANMZ',' INSERT INTO estado_produccion VALUES ( 8,  Ensablado,  1 hora,  1) '),(456,3,3304,'09/11/2020 23:21:16','25.102.225.59','BRYANMZ',' INSERT INTO estado_produccion VALUES ( 9,  Sellado,  5 Minutos,  1) '),(457,3,3304,'09/11/2020 23:21:16','25.102.225.59','BRYANMZ',' INSERT INTO estado_produccion VALUES ( 10,  Empacado,  10 min,  1) '),(458,2,1,'09/11/2020 23:33:39','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(459,2,3309,'09/11/2020 23:33:39','25.1.115.145','DESKTOP-L2EJSC3','Ingreso Reporte de Produccion'),(460,1,1,'10/11/2020 00:34:19','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(461,3,3313,'09/11/2020 23:21:16','25.102.225.59','BRYANMZ','Ingreso a Produccion'),(462,2,3308,'09/11/2020 23:33:39','25.1.115.145','DESKTOP-L2EJSC3','Ingreso Recepcion Pedido'),(463,2,3309,'09/11/2020 23:33:39','25.1.115.145','DESKTOP-L2EJSC3','Ingreso Reporte de Produccion'),(464,3,3313,'09/11/2020 23:21:16','25.102.225.59','BRYANMZ','Cancelar'),(465,3,3304,'09/11/2020 23:21:16','25.102.225.59','BRYANMZ','Ingreso Estado de Produccion'),(466,3,3304,'09/11/2020 23:21:16','25.102.225.59','BRYANMZ',' INSERT INTO estado_produccion VALUES ( 11,  Finalizado,  0 min,  1) '),(467,3,3313,'09/11/2020 23:21:16','25.102.225.59','BRYANMZ','Ingreso a Produccion'),(468,3,3313,'09/11/2020 23:21:16','25.102.225.59','BRYANMZ','UPDATE control_producto SET   fk_id_estado_produccion_control_producto =  1,  fk_id_estado_produccion_control_producto =  11,  resultado_control_producto =   Finalizado,  estado_control_producto =  1  WHERE pk_id_control_producto = 1; '),(469,1,1,'10/11/2020 00:38:35','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(470,3,1,'09/11/2020 23:41:59','25.102.225.59','BRYANMZ','Logeo Exitoso'),(471,3,3313,'09/11/2020 23:41:59','25.102.225.59','BRYANMZ','Ingreso a Produccion'),(472,3,3313,'09/11/2020 23:41:59','25.102.225.59','BRYANMZ','Refrescar Datos'),(473,1,1,'10/11/2020 00:45:52','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(474,1,1,'10/11/2020 01:18:16','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(475,3,1,'10/11/2020 00:17:52','25.102.225.59','BRYANMZ','Logeo Exitoso'),(476,3,1,'10/11/2020 00:23:15','25.102.225.59','BRYANMZ','Logeo Exitoso'),(477,3,3313,'10/11/2020 00:23:15','25.102.225.59','BRYANMZ','Ingreso a Produccion'),(478,3,3313,'10/11/2020 00:23:15','25.102.225.59','BRYANMZ','UPDATE control_producto SET   fk_id_estado_produccion_control_producto =  1,  fk_id_estado_produccion_control_producto =  7,  resultado_control_producto =  Se encuentra en proceso,  estado_control_producto =  1  WHERE pk_id_control_producto = 1; '),(479,1,1,'10/11/2020 01:26:11','25.1.57.37','MoratayaAlienware','Logeo Exitoso'),(480,1,11,'10/11/2020 01:26:11','25.1.57.37','MoratayaAlienware','Ingreso A Cambio de Contraseña'),(481,1,3312,'10/11/2020 01:26:11','25.1.57.37','MoratayaAlienware','Ingreso Reporte de Produccion'),(482,2,1,'10/11/2020 00:45:23','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(483,2,1,'10/11/2020 00:46:46','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(484,2,1,'10/11/2020 01:07:04','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(485,2,101,'10/11/2020 01:07:04','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Gestor de Reportes'),(486,2,104,'10/11/2020 01:07:04','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Asignación de Reportes a Módulos'),(487,2,105,'10/11/2020 01:07:04','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Asignación de Reportes a Aplicación '),(488,2,3313,'10/11/2020 01:07:04','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Produccion'),(489,2,1,'10/11/2020 01:30:00','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(490,2,3302,'10/11/2020 01:30:00','25.1.115.145','DESKTOP-L2EJSC3','Ingreso Manteniento Producto'),(491,2,3302,'10/11/2020 01:30:00','25.1.115.145','DESKTOP-L2EJSC3','Formulario de ayuda'),(492,2,1,'10/11/2020 01:30:00','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(493,2,3308,'10/11/2020 01:30:00','25.1.115.145','DESKTOP-L2EJSC3','Ingreso Recepcion Pedido'),(494,2,3308,'10/11/2020 01:30:00','25.1.115.145','DESKTOP-L2EJSC3','Formulario de ayuda'),(495,1,1,'10/11/2020 06:54:28','25.79.247.79','DESKTOP-CS0DPTN','Logeo Exitoso'),(496,1,3308,'10/11/2020 06:54:28','25.79.247.79','DESKTOP-CS0DPTN','Ingreso Recepcion Pedido'),(497,2,1,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Logeo erroneo'),(498,2,1,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(499,2,3308,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Ingreso Recepcion Pedido'),(500,2,102,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Asignación de Reportes a Aplicación '),(501,2,3312,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Trato de Ingresar a Reporte Produccion '),(502,2,5,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Trato de Ingresar A Asignacion de Aplicaciones a perfil'),(503,1,1,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Logeo erroneo'),(504,1,1,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(505,1,5,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Asignacion de Aplicaciones a Perfil'),(506,1,3,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Consulta Perfiles'),(507,1,3,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Consulta Aplicaciones'),(508,1,3,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Insercion de Aplicacion a perfil'),(509,2,1,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(510,2,3312,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Ingreso Reporte de Produccion'),(511,1,1,'10/11/2020 07:29:05','25.79.247.79','DESKTOP-CS0DPTN','Logeo Exitoso'),(512,1,5,'10/11/2020 07:29:05','25.79.247.79','DESKTOP-CS0DPTN','Ingreso a Mantenimiento Linea De Productos'),(513,1,3305,'10/11/2020 07:29:05','25.79.247.79','DESKTOP-CS0DPTN',' INSERT INTO linea_producto VALUES ( 3,  pruebahoy,  hola,  1) '),(514,1,3305,'10/11/2020 07:29:05','25.79.247.79','DESKTOP-CS0DPTN','UPDATE linea_producto SET   nombre_linea_producto =  Prueba ,  descripcion_linea_producto =  Linea de pruebas descripcion,  estado_linea_producto =  1  WHERE pk_id_linea_producto = 1; '),(515,1,3305,'10/11/2020 07:29:05','25.79.247.79','DESKTOP-CS0DPTN','Formulario de ayuda'),(516,1,3302,'10/11/2020 07:29:05','25.79.247.79','DESKTOP-CS0DPTN','Ingreso Mantenimiento Categoria Productos'),(517,1,3302,'10/11/2020 07:29:05','25.79.247.79','DESKTOP-CS0DPTN',' INSERT INTO categoria_producto VALUES ( 3,  pruebahoy,  prueba,  1) '),(518,1,3302,'10/11/2020 07:29:05','25.79.247.79','DESKTOP-CS0DPTN',' INSERT INTO categoria_producto VALUES ( 4,  pureba4,  prueba4,  0) '),(519,2,3302,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Ingreso Mantenimiento Categoria Productos'),(520,2,3302,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3',' INSERT INTO categoria_producto VALUES ( 5,  Limpieza,  articulos de limpieza,  0) '),(521,2,3302,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3',' INSERT INTO categoria_producto VALUES ( 6,  Limpieza,  Articulos de limpieza y hogar,  1) '),(522,2,3302,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Formulario de ayuda'),(523,2,3312,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Ingreso Reporte de Produccion'),(524,2,105,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Asignación de Reportes a Aplicación '),(525,2,3308,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Ingreso Recepcion Pedido'),(526,2,3308,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Cancelar'),(527,2,3308,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','UPDATE pedido_encabezado SET   fk_id_fabrica =  1,  estado_proceso_pedido_encabezado =  4,  fec_pedido_pedido_encabezado =  2020-01-10 00:00:00,  total_pedido_encabezado =  432,  estado_pedido_encabezado =  1  WHERE pk_id_pedido_encabezado = 3; '),(528,2,3309,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Ingreso Pedido Detalle'),(529,2,3309,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3',' INSERT INTO pedido_detalle VALUES ( 3,  1,  2,  150,  10,  1150,  1) '),(530,2,3313,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Produccion'),(531,2,3313,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Cancelar'),(532,2,3313,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','UPDATE control_producto SET   fk_id_estado_produccion_control_producto =  1,  fk_id_estado_produccion_control_producto =  10,  resultado_control_producto =  Se encuentra en proceso,  estado_control_producto =  1  WHERE pk_id_control_producto = 1; '),(533,2,3306,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Mantenimiento De Receta'),(534,2,3306,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3',' INSERT INTO recetas_encabezado VALUES ( 4,  Receta de colchones,  1,  1) '),(535,2,3307,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3','Ingreso a Detalle De Receta'),(536,2,3307,'10/11/2020 07:11:14','25.1.115.145','DESKTOP-L2EJSC3',' INSERT INTO detalle_receta VALUES ( 5,  4,  1,  1,  10,  10,  1) '),(537,1,1,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Logeo Exitoso'),(538,1,3302,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Ingreso Manteniento Producto'),(539,1,3302,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware',' INSERT INTO producto VALUES ( 4,  2,  3,  Cama Imperial,  5000,  56,  Cama Comoda,  1) '),(540,1,3302,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Salir de la aplicacion'),(541,1,3302,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Ingreso Mantenimiento Categoria Productos'),(542,1,3302,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware',' INSERT INTO categoria_producto VALUES ( 7,  Corte,  Fase de Corte,  1) '),(543,1,3302,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Salir de la aplicacion'),(544,1,3302,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Ingreso Mantenimiento Categoria Productos'),(545,1,3302,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Formulario de ayuda'),(546,1,3304,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Ingreso Estado de Produccion'),(547,1,3304,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware',' INSERT INTO estado_produccion VALUES ( 12,  Estado Prueba,  12 Dias,  1) '),(548,1,3304,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','UPDATE estado_produccion SET   nombre_estado_produccion =  Estado1 Modifcado,  duracion_estado_produccion =   30min,  estado_estado_produccion =  1  WHERE pk_id_estado_produccion = 1; '),(549,1,3304,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Formulario de ayuda'),(550,1,5,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Ingreso a Mantenimiento Linea De Productos'),(551,1,3306,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Ingreso a Mantenimiento De Receta'),(552,1,3306,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware',' INSERT INTO recetas_encabezado VALUES ( 5,  Colchon,  4,  1) '),(553,1,3306,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Formulario de ayuda'),(554,1,3307,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Ingreso a Detalle De Receta'),(555,1,3307,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware',' INSERT INTO detalle_receta VALUES ( 6,  5,  6,  1,  5,  10,  1) '),(556,1,3307,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware',' INSERT INTO detalle_receta VALUES ( 7,  5,  7,  2,  50,  100,  1) '),(557,1,3307,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Salir de la aplicacion'),(558,1,3308,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Ingreso Recepcion Pedido'),(559,1,3308,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Cancelar'),(560,1,3308,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','UPDATE pedido_encabezado SET   fk_id_fabrica =  2,  estado_proceso_pedido_encabezado =  3,  fec_pedido_pedido_encabezado =  2020-01-02 00:00:00,  total_pedido_encabezado =  200,  estado_pedido_encabezado =  1  WHERE pk_id_pedido_encabezado = 2; '),(561,1,3308,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','UPDATE pedido_encabezado SET   fk_id_fabrica =  2,  estado_proceso_pedido_encabezado =  4,  fec_pedido_pedido_encabezado =  2020-01-02 00:00:00,  total_pedido_encabezado =  200,  estado_pedido_encabezado =  1  WHERE pk_id_pedido_encabezado = 2; '),(562,1,3308,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Salir de la aplicacion'),(563,1,3309,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Ingreso Pedido Detalle'),(564,1,3309,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware',' INSERT INTO pedido_detalle VALUES ( 4,  1,  1,  10,  5,  50,  1) '),(565,1,3309,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Salir de la aplicacion'),(566,1,3310,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Trato de Ingresar a Generar Orden de Compra'),(567,1,6,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Ingreso a Asignacion de Perfil y Aplicaciones'),(568,1,3310,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Ingreso Generar Orden de Compra'),(569,1,3309,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','UPDATE pedido_detalle SET   cod_linea_pedido_detalle =  2,  fk_id_producto =  4,  cantidad_pedido_detalle =  30,  precio_unitario_pedido_detalle =  100,  subtotal_pedido_detalle =  400,  estado_pedido_detalle =  1  WHERE fk_id_pedido_encabezado = 2; '),(570,1,3313,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Ingreso a Produccion'),(571,1,3313,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','UPDATE control_producto SET   fk_id_estado_produccion_control_producto =  3,  fk_id_estado_produccion_control_producto =  11,  resultado_control_producto =  Confirmado,  estado_control_producto =  1  WHERE pk_id_control_producto = 3; '),(572,1,3312,'10/11/2020 15:17:44','192.168.0.3','MoratayaAlienware','Ingreso Reporte de Produccion'),(573,1,1,'10/11/2020 16:13:54','25.79.247.79','DESKTOP-CS0DPTN','Logeo Exitoso'),(574,1,3302,'10/11/2020 16:13:54','25.79.247.79','DESKTOP-CS0DPTN','Ingreso Manteniento Producto'),(575,1,3302,'10/11/2020 16:13:54','25.79.247.79','DESKTOP-CS0DPTN','Ingreso Mantenimiento Categoria Productos'),(576,1,3304,'10/11/2020 16:13:54','25.79.247.79','DESKTOP-CS0DPTN','Ingreso Estado de Produccion'),(577,1,3304,'10/11/2020 16:13:54','25.79.247.79','DESKTOP-CS0DPTN','Ingreso Estado de Produccion'),(578,1,5,'10/11/2020 16:13:54','25.79.247.79','DESKTOP-CS0DPTN','Ingreso a Mantenimiento Linea De Productos'),(579,1,3306,'10/11/2020 16:13:54','25.79.247.79','DESKTOP-CS0DPTN','Ingreso a Mantenimiento De Receta'),(580,1,3307,'10/11/2020 16:13:54','25.79.247.79','DESKTOP-CS0DPTN','Ingreso a Detalle De Receta'),(581,1,3308,'10/11/2020 16:13:54','25.79.247.79','DESKTOP-CS0DPTN','Ingreso Recepcion Pedido'),(582,1,1,'10/11/2020 17:12:25','25.79.247.79','DESKTOP-CS0DPTN','Logeo Exitoso'),(583,1,3309,'10/11/2020 17:12:25','25.79.247.79','DESKTOP-CS0DPTN','Ingreso Pedido Detalle'),(584,1,3310,'10/11/2020 17:12:25','25.79.247.79','DESKTOP-CS0DPTN','Ingreso Generar Orden de Compra'),(585,1,3310,'10/11/2020 17:12:25','25.79.247.79','DESKTOP-CS0DPTN','Ingreso Generar Orden de Compra'),(586,1,3313,'10/11/2020 17:12:25','25.79.247.79','DESKTOP-CS0DPTN','Ingreso a Produccion'),(587,1,3310,'10/11/2020 17:12:25','25.79.247.79','DESKTOP-CS0DPTN','Ingreso Generar Orden de Compra'),(588,1,3310,'10/11/2020 17:12:25','25.79.247.79','DESKTOP-CS0DPTN','Ingreso Generar Orden de Compra'),(589,1,3309,'10/11/2020 17:12:25','25.79.247.79','DESKTOP-CS0DPTN','Ingreso Pedido Detalle'),(590,1,3310,'10/11/2020 17:12:25','25.79.247.79','DESKTOP-CS0DPTN','Ingreso Generar Orden de Compra'),(591,2,1,'10/11/2020 17:35:32','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(592,2,3310,'10/11/2020 17:35:32','25.1.115.145','DESKTOP-L2EJSC3','Ingreso Generar Orden de Compra'),(593,2,1,'10/11/2020 17:56:23','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(594,2,3310,'10/11/2020 17:56:23','25.1.115.145','DESKTOP-L2EJSC3','Ingreso Generar Orden de Compra'),(595,2,1,'10/11/2020 18:13:52','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(596,2,3309,'10/11/2020 18:13:52','25.1.115.145','DESKTOP-L2EJSC3','Ingreso Pedido Detalle'),(597,2,1,'10/11/2020 18:16:39','25.1.115.145','DESKTOP-L2EJSC3','Logeo Exitoso'),(598,2,3309,'10/11/2020 18:16:39','25.1.115.145','DESKTOP-L2EJSC3','Ingreso Pedido Detalle'),(599,2,3309,'10/11/2020 18:16:39','25.1.115.145','DESKTOP-L2EJSC3','UPDATE pedido_detalle SET   cod_linea_pedido_detalle =  1,  fk_id_producto =  1,  cantidad_pedido_detalle =  10,  precio_unitario_pedido_detalle =  150,  subtotal_pedido_detalle =  1500,  estado_pedido_detalle =  1  WHERE fk_id_pedido_encabezado = 1;'),(600,2,3309,'10/11/2020 18:16:39','25.1.115.145','DESKTOP-L2EJSC3','Salir de la aplicacion');
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodega`
--

DROP TABLE IF EXISTS `bodega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bodega` (
  `pk_id_bodega` int NOT NULL AUTO_INCREMENT,
  `fk_id_municipio` int NOT NULL,
  `descripcion_bodega` varchar(45) NOT NULL,
  `dimensiones_bodega` double(5,2) NOT NULL,
  `direccion_bodega` varchar(45) NOT NULL,
  `telefono_bodega` int NOT NULL,
  `estado_bodega` int NOT NULL,
  PRIMARY KEY (`pk_id_bodega`),
  KEY `pk_id_bodega` (`pk_id_bodega`),
  KEY `fk_bodega_municipio` (`fk_id_municipio`),
  CONSTRAINT `fk_bodega_municipio` FOREIGN KEY (`fk_id_municipio`) REFERENCES `municipio` (`pk_id_municipio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodega`
--

LOCK TABLES `bodega` WRITE;
/*!40000 ALTER TABLE `bodega` DISABLE KEYS */;
/*!40000 ALTER TABLE `bodega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capacitacion`
--

DROP TABLE IF EXISTS `capacitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capacitacion` (
  `pk_id_capacitacion` int NOT NULL,
  `fk_id_encabezado_capacitacion` int DEFAULT NULL,
  `fk_id_empleado_capacitacion` int DEFAULT NULL,
  `resultado_capacitacion` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`pk_id_capacitacion`),
  KEY `fk_encabezado_capacitacion` (`fk_id_encabezado_capacitacion`),
  KEY `fk_empleado_capacitacion` (`fk_id_empleado_capacitacion`),
  CONSTRAINT `fk_empleado_capacitacion` FOREIGN KEY (`fk_id_empleado_capacitacion`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_encabezado_capacitacion` FOREIGN KEY (`fk_id_encabezado_capacitacion`) REFERENCES `encabezado_capacitacion` (`pk_id_encabezado_capacitacion`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capacitacion`
--

LOCK TABLES `capacitacion` WRITE;
/*!40000 ALTER TABLE `capacitacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `capacitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_producto`
--

DROP TABLE IF EXISTS `categoria_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_producto` (
  `pk_id_categoria_producto` int NOT NULL AUTO_INCREMENT,
  `nombre_categoria_producto` varchar(35) NOT NULL,
  `descripcion_categoria_producto` varchar(60) NOT NULL,
  `estado_categoria_producto` int NOT NULL,
  PRIMARY KEY (`pk_id_categoria_producto`),
  KEY `pk_id_categoria_producto` (`pk_id_categoria_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_producto`
--

LOCK TABLES `categoria_producto` WRITE;
/*!40000 ALTER TABLE `categoria_producto` DISABLE KEYS */;
INSERT INTO `categoria_producto` VALUES (1,'Prueba Categoria Producto','Descipcion categoria producto 1',1),(2,'Prueba 2 categoria','Cat 2 Prueba',1),(3,'pruebahoy','prueba',1),(4,'pureba4','prueba4',0),(5,'Limpieza','articulos de limpieza',0),(6,'Limpieza','Articulos de limpieza y hogar',1),(7,'Corte','Fase de Corte',1);
/*!40000 ALTER TABLE `categoria_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `pk_id_cliente` int NOT NULL AUTO_INCREMENT,
  `nit_cliente` varchar(45) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `nombre_cliente` varchar(45) DEFAULT NULL,
  `apellido_cliente` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `correo_cliente` varchar(45) DEFAULT NULL,
  `direccion_cliente` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pk_id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competencia_desarrollo`
--

DROP TABLE IF EXISTS `competencia_desarrollo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competencia_desarrollo` (
  `pk_id_competencia_desarrollo` int NOT NULL,
  `fk_id_encabezado_competencia` int NOT NULL,
  `fk_id_tipo_competencia_desarrollo` int DEFAULT NULL,
  `resultado_competencia_desarrollo` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_competencia_desarrollo`),
  KEY `fk_encabezado_competencia` (`fk_id_encabezado_competencia`),
  KEY `fk_tipo_competencia_desarrollo` (`fk_id_tipo_competencia_desarrollo`),
  CONSTRAINT `fk_encabezado_competencia` FOREIGN KEY (`fk_id_encabezado_competencia`) REFERENCES `encabezado_competencia` (`pk_id_encabezado_competencia`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_tipo_competencia_desarrollo` FOREIGN KEY (`fk_id_tipo_competencia_desarrollo`) REFERENCES `tipo_competencia` (`pk_id_tipo_competencia`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competencia_desarrollo`
--

LOCK TABLES `competencia_desarrollo` WRITE;
/*!40000 ALTER TABLE `competencia_desarrollo` DISABLE KEYS */;
/*!40000 ALTER TABLE `competencia_desarrollo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_detalle`
--

DROP TABLE IF EXISTS `compra_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra_detalle` (
  `fk_id_compra_encabezado` int NOT NULL,
  `cod_linea_compra_detalle` int NOT NULL,
  `fk_id_producto` int NOT NULL,
  `cantidad_compra_detalle` int NOT NULL,
  `precio_unitario_compra_detalle` double(8,2) NOT NULL,
  `subtotal_compra_detalle` double(12,2) NOT NULL,
  `estado_compra_detalle` int NOT NULL,
  PRIMARY KEY (`fk_id_compra_encabezado`,`cod_linea_compra_detalle`),
  KEY `fk_id_compra_encabezado` (`fk_id_compra_encabezado`,`cod_linea_compra_detalle`),
  KEY `fk_compra_producto` (`fk_id_producto`),
  CONSTRAINT `fk_compra_detalle` FOREIGN KEY (`fk_id_compra_encabezado`) REFERENCES `compra_encabezado` (`pk_id_compra_encabezado`),
  CONSTRAINT `fk_compra_producto` FOREIGN KEY (`fk_id_producto`) REFERENCES `producto` (`pk_id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_detalle`
--

LOCK TABLES `compra_detalle` WRITE;
/*!40000 ALTER TABLE `compra_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_encabezado`
--

DROP TABLE IF EXISTS `compra_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra_encabezado` (
  `pk_id_compra_encabezado` int NOT NULL,
  `fk_id_proveedor` int NOT NULL,
  `estado_proceso_encabezado_compra` int NOT NULL,
  `fec_compra_encabezado_compra` datetime NOT NULL,
  `total_compra_encabezado_compra` double(12,2) NOT NULL,
  `estado_encabezado_compra` int NOT NULL,
  PRIMARY KEY (`pk_id_compra_encabezado`),
  KEY `pk_id_compra_encabezado` (`pk_id_compra_encabezado`),
  KEY `fk_compra_proveedor` (`fk_id_proveedor`),
  CONSTRAINT `fk_compra_proveedor` FOREIGN KEY (`fk_id_proveedor`) REFERENCES `proveedor` (`pk_id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_encabezado`
--

LOCK TABLES `compra_encabezado` WRITE;
/*!40000 ALTER TABLE `compra_encabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consulta_inteligente`
--

DROP TABLE IF EXISTS `consulta_inteligente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consulta_inteligente` (
  `pk_id_consulta_inteligente` int NOT NULL AUTO_INCREMENT,
  `nombre_consulta_inteligente` varchar(100) DEFAULT NULL,
  `contenido_consulta_inteligente` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`pk_id_consulta_inteligente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta_inteligente`
--

LOCK TABLES `consulta_inteligente` WRITE;
/*!40000 ALTER TABLE `consulta_inteligente` DISABLE KEYS */;
/*!40000 ALTER TABLE `consulta_inteligente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_asistencia`
--

DROP TABLE IF EXISTS `control_asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `control_asistencia` (
  `pk_id_control_asistencia` int NOT NULL,
  `fk_id_control_asistencia_empleado` int DEFAULT NULL,
  `fk_id_control_asistencia_encabezado_nomina` int DEFAULT NULL,
  `dias_laborados` int DEFAULT NULL,
  `dias_ausente_justificados` int DEFAULT NULL,
  `dias_ausente_injustificados` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_control_asistencia`),
  KEY `fk_control_asistencia_empleado` (`fk_id_control_asistencia_empleado`),
  KEY `fk_control_asistencia_encabezado_nomina` (`fk_id_control_asistencia_encabezado_nomina`),
  CONSTRAINT `fk_control_asistencia_empleado` FOREIGN KEY (`fk_id_control_asistencia_empleado`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_control_asistencia_encabezado_nomina` FOREIGN KEY (`fk_id_control_asistencia_encabezado_nomina`) REFERENCES `encabezado_nomina` (`pk_id_encabezado_nomina`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_asistencia`
--

LOCK TABLES `control_asistencia` WRITE;
/*!40000 ALTER TABLE `control_asistencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `control_asistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_calidad`
--

DROP TABLE IF EXISTS `control_calidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `control_calidad` (
  `pk_id_control_calidad` int NOT NULL AUTO_INCREMENT,
  `fk_id_pedido_encabezado_control_calidad` int NOT NULL,
  `fk_id_empleado_control_calidad` int NOT NULL,
  `resultado_control_calidad` varchar(45) DEFAULT NULL,
  `estado_control_calidad` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_control_calidad`),
  KEY `fk_CONTROL_CALIDAD_PEDIDO_ENCABEZADO` (`fk_id_pedido_encabezado_control_calidad`),
  CONSTRAINT `fk_CONTROL_CALIDAD_PEDIDO_ENCABEZADO` FOREIGN KEY (`fk_id_pedido_encabezado_control_calidad`) REFERENCES `pedido_encabezado` (`pk_id_pedido_encabezado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_calidad`
--

LOCK TABLES `control_calidad` WRITE;
/*!40000 ALTER TABLE `control_calidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `control_calidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_empleado`
--

DROP TABLE IF EXISTS `control_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `control_empleado` (
  `pk_id_control` int NOT NULL AUTO_INCREMENT,
  `horas_extras_de_trabajo` varchar(45) DEFAULT NULL,
  `comisiones_ventas` varchar(45) DEFAULT NULL,
  `fk_id_venta` int NOT NULL,
  `fk_id_empleado` int NOT NULL,
  PRIMARY KEY (`pk_id_control`),
  KEY `fk_CONTROL_EMPLEADO_EMPLEADOS HRM1_idx` (`fk_id_empleado`),
  CONSTRAINT `fk_CONTROL_EMPLEADO_EMPLEADOS HRM1` FOREIGN KEY (`fk_id_empleado`) REFERENCES `empleado` (`pk_id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_empleado`
--

LOCK TABLES `control_empleado` WRITE;
/*!40000 ALTER TABLE `control_empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `control_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_horas`
--

DROP TABLE IF EXISTS `control_horas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `control_horas` (
  `pk_id_control_horas` int NOT NULL,
  `fk_id_control_horas_empleado` int DEFAULT NULL,
  `fk_id_control_horas_encabezado_nomina` int DEFAULT NULL,
  `horas_hordinarias` double DEFAULT NULL,
  `horas_extra` double DEFAULT NULL,
  PRIMARY KEY (`pk_id_control_horas`),
  KEY `fk_control_horas_empleado` (`fk_id_control_horas_empleado`),
  KEY `fk_control_horas_encabezado_nomina` (`fk_id_control_horas_encabezado_nomina`),
  CONSTRAINT `fk_control_horas_empleado` FOREIGN KEY (`fk_id_control_horas_empleado`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_control_horas_encabezado_nomina` FOREIGN KEY (`fk_id_control_horas_encabezado_nomina`) REFERENCES `encabezado_nomina` (`pk_id_encabezado_nomina`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_horas`
--

LOCK TABLES `control_horas` WRITE;
/*!40000 ALTER TABLE `control_horas` DISABLE KEYS */;
/*!40000 ALTER TABLE `control_horas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_producto`
--

DROP TABLE IF EXISTS `control_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `control_producto` (
  `pk_id_control_producto` int NOT NULL AUTO_INCREMENT,
  `fk_id_pedido_encabezado_control_producto` int DEFAULT NULL,
  `fk_id_estado_produccion_control_producto` int DEFAULT NULL,
  `resultado_control_producto` varchar(45) DEFAULT NULL,
  `estado_control_producto` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_control_producto`),
  KEY `fk_CONTROL_PRODUCTO_ORDEN_PRODUCCION1` (`fk_id_pedido_encabezado_control_producto`),
  KEY `fk_CONTROL_PRODUCTO_ESTADO_PRODUCCION` (`fk_id_estado_produccion_control_producto`),
  CONSTRAINT `fk_CONTROL_PRODUCTO_ESTADO_PRODUCCION` FOREIGN KEY (`fk_id_estado_produccion_control_producto`) REFERENCES `estado_produccion` (`pk_id_estado_produccion`),
  CONSTRAINT `fk_CONTROL_PRODUCTO_ORDEN_PRODUCCION1` FOREIGN KEY (`fk_id_pedido_encabezado_control_producto`) REFERENCES `pedido_encabezado` (`pk_id_pedido_encabezado`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_producto`
--

LOCK TABLES `control_producto` WRITE;
/*!40000 ALTER TABLE `control_producto` DISABLE KEYS */;
INSERT INTO `control_producto` VALUES (1,1,10,'Se encuentra en proceso',1),(2,2,6,'Finalizado',0),(3,3,11,'Finalizado',0),(4,2,4,'Confirmado',1);
/*!40000 ALTER TABLE `control_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correo_proveedor`
--

DROP TABLE IF EXISTS `correo_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `correo_proveedor` (
  `pk_id_correo_proveedor` int NOT NULL AUTO_INCREMENT,
  `fk_id_proveedor` int NOT NULL,
  `correo_correo_proveedor` varchar(50) NOT NULL,
  `estado_correo_proveedor` int NOT NULL,
  PRIMARY KEY (`pk_id_correo_proveedor`),
  KEY `pk_id_correo_proveedor` (`pk_id_correo_proveedor`),
  KEY `fk_proveedor_correo` (`fk_id_proveedor`),
  CONSTRAINT `fk_proveedor_correo` FOREIGN KEY (`fk_id_proveedor`) REFERENCES `proveedor` (`pk_id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correo_proveedor`
--

LOCK TABLES `correo_proveedor` WRITE;
/*!40000 ALTER TABLE `correo_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `correo_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizacion`
--

DROP TABLE IF EXISTS `cotizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cotizacion` (
  `pk_id_cotizacion` int NOT NULL AUTO_INCREMENT,
  `fk_id_cliente` int NOT NULL,
  `fecha_cotizacion` date DEFAULT NULL,
  `total_cotizacion` varchar(45) DEFAULT NULL,
  `estado_cotizacion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pk_id_cotizacion`),
  KEY `fk_COTIZACION_CLIENTES1_idx` (`fk_id_cliente`),
  CONSTRAINT `fk_COTIZACION_CLIENTES1` FOREIGN KEY (`fk_id_cliente`) REFERENCES `clientes` (`pk_id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacion`
--

LOCK TABLES `cotizacion` WRITE;
/*!40000 ALTER TABLE `cotizacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `cotizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuenta_bancaria`
--

DROP TABLE IF EXISTS `cuenta_bancaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuenta_bancaria` (
  `pk_id_numero_cuenta_bancaria` int NOT NULL,
  `fk_id_banco` int NOT NULL,
  `fk_id_propietario` int NOT NULL,
  `fk_id_tipo_moneda` int NOT NULL,
  `saldo_cuenta_bancaria` double DEFAULT NULL,
  `fecha_apertura_cuenta_bancaria` datetime DEFAULT NULL,
  `estado_apertura_cuenta_bancaria` tinyint DEFAULT NULL,
  PRIMARY KEY (`pk_id_numero_cuenta_bancaria`),
  KEY `fk_cuenta_bancaria_banco` (`fk_id_banco`),
  KEY `fk_cuenta_bancaria_propietario` (`fk_id_propietario`),
  KEY `fk_cuenta_bancaria_tipomoneda` (`fk_id_tipo_moneda`),
  CONSTRAINT `fk_cuenta_bancaria_banco` FOREIGN KEY (`fk_id_banco`) REFERENCES `banco` (`pk_id_banco`),
  CONSTRAINT `fk_cuenta_bancaria_propietario` FOREIGN KEY (`fk_id_propietario`) REFERENCES `propietario` (`pk_id_propietario`),
  CONSTRAINT `fk_cuenta_bancaria_tipomoneda` FOREIGN KEY (`fk_id_tipo_moneda`) REFERENCES `tipo_moneda` (`pk_id_tipo_moneda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta_bancaria`
--

LOCK TABLES `cuenta_bancaria` WRITE;
/*!40000 ALTER TABLE `cuenta_bancaria` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuenta_bancaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuenta_contable`
--

DROP TABLE IF EXISTS `cuenta_contable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuenta_contable` (
  `pk_id_cuenta_contable` int NOT NULL,
  `nombre_cuenta_contable` varchar(75) DEFAULT NULL,
  `nivel_cuenta_contable` int DEFAULT NULL,
  `fk_cuenta_padre_cuenta_contable` int DEFAULT NULL,
  `saldo_anterior_cuenta_contable` double DEFAULT NULL,
  `saldo_actual_cuenta_contable` double DEFAULT NULL,
  `cargo_mes_cuenta_contable` double DEFAULT NULL,
  `abono_mes_cuenta_contable` double DEFAULT NULL,
  `cargo_acumulado_cuenta_contable` double DEFAULT NULL,
  `abono_acumulado_cuenta_contable` double DEFAULT NULL,
  `estado_cuenta_contable` tinyint DEFAULT NULL,
  `fk_id_tipo_cuenta_contable` int NOT NULL,
  PRIMARY KEY (`pk_id_cuenta_contable`),
  KEY `fk_cuenta_padre_cuenta_hijo` (`fk_cuenta_padre_cuenta_contable`),
  KEY `fk_tipo_cuenta_cuenta_contable` (`fk_id_tipo_cuenta_contable`),
  CONSTRAINT `fk_cuenta_padre_cuenta_hijo` FOREIGN KEY (`fk_cuenta_padre_cuenta_contable`) REFERENCES `cuenta_contable` (`pk_id_cuenta_contable`),
  CONSTRAINT `fk_tipo_cuenta_contable` FOREIGN KEY (`fk_id_tipo_cuenta_contable`) REFERENCES `tipo_cuenta_contable` (`pk_id_tipo_cuenta_contable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta_contable`
--

LOCK TABLES `cuenta_contable` WRITE;
/*!40000 ALTER TABLE `cuenta_contable` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuenta_contable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `pk_id_curso` int NOT NULL,
  `nombre_curso` varchar(45) DEFAULT NULL,
  `fk_id_empleado_curso` int DEFAULT NULL,
  `detalle_curso` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`pk_id_curso`),
  KEY `fk_empleado_curso` (`fk_id_empleado_curso`),
  CONSTRAINT `fk_empleado_curso` FOREIGN KEY (`fk_id_empleado_curso`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deduccion`
--

DROP TABLE IF EXISTS `deduccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deduccion` (
  `pk_id_deduccion` int NOT NULL,
  `nombre_deduccion` varchar(45) DEFAULT NULL,
  `monto_deduccion` double DEFAULT NULL,
  `descripcion_deduccion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`pk_id_deduccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deduccion`
--

LOCK TABLES `deduccion` WRITE;
/*!40000 ALTER TABLE `deduccion` DISABLE KEYS */;
INSERT INTO `deduccion` VALUES (1,'Cobro1',100,'Cobro por prueba 1'),(2,'Cobro1',1,'asdf'),(3,'Cobro1',1,'asd'),(4,'a',1,'asdf'),(5,'a',1,'asdf');
/*!40000 ALTER TABLE `deduccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `pk_id_departamento` int NOT NULL AUTO_INCREMENT,
  `nombre_departamento` varchar(30) NOT NULL,
  `descripcion_departamento` varchar(45) NOT NULL,
  `estado_departamento` int NOT NULL,
  PRIMARY KEY (`pk_id_departamento`),
  KEY `pk_id_departamento` (`pk_id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Departamento1','depar 1 prueba',1),(2,'Departemento2','Prueba depa 2',1);
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento_empresarial`
--

DROP TABLE IF EXISTS `departamento_empresarial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento_empresarial` (
  `pk_id__departamento_empresarial` int NOT NULL,
  `nombre_departamento_empresarial` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`pk_id__departamento_empresarial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento_empresarial`
--

LOCK TABLES `departamento_empresarial` WRITE;
/*!40000 ALTER TABLE `departamento_empresarial` DISABLE KEYS */;
/*!40000 ALTER TABLE `departamento_empresarial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_bitacora`
--

DROP TABLE IF EXISTS `detalle_bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_bitacora` (
  `pk_id_detalle_bitacora` int NOT NULL AUTO_INCREMENT,
  `fk_idbitacora_detalle_bitacora` int DEFAULT NULL,
  `querryantigua_detalle_bitacora` varchar(50) DEFAULT NULL,
  `querrynueva_detalle_bitacora` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id_detalle_bitacora`),
  KEY `fk_bitacora_detallebitacora` (`fk_idbitacora_detalle_bitacora`),
  CONSTRAINT `fk_bitacora_detallebitacora` FOREIGN KEY (`fk_idbitacora_detalle_bitacora`) REFERENCES `bitacora` (`pk_id_bitacora`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_bitacora`
--

LOCK TABLES `detalle_bitacora` WRITE;
/*!40000 ALTER TABLE `detalle_bitacora` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_cotizacion`
--

DROP TABLE IF EXISTS `detalle_cotizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_cotizacion` (
  `fk_id_cotizacion` int NOT NULL,
  `fk_id_producto` int NOT NULL,
  `cantidad_producto` int DEFAULT NULL,
  `precio_producto` float DEFAULT NULL,
  `subtotal_producto` float DEFAULT NULL,
  `descuento_producto` float DEFAULT NULL,
  `subtotal_descuento` float DEFAULT NULL,
  PRIMARY KEY (`fk_id_cotizacion`,`fk_id_producto`),
  KEY `fk_COTIZACION_has_PRODUCTO_SCM_PRODUCTO_SCM1_idx` (`fk_id_producto`),
  KEY `fk_COTIZACION_has_PRODUCTO_SCM_COTIZACION1_idx` (`fk_id_cotizacion`),
  CONSTRAINT `fk_COTIZACION_has_PRODUCTO_SCM_COTIZACION1` FOREIGN KEY (`fk_id_cotizacion`) REFERENCES `cotizacion` (`pk_id_cotizacion`),
  CONSTRAINT `fk_COTIZACION_has_PRODUCTO_SCM_PRODUCTO_SCM1` FOREIGN KEY (`fk_id_producto`) REFERENCES `producto` (`pk_id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_cotizacion`
--

LOCK TABLES `detalle_cotizacion` WRITE;
/*!40000 ALTER TABLE `detalle_cotizacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_cotizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_factura`
--

DROP TABLE IF EXISTS `detalle_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_factura` (
  `fk_id_factura` int NOT NULL,
  `fk_id_producto` int NOT NULL,
  `DETALLE_FACTURAcol` varchar(45) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `descuento` float DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `sub_total_descuento` float DEFAULT NULL,
  PRIMARY KEY (`fk_id_factura`),
  KEY `fk_VENTAS_has_FACTURAS_FACTURAS1_idx` (`fk_id_factura`),
  KEY `fk_DETALLE_FACTURA_PRODUCTO_SCM1_idx` (`fk_id_producto`),
  CONSTRAINT `fk_DETALLE_FACTURA_PRODUCTO_SCM1` FOREIGN KEY (`fk_id_producto`) REFERENCES `producto` (`pk_id_producto`),
  CONSTRAINT `fk_VENTAS_has_FACTURAS_FACTURAS1` FOREIGN KEY (`fk_id_factura`) REFERENCES `facturas` (`pk_id_factura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_factura`
--

LOCK TABLES `detalle_factura` WRITE;
/*!40000 ALTER TABLE `detalle_factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_hora_empleado`
--

DROP TABLE IF EXISTS `detalle_hora_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_hora_empleado` (
  `pk_id_detalle_hora_empleado` int NOT NULL AUTO_INCREMENT,
  `fk_id_hora_empleado_detalle` int DEFAULT NULL,
  `descripcion_detalle_hora_empleado` varchar(250) DEFAULT NULL,
  `tiempo_detalle_hora_empleado` double DEFAULT NULL,
  `estado_detalle_hora_empleado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pk_id_detalle_hora_empleado`),
  KEY `fk_HORA_EMPLEADO_DETALLE_HORA_EMPLEADO` (`fk_id_hora_empleado_detalle`),
  CONSTRAINT `fk_HORA_EMPLEADO_DETALLE_HORA_EMPLEADO` FOREIGN KEY (`fk_id_hora_empleado_detalle`) REFERENCES `hora_empleado` (`pk_id_hora_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_hora_empleado`
--

LOCK TABLES `detalle_hora_empleado` WRITE;
/*!40000 ALTER TABLE `detalle_hora_empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_hora_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_nomina`
--

DROP TABLE IF EXISTS `detalle_nomina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_nomina` (
  `pk_id_detalle_nomina` int NOT NULL,
  `fk_id_encabezado_detalle_nomina` int DEFAULT NULL,
  `fk_id_empleado_detalle_nomina` int DEFAULT NULL,
  `fk_id_percepciones_detalle_nomina` int DEFAULT NULL,
  `fk_id_deducciones_detalle_nomina` int DEFAULT NULL,
  `salario_base_detalle_nomina` double DEFAULT NULL,
  PRIMARY KEY (`pk_id_detalle_nomina`),
  KEY `fk_encabezado_detalle_nomina` (`fk_id_encabezado_detalle_nomina`),
  KEY `fk_emplado_detalle_nomina` (`fk_id_empleado_detalle_nomina`),
  KEY `fk_percepcion_detalle_nomina` (`fk_id_percepciones_detalle_nomina`),
  KEY `fk_deduccion_detalle_nomina` (`fk_id_deducciones_detalle_nomina`),
  CONSTRAINT `fk_deduccion_detalle_nomina` FOREIGN KEY (`fk_id_deducciones_detalle_nomina`) REFERENCES `deduccion` (`pk_id_deduccion`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_emplado_detalle_nomina` FOREIGN KEY (`fk_id_empleado_detalle_nomina`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_encabezado_detalle_nomina` FOREIGN KEY (`fk_id_encabezado_detalle_nomina`) REFERENCES `encabezado_nomina` (`pk_id_encabezado_nomina`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_percepcion_detalle_nomina` FOREIGN KEY (`fk_id_percepciones_detalle_nomina`) REFERENCES `percepcion` (`pk_id_percepcion`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_nomina`
--

LOCK TABLES `detalle_nomina` WRITE;
/*!40000 ALTER TABLE `detalle_nomina` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_nomina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_receta`
--

DROP TABLE IF EXISTS `detalle_receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_receta` (
  `pk_id_detalle_detalle_receta` int NOT NULL AUTO_INCREMENT,
  `fk_id_receta_encabezado_detalle` int DEFAULT NULL,
  `fk_id_estado_produccion_detalle_receta` int DEFAULT NULL,
  `fk_id_producto_detalle_receta` int DEFAULT NULL,
  `cantidad_detalle_receta` double DEFAULT NULL,
  `costo_unitario_detalle_receta` double DEFAULT NULL,
  `estado_detalle_receta` tinyint DEFAULT NULL,
  PRIMARY KEY (`pk_id_detalle_detalle_receta`),
  KEY `fk_detalle_receta_encabezado` (`fk_id_receta_encabezado_detalle`),
  KEY `fk_estado_produccion_detalle` (`fk_id_estado_produccion_detalle_receta`),
  KEY `fk_producto_detalle` (`fk_id_producto_detalle_receta`),
  CONSTRAINT `fk_detalle_receta_encabezado` FOREIGN KEY (`fk_id_receta_encabezado_detalle`) REFERENCES `recetas_encabezado` (`pk_id_receta_encabezado`),
  CONSTRAINT `fk_estado_produccion_detalle` FOREIGN KEY (`fk_id_estado_produccion_detalle_receta`) REFERENCES `estado_produccion` (`pk_id_estado_produccion`),
  CONSTRAINT `fk_producto_detalle` FOREIGN KEY (`fk_id_producto_detalle_receta`) REFERENCES `producto` (`pk_id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_receta`
--

LOCK TABLES `detalle_receta` WRITE;
/*!40000 ALTER TABLE `detalle_receta` DISABLE KEYS */;
INSERT INTO `detalle_receta` VALUES (1,1,1,1,67,20,1),(2,2,1,1,6,1,9),(3,2,1,1,5,8,1),(4,3,1,2,2,10,0),(5,4,1,1,10,10,1),(6,5,6,1,5,10,1),(7,5,7,2,50,100,1);
/*!40000 ALTER TABLE `detalle_receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_venta_empleado`
--

DROP TABLE IF EXISTS `detalles_venta_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalles_venta_empleado` (
  `fk_id_venta` int NOT NULL AUTO_INCREMENT,
  `fk_id_empleado` int NOT NULL,
  PRIMARY KEY (`fk_id_venta`,`fk_id_empleado`),
  KEY `fk_VENTAS_has_EMPLEADOS HRM_EMPLEADOS HRM1_idx` (`fk_id_empleado`),
  CONSTRAINT `fk_VENTAS_has_EMPLEADOS HRM_EMPLEADOS HRM1` FOREIGN KEY (`fk_id_empleado`) REFERENCES `empleado` (`pk_id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_venta_empleado`
--

LOCK TABLES `detalles_venta_empleado` WRITE;
/*!40000 ALTER TABLE `detalles_venta_empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalles_venta_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion`
--

DROP TABLE IF EXISTS `direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direccion` (
  `pk_id_direccion` int NOT NULL,
  `departamento_direccion` varchar(45) DEFAULT NULL,
  `zona_direccion` varchar(7) DEFAULT NULL,
  `municipio_direccion` varchar(100) DEFAULT NULL,
  `residencia_direccion` varchar(45) DEFAULT NULL,
  `fk_empleado_direccion` int DEFAULT NULL,
  `fk_reclutamiento_direccion` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_direccion`),
  KEY `fk_empleado_direccion` (`fk_empleado_direccion`),
  KEY `fk_reclutamiento_direccion` (`fk_reclutamiento_direccion`),
  CONSTRAINT `fk_empleado_direccion` FOREIGN KEY (`fk_empleado_direccion`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_reclutamiento_direccion` FOREIGN KEY (`fk_reclutamiento_direccion`) REFERENCES `reclutamiento` (`pk_id_reclutamiento`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `pk_id_empleado` int NOT NULL,
  `nombre1_empleado` varchar(45) DEFAULT NULL,
  `nombre2_empleado` varchar(45) DEFAULT NULL,
  `apellido1_empleado` varchar(45) DEFAULT NULL,
  `apellido2_empleado` varchar(45) DEFAULT NULL,
  `fecha_nacimiento_empleado` varchar(10) DEFAULT NULL,
  `dpi_empleado` int DEFAULT NULL,
  `fk_id_genero_empleado` int DEFAULT NULL,
  `fk_id_estado_civil_empleado` int DEFAULT NULL,
  `email_empleado` varchar(125) DEFAULT NULL,
  `telefono_empleado` int DEFAULT NULL,
  `numero_iggs_empleado` int DEFAULT NULL,
  `fk_id_licencia_conducir_empleado` int DEFAULT NULL,
  `fk_id_puesto_empleado` int DEFAULT NULL,
  `cuenta_bancaria_empleado` int DEFAULT NULL,
  `fk_id_departamento_empresarial_empleado` int DEFAULT NULL,
  `estado_empleado` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_empleado`),
  KEY `fk_genero_empleado1` (`fk_id_genero_empleado`),
  KEY `fk_estado_civil_empleado` (`fk_id_estado_civil_empleado`),
  KEY `fk_licencia_conducir_empleado` (`fk_id_licencia_conducir_empleado`),
  KEY `fk_puesto_empleado` (`fk_id_puesto_empleado`),
  KEY `fk_departamento_empresarial_empleado` (`fk_id_departamento_empresarial_empleado`),
  CONSTRAINT `fk_departamento_empresarial_empleado` FOREIGN KEY (`fk_id_departamento_empresarial_empleado`) REFERENCES `departamento_empresarial` (`pk_id__departamento_empresarial`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_estado_civil_empleado` FOREIGN KEY (`fk_id_estado_civil_empleado`) REFERENCES `estado_civil` (`pk_id_estado_civil`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_genero_empleado1` FOREIGN KEY (`fk_id_genero_empleado`) REFERENCES `genero` (`pk_id_genero`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_licencia_conducir_empleado` FOREIGN KEY (`fk_id_licencia_conducir_empleado`) REFERENCES `licencia_conduccion` (`pk_id_licencia_conduccion`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_puesto_empleado` FOREIGN KEY (`fk_id_puesto_empleado`) REFERENCES `puesto` (`pk_id_puesto`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encabezado_capacitacion`
--

DROP TABLE IF EXISTS `encabezado_capacitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `encabezado_capacitacion` (
  `pk_id_encabezado_capacitacion` int NOT NULL,
  `fecha_inicio_encabezado_capacitacion` varchar(10) DEFAULT NULL,
  `fecha_fin_encabezado_capacitacion` varchar(10) DEFAULT NULL,
  `fk_id_curso_encabezado_capacitacion` int DEFAULT NULL,
  `horas_encabezado_capacitacion` int NOT NULL,
  PRIMARY KEY (`pk_id_encabezado_capacitacion`),
  KEY `fk_curso_encabezado_capacitacion` (`fk_id_curso_encabezado_capacitacion`),
  CONSTRAINT `fk_curso_encabezado_capacitacion` FOREIGN KEY (`fk_id_curso_encabezado_capacitacion`) REFERENCES `curso` (`pk_id_curso`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encabezado_capacitacion`
--

LOCK TABLES `encabezado_capacitacion` WRITE;
/*!40000 ALTER TABLE `encabezado_capacitacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `encabezado_capacitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encabezado_competencia`
--

DROP TABLE IF EXISTS `encabezado_competencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `encabezado_competencia` (
  `pk_id_encabezado_competencia` int NOT NULL,
  `fk_id_empleado_encabezado_competencia` int DEFAULT NULL,
  `fecha_inicio_encabezado_competencia` varchar(10) DEFAULT NULL,
  `fecha_fin_encabezado_competencia` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`pk_id_encabezado_competencia`),
  KEY `fk_empleado_encabezado_competencia` (`fk_id_empleado_encabezado_competencia`),
  CONSTRAINT `fk_empleado_encabezado_competencia` FOREIGN KEY (`fk_id_empleado_encabezado_competencia`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encabezado_competencia`
--

LOCK TABLES `encabezado_competencia` WRITE;
/*!40000 ALTER TABLE `encabezado_competencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `encabezado_competencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encabezado_nomina`
--

DROP TABLE IF EXISTS `encabezado_nomina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `encabezado_nomina` (
  `pk_id_encabezado_nomina` int NOT NULL,
  `nombre_encabezado_nomina` varchar(45) DEFAULT NULL,
  `fecha_inicio_encabezado_nomina` varchar(10) DEFAULT NULL,
  `fecha_fin_encabezado_nomina` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`pk_id_encabezado_nomina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encabezado_nomina`
--

LOCK TABLES `encabezado_nomina` WRITE;
/*!40000 ALTER TABLE `encabezado_nomina` DISABLE KEYS */;
INSERT INTO `encabezado_nomina` VALUES (1,'Plantilla1','11/4/2020','12/4/2020');
/*!40000 ALTER TABLE `encabezado_nomina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encargado_bodega`
--

DROP TABLE IF EXISTS `encargado_bodega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `encargado_bodega` (
  `pk_id_encargado_bodega` int NOT NULL AUTO_INCREMENT,
  `fk_id_empleado` int NOT NULL,
  `fk_id_bodega` int NOT NULL,
  `estado_encargado_bodega` int NOT NULL,
  PRIMARY KEY (`pk_id_encargado_bodega`),
  KEY `pk_id_encargado_bodega` (`pk_id_encargado_bodega`),
  KEY `fk_empleado_bodega` (`fk_id_bodega`),
  KEY `fk_empleado_encargado` (`fk_id_empleado`),
  CONSTRAINT `fk_empleado_bodega` FOREIGN KEY (`fk_id_bodega`) REFERENCES `bodega` (`pk_id_bodega`),
  CONSTRAINT `fk_empleado_encargado` FOREIGN KEY (`fk_id_empleado`) REFERENCES `empleado` (`pk_id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encargado_bodega`
--

LOCK TABLES `encargado_bodega` WRITE;
/*!40000 ALTER TABLE `encargado_bodega` DISABLE KEYS */;
/*!40000 ALTER TABLE `encargado_bodega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrevista`
--

DROP TABLE IF EXISTS `entrevista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrevista` (
  `pk_id_entrevista` int NOT NULL,
  `fk_id_empleado_entrevista` int DEFAULT NULL,
  `fk_id_reclutamiento_entrevista` int DEFAULT NULL,
  `fk_id_tipo_entrevista` int DEFAULT NULL,
  `resultado_entrevista` int DEFAULT NULL,
  `comentarios_entrevistador_entrevista` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pk_id_entrevista`),
  KEY `fk_empleado_entrevista` (`fk_id_empleado_entrevista`),
  KEY `fk_reclutamiento_entrevista` (`fk_id_reclutamiento_entrevista`),
  KEY `fk_tipo_entrevista` (`fk_id_tipo_entrevista`),
  CONSTRAINT `fk_empleado_entrevista` FOREIGN KEY (`fk_id_empleado_entrevista`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_reclutamiento_entrevista` FOREIGN KEY (`fk_id_reclutamiento_entrevista`) REFERENCES `reclutamiento` (`pk_id_reclutamiento`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_tipo_entrevista` FOREIGN KEY (`fk_id_tipo_entrevista`) REFERENCES `tipo_entrevista` (`pk_id_tipo_entrevista`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrevista`
--

LOCK TABLES `entrevista` WRITE;
/*!40000 ALTER TABLE `entrevista` DISABLE KEYS */;
/*!40000 ALTER TABLE `entrevista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_civil`
--

DROP TABLE IF EXISTS `estado_civil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_civil` (
  `pk_id_estado_civil` int NOT NULL,
  `nombre_estado_civil` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pk_id_estado_civil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_civil`
--

LOCK TABLES `estado_civil` WRITE;
/*!40000 ALTER TABLE `estado_civil` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado_civil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_produccion`
--

DROP TABLE IF EXISTS `estado_produccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_produccion` (
  `pk_id_estado_produccion` int NOT NULL AUTO_INCREMENT,
  `nombre_estado_produccion` varchar(45) DEFAULT NULL,
  `duracion_estado_produccion` varchar(45) DEFAULT NULL,
  `estado_estado_produccion` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pk_id_estado_produccion`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_produccion`
--

LOCK TABLES `estado_produccion` WRITE;
/*!40000 ALTER TABLE `estado_produccion` DISABLE KEYS */;
INSERT INTO `estado_produccion` VALUES (1,'Estado1 Modifcado',' 30min',1),(2,'Estado2','3 dias',1),(3,'En Espera','1 dia',1),(4,'Aceptado',NULL,1),(5,'Rechazado',NULL,1),(6,'Corte','90 min',1),(7,'Costura','1 hora',1),(8,'Ensablado','1 hora',1),(9,'Sellado','5 Minutos',1),(10,'Empacado','10 min',1),(11,'Finalizado','0 min',1),(12,'Estado Prueba','12 Dias',1);
/*!40000 ALTER TABLE `estado_produccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `existencia`
--

DROP TABLE IF EXISTS `existencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `existencia` (
  `pk_id_existencia` int NOT NULL AUTO_INCREMENT,
  `fk_id_bodega` int NOT NULL,
  `fk_id_producto` int NOT NULL,
  `cantidad_existencia` int NOT NULL,
  `estado_existencia` int NOT NULL,
  PRIMARY KEY (`pk_id_existencia`),
  KEY `pk_id_existencia` (`pk_id_existencia`),
  KEY `fk_inventario_producto` (`fk_id_producto`),
  KEY `fk_inventario_bodega` (`fk_id_bodega`),
  CONSTRAINT `fk_inventario_bodega` FOREIGN KEY (`fk_id_bodega`) REFERENCES `bodega` (`pk_id_bodega`),
  CONSTRAINT `fk_inventario_producto` FOREIGN KEY (`fk_id_producto`) REFERENCES `producto` (`pk_id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `existencia`
--

LOCK TABLES `existencia` WRITE;
/*!40000 ALTER TABLE `existencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `existencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabrica`
--

DROP TABLE IF EXISTS `fabrica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fabrica` (
  `pk_id_fabrica` int NOT NULL AUTO_INCREMENT,
  `fk_id_municipio` int NOT NULL,
  `dimensiones_fabrica` double(5,2) NOT NULL,
  `direccion_fabrica` varchar(45) NOT NULL,
  `telefono_fabrica` int NOT NULL,
  `descripcion_fabrica` varchar(45) NOT NULL,
  `estado_fabrica` int NOT NULL,
  PRIMARY KEY (`pk_id_fabrica`),
  KEY `pk_id_fabrica` (`pk_id_fabrica`),
  KEY `fk_fabrica_municipio` (`fk_id_municipio`),
  CONSTRAINT `fk_fabrica_municipio` FOREIGN KEY (`fk_id_municipio`) REFERENCES `municipio` (`pk_id_municipio`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabrica`
--

LOCK TABLES `fabrica` WRITE;
/*!40000 ALTER TABLE `fabrica` DISABLE KEYS */;
INSERT INTO `fabrica` VALUES (1,1,350.00,'Ciudad',6789,'Prueba Fab1',1),(2,1,657.00,'Mazate',5678,'Grande',1);
/*!40000 ALTER TABLE `fabrica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturas` (
  `pk_id_factura` int NOT NULL AUTO_INCREMENT,
  `fk_id_empleado` int NOT NULL,
  `fk_id_cliente` int NOT NULL,
  `fk_id_tipo_venta` int NOT NULL,
  `fecha_factura` datetime DEFAULT NULL,
  `total_factura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pk_id_factura`),
  KEY `fk_FACTURAS_TIPO_VENTA1_idx` (`fk_id_tipo_venta`),
  KEY `fk_FACTURAS_CLIENTES1_idx` (`fk_id_cliente`),
  KEY `fk_FACTURAS_EMPLEADOS HRM1_idx` (`fk_id_empleado`),
  CONSTRAINT `fk_FACTURAS_CLIENTES1` FOREIGN KEY (`fk_id_cliente`) REFERENCES `clientes` (`pk_id_cliente`),
  CONSTRAINT `fk_FACTURAS_EMPLEADO` FOREIGN KEY (`fk_id_empleado`) REFERENCES `empleado` (`pk_id_empleado`),
  CONSTRAINT `fk_FACTURAS_TIPO_VENTA1` FOREIGN KEY (`fk_id_tipo_venta`) REFERENCES `tipo_venta` (`pk_id_tipo_venta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `falta`
--

DROP TABLE IF EXISTS `falta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `falta` (
  `pk_id_falta` int NOT NULL,
  `nombre_falta` varchar(45) DEFAULT NULL,
  `descripción_falta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pk_id_falta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `falta`
--

LOCK TABLES `falta` WRITE;
/*!40000 ALTER TABLE `falta` DISABLE KEYS */;
/*!40000 ALTER TABLE `falta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `falta_empleado`
--

DROP TABLE IF EXISTS `falta_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `falta_empleado` (
  `pk_id_falta_empleado` int NOT NULL,
  `fk_id_empleado_falta_empleado` int DEFAULT NULL,
  `fk_id_tipo_falta_empleado` int DEFAULT NULL,
  `fecha_falta_empleado` varchar(10) DEFAULT NULL,
  KEY `fk_empleado_falta` (`fk_id_empleado_falta_empleado`),
  KEY `fk_tipo_falta` (`fk_id_tipo_falta_empleado`),
  CONSTRAINT `fk_empleado_falta` FOREIGN KEY (`fk_id_empleado_falta_empleado`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_tipo_falta` FOREIGN KEY (`fk_id_tipo_falta_empleado`) REFERENCES `falta` (`pk_id_falta`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `falta_empleado`
--

LOCK TABLES `falta_empleado` WRITE;
/*!40000 ALTER TABLE `falta_empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `falta_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formacion_academica`
--

DROP TABLE IF EXISTS `formacion_academica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formacion_academica` (
  `pk_id_formacion_academica` int NOT NULL,
  `nombre_formacion_academica` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id_formacion_academica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formacion_academica`
--

LOCK TABLES `formacion_academica` WRITE;
/*!40000 ALTER TABLE `formacion_academica` DISABLE KEYS */;
/*!40000 ALTER TABLE `formacion_academica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `pk_id_genero` int NOT NULL,
  `nombre_genero` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pk_id_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hora_empleado`
--

DROP TABLE IF EXISTS `hora_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hora_empleado` (
  `pk_id_hora_empleado` int NOT NULL AUTO_INCREMENT,
  `fk_id_empleado_hora_empleado` int DEFAULT NULL,
  `fk_id_pedido_encabezado_hora_empleado` int DEFAULT NULL,
  `fecha_hora_empleado` date DEFAULT NULL,
  `estado_hora_empleado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pk_id_hora_empleado`),
  KEY `fk_HORA_EMPLEADO_ORDEN_PRODUCCION1` (`fk_id_pedido_encabezado_hora_empleado`),
  KEY `fk_HORAEMPLEADO_EMPLEADO` (`fk_id_empleado_hora_empleado`),
  CONSTRAINT `fk_HORA_EMPLEADO_ORDEN_PRODUCCION1` FOREIGN KEY (`fk_id_pedido_encabezado_hora_empleado`) REFERENCES `pedido_encabezado` (`pk_id_pedido_encabezado`),
  CONSTRAINT `fk_HORAEMPLEADO_EMPLEADO` FOREIGN KEY (`fk_id_empleado_hora_empleado`) REFERENCES `empleado` (`pk_id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hora_empleado`
--

LOCK TABLES `hora_empleado` WRITE;
/*!40000 ALTER TABLE `hora_empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `hora_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horario` (
  `pk_id_horario` int NOT NULL,
  `nombre_horario` varchar(45) DEFAULT NULL,
  `descripcion_horario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pk_id_horario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario`
--

LOCK TABLES `horario` WRITE;
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `pk_id_inventario` int NOT NULL AUTO_INCREMENT,
  `fk_id_producto` int NOT NULL,
  `cantidad_inventario` int NOT NULL,
  `estado_inventario` int NOT NULL,
  PRIMARY KEY (`pk_id_inventario`),
  KEY `pk_id_inventario` (`pk_id_inventario`),
  KEY `fk_total_inventario` (`fk_id_producto`),
  CONSTRAINT `fk_total_inventario` FOREIGN KEY (`fk_id_producto`) REFERENCES `producto` (`pk_id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licencia_conduccion`
--

DROP TABLE IF EXISTS `licencia_conduccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `licencia_conduccion` (
  `pk_id_licencia_conduccion` int NOT NULL,
  `tipo_licencia_conduccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pk_id_licencia_conduccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licencia_conduccion`
--

LOCK TABLES `licencia_conduccion` WRITE;
/*!40000 ALTER TABLE `licencia_conduccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `licencia_conduccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linea_producto`
--

DROP TABLE IF EXISTS `linea_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linea_producto` (
  `pk_id_linea_producto` int NOT NULL AUTO_INCREMENT,
  `nombre_linea_producto` varchar(25) NOT NULL,
  `descripcion_linea_producto` varchar(50) NOT NULL,
  `estado_linea_producto` int NOT NULL,
  PRIMARY KEY (`pk_id_linea_producto`),
  KEY `pk_id_linea_producto` (`pk_id_linea_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linea_producto`
--

LOCK TABLES `linea_producto` WRITE;
/*!40000 ALTER TABLE `linea_producto` DISABLE KEYS */;
INSERT INTO `linea_producto` VALUES (1,'Prueba ','Linea de pruebas descripcion',1),(2,'Prueba 2 linea','Liena 2 pruebas',1),(3,'pruebahoy','hola',1);
/*!40000 ALTER TABLE `linea_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `pk_id_login` int NOT NULL AUTO_INCREMENT,
  `usuario_login` varchar(45) DEFAULT NULL,
  `contraseña_login` varchar(45) DEFAULT NULL,
  `nombreCompleto_login` varchar(100) DEFAULT NULL,
  `estado_login` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_login`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'sistema','bi0PL96rbxVRPKJQsLJJAg==','Usuario de prueba',1),(2,'bjsican','0FOYy5u5h0djKjzCYqfvkg==','Billy Sican',1),(3,'bmaza','ksw6dqRXYQ9hvdxeiHlyyQ==','Bryan Mazariegos',1),(4,'jsican','jsican','Jeshua Sican',0),(5,'jmorataya','123','Julio Morataya',0);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `pk_id_marca` int NOT NULL AUTO_INCREMENT,
  `descripcion_marca` varchar(45) NOT NULL,
  `estado_marca` int NOT NULL,
  PRIMARY KEY (`pk_id_marca`),
  KEY `pk_id_marca` (`pk_id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia_prima`
--

DROP TABLE IF EXISTS `materia_prima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia_prima` (
  `pk_id_materia_prima` int NOT NULL AUTO_INCREMENT,
  `fk_id_producto_materia_prima` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `estado_materia_prima` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_materia_prima`),
  KEY `fk_materia_prima_producto` (`fk_id_producto_materia_prima`),
  CONSTRAINT `fk_materia_prima_producto` FOREIGN KEY (`fk_id_producto_materia_prima`) REFERENCES `producto` (`pk_id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia_prima`
--

LOCK TABLES `materia_prima` WRITE;
/*!40000 ALTER TABLE `materia_prima` DISABLE KEYS */;
/*!40000 ALTER TABLE `materia_prima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulo`
--

DROP TABLE IF EXISTS `modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modulo` (
  `pk_id_modulo` int NOT NULL AUTO_INCREMENT,
  `nombre_modulo` varchar(30) NOT NULL,
  `descripcion_modulo` varchar(50) NOT NULL,
  `estado_modulo` int NOT NULL,
  PRIMARY KEY (`pk_id_modulo`),
  KEY `pk_id_modulo` (`pk_id_modulo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulo`
--

LOCK TABLES `modulo` WRITE;
/*!40000 ALTER TABLE `modulo` DISABLE KEYS */;
INSERT INTO `modulo` VALUES (1,'Seguridad','Aplicaciones de seguridad',1),(2,'Consultas','Consultas Inteligentes',1),(3,'Reporteador','Aplicaciones de Reporteador',1),(4,'HRM','Aplicaciones de Recursos Humanos',1),(5,'FRM','Aplicaciones de Finanzas',1),(6,'SCM','Aplicaciones Control de Inventario',1),(7,'MRP','Aplicaciones de Produccion',1),(8,'CRM','Aplicaciones de Ventas',1);
/*!40000 ALTER TABLE `modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimiento_cuenta_por_cobrar`
--

DROP TABLE IF EXISTS `movimiento_cuenta_por_cobrar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimiento_cuenta_por_cobrar` (
  `pk_id_movimiento_cuenta` int NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `fk_id_tipo_cuenta` int NOT NULL,
  `fk_id_cliente` int NOT NULL,
  `fk_id_factura` int NOT NULL,
  `saldo_cuenta` float DEFAULT NULL,
  PRIMARY KEY (`pk_id_movimiento_cuenta`),
  KEY `fk_MOVIMIENTO_CUENTA_POR_COBRAR_CLIENTES1_idx` (`fk_id_cliente`),
  KEY `fk_MOVIMIENTO_CUENTA_POR_COBRAR_TIPO_CUENTA_POR_COBRAR1_idx` (`fk_id_tipo_cuenta`),
  KEY `fk_MOVIMIENTO_CUENTA_POR_COBRAR_FACTURAS1_idx` (`fk_id_factura`),
  CONSTRAINT `fk_MOVIMIENTO_CUENTA_POR_COBRAR_CLIENTES1` FOREIGN KEY (`fk_id_cliente`) REFERENCES `clientes` (`pk_id_cliente`),
  CONSTRAINT `fk_MOVIMIENTO_CUENTA_POR_COBRAR_FACTURAS1` FOREIGN KEY (`fk_id_factura`) REFERENCES `facturas` (`pk_id_factura`),
  CONSTRAINT `fk_MOVIMIENTO_CUENTA_POR_COBRAR_TIPO_CUENTA_POR_COBRAR1` FOREIGN KEY (`fk_id_tipo_cuenta`) REFERENCES `tipo_cuenta_por_cobrar` (`pk_id_tipo_cuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento_cuenta_por_cobrar`
--

LOCK TABLES `movimiento_cuenta_por_cobrar` WRITE;
/*!40000 ALTER TABLE `movimiento_cuenta_por_cobrar` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimiento_cuenta_por_cobrar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimiento_inventario`
--

DROP TABLE IF EXISTS `movimiento_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimiento_inventario` (
  `pk_id_movimiento_inventario` int NOT NULL,
  `fecha_movimiento_inventario` datetime NOT NULL,
  `fk_id_tipo_movimiento` int NOT NULL,
  `fk_id_ruta` int NOT NULL,
  `fk_id_vehiculo` int NOT NULL,
  `documento_asociado_movimiento_inventario` int NOT NULL,
  `descripcion_movimiento_inventario` varchar(50) NOT NULL,
  PRIMARY KEY (`pk_id_movimiento_inventario`),
  KEY `pk_id_movimiento_inventario` (`pk_id_movimiento_inventario`),
  KEY `fk_mov_inventario_tipo` (`fk_id_tipo_movimiento`),
  KEY `fk_mov_inventario_ruta` (`fk_id_ruta`),
  KEY `fk_mov_inventario_vehiculo` (`fk_id_vehiculo`),
  CONSTRAINT `fk_mov_inventario_ruta` FOREIGN KEY (`fk_id_ruta`) REFERENCES `ruta` (`pk_id_ruta`),
  CONSTRAINT `fk_mov_inventario_tipo` FOREIGN KEY (`fk_id_tipo_movimiento`) REFERENCES `tipo_movimiento` (`pk_id_tipo_movimiento`),
  CONSTRAINT `fk_mov_inventario_vehiculo` FOREIGN KEY (`fk_id_vehiculo`) REFERENCES `vehiculo` (`pk_id_vehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento_inventario`
--

LOCK TABLES `movimiento_inventario` WRITE;
/*!40000 ALTER TABLE `movimiento_inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimiento_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimiento_inventario_detalle`
--

DROP TABLE IF EXISTS `movimiento_inventario_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimiento_inventario_detalle` (
  `pk_id_movimiento_inventario_detalle` int NOT NULL,
  `fk_id_movimiento_inventario` int NOT NULL,
  `fk_id_producto` int NOT NULL,
  `cantidad_inventario_detalle` int NOT NULL,
  PRIMARY KEY (`pk_id_movimiento_inventario_detalle`),
  KEY `pk_id_movimiento_inventario_detalle` (`pk_id_movimiento_inventario_detalle`),
  KEY `fk_mov_inventario_detalle_mov` (`fk_id_movimiento_inventario`),
  KEY `fk_mov_inventario_detalle_producto` (`fk_id_producto`),
  CONSTRAINT `fk_mov_inventario_detalle_mov` FOREIGN KEY (`fk_id_movimiento_inventario`) REFERENCES `movimiento_inventario` (`pk_id_movimiento_inventario`),
  CONSTRAINT `fk_mov_inventario_detalle_producto` FOREIGN KEY (`fk_id_producto`) REFERENCES `producto` (`pk_id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento_inventario_detalle`
--

LOCK TABLES `movimiento_inventario_detalle` WRITE;
/*!40000 ALTER TABLE `movimiento_inventario_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimiento_inventario_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `municipio` (
  `pk_id_municipio` int NOT NULL AUTO_INCREMENT,
  `fk_id_departamento` int NOT NULL,
  `nombre_municipio` varchar(30) NOT NULL,
  `descripcion_municipio` varchar(45) NOT NULL,
  `estado_municipio` int NOT NULL,
  PRIMARY KEY (`pk_id_municipio`),
  KEY `pk_id_municipio` (`pk_id_municipio`),
  KEY `fk_municipio_departamento` (`fk_id_departamento`),
  CONSTRAINT `fk_municipio_departamento` FOREIGN KEY (`fk_id_departamento`) REFERENCES `departamento` (`pk_id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` VALUES (1,1,'Municipio1','Prueba muni1',1),(2,1,'Municipio2','Prueba muni2',1);
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_compra`
--

DROP TABLE IF EXISTS `orden_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orden_compra` (
  `pk_id_orden_compra` int NOT NULL AUTO_INCREMENT,
  `fk_id_producto_orden_compra` int DEFAULT NULL,
  `fecha_envio_orden_compra` varchar(50) DEFAULT NULL,
  `cantidad_orden_compra` int DEFAULT NULL,
  `estado_orden_compra` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pk_id_orden_compra`),
  KEY `fk_ORDEN_COMPRA_PRODUCTO1` (`fk_id_producto_orden_compra`),
  CONSTRAINT `fk_ORDEN_COMPRA_PRODUCTO1` FOREIGN KEY (`fk_id_producto_orden_compra`) REFERENCES `producto` (`pk_id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_compra`
--

LOCK TABLES `orden_compra` WRITE;
/*!40000 ALTER TABLE `orden_compra` DISABLE KEYS */;
INSERT INTO `orden_compra` VALUES (1,2,'10-11-2020 22:42:39',100,1),(2,1,'09-11-2020 22:58:19',1500,1),(3,3,'10-11-2020 23:12:55',1250,1);
/*!40000 ALTER TABLE `orden_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `pk_id_pais` int NOT NULL AUTO_INCREMENT,
  `nombre_pais` varchar(40) NOT NULL,
  `capital_pais` varchar(40) NOT NULL,
  `estado_pais` int NOT NULL,
  PRIMARY KEY (`pk_id_pais`),
  KEY `pk_id_pais` (`pk_id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_detalle`
--

DROP TABLE IF EXISTS `pedido_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_detalle` (
  `fk_id_pedido_encabezado` int NOT NULL,
  `cod_linea_pedido_detalle` int NOT NULL,
  `fk_id_producto` int NOT NULL,
  `cantidad_pedido_detalle` int NOT NULL,
  `precio_unitario_pedido_detalle` double(8,2) NOT NULL,
  `subtotal_pedido_detalle` double(12,2) NOT NULL,
  `estado_pedido_detalle` int NOT NULL,
  PRIMARY KEY (`fk_id_pedido_encabezado`,`cod_linea_pedido_detalle`),
  KEY `fk_id_pedido_encabezado` (`fk_id_pedido_encabezado`,`cod_linea_pedido_detalle`),
  KEY `fk_pedido_producto` (`fk_id_producto`),
  CONSTRAINT `fk_encabezado_pedido` FOREIGN KEY (`fk_id_pedido_encabezado`) REFERENCES `pedido_encabezado` (`pk_id_pedido_encabezado`),
  CONSTRAINT `fk_pedido_producto` FOREIGN KEY (`fk_id_producto`) REFERENCES `producto` (`pk_id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_detalle`
--

LOCK TABLES `pedido_detalle` WRITE;
/*!40000 ALTER TABLE `pedido_detalle` DISABLE KEYS */;
INSERT INTO `pedido_detalle` VALUES (1,1,1,10,150.00,1500.00,1),(2,2,4,30,100.00,400.00,1),(3,1,2,150,10.00,1150.00,1),(4,1,1,10,5.00,50.00,1);
/*!40000 ALTER TABLE `pedido_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_encabezado`
--

DROP TABLE IF EXISTS `pedido_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_encabezado` (
  `pk_id_pedido_encabezado` int NOT NULL,
  `fk_id_fabrica` int NOT NULL,
  `estado_proceso_pedido_encabezado` int NOT NULL,
  `fec_pedido_pedido_encabezado` varchar(20) NOT NULL,
  `total_pedido_encabezado` double(12,2) NOT NULL,
  `estado_pedido_encabezado` int NOT NULL,
  PRIMARY KEY (`pk_id_pedido_encabezado`),
  KEY `pk_id_pedido_encabezado` (`pk_id_pedido_encabezado`),
  KEY `fk_pedido_fabrica` (`fk_id_fabrica`),
  CONSTRAINT `fk_pedido_fabrica` FOREIGN KEY (`fk_id_fabrica`) REFERENCES `fabrica` (`pk_id_fabrica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_encabezado`
--

LOCK TABLES `pedido_encabezado` WRITE;
/*!40000 ALTER TABLE `pedido_encabezado` DISABLE KEYS */;
INSERT INTO `pedido_encabezado` VALUES (1,1,4,'2020-01-01 00:00:00',100.00,1),(2,2,4,'2020-01-02 00:00:00',200.00,1),(3,1,4,'2020-01-10 00:00:00',432.00,1),(4,1,4,'2020-11-09 17:39:13',21356.00,1);
/*!40000 ALTER TABLE `pedido_encabezado` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ACONTROLPEDIDO` BEFORE UPDATE ON `pedido_encabezado` FOR EACH ROW BEGIN
    IF (NEW.estado_proceso_pedido_encabezado = 4)  THEN BEGIN
   
   INSERT INTO control_producto 
(fk_id_pedido_encabezado_control_producto, fk_id_estado_produccion_control_producto, resultado_control_producto, estado_control_producto) 
VALUES (new.pk_id_pedido_encabezado , new.estado_proceso_pedido_encabezado,"Confirmado", 1);

    END; END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `percepcion`
--

DROP TABLE IF EXISTS `percepcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `percepcion` (
  `pk_id_percepcion` int NOT NULL,
  `nombre_percepcion` varchar(45) DEFAULT NULL,
  `monto_percepcion` double DEFAULT NULL,
  `descripcion_percepcion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`pk_id_percepcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `percepcion`
--

LOCK TABLES `percepcion` WRITE;
/*!40000 ALTER TABLE `percepcion` DISABLE KEYS */;
/*!40000 ALTER TABLE `percepcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil` (
  `pk_id_perfil` int NOT NULL AUTO_INCREMENT,
  `nombre_perfil` varchar(50) DEFAULT NULL,
  `descripcion_perfil` varchar(100) DEFAULT NULL,
  `estado_perfil` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,'Admin','Administracion del programa',1),(2,'Sistema','Administrador del sistema',1),(3,'Digitador','Digitador para Cuentas',1),(4,'Consultor','Unicamente consultas ',1),(5,'Reportes','Ingreso y consultas de reportes',1),(6,'MRP','Administrador del MRP',1);
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_usuario`
--

DROP TABLE IF EXISTS `perfil_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_usuario` (
  `pk_id_perfil_usuario` int NOT NULL AUTO_INCREMENT,
  `fk_idusuario_perfil_usuario` int DEFAULT NULL,
  `fk_idperfil_perfil_usuario` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_perfil_usuario`),
  KEY `fk_perfil_usuario_login` (`fk_idusuario_perfil_usuario`),
  KEY `fk_perfil_usuario_perfil` (`fk_idperfil_perfil_usuario`),
  CONSTRAINT `fk_perfil_usuario_login` FOREIGN KEY (`fk_idusuario_perfil_usuario`) REFERENCES `login` (`pk_id_login`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_perfil_usuario_perfil` FOREIGN KEY (`fk_idperfil_perfil_usuario`) REFERENCES `perfil` (`pk_id_perfil`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_usuario`
--

LOCK TABLES `perfil_usuario` WRITE;
/*!40000 ALTER TABLE `perfil_usuario` DISABLE KEYS */;
INSERT INTO `perfil_usuario` VALUES (1,1,1),(4,4,1),(5,5,5),(6,2,6),(7,3,6);
/*!40000 ALTER TABLE `perfil_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permiso`
--

DROP TABLE IF EXISTS `permiso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permiso` (
  `pk_id_permiso` int NOT NULL AUTO_INCREMENT,
  `insertar_permiso` tinyint(1) DEFAULT NULL,
  `modificar_permiso` tinyint(1) DEFAULT NULL,
  `eliminar_permiso` tinyint(1) DEFAULT NULL,
  `consultar_permiso` tinyint(1) DEFAULT NULL,
  `imprimir_permiso` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pk_id_permiso`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permiso`
--

LOCK TABLES `permiso` WRITE;
/*!40000 ALTER TABLE `permiso` DISABLE KEYS */;
INSERT INTO `permiso` VALUES (1,1,1,1,1,1),(2,1,1,1,1,1),(3,1,1,1,0,0),(4,1,1,1,1,1),(5,1,1,1,1,1),(6,1,1,1,1,1),(7,1,1,1,1,1),(8,1,0,1,0,0),(9,1,1,0,0,0),(10,1,1,0,0,0),(11,1,1,1,1,1),(12,0,0,0,1,0),(13,0,0,0,1,0),(14,0,0,0,0,0),(15,1,0,0,1,0),(16,0,0,0,0,0),(17,1,1,0,0,0),(18,1,1,1,1,1),(19,1,1,1,1,1),(20,1,1,1,1,1),(21,1,1,1,1,1),(22,1,1,1,1,1),(23,1,1,1,1,1),(24,1,1,1,1,1),(25,1,1,1,1,1),(26,1,1,1,1,1),(27,1,1,1,1,1),(28,1,1,1,1,1),(29,1,1,1,1,1),(30,1,1,1,1,1),(31,1,1,1,1,1),(32,1,1,1,1,1),(33,1,1,1,1,1),(34,1,1,1,1,1),(35,1,1,1,1,1),(36,1,1,1,1,1),(37,1,1,1,1,1),(38,1,1,1,1,1),(39,1,1,1,1,1),(40,1,1,1,1,1);
/*!40000 ALTER TABLE `permiso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peticion_poliza`
--

DROP TABLE IF EXISTS `peticion_poliza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peticion_poliza` (
  `pk_id_peticion_poliza` int NOT NULL,
  `concepto_peticion_poliza` varchar(30) DEFAULT NULL,
  `fecha_peticion_poliza` datetime DEFAULT NULL,
  `descripcion_peticion_poliza` varchar(100) DEFAULT NULL,
  `monto_peticion_poliza` double DEFAULT NULL,
  `fk_pk_poliza_encabezado` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_peticion_poliza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peticion_poliza`
--

LOCK TABLES `peticion_poliza` WRITE;
/*!40000 ALTER TABLE `peticion_poliza` DISABLE KEYS */;
/*!40000 ALTER TABLE `peticion_poliza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poliza_detalle`
--

DROP TABLE IF EXISTS `poliza_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poliza_detalle` (
  `pk_poliza_encabezado` int NOT NULL,
  `pk_id_cuenta_contable` int NOT NULL,
  `monto_poliza_detalle` double DEFAULT NULL,
  `debe_poliza_detalle` tinyint DEFAULT NULL,
  PRIMARY KEY (`pk_poliza_encabezado`,`pk_id_cuenta_contable`),
  KEY `fk_poliza_detalle_cuenta` (`pk_id_cuenta_contable`),
  CONSTRAINT `fk_poliza_detalle_cuenta` FOREIGN KEY (`pk_id_cuenta_contable`) REFERENCES `cuenta_contable` (`pk_id_cuenta_contable`),
  CONSTRAINT `fk_poliza_detalle_poliza_encabezado` FOREIGN KEY (`pk_poliza_encabezado`) REFERENCES `poliza_encabezado` (`pk_poliza_encabezado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poliza_detalle`
--

LOCK TABLES `poliza_detalle` WRITE;
/*!40000 ALTER TABLE `poliza_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `poliza_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poliza_encabezado`
--

DROP TABLE IF EXISTS `poliza_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poliza_encabezado` (
  `pk_poliza_encabezado` int NOT NULL,
  `fecha_poliza_encabezado` datetime DEFAULT NULL,
  `descripcion_poliza_encabezado` varchar(75) DEFAULT NULL,
  `estado_poliza_encabezado` tinyint DEFAULT NULL,
  `total_poliza_encabezado` double DEFAULT NULL,
  PRIMARY KEY (`pk_poliza_encabezado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poliza_encabezado`
--

LOCK TABLES `poliza_encabezado` WRITE;
/*!40000 ALTER TABLE `poliza_encabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `poliza_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `pk_id_producto` int NOT NULL AUTO_INCREMENT,
  `fk_id_linea_producto` int NOT NULL,
  `fk_id_categoria_producto` int NOT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  `precio_producto` double(12,2) NOT NULL,
  `medida_producto` double(5,2) NOT NULL,
  `descripcion_producto` varchar(45) NOT NULL,
  `estado_producto` int NOT NULL,
  PRIMARY KEY (`pk_id_producto`),
  KEY `pk_id_producto` (`pk_id_producto`),
  KEY `fk_producto_lineaProducto` (`fk_id_linea_producto`),
  KEY `fk_producto_categoriaProducto` (`fk_id_categoria_producto`),
  CONSTRAINT `fk_producto_categoriaProducto` FOREIGN KEY (`fk_id_categoria_producto`) REFERENCES `categoria_producto` (`pk_id_categoria_producto`),
  CONSTRAINT `fk_producto_lineaProducto` FOREIGN KEY (`fk_id_linea_producto`) REFERENCES `linea_producto` (`pk_id_linea_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,1,1,'Producto 1',90.00,54.00,'Prueba desc',1),(2,2,2,'Producto 2',70.00,4.00,'Pru2',1),(3,2,2,'Hola',50.00,1.00,'hola',1),(4,2,3,'Cama Imperial',5000.00,56.00,'Cama Comoda',1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_terminado`
--

DROP TABLE IF EXISTS `producto_terminado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto_terminado` (
  `pk_id_producto_terminado` int NOT NULL AUTO_INCREMENT,
  `fk_id_producto_producto_terminado` int DEFAULT NULL,
  `cantidad_producto_terminado` int DEFAULT NULL,
  `estado_producto_terminado` tinyint DEFAULT NULL,
  PRIMARY KEY (`pk_id_producto_terminado`),
  KEY `fk_producto_terminado_producto` (`fk_id_producto_producto_terminado`),
  CONSTRAINT `fk_producto_terminado_producto` FOREIGN KEY (`fk_id_producto_producto_terminado`) REFERENCES `producto` (`pk_id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_terminado`
--

LOCK TABLES `producto_terminado` WRITE;
/*!40000 ALTER TABLE `producto_terminado` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto_terminado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propietario`
--

DROP TABLE IF EXISTS `propietario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propietario` (
  `pk_id_propietario` int NOT NULL,
  `nombre_propietario` varchar(45) DEFAULT NULL,
  `descripcion_propietario` varchar(75) DEFAULT NULL,
  `estado_propietario` tinyint DEFAULT NULL,
  PRIMARY KEY (`pk_id_propietario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propietario`
--

LOCK TABLES `propietario` WRITE;
/*!40000 ALTER TABLE `propietario` DISABLE KEYS */;
/*!40000 ALTER TABLE `propietario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `pk_id_proveedor` int NOT NULL AUTO_INCREMENT,
  `fk_id_pais` int NOT NULL,
  `razon_social_proveedor` varchar(45) NOT NULL,
  `representante_legal_proveedor` varchar(45) NOT NULL,
  `nit_proveedor` varchar(20) NOT NULL,
  `estado_proveedor` int NOT NULL,
  PRIMARY KEY (`pk_id_proveedor`),
  KEY `pk_id_proveedor` (`pk_id_proveedor`),
  KEY `fk_proveedor_pais` (`fk_id_pais`),
  CONSTRAINT `fk_proveedor_pais` FOREIGN KEY (`fk_id_pais`) REFERENCES `pais` (`pk_id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puesto`
--

DROP TABLE IF EXISTS `puesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puesto` (
  `pk_id_puesto` int NOT NULL,
  `nombre_puesto` varchar(45) DEFAULT NULL,
  `salario_puesto` double DEFAULT NULL,
  `fk_id_horario_puesto` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_puesto`),
  KEY `fk_horario_puesto` (`fk_id_horario_puesto`),
  CONSTRAINT `fk_horario_puesto` FOREIGN KEY (`fk_id_horario_puesto`) REFERENCES `horario` (`pk_id_horario`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puesto`
--

LOCK TABLES `puesto` WRITE;
/*!40000 ALTER TABLE `puesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `puesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recetas_encabezado`
--

DROP TABLE IF EXISTS `recetas_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recetas_encabezado` (
  `pk_id_receta_encabezado` int NOT NULL AUTO_INCREMENT,
  `descripcion_receta_encabezado` varchar(100) DEFAULT NULL,
  `fk_id_producto_receta_encabezado` int DEFAULT NULL,
  `estado_encabezado_receta` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pk_id_receta_encabezado`),
  KEY `fk_recetas_encabezado_productos` (`fk_id_producto_receta_encabezado`),
  CONSTRAINT `fk_recetas_encabezado_productos` FOREIGN KEY (`fk_id_producto_receta_encabezado`) REFERENCES `producto` (`pk_id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recetas_encabezado`
--

LOCK TABLES `recetas_encabezado` WRITE;
/*!40000 ALTER TABLE `recetas_encabezado` DISABLE KEYS */;
INSERT INTO `recetas_encabezado` VALUES (1,'Descipcion receta encabezado',1,1),(2,'nombre receta',2,1),(3,'Pepian',1,1),(4,'Receta de colchones',1,1),(5,'Colchon',4,1);
/*!40000 ALTER TABLE `recetas_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reclutamiento`
--

DROP TABLE IF EXISTS `reclutamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reclutamiento` (
  `pk_id_reclutamiento` int NOT NULL,
  `fk_id_nivel_estudio_reclutamiento` int DEFAULT NULL,
  `nombre1_reclutamiento` varchar(45) DEFAULT NULL,
  `nombre2_reclutamiento` varchar(45) DEFAULT NULL,
  `apellido1_reclutamiento` varchar(45) DEFAULT NULL,
  `apellido2_reclutamiento` varchar(45) DEFAULT NULL,
  `fecha_nacimiento_reclutamiento` varchar(10) DEFAULT NULL,
  `dpi_reclutamiento` int DEFAULT NULL,
  `fk_id_genero_reclutamiento` int DEFAULT NULL,
  `fk_id_estado_civil_reclutamiento` int DEFAULT NULL,
  `email_reclutamiento` varchar(125) DEFAULT NULL,
  `telefono_reclutamiento` int DEFAULT NULL,
  `numero_igss_reclutamiento` int DEFAULT NULL,
  `fk_id_licencia_conducir_reclutamiento` int DEFAULT NULL,
  `fk_id_puesto_reclutamiento` int DEFAULT NULL,
  `estado_reclutado_entrevista` int DEFAULT NULL,
  `nombre_profesion` varchar(125) DEFAULT NULL,
  `fk_id_departamento_empresarial_reclutamiento` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_reclutamiento`),
  KEY `fk_nivel_estudio_reclutamiento` (`fk_id_nivel_estudio_reclutamiento`),
  KEY `fk_genero_reclutamiento` (`fk_id_genero_reclutamiento`),
  KEY `fk_estado_civil_reclutamiento` (`fk_id_estado_civil_reclutamiento`),
  KEY `fk_licencia_conducir_reclutamiento` (`fk_id_licencia_conducir_reclutamiento`),
  KEY `fk_puesto_reclutamiento` (`fk_id_puesto_reclutamiento`),
  KEY `fk_departamento_empresarial_reclutamiento` (`fk_id_departamento_empresarial_reclutamiento`),
  CONSTRAINT `fk_departamento_empresarial_reclutamiento` FOREIGN KEY (`fk_id_departamento_empresarial_reclutamiento`) REFERENCES `departamento_empresarial` (`pk_id__departamento_empresarial`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_estado_civil_reclutamiento` FOREIGN KEY (`fk_id_estado_civil_reclutamiento`) REFERENCES `estado_civil` (`pk_id_estado_civil`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_genero_reclutamiento` FOREIGN KEY (`fk_id_genero_reclutamiento`) REFERENCES `genero` (`pk_id_genero`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_licencia_conducir_reclutamiento` FOREIGN KEY (`fk_id_licencia_conducir_reclutamiento`) REFERENCES `licencia_conduccion` (`pk_id_licencia_conduccion`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_nivel_estudio_reclutamiento` FOREIGN KEY (`fk_id_nivel_estudio_reclutamiento`) REFERENCES `formacion_academica` (`pk_id_formacion_academica`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_puesto_reclutamiento` FOREIGN KEY (`fk_id_puesto_reclutamiento`) REFERENCES `puesto` (`pk_id_puesto`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reclutamiento`
--

LOCK TABLES `reclutamiento` WRITE;
/*!40000 ALTER TABLE `reclutamiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `reclutamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporte`
--

DROP TABLE IF EXISTS `reporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reporte` (
  `pk_id_reporte` int NOT NULL AUTO_INCREMENT,
  `nombre_reporte` varchar(40) NOT NULL,
  `ruta_reporte` varchar(100) NOT NULL,
  `estado_reporte` int NOT NULL,
  PRIMARY KEY (`pk_id_reporte`),
  KEY `pk_id_reporte` (`pk_id_reporte`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporte`
--

LOCK TABLES `reporte` WRITE;
/*!40000 ALTER TABLE `reporte` DISABLE KEYS */;
INSERT INTO `reporte` VALUES (1,'Orden de produccion','RepoProduccion.rpt',1);
/*!40000 ALTER TABLE `reporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporte_aplicativo`
--

DROP TABLE IF EXISTS `reporte_aplicativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reporte_aplicativo` (
  `fk_id_reporte` int NOT NULL,
  `fk_id_aplicacion` int NOT NULL,
  `fk_id_modulo` int NOT NULL,
  `estado_reporte_aplicativo` int NOT NULL,
  PRIMARY KEY (`fk_id_reporte`,`fk_id_aplicacion`,`fk_id_modulo`),
  KEY `fk_id_reporte` (`fk_id_reporte`,`fk_id_aplicacion`,`fk_id_modulo`),
  KEY `fk_reporte_aplicativo_modulo` (`fk_id_modulo`),
  KEY `fk_report_aplicativo` (`fk_id_aplicacion`),
  CONSTRAINT `fk_report_aplicativo` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `aplicacion` (`pk_id_aplicacion`),
  CONSTRAINT `fk_reporte_aplicativo_modulo` FOREIGN KEY (`fk_id_modulo`) REFERENCES `modulo` (`pk_id_modulo`),
  CONSTRAINT `fk_reporte_aplicativo_reporte` FOREIGN KEY (`fk_id_reporte`) REFERENCES `reporte` (`pk_id_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporte_aplicativo`
--

LOCK TABLES `reporte_aplicativo` WRITE;
/*!40000 ALTER TABLE `reporte_aplicativo` DISABLE KEYS */;
INSERT INTO `reporte_aplicativo` VALUES (1,3313,7,1);
/*!40000 ALTER TABLE `reporte_aplicativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporte_modulo`
--

DROP TABLE IF EXISTS `reporte_modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reporte_modulo` (
  `fk_id_reporte` int NOT NULL,
  `fk_id_modulo` int NOT NULL,
  `estado_reporte_modulo` int NOT NULL,
  PRIMARY KEY (`fk_id_reporte`,`fk_id_modulo`),
  KEY `fk_id_reporte` (`fk_id_reporte`,`fk_id_modulo`),
  KEY `fk_reporte_de_modulo_reportes` (`fk_id_modulo`),
  CONSTRAINT `fk_reporte_de_modulo` FOREIGN KEY (`fk_id_reporte`) REFERENCES `reporte` (`pk_id_reporte`),
  CONSTRAINT `fk_reporte_de_modulo_reportes` FOREIGN KEY (`fk_id_modulo`) REFERENCES `modulo` (`pk_id_modulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporte_modulo`
--

LOCK TABLES `reporte_modulo` WRITE;
/*!40000 ALTER TABLE `reporte_modulo` DISABLE KEYS */;
INSERT INTO `reporte_modulo` VALUES (1,7,1);
/*!40000 ALTER TABLE `reporte_modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruta`
--

DROP TABLE IF EXISTS `ruta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ruta` (
  `pk_id_ruta` int NOT NULL AUTO_INCREMENT,
  `origen_ruta` varchar(40) NOT NULL,
  `destino_ruta` varchar(40) NOT NULL,
  `descripcion_ruta` varchar(45) NOT NULL,
  `estado_ruta` int NOT NULL,
  PRIMARY KEY (`pk_id_ruta`),
  KEY `pk_id_ruta` (`pk_id_ruta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruta`
--

LOCK TABLES `ruta` WRITE;
/*!40000 ALTER TABLE `ruta` DISABLE KEYS */;
/*!40000 ALTER TABLE `ruta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saldo_historico`
--

DROP TABLE IF EXISTS `saldo_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saldo_historico` (
  `pk_id_cuenta_contable` int NOT NULL,
  `pk_fecha_saldo_historico` datetime NOT NULL,
  `monto_saldo_historico` double DEFAULT NULL,
  `cargo_saldo_hostorico` double DEFAULT NULL,
  `abono_saldo_historico` double DEFAULT NULL,
  PRIMARY KEY (`pk_id_cuenta_contable`,`pk_fecha_saldo_historico`),
  CONSTRAINT `fk_saldo_cuenta_contable` FOREIGN KEY (`pk_id_cuenta_contable`) REFERENCES `cuenta_contable` (`pk_id_cuenta_contable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saldo_historico`
--

LOCK TABLES `saldo_historico` WRITE;
/*!40000 ALTER TABLE `saldo_historico` DISABLE KEYS */;
/*!40000 ALTER TABLE `saldo_historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefono_proveedor`
--

DROP TABLE IF EXISTS `telefono_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefono_proveedor` (
  `pk_id_telefono_proveedor` int NOT NULL AUTO_INCREMENT,
  `fk_id_proveedor` int NOT NULL,
  `telefono_telefono_proveedor` varchar(20) NOT NULL,
  `estado_telefono_proveedor` int NOT NULL,
  PRIMARY KEY (`pk_id_telefono_proveedor`),
  KEY `pk_id_telefono_proveedor` (`pk_id_telefono_proveedor`),
  KEY `fk_proveedor_telefono` (`fk_id_proveedor`),
  CONSTRAINT `fk_proveedor_telefono` FOREIGN KEY (`fk_id_proveedor`) REFERENCES `proveedor` (`pk_id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefono_proveedor`
--

LOCK TABLES `telefono_proveedor` WRITE;
/*!40000 ALTER TABLE `telefono_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefono_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_baja`
--

DROP TABLE IF EXISTS `tipo_baja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_baja` (
  `pk_id_tipo_baja` int NOT NULL,
  `nombre_tipo_baja` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`pk_id_tipo_baja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_baja`
--

LOCK TABLES `tipo_baja` WRITE;
/*!40000 ALTER TABLE `tipo_baja` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_baja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_competencia`
--

DROP TABLE IF EXISTS `tipo_competencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_competencia` (
  `pk_id_tipo_competencia` int NOT NULL,
  `nombre_competencia` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`pk_id_tipo_competencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_competencia`
--

LOCK TABLES `tipo_competencia` WRITE;
/*!40000 ALTER TABLE `tipo_competencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_competencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_cuenta_contable`
--

DROP TABLE IF EXISTS `tipo_cuenta_contable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_cuenta_contable` (
  `pk_id_tipo_cuenta_contable` int NOT NULL,
  `nombre_tipo_cuenta_contable` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`pk_id_tipo_cuenta_contable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_cuenta_contable`
--

LOCK TABLES `tipo_cuenta_contable` WRITE;
/*!40000 ALTER TABLE `tipo_cuenta_contable` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_cuenta_contable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_cuenta_por_cobrar`
--

DROP TABLE IF EXISTS `tipo_cuenta_por_cobrar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_cuenta_por_cobrar` (
  `pk_id_tipo_cuenta` int NOT NULL AUTO_INCREMENT,
  `nombre_cuenta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pk_id_tipo_cuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_cuenta_por_cobrar`
--

LOCK TABLES `tipo_cuenta_por_cobrar` WRITE;
/*!40000 ALTER TABLE `tipo_cuenta_por_cobrar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_cuenta_por_cobrar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_entrevista`
--

DROP TABLE IF EXISTS `tipo_entrevista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_entrevista` (
  `pk_id_tipo_entrevista` int NOT NULL,
  `nombre_tipo_entrevista` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pk_id_tipo_entrevista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_entrevista`
--

LOCK TABLES `tipo_entrevista` WRITE;
/*!40000 ALTER TABLE `tipo_entrevista` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_entrevista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_moneda`
--

DROP TABLE IF EXISTS `tipo_moneda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_moneda` (
  `pk_id_tipo_moneda` int NOT NULL,
  `moneda_tipo_moneda` varchar(45) DEFAULT NULL,
  `simbolo_tipo_moneda` varchar(2) DEFAULT NULL,
  `descripcion_tipo_moneda` varchar(75) DEFAULT NULL,
  `estado_tipo_moneda` tinyint DEFAULT NULL,
  PRIMARY KEY (`pk_id_tipo_moneda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_moneda`
--

LOCK TABLES `tipo_moneda` WRITE;
/*!40000 ALTER TABLE `tipo_moneda` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_moneda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_movimiento`
--

DROP TABLE IF EXISTS `tipo_movimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_movimiento` (
  `pk_id_tipo_movimiento` int NOT NULL,
  `nombre_tipo_movimiento` varchar(45) NOT NULL,
  `signo_tipo_movimiento` varchar(1) DEFAULT NULL,
  `estado_tipo_movimiento` int NOT NULL,
  PRIMARY KEY (`pk_id_tipo_movimiento`),
  KEY `pk_id_tipo_movimiento` (`pk_id_tipo_movimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_movimiento`
--

LOCK TABLES `tipo_movimiento` WRITE;
/*!40000 ALTER TABLE `tipo_movimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_movimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_transaccion`
--

DROP TABLE IF EXISTS `tipo_transaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_transaccion` (
  `pk_id_tipo_transaccion` int NOT NULL,
  `nombre_tipo_transaccion` varchar(45) DEFAULT NULL,
  `descripcion_tipo_transaccion` varchar(75) DEFAULT NULL,
  `estado_tipo_transaccion` tinyint DEFAULT NULL,
  PRIMARY KEY (`pk_id_tipo_transaccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_transaccion`
--

LOCK TABLES `tipo_transaccion` WRITE;
/*!40000 ALTER TABLE `tipo_transaccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_transaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_venta`
--

DROP TABLE IF EXISTS `tipo_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_venta` (
  `pk_id_tipo_venta` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pk_id_tipo_venta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_venta`
--

LOCK TABLES `tipo_venta` WRITE;
/*!40000 ALTER TABLE `tipo_venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaccion`
--

DROP TABLE IF EXISTS `transaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaccion` (
  `pk_id_transaccion` int NOT NULL,
  `fk_id_numero_cuenta_bancaria` int NOT NULL,
  `fecha_transaccion` datetime DEFAULT NULL,
  `fk_id_tipo_transaccion` int NOT NULL,
  `fk_id_tipo_moneda` int NOT NULL,
  `monto_transaccion` double DEFAULT NULL,
  `descripcion_transaccion` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`pk_id_transaccion`),
  KEY `fk_transaccion_numero_cuenta` (`fk_id_numero_cuenta_bancaria`),
  KEY `fk_transaccion_tipo_transaccion` (`fk_id_tipo_transaccion`),
  KEY `fk_transaccion_tipo_moneda` (`fk_id_tipo_moneda`),
  CONSTRAINT `fk_encabezado_transaccion_numero_cuenta` FOREIGN KEY (`fk_id_numero_cuenta_bancaria`) REFERENCES `cuenta_bancaria` (`pk_id_numero_cuenta_bancaria`),
  CONSTRAINT `fk_transaccion_tipo_transaccion` FOREIGN KEY (`fk_id_tipo_transaccion`) REFERENCES `tipo_transaccion` (`pk_id_tipo_transaccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaccion`
--

LOCK TABLES `transaccion` WRITE;
/*!40000 ALTER TABLE `transaccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculo` (
  `pk_id_vehiculo` int NOT NULL AUTO_INCREMENT,
  `fk_id_marca` int NOT NULL,
  `placa_vehiculo` varchar(45) NOT NULL,
  `modelo_vehiculo` varchar(45) NOT NULL,
  `color_vehiculo` varchar(45) NOT NULL,
  `anio_vehiculo` varchar(45) NOT NULL,
  `tipo_combustible_vehiculo` varchar(45) NOT NULL,
  `estado_vehiculo` int NOT NULL,
  PRIMARY KEY (`pk_id_vehiculo`),
  KEY `pk_id_vehiculo` (`pk_id_vehiculo`),
  KEY `fk_vehiculo_marca` (`fk_id_marca`),
  CONSTRAINT `fk_vehiculo_marca` FOREIGN KEY (`fk_id_marca`) REFERENCES `marca` (`pk_id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo`
--

LOCK TABLES `vehiculo` WRITE;
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_clc'
--

--
-- Dumping routines for database 'db_clc'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-10 19:22:57
