DROP TABLE IF EXISTS `ArenaInfo`;
CREATE TABLE `ArenaInfo` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Version` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `BlogItem`;
CREATE TABLE `BlogItem` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `UserID` bigint NOT NULL,
  `ContentElementID` bigint NOT NULL,
  `AuthorName` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `IsPublished` tinyint NOT NULL DEFAULT '0',
  `Title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Leadin` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tags` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `DatePublish` datetime NOT NULL,
  `DateCreated` datetime NOT NULL,
  `DateUpdated` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `BlogTag`;
CREATE TABLE `BlogTag` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rating` bigint NOT NULL DEFAULT '0',
  `DateUpdated` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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
  `ElementType` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ElementID` bigint DEFAULT NULL,
  `SortOrder` bigint DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `ContentDataBig`;
CREATE TABLE `ContentDataBig` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `ContentID` int DEFAULT NULL,
  `ContentTable` text COLLATE utf8mb4_unicode_ci,
  `DataText` text COLLATE utf8mb4_unicode_ci,
  `Name` text COLLATE utf8mb4_unicode_ci,
  `ClassName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `SortOrder` int DEFAULT '0',
  `Type` text COLLATE utf8mb4_unicode_ci,
  `IsVisible` tinyint DEFAULT '1',
  `AdminVisibility` tinyint NOT NULL DEFAULT '1',
  `ContentGroup` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Default',
  `IsGlobal` tinyint DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `ContentDataSmall`;
CREATE TABLE `ContentDataSmall` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `ContentID` int DEFAULT NULL,
  `ContentTable` text COLLATE utf8mb4_unicode_ci,
  `DataString` text COLLATE utf8mb4_unicode_ci,
  `DataMixed` text COLLATE utf8mb4_unicode_ci,
  `DataInt` int DEFAULT NULL,
  `DataDouble` double DEFAULT NULL,
  `Name` text COLLATE utf8mb4_unicode_ci,
  `ClassName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `SortOrder` int DEFAULT '0',
  `Type` text COLLATE utf8mb4_unicode_ci,
  `IsVisible` tinyint DEFAULT '1',
  `AdminVisibility` tinyint NOT NULL DEFAULT '1',
  `ContentGroup` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Default',
  `IsGlobal` tinyint DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `ContentElement`;
CREATE TABLE `ContentElement` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `MainID` int DEFAULT NULL,
  `Parent` int DEFAULT NULL,
  `SymLink` int DEFAULT '0',
  `SortOrder` int DEFAULT NULL,
  `Title` text COLLATE utf8mb4_unicode_ci,
  `MenuTitle` text COLLATE utf8mb4_unicode_ci,
  `SystemName` text COLLATE utf8mb4_unicode_ci,
  `Intro` text COLLATE utf8mb4_unicode_ci,
  `Body` text COLLATE utf8mb4_unicode_ci,
  `IsPublished` tinyint DEFAULT NULL,
  `IsFallback` tinyint DEFAULT NULL,
  `IsSystem` tinyint DEFAULT NULL,
  `IsMain` tinyint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT '0',
  `DateCreated` datetime DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `DatePublish` datetime DEFAULT NULL,
  `DateArchive` datetime DEFAULT NULL,
  `Link` text COLLATE utf8mb4_unicode_ci,
  `LinkData` text COLLATE utf8mb4_unicode_ci,
  `Template` text COLLATE utf8mb4_unicode_ci,
  `TemplateArchived` text COLLATE utf8mb4_unicode_ci,
  `TemplateID` int DEFAULT '0',
  `Author` int DEFAULT NULL,
  `Version` double DEFAULT NULL,
  `VersionPublished` double DEFAULT NULL,
  `Language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `ContentType` text COLLATE utf8mb4_unicode_ci,
  `RouteName` text COLLATE utf8mb4_unicode_ci,
  `IsTemplate` tinyint DEFAULT '0',
  `IsProtected` tinyint DEFAULT '0',
  `IsDefault` tinyint DEFAULT '0',
  `SeenTimesUnique` bigint NOT NULL DEFAULT '0',
  `SeenTimes` bigint NOT NULL DEFAULT '0',
  `ContentGroups` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Default',
  `ContentTemplateID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `ContentRoute`;
CREATE TABLE `ContentRoute` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Route` text COLLATE utf8mb4_unicode_ci,
  `ElementType` text COLLATE utf8mb4_unicode_ci,
  `ElementID` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `ElementTag`;
CREATE TABLE `ElementTag` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Popularity` bigint NOT NULL DEFAULT '0',
  `DateUpdated` datetime DEFAULT NULL,
  `Type` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `File`;
CREATE TABLE `File` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Title` text COLLATE utf8mb4_unicode_ci,
  `Filename` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `Tags` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `FileFolder` int DEFAULT '0',
  `Filesize` int DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `Filetype` text COLLATE utf8mb4_unicode_ci,
  `FilenameOriginal` text COLLATE utf8mb4_unicode_ci,
  `BackupFilename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `DateFrom` datetime NOT NULL,
  `DateTo` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `Folder`;
