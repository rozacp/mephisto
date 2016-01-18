-- MySQL dump 10.13  Distrib 5.6.25, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	5.6.25-3+deb.sury.org~trusty+1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `laravel`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `laravel` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `laravel`;

--
-- Table structure for table `article_tag`
--

DROP TABLE IF EXISTS `article_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_tag` (
  `article_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  KEY `article_tag_article_id_index` (`article_id`),
  KEY `article_tag_tag_id_index` (`tag_id`),
  CONSTRAINT `article_tag_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `article_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_tag`
--

LOCK TABLES `article_tag` WRITE;
/*!40000 ALTER TABLE `article_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `published_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `articles_user_id_foreign` (`user_id`),
  CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,1,'Voluptatum tempore nihil vel magnam.','Iusto iure unde nam dolore est ullam. Quo quibusdam aut dignissimos officia accusamus expedita debitis dolores. Dolorem id amet numquam veniam sed facere.','2003-06-21 17:51:17','2016-01-14 21:07:06','2016-01-14 21:07:06'),(2,1,'Aut voluptas quidem enim repudiandae laudantium repellat labore.','Ipsam aliquid nemo quis facere aut enim sint distinctio. Illo veniam voluptatem sit architecto. Cum molestias nesciunt et corrupti. Aliquam sit consequatur sed deserunt qui eveniet. Facere accusamus maiores non magni.','2015-06-28 22:01:11','2016-01-14 21:07:06','2016-01-14 21:07:06'),(3,1,'Deleniti quod dolorum sed aliquam esse nihil autem.','Optio ipsum error eaque. Iure ratione dolores atque ut. Dolor dolorum placeat inventore iure dolorum. Maxime quibusdam sit et distinctio assumenda praesentium.','1978-05-12 06:07:19','2016-01-14 21:07:06','2016-01-14 21:07:06'),(4,1,'Et reiciendis accusantium nisi delectus.','Quae perspiciatis veritatis odio ab. Molestias rerum unde rem cupiditate. Voluptate odio dolor et quis excepturi perferendis rerum.','1979-06-25 09:34:29','2016-01-14 21:07:06','2016-01-14 21:07:06'),(5,1,'Earum aut magnam sit consequatur est.','Aut nihil ipsa magnam laudantium. Aut eveniet voluptatum necessitatibus iusto officia sapiente in. Tenetur tempore voluptas et porro et. Hic autem aut quia debitis.','2001-09-21 15:48:51','2016-01-14 21:07:06','2016-01-14 21:07:06'),(6,2,'Et illo eveniet dolor consequatur et quos.','Quas iusto quis suscipit quisquam molestiae ipsa maiores cupiditate. Quidem voluptatum sint officia ipsa dolorum nisi distinctio. Autem et ex voluptatum et asperiores enim voluptatem.','2011-12-16 06:19:13','2016-01-14 21:07:06','2016-01-14 21:07:06'),(7,2,'Cupiditate dolorem architecto ea illum non sit minus nesciunt.','Quam ea nesciunt non et non. Dignissimos rem optio accusamus incidunt veniam. Impedit sed iusto nam.','2004-01-15 20:36:53','2016-01-14 21:07:06','2016-01-14 21:07:06'),(8,2,'Consequuntur facere id quod.','Velit aliquam maiores rem consequatur voluptas voluptatem. Aut quia dicta repellendus est sit vitae sapiente molestias. Mollitia nam adipisci aut et unde. Voluptatibus placeat amet quia vero cupiditate consequatur deleniti.','2011-02-22 04:37:15','2016-01-14 21:07:06','2016-01-14 21:07:06'),(9,2,'Ad voluptatem voluptatibus autem dolorum voluptates tempore.','Blanditiis est id odit at sint et facere sint. Cum pariatur distinctio ut exercitationem. Corrupti est quam unde et dignissimos.','1974-02-15 12:31:23','2016-01-14 21:07:06','2016-01-14 21:07:06'),(10,2,'Non iure illo consequatur eum facilis culpa.','Dolor eos quam nemo aut et voluptatem. Velit consequatur optio nam illum eaque odio.','1991-03-21 01:12:56','2016-01-14 21:07:06','2016-01-14 21:07:06'),(11,3,'Ut voluptates repudiandae nobis cumque aspernatur.','Rem et saepe molestiae vel possimus nulla. Et velit veniam repudiandae totam blanditiis distinctio praesentium. Eos nulla rerum perferendis porro repellendus hic suscipit.','1996-07-02 05:38:46','2016-01-14 21:07:06','2016-01-14 21:07:06'),(12,3,'Mollitia et in aut magnam atque doloribus labore.','Sit in praesentium et omnis molestiae. Omnis magni excepturi doloribus nisi voluptates omnis a. Ut minima corporis excepturi eum et nam soluta nam. Nostrum aliquid quasi deserunt.','1970-01-04 23:00:11','2016-01-14 21:07:06','2016-01-14 21:07:06'),(13,3,'Itaque delectus est atque beatae modi tempora autem.','Illo maxime asperiores qui. Fugit eum quis excepturi laudantium ea sed. Possimus laudantium temporibus sit et ut aliquid eaque.','1972-02-17 14:52:44','2016-01-14 21:07:06','2016-01-14 21:07:06'),(14,3,'Rerum eos et veniam amet vitae dolores.','Sint et placeat quia dolore. Et repellendus magni numquam exercitationem nisi delectus. Pariatur doloribus beatae placeat porro. Assumenda labore id reiciendis et earum ea labore ipsa.','2006-08-23 15:54:41','2016-01-14 21:07:06','2016-01-14 21:07:06'),(15,3,'Aperiam tempore ea earum asperiores dicta laborum velit.','Et aut sapiente placeat sit. Soluta et omnis aut. Necessitatibus doloremque impedit sequi et. Cupiditate est aliquid quae voluptas.','2010-12-29 10:32:09','2016-01-14 21:07:06','2016-01-14 21:07:06'),(16,4,'Libero voluptatum quia quae et officia nihil reiciendis.','Veniam quas dolores corrupti. Voluptate totam quo corporis voluptas fuga voluptatum.','1980-09-19 23:14:59','2016-01-14 21:07:06','2016-01-14 21:07:06'),(17,4,'Officiis veritatis dolorum cupiditate.','Sunt est maiores reprehenderit et qui. Fugiat officia dicta aliquam quia. Beatae ab ullam dolorum cumque omnis. Est magnam architecto voluptate sunt.','2007-04-03 12:33:10','2016-01-14 21:07:06','2016-01-14 21:07:06'),(18,4,'Aut sed quaerat ipsum.','Qui atque cupiditate ipsam. Beatae minima ipsa ad nihil consequatur. Tempore consequuntur totam at repudiandae. In aliquam odio deleniti a reprehenderit accusantium.','1985-04-03 02:17:21','2016-01-14 21:07:06','2016-01-14 21:07:06'),(19,4,'Dolore omnis repellat iusto praesentium.','Et occaecati ipsa reprehenderit et odio nobis et. Illum praesentium optio praesentium et omnis nam fugiat. Sint doloribus voluptates expedita amet. Non repudiandae maiores aut voluptatem dignissimos facere earum.','1984-04-24 02:22:43','2016-01-14 21:07:06','2016-01-14 21:07:06'),(20,4,'Rem dolores amet dolorem.','Facilis inventore provident mollitia. Est autem molestiae in et eveniet ut. Illum architecto fugit ab ullam incidunt facilis distinctio numquam.','1993-12-02 14:15:05','2016-01-14 21:07:06','2016-01-14 21:07:06'),(21,5,'Reprehenderit eum quae modi aperiam.','Qui veniam unde nihil rerum voluptatem aut reprehenderit amet. Quasi sed possimus pariatur. Est nihil officia similique voluptatibus ipsam magnam aliquam. Est deserunt ut qui sunt numquam adipisci cumque.','2015-09-07 17:23:50','2016-01-14 21:07:06','2016-01-14 21:07:06'),(22,5,'Nihil repellat adipisci veritatis dolores quo iusto libero.','Harum omnis itaque molestiae voluptatum. Commodi consequatur ut voluptatibus veniam ut nobis qui distinctio. Quo quaerat neque quaerat ipsa soluta magnam.','2011-09-01 06:20:33','2016-01-14 21:07:06','2016-01-14 21:07:06'),(23,5,'Praesentium laboriosam blanditiis pariatur nulla culpa.','Doloremque quae consectetur quos tempore. Reiciendis voluptate odit minima facere aut doloribus. Impedit omnis minus eius. Consequatur nihil id nostrum molestiae.','1996-01-17 16:42:52','2016-01-14 21:07:06','2016-01-14 21:07:06'),(24,5,'Ipsum optio et exercitationem dolorem sunt.','Et blanditiis accusantium quam. Autem et aut et voluptatibus et magnam nostrum. Maxime voluptatibus reprehenderit qui sit architecto.','2015-01-27 17:36:09','2016-01-14 21:07:06','2016-01-14 21:07:06'),(25,5,'Hic delectus sunt ut consequatur.','Dicta nostrum aliquam omnis et ea quia pariatur. Aliquam numquam sunt quis tempora blanditiis dolores aut quia. Eos nam eos nemo dolorem et veniam.','1973-07-15 09:56:35','2016-01-14 21:07:06','2016-01-14 21:07:06');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2016_01_04_232121_create_articles_table',1),('2016_01_10_000210_create_tags_table',1),('2016_01_10_000448_create_article_tag_pivot',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'voluptas'),(2,'velit'),(3,'rem'),(4,'odio'),(5,'et'),(6,'dignissimos'),(7,'voluptate');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Isaiah Hoppe','litzy.kilback@kihn.com','$2y$10$PgFMMxowy9/yp9IPYirQd.ryAtCGykjMZiaENKkE05eWmapJvUGOy',0,'TgYgvGiWMz','2016-01-14 21:07:06','2016-01-14 21:07:06'),(2,'Mr. Orlo Carter PhD','pfeffer.zora@gmail.com','$2y$10$dNAA2PwXZOIcdyRaYzWb8O3lH/cduU7brBKzfIV2ipZvFqIv.4kie',0,'tbFozU3QwF','2016-01-14 21:07:06','2016-01-14 21:07:06'),(3,'Ms. Tracy Steuber','olaf.johnston@howell.com','$2y$10$FlbctPk5x7NBjh6zkGeakOgSL1steFzgblukPOpTIJR3XLXwz0nly',0,'eX5D4Mb49D','2016-01-14 21:07:06','2016-01-14 21:07:06'),(4,'Lessie Reinger Sr.','jaquelin.ondricka@brown.info','$2y$10$FGnNnnlEsJ7kkoLRmoOaBuRWo/fT55cknVtwTM27Gz7FwmnAXzBWG',0,'3tJz3tP2uJ','2016-01-14 21:07:06','2016-01-14 21:07:06'),(5,'Shyann Ruecker','oschuppe@quigley.info','$2y$10$fqMEr7bZn102TPc4vpNAte4jZ4wMrqEb7kN.V2I37z4LrkO1IHHMK',0,'HE5kMoouZv','2016-01-14 21:07:06','2016-01-14 21:07:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-15  3:50:26
