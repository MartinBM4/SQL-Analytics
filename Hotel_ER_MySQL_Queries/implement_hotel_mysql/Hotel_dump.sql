CREATE DATABASE  IF NOT EXISTS `hotelequipo` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hotelequipo`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: hotelequipo
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `acompaniantes`
--

DROP TABLE IF EXISTS `acompaniantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acompaniantes` (
  `DNI` varchar(9) NOT NULL,
  `NOMBRE` varchar(20) NOT NULL,
  `APELLIDO` varchar(50) NOT NULL,
  PRIMARY KEY (`DNI`,`NOMBRE`,`APELLIDO`),
  CONSTRAINT `DNI_ACOMPANIANTES` FOREIGN KEY (`DNI`) REFERENCES `clientes` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acompaniantes`
--

LOCK TABLES `acompaniantes` WRITE;
/*!40000 ALTER TABLE `acompaniantes` DISABLE KEYS */;
INSERT INTO `acompaniantes` VALUES ('13846792X','Ángeles','Soto'),('14905188S','Antonio','Santos'),('17933019B','Marta','Rodríguez'),('18029019D','Begoña','Novoa'),('21493662R','Pilar','Otero'),('24609322N','Antonio','Arias'),('24609322N','Antonio','Gómez'),('34550100Y','Candelaria','Expósito'),('35767836F','Antonio','Lorenzo'),('35767836F','Carlos','Abad'),('36631486F','Juana','Moliner'),('49949251J','Pedro','Jiménez'),('66117181R','Raquel','Hernández'),('70743468E','Manuel','Caro'),('74150468D','Teresa','Duran'),('75361416F','Sergio','Sánchez'),('75748032Q','Antonio','Gimeno'),('75748032Q','Beatriz','Gómez'),('75748032Q','Marina','Palomares'),('78106701N','Carmen','Dumitru'),('83232810L','Juan','Torralba'),('85572170A','Antonio','Chico'),('86814295J','María','De Lucas'),('89125196N','José','Fernández'),('89582263T','Josefa','Pozo'),('89582263T','María','López'),('89582263T','Teresa','Gómez'),('95902006X','Carmen','Míguez'),('98875330D','José','González'),('98875330D','Marina','Úbeda');
/*!40000 ALTER TABLE `acompaniantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administracion`
--

DROP TABLE IF EXISTS `administracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administracion` (
  `DNI` varchar(9) NOT NULL,
  `Cod_mesa` int(2) DEFAULT NULL,
  PRIMARY KEY (`DNI`),
  UNIQUE KEY `Cod_mesa_UNIQUE` (`Cod_mesa`),
  KEY `DNI_ADMINISTRACION_idx` (`DNI`),
  CONSTRAINT `DNI_ADMINISTRACION` FOREIGN KEY (`DNI`) REFERENCES `empleados` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administracion`
--

LOCK TABLES `administracion` WRITE;
/*!40000 ALTER TABLE `administracion` DISABLE KEYS */;
INSERT INTO `administracion` VALUES ('77401245N',1),('97031119F',2),('18632091K',3),('87630173N',4),('49803743A',5),('93882926P',6),('42195077J',7),('73145157M',8),('06823064E',9),('32381088D',10),('50879884C',11),('20295088A',12),('80860934H',13),('67526857F',14),('43952872X',15),('74027683K',16),('45002285W',17),('64022583J',18),('55520260P',19),('26868160C',20),('91808452L',21),('43977591G',22),('57621531E',23),('90853175R',24),('80207750B',25),('02763826P',26),('66014393T',27),('86186983A',28),('63963847L',29),('16187680G',30);
/*!40000 ALTER TABLE `administracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alojamiento`
--

DROP TABLE IF EXISTS `alojamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alojamiento` (
  `PRECIO` int(4) DEFAULT NULL,
  `NUM_PERSONAS` int(2) DEFAULT NULL,
  `ID` int(5) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_ALOJ_idx` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alojamiento`
--

LOCK TABLES `alojamiento` WRITE;
/*!40000 ALTER TABLE `alojamiento` DISABLE KEYS */;
INSERT INTO `alojamiento` VALUES (69,6,5230),(47,4,6574),(33,3,7894),(8,0,14298),(35,3,14319),(37,3,19292),(18,1,20403),(27,2,20766),(60,6,20909),(2,0,27863),(45,4,29309),(52,5,33377),(93,9,37560),(55,5,37687),(72,7,41934),(82,8,43043),(25,2,43160),(17,1,43600),(48,4,43875),(39,3,44387),(56,5,47789),(34,3,48313),(95,9,55039),(41,4,55251),(54,5,55926),(86,8,55969),(69,6,56676),(30,3,56877),(90,9,59134),(45,4,64946),(67,6,66384),(8,0,66827),(61,6,66950),(1,0,68850),(42,4,69125),(91,9,74831),(9,0,75337),(89,8,77346),(54,5,78110),(90,9,78316),(33,3,80303),(16,1,80463),(50,5,80657),(6,0,83014),(38,3,84846),(51,5,85770),(51,5,89751),(63,6,93089),(0,0,97649),(70,7,99239);
/*!40000 ALTER TABLE `alojamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apartamentos`
--

DROP TABLE IF EXISTS `apartamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apartamentos` (
  `TIENE_COCINA` varchar(5) DEFAULT NULL,
  `NUM_APARTAMENTO` int(3) NOT NULL,
  `NUM_BANIOS` int(2) DEFAULT NULL,
  `TIENE_SALON` varchar(5) DEFAULT NULL,
  `ID_ALOJ` int(5) DEFAULT NULL,
  `COD_PROPIEDAD` int(3) DEFAULT NULL,
  PRIMARY KEY (`NUM_APARTAMENTO`),
  KEY `ID_ALOJ_APARTAMENTOS_idx` (`ID_ALOJ`),
  KEY `COD_PROP_APART_idx` (`COD_PROPIEDAD`),
  CONSTRAINT `COD_PROP_APART` FOREIGN KEY (`COD_PROPIEDAD`) REFERENCES `bloque_apartamentos` (`COD_PROPIEDAD`),
  CONSTRAINT `ID_ALOJ_APARTAMENTOS` FOREIGN KEY (`ID_ALOJ`) REFERENCES `alojamiento` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartamentos`
--

LOCK TABLES `apartamentos` WRITE;
/*!40000 ALTER TABLE `apartamentos` DISABLE KEYS */;
INSERT INTO `apartamentos` VALUES ('SI',1,2,'SI',55251,784),('SI',2,2,'SI',55251,784),('NO',3,3,'NO',37687,407),('NO',4,1,'SI',75337,176),('SI',5,3,'SI',33377,838),('SI',6,3,'SI',85770,880),('SI',7,3,'SI',99239,68),('SI',8,2,'SI',14319,798),('NO',9,1,'SI',41934,607),('SI',10,1,'NO',20403,472),('SI',11,1,'SI',55039,72),('SI',12,2,'SI',43600,890),('SI',13,1,'SI',29309,767),('SI',14,3,'SI',55926,566),('SI',15,2,'NO',43875,323),('SI',17,2,'SI',37560,808),('SI',18,3,'SI',55969,439),('SI',19,1,'SI',19292,626),('NO',20,2,'SI',80657,677),('NO',21,3,'NO',37687,407),('SI',22,1,'NO',68850,606),('SI',23,2,'SI',20766,267),('SI',24,3,'SI',33377,838),('SI',25,1,'SI',66950,972);
/*!40000 ALTER TABLE `apartamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloque_apartamentos`
--

DROP TABLE IF EXISTS `bloque_apartamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bloque_apartamentos` (
  `NUM_APARTAMENTO` int(3) DEFAULT NULL,
  `COD_PROPIEDAD` int(3) NOT NULL,
  PRIMARY KEY (`COD_PROPIEDAD`),
  KEY `COD_PROPIEDAD_BLOQ_APART_idx` (`COD_PROPIEDAD`),
  CONSTRAINT `COD_PROPIEDAD_BLOQ_APART` FOREIGN KEY (`COD_PROPIEDAD`) REFERENCES `edificios` (`COD_PROPIEDAD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloque_apartamentos`
--

LOCK TABLES `bloque_apartamentos` WRITE;
/*!40000 ALTER TABLE `bloque_apartamentos` DISABLE KEYS */;
INSERT INTO `bloque_apartamentos` VALUES (7,68),(11,72),(4,176),(15,267),(15,323),(15,345),(3,407),(12,439),(12,472),(14,566),(1,606),(9,607),(9,626),(13,677),(11,715),(13,767),(13,774),(1,784),(8,798),(6,808),(7,837),(5,838),(6,880),(12,890),(15,972);
/*!40000 ALTER TABLE `bloque_apartamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `TARJETA_CREDITO` varchar(16) DEFAULT NULL,
  `DNI` varchar(9) NOT NULL,
  PRIMARY KEY (`DNI`),
  CONSTRAINT `DNI_CLIENTES` FOREIGN KEY (`DNI`) REFERENCES `personas` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('1504146685747287','01899887H'),('2334573141648957','02953886L'),('0414305973022259','03373377J'),('8748808873071369','04688053D'),('2072740910947902','05961328G'),('6552203200687692','06018714M'),('1914050053326818','06362720T'),('3897568613608637','07012955W'),('1265036343785508','07433803L'),('2680150811650658','08194113H'),('9233622773635247','08306358T'),('3484044042267472','09303219H'),('8174486910299430','09734748K'),('1919611695859986','11090264D'),('1178928476927345','12128081C'),('2083517974241294','13013582K'),('7620534427725969','13195941J'),('5523803277636275','13846792X'),('6453091921926408','13973030R'),('4658928183885355','14119532Q'),('4935865743733203','14905188S'),('2769207683157274','16978955X'),('6808081068867323','17933019B'),('7262946567578378','18029019D'),('0286166232203001','19349744M'),('7760998997546217','19571828R'),('6797154559417929','20960988F'),('6038664326684105','21493662R'),('1007164299899342','23200113J'),('0645101193879447','23700020S'),('5666983647646638','24594702C'),('8395976931090220','24609322N'),('9735309706821574','24632322N'),('5173754056567215','25451212X'),('0239676947150435','26089225A'),('1431686658278190','27384102A'),('2836915331078800','29928089Y'),('5013648820824294','34336333R'),('7277381008179018','34550100Y'),('1236248748602106','35461171R'),('1696249538408518','35767836F'),('0195234568151114','36370710M'),('1964213199285260','36631486F'),('9321687461892086','38886342N'),('7957671585746347','39020850Q'),('4205839343965901','39460229A'),('2005179668813156','39615383E'),('0298215840617019','39946145K'),('1690414530385469','40074117K'),('9228736946939019','40327198X'),('7580027324657097','40404458J'),('8836567077937371','41622871R'),('0752656033992755','41890977L'),('7887566561155766','43057910R'),('4927848050431430','44546403A'),('4284102344134637','48666490P'),('0199749430755627','49949251J'),('2955281860100552','50010010Y'),('6065589645959339','50180236D'),('1963456609092083','51650518Q'),('6502451200615005','51959261F'),('9819936837695121','54189687P'),('9914088386520511','54954893G'),('1451597195325480','57140288P'),('0143390856012520','63091416R'),('7456422034848715','66117181R'),('9052550064989763','66798086Z'),('7383843860816316','70743468E'),('0812137898980405','72249807E'),('8662841200246165','73438278Z'),('4296556605547031','74150468D'),('1265724002475452','75361416F'),('8465978656810345','75748032Q'),('9161380260392697','77201894W'),('4179644555338855','78106701N'),('9777346533033431','78420605N'),('7102648929335743','79386112W'),('4512275503827668','81615567K'),('2241918200307201','82813334V'),('7240137733129460','83129532B'),('5126899831930029','83232810L'),('6335837479707307','85572170A'),('9064213014758339','86814295J'),('0273870285869411','86880528Y'),('2248182555096216','88234950G'),('4671548271565128','88983913H'),('8506794912437912','89125196N'),('1704207293344891','89582263T'),('4082331903845342','90225364K'),('5084847683047649','90857291T'),('3429204542864498','90954007R'),('5095354909179927','92523669M'),('1302906769958493','95902006X'),('0545631859541616','95964591N'),('1774114567291463','96020895N'),('4464968811846842','96341534P'),('3173558913899658','97291781X'),('6335428732528854','98009503V'),('2991551850726351','98875330D'),('0612785072725010','99370220P');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion`
--

DROP TABLE IF EXISTS `direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direccion` (
  `DNI` varchar(9) NOT NULL,
  PRIMARY KEY (`DNI`),
  KEY `DNI_DIRECCION_idx` (`DNI`),
  CONSTRAINT `DNI_DIRECCION` FOREIGN KEY (`DNI`) REFERENCES `empleados` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
INSERT INTO `direccion` VALUES ('16381374S'),('31149255X'),('45692232H'),('48868776D'),('64986233D'),('75352079P'),('78002169S'),('79528286J'),('86237139L'),('94973975Y');
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edificios`
--

DROP TABLE IF EXISTS `edificios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edificios` (
  `NUM_BLOQUE` int(3) DEFAULT NULL,
  `DIRECCION` varchar(100) DEFAULT NULL,
  `COD_PROPIEDAD` int(3) NOT NULL,
  `DNI_DIRECTOR` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`COD_PROPIEDAD`),
  KEY `COD_PROPIEDAD_idx` (`COD_PROPIEDAD`),
  KEY `DNI_DIRECTOR_EDIFICIOS_idx` (`DNI_DIRECTOR`),
  CONSTRAINT `COD_PROPIEDAD` FOREIGN KEY (`COD_PROPIEDAD`) REFERENCES `propiedades` (`COD_PROPIEDAD`),
  CONSTRAINT `DNI_DIRECTOR_EDIFICIOS` FOREIGN KEY (`DNI_DIRECTOR`) REFERENCES `direccion` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edificios`
--

LOCK TABLES `edificios` WRITE;
/*!40000 ALTER TABLE `edificios` DISABLE KEYS */;
INSERT INTO `edificios` VALUES (720,'1163 Aenean Road',3,'31149255X'),(562,'P.O. Box 543, 3159 Elit, Rd.',15,'64986233D'),(664,'Ap #813-3409 Adipiscing Ave',68,'45692232H'),(661,'Ap #480-2818 Tellus, Rd.',72,'75352079P'),(199,'Ap #839-400 Diam. Rd.',77,'16381374S'),(38,'318-7918 Donec St.',145,'16381374S'),(233,'9432 Vulputate, St.',176,'78002169S'),(716,'Ap #698-3270 Orci, Rd.',267,'48868776D'),(45,'235-5618 Lobortis Road',309,'78002169S'),(839,'Ap #462-4073 Tortor. Ave',311,'86237139L'),(327,'9193 Risus. Rd.',323,'75352079P'),(206,'P.O. Box 362, 257 Eu Rd.',336,'48868776D'),(443,'Ap #685-4687 Montes, Avenue',345,'79528286J'),(548,'7820 Enim. Street',378,'75352079P'),(72,'Ap #481-1503 Libero Rd.',388,'78002169S'),(869,'Ap #455-6210 Natoque Rd.',407,'79528286J'),(931,'739-3098 Ligula Avenue',427,'45692232H'),(726,'Ap #283-4935 Ipsum Ave',439,'45692232H'),(755,'336-1843 Elit, St.',468,'78002169S'),(199,'5279 Dictum Av.',470,'64986233D'),(186,'1829 Et Rd.',472,'16381374S'),(656,'515-7893 Donec Av.',563,'16381374S'),(23,'7615 Arcu Rd.',566,'31149255X'),(655,'900-845 Morbi Rd.',574,'31149255X'),(390,'705-4865 Ipsum Ave',596,'79528286J'),(631,'P.O. Box 505, 5228 Commodo Avenue',606,'31149255X'),(962,'211-7492 Quam Avenue',607,'31149255X'),(383,'P.O. Box 311, 3017 Dui. St.',626,'16381374S'),(154,'700-3873 Id, Avenue',677,'75352079P'),(889,'7423 Lectus Av.',685,'86237139L'),(316,'126 Consequat, Av.',695,'94973975Y'),(867,'P.O. Box 227, 7348 Vehicula Av.',711,'48868776D'),(869,'522-3464 Posuere Street',715,'86237139L'),(189,'986-5791 Vestibulum Av.',716,'94973975Y'),(5,'9265 Aliquam Rd.',753,'94973975Y'),(49,'411-2346 Lacus Road',767,'48868776D'),(630,'Ap #409-5031 Vestibulum St.',774,'48868776D'),(837,'Ap #711-3421 Velit. Av.',784,'79528286J'),(307,'P.O. Box 500, 8411 Non, Rd.',798,'64986233D'),(649,'9714 Sit Rd.',808,'94973975Y'),(122,'Ap #837-970 Ornare, Rd.',837,'86237139L'),(892,'P.O. Box 943, 3105 Odio. Av.',838,'64986233D'),(736,'Ap #598-8470 Id, Avenue',851,'79528286J'),(367,'P.O. Box 109, 9082 Ut Avenue',880,'64986233D'),(564,'Ap #608-9559 Ipsum. Rd.',886,'75352079P'),(217,'7179 Tellus. Road',890,'94973975Y'),(246,'P.O. Box 383, 5192 Donec Road',918,'45692232H'),(86,'340-8911 Porttitor St.',972,'86237139L');
/*!40000 ALTER TABLE `edificios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `SSN` bigint(11) DEFAULT NULL,
  `TURNO` varchar(6) DEFAULT NULL,
  `SALARIO` int(5) DEFAULT NULL,
  `DNI` varchar(9) NOT NULL,
  PRIMARY KEY (`DNI`),
  UNIQUE KEY `SSN_UNIQUE` (`SSN`),
  CONSTRAINT `DNI_EMPLEADOS` FOREIGN KEY (`DNI`) REFERENCES `personas` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (23632680136,'Noche',19405,'01105630C'),(77636799174,'Tarde',23887,'02763826P'),(73360409688,'Tarde',29023,'05516269H'),(2552366478,'Noche',24900,'06151856T'),(94263183971,'Noche',27936,'06823064E'),(78196188959,'Noche',19090,'08381258N'),(53378186688,'Tarde',26537,'12511825D'),(52668639461,'Tarde',19592,'12704555E'),(81774943145,'Mañana',22585,'14205298S'),(88939357573,'Mañana',15641,'14961684T'),(64291009914,'Tarde',28156,'16187680G'),(78752267357,'Noche',28155,'16381374S'),(83358486485,'Tarde',20501,'18632091K'),(42610458663,'Mañana',19324,'18680522Z'),(53462674020,'Tarde',20745,'19206731Y'),(98882537146,'Tarde',22303,'19613779T'),(19541821555,'Noche',26608,'20295088A'),(34744761777,'Noche',23931,'20435810B'),(27254695575,'Mañana',28973,'22082052M'),(48288555519,'Noche',25909,'22559159T'),(14828119979,'Noche',21486,'24154324T'),(49654613091,'Noche',19593,'26868160C'),(16818545788,'Noche',16074,'29651028A'),(71147044189,'Mañana',22932,'31149255X'),(53894445552,'Mañana',24711,'31434706P'),(27396148502,'Tarde',16845,'32381088D'),(48657695272,'Tarde',26581,'32895240L'),(92380542319,'Mañana',22895,'34099638E'),(95221456391,'Tarde',27272,'34536314C'),(57779237510,'Noche',15261,'35360574Y'),(17237307808,'Mañana',21271,'39256812K'),(1881149985,'Noche',26097,'41822947T'),(28150412333,'Noche',29550,'42195077J'),(14649498412,'Tarde',28245,'42230057X'),(41979056188,'Mañana',18414,'43952872X'),(1790188952,'Noche',20204,'43977591G'),(16141425502,'Mañana',19628,'45002285W'),(82325084033,'Mañana',23875,'45402386H'),(77492493334,'Mañana',23515,'45592529C'),(72833000705,'Noche',16491,'45692232H'),(76938611569,'Tarde',20241,'46919741V'),(16914900758,'Mañana',24793,'48868776D'),(35936722352,'Mañana',21887,'49124610Z'),(14378163497,'Noche',24805,'49803743A'),(35544555560,'Noche',15966,'50879884C'),(73304767426,'Mañana',28574,'51582158N'),(53128769142,'Mañana',23023,'51589546V'),(96398060105,'Tarde',16555,'52151935X'),(7902332941,'Tarde',26974,'52651808R'),(98671045518,'Noche',17613,'53816916K'),(92396068532,'Mañana',23853,'55373619S'),(42023195894,'Noche',25289,'55520260P'),(93335532716,'Noche',23758,'56073764V'),(97679125996,'Mañana',22844,'57403199Y'),(5533850750,'Noche',16056,'57621531E'),(44708059000,'Mañana',29267,'60372362F'),(10542796182,'Tarde',21667,'63933537T'),(81981092058,'Noche',22722,'63963847L'),(79645448277,'Noche',28351,'64022583J'),(30579478963,'Mañana',21283,'64115679M'),(59627360609,'Mañana',25336,'64986233D'),(25645024865,'Mañana',25041,'66014393T'),(16001496826,'Tarde',17551,'66697400E'),(63261325052,'Mañana',27751,'67526857F'),(50689429596,'Mañana',29855,'70141074K'),(66868324743,'Mañana',23297,'70485220H'),(25091478140,'Tarde',25874,'71139132V'),(68390612105,'Noche',22664,'71971504L'),(39909838746,'Mañana',22330,'73145157M'),(57592912922,'Mañana',20469,'73562306A'),(4826888288,'Noche',21412,'74027683K'),(92054321648,'Tarde',18073,'75352079P'),(74047826092,'Mañana',16278,'76911604H'),(88406320447,'Noche',17004,'77401245N'),(92200366855,'Mañana',15536,'78002169S'),(40918181657,'Noche',22101,'79528286J'),(77465256699,'Mañana',29768,'80150111X'),(5857319559,'Noche',18909,'80184590N'),(9448215306,'Noche',24959,'80207750B'),(46634921837,'Tarde',19989,'80860934H'),(10518820003,'Noche',21088,'83552161S'),(46635774437,'Tarde',15355,'85654530T'),(78569772340,'Mañana',19985,'86186983A'),(70732983912,'Tarde',16072,'86237139L'),(55373577572,'Tarde',24658,'86425983X'),(84657713629,'Mañana',28507,'86797141V'),(59525041228,'Tarde',23011,'87630173N'),(449027695,'Mañana',28332,'90853175R'),(46886934255,'Tarde',24203,'90896351Y'),(41458078087,'Noche',18438,'91062596F'),(57685270773,'Tarde',19734,'91206680L'),(43598462005,'Mañana',25616,'91808452L'),(47105515058,'Noche',20237,'92831228P'),(9224161301,'Tarde',20913,'93139395K'),(40937996737,'Tarde',19615,'93179992T'),(20417992411,'Noche',21949,'93882926P'),(88772434479,'Noche',29175,'94973975Y'),(82030953704,'Mañana',18582,'96345302G'),(65556007102,'Tarde',19386,'97031119F'),(59057683551,'Tarde',20211,'98304124P');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresas` (
  `NIF` varchar(8) NOT NULL,
  `NOMBRE` varchar(100) DEFAULT NULL,
  `DIRECCION` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`NIF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` VALUES ('B2C8K6','Sit Incorporated','P.O. Box 323, 2005 Aliquam Av.'),('C9V0O6','Etiam Bibendum Consulting','4545 Maecenas Rd.'),('E9O0G0','Magna Sed Eu PC','961-5640 Orci, Ave'),('H7Q9Y8','Massa Vestibulum Accumsan LLC','354-7583 Dis Rd.'),('K9U4Y7','Porttitor Interdum Sed Industries','205-7827 Dolor, Rd.'),('L6C4W0','Malesuada Fames Incorporated','707-3469 Eget, Street'),('O7L7W4','Sociis Natoque Limited','P.O. Box 652, 1220 Mollis Rd.'),('P2E1T2','Eu Inc.','Ap #440-8925 Duis Road'),('Q0W6O9','Odio Nam Ltd','P.O. Box 817, 5207 Fringilla Avenue'),('Y8B9O3','Ligula Aliquam Erat Incorporated','4385 Vulputate Av.');
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitaciones`
--

DROP TABLE IF EXISTS `habitaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habitaciones` (
  `NUM_HABITACION` int(3) NOT NULL,
  `TIPO_CAMA` varchar(10) DEFAULT NULL,
  `PLANTA` int(3) DEFAULT NULL,
  `ID_ALOJ` int(5) DEFAULT NULL,
  `COD_PROPIEDAD` int(3) DEFAULT NULL,
  PRIMARY KEY (`NUM_HABITACION`),
  KEY `ID_ALOJ_HABITACIONES_idx` (`ID_ALOJ`),
  KEY `COD_PROP_HABITACION_idx` (`COD_PROPIEDAD`),
  CONSTRAINT `COD_PROP_HABITACION` FOREIGN KEY (`COD_PROPIEDAD`) REFERENCES `hoteles` (`COD_PROPIEDAD`),
  CONSTRAINT `ID_ALOJ_HABITACIONES` FOREIGN KEY (`ID_ALOJ`) REFERENCES `alojamiento` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitaciones`
--

LOCK TABLES `habitaciones` WRITE;
/*!40000 ALTER TABLE `habitaciones` DISABLE KEYS */;
INSERT INTO `habitaciones` VALUES (1,'Litera',6,97649,388),(2,'Litera',3,7894,753),(3,'Litera',9,89751,427),(4,'Individual',3,78110,563),(5,'Litera',8,43043,378),(6,'Doble',3,64946,596),(7,'Doble',3,14298,574),(8,'Doble',7,80463,336),(9,'Individual',7,20909,470),(10,'Individual',2,74831,685),(11,'Litera',3,47789,309),(12,'Doble',5,66384,716),(13,'Litera',8,59134,918),(14,'Doble',3,80303,145),(15,'Doble',2,5230,886),(16,'Individual',7,48313,851),(17,'Litera',7,6574,3),(18,'Doble',7,84846,711),(19,'Litera',4,44387,15),(20,'Individual',1,77346,311),(21,'Individual',7,56877,468),(22,'Litera',7,69125,695),(23,'Doble',7,78316,68),(24,'Litera',4,66827,77),(25,'Individual',1,83014,72);
/*!40000 ALTER TABLE `habitaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoteles`
--

DROP TABLE IF EXISTS `hoteles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoteles` (
  `NOMBRE` varchar(100) DEFAULT NULL,
  `NUM_HABITACIONES` int(3) DEFAULT NULL,
  `NUM_PLANTAS` int(3) DEFAULT NULL,
  `COD_PROPIEDAD` int(3) NOT NULL,
  `ESTRELLAS` int(1) DEFAULT NULL,
  PRIMARY KEY (`COD_PROPIEDAD`),
  KEY `COD_PROPIEDAD_idx` (`COD_PROPIEDAD`),
  CONSTRAINT `COD_PROPIEDAD_HOTELES` FOREIGN KEY (`COD_PROPIEDAD`) REFERENCES `edificios` (`COD_PROPIEDAD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoteles`
--

LOCK TABLES `hoteles` WRITE;
/*!40000 ALTER TABLE `hoteles` DISABLE KEYS */;
INSERT INTO `hoteles` VALUES ('Palace',341,9,3,2),('NH',249,6,15,1),('Palace',469,8,68,5),('Palace',498,2,72,3),('Barceló',389,2,77,5),('Alamo',270,4,145,5),('Barceló',137,1,309,5),('NH',120,1,311,3),('NH',422,1,336,1),('Triton',220,9,378,1),('Triton',158,2,388,1),('Ibis',251,9,427,5),('Ibis',496,2,468,1),('NH',238,4,470,3),('Barceló',233,1,563,4),('NH',196,7,574,3),('Ibis',328,5,596,3),('Barceló',401,2,685,2),('Alamo',161,5,695,1),('Rizt',347,4,711,5),('Barceló',103,2,716,2),('Barceló',149,3,753,4),('Barceló',488,5,851,2),('Barceló',451,9,886,4),('Triton',138,6,918,1);
/*!40000 ALTER TABLE `hoteles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `limp_trabaja_en`
--

DROP TABLE IF EXISTS `limp_trabaja_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `limp_trabaja_en` (
  `DNI` varchar(9) NOT NULL,
  `ID_ALOJ` int(5) NOT NULL,
  PRIMARY KEY (`DNI`,`ID_ALOJ`),
  KEY `ID_ALOJ_LIMP_TRABAJA_EN_idx` (`ID_ALOJ`),
  CONSTRAINT `DNI_LIMPIEZA_TRABAJA_EN` FOREIGN KEY (`DNI`) REFERENCES `limpieza` (`DNI`),
  CONSTRAINT `ID_ALOJ_LIMP_TRABAJA_EN` FOREIGN KEY (`ID_ALOJ`) REFERENCES `alojamiento` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `limp_trabaja_en`
--

LOCK TABLES `limp_trabaja_en` WRITE;
/*!40000 ALTER TABLE `limp_trabaja_en` DISABLE KEYS */;
INSERT INTO `limp_trabaja_en` VALUES ('57403199Y',7894),('41822947T',14319),('18680522Z',19292),('12704555E',20403),('76911604H',20766),('52651808R',27863),('56073764V',29309),('31434706P',33377),('96345302G',37560),('85654530T',37687),('56073764V',41934),('57403199Y',43043),('63933537T',43160),('51582158N',43600),('32895240L',43875),('14205298S',55039),('57403199Y',55251),('12704555E',55926),('86425983X',55969),('46919741V',56676),('45402386H',66950),('52151935X',68850),('93139395K',75337),('57403199Y',78110),('56073764V',80657),('12704555E',85770),('12704555E',89751),('12704555E',93089),('55373619S',97649),('19613779T',99239);
/*!40000 ALTER TABLE `limp_trabaja_en` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `limpieza`
--

DROP TABLE IF EXISTS `limpieza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `limpieza` (
  `DNI` varchar(9) NOT NULL,
  PRIMARY KEY (`DNI`),
  KEY `DNI_LIMPIEZA_idx` (`DNI`),
  CONSTRAINT `DNI_LIMPIEZA` FOREIGN KEY (`DNI`) REFERENCES `empleados` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `limpieza`
--

LOCK TABLES `limpieza` WRITE;
/*!40000 ALTER TABLE `limpieza` DISABLE KEYS */;
INSERT INTO `limpieza` VALUES ('12704555E'),('14205298S'),('18680522Z'),('19613779T'),('24154324T'),('31434706P'),('32895240L'),('41822947T'),('42230057X'),('45402386H'),('45592529C'),('46919741V'),('51582158N'),('52151935X'),('52651808R'),('55373619S'),('56073764V'),('57403199Y'),('63933537T'),('64115679M'),('71139132V'),('73562306A'),('76911604H'),('80184590N'),('83552161S'),('85654530T'),('86425983X'),('92831228P'),('93139395K'),('96345302G');
/*!40000 ALTER TABLE `limpieza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parking`
--

DROP TABLE IF EXISTS `parking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parking` (
  `TIPO` varchar(5) DEFAULT NULL,
  `NUM_PARKING` int(3) NOT NULL,
  `ID_ALOJ` int(5) NOT NULL,
  PRIMARY KEY (`NUM_PARKING`,`ID_ALOJ`),
  KEY `ID_ALOJ_PARJKING_idx` (`ID_ALOJ`),
  CONSTRAINT `ID_ALOJ_PARJKING` FOREIGN KEY (`ID_ALOJ`) REFERENCES `alojamiento` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking`
--

LOCK TABLES `parking` WRITE;
/*!40000 ALTER TABLE `parking` DISABLE KEYS */;
INSERT INTO `parking` VALUES ('COCHE',1,55039),('MOTO',2,55251),('COCHE',3,55926),('MOTO',4,29309),('COCHE',5,14319),('MOTO',6,43160),('COCHE',7,75337),('MOTO',8,43600),('COCHE',9,99239),('MOTO',10,20403),('COCHE',11,43875),('MOTO',12,93089),('COCHE',13,41934),('COCHE',14,27863),('MOTO',15,85770),('MOTO',16,56676);
/*!40000 ALTER TABLE `parking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `DNI` varchar(9) NOT NULL,
  `NOMBRE` varchar(20) DEFAULT NULL,
  `APELLIDO` varchar(50) DEFAULT NULL,
  `SEXO` varchar(4) DEFAULT NULL,
  `FECHA_NAC` date DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES ('01105630C','Beatriz','Martínez','M','1983-07-19'),('01899887H','María Teresa','Arenas','M','1985-07-17'),('02763826P','Salvador','Ordoñez','H','1943-03-08'),('02953886L','David','Cruz','H','1974-05-28'),('03373377J','Miguel Ángel','Presa','H','1952-04-17'),('04688053D','Juan','Almagro','H','1964-05-14'),('05516269H','María José','Martin','M','1937-10-02'),('05961328G','Rafael','Roselló','H','1959-11-10'),('06018714M','María Pilar','González','M','1975-01-28'),('06151856T','Miguel Ángel','Padin','H','1988-04-06'),('06362720T','Marcos','Rodríguez','H','1977-03-28'),('06823064E','Francisco Javier','Crespo','H','1949-11-30'),('07012955W','Iria','Gil','M','1953-12-19'),('07433803L','Adrián','López','H','1970-07-30'),('08194113H','Dolores','García','M','1994-02-03'),('08306358T','María Luisa','Piñeiro','M','1984-01-19'),('08381258N','Antonio','Rincón','H','1988-09-18'),('09303219H','Francisco','Fernández','H','1968-11-10'),('09734748K','María Carmen','Olivares','M','1999-05-05'),('11090264D','Luis','Velasco','H','1969-05-13'),('12128081C','Javier','Muñoz','H','1964-07-22'),('12511825D','Vicenta','Ortega','M','1984-12-03'),('12704555E','Álvaro','Vergara','H','1983-01-26'),('13013582K','Felisa','Arellano','M','1996-11-17'),('13195941J','María José','Pérez','M','1996-12-01'),('13846792X','Daniel','Díaz','H','1991-09-25'),('13973030R','María Dolores','Martínez','M','2001-03-14'),('14119532Q','José María','Rivero','H','1994-02-07'),('14205298S','Jorge','Márquez','H','1990-08-22'),('14905188S','Juan José','Crespo','H','1936-07-23'),('14961684T','Rafael','García','H','1969-09-06'),('16187680G','Josefa','Pineda','M','1934-12-04'),('16381374S','Francisco','Espinosa','H','1974-02-23'),('16978955X','María','Castillo','M','1988-03-07'),('17933019B','Fernando','García','H','1950-09-22'),('18029019D','Lucia','Tejedor','M','1969-10-07'),('18632091K','María Ángeles','Sarria','M','1971-03-19'),('18680522Z','Patricia','González','M','2001-07-04'),('19206731Y','Alberto','Martin','H','1980-10-02'),('19349744M','David','Delgado','H','1960-09-19'),('19571828R','José','Herrera','H','1934-02-18'),('19613779T','Jesús','Martínez','H','1991-06-26'),('20295088A','María Pilar','Pires','M','1975-06-25'),('20435810B','Manuel','Navas','H','1944-02-27'),('20960988F','Ramón','De la Torre','H','1947-11-01'),('21493662R','Pedro','Lozano','H','1969-07-02'),('22082052M','Sara','Antón','M','1970-12-06'),('22559159T','Juana','Cobo','M','1959-08-16'),('23200113J','Rafael','Romero','H','1955-06-26'),('23700020S','Miguel Ángel','Varela','H','1957-05-07'),('24154324T','Laura','Delgado','M','1996-09-21'),('24594702C','Antonio','Domínguez','H','1939-07-07'),('24609322N','María','Gil','M','1944-02-13'),('24632322N','María Mercedes','González','M','1994-10-19'),('25451212X','Josep','Monge','H','1995-10-17'),('26089225A','Miguel','Duran','H','1985-03-25'),('26868160C','Cristina','Gomis','M','1964-03-04'),('27384102A','Antonia','García','M','1990-09-13'),('29651028A','Manuel','Benavent','H','1951-05-13'),('29928089Y','Paula','Domínguez','M','1997-04-02'),('31149255X','Javier','Gea','H','1953-10-30'),('31434706P','Javier','López','H','1935-07-05'),('32381088D','María Carmen','Aranda','M','1949-12-19'),('32895240L','Alejandro','Casado','H','1974-08-28'),('34099638E','María Ángeles','Herrero','M','1984-12-10'),('34336333R','Pablo','Velasco','H','1942-07-29'),('34536314C','Iván','Pérez','H','1987-02-04'),('34550100Y','Manuel','Moreno','H','1947-02-26'),('35360574Y','Inmaculada','León','M','1959-10-23'),('35461171R','Andrés','Garrido','H','1952-05-08'),('35767836F','Encarnación','Puig','M','1942-06-25'),('36370710M','Natalia','Palma','M','1981-08-28'),('36631486F','Manuel','Díaz','H','1969-05-16'),('38886342N','Ana María','Valenzuela','M','1948-09-04'),('39020850Q','María Isabel','García','M','1998-12-15'),('39256812K','José','Sánchez','H','1968-11-23'),('39460229A','Sara','Moran','M','1987-08-02'),('39615383E','Montserrat','Pérez','M','1962-07-16'),('39946145K','María Carmen','Ferreira','M','1990-12-25'),('40074117K','Marta','Rubio','M','1938-08-26'),('40327198X','Francisco Javier','Ruiz','H','1988-02-03'),('40404458J','Jorge','Martínez','H','1971-04-29'),('41622871R','María Rosario','Cuellar','M','1944-09-24'),('41822947T','Javier','Ramiro','H','1952-02-18'),('41890977L','Marta','Campillo','M','1970-03-01'),('42195077J','María Pilar','Torres','M','1966-05-17'),('42230057X','Miguel Ángel','Sanz','H','1980-08-29'),('43057910R','María Mar','Espejo','M','1945-02-04'),('43952872X','Luis','López','H','2001-11-23'),('43977591G','Manuel','Domínguez','H','1999-03-30'),('44546403A','Félix','Hernández','H','1941-06-11'),('45002285W','María Carmen','García','M','1937-02-04'),('45402386H','Manuela','Canto','M','1983-10-06'),('45592529C','Mikel','Vidal','H','1952-02-13'),('45692232H','María Isabel','Pueyo','M','1963-12-09'),('46919741V','Manuel','Pinto','H','1990-03-07'),('48666490P','Patricia','Díaz','M','1997-03-11'),('48868776D','Manuel','Sanz','H','1990-04-15'),('49124610Z','María Jesús','Martínez','M','1973-03-08'),('49803743A','Raúl','Ramos','H','1955-08-28'),('49949251J','José','Martin','H','1940-10-01'),('50010010Y','Unai','Martin','H','1951-07-20'),('50180236D','Susana','Martínez','M','1937-01-08'),('50879884C','Javier','Gil','H','1990-12-23'),('51582158N','Alejandro','Muñoz','H','1934-05-15'),('51589546V','Rosario','Felipe','M','1982-07-24'),('51650518Q','Jesús','Rodríguez','H','1952-02-11'),('51959261F','María Carmen','Romeu','M','1994-10-16'),('52151935X','María Carmen','Diego','M','1966-03-01'),('52651808R','Pilar','Becerra','M','1966-06-11'),('53816916K','María','García','M','1971-09-09'),('54189687P','María Teresa','Sánchez','M','1948-09-15'),('54954893G','María Mar','Giménez','M','1983-05-28'),('55373619S','Andrea','Méndez','M','1983-01-12'),('55520260P','María Luisa','Olivares','M','1968-11-20'),('56073764V','Isabel','Guerrero','M','1978-07-05'),('57140288P','María','González','M','1940-03-25'),('57403199Y','Francisca','Rodríguez','M','1969-08-02'),('57621531E','Diego','Morales','H','1934-07-28'),('60372362F','Ángel','Román','H','1946-11-10'),('63091416R','Antonio','Duran','H','1935-11-26'),('63933537T','Manuel','Míguez','H','1952-06-09'),('63963847L','Alberto','López','H','1950-09-20'),('64022583J','Maialen','Sánchez','M','1967-08-28'),('64115679M','María Isabel','González','M','1968-06-15'),('64986233D','José','González','H','1966-07-29'),('66014393T','Ana María','García','M','1950-06-17'),('66117181R','José Manuel','González','H','1972-07-29'),('66697400E','María Pilar','Juan','M','1965-06-27'),('66798086Z','Rosa María','García','M','1935-10-04'),('67526857F','Manuel','Cabrera','H','1944-09-08'),('70141074K','Alfonso','Esteve','H','1958-01-13'),('70485220H','Juan','Fraga','H','1988-05-06'),('70743468E','Francisco','Fernández','H','1988-03-01'),('71139132V','Pilar','Gutiérrez','M','1936-04-27'),('71971504L','Mercedes','López','M','1986-06-03'),('72249807E','Rafael','Vázquez','H','1943-04-10'),('73145157M','Alberto','Fernández','H','1999-08-06'),('73438278Z','Juan','Castillo','H','1988-10-13'),('73562306A','José Antonio','Camacho','H','1946-08-13'),('74027683K','David','Beltrán','H','1961-08-30'),('74150468D','Rafael','Cortes','H','1963-07-21'),('75352079P','Juana','Hernández','M','1971-08-11'),('75361416F','María','Céspedes','M','1948-07-09'),('75748032Q','Ana','Mendoza','M','1969-05-06'),('76911604H','José','Segura','H','1967-10-28'),('77201894W','María Pilar','García','M','1960-11-11'),('77401245N','Juana','Domingo','M','1947-04-04'),('78002169S','Dolores','Jiménez','M','1985-12-09'),('78106701N','Miguel','Castaño','H','1973-03-16'),('78420605N','Carlos','Muñoz','H','1972-08-21'),('79386112W','José Luis','Trinidad','H','1977-05-28'),('79528286J','María','Aguilar','M','1994-05-25'),('80150111X','María Concepción','Sánchez','M','1953-05-12'),('80184590N','Magdalena','Alguacil','M','1939-04-25'),('80207750B','María Mercedes','Gelabert','M','1967-10-28'),('80860934H','Laura','Cañas','M','1959-10-23'),('81615567K','Elena','Novoa','M','1972-01-12'),('82813334V','Juan Antonio','Morón','H','1956-08-14'),('83129532B','David','Gázquez','H','1976-05-13'),('83232810L','Sonia','Gómez','M','1992-07-03'),('83552161S','María Rosa','Pérez','M','1951-09-02'),('85572170A','Daniel','Del Rio','H','1963-02-12'),('85654530T','Jordi','Gallardo','H','1940-02-13'),('86186983A','Javier','Arias','H','1956-12-09'),('86237139L','Ángel','Pino','H','1992-05-31'),('86425983X','Isabel','Mengual','M','1943-09-19'),('86797141V','Josep','Lozano','H','1942-10-08'),('86814295J','José Ramón','Gutiérrez','H','1942-12-23'),('86880528Y','María Carmen','Ruiz','M','1962-06-11'),('87630173N','Elena','Sánchez','M','1978-01-13'),('88234950G','María','González','M','1978-06-10'),('88983913H','María Concepción','Pérez','M','1977-02-23'),('89125196N','Alex','Macho','H','1978-05-01'),('89582263T','Paloma','Diez','M','1964-02-07'),('90225364K','Marta','García','M','1978-02-24'),('90853175R','Laura','Ye','M','1950-09-22'),('90857291T','David','Rodríguez','H','1958-10-25'),('90896351Y','Ángel','Rubio','H','1958-01-27'),('90954007R','Julia','Llorente','M','1951-07-31'),('91062596F','Rosa','Pozo','M','1976-01-16'),('91206680L','Antonio','Hidalgo','H','1978-01-31'),('91808452L','María José','Grande','M','1968-09-06'),('92523669M','Yolanda','Macías','M','1961-04-26'),('92831228P','Julio','Sánchez','H','1968-07-16'),('93139395K','Encarnación','Alonso','M','1987-08-28'),('93179992T','Francisco','Vázquez','H','1951-07-25'),('93882926P','Elena','Zambrano','M','2001-09-25'),('94973975Y','Josep María','Fernández','H','1997-01-10'),('95902006X','María Mar','Valiente','M','1961-12-30'),('95964591N','David','Cortes','H','2001-07-13'),('96020895N','José Manuel','Varela','H','1957-11-10'),('96341534P','Eduardo','Fuertes','H','1942-08-20'),('96345302G','María Carmen','Romero','M','1987-01-26'),('97031119F','David','Veiga','H','1940-08-12'),('97291781X','David','Hernanz','H','1944-05-13'),('98009503V','Antonia','Carril','M','1987-11-11'),('98304124P','Gemma','Ropero','M','1945-10-18'),('98875330D','Javier','Nevado','H','1984-11-27'),('99370220P','Francisca','Georgiev','M','1941-07-16');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propiedades`
--

DROP TABLE IF EXISTS `propiedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propiedades` (
  `COD_PROPIEDAD` int(3) NOT NULL,
  `NIF_EMPRESA` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`COD_PROPIEDAD`),
  KEY `NIF_EMP_PROPIEDADES_idx` (`NIF_EMPRESA`),
  CONSTRAINT `NIF_EMP_PROPIEDADES` FOREIGN KEY (`NIF_EMPRESA`) REFERENCES `empresas` (`NIF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propiedades`
--

LOCK TABLES `propiedades` WRITE;
/*!40000 ALTER TABLE `propiedades` DISABLE KEYS */;
INSERT INTO `propiedades` VALUES (15,'B2C8K6'),(272,'B2C8K6'),(470,'B2C8K6'),(640,'B2C8K6'),(653,'B2C8K6'),(798,'B2C8K6'),(880,'B2C8K6'),(916,'B2C8K6'),(923,'B2C8K6'),(972,'B2C8K6'),(68,'C9V0O6'),(124,'C9V0O6'),(348,'C9V0O6'),(373,'C9V0O6'),(427,'C9V0O6'),(457,'C9V0O6'),(626,'C9V0O6'),(778,'C9V0O6'),(918,'C9V0O6'),(72,'E9O0G0'),(199,'E9O0G0'),(323,'E9O0G0'),(378,'E9O0G0'),(407,'E9O0G0'),(536,'E9O0G0'),(575,'E9O0G0'),(836,'E9O0G0'),(867,'E9O0G0'),(886,'E9O0G0'),(80,'H7Q9Y8'),(230,'H7Q9Y8'),(345,'H7Q9Y8'),(596,'H7Q9Y8'),(606,'H7Q9Y8'),(688,'H7Q9Y8'),(784,'H7Q9Y8'),(851,'H7Q9Y8'),(981,'H7Q9Y8'),(142,'K9U4Y7'),(251,'K9U4Y7'),(439,'K9U4Y7'),(449,'K9U4Y7'),(604,'K9U4Y7'),(695,'K9U4Y7'),(716,'K9U4Y7'),(753,'K9U4Y7'),(822,'K9U4Y7'),(890,'K9U4Y7'),(26,'L6C4W0'),(311,'L6C4W0'),(461,'L6C4W0'),(671,'L6C4W0'),(685,'L6C4W0'),(715,'L6C4W0'),(837,'L6C4W0'),(847,'L6C4W0'),(896,'L6C4W0'),(77,'O7L7W4'),(145,'O7L7W4'),(472,'O7L7W4'),(518,'O7L7W4'),(563,'O7L7W4'),(631,'O7L7W4'),(634,'O7L7W4'),(677,'O7L7W4'),(791,'O7L7W4'),(870,'O7L7W4'),(266,'P2E1T2'),(336,'P2E1T2'),(492,'P2E1T2'),(657,'P2E1T2'),(699,'P2E1T2'),(711,'P2E1T2'),(767,'P2E1T2'),(774,'P2E1T2'),(838,'P2E1T2'),(875,'P2E1T2'),(3,'Q0W6O9'),(267,'Q0W6O9'),(467,'Q0W6O9'),(544,'Q0W6O9'),(566,'Q0W6O9'),(574,'Q0W6O9'),(607,'Q0W6O9'),(644,'Q0W6O9'),(843,'Q0W6O9'),(147,'Y8B9O3'),(176,'Y8B9O3'),(309,'Y8B9O3'),(350,'Y8B9O3'),(388,'Y8B9O3'),(468,'Y8B9O3'),(502,'Y8B9O3'),(795,'Y8B9O3'),(808,'Y8B9O3'),(934,'Y8B9O3');
/*!40000 ALTER TABLE `propiedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva_alojamiento`
--

DROP TABLE IF EXISTS `reserva_alojamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva_alojamiento` (
  `COD_RESERVA` varchar(7) NOT NULL,
  `DNI` varchar(9) NOT NULL,
  `ID_ALOJAMIENTO` int(5) NOT NULL,
  `FECHA_INICIO` datetime DEFAULT NULL,
  `FECHA_FIN` datetime DEFAULT NULL,
  PRIMARY KEY (`COD_RESERVA`,`DNI`,`ID_ALOJAMIENTO`),
  KEY `RESERVA_ALOJAMIENTO_FK_idx` (`ID_ALOJAMIENTO`),
  KEY `RESERVA_ALOJ_CLIENTE_FK_idx` (`DNI`),
  CONSTRAINT `RESERVA_ALOJAMIENTO_FK` FOREIGN KEY (`ID_ALOJAMIENTO`) REFERENCES `alojamiento` (`ID`),
  CONSTRAINT `RESERVA_ALOJ_CLIENTE_FK` FOREIGN KEY (`DNI`) REFERENCES `clientes` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva_alojamiento`
--

LOCK TABLES `reserva_alojamiento` WRITE;
/*!40000 ALTER TABLE `reserva_alojamiento` DISABLE KEYS */;
INSERT INTO `reserva_alojamiento` VALUES ('ARM422','63091416R',85770,'2019-11-26 00:00:00','2019-12-03 00:00:00'),('ASP959','39020850Q',56877,'2019-11-22 00:00:00','2020-02-22 00:00:00'),('CDH167','92523669M',66827,'2020-01-14 00:00:00','2020-03-11 00:00:00'),('CEE662','39615383E',69125,'2020-01-19 00:00:00','2020-02-12 00:00:00'),('CGK242','34550100Y',84846,'2019-12-09 00:00:00','2020-05-15 00:00:00'),('CJG418','89125196N',78316,'2019-11-28 00:00:00','2020-09-02 00:00:00'),('ENE998','86814295J',59134,'2019-11-27 00:00:00','2020-09-18 00:00:00'),('EUO222','13013582K',80463,'2020-01-30 00:00:00','2020-03-25 00:00:00'),('FPB507','24594702C',89751,'2019-12-28 00:00:00','2020-02-20 00:00:00'),('HUL824','40404458J',27863,'2019-11-26 00:00:00','2019-12-02 00:00:00'),('IEY585','18029019D',80303,'2020-01-16 00:00:00','2020-02-06 00:00:00'),('INO272','73438278Z',41934,'2019-11-26 00:00:00','2019-12-02 00:00:00'),('JIH229','83129532B',7894,'2020-01-09 00:00:00','2020-08-20 00:00:00'),('JMC347','35767836F',55969,'2020-01-13 00:00:00','2020-02-25 00:00:00'),('JUA331','48666490P',68850,'2020-01-28 00:00:00','2020-11-10 00:00:00'),('KPH937','26089225A',74831,'2020-01-25 00:00:00','2020-10-01 00:00:00'),('NWY229','13195941J',37687,'2020-01-31 00:00:00','2020-05-30 00:00:00'),('OAB736','98009503V',20909,'2019-12-23 00:00:00','2020-02-25 00:00:00'),('OMD371','72249807E',20766,'2020-01-08 00:00:00','2020-03-05 00:00:00'),('OZH088','14119532Q',78110,'2020-01-06 00:00:00','2020-03-03 00:00:00'),('PTV623','19571828R',43043,'2019-12-28 00:00:00','2020-06-07 00:00:00'),('PYY101','36631486F',44387,'2019-11-24 00:00:00','2020-06-26 00:00:00'),('RRV846','44546403A',66950,'2020-01-09 00:00:00','2020-10-25 00:00:00'),('RXQ776','95964591N',41934,'2019-11-12 00:00:00','2019-11-14 00:00:00'),('SDA638','12128081C',14298,'2019-11-30 00:00:00','2020-07-26 00:00:00'),('TBH450','86880528Y',64946,'2019-11-23 00:00:00','2020-06-21 00:00:00'),('UGM909','77201894W',83014,'2020-01-03 00:00:00','2020-08-31 00:00:00'),('UTF478','04688053D',66384,'2019-12-22 00:00:00','2020-02-28 00:00:00'),('VBG970','14905188S',5230,'2020-01-03 00:00:00','2020-04-13 00:00:00'),('VGR881','23200113J',19292,'2019-12-22 00:00:00','2020-08-25 00:00:00'),('WAV896','70743468E',77346,'2020-01-16 00:00:00','2020-06-30 00:00:00'),('XOP217','81615567K',97649,'2019-12-25 00:00:00','2020-07-24 00:00:00'),('XPU259','27384102A',80657,'2020-01-31 00:00:00','2020-10-14 00:00:00'),('YAV663','49949251J',48313,'2019-11-17 00:00:00','2020-06-11 00:00:00'),('YMA804','17933019B',6574,'2020-01-05 00:00:00','2020-07-16 00:00:00'),('ZIR486','35461171R',33377,'2019-12-19 00:00:00','2020-02-26 00:00:00'),('ZSC119','90857291T',56676,'2019-11-27 00:00:00','2019-12-02 00:00:00'),('ZZJ078','13973030R',47789,'2019-11-26 00:00:00','2020-08-14 00:00:00');
/*!40000 ALTER TABLE `reserva_alojamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva_vehiculo`
--

DROP TABLE IF EXISTS `reserva_vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva_vehiculo` (
  `COD_RESERVA` varchar(7) NOT NULL,
  `DNI` varchar(9) NOT NULL,
  `MATRICULA` varchar(7) NOT NULL,
  `FECHA_INICIO` datetime DEFAULT NULL,
  `FECHA_FIN` datetime DEFAULT NULL,
  `COD_PROPIEDAD` int(3) NOT NULL,
  PRIMARY KEY (`COD_RESERVA`,`DNI`,`MATRICULA`,`COD_PROPIEDAD`),
  KEY `RESERVA_VEHICULO_FK_idx` (`MATRICULA`,`COD_PROPIEDAD`),
  KEY `RESERVA_VEH_CLIENTE_FK_idx` (`DNI`),
  CONSTRAINT `RESERVA_VEHICULO_FK` FOREIGN KEY (`MATRICULA`, `COD_PROPIEDAD`) REFERENCES `vehiculos` (`MATRICULA`, `COD_PROPIEDAD`),
  CONSTRAINT `RESERVA_VEH_CLIENTE_FK` FOREIGN KEY (`DNI`) REFERENCES `clientes` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva_vehiculo`
--

LOCK TABLES `reserva_vehiculo` WRITE;
/*!40000 ALTER TABLE `reserva_vehiculo` DISABLE KEYS */;
INSERT INTO `reserva_vehiculo` VALUES ('BAG130','89582263T','9623XWR','2019-11-28 00:00:00','2020-03-15 00:00:00',795),('BGA382','99370220P','5676WRK','2019-11-27 00:00:00','2020-07-18 00:00:00',457),('BNX969','04688053D','2306BER','2019-12-22 00:00:00','2020-02-28 00:00:00',467),('BYN434','96020895N','2617DFY','2020-01-27 00:00:00','2020-07-01 00:00:00',251),('CBE733','74150468D','0556ETZ','2020-01-16 00:00:00','2020-09-02 00:00:00',657),('CKW152','92523669M','8551PPE','2020-01-14 00:00:00','2020-03-11 00:00:00',272),('CUC303','26089225A','2338JXO','2020-01-25 00:00:00','2020-10-01 00:00:00',199),('DVL523','35767836F','1545ZJS','2020-01-13 00:00:00','2020-02-25 00:00:00',699),('EGE310','39020850Q','0246LEP','2019-11-22 00:00:00','2020-02-22 00:00:00',688),('EIU454','39615383E','8755CDC','2020-01-19 00:00:00','2020-02-12 00:00:00',644),('ESB767','72249807E','6554JNU','2020-01-08 00:00:00','2020-03-05 00:00:00',124),('FPC774','98009503V','4736NSJ','2019-12-23 00:00:00','2020-02-25 00:00:00',791),('GIZ805','14905188S','4565OPF','2020-01-03 00:00:00','2020-04-13 00:00:00',867),('GOK045','73438278Z','4063KPT','2019-12-26 00:00:00','2020-02-02 00:00:00',373),('HVF606','17933019B','2780RJG','2020-01-05 00:00:00','2020-07-16 00:00:00',604),('HYL143','23200113J','2882ZSP','2019-12-22 00:00:00','2020-08-25 00:00:00',916),('IQL912','13973030R','6067GWG','2019-11-26 00:00:00','2020-08-14 00:00:00',80),('IZC912','90857291T','7251RVJ','2020-01-11 00:00:00','2020-04-09 00:00:00',972),('JQT302','40327198X','1782ZLP','2020-01-06 00:00:00','2020-11-04 00:00:00',934),('JSI094','14119532Q','9903RPC','2020-01-06 00:00:00','2020-03-03 00:00:00',653),('LFV995','12128081C','2317IVO','2019-11-30 00:00:00','2020-07-26 00:00:00',449),('LJF475','08194113H','6124ZSB','2020-01-03 00:00:00','2020-09-29 00:00:00',822),('LNB934','83129532B','6718AUQ','2020-01-09 00:00:00','2020-08-20 00:00:00',843),('MHR364','20960988F','0881KEV','2019-12-01 00:00:00','2020-07-18 00:00:00',671),('NFZ983','21493662R','6838JCE','2019-12-25 00:00:00','2020-03-19 00:00:00',867),('ODR903','48666490P','3465SDE','2020-01-28 00:00:00','2020-11-10 00:00:00',142),('OTC176','44546403A','3895LWE','2020-01-09 00:00:00','2020-10-25 00:00:00',836),('OXX734','27384102A','5854JPX','2020-01-31 00:00:00','2020-10-14 00:00:00',847),('PKH597','66117181R','8204DXX','2019-12-06 00:00:00','2020-10-11 00:00:00',870),('QDK337','24594702C','1748QYY','2019-12-28 00:00:00','2020-02-20 00:00:00',266),('RJB751','75361416F','8809VPS','2020-01-01 00:00:00','2020-07-16 00:00:00',544),('RYX854','86814295J','4784PFY','2019-11-27 00:00:00','2020-09-18 00:00:00',875),('SIM078','18029019D','7747POL','2020-01-16 00:00:00','2020-02-06 00:00:00',640),('SQN908','19571828R','3149KZT','2019-12-28 00:00:00','2020-06-07 00:00:00',461),('SRL251','35461171R','5157ISQ','2019-12-19 00:00:00','2020-02-26 00:00:00',634),('TUP136','13013582K','2443TRQ','2020-01-30 00:00:00','2020-03-25 00:00:00',348),('UQE152','63091416R','4032LXX','2019-11-20 00:00:00','2020-10-03 00:00:00',575),('VAN779','34550100Y','0220WQG','2019-12-09 00:00:00','2020-05-15 00:00:00',778),('VCF902','86880528Y','3235FNJ','2019-11-23 00:00:00','2020-06-21 00:00:00',502),('WAO919','40404458J','0049YSB','2020-01-12 00:00:00','2020-04-19 00:00:00',631),('WII564','13195941J','1847HTK','2020-01-31 00:00:00','2020-05-30 00:00:00',350),('WJB758','88983913H','9311JFU','2020-01-20 00:00:00','2020-10-25 00:00:00',923),('YCM165','49949251J','8535VBW','2019-11-17 00:00:00','2020-06-11 00:00:00',147),('YJS531','95964591N','8485QZH','2019-11-12 00:00:00','2020-04-15 00:00:00',72),('YNG834','89125196N','6638TUY','2019-11-28 00:00:00','2020-09-02 00:00:00',492),('YOL900','36631486F','2242ZKV','2019-11-24 00:00:00','2020-06-26 00:00:00',518),('YPV015','81615567K','3376NSX','2019-12-25 00:00:00','2020-07-24 00:00:00',230),('ZHF460','83232810L','6814QVW','2019-11-26 00:00:00','2020-02-23 00:00:00',981),('ZLP284','70743468E','2423CXB','2020-01-16 00:00:00','2020-06-30 00:00:00',536);
/*!40000 ALTER TABLE `reserva_vehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salas`
--

DROP TABLE IF EXISTS `salas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salas` (
  `COD_SALA` int(2) NOT NULL,
  `FUNCION` varchar(30) DEFAULT NULL,
  `COD_PROPIEDAD` int(3) DEFAULT NULL,
  PRIMARY KEY (`COD_SALA`),
  KEY `COD_PROP_SALAS_idx` (`COD_PROPIEDAD`),
  CONSTRAINT `COD_PROP_SALAS` FOREIGN KEY (`COD_PROPIEDAD`) REFERENCES `hoteles` (`COD_PROPIEDAD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salas`
--

LOCK TABLES `salas` WRITE;
/*!40000 ALTER TABLE `salas` DISABLE KEYS */;
INSERT INTO `salas` VALUES (1,'Piscina',388),(2,'Terraza',753),(3,'Terraza',427),(4,'Bar',563),(5,'Conciertos',378),(6,'Bar',596),(7,'Fiestas',574),(8,'Fiestas',336),(9,'Piscina',470),(10,'Terraza',685),(11,'Piscina',309),(12,'Conciertos',716),(13,'Conciertos',918),(14,'Fiestas',145),(15,'Bar',886),(16,'Terraza',851),(17,'Restaurante',3),(18,'Conciertos',711),(19,'Conciertos',15),(20,'Bar',311),(21,'Fiestas',468),(22,'Fiestas',695),(23,'Piscina',68),(24,'Bar',77),(25,'Terraza',72),(26,'Bar',388),(27,'Restaurante',753),(28,'Fiestas',427),(29,'Bar',563),(30,'Restaurante',378),(31,'Bar',596),(32,'Bar',574),(33,'Bar',336),(34,'Restaurante',470),(35,'Terraza',685),(36,'Piscina',309),(37,'Restaurante',716),(38,'Piscina',918),(39,'Terraza',145),(40,'Terraza',886),(41,'Restaurante',851),(42,'Conciertos',3),(43,'Piscina',711),(44,'Fiestas',15),(45,'Restaurante',311),(46,'Terraza',468),(47,'Piscina',695),(48,'Restaurante',68),(49,'Piscina',77),(50,'Fiestas',72);
/*!40000 ALTER TABLE `salas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serv_trabaja_en`
--

DROP TABLE IF EXISTS `serv_trabaja_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serv_trabaja_en` (
  `DNI` varchar(9) NOT NULL,
  `COD_SALA` int(2) NOT NULL,
  PRIMARY KEY (`DNI`,`COD_SALA`),
  KEY `COD_SALA_SERV_TRABAJA_EN_idx` (`COD_SALA`),
  CONSTRAINT `COD_SALA_SERV_TRABAJA_EN` FOREIGN KEY (`COD_SALA`) REFERENCES `salas` (`COD_SALA`),
  CONSTRAINT `DNI_SERV_TRABAJA_EN` FOREIGN KEY (`DNI`) REFERENCES `servicios` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serv_trabaja_en`
--

LOCK TABLES `serv_trabaja_en` WRITE;
/*!40000 ALTER TABLE `serv_trabaja_en` DISABLE KEYS */;
INSERT INTO `serv_trabaja_en` VALUES ('71971504L',1),('19206731Y',2),('34099638E',3),('22082052M',4),('80150111X',5),('34536314C',6),('20435810B',7),('70485220H',8),('39256812K',9),('29651028A',10),('05516269H',11),('90896351Y',12),('14961684T',13),('91062596F',14),('86797141V',15),('22559159T',16),('35360574Y',17),('70141074K',18),('01105630C',19),('08381258N',20),('60372362F',21),('93179992T',22),('51589546V',23),('12511825D',24),('53816916K',25),('49124610Z',26),('91206680L',27),('66697400E',28),('06151856T',29),('98304124P',30),('98304124P',31),('98304124P',32),('98304124P',33),('98304124P',34),('98304124P',35),('39256812K',36),('29651028A',37),('05516269H',38),('90896351Y',39),('14961684T',40),('91062596F',41),('86797141V',42),('22559159T',43),('35360574Y',44),('70141074K',45),('01105630C',46),('08381258N',47),('60372362F',48),('93179992T',49),('51589546V',50);
/*!40000 ALTER TABLE `serv_trabaja_en` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios` (
  `DNI` varchar(9) NOT NULL,
  PRIMARY KEY (`DNI`),
  KEY `DNI_SERVICIOS_idx` (`DNI`),
  CONSTRAINT `DNI_SERVICIOS` FOREIGN KEY (`DNI`) REFERENCES `empleados` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES ('01105630C'),('05516269H'),('06151856T'),('08381258N'),('12511825D'),('14961684T'),('19206731Y'),('20435810B'),('22082052M'),('22559159T'),('29651028A'),('34099638E'),('34536314C'),('35360574Y'),('39256812K'),('49124610Z'),('51589546V'),('53816916K'),('60372362F'),('66697400E'),('70141074K'),('70485220H'),('71971504L'),('80150111X'),('86797141V'),('90896351Y'),('91062596F'),('91206680L'),('93179992T'),('98304124P');
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculos`
--

DROP TABLE IF EXISTS `vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculos` (
  `MODELO` varchar(100) DEFAULT NULL,
  `MATRICULA` varchar(7) NOT NULL,
  `FECHA_MATRICULACION` date DEFAULT NULL,
  `COLOR` varchar(20) DEFAULT NULL,
  `ITV` date DEFAULT NULL,
  `PRECIO` int(3) DEFAULT NULL,
  `COD_PROPIEDAD` int(3) NOT NULL,
  `NUM_PLAZA` int(1) DEFAULT NULL,
  `TIPO` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`COD_PROPIEDAD`,`MATRICULA`),
  KEY `MATRICULA_idx` (`MATRICULA`,`COD_PROPIEDAD`),
  CONSTRAINT `COD_PROPIEDAD_VEHICULOS` FOREIGN KEY (`COD_PROPIEDAD`) REFERENCES `propiedades` (`COD_PROPIEDAD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculos`
--

LOCK TABLES `vehiculos` WRITE;
/*!40000 ALTER TABLE `vehiculos` DISABLE KEYS */;
INSERT INTO `vehiculos` VALUES ('DUCATI-748','8485QZH','2015-05-21','NEGRO','2021-01-14',82,72,2,'MOTO'),('DODGE-RAM 3500 TRUCK','6067GWG','2017-10-01','VERDE','2022-10-19',91,80,4,'COCHE'),('DUCATI-900','6554JNU','2017-10-13','NEGRO','2021-09-12',27,124,2,'MOTO'),('DUCATI-750 SPORT','3465SDE','2015-08-19','ROJO','2023-10-28',34,142,2,'MOTO'),('FORD-LOBO','8535VBW','2015-11-28','AZUL','2022-07-10',74,147,5,'COCHE'),('DODGE-RAM 3500 PICKUP','2338JXO','2016-05-08','AMARILLO','2021-04-01',95,199,2,'COCHE'),('DODGE-RAM 1500','3376NSX','2019-08-27','VERDE','2022-05-31',52,230,4,'COCHE'),('APRILIA-ETV 1000 CAPONORD','2617DFY','2019-03-28','ROJO','2022-08-17',40,251,2,'MOTO'),('DODGE-RAM 1500 TRUCK','1748QYY','2017-07-16','NEGRO','2019-11-25',19,266,4,'COCHE'),('FREIGHTLINER-CENTURY CLASS','8551PPE','2013-11-11','GRIS','2023-09-14',98,272,6,'COCHE'),('DODGE-RAM 2500 VAN','2443TRQ','2017-09-23','NEGRO','2021-12-16',24,348,2,'COCHE'),('DUCATI-748S MONOPOSTO','1847HTK','2020-07-26','AZUL','2023-04-05',2,350,2,'MOTO'),('APRILIA-SCARABEO 150','4063KPT','2014-07-24','NEGRO','2023-08-17',24,373,2,'MOTO'),('DODGE-RAM 2500 TRUCK','2317IVO','2017-02-07','ROJO','2021-04-09',78,449,2,'COCHE'),('APRILIA-MOJITO CUSTOM 50','5676WRK','2014-11-14','NEGRO','2023-03-21',17,457,2,'MOTO'),('DODGE-RAM 2500','3149KZT','2018-10-01','BLANCO','2023-02-24',43,461,4,'COCHE'),('FORD-FIESTA','2306BER','2014-06-07','NEGRO','2020-12-02',5,467,4,'COCHE'),('FREIGHTLINER-ARGOSY','6638TUY','2018-03-23','NEGRO','2022-05-27',96,492,6,'COCHE'),('DODGE-RAM 2500 PICKUP','3235FNJ','2015-12-19','AZUL','2021-09-05',46,502,4,'COCHE'),('FORD-RANGER','2242ZKV','2017-11-12','BLANCO','2022-06-15',83,518,2,'COCHE'),('FORD-SABLE','2423CXB','2013-12-04','AMARILLO','2020-01-10',15,536,4,'COCHE'),('APRILIA-RS 125','8809VPS','2016-09-20','NEGRO','2021-12-16',21,544,2,'MOTO'),('APRILIA-SCARABEO 50 DITECH','4032LXX','2015-07-21','AMARILLO','2024-10-28',53,575,2,'MOTO'),('FORD-MONDEO','2780RJG','2014-01-17','ROJO','2022-03-02',83,604,5,'COCHE'),('APRILIA-SCARABEO 50 2T','0049YSB','2019-01-07','BLANCO','2023-11-19',76,631,2,'MOTO'),('DUCATI-996 BIPOSTO','5157ISQ','2017-11-24','BLANCO','2021-11-26',17,634,2,'MOTO'),('FORD-GRAND MARQUIS','7747POL','2018-09-10','GRIS','2023-12-02',23,640,5,'COCHE'),('FORD-WINDSTAR','8755CDC','2018-05-22','NEGRO','2021-03-17',11,644,6,'COCHE'),('DODGE-RAM 1500 VAN','9903RPC','2018-08-30','GRIS','2020-01-22',62,653,4,'COCHE'),('APRILIA-RS 250','0556ETZ','2017-10-07','NEGRO','2022-10-16',51,657,2,'MOTO'),('APRILIA-RSV MILLE','0881KEV','2020-09-20','BLANCO','2023-06-19',5,671,2,'MOTO'),('FORD-TAURUS','0246LEP','2015-04-24','VERDE','2021-12-02',32,688,6,'COCHE'),('DUCATI-748 MONOPOSTO','1545ZJS','2017-12-25','NEGRO','2021-12-29',75,699,2,'MOTO'),('FORD-MUSTANG','0220WQG','2019-10-29','NEGRO','2020-08-04',32,778,2,'COCHE'),('DODGE-RAM 3500','4736NSJ','2015-08-27','BLANCO','2022-10-29',61,791,2,'COCHE'),('APRILIA-ATLANTIC 500','9623XWR','2014-03-27','AZUL','2022-10-29',99,795,2,'MOTO'),('APRILIA-SCARABEO 125','6124ZSB','2020-09-29','ROJO','2022-09-13',3,822,2,'MOTO'),('DUCATI-996 MONOPOSTO','3895LWE','2019-04-17','AMARILLO','2022-01-31',17,836,2,'MOTO'),('DODGE-RAM 1500 PICKUP','6718AUQ','2018-11-02','NEGRO','2023-05-06',18,843,4,'COCHE'),('DUCATI-748S','5854JPX','2015-09-29','BLANCO','2022-10-09',26,847,2,'MOTO'),('FORD-KA','4565OPF','2016-03-10','BLANCO','2024-09-17',26,867,5,'COCHE'),('APRILIA-PEGASO 650','6838JCE','2016-03-27','AMARILLO','2020-05-22',93,867,2,'MOTO'),('APRILIA-MOJITO RETRO 50','8204DXX','2014-06-25','BLANCO','2021-02-21',20,870,2,'MOTO'),('FORD-FOCUS','4784PFY','2019-07-12','NEGRO','2024-09-14',13,875,5,'COCHE'),('DUCATI-748R','2882ZSP','2017-08-18','GRIS','2023-04-15',46,916,2,'MOTO'),('APRILIA-RST1000 FUTURA','9311JFU','2019-02-19','GRIS','2023-03-18',84,923,2,'MOTO'),('APRILIA-RSV MILLE R','1782ZLP','2020-08-04','AZUL','2022-02-22',7,934,2,'MOTO'),('APRILIA-SL1000 FALCO','7251RVJ','2015-12-13','VERDE','2023-12-20',95,972,2,'MOTO'),('APRILIA-RALLY 50 (AIR COOLED)','6814QVW','2014-09-06','VERDE','2023-09-26',9,981,2,'MOTO');
/*!40000 ALTER TABLE `vehiculos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-25 17:18:35
