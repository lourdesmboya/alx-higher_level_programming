DROP TABLE IF EXISTS `tv_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_genres`
--

LOCK TABLES `tv_genres` WRITE;
/*!40000 ALTER TABLE `tv_genres` DISABLE KEYS */;
INSERT INTO `tv_genres` VALUES (1,'Drama'),(2,'Mystery'),(3,'Adventure'),(4,'Fantasy'),(5,'Comedy'),(6,'Crime'),(7,'Suspense'),(8,'Thriller');
/*!40000 ALTER TABLE `tv_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_show_genres`
--

DROP TABLE IF EXISTS `tv_show_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_show_genres` (
  `show_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  KEY `show_id` (`show_id`),
  KEY `genre_id` (`genre_id`),
  CONSTRAINT `tv_show_genres_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `tv_shows` (`id`),
  CONSTRAINT `tv_show_genres_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `tv_genres` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_show_genres`
--

LOCK TABLES `tv_show_genres` WRITE;
/*!40000 ALTER TABLE `tv_show_genres` DISABLE KEYS */;
INSERT INTO `tv_show_genres` VALUES (1,1),(1,2),(2,3),(2,1),(2,4),(3,5),(4,5),(5,5),(6,6),(6,1),(6,7),(6,8),(8,6),(8,1),(8,2),(8,7),(8,8),(10,5),(10,1);
/*!40000 ALTER TABLE `tv_show_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_shows`
--

DROP TABLE IF EXISTS `tv_shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_shows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_shows`
--

LOCK TABLES `tv_shows` WRITE;
/*!40000 ALTER TABLE `tv_shows` DISABLE KEYS */;
INSERT INTO `tv_shows` VALUES (1,'House'),(2,'Game of Thrones'),(3,'The Big Bang Theory'),(4,'New Girl'),(5,'Silicon Valley'),(6,'Breaking Bad'),(7,'Better Call Saul'),(8,'Dexter'),(9,'Homeland'),(10,'The Last Man on Earth');
/*!40000 ALTER TABLE `tv_shows` ENABLE KEYS */;
UNLOCK TABLES;
