
DROP TABLE IF EXISTS `AvailableExtension`;

CREATE TABLE `AvailableExtension` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Intro` text COLLATE utf8mb4_unicode_ci,
  `Body` text COLLATE utf8mb4_unicode_ci,
  `ImageID` int DEFAULT '0',
  `Pris` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `AvailableExtension` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Case`;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `Case` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Client`;
CREATE TABLE `Client` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `Client` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Comment`;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `Comment` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `File`;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `File` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Folder`;
CREATE TABLE `Folder` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Parent` int DEFAULT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `DateCreated` datetime DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `DiskPath` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `Folder` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `ForumMessage`;
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

LOCK TABLES `ForumMessage` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Groups`;
CREATE TABLE `Groups` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `GroupID` int NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `SortOrder` int DEFAULT NULL,
  `TemplateID` int DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `Guestbook`;
CREATE TABLE `Guestbook` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Date` datetime DEFAULT NULL,
  `Nickname` text COLLATE utf8mb4_unicode_ci,
  `Message` text COLLATE utf8mb4_unicode_ci,
  `IsDeleted` tinyint DEFAULT NULL,
  `ContentElementID` int DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `Guestbook` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Image`;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `Image` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Languages`;
CREATE TABLE `Languages` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_unicode_ci,
  `NativeName` text COLLATE utf8mb4_unicode_ci,
  `IsDefault` tinyint DEFAULT '0',
  `UrlActivator` text COLLATE utf8mb4_unicode_ci,
  `BaseUrl` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `Languages` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `ModulePermissions`;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ModulePermissions` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `ModuleSubscribers`;
CREATE TABLE `ModuleSubscribers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SiteID` int NOT NULL,
  `ModuleName` text COLLATE utf8mb4_unicode_ci,
  `Active` tinyint DEFAULT '1',
  `Price` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ModuleSubscribers` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `ModulesEnabled`;
CREATE TABLE `ModulesEnabled` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SiteID` int DEFAULT NULL,
  `Module` text COLLATE utf8mb4_unicode_ci,
  `SortOrder` int DEFAULT '0',
  `ModuleName` text COLLATE utf8mb4_unicode_ci,
  `ModuleIcon` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `News`;
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

LOCK TABLES `News` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `NewsCategory`;
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

LOCK TABLES `NewsCategory` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `ObjectConnection`;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ObjectConnection` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `ObjectConnectionGroup`;
CREATE TABLE `ObjectConnectionGroup` (
  `ID` int DEFAULT NULL,
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `ObjectID` bigint DEFAULT NULL,
  `ObjectType` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ObjectConnectionGroup` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `ProductOrder`;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ProductOrder` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Project`;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `Project` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Sites`;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `UserLogin`;
CREATE TABLE `UserLogin` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Token` text COLLATE utf8mb4_unicode_ci,
  `UserID` int DEFAULT NULL,
  `DataSource` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `UserLogin` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Users`;
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

DROP TABLE IF EXISTS `UsersGroups`;
CREATE TABLE `UsersGroups` (
  `UserID` bigint NOT NULL,
  `GroupID` bigint NOT NULL,
  PRIMARY KEY (`UserID`,`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

