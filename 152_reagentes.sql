
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `consumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumo` (
  `idconsumo` int NOT NULL AUTO_INCREMENT,
  `iditem` int NOT NULL,
  `desc_consumo` varchar(100) DEFAULT NULL,
  `data` date NOT NULL,
  `qtd` float NOT NULL,
  PRIMARY KEY (`idconsumo`),
  KEY `consumo_item_idx` (`iditem`),
  CONSTRAINT `consumo_item` FOREIGN KEY (`iditem`) REFERENCES `itens` (`iditens`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `consumo` WRITE;
/*!40000 ALTER TABLE `consumo` DISABLE KEYS */;
INSERT INTO `consumo` VALUES (10,6,'Aula Teste5','2019-09-15',95);
INSERT INTO `consumo` VALUES (11,6,'Aula Teste600','2019-09-15',500);
INSERT INTO `consumo` VALUES (12,3,'Aula de hoje 23','2019-09-23',100);
INSERT INTO `consumo` VALUES (13,2,'Aula de hoje dinovo','2019-09-20',250);
INSERT INTO `consumo` VALUES (14,6,'Uso em aula','2020-03-31',655);
INSERT INTO `consumo` VALUES (15,6,'Uso em aula','2020-03-31',100);
INSERT INTO `consumo` VALUES (16,6,'Uso em aula','2020-03-31',100);
INSERT INTO `consumo` VALUES (17,6,'Uso em aula','2020-03-31',7000);
INSERT INTO `consumo` VALUES (18,6,'Uso em aula','2020-03-31',100);
INSERT INTO `consumo` VALUES (19,5,'Uso em aula','2020-04-09',100);
INSERT INTO `consumo` VALUES (20,5,'Uso em aula','2020-04-09',100);
INSERT INTO `consumo` VALUES (21,2,'Uso em aula','2020-04-02',100);
INSERT INTO `consumo` VALUES (22,2,'Uso em aula','2020-04-02',100);
INSERT INTO `consumo` VALUES (23,2,'Uso em aula','2020-04-02',100);
INSERT INTO `consumo` VALUES (24,48,'Uso em aula','2020-05-04',100);
INSERT INTO `consumo` VALUES (25,45,'Uso em aula','2020-05-04',100);
INSERT INTO `consumo` VALUES (26,49,'Uso em aula','2020-05-04',200);
INSERT INTO `consumo` VALUES (27,51,'Uso em aula','2020-05-08',100);
INSERT INTO `consumo` VALUES (28,51,'Uso em aula','2020-06-10',100);
INSERT INTO `consumo` VALUES (29,54,'Uso em aula','2020-06-10',1000);
INSERT INTO `consumo` VALUES (30,55,'Uso em aula','2020-06-10',100);
INSERT INTO `consumo` VALUES (31,56,'Uso estudo','2020-06-10',500);
INSERT INTO `consumo` VALUES (32,58,'Experimento','2020-07-16',250);
INSERT INTO `consumo` VALUES (34,59,'desc','2021-02-24',9999);
INSERT INTO `consumo` VALUES (35,59,'1','2021-02-18',100);
INSERT INTO `consumo` VALUES (37,60,'Utilizada para aula experimental','2021-03-01',100);
/*!40000 ALTER TABLE `consumo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`152_gestor`@`%`*/ /*!50003 TRIGGER `consumo_AFTER_INSERT` AFTER INSERT ON `consumo` FOR EACH ROW BEGIN
UPDATE 152_reagentes.itens 
SET 152_reagentes.itens.massa_restante = massa_restante - NEW.qtd
where itens.iditens = NEW.iditem;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `itens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itens` (
  `iditens` int NOT NULL AUTO_INCREMENT,
  `descricao_itens` varchar(45) NOT NULL,
  `massa` float NOT NULL,
  `massa_balanca` float NOT NULL,
  `idproduto` int NOT NULL,
  `data` date NOT NULL,
  `massa_restante` float NOT NULL,
  PRIMARY KEY (`iditens`),
  KEY `produto_itens_idx` (`idproduto`),
  CONSTRAINT `produto_itens` FOREIGN KEY (`idproduto`) REFERENCES `produtos` (`idprodutos`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `itens` WRITE;
/*!40000 ALTER TABLE `itens` DISABLE KEYS */;
INSERT INTO `itens` VALUES (2,'Frasco 10',1300,1,10,'0000-00-00',750);
INSERT INTO `itens` VALUES (3,'Frasco 01',1250,1,12,'0000-00-00',1150);
INSERT INTO `itens` VALUES (4,'Frasco 03',1250,1,10,'0000-00-00',1250);
INSERT INTO `itens` VALUES (5,'Frasco 08',1250,1,10,'2019-09-08',1250);
INSERT INTO `itens` VALUES (6,'Frasco 06',1250,1,10,'2019-09-09',655);
INSERT INTO `itens` VALUES (7,'Frasco 88',1150,1,13,'2019-09-09',1150);
INSERT INTO `itens` VALUES (8,'Frasco 01',1100,1,16,'2019-09-19',1100);
INSERT INTO `itens` VALUES (9,'Frasco 01',1100,1,17,'2019-09-30',1100);
INSERT INTO `itens` VALUES (42,'Frasco 10',1300,1,10,'2019-09-08',1300);
INSERT INTO `itens` VALUES (43,'Frasco 01',1250,1,12,'2019-09-08',1250);
INSERT INTO `itens` VALUES (44,'Frasco 03',1250,1,10,'2019-09-08',1250);
INSERT INTO `itens` VALUES (45,'Frasco 08',1250,1,10,'2019-09-08',1150);
INSERT INTO `itens` VALUES (46,'Frasco 06',1250,1,10,'2019-09-09',655);
INSERT INTO `itens` VALUES (47,'Frasco 88',1150,1,13,'2019-09-09',1150);
INSERT INTO `itens` VALUES (48,'Uso em aula',1.9,1,56,'2020-05-04',-98.1);
INSERT INTO `itens` VALUES (49,'Frasco 1',1900,1,56,'2020-05-04',1700);
INSERT INTO `itens` VALUES (50,'Frasco 0002',100,1,10,'2020-05-07',100);
INSERT INTO `itens` VALUES (51,'Frasco 1',1000,1,59,'2020-05-08',800);
INSERT INTO `itens` VALUES (52,'Frasco 1',1000,1010,59,'2020-06-10',1000);
INSERT INTO `itens` VALUES (53,'Frasco 100',2000,2010,56,'2020-06-10',2000);
INSERT INTO `itens` VALUES (54,'Frasco 1',5000,5100,62,'2020-06-10',4000);
INSERT INTO `itens` VALUES (55,'Frasco 1',1000,1020,63,'2020-06-10',900);
INSERT INTO `itens` VALUES (56,'Frasco 1',5000,5050,64,'2020-06-10',4500);
INSERT INTO `itens` VALUES (57,'Frasco de Alcool',1000,1100,65,'2020-07-16',1000);
INSERT INTO `itens` VALUES (58,'Frasco de Alcool',1000,1100,65,'2020-07-16',750);
INSERT INTO `itens` VALUES (59,'1',9999,99999,66,'2021-02-12',9899);
INSERT INTO `itens` VALUES (60,'Frasco 01',2000,2100,67,'2021-03-01',1900);
/*!40000 ALTER TABLE `itens` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `idprodutos` int NOT NULL AUTO_INCREMENT,
  `desc_prod` varchar(100) DEFAULT NULL,
  `tipo` enum('peso','volume') DEFAULT NULL,
  `densidade` float DEFAULT NULL,
  PRIMARY KEY (`idprodutos`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (10,'Acetona','peso',0.8);
INSERT INTO `produtos` VALUES (11,'Ácido Acético Glacial 55','volume',1.05);
INSERT INTO `produtos` VALUES (12,'Ácido cloridrico PA -HCl','volume',1.19);
INSERT INTO `produtos` VALUES (13,'Ácido Acético Teste','volume',1.05);
INSERT INTO `produtos` VALUES (14,'Ácido Acético Teste','volume',1.05);
INSERT INTO `produtos` VALUES (15,'Acetona 23','volume',1.05);
INSERT INTO `produtos` VALUES (16,'Ácido Acético Glacial 22','volume',1);
INSERT INTO `produtos` VALUES (17,'Acetona 256','volume',0.8);
INSERT INTO `produtos` VALUES (50,'Acetona 11','peso',0.8);
INSERT INTO `produtos` VALUES (51,'Ácido Acético Glacial 2','peso',1.05);
INSERT INTO `produtos` VALUES (52,'Ácido cloridrico PA -HCl','volume',1.19);
INSERT INTO `produtos` VALUES (53,'Ácido Acético Teste','volume',1.05);
INSERT INTO `produtos` VALUES (54,'Ácido Acético Teste','volume',1.05);
INSERT INTO `produtos` VALUES (55,'Acetona 23','peso',1);
INSERT INTO `produtos` VALUES (56,'acido sufulrico','volume',1.8);
INSERT INTO `produtos` VALUES (57,'reagente','peso',0.1);
INSERT INTO `produtos` VALUES (59,'alcool','volume',0.1);
INSERT INTO `produtos` VALUES (62,'Acetato de Etila','volume',0.8);
INSERT INTO `produtos` VALUES (63,'Acetato','volume',0.8);
INSERT INTO `produtos` VALUES (64,'Acetato','volume',0.8);
INSERT INTO `produtos` VALUES (65,'alcool 50','volume',1.8);
INSERT INTO `produtos` VALUES (66,'nitrato de prato','peso',999);
INSERT INTO `produtos` VALUES (67,'Anidrido acético','volume',1.08);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idusuarios` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `tipo` int DEFAULT NULL,
  PRIMARY KEY (`idusuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'adm','40b0e71dffc025dea9e63e8bd9e3081bd5f258c9254a658f273bb74e85bd78df',1);
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

