-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: arenacoredb
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.20.04.1

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

--
-- Table structure for table `AvailableExtension`
--

DROP TABLE IF EXISTS `AvailableExtension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AvailableExtension` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Intro` text COLLATE utf8mb4_unicode_ci,
  `Body` text COLLATE utf8mb4_unicode_ci,
  `ImageID` int DEFAULT '0',
  `Pris` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AvailableExtension`
--

LOCK TABLES `AvailableExtension` WRITE;
/*!40000 ALTER TABLE `AvailableExtension` DISABLE KEYS */;
/*!40000 ALTER TABLE `AvailableExtension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Case`
--

DROP TABLE IF EXISTS `Case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Case` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `CaseID` bigint NOT NULL DEFAULT '0',
  `ProjectID` int NOT NULL,
  `Title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `AuthorID` int NOT NULL,
  `AssignedToID` int NOT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `Status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'new',
  `Hours` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Case`
--

LOCK TABLES `Case` WRITE;
/*!40000 ALTER TABLE `Case` DISABLE KEYS */;
/*!40000 ALTER TABLE `Case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Client`
--

DROP TABLE IF EXISTS `Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Client` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
/*!40000 ALTER TABLE `Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comment`
--

DROP TABLE IF EXISTS `Comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Comment` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DateCreated` datetime DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `ParentID` int DEFAULT NULL,
  `Nickname` text COLLATE utf8mb4_unicode_ci,
  `UserID` int DEFAULT NULL,
  `Subject` text COLLATE utf8mb4_unicode_ci,
  `Message` text COLLATE utf8mb4_unicode_ci,
  `IsDeleted` tinyint DEFAULT NULL,
  `IsSticky` tinyint DEFAULT NULL,
  `IsLocked` tinyint DEFAULT NULL,
  `Moderation` bigint DEFAULT NULL,
  `ElementType` bigint DEFAULT NULL,
  `ElementID` bigint DEFAULT NULL,
  `SortOrder` bigint DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comment`
--

LOCK TABLES `Comment` WRITE;
/*!40000 ALTER TABLE `Comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File`
--

DROP TABLE IF EXISTS `File`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `File` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Title` text COLLATE utf8mb4_unicode_ci,
  `Filename` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `FileFolder` int DEFAULT '0',
  `Filesize` int DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `Filetype` text COLLATE utf8mb4_unicode_ci,
  `FilenameOriginal` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File`
--

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
/*!40000 ALTER TABLE `File` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Folder`
--

DROP TABLE IF EXISTS `Folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Folder` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Parent` int DEFAULT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `DateCreated` datetime DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `DiskPath` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Folder`
--

LOCK TABLES `Folder` WRITE;
/*!40000 ALTER TABLE `Folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `Folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ForumMessage`
--

DROP TABLE IF EXISTS `ForumMessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ForumMessage` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DateCreated` datetime DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `ParentID` int DEFAULT NULL,
  `ForumID` int DEFAULT NULL,
  `ThreadID` int DEFAULT NULL,
  `Nickname` text COLLATE utf8mb4_unicode_ci,
  `UserID` int DEFAULT NULL,
  `Subject` text COLLATE utf8mb4_unicode_ci,
  `Message` text COLLATE utf8mb4_unicode_ci,
  `IsForum` tinyint DEFAULT '0',
  `IsTopic` tinyint DEFAULT '0',
  `IsDeleted` tinyint DEFAULT '0',
  `IsSticky` tinyint DEFAULT '0',
  `IsLocked` tinyint DEFAULT '0',
  `Moderation` int DEFAULT '0',
  `ContentElementID` bigint DEFAULT NULL,
  `SortOrder` int DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ForumMessage`
--

LOCK TABLES `ForumMessage` WRITE;
/*!40000 ALTER TABLE `ForumMessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `ForumMessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups`
--

DROP TABLE IF EXISTS `Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Groups` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `GroupID` int NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `SortOrder` int DEFAULT NULL,
  `TemplateID` int DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups`
--

LOCK TABLES `Groups` WRITE;
/*!40000 ALTER TABLE `Groups` DISABLE KEYS */;
INSERT INTO `Groups` VALUES (1,0,'Administrator',NULL,NULL,0);
/*!40000 ALTER TABLE `Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Guestbook`
--

DROP TABLE IF EXISTS `Guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Guestbook` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Date` datetime DEFAULT NULL,
  `Nickname` text COLLATE utf8mb4_unicode_ci,
  `Message` text COLLATE utf8mb4_unicode_ci,
  `IsDeleted` tinyint DEFAULT NULL,
  `ContentElementID` int DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Guestbook`
--

LOCK TABLES `Guestbook` WRITE;
/*!40000 ALTER TABLE `Guestbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `Guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Image`
--

DROP TABLE IF EXISTS `Image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Image` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Title` text COLLATE utf8mb4_unicode_ci,
  `Filename` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `ImageFolder` int DEFAULT '0',
  `Filesize` int DEFAULT NULL,
  `Width` int DEFAULT NULL,
  `Height` int DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `SortOrder` int DEFAULT '0',
  `Filetype` text COLLATE utf8mb4_unicode_ci,
  `FilenameOriginal` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Image`
--

LOCK TABLES `Image` WRITE;
/*!40000 ALTER TABLE `Image` DISABLE KEYS */;
/*!40000 ALTER TABLE `Image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Languages`
--

DROP TABLE IF EXISTS `Languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Languages` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_unicode_ci,
  `NativeName` text COLLATE utf8mb4_unicode_ci,
  `IsDefault` tinyint DEFAULT '0',
  `UrlActivator` text COLLATE utf8mb4_unicode_ci,
  `BaseUrl` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Languages`
--

LOCK TABLES `Languages` WRITE;
/*!40000 ALTER TABLE `Languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `Languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ModulePermissions`
--

DROP TABLE IF EXISTS `ModulePermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ModulePermissions` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT '0',
  `GroupID` int DEFAULT '0',
  `Module` text COLLATE utf8mb4_unicode_ci,
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Read` tinyint DEFAULT '0',
  `Write` tinyint DEFAULT '0',
  `Data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ModulePermissions`
--

LOCK TABLES `ModulePermissions` WRITE;
/*!40000 ALTER TABLE `ModulePermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ModulePermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ModuleSubscribers`
--

DROP TABLE IF EXISTS `ModuleSubscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ModuleSubscribers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SiteID` int NOT NULL,
  `ModuleName` text COLLATE utf8mb4_unicode_ci,
  `Active` tinyint DEFAULT '1',
  `Price` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ModuleSubscribers`
--

LOCK TABLES `ModuleSubscribers` WRITE;
/*!40000 ALTER TABLE `ModuleSubscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ModuleSubscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ModulesEnabled`
--

DROP TABLE IF EXISTS `ModulesEnabled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ModulesEnabled` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SiteID` int DEFAULT NULL,
  `Module` text COLLATE utf8mb4_unicode_ci,
  `SortOrder` int DEFAULT '0',
  `ModuleName` text COLLATE utf8mb4_unicode_ci,
  `ModuleIcon` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=655 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ModulesEnabled`
--

LOCK TABLES `ModulesEnabled` WRITE;
/*!40000 ALTER TABLE `ModulesEnabled` DISABLE KEYS */;
INSERT INTO `ModulesEnabled` VALUES (1,1,'settings',0,'Settings',NULL),(2,1,'core',4,'core',NULL),(3,1,'extensions',1,'Extensions',NULL),(4,1,'users',3,'users',NULL),(5,1,'library',2,'library',NULL);
/*!40000 ALTER TABLE `ModulesEnabled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `News`
--

DROP TABLE IF EXISTS `News`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `News` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Title` text COLLATE utf8mb4_unicode_ci,
  `Intro` text COLLATE utf8mb4_unicode_ci,
  `Article` text COLLATE utf8mb4_unicode_ci,
  `CategoryID` int DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `DateFrom` datetime DEFAULT NULL,
  `DateTo` datetime DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `DateActual` datetime DEFAULT NULL,
  `AuthorID` int DEFAULT NULL,
  `IsPublished` tinyint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `IsEvent` tinyint DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `News`
--

LOCK TABLES `News` WRITE;
/*!40000 ALTER TABLE `News` DISABLE KEYS */;
/*!40000 ALTER TABLE `News` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsCategory`
--

DROP TABLE IF EXISTS `NewsCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NewsCategory` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `DateCreated` datetime DEFAULT NULL,
  `SortOrder` int DEFAULT '0',
  `SystemName` text COLLATE utf8mb4_unicode_ci,
  `Parent` int DEFAULT '0',
  `Language` int DEFAULT '1',
  `ContentElementID` int DEFAULT NULL,
  `DateFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Y-m-d H:i',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsCategory`
--

LOCK TABLES `NewsCategory` WRITE;
/*!40000 ALTER TABLE `NewsCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `NewsCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ObjectConnection`
--

DROP TABLE IF EXISTS `ObjectConnection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ObjectConnection` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `ConnectionGroupID` int DEFAULT NULL,
  `ObjectID` bigint DEFAULT NULL,
  `ObjectType` text COLLATE utf8mb4_unicode_ci,
  `ConnectedObjectID` bigint DEFAULT NULL,
  `ConnectedObjectType` text COLLATE utf8mb4_unicode_ci,
  `ExtensionObjectID` bigint DEFAULT NULL,
  `ExtensionObjectType` text COLLATE utf8mb4_unicode_ci,
  `Label` text COLLATE utf8mb4_unicode_ci,
  `SortOrder` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ObjectConnection`
--

LOCK TABLES `ObjectConnection` WRITE;
/*!40000 ALTER TABLE `ObjectConnection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ObjectConnection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ObjectConnectionGroup`
--

DROP TABLE IF EXISTS `ObjectConnectionGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ObjectConnectionGroup` (
  `ID` int DEFAULT NULL,
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `ObjectID` bigint DEFAULT NULL,
  `ObjectType` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ObjectConnectionGroup`
--

LOCK TABLES `ObjectConnectionGroup` WRITE;
/*!40000 ALTER TABLE `ObjectConnectionGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `ObjectConnectionGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductOrder`
--

DROP TABLE IF EXISTS `ProductOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProductOrder` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SiteID` int NOT NULL,
  `ProductName` text COLLATE utf8mb4_unicode_ci,
  `OrderText` text COLLATE utf8mb4_unicode_ci,
  `PriceSum` double DEFAULT NULL,
  `Status` text COLLATE utf8mb4_unicode_ci,
  `DateOrdered` datetime DEFAULT NULL,
  `DateFinished` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`,`SiteID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductOrder`
--

LOCK TABLES `ProductOrder` WRITE;
/*!40000 ALTER TABLE `ProductOrder` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProductOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Project`
--

DROP TABLE IF EXISTS `Project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Project` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ProjectID` int NOT NULL,
  `Name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` text COLLATE utf8mb4_unicode_ci,
  `DateCreated` datetime NOT NULL,
  `DateModified` datetime NOT NULL,
  `IsActive` tinyint NOT NULL,
  `SiteID` int NOT NULL,
  `ClientID` bigint DEFAULT NULL,
  `Hours` double DEFAULT NULL,
  `HourPrice` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Project`
--

LOCK TABLES `Project` WRITE;
/*!40000 ALTER TABLE `Project` DISABLE KEYS */;
/*!40000 ALTER TABLE `Project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sites`
--

DROP TABLE IF EXISTS `Sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sites` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SiteName` text COLLATE utf8mb4_unicode_ci,
  `SqlUser` text COLLATE utf8mb4_unicode_ci,
  `SqlPass` text COLLATE utf8mb4_unicode_ci,
  `SqlHost` text COLLATE utf8mb4_unicode_ci,
  `SqlDatabase` text COLLATE utf8mb4_unicode_ci,
  `BaseUrl` text COLLATE utf8mb4_unicode_ci,
  `BaseDir` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sites`
--

LOCK TABLES `Sites` WRITE;
/*!40000 ALTER TABLE `Sites` DISABLE KEYS */;
INSERT INTO `Sites` VALUES (1,'MyFiregemSite','arenacore','ArEnAcOrE','127.0.0.1','myfiregemsite','https://myfiregemsite.com/','/var/www/html');
/*!40000 ALTER TABLE `Sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserLogin`
--

DROP TABLE IF EXISTS `UserLogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserLogin` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Token` text COLLATE utf8mb4_unicode_ci,
  `UserID` int DEFAULT NULL,
  `DataSource` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserLogin`
--

LOCK TABLES `UserLogin` WRITE;
/*!40000 ALTER TABLE `UserLogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserLogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Username` text,
  `Password` text,
  `Name` text,
  `Email` text,
  `DateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `InGroups` tinyint NOT NULL DEFAULT '0',
  `DateLogin` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'firegem','21232f297a57a5a743894a0e4a801fc3','Firegem Admin','info@myfiregemsite.com',NOW(),1,NOW());
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsersGroups`
--

DROP TABLE IF EXISTS `UsersGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UsersGroups` (
  `UserID` bigint NOT NULL,
  `GroupID` bigint NOT NULL,
  PRIMARY KEY (`UserID`,`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsersGroups`
--

LOCK TABLES `UsersGroups` WRITE;
/*!40000 ALTER TABLE `UsersGroups` DISABLE KEYS */;
INSERT INTO `UsersGroups` VALUES (1,1);
/*!40000 ALTER TABLE `UsersGroups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-21 15:43:27
