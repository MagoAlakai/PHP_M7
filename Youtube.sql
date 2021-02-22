-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: youtube
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `canal`
--

LOCK TABLES `canal` WRITE;
/*!40000 ALTER TABLE `canal` DISABLE KEYS */;
INSERT INTO `canal` VALUES (1,'Rock años 60','Greatest hits from the 60\'s','2021-02-19 15:48:26',1),(2,'Pop Hits','Pop de todos los tiempos','2021-02-19 16:17:24',2),(3,'Blue Note Jazz','Best jazz recorded','2021-02-19 16:17:58',3);
/*!40000 ALTER TABLE `canal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `etiqueta`
--

LOCK TABLES `etiqueta` WRITE;
/*!40000 ALTER TABLE `etiqueta` DISABLE KEYS */;
INSERT INTO `etiqueta` VALUES ('blues'),('funky'),('jazz'),('pop'),('rock'),('soul');
/*!40000 ALTER TABLE `etiqueta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (1,'Jazz Mix','2021-02-19 16:19:23','privado',2),(2,'My 80s songs','2021-02-19 16:20:41','privado',1),(3,'Best Pop ever','2021-02-19 16:20:41','publico',3),(4,'Funky & Soul','2021-02-19 16:20:41','publico',4),(5,'My 80s songs','2021-02-19 16:21:20','',1);
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `playlist_has_video`
--

LOCK TABLES `playlist_has_video` WRITE;
/*!40000 ALTER TABLE `playlist_has_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `playlist_has_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'prova1@gmail.com','Jose farfan','1977-09-08 00:00:00','M','España',8012),(2,'prova2@gmail.com','Alba casadellà','1987-12-11 00:00:00','F','España',8012),(3,'prova3@gmail.com','Roser Ros','1984-05-10 00:00:00','F','España',8012),(4,'prova4@gmail.com','Marta Pedrero','1991-07-25 00:00:00','F','España',8022),(5,'prova5@gmail.com','Gracia Carrera','1976-11-09 00:00:00','F','España',5112),(6,'prova6@gmail.com','Natalia perez','1986-08-05 00:00:00',NULL,'Francia',6415);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuario_comments_video`
--

LOCK TABLES `usuario_comments_video` WRITE;
/*!40000 ALTER TABLE `usuario_comments_video` DISABLE KEYS */;
INSERT INTO `usuario_comments_video` VALUES (1,1,2,'Best Janis Jopplin video ever!','2021-02-22 10:10:21'),(2,2,2,'Never saw this video before!','2021-02-22 10:13:28'),(3,1,3,'Live in Chicago, amazing!','2021-02-22 10:13:28'),(4,4,3,'One of the best live of this quintet!','2021-02-22 10:13:28'),(5,3,4,'I love blues!','2021-02-22 10:13:28'),(6,1,3,'this singuer is killing it!','2021-02-22 10:13:28'),(7,6,5,'Funky never dies!','2021-02-22 10:13:28'),(8,5,5,'What an energy!','2021-02-22 10:13:28');
/*!40000 ALTER TABLE `usuario_comments_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuario_has_canal`
--

LOCK TABLES `usuario_has_canal` WRITE;
/*!40000 ALTER TABLE `usuario_has_canal` DISABLE KEYS */;
INSERT INTO `usuario_has_canal` VALUES (1,2),(2,3),(4,2);
/*!40000 ALTER TABLE `usuario_has_canal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuario_has_video`
--

LOCK TABLES `usuario_has_video` WRITE;
/*!40000 ALTER TABLE `usuario_has_video` DISABLE KEYS */;
INSERT INTO `usuario_has_video` VALUES (1,2,'2021-02-22 09:57:53'),(2,3,'2021-02-22 09:58:09'),(2,4,'2021-02-22 09:58:50'),(5,2,'2021-02-22 09:59:09');
/*!40000 ALTER TABLE `usuario_has_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuario_like/dislike_comments_video`
--

LOCK TABLES `usuario_like/dislike_comments_video` WRITE;
/*!40000 ALTER TABLE `usuario_like/dislike_comments_video` DISABLE KEYS */;
INSERT INTO `usuario_like/dislike_comments_video` VALUES (1,1,'2021-02-22 10:46:58','like',1),(2,2,'2021-02-22 10:48:09','like',3),(3,3,'2021-02-22 10:47:25','dislike',6),(4,5,'2021-02-22 10:48:25','like',4);
/*!40000 ALTER TABLE `usuario_like/dislike_comments_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuario_likes/dislikes_video`
--

LOCK TABLES `usuario_likes/dislikes_video` WRITE;
/*!40000 ALTER TABLE `usuario_likes/dislikes_video` DISABLE KEYS */;
INSERT INTO `usuario_likes/dislikes_video` VALUES (1,2,'2021-02-22 10:53:04','like'),(1,4,'2021-02-22 10:53:17','dislike'),(4,5,'2021-02-22 10:53:48','like'),(5,2,'2021-02-22 10:53:37','like'),(6,4,'2021-02-22 10:54:01','dislike');
/*!40000 ALTER TABLE `usuario_likes/dislikes_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (2,'Janis Joplin','Livei in Toronto 1965',30,'Janis_J','5:36','large',124,'publico',''),(3,'Miles Davis','Miles Davis Quintet in Chicago',45,'Miles_Davis','8:35','medium',12452,'publico',''),(4,'Big Mama Thorton','You aint nothing but a houd dog',25,'Mamma','3:36','large',352,'publico',''),(5,'James Brown','Get Up',40,'JB','4:32','large',125822,'publico','');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-22 16:01:27
