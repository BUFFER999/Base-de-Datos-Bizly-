-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bizly_db
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_categoria` int NOT NULL,
  `id_proveedor` int DEFAULT NULL,
  `codigo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `precio_compra` decimal(12,2) NOT NULL DEFAULT '0.00',
  `precio_venta` decimal(12,2) NOT NULL,
  `stock_actual` int NOT NULL DEFAULT '0',
  `stock_minimo` int NOT NULL DEFAULT '5',
  `unidad_medida` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unidad',
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_productos_codigo` (`codigo`),
  KEY `fk_productos_categoria` (`id_categoria`),
  KEY `fk_productos_proveedor` (`id_proveedor`),
  KEY `fk_productos_usuario` (`created_by`),
  KEY `idx_productos_stock` (`stock_actual`),
  CONSTRAINT `fk_productos_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`),
  CONSTRAINT `fk_productos_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id`),
  CONSTRAINT `fk_productos_usuario` FOREIGN KEY (`created_by`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,2,1,'ALI-001','Café molido 500g','Café colombiano premium',8000.00,15000.00,50,10,'unidad',1,'2026-03-24 12:37:53','2026-03-24 12:37:53',1),(2,2,1,'ALI-002','Azúcar blanca 1kg','Azúcar refinada',2500.00,4500.00,30,5,'unidad',1,'2026-03-24 12:37:53','2026-03-24 12:37:53',1),(3,3,2,'TEC-001','Cable USB-C 1m','Cable de carga rápida',5000.00,12000.00,20,5,'unidad',1,'2026-03-24 12:37:53','2026-03-24 12:37:53',1),(4,3,2,'TEC-002','Audífonos inalámbricos','Bluetooth 5.0',45000.00,89000.00,8,3,'unidad',1,'2026-03-24 12:37:53','2026-03-24 12:37:53',1),(5,1,1,'GEN-001','Bolsa plástica x100','Bolsas de empaque',800.00,2000.00,15,5,'unidad',1,'2026-03-24 12:37:53','2026-03-24 12:37:53',1),(6,3,3,'TEC-003','Celular Poco X7 Pro 5G','Smartphone alto rendimiento, pantalla AMOLED 120Hz',1200000.00,1600000.00,15,3,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(7,3,3,'TEC-004','Cooler Magnético Red Magic','Sistema de refrigeración activa para smartphones',150000.00,220000.00,25,5,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(8,3,3,'TEC-005','Procesador AMD FX-8120','CPU 8 núcleos Socket AM3+',200000.00,280000.00,5,2,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(9,3,3,'TEC-006','Placa Base ASUS M5A78L-M LX','Motherboard microATX AM3+ ideal para overclock ligero',180000.00,250000.00,4,2,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(10,3,3,'TEC-007','Disipadores de calor VRM (Kit x10)','Kit de cobre para refrigeración de fases de poder',15000.00,35000.00,50,10,'kit',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(11,4,4,'ROP-001','Pantalón Cargo Techwear Tono Tierra','Pantalón con múltiples bolsillos, ajuste urbano',80000.00,140000.00,20,5,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(12,4,4,'ROP-002','Chaqueta Cortavientos Urbana','Material impermeable, diseño asimétrico negro',90000.00,160000.00,15,4,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(13,4,4,'ROP-003','Set de Piercings Acero Quirúrgico','Argollas y studs en color negro mate',10000.00,25000.00,100,20,'kit',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(14,1,3,'GEN-002','Horquilla RockShox Aire Enduro','Recorrido 160mm, ajuste de rebote y compresión',800000.00,1250000.00,3,1,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(15,1,3,'GEN-003','Disco de Freno 203mm Flotante','Mejora de frenada para DH/Enduro, disipación térmica',60000.00,95000.00,12,4,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(16,1,3,'GEN-004','Disco de Freno 180mm','Disco de acero inoxidable estándar de 6 tornillos',40000.00,65000.00,20,5,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(17,1,3,'GEN-005','Llantas Maxxis Assegai 29x2.5','Cubierta para Downhill con compuesto 3C MaxxGrip',250000.00,340000.00,8,2,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(18,1,3,'GEN-006','Kit de Calcomanías Personalizadas','Vinilo protector para marco, diseño \"Garritas\"',45000.00,80000.00,30,5,'kit',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(19,5,3,'SER-001','Curso Online: Java y MySQL Avanzado','Acceso a plataforma asíncrona por 30 días',0.00,150000.00,999,10,'servicio',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(20,1,3,'GEN-007','Vinilo Linkin Park - Meteora','Edición especial 20 aniversario',120000.00,180000.00,10,2,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(21,1,3,'GEN-008','CD Three Days Grace - One-X','Álbum clásico en formato físico',45000.00,75000.00,15,3,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(22,1,3,'GEN-009','CD Red - End of Silence','Álbum debut, rock alternativo',40000.00,70000.00,12,2,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(23,4,4,'ROP-004','Camiseta Oversize Básica Blanca','Algodón 100%, corte holgado',25000.00,50000.00,40,10,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(24,4,4,'ROP-005','Camiseta Oversize Básica Negra','Algodón 100%, corte holgado',25000.00,50000.00,45,10,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(25,4,4,'ROP-006','Jogger Táctico Negro','Con correas ajustables y mosquetones',75000.00,130000.00,22,5,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(26,4,4,'ROP-007','Chaleco Pechera Techwear','Múltiples compartimentos, material reflectivo',65000.00,110000.00,18,4,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(27,4,4,'ROP-008','Gorra Snapback Minimalista','Sin logos, panel frontal estructurado',15000.00,35000.00,30,5,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(28,4,4,'ROP-009','Tenis Urbanos Suela Gruesa','Estilo chunky, antideslizantes',90000.00,160000.00,25,5,'par',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(29,3,3,'TEC-008','Mouse Pad XL','Superficie de microfibra, bordes cosidos 90x40cm',20000.00,45000.00,35,10,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(30,3,3,'TEC-009','Teclado Mecánico 60%','Switches rojos, retroiluminación RGB',85000.00,150000.00,20,5,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(31,3,3,'TEC-010','Pasta Térmica Arctic MX-4','Jeringa de 4g de alta conductividad',25000.00,45000.00,40,10,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(32,3,3,'TEC-011','Ventilador PC 120mm PWM','Alta presión estática, ideal para disipadores',18000.00,35000.00,50,10,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(33,3,3,'TEC-012','Cable HDMI 2.1 Trenzado','Soporta 4K 120Hz, longitud 2 metros',15000.00,30000.00,60,15,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(34,3,3,'TEC-013','Soporte para Monitor Doble','Brazo articulado estándar VESA',120000.00,190000.00,12,3,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(35,3,3,'TEC-014','Cargador Rápido 67W','Adaptador de corriente tipo C',40000.00,80000.00,25,5,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(36,2,1,'ALI-003','Bebida Energizante x12','Pack de latas 250ml',45000.00,72000.00,20,5,'caja',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(37,2,1,'ALI-004','Snacks de Proteína','Barra sabor chocolate amargo',3500.00,7000.00,100,20,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(38,2,1,'ALI-005','Café Tostado en Grano 1kg','Origen Cundinamarca, tueste medio',25000.00,45000.00,15,5,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(39,2,1,'ALI-006','Té Matcha Orgánico 100g','Calidad ceremonial',40000.00,75000.00,10,3,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(40,1,3,'GEN-010','Pedales Plataforma Aluminio','Pines intercambiables, agarre extremo para Bunny hop',70000.00,120000.00,18,4,'par',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(41,1,3,'GEN-011','Puños Enduro Lock-on','Goma suave para absorción de vibraciones',30000.00,55000.00,25,5,'par',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(42,1,3,'GEN-012','Casco Full Face DH','Certificación ASTM F1952, ultraligero',350000.00,580000.00,5,2,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(43,1,3,'GEN-013','Gafas de Ciclismo Fotocromáticas','Lente amplio, incluye estuche rígido',80000.00,150000.00,15,3,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(44,5,1,'SER-002','Mantenimiento General PC','Limpieza profunda, cambio pasta térmica, optimización OS',0.00,80000.00,999,10,'servicio',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(45,5,1,'SER-003','Mantenimiento Bicicleta Enduro','Purga de frenos, engrase de rodamientos',0.00,120000.00,999,10,'servicio',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(46,4,4,'ROP-010','Medias de Compresión Negras','Ideales para deporte de alto impacto',12000.00,25000.00,40,10,'par',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(47,4,4,'ROP-011','Guantes MTB Dedos Largos','Material transpirable, compatibles con pantallas',35000.00,65000.00,22,5,'par',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(48,3,3,'TEC-015','Adaptador Wi-Fi USB','Doble banda 5GHz/2.4GHz',20000.00,45000.00,30,8,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(49,3,3,'TEC-016','Hub USB Tipo C 7 en 1','Salida HDMI, lectores SD, USB 3.0',45000.00,90000.00,20,5,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(50,1,3,'GEN-014','Cadena 12 Velocidades','Recubrimiento de titanio, eslabón rápido',90000.00,160000.00,15,4,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(51,1,3,'GEN-015','Liquido Tubeless 500ml','Sellante antipinchazos sin amoniaco',35000.00,60000.00,25,5,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(52,1,3,'GEN-016','Bomba de Aire Portátil CNC','Alta presión, compatible con Presta/Schrader',45000.00,85000.00,18,4,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(53,1,1,'GEN-017','Cinta Métrica 5m','Cinta métrica industrial reforzada',8000.00,15000.00,40,10,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(54,1,1,'GEN-018','Juego de Llaves Allen','Acero cromo vanadio, llaves milimétricas',18000.00,35000.00,30,6,'kit',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1),(55,3,3,'TEC-017','Funda Silicona Poco X7 Pro','Ajuste perfecto, protección de bordes cámara',10000.00,25000.00,50,10,'unidad',1,'2026-06-16 07:49:57','2026-06-16 07:49:57',1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-16  8:00:15
