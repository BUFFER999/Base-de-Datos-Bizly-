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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_rol` int NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `intentos_fallidos` int NOT NULL DEFAULT '0',
  `bloqueado_hasta` datetime DEFAULT NULL,
  `token_recuperacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_expiracion` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_usuarios_email` (`email`),
  KEY `fk_usuarios_rol` (`id_rol`),
  CONSTRAINT `fk_usuarios_rol` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,1,'Admin','Bizly','admin@bizly.com','$2b$10$PLACEHOLDER_HASH_ADMIN',NULL,1,0,NULL,NULL,NULL,'2026-03-24 12:37:53','2026-03-24 12:37:53'),(2,2,'Carlos','Mendez','vendedor@bizly.com','$2b$10$PLACEHOLDER_HASH_VENDEDOR',NULL,1,0,NULL,NULL,NULL,'2026-03-24 12:37:53','2026-03-24 12:37:53'),(3,3,'Ana','Torres','cliente@bizly.com','$2b$10$PLACEHOLDER_HASH_CLIENTE',NULL,1,0,NULL,NULL,NULL,'2026-03-24 12:37:53','2026-03-24 12:37:53'),(4,3,'Juan','Pérez','juan.perez@email.com','$2b$10$HASH_PLACEHOLDER','3110000001',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(5,3,'Diana','Gómez','diana.gomez@email.com','$2b$10$HASH_PLACEHOLDER','3110000002',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(6,3,'Carlos','Ramírez','carlos.ramirez@email.com','$2b$10$HASH_PLACEHOLDER','3110000003',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(7,3,'Laura','Martínez','laura.martinez@email.com','$2b$10$HASH_PLACEHOLDER','3110000004',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(8,3,'Andrés','Fernández','andres.fernandez@email.com','$2b$10$HASH_PLACEHOLDER','3110000005',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(9,2,'Sofía','López','sofia.vendedor@bizly.com','$2b$10$HASH_PLACEHOLDER','3110000006',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(10,3,'Diego','González','diego.gonzalez@email.com','$2b$10$HASH_PLACEHOLDER','3110000007',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(11,3,'Valentina','Rodríguez','valentina.rodriguez@email.com','$2b$10$HASH_PLACEHOLDER','3110000008',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(12,3,'Mateo','Hernández','mateo.hernandez@email.com','$2b$10$HASH_PLACEHOLDER','3110000009',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(13,3,'Camila','García','camila.garcia@email.com','$2b$10$HASH_PLACEHOLDER','3110000010',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(14,3,'Santiago','Morales','santiago.morales@email.com','$2b$10$HASH_PLACEHOLDER','3110000011',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(15,3,'Mariana','Ríos','mariana.rios@email.com','$2b$10$HASH_PLACEHOLDER','3110000012',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(16,3,'Sebastián','Castro','sebastian.castro@email.com','$2b$10$HASH_PLACEHOLDER','3110000013',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(17,3,'Valeria','Ortiz','valeria.ortiz@email.com','$2b$10$HASH_PLACEHOLDER','3110000014',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(18,3,'Nicolás','Silva','nicolas.silva@email.com','$2b$10$HASH_PLACEHOLDER','3110000015',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(19,2,'Paula','Rojas','paula.vendedor@bizly.com','$2b$10$HASH_PLACEHOLDER','3110000016',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(20,3,'Alejandro','Cruz','alejandro.cruz@email.com','$2b$10$HASH_PLACEHOLDER','3110000017',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(21,3,'Isabella','Molina','isabella.molina@email.com','$2b$10$HASH_PLACEHOLDER','3110000018',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(22,3,'Felipe','Delgado','felipe.delgado@email.com','$2b$10$HASH_PLACEHOLDER','3110000019',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(23,3,'Daniela','Aguilar','daniela.aguilar@email.com','$2b$10$HASH_PLACEHOLDER','3110000020',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(24,3,'David','Mendoza','david.mendoza@email.com','$2b$10$HASH_PLACEHOLDER','3110000021',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(25,3,'Andrea','Vega','andrea.vega@email.com','$2b$10$HASH_PLACEHOLDER','3110000022',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(26,3,'Javier','Iglesias','javier.iglesias@email.com','$2b$10$HASH_PLACEHOLDER','3110000023',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(27,3,'Carolina','Navarro','carolina.navarro@email.com','$2b$10$HASH_PLACEHOLDER','3110000024',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(28,3,'Esteban','Paredes','esteban.paredes@email.com','$2b$10$HASH_PLACEHOLDER','3110000025',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(29,3,'Tatiana','Salazar','tatiana.salazar@email.com','$2b$10$HASH_PLACEHOLDER','3110000026',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(30,3,'Héctor','Cabrera','hector.cabrera@email.com','$2b$10$HASH_PLACEHOLDER','3110000027',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(31,3,'Juliana','Bustos','juliana.bustos@email.com','$2b$10$HASH_PLACEHOLDER','3110000028',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(32,3,'Ricardo','Peña','ricardo.pena@email.com','$2b$10$HASH_PLACEHOLDER','3110000029',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(33,2,'Gabriela','Osorio','gabriela.vendedor@bizly.com','$2b$10$HASH_PLACEHOLDER','3110000030',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(34,3,'Mauricio','Castaño','mauricio.castano@email.com','$2b$10$HASH_PLACEHOLDER','3110000031',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(35,3,'Natalia','Guzmán','natalia.guzman@email.com','$2b$10$HASH_PLACEHOLDER','3110000032',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(36,3,'Leonardo','Mejía','leonardo.mejia@email.com','$2b$10$HASH_PLACEHOLDER','3110000033',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(37,3,'Victoria','Escobar','victoria.escobar@email.com','$2b$10$HASH_PLACEHOLDER','3110000034',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(38,3,'Camilo','Álvarez','camilo.alvarez@email.com','$2b$10$HASH_PLACEHOLDER','3110000035',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(39,3,'Luisa','Suárez','luisa.suarez@email.com','$2b$10$HASH_PLACEHOLDER','3110000036',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(40,3,'Óscar','Marín','oscar.marin@email.com','$2b$10$HASH_PLACEHOLDER','3110000037',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(41,3,'Manuela','Cortes','manuela.cortes@email.com','$2b$10$HASH_PLACEHOLDER','3110000038',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(42,3,'Rodrigo','Vargas','rodrigo.vargas@email.com','$2b$10$HASH_PLACEHOLDER','3110000039',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(43,3,'Ximena','Guerrero','ximena.guerrero@email.com','$2b$10$HASH_PLACEHOLDER','3110000040',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(44,3,'Simón','Pinto','simon.pinto@email.com','$2b$10$HASH_PLACEHOLDER','3110000041',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(45,3,'Antonia','Mora','antonia.mora@email.com','$2b$10$HASH_PLACEHOLDER','3110000042',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(46,3,'Tomás','Rivas','tomas.rivas@email.com','$2b$10$HASH_PLACEHOLDER','3110000043',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(47,3,'Salomé','Blanco','salome.blanco@email.com','$2b$10$HASH_PLACEHOLDER','3110000044',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(48,3,'Joaquín','Pacheco','joaquin.pacheco@email.com','$2b$10$HASH_PLACEHOLDER','3110000045',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(49,3,'Emilia','Cardona','emilia.cardona@email.com','$2b$10$HASH_PLACEHOLDER','3110000046',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(50,3,'Martín','Quintero','martin.quintero@email.com','$2b$10$HASH_PLACEHOLDER','3110000047',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(51,3,'Catalina','Mesa','catalina.mesa@email.com','$2b$10$HASH_PLACEHOLDER','3110000048',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(52,3,'Samuel','Orozco','samuel.orozco@email.com','$2b$10$HASH_PLACEHOLDER','3110000049',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57'),(53,3,'Luciana','Velasco','luciana.velasco@email.com','$2b$10$HASH_PLACEHOLDER','3110000050',1,0,NULL,NULL,NULL,'2026-06-16 07:49:57','2026-06-16 07:49:57');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
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