CREATE TABLE `Folder` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Parent` int DEFAULT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `DateCreated` datetime DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `DiskPath` text COLLATE utf8mb4_unicode_ci,
  `SortOrder` int NOT NULL DEFAULT '0',
  `Notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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
  `SeenTimes` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `Groups`;
CREATE TABLE `Groups` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `GroupID` int NOT NULL DEFAULT '0',
  `SuperAdmin` tinyint NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `SortOrder` int DEFAULT NULL,
  `TemplateID` int DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `Image`;
CREATE TABLE `Image` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Title` text COLLATE utf8mb4_unicode_ci,
  `Filename` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `Tags` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ColorSpace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'rgb',
  `ImageFolder` int DEFAULT '0',
  `Filesize` int DEFAULT NULL,
  `Width` int DEFAULT NULL,
  `Height` int DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `SortOrder` int DEFAULT '0',
  `Filetype` text COLLATE utf8mb4_unicode_ci,
  `FilenameOriginal` text COLLATE utf8mb4_unicode_ci,
  `BackupFilename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `DateFrom` datetime NOT NULL,
  `DateTo` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `Languages`;
CREATE TABLE `Languages` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_unicode_ci,
  `NativeName` text COLLATE utf8mb4_unicode_ci,
  `IsDefault` tinyint DEFAULT '0',
  `UrlActivator` text COLLATE utf8mb4_unicode_ci,
  `BaseUrl` text COLLATE utf8mb4_unicode_ci,
  `AutomaticResources` tinyint NOT NULL DEFAULT '1',
  `Resources` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `Log`;
CREATE TABLE `Log` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Type` text COLLATE utf8mb4_unicode_ci,
  `Subject` text COLLATE utf8mb4_unicode_ci,
  `Message` text COLLATE utf8mb4_unicode_ci,
  `DateCreated` datetime DEFAULT NULL,
  `ObjectType` text COLLATE utf8mb4_unicode_ci,
  `ObjectID` bigint DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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


DROP TABLE IF EXISTS `Notes`;
CREATE TABLE `Notes` (
  `ContentTable` varchar(255) NOT NULL,
  `ContentID` bigint NOT NULL,
  `Notes` text,
  PRIMARY KEY (`ContentTable`,`ContentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


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


DROP TABLE IF EXISTS `ObjectConnectionGroup`;
CREATE TABLE `ObjectConnectionGroup` (
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `ObjectID` bigint DEFAULT NULL,
  `ObjectType` text COLLATE utf8mb4_unicode_ci,
  `ID` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `ObjectPermission`;
CREATE TABLE `ObjectPermission` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `AuthType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `AuthID` int NOT NULL DEFAULT '0',
  `ObjectType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ObjectID` int NOT NULL DEFAULT '0',
  `Read` tinyint NOT NULL DEFAULT '0',
  `Write` tinyint NOT NULL DEFAULT '0',
  `Publish` tinyint NOT NULL DEFAULT '0',
  `Structure` tinyint NOT NULL DEFAULT '0',
  `Delete` tinyint NOT NULL DEFAULT '0',
  `PermissionType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'web',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `PublishQueue`;
CREATE TABLE `PublishQueue` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `ContentElementID` bigint NOT NULL,
  `ContentTable` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `ContentID` bigint NOT NULL,
  `ActionScript` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `FieldName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `LiteralName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `Setting`;
CREATE TABLE `Setting` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SettingType` text COLLATE utf8mb4_unicode_ci,
  `Key` text COLLATE utf8mb4_unicode_ci,
  `Value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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


DROP TABLE IF EXISTS `UserCollection`;
CREATE TABLE `UserCollection` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `UserCollectionID` bigint NOT NULL DEFAULT '0',
  `ImageID` bigint NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `UserLogin`;
CREATE TABLE `UserLogin` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Token` text COLLATE utf8mb4_unicode_ci,
  `UserID` int DEFAULT NULL,
  `DataSource` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `ImageID` bigint NOT NULL DEFAULT '0',
  `SortOrder` int NOT NULL DEFAULT '0',
  `Username` text COLLATE utf8mb4_unicode_ci,
  `Password` text COLLATE utf8mb4_unicode_ci,
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Address` text COLLATE utf8mb4_unicode_ci,
  `Country` text COLLATE utf8mb4_unicode_ci,
  `City` text COLLATE utf8mb4_unicode_ci,
  `Postcode` text COLLATE utf8mb4_unicode_ci,
  `Telephone` text COLLATE utf8mb4_unicode_ci,
  `Mobile` text COLLATE utf8mb4_unicode_ci,
  `Email` text COLLATE utf8mb4_unicode_ci,
  `Image` int DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `DateLogin` datetime DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `IsDisabled` tinyint DEFAULT '0',
  `InGroups` tinyint DEFAULT '0',
  `IsAdmin` tinyint DEFAULT '0',
  `IsTemplate` tinyint DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `UsersGroups`;
CREATE TABLE `UsersGroups` (
  `UserID` bigint NOT NULL,
  `GroupID` bigint NOT NULL,
  PRIMARY KEY (`UserID`,`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `WebCache`;
CREATE TABLE `WebCache` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `UniqueName` varchar(255) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Content` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

