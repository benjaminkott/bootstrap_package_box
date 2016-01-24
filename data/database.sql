-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: bootstrap
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `config` text NOT NULL,
  `icon` text NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `non_exclude_fields` text,
  `explicit_allowdeny` text,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `custom_options` text,
  `db_mountpoints` text,
  `pagetypes_select` varchar(255) NOT NULL DEFAULT '',
  `tables_select` text,
  `tables_modify` text,
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `groupMods` text,
  `file_mountpoints` text,
  `file_permissions` text,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `subgroup` text,
  `hide_in_lists` tinyint(4) NOT NULL DEFAULT '0',
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `category_perms` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) NOT NULL DEFAULT '',
  `ses_name` varchar(32) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` longtext,
  `ses_backuserid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `avatar` int(11) unsigned NOT NULL DEFAULT '0',
  `password` varchar(100) NOT NULL DEFAULT '',
  `admin` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) NOT NULL DEFAULT '',
  `disable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` char(2) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `db_mountpoints` text,
  `options` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) NOT NULL DEFAULT '',
  `userMods` text,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `uc` mediumtext,
  `file_mountpoints` text,
  `file_permissions` text,
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `disableIPlock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `workspace_preview` tinyint(3) NOT NULL DEFAULT '1',
  `category_perms` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1448313974,'admin','',0,'$P$CWzKs.yivzuZ7S6OxY4hAokRr0w84L1',1,'',0,0,0,'','',NULL,0,1448313974,0,'',NULL,'','a:39:{s:14:\"interfaceSetup\";s:7:\"backend\";s:10:\"moduleData\";a:13:{s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:8:\"web_list\";a:0:{}s:10:\"FormEngine\";a:2:{i:0;a:5:{s:32:\"495773b30ef10cb7d9399e26252bf9c2\";a:4:{i:0;s:11:\"Customizing\";i:1;a:7:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:34;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:102:\"&edit[pages][34]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";s:2:\"34\";s:3:\"pid\";s:1:\"1\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"5f048626b242d2da50f8f9dd6459f299\";a:4:{i:0;s:24:\"TYPO3 in social networks\";i:1;a:7:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:163;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:108:\"&edit[tt_content][163]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:3:\"163\";s:3:\"pid\";s:1:\"1\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"b886aff7f2ae8591291756adf074507c\";a:4:{i:0;s:3:\"Tab\";i:1;a:7:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:181;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:108:\"&edit[tt_content][181]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:3:\"181\";s:3:\"pid\";s:2:\"40\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"6b9aa063e91ba8d7fb78649ebdea627d\";a:4:{i:0;s:23:\"Position: Above, center\";i:1;a:7:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:61;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:107:\"&edit[tt_content][61]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:2:\"61\";s:3:\"pid\";s:2:\"29\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"37155b43436224ecac03027395e3eb7c\";a:4:{i:0;s:23:\"Example File Collection\";i:1;a:7:{s:4:\"edit\";a:1:{s:19:\"sys_file_collection\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:115:\"&edit[sys_file_collection][2]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:19:\"sys_file_collection\";s:3:\"uid\";s:1:\"2\";s:3:\"pid\";s:2:\"54\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}i:1;s:32:\"e13684039484a527852a4f12473d8e28\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:16:\"opendocs::recent\";a:8:{s:32:\"e13684039484a527852a4f12473d8e28\";a:4:{i:0;s:19:\"<em>[No title]</em>\";i:1;a:7:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:217;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:108:\"&edit[tt_content][217]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:3:\"217\";s:3:\"pid\";s:2:\"42\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"b37c5215024c25aaa17d07cd7e8f0274\";a:4:{i:0;s:47:\"Download with preview, filesize and description\";i:1;a:7:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:113;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:108:\"&edit[tt_content][113]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:3:\"113\";s:3:\"pid\";s:2:\"22\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"b507e09fc1f56b32b4f685dbe2fc7063\";a:4:{i:0;s:44:\"Download with icon, filesize and description\";i:1;a:7:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:114;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:108:\"&edit[tt_content][114]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:3:\"114\";s:3:\"pid\";s:2:\"22\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"15c2598da80e3827bb1c06800c341626\";a:4:{i:0;s:31:\"Download with icon and filesize\";i:1;a:7:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:115;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:108:\"&edit[tt_content][115]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:3:\"115\";s:3:\"pid\";s:2:\"22\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"c0036ffa42fe11af28a4d06ebb5e3279\";a:4:{i:0;s:31:\"Download with icon, no filesize\";i:1;a:7:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:116;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:108:\"&edit[tt_content][116]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:3:\"116\";s:3:\"pid\";s:2:\"22\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"21f4b7ec53cc2b31afa6c5d22a2c54c5\";a:4:{i:0;s:29:\"Download no icon, no filesize\";i:1;a:7:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:117;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:108:\"&edit[tt_content][117]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:3:\"117\";s:3:\"pid\";s:2:\"22\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"43aaf2acd4ac1cd496a85dd80032a9c9\";a:4:{i:0;s:44:\"Images Linked to Internal and External Pages\";i:1;a:7:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:68;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:107:\"&edit[tt_content][68]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:2:\"68\";s:3:\"pid\";s:2:\"28\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"f0ceff609763893c2598275e7ff78086\";a:4:{i:0;s:33:\"Image Click-enlarge Functionality\";i:1;a:7:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:69;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:107:\"&edit[tt_content][69]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";s:2:\"69\";s:3:\"pid\";s:2:\"28\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}s:16:\"browse_links.php\";a:2:{s:12:\"expandFolder\";s:30:\"1:/bootstrap_package/examples/\";s:10:\"expandPage\";s:2:\"54\";}s:9:\"file_list\";a:2:{s:13:\"displayThumbs\";s:1:\"1\";s:15:\"bigControlPanel\";s:1:\"1\";}s:6:\"web_ts\";a:7:{s:8:\"function\";s:88:\"TYPO3\\CMS\\Tstemplate\\Controller\\TypoScriptTemplateConstantEditorModuleFunctionController\";s:19:\"constant_editor_cat\";s:24:\"bootstrap package: basic\";s:15:\"ts_browser_type\";s:5:\"setup\";s:16:\"ts_browser_const\";s:1:\"0\";s:19:\"ts_browser_fixedLgd\";s:1:\"1\";s:23:\"ts_browser_showComments\";s:1:\"1\";s:25:\"tsbrowser_depthKeys_setup\";a:19:{s:10:\"tt_content\";i:1;s:17:\"tt_content.div.10\";i:1;s:26:\"tt_content.stdWrap.prepend\";i:1;s:29:\"tt_content.stdWrap.prepend.if\";i:1;s:36:\"tt_content.stdWrap.prepend.if.isTrue\";i:1;s:28:\"tt_content.stdWrap.innerWrap\";i:1;s:36:\"tt_content.stdWrap.innerWrap.cObject\";i:1;s:21:\"tt_content.default.10\";i:1;s:18:\"tt_content.list.20\";i:1;s:22:\"tt_content.mailform.20\";i:1;s:30:\"tt_content.mailform.20.stdWrap\";i:1;s:40:\"tt_content.mailform.20.stdWrap.editIcons\";i:1;s:6:\"plugin\";i:1;s:5:\"types\";i:1;s:33:\"tt_content.login.variables.plugin\";i:1;s:3:\"lib\";i:1;s:56:\"tt_content.login.variables.plugin.welcomeMessage_stdWrap\";i:1;s:16:\"tt_content.login\";i:1;s:15:\"tt_content.list\";i:1;}}s:9:\"clipboard\";a:5:{s:6:\"normal\";a:1:{s:2:\"el\";a:0:{}}s:5:\"tab_1\";a:0:{}s:5:\"tab_2\";a:0:{}s:5:\"tab_3\";a:0:{}s:7:\"current\";s:6:\"normal\";}s:18:\"list/displayFields\";a:2:{s:10:\"tt_content\";a:2:{i:0;s:0:\"\";i:1;s:5:\"image\";}s:5:\"pages\";a:3:{i:0;s:0:\"\";i:1;s:14:\"backend_layout\";i:2;s:25:\"backend_layout_next_level\";}}s:13:\"system_config\";a:3:{s:8:\"function\";s:1:\"0\";s:6:\"node_1\";a:5:{s:10:\"tt_content\";i:1;s:18:\"tt_content.columns\";i:1;s:30:\"tt_content.columns.imageorient\";i:1;s:37:\"tt_content.columns.imageorient.config\";i:1;s:43:\"tt_content.columns.imageorient.config.items\";i:1;}s:6:\"node_0\";a:4:{s:2:\"FE\";i:1;s:28:\"FE.contentRenderingTemplates\";i:1;s:26:\"FE.defaultTypoScript_setup\";i:1;s:27:\"FE.defaultTypoScript_setup.\";i:1;}}s:42:\"TYPO3\\CMS\\Belog\\Controller\\ToolsController\";s:646:\"O:39:\"TYPO3\\CMS\\Belog\\Domain\\Model\\Constraint\":20:{s:14:\"\0*\0userOrGroup\";s:1:\"0\";s:9:\"\0*\0number\";i:20;s:15:\"\0*\0workspaceUid\";i:-99;s:12:\"\0*\0timeFrame\";i:0;s:9:\"\0*\0action\";i:-1;s:14:\"\0*\0groupByPage\";b:0;s:17:\"\0*\0startTimestamp\";i:0;s:15:\"\0*\0endTimestamp\";i:0;s:18:\"\0*\0manualDateStart\";N;s:17:\"\0*\0manualDateStop\";N;s:18:\"\0*\0isInPageContext\";b:0;s:9:\"\0*\0pageId\";i:0;s:8:\"\0*\0depth\";i:0;s:6:\"\0*\0uid\";N;s:16:\"\0*\0_localizedUid\";N;s:15:\"\0*\0_languageUid\";N;s:16:\"\0*\0_versionedUid\";N;s:6:\"\0*\0pid\";N;s:61:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_isClone\";b:0;s:69:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_cleanProperties\";a:0:{}}\";s:8:\"web_info\";a:3:{s:8:\"function\";s:55:\"TYPO3\\CMS\\Frontend\\Controller\\PageInformationController\";s:5:\"pages\";s:1:\"0\";s:5:\"depth\";s:1:\"0\";}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:10:\"web_layout\";s:18:\"hideSubmoduleIcons\";i:0;s:8:\"titleLen\";s:2:\"50\";s:8:\"edit_RTE\";i:1;s:20:\"edit_docModuleUpload\";i:1;s:17:\"navFrameResizable\";i:0;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";s:3:\"500\";s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1448314218;s:15:\"moduleSessionID\";a:13:{s:10:\"web_layout\";s:32:\"36a71ac2b07908ba5469cb2da748ff2a\";s:8:\"web_list\";s:32:\"9c1113003e727794102184621c83c0c0\";s:10:\"FormEngine\";s:32:\"36a71ac2b07908ba5469cb2da748ff2a\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"36a71ac2b07908ba5469cb2da748ff2a\";s:16:\"opendocs::recent\";s:32:\"36a71ac2b07908ba5469cb2da748ff2a\";s:16:\"browse_links.php\";s:32:\"36a71ac2b07908ba5469cb2da748ff2a\";s:9:\"file_list\";s:32:\"36a71ac2b07908ba5469cb2da748ff2a\";s:6:\"web_ts\";s:32:\"a075bd98535a14797c1b0a23d612da55\";s:9:\"clipboard\";s:32:\"36a71ac2b07908ba5469cb2da748ff2a\";s:18:\"list/displayFields\";s:32:\"546345670f2bd619f496e8cc9f28ddfa\";s:13:\"system_config\";s:32:\"a075bd98535a14797c1b0a23d612da55\";s:42:\"TYPO3\\CMS\\Belog\\Controller\\ToolsController\";s:32:\"d96f2933d9baf57a82eba0b185a2b0a9\";s:8:\"web_info\";s:32:\"a075bd98535a14797c1b0a23d612da55\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:1:{s:8:\"Pagetree\";O:8:\"stdClass\":1:{s:9:\"stateHash\";O:8:\"stdClass\":36:{s:1:\"0\";i:1;s:1:\"1\";i:1;s:1:\"2\";i:1;s:1:\"4\";i:1;s:1:\"6\";i:1;s:1:\"7\";i:1;s:1:\"8\";i:1;s:1:\"9\";i:1;s:2:\"11\";i:1;s:2:\"12\";i:1;s:2:\"13\";i:1;s:2:\"14\";i:1;s:2:\"15\";i:1;s:2:\"16\";i:1;s:2:\"17\";i:1;s:2:\"18\";i:1;s:2:\"19\";i:1;s:2:\"26\";i:1;s:2:\"27\";i:1;s:2:\"28\";i:1;s:2:\"30\";i:1;s:4:\"root\";i:1;s:16:\"lastSelectedNode\";s:2:\"p1\";s:2:\"1e\";i:1;s:2:\"1c\";i:1;s:2:\"1b\";i:1;s:2:\"1a\";i:1;s:1:\"f\";i:1;s:1:\"d\";i:1;s:1:\"c\";i:1;s:1:\"b\";i:1;s:2:\"2a\";i:1;s:2:\"2b\";i:1;s:2:\"2c\";i:1;s:2:\"2e\";i:1;s:2:\"2f\";i:1;}}}}s:10:\"inlineView\";s:3740:\"a:9:{s:10:\"tt_content\";a:33:{i:170;a:1:{s:33:\"tx_bootstrappackage_carousel_item\";a:1:{i:7;s:0:\"\";}}i:168;a:1:{s:18:\"sys_file_reference\";a:1:{i:5;s:0:\"\";}}i:5;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;s:1:\"4\";}}i:68;a:1:{s:18:\"sys_file_reference\";a:1:{i:25;s:0:\"\";}}i:76;a:1:{s:18:\"sys_file_reference\";a:1:{i:17;s:0:\"\";}}i:174;a:2:{s:28:\"tx_bootstrappackage_tab_item\";a:1:{i:7;s:0:\"\";}s:18:\"sys_file_reference\";a:2:{i:3;s:3:\"108\";i:4;s:3:\"105\";}}i:88;a:1:{s:18:\"sys_file_reference\";a:1:{i:4;s:0:\"\";}}i:87;a:1:{s:18:\"sys_file_reference\";a:0:{}}i:86;a:1:{s:18:\"sys_file_reference\";a:0:{}}i:85;a:1:{s:18:\"sys_file_reference\";a:0:{}}i:84;a:1:{s:18:\"sys_file_reference\";a:0:{}}i:83;a:1:{s:18:\"sys_file_reference\";a:0:{}}i:82;a:1:{s:18:\"sys_file_reference\";a:0:{}}i:81;a:1:{s:18:\"sys_file_reference\";a:0:{}}i:80;a:1:{s:18:\"sys_file_reference\";a:0:{}}i:79;a:1:{s:18:\"sys_file_reference\";a:0:{}}i:10;a:1:{s:18:\"sys_file_reference\";a:0:{}}i:3;a:1:{s:18:\"sys_file_reference\";a:0:{}}i:4;a:1:{s:18:\"sys_file_reference\";a:0:{}}i:11;a:1:{s:18:\"sys_file_reference\";a:0:{}}i:6;a:1:{s:18:\"sys_file_reference\";a:0:{}}i:69;a:1:{s:18:\"sys_file_reference\";a:2:{i:0;s:2:\"25\";i:17;s:3:\"193\";}}i:181;a:2:{s:28:\"tx_bootstrappackage_tab_item\";a:1:{i:16;s:0:\"\";}s:18:\"sys_file_reference\";a:1:{i:3;s:0:\"\";}}i:117;a:1:{s:18:\"sys_file_reference\";a:1:{i:12;s:0:\"\";}}i:128;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;s:2:\"94\";}}i:129;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;s:2:\"96\";}}i:212;a:1:{s:18:\"sys_file_reference\";a:0:{}}i:57;a:1:{s:18:\"sys_file_reference\";a:1:{i:1;s:0:\"\";}}i:75;a:1:{s:18:\"sys_file_reference\";a:0:{}}i:74;a:1:{s:18:\"sys_file_reference\";a:0:{}}i:63;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;s:2:\"20\";}}i:62;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;s:2:\"19\";}}i:61;a:1:{s:18:\"sys_file_reference\";a:2:{i:0;s:2:\"18\";i:2;s:0:\"\";}}}i:0;a:1:{i:0;a:2:{s:18:\"sys_file_reference\";a:53:{i:0;i:103;i:1;i:104;i:2;i:105;i:3;i:107;i:4;i:108;i:5;i:109;i:6;i:112;i:7;i:115;i:8;i:118;i:9;i:121;i:10;i:124;i:11;i:127;i:12;i:130;i:13;i:133;i:14;i:136;i:15;i:139;i:16;i:140;i:17;i:141;i:18;i:142;i:19;i:143;i:20;i:144;i:21;i:145;i:22;i:146;i:23;i:148;i:24;i:149;i:25;i:152;i:26;i:153;i:27;i:154;i:28;i:155;i:29;i:156;i:30;i:157;i:31;i:158;i:32;i:159;i:33;i:160;i:34;i:161;i:35;i:162;i:36;i:163;i:37;i:164;i:38;i:165;i:39;i:166;i:40;i:167;i:41;i:168;i:42;i:174;i:43;i:175;i:44;i:181;i:45;i:185;i:46;i:187;i:47;i:188;i:48;i:189;i:49;i:191;i:50;i:192;i:51;i:194;i:52;i:196;}s:28:\"tx_bootstrappackage_tab_item\";a:4:{i:0;i:1;i:1;i:3;i:2;i:4;i:3;i:5;}}}i:1;a:1:{i:0;a:3:{s:28:\"tx_bootstrappackage_tab_item\";a:1:{i:0;i:2;}s:18:\"sys_file_reference\";a:20:{i:0;i:106;i:1;i:110;i:2;i:113;i:3;i:116;i:4;i:119;i:5;i:122;i:6;i:125;i:7;i:128;i:8;i:131;i:9;i:134;i:10;i:137;i:11;i:147;i:12;i:150;i:13;i:169;i:14;i:176;i:15;i:182;i:16;i:186;i:17;i:193;i:18;i:195;i:19;i:197;}s:33:\"tx_bootstrappackage_carousel_item\";a:1:{i:0;i:2;}}}i:2;a:1:{i:0;a:1:{s:18:\"sys_file_reference\";a:15:{i:0;i:111;i:1;i:114;i:2;i:117;i:3;i:120;i:4;i:123;i:5;i:126;i:6;i:129;i:7;i:132;i:8;i:135;i:9;i:138;i:10;i:151;i:11;i:170;i:12;i:177;i:13;i:183;i:14;i:198;}}}s:19:\"sys_file_collection\";a:2:{i:1;a:1:{s:18:\"sys_file_reference\";a:1:{i:4;s:3:\"151\";}}i:2;a:1:{s:18:\"sys_file_reference\";a:3:{i:0;s:3:\"196\";i:1;s:3:\"197\";i:2;s:3:\"198\";}}}s:5:\"pages\";a:5:{i:1;a:1:{s:18:\"sys_file_reference\";a:1:{i:2;s:0:\"\";}}i:35;a:1:{s:18:\"sys_file_reference\";a:0:{}}i:34;a:1:{s:18:\"sys_file_reference\";a:0:{}}i:38;a:1:{s:18:\"sys_file_reference\";a:0:{}}i:17;a:1:{s:18:\"sys_file_reference\";a:1:{i:1;s:0:\"\";}}}i:3;a:1:{i:0;a:1:{s:18:\"sys_file_reference\";a:3:{i:0;i:171;i:1;i:178;i:2;i:184;}}}i:4;a:1:{i:0;a:1:{s:18:\"sys_file_reference\";a:2:{i:0;i:172;i:1;i:179;}}}i:5;a:1:{i:0;a:1:{s:18:\"sys_file_reference\";a:2:{i:0;i:173;i:1;i:180;}}}}\";s:11:\"browseTrees\";a:2:{s:6:\"folder\";s:129:\"a:1:{i:25218;a:7:{i:62822724;i:1;i:211961691;i:1;i:236563474;i:1;i:14248556;i:1;i:197638870;i:1;i:66702825;i:1;i:108689290;i:1;}}\";s:11:\"browsePages\";s:50:\"a:1:{i:0;a:4:{i:0;i:1;i:1;i:1;i:14;i:1;i:16;i:1;}}\";}s:16:\"TSFE_adminConfig\";a:9:{s:5:\"DUMMY\";s:0:\"\";s:11:\"display_top\";s:1:\"0\";s:15:\"display_preview\";s:0:\"\";s:13:\"display_cache\";s:0:\"\";s:12:\"display_edit\";s:1:\"1\";s:15:\"display_tsdebug\";s:0:\"\";s:12:\"display_info\";s:0:\"\";s:22:\"edit_displayFieldIcons\";s:1:\"1\";s:17:\"edit_displayIcons\";s:1:\"1\";}s:17:\"systeminformation\";s:45:\"{\"system_BelogLog\":{\"lastAccess\":1453641004}}\";s:10:\"modulemenu\";s:2:\"{}\";s:8:\"realName\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"password\";s:0:\"\";s:9:\"password2\";s:0:\"\";s:15:\"passwordCurrent\";s:0:\"\";s:6:\"avatar\";s:0:\"\";s:25:\"showHiddenFilesAndFolders\";i:0;s:10:\"copyLevels\";s:0:\"\";s:15:\"recursiveDelete\";i:0;s:18:\"resetConfiguration\";s:0:\"\";s:13:\"debugInWindow\";i:0;s:8:\"rteWidth\";s:0:\"\";s:9:\"rteHeight\";s:0:\"\";s:9:\"rteResize\";i:0;s:12:\"rteMaxHeight\";s:0:\"\";s:22:\"rteCleanPasteBehaviour\";s:9:\"plainText\";s:11:\"tx_recycler\";a:3:{s:14:\"depthSelection\";i:999;s:14:\"tableSelection\";s:0:\"\";s:11:\"resultLimit\";i:20;}}',NULL,NULL,1,'',0,0,NULL,1453662602,0,NULL,0,1,'');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_md5params`
--

DROP TABLE IF EXISTS `cache_md5params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_md5params` (
  `md5hash` varchar(20) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_md5params`
--

LOCK TABLES `cache_md5params` WRITE;
/*!40000 ALTER TABLE `cache_md5params` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_md5params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_treelist`
--

DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` char(32) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  `treelist` mediumtext,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_treelist`
--

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash`
--

DROP TABLE IF EXISTS `cf_cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash`
--

LOCK TABLES `cf_cache_hash` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash_tags`
--

DROP TABLE IF EXISTS `cf_cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash_tags`
--

LOCK TABLES `cf_cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes`
--

LOCK TABLES `cf_cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes_tags`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes_tags`
--

LOCK TABLES `cf_cache_imagesizes_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages`
--

DROP TABLE IF EXISTS `cf_cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages`
--

LOCK TABLES `cf_cache_pages` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages_tags`
--

DROP TABLE IF EXISTS `cf_cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages_tags`
--

LOCK TABLES `cf_cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection`
--

DROP TABLE IF EXISTS `cf_cache_pagesection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection`
--

LOCK TABLES `cf_cache_pagesection` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection_tags`
--

DROP TABLE IF EXISTS `cf_cache_pagesection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection_tags`
--

LOCK TABLES `cf_cache_pagesection_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline`
--

DROP TABLE IF EXISTS `cf_cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline`
--

LOCK TABLES `cf_cache_rootline` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline_tags`
--

DROP TABLE IF EXISTS `cf_cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline_tags`
--

LOCK TABLES `cf_cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap_tags`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap_tags`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object`
--

DROP TABLE IF EXISTS `cf_extbase_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object`
--

LOCK TABLES `cf_extbase_object` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object_tags`
--

DROP TABLE IF EXISTS `cf_extbase_object_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object_tags`
--

LOCK TABLES `cf_extbase_object_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_object_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection`
--

DROP TABLE IF EXISTS `cf_extbase_reflection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection`
--

LOCK TABLES `cf_extbase_reflection` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection_tags`
--

DROP TABLE IF EXISTS `cf_extbase_reflection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection_tags`
--

LOCK TABLES `cf_extbase_reflection_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_queries`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_queries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_queries`
--

LOCK TABLES `cf_extbase_typo3dbbackend_queries` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_queries_tags`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_queries_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_queries_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_queries_tags`
--

LOCK TABLES `cf_extbase_typo3dbbackend_queries_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_tablecolumns`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_tablecolumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_tablecolumns` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_tablecolumns`
--

LOCK TABLES `cf_extbase_typo3dbbackend_tablecolumns` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_tablecolumns_tags`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_tablecolumns_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_tablecolumns_tags`
--

LOCK TABLES `cf_extbase_typo3dbbackend_tablecolumns_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `subgroup` tinytext,
  `TSconfig` text,
  `felogin_redirectPid` tinytext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_session_data`
--

DROP TABLE IF EXISTS `fe_session_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_session_data` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `content` mediumblob,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hash`),
  KEY `tstamp` (`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_session_data`
--

LOCK TABLES `fe_session_data` WRITE;
/*!40000 ALTER TABLE `fe_session_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_session_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) NOT NULL DEFAULT '',
  `ses_name` varchar(32) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` blob,
  `ses_permanent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usergroup` tinytext,
  `disable` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(80) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uc` blob,
  `title` varchar(40) NOT NULL DEFAULT '',
  `zip` varchar(10) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(40) NOT NULL DEFAULT '',
  `www` varchar(80) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `image` tinytext,
  `TSconfig` text,
  `fe_cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `is_online` int(10) unsigned NOT NULL DEFAULT '0',
  `felogin_redirectPid` tinytext,
  `felogin_forgotHash` varchar(80) DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`),
  KEY `username` (`username`),
  KEY `is_online` (`is_online`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_user` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_group` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `editlock` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `is_siteroot` tinyint(4) NOT NULL DEFAULT '0',
  `php_tree_stop` tinyint(4) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `no_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `url_scheme` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) NOT NULL DEFAULT '',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `no_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text,
  `module` varchar(10) NOT NULL DEFAULT '',
  `extendToSubpages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(80) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `nav_hide` tinyint(4) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` tinyint(4) NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL DEFAULT '',
  `l18n_cfg` tinyint(4) NOT NULL DEFAULT '0',
  `fe_login_mode` tinyint(4) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) NOT NULL DEFAULT '',
  `tsconfig_includes` text,
  `tx_realurl_pathsegment` varchar(255) NOT NULL DEFAULT '',
  `tx_realurl_pathoverride` int(1) NOT NULL DEFAULT '0',
  `tx_realurl_exclude` int(1) NOT NULL DEFAULT '0',
  `tx_realurl_nocache` int(1) NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`sorting`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`is_siteroot`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,0,0,0,'',0,0,0,0,0,0,1453662854,256,0,1,1,31,27,0,0,1448314236,1,0,'Congratulations',1,'',1,0,1,'',0,0,1,36,0,0,'','you have succesfully installed TYPO3',0,0,'',0,0,'typo3, introduction package, install, example setup',0,'',0,'This website is a default website setup for TYPO3. You can use it to demonstrate the basic features of the TYPO3 Content Management System, but you are also welcome to use it as a basis for your own website projects. Please have a look at how it works and how it is structured. In building this package, we have tried to combine a lot of best practices. Feel free to use these structures and use elements of it for your own way of working.',0,1453662854,'Homepage for the Introduction Package of TYPO3','',0,'','','',0,0,0,0,'',0,0,'pagets__special_start','pagets__default_subnavigation_right',NULL,'',0,0,0,0),(2,1,0,0,0,'',0,0,0,0,0,0,1448925904,256,0,1,1,31,27,0,0,1448314236,1,0,'404',1,'',0,0,2,'',0,0,1,0,0,0,'','',2,0,'',0,0,NULL,0,'',0,NULL,1,0,NULL,'',0,'','','',1,0,0,0,'',0,0,'','',NULL,'',0,0,0,0),(14,1,0,0,0,'',0,0,0,0,0,33,1449931763,16,0,1,1,31,27,0,0,1448314236,1,0,'Content Examples',4,'',0,0,14,'',0,0,1,0,1,0,'','How does our subtitle render in the frontend?',0,0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','',NULL,'',0,0,0,0),(21,14,0,0,0,'',0,0,0,0,0,0,1448925866,5120,0,1,1,31,27,0,0,1448314236,1,0,'Forms',1,'',0,0,21,'',0,0,1,0,0,0,'','',0,0,'',0,0,'Content elements',0,'',0,'',0,1448925866,'','',0,'','','',0,0,0,0,'',0,0,'','',NULL,'',0,0,0,0),(22,14,0,0,0,'',0,0,0,0,0,0,1448925866,4864,0,1,1,31,27,0,0,1448314236,1,0,'File downloads',1,'',0,0,22,'',0,0,1,0,0,0,'','',0,0,'',0,0,'Content elements',0,'',0,'',0,1448925866,'','',0,'','','',0,0,0,0,'',0,0,'','',NULL,'',0,0,0,0),(24,14,0,0,0,'',0,0,0,0,0,0,1448925866,4352,0,1,1,31,27,0,0,1448314236,1,0,'Frames',1,'',0,0,24,'',0,0,1,0,0,0,'','',0,0,'',0,0,'Content elements',0,'',0,'',0,1448925866,'','',0,'','','',0,0,0,0,'',0,0,'','',NULL,'',0,0,0,0),(27,14,0,0,0,'',0,0,0,0,0,0,1448925866,3584,0,1,1,31,27,0,0,1448314236,1,0,'Image groups',1,'',0,0,27,'',0,0,1,0,0,0,'','',1,0,'',0,0,'Content elements',0,'',0,'',0,1448925866,'','',0,'','','',0,0,0,0,'',0,0,'','',NULL,'',0,0,0,0),(28,14,0,0,0,'',0,0,0,0,0,0,1448925866,3328,0,1,1,31,27,0,0,1448314236,1,0,'Images with links',1,'',0,0,28,'',0,0,1,0,0,0,'','',0,0,'',0,0,'Content elements',0,'',0,'',0,1448925866,'','',0,'','','',0,0,0,0,'',0,0,'','',NULL,'',0,0,0,0),(29,14,0,0,0,'',0,0,0,0,0,0,1453641506,2036,0,1,1,31,27,0,0,1448314236,1,0,'Text and Images',1,'',0,0,29,'',0,0,1,0,0,0,'','',0,0,'',0,0,'Content elements',0,'',0,'',0,1453641506,'','',0,'','','',0,0,0,0,'',0,0,'','',NULL,'',0,0,0,0),(30,14,0,0,0,'',0,0,0,0,0,0,1448925866,2816,0,1,1,31,27,0,0,1448314236,1,0,'Headers',1,'',0,0,30,'',0,0,1,0,0,0,'','Examples for headers in TYPO3',0,0,'',0,0,'Content elements',0,'',0,'',0,1448925866,'','',0,'','','',0,0,0,0,'',0,0,'','',NULL,'',0,0,0,0),(31,14,0,0,0,'',0,0,0,0,0,0,1453641689,2034,0,1,1,31,27,0,0,1448314236,1,0,'Examples of Rich Text',1,'',0,0,31,'',0,0,1,0,0,0,'','',0,0,'',0,0,'Content elements',0,'',0,'',0,1453641689,'','',0,'','','Text',0,0,0,0,'',0,0,'','',NULL,'',0,0,0,0),(32,14,0,0,0,'',0,0,0,0,0,0,1453641408,576,0,1,1,31,27,0,0,1448314236,1,0,'Any language, any character',1,'',0,0,32,'',0,0,1,0,0,0,'','',0,0,'',0,0,'Content elements',0,'',0,'',0,1453641408,'','',0,'','','Languages and characters',0,0,0,0,'',0,0,'','',NULL,'',0,0,0,0),(33,14,0,0,0,'',0,0,0,0,0,0,1453641373,384,0,1,1,31,27,0,0,1448314236,1,0,'Overview',1,NULL,0,0,33,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1453641373,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'',0,0,0,0),(34,1,0,0,0,'',0,0,0,0,0,0,1453662954,8,0,1,1,31,27,0,0,1448314236,1,0,'Customizing',1,'',0,0,34,'',0,0,1,0,0,0,'','',0,0,'',0,0,'',0,'',0,'',0,1453662954,'','',0,'','','',0,0,0,0,'',0,0,'pagets__default','',NULL,'',0,0,0,0),(35,1,0,0,0,'',0,0,0,0,0,0,1453662839,4,0,1,1,31,27,0,0,1448314236,1,0,'Features',1,'',0,0,35,'',0,0,1,0,0,0,'','',0,0,'',0,0,'',0,'',0,'',0,1453662839,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et lectus bibendum, commodo tellus ut, scelerisque massa. Phasellus risus felis, luctus id enim sed, sodales malesuada nibh. \r\n\r\nAliquam lobortis metus ac dolor efficitur, a sodales augue pulvinar. Ut risus ante, posuere vel orci eu, ornare porttitor lacus. Quisque auctor ut justo vel fermentum. Proin risus nulla, feugiat eu efficitur et, malesuada ac dui. Nam pharetra rutrum dui, a blandit magna accumsan vitae.','',0,'','','Features',0,0,0,0,'',0,0,'pagets__special_feature','',NULL,'',0,0,0,0),(36,1,0,0,0,'',0,0,0,0,0,0,1449785127,2,0,1,1,31,27,0,0,1448314236,1,0,'Home',4,'',0,0,36,'',0,0,1,1,0,0,'','',2,0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','Get Started',0,0,0,0,'',0,0,'','',NULL,'',0,0,0,0),(38,14,0,0,0,'',0,0,0,0,0,0,1453662816,768,0,1,1,31,31,0,0,1449082738,1,0,'Bullet List',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,'lists',0,'',0,NULL,0,1453662816,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'',0,0,0,1),(39,14,0,0,0,'',0,0,0,0,0,0,1449931781,1024,0,1,1,31,31,0,0,1449083414,1,0,'Table',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1449931781,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'',0,0,0,1),(40,14,0,0,0,'',0,0,0,0,0,0,1449931788,1280,0,1,1,31,31,0,0,1449096591,1,0,'Tab',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,NULL,0,'',0,NULL,0,1449931788,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'',0,0,0,1),(42,14,0,0,0,'',0,0,0,0,0,0,1449918439,1536,0,1,1,31,31,0,0,1449691170,1,0,'Menu',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,'menus, lists',0,'',0,NULL,0,1449918439,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'',0,0,0,0),(43,14,0,0,0,'',0,0,0,0,0,0,1449964100,1792,0,1,1,31,31,0,0,1449964091,1,0,'HTML',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1449964100,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'',0,0,0,0),(44,14,0,0,0,'',0,0,0,0,0,0,1449967665,1920,0,1,1,31,31,0,0,1449967613,1,0,'Insert Records',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1449967665,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'',0,0,0,0),(46,14,0,0,0,'',0,0,0,0,0,0,1449972060,2016,0,1,1,31,31,0,0,1449972014,1,0,'Divider',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1449972060,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'',0,0,0,0),(47,14,0,0,0,'',0,0,0,0,0,0,1449972324,2032,0,1,1,31,31,0,0,1449972066,1,0,'Form',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1449972324,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'',0,0,0,0),(48,14,0,0,0,'',0,0,0,0,0,0,1450012450,2040,0,1,1,31,31,0,0,1450007393,1,0,'Text and Media',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1450012450,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'',0,0,0,0),(54,1,0,0,0,'',0,0,0,0,0,0,1453669056,512,0,1,1,31,31,0,0,1453668922,1,0,'File Collections',254,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'',0,0,0,0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_language_overlay`
--

DROP TABLE IF EXISTS `pages_language_overlay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_language_overlay` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `keywords` text,
  `description` text,
  `abstract` text,
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(80) NOT NULL DEFAULT '',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `url` varchar(255) NOT NULL DEFAULT '',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_realurl_pathsegment` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_language_overlay`
--

LOCK TABLES `pages_language_overlay` WRITE;
/*!40000 ALTER TABLE `pages_language_overlay` DISABLE KEYS */;
INSERT INTO `pages_language_overlay` VALUES (1,32,1,0,0,0,'',0,0,0,0,0,0,1448925344,1448314236,1,2,'Alle sprog, ethvert tegnsæt',0,0,0,0,'','Sprog og tegnsæt',0,'','','','','',1,'a:1:{s:16:\"sys_language_uid\";N;}','',1,0,0,'');
/*!40000 ALTER TABLE `pages_language_overlay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) NOT NULL DEFAULT '',
  `url` text,
  `description` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sc_group` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `title` tinytext NOT NULL,
  `description` text,
  `parent` int(11) NOT NULL DEFAULT '0',
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
INSERT INTO `sys_category` VALUES (1,0,1449931667,1449931667,1,0,0,0,0,0,0,0,'',0,0,0,0,0,0,256,0,0,'','Examples','',0,0),(2,0,1449937373,1449937373,1,0,0,0,0,0,0,0,'',0,0,0,0,0,0,128,0,0,'','News','',0,0);
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(255) NOT NULL DEFAULT '',
  `fieldname` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablefield` (`uid_foreign`,`tablenames`(40),`fieldname`(3),`sorting_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
INSERT INTO `sys_category_record_mm` VALUES (1,38,'pages','categories',0,1),(1,39,'pages','categories',0,1),(1,40,'pages','categories',0,1),(1,190,'tt_content','categories',0,1),(1,191,'tt_content','categories',0,1),(1,17,'tt_content','categories',0,1),(2,16,'pages','categories',0,1),(2,125,'tt_content','categories',0,1),(2,127,'tt_content','categories',0,1),(2,128,'tt_content','categories',0,1),(2,129,'tt_content','categories',0,1),(1,129,'tt_content','categories',0,2);
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection`
--

DROP TABLE IF EXISTS `sys_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `fe_group` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `description` text,
  `type` varchar(32) NOT NULL DEFAULT 'static',
  `table_name` tinytext,
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection`
--

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection_entries`
--

DROP TABLE IF EXISTS `sys_collection_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection_entries`
--

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_domain`
--

DROP TABLE IF EXISTS `sys_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_domain` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `domainName` varchar(80) NOT NULL DEFAULT '',
  `redirectTo` varchar(255) NOT NULL DEFAULT '',
  `redirectHttpStatusCode` int(4) unsigned NOT NULL DEFAULT '301',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `prepend_params` int(10) NOT NULL DEFAULT '0',
  `forced` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `getSysDomain` (`redirectTo`,`hidden`),
  KEY `tx_realurl` (`domainName`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_domain`
--

LOCK TABLES `sys_domain` WRITE;
/*!40000 ALTER TABLE `sys_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `last_indexed` int(11) NOT NULL DEFAULT '0',
  `missing` tinyint(4) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT '0',
  `identifier` text,
  `identifier_hash` char(40) NOT NULL DEFAULT '',
  `folder_hash` char(40) NOT NULL DEFAULT '',
  `extension` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `name` tinytext,
  `sha1` char(40) NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creation_date` int(11) NOT NULL DEFAULT '0',
  `modification_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (9,0,1453664583,0,0,1,'2',0,'/bootstrap_package/features/ease-of-use.png','688e0946425ead8327e786f8960f7694aa735fb6','0ddfcf075e00c81e9d8017a40221535bc919c072','png','image/png','ease-of-use.png','945528c6b526efa33c37e148c756c1508b5f2d88',21213,1448314238,1448314238),(10,0,1453664555,0,0,1,'2',0,'/bootstrap_package/customizing/editor-shows-typo3-fluid.png','f8b3312ff4a3ab1d506b93c125e854fa1d282c89','f90d4e90d673ef19e5bedcb7e33487a7b075056c','png','image/png','editor-shows-typo3-fluid.png','d9923ccfa270ff8741705b57a1bae549692bf497',67857,1448314238,1448314238),(21,0,1453664555,0,0,1,'2',0,'/bootstrap_package/customizing/extbase.png','6d81d3f13f41fe8e3121e9814b3cb82342f2d612','f90d4e90d673ef19e5bedcb7e33487a7b075056c','png','image/png','extbase.png','50665db8af3b33cf80b598e469a7e5e6d7de3375',20261,1448314238,1448314238),(22,0,1453664555,0,0,1,'2',0,'/bootstrap_package/customizing/extensionbuilder.png','0497b3ca403c598b4fddce734d3ae943209f5224','f90d4e90d673ef19e5bedcb7e33487a7b075056c','png','image/png','extensionbuilder.png','8fe23d8903aab52bfe1fe34115e8a5e57cae7beb',27658,1448314238,1448314238),(23,0,1453664555,0,0,1,'2',0,'/bootstrap_package/customizing/extensionmanager.png','dca261ea5e01a8ef2f28638d7d008ef7530d5434','f90d4e90d673ef19e5bedcb7e33487a7b075056c','png','image/png','extensionmanager.png','1ada465292cec212c26b5978aa8add3636c59b11',71008,1448314238,1448314238),(25,0,1453664583,0,0,1,'2',0,'/bootstrap_package/features/front-end-editing.png','1c038d3e1087d74540a730ad1c6d116227c12a49','0ddfcf075e00c81e9d8017a40221535bc919c072','png','image/png','front-end-editing.png','3cc566eb3bfbbb0e740bbff802b197a1386a99e4',22306,1448314238,1448314238),(26,0,1453664583,0,0,1,'2',0,'/bootstrap_package/features/granular-front-end-and-back-end-access-rights.png','c1ca16dc3a89ee804a34e80844f9057fc3b220b5','0ddfcf075e00c81e9d8017a40221535bc919c072','png','image/png','granular-front-end-and-back-end-access-rights.png','dfc171d4576433edadf5fdd85f817ec908736bd6',38006,1448314238,1448314238),(30,0,1453664583,0,0,1,'2',0,'/bootstrap_package/features/multi-langauge-multi-domain.png','dc2b073174b24f199d6f0c821dd0976113673f79','0ddfcf075e00c81e9d8017a40221535bc919c072','png','image/png','multi-langauge-multi-domain.png','7ac041228765abc720b1c7d7729f99ed404ebf49',33027,1448314238,1448314238),(31,0,1453664583,0,0,1,'2',0,'/bootstrap_package/features/no-front-end-design-constraints.png','4526ce35015f1daeeefa463793cbf9481fc6d6df','0ddfcf075e00c81e9d8017a40221535bc919c072','png','image/png','no-front-end-design-constraints.png','c51c0d47c6211f91847ce20e6dfd9bb6f7f811a1',22713,1448314238,1448314238),(34,0,1453665532,0,0,1,'2',0,'/bootstrap_package/typo3-book-backend-style-settings.png','3fe6357d3bfe068cd3210bb544ecfc52922aa716','0cece74892fe46f7011c63c17782106ca8ecf783','png','image/png','typo3-book-backend-style-settings.png','9aff66051cf5267f5118564394bc32cb30015b77',237571,1448314238,1448314238),(36,0,1453664621,0,0,1,'2',0,'/bootstrap_package/background/typo3-silhouette-black.jpg','385f0515a069f8364e04b47594268d9a7b845892','15351e40ba4c9747a58a2aeb4182e69024daf715','jpg','image/jpeg','typo3-silhouette-black.jpg','9ae1de1314b4e78cec854c437faae89dac9f3734',13581,1448314238,1448314238),(37,0,1453664583,0,0,1,'2',0,'/bootstrap_package/features/typo3book-bubbels.png','92bd424d68862495bdb4eaac4f0f471c3cb0239a','0ddfcf075e00c81e9d8017a40221535bc919c072','png','image/png','typo3book-bubbels.png','183b92714dbdc6ec2af305e07619c0fba8e6d88f',148731,1448314238,1448314238),(38,0,1453664583,0,0,1,'2',0,'/bootstrap_package/features/typo3book-composing-top.png','8a15c232290e29392f45bec69950f4587bca6f43','0ddfcf075e00c81e9d8017a40221535bc919c072','png','image/png','typo3book-composing-top.png','bcc50dccb0a0cd75ea0caf25c22c29b316476feb',155453,1448314238,1448314238),(40,0,1453664583,0,0,1,'2',0,'/bootstrap_package/features/workspaces.png','c51a2e3fdc2f199981886bc02d295c5edb46b68c','0ddfcf075e00c81e9d8017a40221535bc919c072','png','image/png','workspaces.png','655668be292fee4e06eb626bc5871dbb443489c0',29204,1448314238,1448314238),(54,0,1453664621,0,0,1,'2',0,'/bootstrap_package/background/backgroundimage-1.jpg','a05de67fc0c94b47176a59d026cf97d22368346b','15351e40ba4c9747a58a2aeb4182e69024daf715','jpg','image/jpeg','backgroundimage-1.jpg','7207cfb3b3f376928e8acfc1974556fc0442a856',78163,1448314238,1448314238),(55,0,1453664621,0,0,1,'2',0,'/bootstrap_package/background/backgroundimage-2.jpg','7bf191e7a49985eb232541e15134ea69739a2866','15351e40ba4c9747a58a2aeb4182e69024daf715','jpg','image/jpeg','backgroundimage-2.jpg','49a2abd1875fdfc1f3b85b1129ef572d7bead041',57497,1448314238,1448314238),(56,0,1453664621,0,0,1,'2',0,'/bootstrap_package/background/backgroundimage-3.jpg','3ff0e827f4386d4a73253bce520681eb70870115','15351e40ba4c9747a58a2aeb4182e69024daf715','jpg','image/jpeg','backgroundimage-3.jpg','a36290316b015e4458ac5792d9a41bfad28c12af',70466,1448314238,1448314238),(57,0,1453664621,0,0,1,'2',0,'/bootstrap_package/background/typo3-silhouette-white.jpg','78fab682d1a0f8443e9432aa8ff5e5c479bbb926','15351e40ba4c9747a58a2aeb4182e69024daf715','jpg','image/jpeg','typo3-silhouette-white.jpg','7f1701c2d75ba1d4fee3a43bc356452586a415f8',13579,1448314238,1448314238),(65,0,1448829394,0,0,0,'2',0,'/typo3conf/ext/bootstrap_package/Resources/Public/Images/blank.gif','e1d266368d14318ef6410d43f0de4a153ee99fd5','27aadec2782a38a84423e8476091a41d1dbdbc06','gif','image/gif','blank.gif','ee894271d0ed00203c6b2d1b2fca78c6a1589d16',1095,1395303555,1405695627),(68,0,1449178506,0,0,1,'0',0,'/user_upload/index.html','c25533f303185517ca3e1e24b215d53aa74076d2','19669f1e02c2f16705ec7587044c66443be70725','html','inode/x-empty','index.html','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,1409819213,1409819213),(75,0,1450007445,0,0,0,'2',0,'/typo3conf/ext/bootstrap_package/Resources/Public/Images/BootstrapPackage.png','337f2358cbfad9cec56c1ec4625685cb23b1c013','27aadec2782a38a84423e8476091a41d1dbdbc06','png','image/png','BootstrapPackage.png','c760167de05779cac367385b3519029fb16df489',2921,1395303555,1405695627),(76,0,1453662782,1453577572,0,1,'4',0,'/bootstrap_package/youtube/why_you_will_fail_to_have_a_great_career___larry_smith___tedxuw.youtube','c9dca33c2712dac154e999403f7e98f283b43d9c','4db5c825df068d242e6bb78b1451abe08647eab4','youtube','video/youtube','why_you_will_fail_to_have_a_great_career___larry_smith___tedxuw.youtube','1cb116151cd93f89bf3cf042a535136587219bd0',11,1453577621,1453577621),(80,0,1453662978,0,0,1,'1',0,'/_temp_/index.html','1cd5eec12b9b11599c0b4c6b2d43342c4fb53a7b','0258f8a5f703dd44c350fbfcddeecb1634d46ad4','html','text/html','index.html','7aee9fab62a9b7432a78377b1338de86b99493d2',153,1453413162,1453413162),(81,0,1453666952,0,0,1,'2',0,'/bootstrap_package/examples/dsc00081.jpg','164b6305d247b068476cb1fe3fee52582dd4c379','6ac0890a8b466e410241760a648e7d6fe1525bd9','jpg','image/jpeg','dsc00081.jpg','336c4ae49864b420a2c5819f62146941e6de4b6e',1805657,1453666701,1453666701),(82,0,1453666952,0,0,1,'2',0,'/bootstrap_package/examples/dsc00090.jpg','f4124369ae3ef3110d2fcde906d44124e7fe6b5f','6ac0890a8b466e410241760a648e7d6fe1525bd9','jpg','image/jpeg','dsc00090.jpg','813874197d1f2ef28f547fa2aaaa3d9aa864a410',1368680,1453666748,1453666748),(83,0,1453666952,0,0,1,'2',0,'/bootstrap_package/examples/dsc00099.jpg','96bcf000c1d897afddb92629345b24278873807b','6ac0890a8b466e410241760a648e7d6fe1525bd9','jpg','image/jpeg','dsc00099.jpg','e7ed219d13ee7164e5ca7a107546d53720730967',1690660,1453666742,1453666742),(84,0,1453666952,0,0,1,'2',0,'/bootstrap_package/examples/dsc00115.jpg','7e67ccbfc65085486c6e6152f810d5937b820c3c','6ac0890a8b466e410241760a648e7d6fe1525bd9','jpg','image/jpeg','dsc00115.jpg','8970432323161f674362d5ce88c177ce338e58aa',1488852,1453666829,1453666829),(85,0,1453666953,0,0,1,'2',0,'/bootstrap_package/examples/dsc00129.jpg','d93a05b003e2f4ff60982bac66c620a2c590500f','6ac0890a8b466e410241760a648e7d6fe1525bd9','jpg','image/jpeg','dsc00129.jpg','40324f3ce094d309c4c440d983967392e19d6515',1685216,1453666711,1453666711),(86,0,1453666953,0,0,1,'2',0,'/bootstrap_package/examples/dsc00149.jpg','55f13b14103cddc5c26c373b264830fd331d24a3','6ac0890a8b466e410241760a648e7d6fe1525bd9','jpg','image/jpeg','dsc00149.jpg','f4b1e35e0d31edb24ff9235d7f48989b16f0dc76',1960140,1453666668,1453666668),(87,0,1453666953,0,0,1,'2',0,'/bootstrap_package/examples/dsc00151.jpg','c8c5816e5fae11e378f8b8d6b0c73ed4a0b759c0','6ac0890a8b466e410241760a648e7d6fe1525bd9','jpg','image/jpeg','dsc00151.jpg','d2973df8d35de425118a1061d4278f8d15124ee4',1755931,1453666643,1453666643),(88,0,1453666953,0,0,1,'2',0,'/bootstrap_package/examples/dsc00164.jpg','0bc28ef0e8d5343b37b4c752287b7874cadaa30c','6ac0890a8b466e410241760a648e7d6fe1525bd9','jpg','image/jpeg','dsc00164.jpg','c23a9031af7add84393f99b96d8dc3ca4a348ee2',1493426,1453666623,1453666623),(89,0,1453666953,0,0,1,'2',0,'/bootstrap_package/examples/dsc00172.jpg','f9b342924bd2c0aa3893c5ad5950a07d7127493f','6ac0890a8b466e410241760a648e7d6fe1525bd9','jpg','image/jpeg','dsc00172.jpg','153c8d52ff7de13128bb3aec8e7674e1d17e0366',1236570,1453666725,1453666725),(90,0,1453667150,0,0,1,'2',0,'/bootstrap_package/examples/dsc00101.jpg','185aff6dcb76775da91c0505c0dfc4f237310b94','6ac0890a8b466e410241760a648e7d6fe1525bd9','jpg','image/jpeg','dsc00101.jpg','6ab7f0296d26debafbab4f83e9f77bea67acab96',1478623,1453667127,1453667127);
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `folder` text NOT NULL,
  `recursive` tinyint(4) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
INSERT INTO `sys_file_collection` VALUES (2,54,1453669051,1453668981,1,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:16:\"sys_language_uid\";N;s:5:\"title\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:4:\"type\";N;s:5:\"files\";N;}',0,0,0,0,'Example File Collection',NULL,'static',3,0,'',0,0);
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `file` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `alternative` text,
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES (9,0,1453664583,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,9,NULL,220,220,NULL,NULL,0),(10,0,1453664555,1448314236,1,0,0,'a:1:{s:4:\"file\";N;}',0,0,0,'',0,0,0,0,0,0,10,NULL,540,323,NULL,NULL,0),(21,0,1453664555,1448314236,1,0,0,'a:1:{s:4:\"file\";N;}',0,0,0,'',0,0,0,0,0,0,21,NULL,540,210,NULL,NULL,0),(22,0,1453664555,1448314236,1,0,0,'a:1:{s:4:\"file\";N;}',0,0,0,'',0,0,0,0,0,0,22,NULL,540,430,NULL,NULL,0),(23,0,1453664555,1448314236,1,0,0,'a:1:{s:4:\"file\";N;}',0,0,0,'',0,0,0,0,0,0,23,NULL,540,312,NULL,NULL,0),(25,0,1453664583,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,25,NULL,220,220,NULL,NULL,0),(26,0,1453664583,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,26,NULL,220,220,NULL,NULL,0),(30,0,1453664583,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,30,NULL,220,220,NULL,NULL,0),(31,0,1453664583,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,31,NULL,220,220,NULL,NULL,0),(34,0,1453665532,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,34,NULL,1497,865,NULL,NULL,0),(36,0,1453664621,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,36,NULL,1680,540,NULL,NULL,0),(37,0,1453664583,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,37,NULL,1140,496,NULL,NULL,0),(38,0,1453664583,1448314236,1,0,0,'a:1:{s:4:\"file\";N;}',0,0,0,'',0,0,0,0,0,0,38,NULL,1140,496,NULL,NULL,0),(39,0,1453664583,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,40,NULL,220,220,NULL,NULL,0),(41,0,1448314236,1448314236,1,0,0,'a:1:{s:4:\"file\";N;}',0,0,0,'',0,0,0,0,0,0,30,NULL,0,0,NULL,NULL,0),(42,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(43,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(44,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(45,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(46,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(47,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(48,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(49,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(50,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(51,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(52,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(53,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(54,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(55,0,1448314236,1448314236,1,0,0,'a:4:{s:5:\"title\";N;s:11:\"description\";N;s:11:\"alternative\";N;s:10:\"categories\";N;}',0,0,0,'',0,0,0,0,0,0,0,'TYPO3 Logo Guide v3',0,0,NULL,NULL,0),(56,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(57,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(58,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(59,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(60,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(61,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(62,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(63,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(64,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(65,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(66,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(67,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(68,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(69,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(70,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(71,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(72,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(73,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(74,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(75,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(76,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(77,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(78,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(79,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(80,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(81,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(82,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(83,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(84,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(85,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(86,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(87,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(88,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(89,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(90,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(91,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(92,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(93,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,0),(94,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,10,NULL,300,225,NULL,NULL,0),(95,0,1448314236,1448314236,1,0,0,'',0,0,0,'',0,0,0,0,0,0,9,NULL,300,400,NULL,NULL,0),(107,0,1453664621,1448315033,1,0,0,'',0,0,0,'',0,0,0,0,0,0,54,NULL,3552,2000,NULL,NULL,0),(108,0,1453664621,1448315033,1,0,0,'',0,0,0,'',0,0,0,0,0,0,55,NULL,3552,2000,NULL,NULL,0),(109,0,1453664621,1448315033,1,0,0,'',0,0,0,'',0,0,0,0,0,0,56,NULL,3552,2000,NULL,NULL,0),(110,0,1453664621,1448315033,1,0,0,'',0,0,0,'',0,0,0,0,0,0,57,NULL,1680,540,NULL,NULL,0),(115,0,1448829394,1448829394,1,0,0,'',0,0,0,'',0,0,0,0,0,0,65,NULL,1,1,NULL,NULL,0),(129,0,1450007445,1450007445,1,0,0,'',0,0,0,'',0,0,0,0,0,0,75,NULL,210,60,NULL,NULL,0),(130,0,1453577572,1453577571,1,0,0,'',0,0,0,'',0,0,0,0,0,0,76,'Why you will fail to have a great career | Larry Smith | TEDxUW',480,270,NULL,NULL,0),(132,0,1453662728,1453662728,1,0,0,'',0,0,0,'',0,0,0,0,0,0,68,NULL,0,0,NULL,NULL,0),(136,0,1453662977,1453662977,1,0,0,'',0,0,0,'',0,0,0,0,0,0,80,NULL,0,0,NULL,NULL,0),(137,0,1453666952,1453666951,1,0,0,'',0,0,0,'',0,0,0,0,0,0,81,NULL,6000,3376,NULL,NULL,0),(138,0,1453666952,1453666951,1,0,0,'',0,0,0,'',0,0,0,0,0,0,82,NULL,6000,3376,NULL,NULL,0),(139,0,1453666952,1453666951,1,0,0,'',0,0,0,'',0,0,0,0,0,0,83,NULL,3376,6000,NULL,NULL,0),(140,0,1453666952,1453666951,1,0,0,'',0,0,0,'',0,0,0,0,0,0,84,NULL,6000,3376,NULL,NULL,0),(141,0,1453666953,1453666951,1,0,0,'',0,0,0,'',0,0,0,0,0,0,85,NULL,6000,3376,NULL,NULL,0),(142,0,1453666953,1453666951,1,0,0,'',0,0,0,'',0,0,0,0,0,0,86,NULL,6000,3376,NULL,NULL,0),(143,0,1453666953,1453666951,1,0,0,'',0,0,0,'',0,0,0,0,0,0,87,NULL,3376,6000,NULL,NULL,0),(144,0,1453666953,1453666951,1,0,0,'',0,0,0,'',0,0,0,0,0,0,88,NULL,3376,6000,NULL,NULL,0),(145,0,1453666953,1453666951,1,0,0,'',0,0,0,'',0,0,0,0,0,0,89,NULL,3376,6000,NULL,NULL,0),(146,0,1453667150,1453667149,1,0,0,'',0,0,0,'',0,0,0,0,0,0,90,NULL,6000,3376,NULL,NULL,0);
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `original` int(11) NOT NULL DEFAULT '0',
  `identifier` varchar(512) NOT NULL DEFAULT '',
  `name` tinytext,
  `configuration` text,
  `configurationsha1` char(40) NOT NULL DEFAULT '',
  `originalfilesha1` char(40) NOT NULL DEFAULT '',
  `task_type` varchar(200) NOT NULL DEFAULT '',
  `checksum` char(10) NOT NULL DEFAULT '',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`,`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(199))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `fieldname` varchar(64) NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `table_local` varchar(64) NOT NULL DEFAULT '',
  `title` tinytext,
  `description` text,
  `alternative` tinytext,
  `link` varchar(1024) NOT NULL DEFAULT '',
  `downloadname` tinytext,
  `crop` varchar(4000) NOT NULL DEFAULT '',
  `autoplay` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
INSERT INTO `sys_file_reference` VALUES (1,35,1448314236,1448314236,1,2048,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',9,2,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(4,35,1448314236,1448314236,1,1792,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',26,5,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(6,35,1448314236,1448314236,1,1280,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',25,7,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(9,34,1448314236,1448314236,1,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',10,13,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(10,34,1448314236,1448314236,1,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',21,14,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(11,34,1448314236,1448314236,1,64,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',22,15,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(12,34,1448314236,1448314236,1,32,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',23,16,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(103,1,1448315038,1448315038,1,64,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',36,1,'tx_bootstrappackage_carousel_item','background_image',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(139,35,1448923948,1448923948,1,768,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',38,10,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(140,35,1448924371,1448924371,1,512,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',40,3,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(141,35,1448924399,1448924399,1,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',30,4,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(142,35,1448924470,1448924470,1,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',37,11,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(143,35,1448924506,1448924506,1,64,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',31,6,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(163,1,1453577334,1453577334,1,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',34,168,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(164,40,1453577652,1453577578,1,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',76,3,'tx_bootstrappackage_tab_item','media',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(167,48,1453641353,1453641353,1,64,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',76,212,'tt_content','assets',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(168,27,1453667165,1453667038,1,2560,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',81,76,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(169,27,1453667165,1453667038,1,2304,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',82,76,'tt_content','image',2,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(171,27,1453667165,1453667038,1,2048,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',84,76,'tt_content','image',4,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(172,27,1453667165,1453667038,1,1792,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',85,76,'tt_content','image',5,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(173,27,1453667165,1453667038,1,1536,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',86,76,'tt_content','image',6,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(174,27,1453667165,1453667165,1,1280,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',90,76,'tt_content','image',3,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(175,27,1453667248,1453667248,1,1024,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',81,75,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(176,27,1453667248,1453667248,1,768,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',82,75,'tt_content','image',2,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(177,27,1453667248,1453667248,1,512,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',90,75,'tt_content','image',3,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(178,27,1453667248,1453667248,1,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',84,75,'tt_content','image',4,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(179,27,1453667248,1453667248,1,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',85,75,'tt_content','image',5,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(180,27,1453667248,1453667248,1,64,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',86,75,'tt_content','image',6,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(181,27,1453667437,1453667437,1,32,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',81,74,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'{\"x\":1354.7888888888888,\"y\":0,\"width\":3378,\"height\":3378,\"rotate\":0}',0),(182,27,1453667437,1453667437,1,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',82,74,'tt_content','image',2,'sys_file',NULL,NULL,NULL,'',NULL,'{\"x\":1417.3444444444444,\"y\":0,\"width\":3378,\"height\":3378,\"rotate\":0}',0),(183,27,1453667437,1453667437,1,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',90,74,'tt_content','image',3,'sys_file',NULL,NULL,NULL,'',NULL,'{\"x\":1536.1999999999998,\"y\":0,\"width\":3378,\"height\":3378,\"rotate\":0}',0),(184,27,1453667437,1453667437,1,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',84,74,'tt_content','image',4,'sys_file',NULL,NULL,NULL,'',NULL,'{\"x\":1442.3666666666668,\"y\":0,\"width\":3378,\"height\":3378,\"rotate\":0}',0),(185,40,1453667780,1453667669,1,32,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',83,4,'tx_bootstrappackage_tab_item','media',1,'sys_file',NULL,NULL,NULL,'',NULL,'{\"x\":0,\"y\":1088.0638676188019,\"width\":3376,\"height\":2532,\"rotate\":0}',0),(186,40,1453667780,1453667669,1,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',88,5,'tx_bootstrappackage_tab_item','media',1,'sys_file',NULL,NULL,NULL,'',NULL,'{\"x\":0,\"y\":1402.7757320255814,\"width\":3376,\"height\":2532,\"rotate\":0}',0),(187,29,1453667829,1453667829,1,768,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',89,63,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'{\"x\":0,\"y\":1898.6853365453553,\"width\":3376,\"height\":2532,\"rotate\":0}',0),(188,29,1453667889,1453667889,1,512,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',87,62,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'{\"x\":0,\"y\":1660.2672574493101,\"width\":3376,\"height\":2532,\"rotate\":0}',0),(189,29,1453668031,1453667945,1,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',85,61,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(191,29,1453668123,1453668123,1,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',90,216,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'',0),(192,28,1453668352,1453668290,1,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',87,69,'tt_content','image',1,'sys_file','title text for first image','click on image shows large version','alternative text for first image','',NULL,'{\"x\":0,\"y\":1459.996071008632,\"width\":3376,\"height\":2532,\"rotate\":0}',0),(193,28,1453668352,1453668290,1,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',82,69,'tt_content','image',2,'sys_file','title text for second image','click enlarge','alternative text for second image','',NULL,'{\"x\":1285.9777777777779,\"y\":287.75555555555553,\"width\":3715.7999999999997,\"height\":2786.85,\"rotate\":0}',0),(194,28,1453668652,1453668639,1,2,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',88,68,'tt_content','image',2,'sys_file','title text for second image','click to typo3.org','alternative text for second image','www.typo3.org',NULL,'{\"x\":0,\"y\":1278.798330895638,\"width\":3376,\"height\":2532,\"rotate\":0}',0),(195,28,1453668652,1453668639,1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',81,68,'tt_content','image',1,'sys_file','title text for first image','click to startpage','title text for first image','1',NULL,'{\"x\":685.4444444444445,\"y\":0,\"width\":4504,\"height\":3378,\"rotate\":0}',0),(196,54,1453669051,1453668981,1,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',81,2,'sys_file_collection','files',1,'sys_file','File 1','Fusce et porttitor augue, eget blandit tellus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque egestas porta nisl, condimentum porttitor massa dictum quis.',NULL,'',NULL,'',0),(197,54,1453669051,1453668981,1,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',82,2,'sys_file_collection','files',2,'sys_file','File 2','In eget tortor ligula. Sed commodo augue quam, id sodales nulla lacinia a. Maecenas augue turpis, posuere at sapien in, facilisis posuere lectus. ',NULL,'',NULL,'',0),(198,54,1453669051,1453668981,1,64,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',83,2,'sys_file_collection','files',3,'sys_file','File 3','Sed rutrum arcu molestie erat pretium efficitur. Suspendisse viverra ex arcu, sed aliquam nisi accumsan sed. Sed id placerat purus, vel ultrices tellus. Integer volutpat convallis orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',NULL,'',NULL,'',0);
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `driver` tinytext,
  `configuration` text,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `is_browsable` tinyint(4) NOT NULL DEFAULT '0',
  `is_public` tinyint(4) NOT NULL DEFAULT '0',
  `is_writable` tinyint(4) NOT NULL DEFAULT '0',
  `is_online` tinyint(4) NOT NULL DEFAULT '1',
  `auto_extract_metadata` tinyint(4) NOT NULL DEFAULT '1',
  `processingfolder` tinytext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1453640824,1448314236,0,0,'fileadmin/ (auto-created)','This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `path` varchar(120) NOT NULL DEFAULT '',
  `base` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `read_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_log_uid` int(11) NOT NULL DEFAULT '0',
  `history_data` mediumtext,
  `fieldlist` text,
  `recuid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `history_files` mediumtext,
  `snapshot` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `recordident_1` (`tablename`,`recuid`),
  KEY `recordident_2` (`tablename`,`tstamp`),
  KEY `sys_log_uid` (`sys_log_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_language`
--

DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `flag` varchar(20) NOT NULL DEFAULT '',
  `language_isocode` varchar(2) NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
INSERT INTO `sys_language` VALUES (1,0,1448314391,0,'German','de','de',0),(2,0,1448314379,0,'Dansk','dk','da',0);
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `record_table` varchar(255) NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT '0',
  `record_pid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `feuserid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `recuid` int(11) unsigned NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT '0',
  `error` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `details` text NOT NULL,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `details_nr` tinyint(3) NOT NULL DEFAULT '0',
  `IP` varchar(39) NOT NULL DEFAULT '',
  `log_data` text,
  `event_pid` int(11) NOT NULL DEFAULT '-1',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `NEWid` varchar(30) NOT NULL DEFAULT '',
  `request_id` varchar(13) NOT NULL DEFAULT '',
  `time_micro` float NOT NULL DEFAULT '0',
  `component` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message` text,
  `data` text,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`,`uid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_note`
--

DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text,
  `personal` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT '0',
  `field` varchar(40) NOT NULL DEFAULT '',
  `flexpointer` varchar(255) NOT NULL DEFAULT '',
  `softref_key` varchar(30) NOT NULL DEFAULT '',
  `softref_id` varchar(40) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `ref_table` varchar(255) NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT '0',
  `ref_string` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`,`recuid`),
  KEY `lookup_uid` (`ref_table`,`ref_uid`),
  KEY `lookup_string` (`ref_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
INSERT INTO `sys_refindex` VALUES ('007577ab04e19f7576dee127f2bc3271','tt_content',168,'image','','','',0,0,0,'sys_file_reference',162,''),('010f1566f5142c60b23a30134ef65889','tt_content',161,'bodytext','','typolink_tag','20089aeb44f6b22de4228a3af651b3fb:1',-1,0,0,'pages',1,''),('027238a1d8c15aad7de21245833670fd','sys_file_reference',1,'uid_local','','','',0,0,0,'sys_file',9,''),('02958fafa7c972bd5f4e006866431449','sys_category',1,'items','','','',4,0,0,'tt_content',191,''),('0394f6c9f297f1aae8b5f421ae8154c8','tt_content',28,'bodytext','','typolink_tag','d6c960b4775ae2f66214dfda870a490f:3',-1,0,0,'_STRING',0,'http://typo3.org'),('03ee0a643ed0195fb54c522a6c95985b','sys_file_metadata',8,'file','','','',0,0,0,'sys_file',8,''),('05712c957da066082caa9d36235d6689','tt_content',181,'tx_bootstrappackage_tab_item','','','',1,0,0,'tx_bootstrappackage_tab_item',4,''),('05c627ba6b1804029e247c863d177b9b','sys_file',83,'storage','','','',0,0,0,'sys_file_storage',1,''),('0688482545368f49716b16cd04544494','sys_file',83,'metadata','','','',0,0,0,'sys_file_metadata',139,''),('07fab5ab5ccf73bee1232ad55e7cef6c','sys_file',90,'storage','','','',0,0,0,'sys_file_storage',1,''),('0a14ad004f520bdef5d88c901293ce22','sys_file_reference',161,'uid_local','','','',0,1,0,'sys_file',42,''),('0b39ac4f6907f33668d0bafa08e0c534','sys_file',76,'metadata','','','',0,0,0,'sys_file_metadata',130,''),('0bad8879740d9131273455f6182f7e05','tt_content',74,'image','','','',9,0,0,'sys_file_reference',44,''),('0cc4cb7a624672f782ab3ddf96f8720f','sys_file_reference',11,'uid_local','','','',0,0,0,'sys_file',22,''),('0cd938bcaeed9fc86a2a71432eb0965a','tt_content',2,'image','','','',0,0,0,'sys_file_reference',1,''),('0def7223ca2fbea14f0c56b78535fb82','sys_file',25,'metadata','','','',0,0,0,'sys_file_metadata',25,''),('0e90702f71756ecf0d6ed608fb0916fe','sys_file',38,'storage','','','',0,0,0,'sys_file_storage',1,''),('0ec891ef933c14286d43f49e4d836880','sys_file',87,'storage','','','',0,0,0,'sys_file_storage',1,''),('0ee45df38e2fd8f9265c1df24704813a','tt_content',13,'image','','','',0,0,0,'sys_file_reference',9,''),('0f160df2ba6f1ed0cf2240cde18675bb','sys_file',34,'metadata','','','',0,0,0,'sys_file_metadata',34,''),('101f23026e34c6ff6a6f3c5c29119722','tt_content',69,'image','','','',0,0,0,'sys_file_reference',192,''),('103591ee98cd712d5c7cc5edc2bfb126','sys_file_reference',189,'uid_local','','','',0,0,0,'sys_file',85,''),('10398e680b7ebcaf20b9e7fbae5c0add','sys_file_reference',174,'uid_local','','','',0,0,0,'sys_file',90,''),('103d603ffb198e54b9e731323e29a9e3','tt_content',11,'image','','','',0,0,0,'sys_file_reference',142,''),('1089c009384b08fec4bbd88b374a7165','sys_file_reference',150,'uid_local','','','',0,1,0,'sys_file',69,''),('10b6da5d745de254086663da8d73e491','sys_file_collection',2,'files','','','',2,0,0,'sys_file_reference',198,''),('10c1dc4899a9c1785e12f029a67f9f54','tt_content',6,'image','','','',0,0,0,'sys_file_reference',5,''),('114b94e01fc935a591630bc7e8261ab8','tt_content',181,'pi_flexform','sDEF/lDEF/default_tab/vDEF/','','',1,0,0,'tx_bootstrappackage_tab_item',4,''),('125d39d86fc20fd13594c342a6ffec15','sys_file_reference',6,'uid_local','','','',0,0,0,'sys_file',25,''),('126f4a78e578a02b1f780286bb13f8db','tt_content',74,'image','','','',3,0,0,'sys_file_reference',182,''),('13a352d2fb7d36cf9af47e0107914f2e','sys_file_reference',142,'uid_local','','','',0,0,0,'sys_file',37,''),('16754e9d9e1f69d9dc52ad64d1461a2a','pages_language_overlay',1,'sys_language_uid','','','',0,0,0,'sys_language',2,''),('1789e437c5c60c7dd82dd908108e7abb','sys_file',26,'storage','','','',0,0,0,'sys_file_storage',1,''),('196d0b3f7dddc334563aec89bef252f6','tt_content',166,'bodytext','','typolink_tag','75026b3dbf89b1f0696a88a6dcebb8bb:1',-1,0,0,'pages',14,''),('19999b8a47e823a11d9d42269710e589','tt_content',168,'image','','','',1,0,0,'sys_file_reference',163,''),('19e452834413045c619dc7a98a6bad00','sys_file_reference',159,'uid_local','','','',0,1,0,'sys_file',29,''),('1c4e9215bb01838be226faa07df3bb39','sys_file_metadata',39,'file','','','',0,0,0,'sys_file',40,''),('1cb1c01b82e5a3f3619e8cfaa3b416e3','sys_file_reference',147,'uid_local','','','',0,1,0,'sys_file',39,''),('1e376d9493feaf4a21d97cbffec8a0bc','sys_category',2,'items','','','',0,0,0,'pages',16,''),('1e8e8ec955c565e70b8b248b0db6c309','sys_file_reference',181,'uid_local','','','',0,0,0,'sys_file',81,''),('205958b44413c39f9f43a4aa8738c04b','tt_content',63,'image','','','',0,0,0,'sys_file_reference',20,''),('223fa2676dd6e2c3baa4a0581ab1ddbf','sys_file_metadata',94,'file','','','',0,0,0,'sys_file',10,''),('22c086a6546991fa6c2a357b8604df35','tt_content',212,'assets','','','',1,0,0,'sys_file_reference',167,''),('235bd76da2244c579079f181c8d364fc','tt_content',115,'file_collections','','','',0,0,0,'sys_file_collection',2,''),('23a49c9344c0309d2aba273dab0e36d9','tt_content',162,'bodytext','','typolink_tag','ac848a223f39f283e1658aaaaffdad20:1',-1,0,0,'_STRING',0,'http://typo3.org/'),('23f264fbe96159ee31ccfad32f05582e','tt_content',68,'image','','','',0,0,0,'sys_file_reference',195,''),('267f69bc867383a7b6ceb179817dc923','tt_content',163,'bodytext','','typolink_tag','6ccfc7e65e73a859199f9a53ee5fc5d9:1',-1,0,0,'_STRING',0,'http://twitter.com/BootstrapTYPO3/'),('29e55edeb900fb71b0bc6d9283f744c2','pages',36,'shortcut','','','',0,0,0,'pages',1,''),('2a2c789bf038fc1102355caac3280249','pages',35,'media','','','',0,0,0,'sys_file_reference',153,''),('2ab5457a9c84f4bb97ec6ae4b33e93fe','sys_file_reference',164,'uid_local','','','',0,0,0,'sys_file',76,''),('2b9bf60a20ed5e7b1cea7a3bbe1b6877','sys_category',2,'items','','','',4,0,0,'tt_content',129,''),('2c4645237156394a44bdc212522f5a64','sys_file_reference',167,'uid_local','','','',0,0,0,'sys_file',76,''),('2d18cf1f4d95c20cdaa5e9f2fc10acbd','sys_file_metadata',10,'file','','','',0,0,0,'sys_file',10,''),('2e77cf625e461da81a352d4f18e6b005','tt_content',200,'selected_categories','','','',1,0,0,'sys_category',2,''),('2ea7d095c763f2f5d722bb1cacc0dcc9','sys_file',9,'metadata','','','',1,0,0,'sys_file_metadata',95,''),('3142b2e413d09a40064dacb65d7e04e3','tt_content',75,'image','','','',3,0,0,'sys_file_reference',46,''),('3181fec9fa2611960153d915ba7a46d4','tt_content',25,'l18n_parent','','','',0,0,0,'tt_content',26,''),('32966e2938a8187f24c0436ab8fbcfe1','tt_content',76,'image','','','',6,0,0,'sys_file_reference',173,''),('33c0e3879e50bcdb68f98af338efe07f','sys_category',1,'items','','','',1,0,0,'pages',39,''),('33fa2de80c79ea443fba40c02535a30e','sys_category',2,'items','','','',1,0,0,'tt_content',125,''),('3403964cab9bcd66b68a98086cddbe95','sys_file_collection',2,'files','','','',1,0,0,'sys_file_reference',197,''),('348c10aab1407c755fe29394fda0e5ef','sys_file_reference',195,'uid_local','','','',0,0,0,'sys_file',81,''),('36314ca26b1afe57d37d5344384caddf','sys_file',37,'metadata','','','',0,0,0,'sys_file_metadata',37,''),('366179b3ce69ddfad25cdc1c68079a96','sys_file_reference',173,'uid_local','','','',0,0,0,'sys_file',86,''),('368587896568edf2f5c9177063bfea60','sys_file_reference',141,'uid_local','','','',0,0,0,'sys_file',30,''),('38550129b21fde1239ed221e07cc0021','sys_file_reference',194,'link','','typolink','77ed6b0f0d55b2efe54e198dd4de36d5:0',-1,0,0,'_STRING',0,'www.typo3.org'),('385c2f4e3656e96648ed8b9d6ae121cb','pages',34,'media','','','',0,0,0,'sys_file_reference',154,''),('39ae3337d080fd1b6112e18427475865','sys_file_metadata',4,'file','','','',0,0,0,'sys_file',4,''),('39b1e3d35ceb88aabf13f69fc5969d50','sys_file_reference',175,'uid_local','','','',0,0,0,'sys_file',81,''),('3a490399c130d11af085753fae610d05','tt_content',212,'assets','','','',0,0,0,'sys_file_reference',160,''),('3ac90b9ad6ec55e06298e4a2aadd8a4b','tt_content',193,'pages','','','',0,0,0,'pages',35,''),('3cd91d3f69395190d988991378f0df8e','sys_file_reference',10,'uid_local','','','',0,0,0,'sys_file',21,''),('3d6a82fd8b18b6bed1e373af9ad55003','tt_content',75,'image','','','',5,0,0,'sys_file_reference',47,''),('3dadff113c5d976e9f54e9796ce545cf','tt_content',69,'image','','','',1,0,0,'sys_file_reference',193,''),('3e556d3782d4b6d8f672796ac5b32b84','sys_file_metadata',31,'file','','','',0,0,0,'sys_file',31,''),('3f6ec3f301cdb5fb0d284f952ebe00c2','tt_content',75,'image','','','',8,0,0,'sys_file_reference',49,''),('3fd84954748d63f54b96e48ebf954a26','sys_file',22,'storage','','','',0,0,0,'sys_file_storage',1,''),('40c32ee7166f95e835d5f04f3d84e2bc','sys_file',22,'metadata','','','',0,0,0,'sys_file_metadata',22,''),('422ba908f7593e3d339e98f8e7493f67','sys_file_metadata',22,'file','','','',0,0,0,'sys_file',22,''),('4258ccd5ff235ac68ae6deaa5ff5153f','tx_styleguide_forms',2,'select_4','','','',0,0,0,'tx_styleguide_forms_staticdata',-2,''),('452645c2d511cb75a574fbe0901b0090','sys_file',30,'storage','','','',0,0,0,'sys_file_storage',1,''),('45574bb55e059b35671bcd14c9af2736','tt_content',6,'image','','','',1,0,0,'sys_file_reference',143,''),('45fbdf2916ef5620f8cd472c57ec10cb','tt_content',14,'image','','','',0,0,0,'sys_file_reference',10,''),('46f43ae025743fe2da8d360a497b78a9','sys_category',1,'items','','','',5,0,0,'tt_content',17,''),('476b04087bdbd6e45ef59f78bf462e10','sys_file_collection',2,'files','','','',0,0,0,'sys_file_reference',196,''),('47cc396ca772317477034a8a4cd79b10','sys_file',30,'metadata','','','',1,0,0,'sys_file_metadata',41,''),('4821da930346696406e3ccf3ec22d999','sys_file_metadata',21,'file','','','',0,0,0,'sys_file',21,''),('4869db364643ad75f5ae3644dd98c350','tt_content',114,'file_collections','','','',0,0,0,'sys_file_collection',2,''),('4a159b3db2827dee7e0d0864985feec6','tx_bootstrappackage_tab_item',4,'media','','','',0,0,0,'sys_file_reference',185,''),('4a2e9ef66af7cef00dc68f2cf3835b51','sys_file',30,'metadata','','','',0,0,0,'sys_file_metadata',30,''),('4ad5e33a37f9065c7d60e2d3f0ef1a96','sys_file_reference',171,'uid_local','','','',0,0,0,'sys_file',84,''),('4be9904393237627311c51240fd661f1','sys_file_metadata',40,'file','','','',0,0,0,'sys_file',1,''),('4c9ee2e9793404b26114b702cfebbae6','sys_file',55,'metadata','','','',0,0,0,'sys_file_metadata',108,''),('4d67b4ecaf61b27dc578d2ed92ecbdcc','tt_content',63,'image','','','',1,0,0,'sys_file_reference',187,''),('4da7a61e7e69e5115851f25575d6da0e','tt_content',200,'selected_categories','','','',0,0,0,'sys_category',1,''),('4db20291663cc06cd3987404d3babcb2','tt_content',16,'image','','','',0,0,0,'sys_file_reference',12,''),('4de6606fae67ac607b26daed28581a5f','sys_file_metadata',35,'file','','','',0,0,0,'sys_file',35,''),('4f1e064dae7575c51947405ff9e6fbf0','sys_file_metadata',32,'file','','','',0,0,0,'sys_file',32,''),('505d5136b446c436bb77ae6c2f071aa0','sys_file_reference',146,'uid_local','','','',0,1,0,'sys_file',69,''),('517724d8de14aa37e8419771cee0c8d6','sys_file_metadata',6,'file','','','',0,0,0,'sys_file',6,''),('5191b9ba3d159785d7645714729719a7','sys_file',36,'metadata','','','',0,0,0,'sys_file_metadata',36,''),('535b8395e2ed6e699f881aa0c3cd2ec3','tt_content',74,'image','','','',0,0,0,'sys_file_reference',39,''),('54f77b55f8d65a81663c46cbe7f0097e','sys_file',82,'storage','','','',0,0,0,'sys_file_storage',1,''),('557de1cd99f1b4d25f681d822c060598','sys_file_metadata',1,'file','','','',0,0,0,'sys_file',1,''),('55df1c74233fee66e0d1a999d557f064','tt_content',10,'image','','','',0,0,0,'sys_file_reference',139,''),('563984992cf37fba3715f836e6b71d7b','tt_content',181,'pi_flexform','sDEF/lDEF/default_tab/vDEF/','','',0,0,0,'tx_bootstrappackage_tab_item',3,''),('56892fedda93402ed7ef46c19a457e21','tt_content',167,'bodytext','','typolink_tag','18c2c7fd6fdbf2135403db1ad022b013:3',-1,0,0,'pages',34,''),('5747447d6dc613c4f5d93da6315d5c9c','tt_content',74,'image','','','',2,0,0,'sys_file_reference',40,''),('592702bc39be05ccc230d8b53382ca0d','sys_file_metadata',9,'file','','','',0,0,0,'sys_file',9,''),('593049e3e620d7f5912f3e50dfac644e','sys_file',9,'metadata','','','',0,0,0,'sys_file_metadata',9,''),('5b602ab2713ba0cbbd4fc1cd6e14d134','sys_file',85,'storage','','','',0,0,0,'sys_file_storage',1,''),('5cf438c76dfc4037a6fbc103b3a5ba46','tt_content',181,'tx_bootstrappackage_tab_item','','','',2,0,0,'tx_bootstrappackage_tab_item',5,''),('5f6feffd7a3fe5694227f94fe1877042','tt_content',191,'pages','','','',0,0,0,'pages',1,''),('5fac5d811ecdaa33d0fee884296fb2ae','sys_file_reference',105,'uid_local','','','',0,1,0,'sys_file',66,''),('60d0ec39ceaf8f24fe9c0ec1fcc5c8fc','tt_content',197,'pages','','','',0,0,0,'pages',1,''),('613288b2d0e95b12212c48fdbb7c374a','sys_category',1,'items','','','',0,0,0,'pages',38,''),('61408ff6670c1392a710795cddabb38b','sys_file_metadata',34,'file','','','',0,0,0,'sys_file',34,''),('61d15197590089c59043d0e2bb9d101f','tt_content',201,'pages','','','',0,0,0,'pages',16,''),('6276711bdd261c6c3271d43066eb4b40','sys_file',26,'metadata','','','',0,0,0,'sys_file_metadata',26,''),('64146e7ca4671726af88b437da3c71f5','sys_file_reference',156,'uid_local','','','',0,1,0,'sys_file',33,''),('6438c73e7e89bc9a39a39d8b80a820b2','tt_content',48,'header_link','','typolink','a59b23dd2d9ddcbaee742d7d72e43bb2:0',-1,0,0,'pages',30,''),('6479efc6ef55a1a06faae8a4f4d675e8','tt_content',15,'image','','','',0,0,0,'sys_file_reference',11,''),('647e2516adde6471c1e1d8a8be893e23','tt_content',170,'tx_bootstrappackage_carousel_item','','','',0,0,0,'tx_bootstrappackage_carousel_item',1,''),('6538dee3b21fcf0ff46039cfc5a34869','tt_content',47,'header_link','','typolink','16a97744f8ceec3afc8668224101c6e6:0',-1,0,0,'pages',30,''),('656b2bc5a8d1c88d595f8e9ab2a914ac','sys_file',37,'storage','','','',0,0,0,'sys_file_storage',1,''),('6588728f1c2f2069b4b781ab1d102fff','sys_file',21,'storage','','','',0,0,0,'sys_file_storage',1,''),('65d795770a8fc4e08acd2dd33d59b49c','tt_content',68,'image','','','',1,0,0,'sys_file_reference',194,''),('68b8468850fc23ed33ddc37dd8166f55','sys_file_reference',179,'uid_local','','','',0,0,0,'sys_file',85,''),('690c10847ab35bc6c4f0b815ee439a1c','sys_file',40,'metadata','','','',0,0,0,'sys_file_metadata',39,''),('69102eb0ee983e32999b4a3b2de2b005','sys_file',76,'storage','','','',0,0,0,'sys_file_storage',1,''),('6922084aef288c70e2eb400b4b3d7e13','tt_content',74,'image','','','',6,0,0,'sys_file_reference',184,''),('6bc1be0be85ecd521ee97293714315ec','tt_content',199,'selected_categories','','','',0,0,0,'sys_category',1,''),('6c09fea4fea317a5404d37bf5436a0c0','sys_file_reference',182,'uid_local','','','',0,0,0,'sys_file',82,''),('6f6b001b876cf385b3dcd6a300640f44','sys_file',38,'metadata','','','',0,0,0,'sys_file_metadata',38,''),('7004da125bfa1fb5bf82b35994122815','sys_file_metadata',96,'file','','','',0,0,0,'sys_file',39,''),('709306e1b1ef544da8d3a8ccc4b044fc','tt_content',46,'header_link','','typolink','72c6e94a27b50bedc6aaf9e4b0a55ec5:0',-1,0,0,'pages',30,''),('70c6720e8755a1d330abf2a2567acafb','tt_content',192,'pages','','','',0,0,0,'pages',1,''),('71736f96a15b68393898d34f3b10bac6','sys_file',10,'metadata','','','',0,0,0,'sys_file_metadata',10,''),('71be0cfdee978955148f3d2f45fd3077','sys_file_reference',103,'uid_local','','','',0,0,0,'sys_file',36,''),('723fe9926de6ee4ca4416ffb7a6aa8c3','sys_file_reference',178,'uid_local','','','',0,0,0,'sys_file',84,''),('739366ec25e2f333a0967a32a9669991','sys_file_reference',172,'uid_local','','','',0,0,0,'sys_file',85,''),('75a20675573545f87122c5a02e251efe','tt_content',74,'image','','','',4,0,0,'sys_file_reference',41,''),('767bb2446ff331b05374d491dfb687e9','sys_file_metadata',7,'file','','','',0,0,0,'sys_file',7,''),('76db4f1b4114eede428a3be7e504cbc6','tt_content',75,'image','','','',11,0,0,'sys_file_reference',180,''),('782b5cec31d292f266e5bfa47cc1fd83','sys_category',1,'items','','','',6,0,0,'tt_content',129,''),('7a267c73ef8a2cf6d6076e698a2e5309','sys_file',56,'storage','','','',0,0,0,'sys_file_storage',1,''),('7ae0e00fd764a74dd6f9fe7f30acd578','tt_content',193,'pages','','','',1,0,0,'pages',34,''),('7c29b05a1a9ab70c454f23c799f96733','tt_content',167,'bodytext','','typolink_tag','226e0d27bd192b82a13b7f32599bbcbf:1',-1,0,0,'pages',35,''),('7cef729d373913e3adb6c48ca9673154','tt_content',120,'bodytext','','email','2',-1,0,0,'_STRING',0,'john.doe@domain.com'),('7dc35af8719a3f53db0d1f0045f55ced','tt_content',75,'image','','','',6,0,0,'sys_file_reference',48,''),('7dcc004d094f5e44a449cfff11148cf5','sys_file_reference',180,'uid_local','','','',0,0,0,'sys_file',86,''),('7eaab2b84e60647b9dafbf7d726722dc','sys_file_metadata',29,'file','','','',0,0,0,'sys_file',29,''),('7fe604c4582ee297750524f3253456de','tt_content',190,'pages','','','',0,0,0,'pages',1,''),('80910e6f10e4a0a2fcce315fb9a35033','tt_content',76,'image','','','',4,0,0,'sys_file_reference',171,''),('809154f1497e2eed77fb00bcf07a4b57','tx_bootstrappackage_tab_item',4,'tt_content','','','',0,0,0,'tt_content',181,''),('813857ffad4e69b5fc664aeea296a476','sys_file_metadata',3,'file','','','',0,0,0,'sys_file',3,''),('82a9f186528abc5a924de39cf2622b12','sys_file',34,'storage','','','',0,0,0,'sys_file_storage',1,''),('8307804b8273441d678de2e0cb66fb5e','sys_file_metadata',95,'file','','','',0,0,0,'sys_file',9,''),('83ac951d8c25be6a8758d738d874a1ee','sys_file',10,'storage','','','',0,0,0,'sys_file_storage',1,''),('8607f9b44b33cb9875a0bed564afc17c','sys_file_reference',197,'uid_local','','','',0,0,0,'sys_file',82,''),('873263bed481e6d184f7fc59a9459d58','sys_category',1,'items','','','',2,0,0,'pages',40,''),('87e343b2846b662c76450c474825e0d6','sys_file_reference',168,'uid_local','','','',0,0,0,'sys_file',81,''),('89ec946287e5dd00a1ef49cadccc9746','tt_content',216,'image','','','',1,0,0,'sys_file_reference',191,''),('8a1bbdc6a118a3adaaa1126a17fb8dbd','tt_content',3,'image','','','',0,0,0,'sys_file_reference',2,''),('8c953207b7810595a88138b99cab77d9','sys_file_metadata',5,'file','','','',0,0,0,'sys_file',5,''),('8cca684df169d921bb76b58e7fa3a3c3','tt_content',116,'file_collections','','','',0,0,0,'sys_file_collection',2,''),('8cea4f30299a186a1d3b55001560c638','sys_file_metadata',14,'file','','','',0,0,0,'sys_file',14,''),('8dc882ebb6f60fb6e3f6a8c80aa30d30','sys_file_reference',158,'uid_local','','','',0,1,0,'sys_file',29,''),('8de7e6297ea460038edcbe16769bca9f','sys_file_metadata',28,'file','','','',0,0,0,'sys_file',28,''),('8e8e906c20dce45d10ee1dbebe887a6f','sys_file_reference',154,'uid_local','','','',0,1,0,'sys_file',43,''),('8fc05c41cb028d5f3b9269056e2a53fb','sys_file_reference',157,'uid_local','','','',0,1,0,'sys_file',33,''),('920e1175dbe913dea1f44740f4e08972','tt_content',205,'records','','','',0,0,0,'tt_content',176,''),('93d34846e4e319f87a0a9c865865c1dc','tx_bootstrappackage_tab_item',3,'media','','','',0,0,0,'sys_file_reference',164,''),('948cc7b8f11f4e348491dbff30acada8','tt_content',202,'pages','','','',0,0,0,'pages',19,''),('94a059aa678b0524d1fd745896fe825d','sys_file_metadata',25,'file','','','',0,0,0,'sys_file',25,''),('95773200869bf1eb1d0da9539c9b6cb6','sys_file',25,'storage','','','',0,0,0,'sys_file_storage',1,''),('9594b892bbf51202d6c3e2d5659e4efb','tt_content',198,'pages','','','',0,0,0,'pages',14,''),('9653c028951ab23982c5c40db5f9bb30','tt_content',76,'image','','','',5,0,0,'sys_file_reference',172,''),('981f0a9ad73b658b113059a3889b82aa','sys_file_reference',183,'uid_local','','','',0,0,0,'sys_file',90,''),('98d11198bb4a506d6bf9d55aebd8bae8','sys_file_reference',12,'uid_local','','','',0,0,0,'sys_file',23,''),('990526d87e567d425c6a994c4baf6b56','tt_content',5,'image','','','',0,0,0,'sys_file_reference',4,''),('9963a05771b364585caefa9282c541e8','sys_file_reference',187,'uid_local','','','',0,0,0,'sys_file',89,''),('999a49c8f251a5d9a561a4d479e7a283','tx_bootstrappackage_tab_item',3,'tt_content','','','',0,0,0,'tt_content',181,''),('9a3da71c8a82d55083146f8a7f7a546c','sys_file_reference',193,'uid_local','','','',0,0,0,'sys_file',82,''),('9a867d52d7d7c555356a1c4c7b8f7c99','tt_content',212,'assets','','','',2,0,0,'sys_file_reference',161,''),('9b6b12a57c4253816f435456bbd57b3e','pages',38,'media','','','',0,0,0,'sys_file_reference',155,''),('9bf73e1277d6185f52814611ba16b6b2','sys_file_reference',4,'uid_local','','','',0,0,0,'sys_file',26,''),('9e61dbb22cc0214657d4c7b0b10c70ed','tt_content',191,'pages','','','',1,0,0,'pages',14,''),('9f71a5faf336f4f8ae69edb60fc5d1e2','sys_file_metadata',38,'file','','','',0,0,0,'sys_file',38,''),('9f748f9ec6394e6764b3ba5c1ec7435f','tt_content',216,'image','','','',0,0,0,'sys_file_reference',190,''),('a1d1afb3118121ba515614b584f5ce36','sys_file_metadata',33,'file','','','',0,0,0,'sys_file',33,''),('a2a59750007ae7cad6bafa1eed26ae78','tx_bootstrappackage_carousel_item',1,'background_image','','','',0,0,0,'sys_file_reference',103,''),('a31b5ffe147f206dfde341eb96be7e5e','sys_file_reference',153,'uid_local','','','',0,1,0,'sys_file',66,''),('a39190971f1ad9550116e0fc7f266966','sys_file_reference',177,'uid_local','','','',0,0,0,'sys_file',90,''),('a3cfe296be5fb24cdc570c798e6ab80c','tt_content',194,'pages','','','',0,0,0,'pages',1,''),('a4790012a5860baf9b41556f2e38d464','sys_file_reference',163,'uid_local','','','',0,0,0,'sys_file',34,''),('a4954088b9b2d70d5e8f1702170b4543','sys_file',54,'storage','','','',0,0,0,'sys_file_storage',1,''),('a56c95c8e44804813bc4904e884dcf3b','sys_file_reference',194,'uid_local','','','',0,0,0,'sys_file',88,''),('a580c52248215040d22393a6555f07e5','sys_category',2,'items','','','',2,0,0,'tt_content',127,''),('a5bec49bf71fa7e5b98883c4dcc94e38','sys_file_metadata',30,'file','','','',0,0,0,'sys_file',30,''),('a5ed08f7a5edb5c5523070581d9666d4','tt_content',4,'image','','','',0,0,0,'sys_file_reference',141,''),('a68189750ae40a82e4207166dcbccfc2','sys_file',89,'storage','','','',0,0,0,'sys_file_storage',1,''),('a81a2f6a0cae5559f852be9324772752','sys_file',31,'metadata','','','',0,0,0,'sys_file_metadata',31,''),('a8be2533f884962e8485dd0a991fa457','tt_content',45,'header_link','','typolink','acd7df507659b949fc76a5e575b3978c:0',-1,0,0,'pages',30,''),('a9a87e46e3aa5079185f980cea59a7bf','tt_content',165,'bodytext','','typolink_tag','9f69e44cdbd7cfd4a61b5161a65a2efe:1',-1,0,0,'_STRING',0,'http://###BACKEND_URL###/'),('a9be8a7984e452f5b797881f9372d2db','tt_content',3,'image','','','',1,0,0,'sys_file_reference',140,''),('ac699e9d09452dc49d73c9b4167f128f','sys_file',81,'storage','','','',0,0,0,'sys_file_storage',1,''),('ac74d126183c1a986e07dc1be3ff6026','tt_content',117,'file_collections','','','',0,0,0,'sys_file_collection',2,''),('ac9e1925b2981cfd748da2524e1c8a46','sys_file_reference',151,'uid_local','','','',0,1,0,'sys_file',39,''),('acedf1e4a7e305fdea6e1cd1e50826c4','sys_file_reference',155,'uid_local','','','',0,1,0,'sys_file',66,''),('aeceef07ee1b0e43e860557bdb942137','sys_file_metadata',36,'file','','','',0,0,0,'sys_file',36,''),('aefca222d28ae75af0dad7e07f114cce','sys_file',85,'metadata','','','',0,0,0,'sys_file_metadata',141,''),('b0e471115042276347c2f4e2cd595278','sys_file_metadata',18,'file','','','',0,0,0,'sys_file',18,''),('b1b0d69feab7af9a73fe733a22e3bcb9','sys_file_metadata',27,'file','','','',0,0,0,'sys_file',27,''),('b23de3d0f203b5aacbaf208b8fbe7c26','sys_file_reference',196,'uid_local','','','',0,0,0,'sys_file',81,''),('b2fa029a9ea9362471ad26f226d20d98','sys_file',57,'storage','','','',0,0,0,'sys_file_storage',1,''),('b300331a947d1e19a65e142aa7088b8a','tt_content',164,'bodytext','','typolink_tag','24f5fb842d2527f369a32509910954a8:1',-1,0,0,'_STRING',0,'https://github.com/benjaminkott/bootstrap_package'),('b415d3d5365934887a6a47b8b261305b','sys_file',23,'storage','','','',0,0,0,'sys_file_storage',1,''),('b5bbe8437934ca16bc3eac76ca62d950','sys_category',1,'items','','','',3,0,0,'tt_content',190,''),('b613bbbbd53515206bfa087ba788385e','tt_content',195,'pages','','','',0,0,0,'pages',1,''),('b6390e47f9dcd358032123d4cecfd91b','sys_file_metadata',26,'file','','','',0,0,0,'sys_file',26,''),('b736928ad790677640f471a34fcea64d','tx_styleguide_forms',1,'select_4','','','',0,0,0,'tx_styleguide_forms_staticdata',-2,''),('bcd8354e5593e5caf836a1c9a8f44ab8','tt_content',205,'records','','','',1,0,0,'tt_content',180,''),('bd24747fb239c289af05480361f42da1','sys_file_metadata',17,'file','','','',0,0,0,'sys_file',17,''),('bd5c9a883e00af801dac016467a4f9c5','sys_category',2,'items','','','',3,0,0,'tt_content',128,''),('bebd64081bd1dd5656bc1d711c217bcb','tt_content',75,'image','','','',10,0,0,'sys_file_reference',50,''),('bff9752e87f656f38be23c45a30b39f4','sys_file_reference',160,'uid_local','','','',0,1,0,'sys_file',66,''),('c03e334ccc3d79f449ca34367f23f1fc','sys_file_reference',169,'uid_local','','','',0,0,0,'sys_file',82,''),('c0db953c8adc001f47fc16d09ce6c85e','tt_content',44,'header_link','','typolink','3fd670bc2be21d92bd6cf10cec7e4444:0',-1,0,0,'pages',30,''),('c1d9d77e244db911fc170690b3c98beb','sys_file_metadata',23,'file','','','',0,0,0,'sys_file',23,''),('c2db2d185e97fb2ed9859cfebdbe6718','sys_file',9,'storage','','','',0,0,0,'sys_file_storage',1,''),('c4e82484902a6993c7a9a10e1a163427','sys_file',68,'storage','','','',0,0,0,'sys_file_storage',1,''),('c56c24daaf44cc097c2443ecbb198911','tt_content',75,'image','','','',4,0,0,'sys_file_reference',177,''),('c6649c187d92ec20d58ac6df33820b0a','tt_content',202,'pages','','','',2,0,0,'pages',17,''),('c6af6385bb9390f0c7a7afd007dc6fb0','sys_file_metadata',11,'file','','','',0,0,0,'sys_file',11,''),('c6ce1f9f23f985f8040e33e31d6f0c97','sys_file',56,'metadata','','','',0,0,0,'sys_file_metadata',109,''),('c780003c7e4ec182ee37a5b49e4b39aa','pages',1,'media','','','',0,0,0,'sys_file_reference',152,''),('c9cb80ff1fb074addd3d885ccf6560db','tt_content',76,'image','','','',2,0,0,'sys_file_reference',170,''),('c9fbce75d5d641aa4275ba35069ad65a','tt_content',76,'image','','','',1,0,0,'sys_file_reference',169,''),('caea032873e367c2b03214bffbd64c6e','sys_file',86,'storage','','','',0,0,0,'sys_file_storage',1,''),('cca3f0a97b61b004ee34fa3ba7ce91d8','pages',1,'shortcut','','','',0,0,0,'pages',36,''),('cce6da759b4f52d36adf95038dc5118f','tx_bootstrappackage_tab_item',5,'tt_content','','','',0,0,0,'tt_content',181,''),('cf2dfd26745c349e67c51b59ccb06200','tt_content',28,'bodytext','','typolink_tag','5d0465ea40f9f89222d3b5eaad8abaf9:5',-1,0,0,'_STRING',0,'test@test.net'),('cf7e4c46e6d0a97195f232f0bd537397','tx_bootstrappackage_carousel_item',1,'tt_content','','','',0,0,0,'tt_content',170,''),('d00f7d3f5fbf305b8fe8c7da0369af50','tt_content',74,'image','','','',5,0,0,'sys_file_reference',183,''),('d036d141d2a6133a72586f6ed6436c41','tt_content',75,'image','','','',2,0,0,'sys_file_reference',176,''),('d06ac3da2fbfa7ebf4c70b29376bd2de','sys_file_metadata',37,'file','','','',0,0,0,'sys_file',37,''),('d33bc2704f0049e84399f8666f774d4a','tt_content',76,'image','','','',3,0,0,'sys_file_reference',174,''),('d38f1f078546e608098aa9d64ed0c31b','sys_file_metadata',12,'file','','','',0,0,0,'sys_file',12,''),('d59e9645a7b8fcd2582785e7306902cf','sys_file_metadata',15,'file','','','',0,0,0,'sys_file',15,''),('d5af868b54786c3c444aee058a12598d','sys_file_reference',139,'uid_local','','','',0,0,0,'sys_file',38,''),('d6a4993b7a8bc32ffbdf91e7d1630260','tt_content',75,'image','','','',1,0,0,'sys_file_reference',175,''),('d82930e9f1f304b1437731a51759b5da','sys_file_metadata',19,'file','','','',0,0,0,'sys_file',19,''),('d858659f1eac26c44bdd9bf3c5c2bec8','sys_file',36,'storage','','','',0,0,0,'sys_file_storage',1,''),('d85f35b33f4786bc91bb2c7647f55570','sys_file_metadata',41,'file','','','',0,0,0,'sys_file',30,''),('d878e788d304f1e8caea91cf92a5a54b','tt_content',75,'image','','','',9,0,0,'sys_file_reference',179,''),('d95f3523895662ee9299d9c09423bc7d','sys_file_reference',192,'uid_local','','','',0,0,0,'sys_file',87,''),('d9ecd4ea2e4d891a0969a11887d260e4','sys_file_reference',176,'uid_local','','','',0,0,0,'sys_file',82,''),('da5afff4256c16fb32f793e110c82fc5','tt_content',28,'bodytext','','typolink_tag','cbceea4194bb0f33a6bb0199c6fd286c:1',-1,0,0,'pages',31,''),('dacee766703957ad64f504e9ed78b435','sys_file',84,'storage','','','',0,0,0,'sys_file_storage',1,''),('daf64395aa942ffccc103e37a15ff60f','tt_content',75,'image','','','',7,0,0,'sys_file_reference',178,''),('ded9c19c2bde187a45bdc390ce06d0ba','sys_file_reference',198,'uid_local','','','',0,0,0,'sys_file',83,''),('e162f013ea9104720c5d7ef3edd47ecb','sys_file_metadata',16,'file','','','',0,0,0,'sys_file',16,''),('e19a1cdd0c996920bfffd506234df11c','sys_file',57,'metadata','','','',0,0,0,'sys_file_metadata',110,''),('e1cc6e8b032d7ec0b3786e4b3425d612','sys_file_reference',140,'uid_local','','','',0,0,0,'sys_file',40,''),('e2594cb0159068dcd19f4c9cd887e1c5','tt_content',74,'image','','','',1,0,0,'sys_file_reference',181,''),('e4d4680c314b08acf984ef5a3288ece9','tt_content',197,'pages','','','',1,0,0,'pages',14,''),('e616b5dbe31f9598648a9e72c261da14','tt_content',202,'pages','','','',1,0,0,'pages',18,''),('e65c5c13fa0867d1a6b056828894c923','tx_bootstrappackage_tab_item',5,'media','','','',0,0,0,'sys_file_reference',186,''),('e66120461c8fe60d42a15aeb4f362c32','sys_file_metadata',2,'file','','','',0,0,0,'sys_file',2,''),('e68d3e3b234f74d2d1e98addf74f1c7d','tt_content',8,'bodytext','','typolink_tag','2a520c08168980925c24de2ce7ddf6ea:3',-1,0,0,'_STRING',0,'http://typo3.org/extensions/repository/'),('e6a8f27f1fa63339f802a24b4f2cde7d','tt_content',8,'bodytext','','typolink_tag','6594bb2f26867fd2f6f5a18539904c58:1',-1,0,0,'_STRING',0,'http://typo3.org/about/features/complete-feature-list/'),('ead5279a2873904d49af5d600a7ccdca','sys_file',88,'storage','','','',0,0,0,'sys_file_storage',1,''),('ec81a954a146eb73927acaacd3d44009','sys_file',10,'metadata','','','',1,0,0,'sys_file_metadata',94,''),('ecdbee33012537c85a2310b77f7b3ee0','sys_file_reference',188,'uid_local','','','',0,0,0,'sys_file',87,''),('ee2c9d62a82ca736dd1db18b0afc54b8','sys_file',40,'storage','','','',0,0,0,'sys_file_storage',1,''),('ee64401f6ee0a578a591d95c959b0c39','sys_file_reference',186,'uid_local','','','',0,0,0,'sys_file',88,''),('ee91a94dcb14c70709a0cdf37af4a623','tt_content',62,'image','','','',1,0,0,'sys_file_reference',188,''),('ef4a8545d5d8a5d53678a6dc2ef3e2dd','sys_file',23,'metadata','','','',0,0,0,'sys_file_metadata',23,''),('ef87478003d82306a1a81057cb100254','sys_file_reference',152,'uid_local','','','',0,1,0,'sys_file',66,''),('efd5abd75ac198c14d7e10a381a3e2c1','sys_file',55,'storage','','','',0,0,0,'sys_file_storage',1,''),('f13b1d45103d4e08f9a54fcd0e571c50','tt_content',74,'image','','','',8,0,0,'sys_file_reference',43,''),('f14eb374fef5b7c8c5af9de5e242dcf9','sys_file_reference',184,'uid_local','','','',0,0,0,'sys_file',84,''),('f1646e269c857e9b0e2d45f32af27c54','tt_content',76,'image','','','',0,0,0,'sys_file_reference',168,''),('f4e8ff55ef6508ba1adc1036a73110ee','tt_content',74,'image','','','',7,0,0,'sys_file_reference',42,''),('f54c8b54cb2539b01d8d5d4dacd96ddf','sys_file_reference',185,'uid_local','','','',0,0,0,'sys_file',83,''),('f5a7c7a5a5840a0881b65451b9288c7f','tt_content',22,'l18n_parent','','','',0,0,0,'tt_content',24,''),('f6af577089d334162053b2cd254dd078','sys_file',54,'metadata','','','',0,0,0,'sys_file_metadata',107,''),('f748137a1bf5f4a2349ca8b712cc85b8','tt_content',113,'file_collections','','','',0,0,0,'sys_file_collection',2,''),('f75906d60a29e3b2fb8290cf844360db','tt_content',62,'image','','','',0,0,0,'sys_file_reference',19,''),('f7a4faf72d7a9e037b88dd505e5204be','tt_content',181,'tx_bootstrappackage_tab_item','','','',0,0,0,'tx_bootstrappackage_tab_item',3,''),('f7af5f4f08aec452d8836da9d6ed0f3e','sys_file_reference',191,'uid_local','','','',0,0,0,'sys_file',90,''),('f859872bd10da640167ac37179ab9aa7','tt_content',61,'image','','','',0,0,0,'sys_file_reference',189,''),('f860d66949d9ff1b67b002308ebfb784','tt_content',181,'pi_flexform','sDEF/lDEF/default_tab/vDEF/','','',2,0,0,'tx_bootstrappackage_tab_item',5,''),('f88f5061c39dd008a02ac0ec7792a966','tt_content',7,'image','','','',0,0,0,'sys_file_reference',6,''),('f9f93fbaedc3dfd51ee30b2cc3423e34','sys_file_reference',195,'link','','typolink','f60a9243b2c952be2bb4d4b5478959cd:0',-1,0,0,'pages',1,''),('fb3e75c019131483537343d63f29aa50','sys_file_reference',143,'uid_local','','','',0,0,0,'sys_file',31,''),('fc302a869838b5162e9bcdf5241b5e4f','sys_file',80,'storage','','','',0,0,0,'sys_file_storage',1,''),('fc71c4e01e951315b4b1c8ae543ede84','sys_file',31,'storage','','','',0,0,0,'sys_file_storage',1,''),('fc7786aef6a0787c87c6e1fd71d40743','sys_file_reference',9,'uid_local','','','',0,0,0,'sys_file',10,''),('fd15f115839825773099e223d5b7abe7','sys_file_metadata',13,'file','','','',0,0,0,'sys_file',13,''),('fddb28f294b2bb74f2b4ab3d989ddba5','sys_file_metadata',24,'file','','','',0,0,0,'sys_file',24,''),('fec39408f8a6f5f703d709a87adb3f45','tt_content',210,'bodytext','','email','2',-1,0,0,'_STRING',0,'john.doe@domain.com'),('ff0a9ca5f364b75bccb699b74d167c83','sys_file',21,'metadata','','','',0,0,0,'sys_file_metadata',21,''),('ff3cafaf5810885ec5400fb3aedf5f23','tt_content',75,'image','','','',0,0,0,'sys_file_reference',45,''),('ffee38ae9b16ef34767291bac98c09b6','sys_file_metadata',20,'file','','','',0,0,0,'sys_file',20,'');
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) NOT NULL DEFAULT '',
  `entry_key` varchar(128) NOT NULL DEFAULT '',
  `entry_value` blob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'core','formProtectionSessionToken:1','s:64:\"355e1992b2ac732d5dafa7e8894aa947c1cafbf069868228b45fb44ecfb250b2\";'),(2,'extensionDataImport','typo3conf/ext/introduction/Initialisation/Files','i:1;'),(3,'extensionDataImport','typo3conf/ext/introduction/ext_tables_static+adt.sql','i:1;'),(4,'extensionDataImport','typo3conf/ext/introduction/Initialisation/dataImported','i:1;'),(5,'extensionDataImport','typo3conf/ext/styleguide/ext_tables_static+adt.sql','i:1;'),(6,'extensionDataImport','typo3conf/ext/sphinx/ext_tables_static+adt.sql','i:1;'),(7,'extensionDataImport','typo3conf/ext/restdoc/ext_tables_static+adt.sql','i:1;'),(8,'extensionDataImport','typo3/sysext/fluid_styled_content/ext_tables_static+adt.sql','i:1;'),(9,'extensionDataImport','typo3conf/ext/bootstrap_package/ext_tables_static+adt.sql','i:1;'),(10,'extensionDataImport','typo3conf/ext/pw_teaser/ext_tables_static+adt.sql','i:1;'),(11,'extensionDataImport','typo3/sysext/recycler/ext_tables_static+adt.sql','i:1;');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `sitetitle` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `root` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `clear` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `include_static_file` text,
  `constants` text,
  `config` text,
  `nextLevel` varchar(5) NOT NULL DEFAULT '',
  `description` text,
  `basedOn` tinytext,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeStaticAfterBasedOn` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `static_file_mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `tx_realurl` (`root`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,0,0,0,'',0,0,0,0,0,0,1450034400,256,1448314236,1,'Introduction Package','TYPO3 CMS 7 LTS - Introduction Package',0,0,0,1,3,'EXT:bootstrap_package/Configuration/TypoScript','plugin.tx_felogin_pi1.storagePid = 51','','','This is the Introduction Package template.\r\n\r\nFor each website you need a TypoScript template on the main page of your website (on the top level). For better maintenance all files have been extracted into external files.','',0,0,0,1);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `editlock` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `rowDescription` text,
  `bodytext` mediumtext,
  `image` int(11) unsigned NOT NULL DEFAULT '0',
  `imagewidth` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `imageorient` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imagecols` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imageborder` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `cols` int(11) unsigned NOT NULL DEFAULT '0',
  `records` text,
  `pages` text,
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `colPos` int(11) unsigned NOT NULL DEFAULT '0',
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `header_link` varchar(1024) NOT NULL DEFAULT '',
  `image_zoom` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `header_layout` varchar(30) NOT NULL DEFAULT '0',
  `menu_type` varchar(30) NOT NULL DEFAULT '0',
  `list_type` varchar(255) NOT NULL DEFAULT '',
  `select_key` varchar(80) NOT NULL DEFAULT '',
  `sectionIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `linkToTop` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file_collections` text,
  `filelink_size` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` varchar(10) NOT NULL DEFAULT '',
  `target` varchar(30) NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `recursive` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `imageheight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext,
  `accessibility_title` varchar(30) NOT NULL DEFAULT '',
  `accessibility_bypass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) NOT NULL DEFAULT '',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `selected_categories` text,
  `category_field` varchar(64) NOT NULL DEFAULT '',
  `table_caption` varchar(255) DEFAULT NULL,
  `table_delimiter` smallint(6) unsigned NOT NULL DEFAULT '0',
  `table_enclosure` smallint(6) unsigned NOT NULL DEFAULT '0',
  `table_header_position` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_tfoot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `header_position` varchar(6) NOT NULL DEFAULT '',
  `section_frame` int(11) unsigned NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `icon_position` varchar(255) NOT NULL DEFAULT '',
  `icon_size` int(11) unsigned DEFAULT '0',
  `icon_type` int(11) unsigned DEFAULT '0',
  `icon_color` varchar(255) NOT NULL DEFAULT '',
  `icon_background` varchar(255) NOT NULL DEFAULT '',
  `external_media_source` varchar(1024) NOT NULL DEFAULT '',
  `external_media_ratio` varchar(10) NOT NULL DEFAULT '',
  `tx_bootstrappackage_carousel_item` int(11) unsigned DEFAULT '0',
  `tx_bootstrappackage_accordion_item` int(11) unsigned DEFAULT '0',
  `tx_bootstrappackage_tab_item` int(11) unsigned DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `assets` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `language` (`l18n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,35,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,2816,'text','Upgrading TYPO3? No problem.',NULL,'From its inception TYPO3 has emphasized the importance of stable APIs and full&nbsp;backwards-compatibility.&nbsp; The TYPO3 core team follows a regular release schedule and take great care to ensure easy, non-breaking updates.',0,0,0,1,0,0,0,0,0,'','',0,0,2,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,1,NULL,'',0,'',0,'a:19:{s:5:\"CType\";N;s:16:\"sys_language_uid\";N;s:6:\"colPos\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:12:\"sectionIndex\";N;s:6:\"hidden\";N;s:6:\"header\";N;s:15:\"header_position\";N;s:13:\"header_layout\";N;s:11:\"header_link\";N;s:4:\"date\";N;s:9:\"linkToTop\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(2,35,0,0,0,'',0,0,0,0,0,0,1448822967,1448314236,1,0,0,2560,'textpic','Ease of Use',NULL,'TYPO3 is built around content management concepts that are intuitive and easy to master. Pages are organized into a hierarchical page tree. Each piece of content is clearly represented in the page module. All records can be accessed with a universal list module. Built-in WYSIWYG editors allow non-technical users to efficiently and effectively manage content.',1,0,25,1,0,0,0,0,0,'','',0,0,30,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,2,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(3,35,0,0,0,'',0,0,0,0,0,0,1448924371,1448314236,1,0,0,2304,'textpic','Publishing Content',NULL,'TYPO3 contains built-in versioning functionality that allows users to revert content to a previous version with ease. TYPO3 also features “workspaces,” which make it possible for users to edit content in one or more draft workspaces, and to confirm editorial approval before content is published.',1,0,25,1,0,0,0,0,0,'','',0,0,31,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,3,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(4,35,0,0,0,'',0,0,0,0,0,0,1448924399,1448314236,1,0,0,2048,'textpic','Multi-Language and Multiple Domains',NULL,'Support for multiple domains within a single TYPO3 installation and for multiple languages are built-in to the TYPO3 core and are integrated at every level of the system’s architecture.',1,0,25,1,0,0,0,0,0,'','',0,0,32,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,4,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(5,35,0,0,0,'',0,0,0,0,0,0,1448823008,1448314236,1,0,0,1792,'textpic','Granular Frontend and Backend Access Rights',NULL,'All frontend pages and content can be limited to specific user groups. Backend editors can easily be restricted to specific sections of the page tree, modules, and directories in the file system.',1,0,25,1,0,0,0,0,0,'','',0,0,33,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,5,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(6,35,0,0,0,'',0,0,0,0,0,0,1448924506,1448314236,1,0,0,1536,'textpic','No Frontend Design Constraints',NULL,'Because the TYPO3 frontend and backend are separate and distinct interfaces, developers have complete and total control of their frontend markup, CSS, and JavaScript, down to the most minute details.',1,0,25,1,0,0,0,0,0,'','',0,0,34,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,6,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(7,35,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,1280,'textpic','Frontend Editing',NULL,'While the backend offers complete control over all site content, TYPO3 also includes a frontend editing interface for even faster, more intuitive content management by non-technical editors.',1,0,25,1,0,0,0,0,0,'','',0,0,35,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,7,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(8,35,0,0,0,'',0,0,0,0,0,0,1453577275,1448314236,1,0,0,1024,'text','And More...',NULL,'For a full list of all that the TYPO3 core has to offer, take a look at the feature matrix on typo3.org. Or browse the list of over 6.000 extensions on the TYPO3 extension repository.\r\n<link http://typo3.org/about/features/complete-feature-list/ - \"btn btn-primary\" btn-primary>TYPO3 Feature Matrix</link>\r\n<link http://typo3.org/extensions/repository/ - \"btn btn-primary\" btn-primary>TYPO3 Extension Repository</link>',0,0,0,2,0,0,0,0,0,'','',0,0,37,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,8,NULL,'',0,'',0,'a:19:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(9,35,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,768,'text','Enterprise Features',NULL,'In addition to everything one would expect in a sophisticated content management system, TYPO3 also possesses a number of important enterprise features including content-specific caching backends, a database abstraction layer, documented serviced-based APIs for authentication like LDAP and Active Directory, well-defined interfaces for third-party systems integration, reporting tools, a digital asset manager, and an interface for scheduled jobs.&nbsp;',0,0,0,2,0,0,0,0,0,'','',0,0,36,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,9,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(10,35,0,0,0,'',0,0,0,0,0,0,1448924559,1448314236,1,0,0,512,'textpic','Feature Complete Out-of-the-box',NULL,'<p class=\"text-center lead\">TYPO3 is unique in the quantity and quality of features that are part of its core. While there are over 6.000 extensions in the official TYPO3 Extension Repository, the following features are present without installing any community-developed extension.</p>',1,0,8,1,0,0,0,0,0,'','',0,0,0,'','','',0,'1','0','','',1,0,'',0,'','',0,0,0,0,10,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',NULL,124,0,0,0,'center',0,'','',0,0,'','','','',0,0,0,0,0),(11,35,0,0,0,'',0,0,0,0,0,0,1450040017,1448314236,1,0,0,256,'image','TYPO3 Book with Backend Screen',NULL,NULL,1,0,0,2,0,0,0,0,0,'','',0,0,4,'','','',0,'100','0','','',1,0,'',0,'','',0,0,0,0,11,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(12,34,0,0,0,'',0,0,0,0,0,0,1449010317,1448314236,1,0,0,256,'text','Extensive Configuration Options',NULL,'Nearly every aspect of the TYPO3 backend is configurable and customizable. Backend interfaces can often be configured using TSConfig. Nearly all rendered HTML content can be configured using TypoScript, a declarative configuration language used throughout TYPO3 for controlling front-end output.',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,12,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(13,34,0,0,0,'',0,0,0,0,0,0,1448924961,1448314236,1,0,0,128,'textpic','Fluid: Next Generation Templating',NULL,'<p class=\"lead\">Fluid - TYPO3\'s next generation templating engine - is used for creating custom extension templates. </p>\r\nFluid was created for TYPO3 Flow and has been backported to TYPO3 CMS.\r\nFluid\'s approach to creating templates emphasizes simplicity, flexibility, extensibility, and easy of use. The syntax is XML-based and can be extended in any Web IDE. With its ViewHelpers, Fluid can be extended by powerful functionality that fits custom web project needs.\r\nFluid is used with Extbase by default, and can be used standalone in other PHP functions and has its own TypoScript Content Object &quot;FLUIDTEMPLATE&quot;.',1,0,26,2,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,13,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(14,34,0,0,0,'',0,0,0,0,0,0,1448924948,1448314236,1,0,0,64,'textpic','Extbase: TYPO3\'s Built-in MVC Framework',NULL,'<p class=\"lead\">Recent versions of TYPO3 CMS include a built-in Model-View-Controller (MVC) framework called Extbase, which allows developers to take advantage of this popular programming design pattern.</p>\r\nExtbase a nice Domain-Driven-Design (DDD) approach for persisting DB records, as well as an action-controller based structure, which can be used for dynamic plugins in any frontend page, as well as custom Backend modules in TYPO3 itself. In fact, most of the default backend modules run with Extbase.\r\nExtbase is a backport of features from TYPO3 FLOW to TYPO3 CMS.',1,0,25,2,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,14,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(15,34,0,0,0,'',0,0,0,0,0,0,1448924935,1448314236,1,0,0,32,'textpic','Extension Builder simplifies extension development',NULL,'The Extension Builder helps you to build TYPO3 extensions based on the MVC framework Extbase and the Templating Engine Fluid. You can design your model with a graphic modeler and create Plugins or Backend modules.\r\nAll required files are generated and you will have a basic extension where you can insert your domain logic.\r\nIn contrary to the former kickstarter extension the extension builder has an edit mode that enables the continuous use during development. You can modify the auto-generated PHP classes (add new methods, modify the method bodies, add comments and annotations) and the extension builder preserves your changes, even if you then rename models or properties in the modeler.',1,0,26,2,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,15,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(16,34,0,0,0,'',0,0,0,0,0,0,1448924923,1448314236,1,0,0,16,'textpic','6.000 Extensions and Counting',NULL,'TYPO3 is an extremely modular system that can be easily enhanced with custom extensions. All TYPO3 sites are built on top of the TYPO3 core, which contains the systems\' fundamental functionality. Custom extensions interact with the core through the stable, clearly documented extension API. While the TYPO3 core does change in each new release, the interfaces between extensions and the core do not, ensuring easy updates and future-proof development.\r\n<h2>The TYPO3 Extension Manager</h2>\r\nTYPO3 relies on the TYPO3 extension manager - included in the TYPO3 core - for installing, activating, and deactivating extensions on a given TYPO3 installation.&nbsp;Extensions can be quickly imported and installed with just a couple clicks in the TYPO3 Admin Interface.',1,0,25,2,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,16,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(17,34,0,0,0,'',0,0,0,0,0,0,1449934504,1448314236,1,0,0,8,'text','Incredible flexible',NULL,'<p class=\"lead\">More than 6.000 extensions like News, RealURL for sophisticated URL generation of pages, or Grid Elements expand the TYPO3 base functionality. Published by world-class developers around the&nbsp;world. And your independence? Guaranteed by 1.800&nbsp;agencies. Thus keeps your CMS flexible and your investments&nbsp;save.</p>',0,0,0,2,0,0,0,0,0,'','',0,0,0,'','','',0,'1','0','','',1,0,'',0,'','',0,0,0,0,17,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'center',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,1,0),(18,33,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,256,'text','Endless Possibilities',NULL,'The content elements that appear on subpages are just the core content elements. TYPO3 can be easily extended to include custom content elements. It is also possible to create dynamic, database-driven content elements (plug-ins) using the TYPO3 extension API and Extbase for instance.',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,18,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(20,33,0,0,0,'',0,0,0,0,0,0,1449005342,1448314236,1,0,0,64,'text','Content Management Made Easy',NULL,'<p class=\"lead\">To help get you started with TYPO3, we’ve included usage examples of the core content elements that have made TYPO3 so popular.</p>\r\nThese examples illustrate how - straight out-of-the-box - TYPO3 delivers a vast amount of freedom to content editors. Unlike more static content management systems, TYPO3 content management is highly element-based and granular. Click on any of the links in the secondary navigation, to the right, to see examples of each core content element.\r\nFeel free to log into the TYPO3 backend to see how easily these content elements (and pages) can be created, deleted, and modified!',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'1','0','','',1,0,'',0,'','',0,0,0,0,20,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(22,32,0,0,0,'',0,0,0,0,0,29,1448925423,1448314236,1,0,0,128,'text','Eksempler',NULL,'<ol><li><strong>Bulgarian:</strong> Жълтата дюля беше щастлива, че пухът, който цъфна, замръзна като гьон. </li><li><strong>Czech:</strong> Příliš žluťoučký kůň úpěl ďábelské kódy. </li><li><strong>Dutch:</strong> Pa\'s wĳze lynx bezag vroom het fikse aquaduct. </li><li><strong>English:</strong> The quick brown fox jumps over the lazy dog. </li><li><strong>Esperanto:</strong> Eĥoŝanĝo ĉiuĵaŭde. </li><li><strong>French:</strong> Les naïfs ægithales hâtifs pondant à Noël où il gèle sont sûrs d\'être déçus et de voir leurs drôles d\'œufs abîmés. </li><li><strong>German: </strong> Falsches Üben von Xylophonmusik quält jeden größeren Zwerg. (1) </li><li><strong>German: </strong> Im finsteren Jagdschloß am offenen Felsquellwasser patzte der affig-flatterhafte kauzig-höf‌liche Bäcker über seinem versifften kniffligen C-Xylophon. (2) </li><li><strong>Greek</strong> (monotonic): ξεσκεπάζω την ψυχοφθόρα βδελυγμία </li><li><strong>Greek</strong> (polytonic): ξεσκεπάζω τὴν ψυχοφθόρα βδελυγμία </li><li><strong>Hebrew:</strong> <span dir=\"rtl\">זה כיף סתם לשמוע איך תנצח קרפד עץ טוב בגן.</span> </li><li><strong>Hungarian:</strong> Árvíztűrő tükörfúrógép. </li><li><strong>Icelandic:</strong> Sævör grét áðan því úlpan var ónýt. </li><li><strong>Irish:</strong> &quot;An ḃfuil do ċroí ag bualaḋ ó ḟaitíos an ġrá a ṁeall lena ṗóg éada ó ṡlí do leasa ṫú?&quot; &quot;D\'ḟuascail Íosa Úrṁac na hÓiġe Beannaiṫe pór Éava agus Áḋaiṁ.&quot; </li><li><strong>Jamaican:</strong> Chruu, a kwik di kwik brong fox a jomp huova di liezi daag de, yu no siit? </li><li><strong>Japanese</strong> (Hiragana):<br />いろはにほへど　ちりぬるを<br /> わがよたれぞ　つねならむ<br /> うゐのおくやま　けふこえて<br /> あさきゆめみじ　ゑひもせず (4)</li><li><strong>Polish:</strong> Pchnąć w tę łódź jeża lub ośm skrzyń fig. </li><li><strong>Portuguese:</strong> O próximo vôo à noite sobre o Atlântico, põe freqüentemente o único médico. (3) </li><li><strong>Sami (Northern):</strong> Vuol Ruoŧa geđggiid leat máŋga luosa ja čuovžža. </li><li><strong>Slovak:</strong> Starý kôň na hŕbe kníh žuje tíško povädnuté ruže, na stĺpe sa ďateľ učí kvákať novú ódu o živote. </li><li><strong>Spanish:</strong> El pingüino Wenceslao hizo kilómetros bajo exhaustiva lluvia y frío, añoraba a su querido cachorro. </li><li><strong>Swedish:</strong> Flygande bäckasiner söka strax hwila på mjuka tuvor. </li><li><strong>Russian:</strong> Съешь же ещё этих мягких французских булок да выпей чаю. </li><li><strong>Russian:</strong> В чащах юга жил-был цитрус? Да, но фальшивый экземпляр! ёъ. </li></ol>',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'100','0','','',1,0,'',0,'','',0,0,0,2,22,NULL,'',0,'',24,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(24,32,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,32,'text','Examples',NULL,'<ul><li><strong>Bulgarian:</strong> Жълтата дюля беше щастлива, че пухът, който цъфна, замръзна като гьон. </li><li><strong>Czech:</strong> Příliš žluťoučký kůň úpěl ďábelské kódy. </li><li><strong>Dutch:</strong> Pa\'s wĳze lynx bezag vroom het fikse aquaduct. </li><li><strong>English:</strong> The quick brown fox jumps over the lazy dog. </li><li><strong>Esperanto:</strong> Eĥoŝanĝo ĉiuĵaŭde. </li><li><strong>French:</strong> Les naïfs ægithales hâtifs pondant à Noël où il gèle sont sûrs d\'être déçus et de voir leurs drôles d\'œufs abîmés. </li><li><strong>German: </strong> Falsches Üben von Xylophonmusik quält jeden größeren Zwerg. (1) </li><li><strong>German: </strong> <span lang=\"da\">Im finsteren Jagdschloß am offenen Felsquellwasser patzte der affig-flatterhafte kauzig-höf‌liche Bäcker über seinem versifften kniffligen C-Xylophon.</span> (2) </li><li><strong>Greek</strong> (monotonic): ξεσκεπάζω την ψυχοφθόρα βδελυγμία </li><li><strong>Greek</strong> (polytonic): ξεσκεπάζω τὴν ψυχοφθόρα βδελυγμία </li><li><strong>Hebrew:</strong> <span dir=\"rtl\">זה כיף סתם לשמוע איך תנצח קרפד עץ טוב בגן.</span> </li><li><strong>Hungarian:</strong> Árvíztűrő tükörfúrógép. </li><li><strong>Icelandic:</strong> Sævör grét áðan því úlpan var ónýt. </li><li><strong>Irish:</strong> &quot;An ḃfuil do ċroí ag bualaḋ ó ḟaitíos an ġrá a ṁeall lena ṗóg éada ó ṡlí do leasa ṫú?&quot; &quot;D\'ḟuascail Íosa Úrṁac na hÓiġe Beannaiṫe pór Éava agus Áḋaiṁ.&quot; </li><li><strong>Jamaican:</strong> Chruu, a kwik di kwik brong fox a jomp huova di liezi daag de, yu no siit? </li><li><strong>Japanese</strong> (Hiragana):<br />いろはにほへど　ちりぬるを<br /> わがよたれぞ　つねならむ<br /> うゐのおくやま　けふこえて<br /> あさきゆめみじ　ゑひもせず (4)</li><li><strong>Polish:</strong> Pchnąć w tę łódź jeża lub ośm skrzyń fig. </li><li><strong>Portuguese:</strong> O próximo vôo à noite sobre o Atlântico, põe freqüentemente o único médico. (3) </li><li><strong>Sami (Northern):</strong> Vuol Ruoŧa geđggiid leat máŋga luosa ja čuovžža. </li><li><strong>Slovak:</strong> Starý kôň na hŕbe kníh žuje tíško povädnuté ruže, na stĺpe sa ďateľ učí kvákať novú ódu o živote. </li><li><strong>Spanish:</strong> El pingüino Wenceslao hizo kilómetros bajo exhaustiva lluvia y frío, añoraba a su querido cachorro. </li><li><strong>Swedish:</strong> Flygande bäckasiner söka strax hwila på mjuka tuvor. </li><li><strong>Russian:</strong> Съешь же ещё этих мягких французских булок да выпей чаю. </li><li><strong>Russian:</strong> В чащах юга жил-был цитрус? Да, но фальшивый экземпляр! ёъ. </li></ul>',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'100','0','','',1,0,'',0,'','',0,0,0,0,24,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(25,32,0,0,0,'',0,0,0,0,0,185,1448925369,1448314236,1,0,0,16,'text','TYPO3 kender ingen grænser',NULL,'<p class=\"lead\">TYPO3 understøtter alle sprog og tegnsæt. Alle frontend-, backend- og database-interaktioner understøtter fuldt ud UTF-8.</p>',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'1','0','','',1,0,'',0,'','',0,0,0,2,25,NULL,'',0,'',26,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(26,32,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,8,'text','TYPO3 Speaks Your Language',NULL,'<p class=\"lead\">TYPO3 supports all languages, characters and encoding out-of-the-box. All frontend, backend and database interactions run Unicode (UTF-8) by default.</p>',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,26,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(28,31,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,128,'text','Links',NULL,'You can insert <LINK 31 - \"internal-link\">internal links</link> (links to pages within the website), <LINK http://typo3.org - \"external-link-new-window\">external links</link> (links to external sites) or <LINK test@test.net - \"mail\">e-mail links</link> (links that open the user\'s email client when clicked).',0,0,0,0,0,0,0,0,0,'','',0,0,0,'','','',0,'3','0','','',1,0,'',0,'','',0,0,0,0,28,'','',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(29,31,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,64,'text','Lists',NULL,'<span style=\"line-height: 1.428571429;\">Bulleted list:</span>\r\n<ul><li>first level</li><li>first level<ul><li>second level</li><li>second level<ul><li>third level</li><li>third level</li></ul></li></ul></li></ul>\r\n<strong>Ordered list:</strong>\r\n<ol><li>first level</li><li>first level<ol><li>second level</li><li>second level<ol><li>third level</li><li>third level</li></ol></li></ol></li></ol>',0,0,0,2,0,0,0,0,0,'','',0,0,0,'','','',0,'3','0','','',1,0,'',0,'','',0,0,0,0,29,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(30,31,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,32,'text','Blockquote',NULL,'Aenean ante elit, elementum et, varius ut, condimentum ut, sem. Aenean ante neque, imperdiet sed, ultricies vitae, aliquam dictum, arcu. Aenean arcu est, semper vitae, euismod quis, vehicula eu, risus.\r\n<blockquote>Aenean ante elit, elementum et, varius ut, condimentum ut, sem. Aenean ante neque, imperdiet sed, ultricies vitae, aliquam dictum, arcu. Aenean arcu est, semper vitae, euismod quis, vehicula eu, risus.</blockquote>\r\nAenean ante elit, elementum et, varius ut, condimentum ut, sem. Aenean ante neque, imperdiet sed, ultricies vitae, aliquam dictum, arcu. Aenean arcu est, semper vitae, euismod quis, vehicula eu, risus.',0,0,0,2,0,0,0,0,0,'','',0,0,0,'','','',0,'3','0','','',1,0,'',0,'','',0,0,0,0,30,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(31,31,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,16,'text','Examples of Rich Text Content Elements ',NULL,'<strong>Continuous text:</strong> text, optional in <strong>bold</strong> or <em>italic</em> or in a combination of<em><strong> bold and italic</strong></em>. \r\n<strong>Special characters can be used</strong>: @ © ® ¢ ¼ ½ ¾ § ± a² m³ Ω π µ γ β α H<sub>2</sub>O\r\n<strong>Texts in foreign languages can be mixed on one page. </strong><br />The font has to be installed on the device though:\r\ncyrillic: Русская версия <br />chinese: 中文版<br />arabic: <span lang=\"ar\" xml:lang=\"ar\">الْعَرَبيّة</span> \r\n<p class=\"text-center\">Centered text</p>\r\n<p class=\"text-right\">Text justified right</p>',0,0,8,0,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,31,'','',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(32,31,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,8,'text','TYPO3\'s Built-in Rich Text Editor',NULL,'<p class=\"lead\">TYPO3 contains a sophisticated, built-in rich text editor (RTE). This editor contains all of the features one would expect from an Enterprise CMS, and is highly configurable.</p>',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,32,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(34,30,0,0,0,'',0,0,0,0,0,44,1448314236,1448314236,1,0,0,5120,'header','Header 5. level (right-justified)',NULL,'',0,0,8,0,0,0,0,0,0,'','',0,0,0,'','','',0,'5','0','','',1,0,'',0,'','',0,0,0,0,34,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',NULL,124,0,0,0,'right',0,'','0',0,0,'','','','',0,0,0,0,0),(35,30,0,0,0,'',0,0,0,0,0,43,1448314236,1448314236,1,0,0,4864,'header','Header 4. level (right-justified)',NULL,'',0,0,8,0,0,0,0,0,0,'','',0,0,0,'','','',0,'4','0','','',1,0,'',0,'','',0,0,0,0,35,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',NULL,124,0,0,0,'right',0,'','0',0,0,'','','','',0,0,0,0,0),(36,30,0,0,0,'',0,0,0,0,0,42,1448314236,1448314236,1,0,0,4608,'header','Header 3. level (right-justified)',NULL,'',0,0,8,0,0,0,0,0,0,'','',0,0,0,'','','',0,'3','0','','',1,0,'',0,'','',0,0,0,0,36,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',NULL,124,0,0,0,'right',0,'','0',0,0,'','','','',0,0,0,0,0),(37,30,0,0,0,'',0,0,0,0,0,41,1448314236,1448314236,1,0,0,4352,'header','Header 2. level (right-justified)',NULL,'',0,0,8,0,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,37,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',NULL,124,0,0,0,'right',0,'','0',0,0,'','','','',0,0,0,0,0),(38,30,0,0,0,'',0,0,0,0,0,40,1448314236,1448314236,1,0,0,4096,'header','Header 1. level (right-justified)',NULL,'',0,0,8,0,0,0,0,0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,38,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',NULL,124,0,0,0,'right',0,'','0',0,0,'','','','',0,0,0,0,0),(39,30,0,0,0,'',0,0,0,0,0,44,1448314236,1448314236,1,0,0,3840,'header','Header 5. level (centered)',NULL,'',0,0,8,0,0,0,0,0,0,'','',0,0,0,'','','',0,'5','0','','',1,0,'',0,'','',0,0,0,0,39,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',NULL,124,0,0,0,'center',0,'','0',0,0,'','','','',0,0,0,0,0),(40,30,0,0,0,'',0,0,0,0,0,43,1448314236,1448314236,1,0,0,3584,'header','Header 4. level (centered)',NULL,'',0,0,8,0,0,0,0,0,0,'','',0,0,0,'','','',0,'4','0','','',1,0,'',0,'','',0,0,0,0,40,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',NULL,124,0,0,0,'center',0,'','0',0,0,'','','','',0,0,0,0,0),(41,30,0,0,0,'',0,0,0,0,0,42,1448314236,1448314236,1,0,0,3328,'header','Header 3. level (centered)',NULL,'',0,0,8,0,0,0,0,0,0,'','',0,0,0,'','','',0,'3','0','','',1,0,'',0,'','',0,0,0,0,41,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',NULL,124,0,0,0,'center',0,'','0',0,0,'','','','',0,0,0,0,0),(42,30,0,0,0,'',0,0,0,0,0,41,1448314236,1448314236,1,0,0,3072,'header','Header 2. level (centered)',NULL,'',0,0,8,0,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,42,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',NULL,124,0,0,0,'center',0,'','0',0,0,'','','','',0,0,0,0,0),(43,30,0,0,0,'',0,0,0,0,0,40,1448314236,1448314236,1,0,0,2816,'header','Header 1. level (centered)',NULL,'',0,0,8,0,0,0,0,0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,43,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',NULL,124,0,0,0,'center',0,'','0',0,0,'','','','',0,0,0,0,0),(44,30,0,0,0,'',0,0,0,0,0,44,1448314236,1448314236,1,0,0,2560,'header','Header 5. level (with link)',NULL,'',0,0,8,0,0,0,0,0,0,'','',0,0,0,'','','30',0,'5','0','','',1,0,'',0,'','',0,0,0,0,44,'','',0,'',0,'a:1:{s:11:\"header_link\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(45,30,0,0,0,'',0,0,0,0,0,43,1448314236,1448314236,1,0,0,2304,'header','Header 4. level (with link)',NULL,'',0,0,8,0,0,0,0,0,0,'','',0,0,0,'','','30',0,'4','0','','',1,0,'',0,'','',0,0,0,0,45,'','',0,'',0,'a:1:{s:11:\"header_link\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(46,30,0,0,0,'',0,0,0,0,0,42,1448314236,1448314236,1,0,0,2048,'header','Header 3. level (with link)',NULL,'',0,0,8,0,0,0,0,0,0,'','',0,0,0,'','','30',0,'3','0','','',1,0,'',0,'','',0,0,0,0,46,'','',0,'',0,'a:1:{s:11:\"header_link\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(47,30,0,0,0,'',0,0,0,0,0,41,1448314236,1448314236,1,0,0,1792,'header','Header 2 level (with link)',NULL,'',0,0,8,0,0,0,0,0,0,'','',0,0,0,'','','30',0,'2','0','','',1,0,'',0,'','',0,0,0,0,47,'','',0,'',0,'a:1:{s:11:\"header_link\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(48,30,0,0,0,'',0,0,0,0,0,40,1448314236,1448314236,1,0,0,1536,'header','Header 1. level (with link)',NULL,'',0,0,8,0,0,0,0,0,0,'','',0,0,0,'','','30',0,'0','0','','',1,0,'',0,'','',0,0,0,0,48,'','',0,'',0,'a:1:{s:11:\"header_link\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(49,30,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,1280,'header','Header 5 level',NULL,'',0,0,8,0,0,0,0,0,0,'','',0,0,0,'','','',0,'5','0','','',1,0,'',0,'','',0,0,0,0,49,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(50,30,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,1024,'header','Header 4. level',NULL,'',0,0,8,0,0,0,0,0,0,'','',0,0,0,'','','',0,'4','0','','',1,0,'',0,'','',0,0,0,0,50,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(51,30,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,768,'header','Header 3. level',NULL,'',0,0,8,0,0,0,0,0,0,'','',0,0,0,'','','',0,'3','0','','',1,0,'',0,'','',0,0,0,0,51,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(52,30,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,512,'header','Header 2. level',NULL,'',0,0,8,0,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,52,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(53,30,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,256,'header','Header 1. level',NULL,'',0,0,8,0,0,0,0,0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,53,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(54,30,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,128,'text','Full Control Over All Content Elements',NULL,'<p class=\"lead\">TYPO3 offers editors full control over all content elements; even simple content elements like headers are accompanied by several configuration options. Site administrators may, for example, predefine several different header layouts for editors to utilize across the site. </p>',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,54,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(61,29,0,0,0,'',0,0,0,0,0,69,1453668031,1448314236,1,0,0,1280,'textpic','Position: Above, center',NULL,' Nam aliquam, lorem nec dapibus feugiat, ipsum quam laoreet arcu, sed ullamcorper augue augue vitae magna. \r\nHambiam est lectus, interdum id, accumsan a, blandit quis, mauris placerat sit amet, nibh. Lacus lectus est mattis vel, pharetra sit amet. Nam laoreet, erat ac laoreet euismod, sapien felis pretium libero, semper euismod mauris metus quis tortor. ',1,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,61,'','',0,'',0,'a:23:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:5:\"image\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(62,29,0,0,0,'',0,0,0,0,0,66,1453667889,1448314236,1,0,0,1024,'textpic','Position:  Beside text, right',NULL,' Nam aliquam, lorem nec dapibus feugiat, ipsum quam laoreet arcu, sed ullamcorper augue augue vitae magna. \r\nHambiam est lectus, interdum id, accumsan a, blandit quis, mauris placerat sit amet, nibh. Lacus lectus est mattis vel, pharetra sit amet. Nam laoreet, erat ac laoreet euismod, sapien felis pretium libero, semper euismod mauris metus quis tortor. ',1,0,25,1,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,62,'','',0,'',0,'a:23:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:5:\"image\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(63,29,0,0,0,'',0,0,0,0,0,66,1453667829,1448314236,1,0,0,768,'textpic','Position: Beside text, left',NULL,' Nam aliquam, lorem nec dapibus feugiat, ipsum quam laoreet arcu, sed ullamcorper augue augue vitae magna. \r\nHambiam est lectus, interdum id, accumsan a, blandit quis, mauris placerat sit amet, nibh. Lacus lectus est mattis vel, pharetra sit amet. Nam laoreet, erat ac laoreet euismod, sapien felis pretium libero, semper euismod mauris metus quis tortor. ',1,0,26,1,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,63,'','',0,'',0,'a:23:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:5:\"image\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(66,29,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,128,'text','Easily Position Text and Images',NULL,'<p class=\"lead\">TYPO3 makes working with text and images a snap. TYPO3\'s text with image content element gives editors precise control over captions, alternative text attributes, image size and quality, and layout. TYPO3\'s core tools for manipulating images can automatically optimize image files uploaded by back-end editors to reduce file size and reduce the time required to load a page.</p>',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,66,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(68,28,0,0,0,'',0,0,0,0,0,76,1453668652,1448314236,1,0,0,128,'textpic','Images Linked to Internal and External Pages',NULL,'Each image can be linked using the link field in the back-end. Multiple links can be added by separating each link with a comma. Values entered into the link field can be&nbsp;page id, a URL, or an&nbsp;e-mail address.',2,0,0,2,0,0,0,0,0,'','',0,0,0,'','','',1,'2','0','','',1,0,'',0,'','',0,0,0,0,68,'','',0,'',0,'a:23:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:5:\"image\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(69,28,0,0,0,'',0,0,0,0,0,0,1453668352,1448314236,1,0,0,64,'textpic','Image Click-enlarge Functionality',NULL,'Check the &quot;click-enlarge&quot; checkbox in the back-end to allow users to click to show the full-size image.',2,0,0,2,0,0,0,0,0,'','',0,0,0,'','','',1,'2','0','','',1,0,'',0,'','',0,0,0,0,69,'','',0,'',0,'a:23:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:5:\"image\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(70,28,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,32,'text','No HTML Required',NULL,'<p class=\"lead\">With TYPO3, controlling the behavior of images is simple. Editors with no knowledge of HTML can easily manage&nbsp;links, popups, captions, alignment,&nbsp;and more.</p>',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,70,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(71,27,0,0,0,'',0,0,0,0,0,172,1448314236,1448314236,1,0,0,256,'shortcut','About these pages',NULL,'',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,71,NULL,'',0,'',0,'a:1:{s:7:\"records\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(74,27,0,0,0,'',0,0,0,0,0,83,1453667437,1448314236,1,0,0,32,'textpic','4 images in 4 columns, cropped to square',NULL,'',4,0,0,4,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,74,'','',0,'',0,'a:23:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:5:\"image\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(75,27,0,0,0,'',0,0,0,0,0,87,1453667248,1448314236,1,0,0,16,'textpic','6 images in 3 columns',NULL,'',6,0,0,3,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,75,'','',0,'',0,'a:23:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:5:\"image\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(76,27,0,0,0,'',0,0,0,0,0,0,1453667165,1448314236,1,0,0,8,'textpic','6 images in 6 columns',NULL,'',6,0,0,6,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,76,'','',0,'',0,'a:23:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:5:\"image\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(77,27,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,4,'text','Multiple Image Layout Options',NULL,'<p class=\"lead\">TYPO3 provides users with numerous possibilities for laying out images on a page. The back-end interface provides users with easy control over image formats, sizes, widths, groupings, and quality.</p>',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,77,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(96,39,0,0,0,'',0,0,0,0,0,0,1453667566,1448314236,1,0,0,128,'text','Tables',NULL,'<p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus tempor tellus vitae accumsan. Nulla aliquam tristique velit, at bibendum eros sagittis ut. Maecenas tincidunt neque ac augue convallis luctus. Quisque nulla arcu, euismod et neque fermentum, sollicitudin vestibulum dolor. In eget leo tincidunt, volutpat urna eu, suscipit odio. Quisque placerat porttitor iaculis. Cras non adipiscing ligula. Aenean egestas nisi eget nisi ultricies, non feugiat lectus blandit. Pellentesque non quam arcu.</p>',0,0,0,2,0,0,0,0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,96,NULL,'',0,'',0,'a:2:{s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(98,24,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,128,'text','Jumbotron',NULL,'Duis vitae ipsum et ante sollicitudin tincidunt a nec sem. Maecenas ultricies lacinia nunc at adipiscing? Nam ullamcorper commodo elit in euismod. Fusce nec varius tortor. Fusce justo diam, interdum quis egestas et, luctus a purus.',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,98,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',21,'','0',0,0,'','','','',0,0,0,0,0),(99,24,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,64,'text','Well',NULL,'Duis luctus, enim commodo auctor sodales, mi dui facilisis elit, a lobortis quam lacus nec velit. Nam pharetra, augue quis tristique consequat, arcu orci tincidunt dolor, et vehicula nulla risus vel nisi? Maecenas vel ligula lorem. Pellentesque ullamcorper dolor non justo faucibus eleifend. Sed nec sapien vel massa vulputate vehicula eget eu nisl. ',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,99,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',20,'','0',0,0,'','','','',0,0,0,0,0),(100,24,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,32,'text','Indent, 66/33%',NULL,'Proin rhoncus augue quis est eleifend consequat. Fusce varius vehicula feugiat. In quis ipsum neque. Sed venenatis risus diam. Praesent tincidunt lacinia pellentesque. Donec non justo eros, lacinia hendrerit est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas et urna sed lorem venenatis tempor quis vel eros? Proin pellentesque ultricies enim sed aliquet. ',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,100,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',12,'','0',0,0,'','','','',0,0,0,0,0),(101,24,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,16,'text','Indent, 33/66%',NULL,'Mauris magna nisl, dapibus dapibus faucibus ultrices, congue vehicula ligula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque ac quam sed odio blandit commodo! Vivamus dui urna, volutpat nec ultrices in, consectetur vitae sapien. Nulla facilisi.',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,101,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',11,'','0',0,0,'','','','',0,0,0,0,0),(102,24,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,8,'text','Indent',NULL,'Donec volutpat pulvinar enim tincidunt sagittis. Duis rutrum enim leo. Maecenas euismod congue blandit? Aliquam et auctor sapien. Phasellus ut pellentesque tellus. Sed ac libero vitae quam porttitor viverra. Nullam neque libero, luctus suscipit ultricies in, tincidunt ac justo?',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,102,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',10,'','0',0,0,'','','','',0,0,0,0,0),(103,24,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,4,'text','Ruler after',NULL,'Here the ruler is positioned after the element.',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,103,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',6,'','0',0,0,'','','','',0,0,0,0,0),(104,24,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,2,'text','Ruler before',NULL,'You can set a rulers before or after each content element.',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,104,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',5,'','0',0,0,'','','','',0,0,0,0,0),(105,24,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,1,'text','Content-specific Layouts',NULL,'<p class=\"lead\">Frames are centrally configured layouts for different content elements. Frames can be used, for example, to allow a content editor to apply a specific background image and/or color to specific content elements throughout the website.</p>',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,105,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(111,38,0,0,0,'',0,0,0,0,0,0,1453668840,1448314236,1,0,0,128,'text','Multiple Layouts for Standard Content Types',NULL,'<p class=\"lead\">Ordered and unordered lists are available in TYPO3&nbsp;as a standard content element.&nbsp;Users are able to create multiple&nbsp;predefined list layouts, which help to ensure site-wide visual consistency.</p>',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,111,NULL,'',0,'',0,'a:2:{s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(113,22,0,0,0,'',0,0,0,0,0,111,1453669181,1448314236,1,0,0,128,'uploads','Download with preview, filesize and description',NULL,'',0,0,0,0,0,0,2,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'2',1,'','',0,0,0,0,113,'','',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:5:\"media\";N;s:16:\"file_collections\";N;s:16:\"filelink_sorting\";N;s:6:\"target\";N;s:13:\"filelink_size\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(114,22,0,0,0,'',0,0,0,0,0,111,1453669149,1448314236,1,0,0,64,'uploads','Download with icon, filesize and description',NULL,'',0,0,0,0,0,0,1,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'2',1,'','',0,0,0,0,114,'','',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:5:\"media\";N;s:16:\"file_collections\";N;s:16:\"filelink_sorting\";N;s:6:\"target\";N;s:13:\"filelink_size\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(115,22,0,0,0,'',0,0,0,0,0,109,1453669137,1448314236,1,0,0,32,'uploads','Download with icon and filesize',NULL,'',0,0,0,0,0,0,1,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'2',1,'','',0,0,0,0,115,'','',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:5:\"media\";N;s:16:\"file_collections\";N;s:16:\"filelink_sorting\";N;s:6:\"target\";N;s:13:\"filelink_size\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(116,22,0,0,0,'',0,0,0,0,0,109,1453669112,1448314236,1,0,0,16,'uploads','Download with icon, no filesize',NULL,'',0,0,0,0,0,0,1,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'2',0,'','',0,0,0,0,116,'','',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:5:\"media\";N;s:16:\"file_collections\";N;s:16:\"filelink_sorting\";N;s:6:\"target\";N;s:13:\"filelink_size\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(117,22,0,0,0,'',0,0,0,0,0,0,1453669097,1448314236,1,0,0,8,'uploads','Download no icon, no filesize',NULL,'',0,0,0,0,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'2',0,'','_blank',0,0,0,0,117,'','',0,'',0,'a:22:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:5:\"media\";N;s:16:\"file_collections\";N;s:16:\"filelink_sorting\";N;s:6:\"target\";N;s:13:\"filelink_size\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(118,22,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,4,'text','File Downloads',NULL,'<p class=\"lead\">Proin faucibus nisl posuere dui fringilla, et lobortis est dictum. Donec erat libero, auctor at ligula in, facilisis rhoncus nulla. Fusce tristique eget elit nec accumsan. Nulla tristique, orci tempor posuere imperdiet, quam ipsum fringilla enim, ac malesuada velit orci eget nisl.</p>',0,0,0,2,0,0,0,0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,118,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(120,21,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,128,'mailform','Contactform',NULL,'prefix = tx_form\r\nconfirmation = \r\npostProcessor {\r\n	1 = mail\r\n	1 {\r\n		recipientEmail = \r\n		senderEmail = \r\n	}\r\n}\r\n10 = FIELDSET\r\n10 {\r\n	10 = TEXTLINE\r\n	10 {\r\n		name = name\r\n		label {\r\n			value = Name\r\n		}\r\n	}\r\n	20 = TEXTLINE\r\n	20 {\r\n		name = email\r\n		label {\r\n			value = E-Mail\r\n		}\r\n	}\r\n	30 = TEXTAREA\r\n	30 {\r\n		cols = 40\r\n		rows = 5\r\n		name = enquiry\r\n		label {\r\n			value = Your enquiry\r\n		}\r\n	}\r\n	40 = CHECKBOX\r\n	40 {\r\n		name = get-in-touch\r\n		value = yes\r\n		label {\r\n			value = Do you want us to get in touch?\r\n		}\r\n	}\r\n	50 = SUBMIT\r\n	50 {\r\n		name = submit\r\n		value = Send Feedback\r\n	}\r\n}\r\nrules {\r\n	1 = required\r\n	1 {\r\n		breakOnError = 0\r\n		showMessage = 1\r\n		message = *\r\n		error = This field is required\r\n		element = name\r\n	}\r\n	2 = required\r\n	2 {\r\n		breakOnError = 0\r\n		showMessage = 1\r\n		message = *\r\n		error = This field is required\r\n		element = email\r\n	}\r\n	3 = email\r\n	3 {\r\n		breakOnError = 0\r\n		showMessage = \r\n		message = (john.doe@domain.com)\r\n		error = This is not a valid email address\r\n		element = email\r\n	}\r\n	4 = required\r\n	4 {\r\n		breakOnError = 0\r\n		showMessage = 1\r\n		message = *\r\n		error = This field is required\r\n		element = enquiry\r\n	}\r\n}\r\n',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,120,NULL,'',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(122,21,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,32,'text','Powerful Form Handling',NULL,'<p class=\"lead\">Setting up a contact or mail form is very easy. The layout of forms is handled centrally, which allows editors to focus on the content of the form.</p>',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,122,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(159,2,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,256,'menu','Sitemap',NULL,NULL,0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'2','2','','',1,0,'',0,'','',0,0,0,0,159,NULL,'',0,'',0,'a:1:{s:5:\"pages\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(160,2,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,128,'text','Page not found',NULL,'<p class=\"lead\"><span id=\"result_box\">The page you were looking for cannot be found. </span>You may have followed a bad link or mis-typed an URL<span id=\"result_box\">. </span>Possibly the page has been moved, discarded or is from the past. Our apologies.<br /><br /></p>',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'0','0','','',1,0,'',0,'','',0,0,0,0,160,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(161,2,0,0,0,'',0,0,0,0,0,0,1448314236,1448314236,1,0,0,64,'text','What to do',NULL,'<p class=\"csc-frame-frame1\">The information might still be available.<br />You can try to look for  the information in the sitemap at this page. <br /><br />Also you can  try the <LINK 1 - \"internal-link\" \"Opens internal link in current window\">search</link>.</p>',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,161,NULL,'',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(162,1,0,0,0,'',0,0,0,0,0,0,1453664947,1448314236,1,0,0,3328,'text','Powered by',NULL,'<ul class=\"list-unstyled\"><li><link http://typo3.org/ - - \"TYPO3 Open Source CMS\"><strong>TYPO3</strong> Enterprise Open Source CMS</link></li></ul>\r\n<ul class=\"list-unstyled\"></ul>',0,0,0,1,0,0,0,0,0,'','',0,0,11,'','','',0,'3','0','','',1,0,'',0,'','',0,0,0,0,162,NULL,'',0,'',0,'a:19:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(163,1,0,0,0,'',0,0,0,0,0,0,1453665362,1448314236,1,0,0,3072,'text','Social Networks',NULL,'<ul class=\"list-unstyled\"> <li><link http://twitter.com/BootstrapTYPO3/ - - \"Link to Twitter\">Twitter</link></li> </ul>',0,0,0,3,0,0,0,0,0,'','',0,0,12,'','','',0,'3','0','','',1,0,'',0,'','',0,0,0,0,163,NULL,'',0,'',0,'a:19:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(164,1,0,0,0,'',0,0,0,0,0,0,1453664922,1448314236,1,0,0,2816,'text','Related Links',NULL,'<link https://github.com/benjaminkott/bootstrap_package - - GitHub>Github</link>',0,0,0,1,0,0,0,0,0,'','',0,0,10,'','','',0,'3','0','','',1,0,'',0,'','',0,0,0,0,164,NULL,'',0,'',0,'a:19:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(165,1,0,0,0,'',0,0,0,0,0,0,1453576755,1448314236,1,0,0,2560,'bootstrap_package_texticon','Test the CMS',NULL,'<p class=\"text-center lead\">Explore TYPO3 CMS backend and the limitless possibilities of TYPO3 CMS by using one of the predefined users with different levels of access.</p>\r\n<p class=\"text-center\"><link http://###BACKEND_URL###/ - \"btn btn-primary\" btn-primary>Log into TYPO3</link></p>',0,0,0,2,0,0,0,0,0,'','',0,0,22,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,165,NULL,'',0,'',0,'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:13:\"icon_position\";N;s:9:\"icon_type\";N;s:9:\"icon_size\";N;s:10:\"icon_color\";N;s:15:\"icon_background\";N;s:4:\"icon\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'center',0,'plane','top',1,2,'#ffffff','#333333','','',0,0,0,0,0),(166,1,0,0,0,'',0,0,0,0,0,0,1453576796,1448314236,1,0,0,2304,'bootstrap_package_texticon','Example Pages',NULL,'<p class=\"text-center lead\">To help get you started with TYPO3 CMS, we’ve included usage examples of the standard content elements that have made TYPO3 CMS so popular.</p>\r\n<p class=\"text-center\"><link 14 - \"btn btn-primary\" btn-primary>Examples</link></p>',0,0,0,2,0,0,0,0,0,'','',0,0,21,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,166,NULL,'',0,'',0,'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:13:\"icon_position\";N;s:9:\"icon_type\";N;s:9:\"icon_size\";N;s:10:\"icon_color\";N;s:15:\"icon_background\";N;s:4:\"icon\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'center',0,'list-alt','top',1,2,'#ffffff','#333333','','',0,0,0,0,0),(167,1,0,0,0,'',0,0,0,0,0,0,1453576911,1448314236,1,0,0,2048,'bootstrap_package_texticon','Start browsing',NULL,'<p class=\"text-center lead\">Grab a cup of coffee and start browsing to learn why TYPO3 CMS is the most powerful open source content management system.</p>\r\n<p class=\"text-center\"><link 35 - \"btn btn-primary\" btn-primary>Features</link> <link 34 - \"btn btn-primary\" btn-primary>Customizing</link></p>',0,0,0,2,0,0,0,0,0,'','',0,0,20,'','','',0,'2','0','','',1,1,'',0,'','',0,0,0,0,167,NULL,'',0,'',0,'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:13:\"icon_position\";N;s:9:\"icon_type\";N;s:9:\"icon_size\";N;s:10:\"icon_color\";N;s:15:\"icon_background\";N;s:4:\"icon\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'center',0,'globe','top',1,2,'#ffffff','#333333','','',0,0,0,0,0),(168,1,0,0,0,'',0,0,0,0,0,0,1453577334,1448314236,1,0,0,1024,'textpic','Make it your own',NULL,'<p class=\"lead\">This distribution is developed to help you getting an easy entry into TYPO3 CMS. It can be used as an example to play around or to kickstart your own projects.</p>\r\nIncluded features of the Introduction Package\r\n<ul><li>TYPO3 CMS custom theme for Twitter Bootstrap</li><li>Customize the theme via LESS editor backend module</li><li>All Content Elements mapped to fit Twitter Bootstrap</li><li>Example additional content elements for carousel and accordion</li><li>All settings editable via the TypoScript constant editor</li><li>Responsive images enabled</li></ul>',1,0,25,1,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,1,'',0,'','',0,0,0,0,168,NULL,'',0,'',0,'a:23:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:5:\"image\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'tint','left',0,0,'','','','',0,0,0,0,0),(170,1,0,0,0,'',0,0,0,0,0,0,1453577191,1448314236,1,0,0,512,'bootstrap_package_carousel','Startpage Teaser',NULL,NULL,0,0,0,2,0,0,100,0,0,'','',0,0,3,'','','',0,'100','0','','',1,1,'',0,'','',0,0,0,0,170,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"interval\">\n                    <value index=\"vDEF\">5000</value>\n                </field>\n                <field index=\"background_image_maxwidth\">\n                    <value index=\"vDEF\">1920</value>\n                </field>\n                <field index=\"wrap\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:18:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:11:\"header_link\";N;s:33:\"tx_bootstrappackage_carousel_item\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','',0,0,'','','','',1,0,0,0,0),(176,38,0,0,0,'',0,0,0,0,0,0,1449164403,1449082816,1,0,0,256,'bullets','Unordered','','Quisque pulvinar dolor sed tempor porta.\r\nUt a erat rhoncus, vulputate ligula ut, tincidunt nisl.\r\nDuis id arcu vitae nibh ultricies faucibus.\r\nMorbi sit amet risus pulvinar, lacinia orci suscipit, tempor orci.\r\nNulla quis est nec mauris pellentesque hendrerit.',0,0,0,2,0,0,100,0,0,NULL,NULL,0,0,0,'','','',0,'3','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(177,38,0,0,0,'',0,0,0,0,0,0,1449083064,1449083064,1,0,0,512,'bullets','Ordered','','Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\nMaecenas quis leo suscipit, volutpat felis eu, aliquet velit.\r\nPellentesque nec neque quis urna tristique pretium id sed justo.\r\nPhasellus consequat ligula in elit semper consectetur.\r\nQuisque porttitor arcu in neque pellentesque accumsan.',0,0,0,2,0,0,110,0,0,NULL,NULL,0,0,0,'','','',0,'3','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(178,38,0,0,0,'',0,0,0,0,0,0,1449083173,1449083125,1,0,0,768,'bullets','Unstyled','','Integer efficitur risus eu nunc maximus aliquet.\r\nVivamus hendrerit lectus quis neque scelerisque aliquam.\r\nDonec egestas nulla eleifend nibh condimentum, sit amet porta ipsum euismod.\r\nMaecenas dictum quam in pharetra aliquet.\r\nMaecenas vel arcu vel diam facilisis suscipit.\r\nInteger at justo gravida, commodo felis vel, maximus eros.',0,0,0,2,0,0,120,0,0,NULL,NULL,0,0,0,'','','',0,'3','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(179,38,0,0,0,'',0,0,0,0,0,0,1449083267,1449083230,1,0,0,1024,'bullets','Inline','','Duis imperdiet\r\nFelis vitae tortor\r\nPharetra et rhoncus',0,0,0,2,0,0,130,0,0,NULL,NULL,0,0,0,'','','',0,'3','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(180,39,0,0,0,'',0,0,0,0,0,0,1449175946,1449083469,1,0,0,256,'table','Basic','','Title 1|Title 2|Title 3\r\nRow 1|Row 1|Row 1\r\nRow 2|Row 2|Row 2\r\nRow 3|Row 3|Row 3\r\nRow 4|Row 4|Row 4',0,0,0,2,0,0,110,0,0,NULL,NULL,0,0,0,'','','',0,'3','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"acctables_caption\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"acctables_summary\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"acctables_tfoot\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"acctables_headerpos\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"acctables_nostyles\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"acctables_tableclass\">\n                    <value index=\"vDEF\">table</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_parsing\">\n            <language index=\"lDEF\">\n                <field index=\"tableparsing_quote\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"tableparsing_delimiter\">\n                    <value index=\"vDEF\">124</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'','Caption',124,0,1,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(181,40,0,0,0,'',0,0,0,0,0,0,1453667780,1449096648,1,0,0,256,'bootstrap_package_tab','Tab',NULL,NULL,0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'3','0','','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"default_tab\">\n                    <value index=\"vDEF\">3</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:18:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:11:\"header_link\";N;s:28:\"tx_bootstrappackage_tab_item\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;}',NULL,'',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,3,0,0),(183,39,0,0,0,'',0,0,0,0,0,0,1450007106,1449175921,1,0,0,512,'table','Striped rows','','Title 1|Title 2|Title 3\r\nRow 1|Row 1|Row 1\r\nRow 2|Row 2|Row 2\r\nRow 3|Row 3|Row 3\r\nRow 4|Row 4|Row 4',0,0,0,2,0,0,120,0,0,NULL,NULL,0,0,0,'','','',0,'3','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'','Caption',124,0,1,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(184,39,0,0,0,'',0,0,0,0,0,0,1450007118,1449175981,1,0,0,768,'table','Bordered','','Title 1|Title 2|Title 3\r\nRow 1|Row 1|Row 1\r\nRow 2|Row 2|Row 2\r\nRow 3|Row 3|Row 3\r\nRow 4|Row 4|Row 4',0,0,0,2,0,0,130,0,0,NULL,NULL,0,0,0,'','','',0,'3','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'','Caption',124,0,1,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(190,42,0,0,0,'',0,0,0,0,0,0,1453577895,1449691214,1,0,0,256,'menu','0 - Menu of selected pages','',NULL,0,0,0,2,0,0,0,0,0,NULL,'1',0,0,0,'','','',0,'4','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}',NULL,'',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,1,0),(191,42,0,0,0,'',0,0,0,0,0,0,1453577894,1449785168,1,0,0,512,'menu','1 - Menu of subpages of selected pages','',NULL,0,0,0,2,0,0,0,0,0,NULL,'1,14',0,0,0,'','','',0,'4','1','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}',NULL,'',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,1,0),(192,42,0,0,0,'',0,0,0,0,0,0,1453577893,1449786079,1,0,0,768,'menu','2 - Sitemap','',NULL,0,0,0,2,0,0,0,0,0,NULL,'1',0,0,0,'','','',0,'4','2','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}',NULL,'',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(193,42,0,0,0,'',0,0,0,0,0,0,1453577902,1449786287,1,0,0,1024,'menu','3 - Section index (page content marked for section menus)','',NULL,0,0,0,2,0,0,0,0,0,NULL,'35,34',0,0,0,'','','',0,'4','3','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}',NULL,'',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(194,42,0,0,0,'',0,0,0,0,0,0,1453577903,1449788002,1,0,0,1280,'menu','4 - Menu of subpages of selected pages including abstracts','',NULL,0,0,0,2,0,0,0,0,0,NULL,'1',0,0,0,'','','',0,'4','4','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}',NULL,'',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(195,42,0,0,0,'',0,0,0,0,0,0,1453577904,1449917892,1,0,0,1536,'menu','5 - Recently updated pages','',NULL,0,0,0,2,0,0,0,0,0,NULL,'1',0,0,0,'','','',0,'4','5','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}',NULL,'',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(196,42,0,0,0,'',0,0,0,0,0,0,1453577909,1449918383,1,0,0,1792,'menu','6 - Related pages (based on keywords)','',NULL,0,0,0,2,0,0,0,0,0,NULL,'',0,0,0,'','','',0,'4','6','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}',NULL,'',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(197,42,0,0,0,'',0,0,0,0,0,0,1453577910,1449918824,1,0,0,2048,'menu','7 - Menu of subpages of selected pages including sections','',NULL,0,0,0,2,0,0,0,0,0,NULL,'1,14',0,0,0,'','','',0,'4','7','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}',NULL,'',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(198,42,0,0,0,'',0,0,0,0,0,0,1453577911,1449919059,1,0,0,2304,'menu','8 - Sitemaps of selected pages','',NULL,0,0,0,2,0,0,0,0,0,NULL,'14',0,0,0,'','','',0,'4','8','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}',NULL,'',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(199,42,0,0,0,'',0,0,0,0,0,0,1453577890,1449919225,1,0,0,2560,'menu','categorized_pages - Pages for selected categories','',NULL,0,0,0,2,0,0,0,0,0,NULL,'',0,0,0,'','','',0,'4','categorized_pages','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}','1','categories',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(200,42,0,0,0,'',0,0,0,0,0,0,1453577889,1449933068,1,0,0,2816,'menu','categorized_content - Content elements for selected categories','',NULL,0,0,0,2,0,0,0,0,0,NULL,'',0,0,0,'','','',0,'4','categorized_content','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}','1,2','categories',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(201,42,0,0,0,'',0,0,0,0,0,0,1450302143,1449946452,1,0,0,3072,'menu','thumbnail_dir - Display subpages as thumbnails','',NULL,0,0,0,2,0,0,0,0,0,NULL,'16',0,0,0,'','','',0,'4','thumbnail_dir','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(202,42,0,0,0,'',0,0,0,0,0,0,1453577881,1449948291,1,0,0,3328,'menu','thumbnail_list - Display selected pages as thumbnail','',NULL,0,0,0,2,0,0,0,0,0,NULL,'19,18,17',0,0,0,'','','',0,'4','thumbnail_list','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:1:{s:6:\"hidden\";N;}',NULL,'',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(204,43,0,0,0,'',0,0,0,0,0,0,1453577962,1449964116,1,0,0,256,'html','Plain HTML','','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/iKHTawgyKWQ\" frameborder=\"0\" allowfullscreen></iframe>',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:15:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}',NULL,'',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(205,44,0,0,0,'',0,0,0,0,0,0,1449967703,1449967635,1,0,0,256,'shortcut','Insert Records','',NULL,0,0,0,2,0,0,0,0,0,'176,180',NULL,0,0,0,'','','',0,'1','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(208,46,0,0,0,'',0,0,0,0,0,0,1449972038,1449972034,1,0,0,256,'div','DIVIDER','',NULL,0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'1','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(210,47,0,0,0,'',0,0,0,0,0,120,1450002753,1449972234,1,0,0,128,'mailform','Contactform',NULL,'method = post\nprefix = tx_form\nconfirmation = 1\npostProcessor {\n	1 = mail\n	1 {\n		recipientEmail = \n		senderEmail = \n	}\n	2 = redirect\n	2 {\n		destination = \n	}\n}\n10 = FIELDSET\n10 {\n	10 = TEXTLINE\n	10 {\n		type = text\n		name = name\n		label {\n			value = Name\n		}\n	}\n	20 = TEXTLINE\n	20 {\n		type = text\n		name = email\n		label {\n			value = E-Mail\n		}\n	}\n	30 = TEXTAREA\n	30 {\n		cols = 40\n		rows = 5\n		name = enquiry\n		label {\n			value = Your enquiry\n		}\n	}\n	40 = CHECKBOX\n	40 {\n		type = checkbox\n		name = get-in-touch\n		value = yes\n		label {\n			value = Do you want us to get in touch?\n		}\n	}\n	50 = SUBMIT\n	50 {\n		type = submit\n		name = submit\n		value = Send Feedback\n	}\n}\nrules {\n	1 = required\n	1 {\n		breakOnError = 0\n		showMessage = 1\n		message = *\n		error = This field is required\n		element = name\n	}\n	2 = required\n	2 {\n		breakOnError = 0\n		showMessage = 1\n		message = *\n		error = This field is required\n		element = email\n	}\n	3 = email\n	3 {\n		breakOnError = 0\n		showMessage = \n		message = (john.doe@domain.com)\n		error = This is not a valid email address\n		element = email\n	}\n	4 = required\n	4 {\n		breakOnError = 0\n		showMessage = 1\n		message = *\n		error = This field is required\n		element = enquiry\n	}\n}\n',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,120,NULL,'',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(211,31,0,0,0,'',0,0,0,0,0,0,1450006436,1450005863,1,0,0,192,'text','Tables','','<table class=\"table-bordered\"><thead><tr><th>#</th><th>FirstName</th><th>LastName</th><th>Username</th></tr></thead><tbody><tr><td>1</td><td>Mark<span class=\"Apple-tab-span\">	</span></td><td>Otto</td><td>@mdo</td></tr><tr><td>2</td><td>Jacob</td><td>Thornton</td><td>@fat</td></tr><tr><td>3</td><td>Larry</td><td>the Bird</td><td>@twitter</td></tr></tbody></table>',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'4','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0),(212,48,0,0,0,'',0,0,0,0,0,0,1453641353,1450007993,1,0,0,256,'textmedia','Text And Media','','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et tortor tincidunt, condimentum risus non, ornare lacus. Ut suscipit pellentesque nulla a viverra. Nulla pretium tincidunt imperdiet. Donec mollis tortor vitae euismod tristique. Vivamus arcu dui, pharetra ac tortor in, posuere blandit sapien. Ut lacinia, sem a pulvinar vestibulum, enim mi ultrices ipsum, vel interdum mi odio sed nisi. Sed eleifend posuere dictum. Vestibulum eu eros est. Sed nec turpis eu elit vestibulum sagittis nec nec massa. Etiam dignissim purus id magna facilisis facilisis.\r\nNullam nisl mauris, vulputate et aliquam in, euismod at velit. Pellentesque sagittis bibendum justo, in congue lectus aliquam et. Aliquam pretium odio vitae lectus finibus, id mollis neque suscipit. Proin vel rhoncus nulla, sit amet vehicula erat. Proin erat elit, rhoncus in commodo tristique, aliquet nec orci. In cursus accumsan nisi eget interdum. Sed egestas, quam id euismod vestibulum, tortor sem maximus augue, vel congue sem massa ut lorem. Donec mollis a augue vel viverra. Proin nec est vitae massa auctor tempor. Phasellus varius porttitor neque, non fringilla neque bibendum ac. Vestibulum et felis pellentesque, tincidunt ante in, euismod diam. Etiam id justo ultrices, eleifend purus at, venenatis metus. Nunc et lacinia velit, vitae volutpat nibh. Vestibulum non urna magna. In hac habitasse platea dictumst.\r\nQuisque pulvinar tellus non dolor cursus euismod. Cras tempor venenatis enim vitae vestibulum. Ut id eros luctus, consequat ipsum placerat, posuere mauris. Donec posuere vitae arcu aliquam fringilla. Curabitur facilisis diam a vehicula lobortis. Ut ut est ante. Pellentesque vehicula cursus neque.',0,0,26,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',1,'4','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:23:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:6:\"assets\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}',NULL,'',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,1),(216,29,0,0,0,'',0,0,0,0,0,61,1453668123,1453668078,1,0,0,2048,'textpic','Position: Below, center',NULL,' Nam aliquam, lorem nec dapibus feugiat, ipsum quam laoreet arcu, sed ullamcorper augue augue vitae magna. \r\nHambiam est lectus, interdum id, accumsan a, blandit quis, mauris placerat sit amet, nibh. Lacus lectus est mattis vel, pharetra sit amet. Nam laoreet, erat ac laoreet euismod, sapien felis pretium libero, semper euismod mauris metus quis tortor. ',1,0,8,1,0,0,0,0,0,'','',0,0,0,'','','',0,'2','0','','',1,0,'',0,'','',0,0,0,0,61,'','',0,'',0,'a:23:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:5:\"image\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}','','',NULL,124,0,0,0,'',0,'','0',0,0,'','','','',0,0,0,0,0),(217,42,0,0,0,'',0,0,0,0,0,0,1453669269,1453669256,1,0,0,128,'text','Dynamic Site Maps','','In addition to generating basic site maps based on the structure of the page tree, TYPO3 is able to build advanced site maps such as a key-word based site map of related pages. ',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'1','0','','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'a:19:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}',NULL,'',NULL,124,0,0,0,'',0,'','',0,0,'#FFFFFF','#333333','','',0,0,0,0,0);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_accordion_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_accordion_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_accordion_item` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tt_content` int(11) unsigned DEFAULT '0',
  `header` varchar(255) NOT NULL DEFAULT '',
  `bodytext` text NOT NULL,
  `media` int(11) unsigned DEFAULT '0',
  `mediaorient` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_accordion_item`
--

LOCK TABLES `tx_bootstrappackage_accordion_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_accordion_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bootstrappackage_accordion_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_carousel_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_carousel_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_carousel_item` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tt_content` int(11) unsigned DEFAULT '0',
  `item_type` varchar(255) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `header_layout` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `bodytext` text NOT NULL,
  `image` int(11) unsigned DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '',
  `text_color` varchar(255) NOT NULL DEFAULT '',
  `background_color` varchar(255) NOT NULL DEFAULT '',
  `background_image` int(11) unsigned DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_carousel_item`
--

LOCK TABLES `tx_bootstrappackage_carousel_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_carousel_item` DISABLE KEYS */;
INSERT INTO `tx_bootstrappackage_carousel_item` VALUES (1,1,170,'header','Let us introduce you to TYPO3,  the leading Open Source CMS at  Enterprise level.',1,'',0,'','#FFFFFF','#333333',1,1453577191,1448314236,1,0,0,0,0,0,0,0,'',0,0,0,0,0,1,0,0,0,'a:1:{s:6:\"hidden\";N;}');
/*!40000 ALTER TABLE `tx_bootstrappackage_carousel_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_tab_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_tab_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_tab_item` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tt_content` int(11) unsigned DEFAULT '0',
  `header` varchar(255) NOT NULL DEFAULT '',
  `bodytext` text NOT NULL,
  `media` int(11) unsigned DEFAULT '0',
  `mediaorient` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_tab_item`
--

LOCK TABLES `tx_bootstrappackage_tab_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_tab_item` DISABLE KEYS */;
INSERT INTO `tx_bootstrappackage_tab_item` VALUES (3,40,181,'Media position: Left, YouTube','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare purus nec lacus blandit facilisis. Aenean vestibulum, dolor sit amet mattis vestibulum, sem tortor efficitur felis, sit amet varius libero libero vitae diam. Aenean orci velit, blandit ac tempus et, tincidunt ut tortor. Vivamus tincidunt arcu quis fermentum vestibulum. Quisque porttitor enim eget tellus venenatis, id sodales eros tincidunt. Aliquam in justo magna. Vestibulum aliquet, nulla vitae porttitor dignissim, urna est dictum nisl, in iaculis massa enim ac elit. Praesent velit justo, blandit et nibh vitae, gravida convallis ante. Etiam ac lacus fringilla, fermentum purus eu, porta lorem. Nullam non felis sed velit tempor rutrum vitae auctor arcu.\r\nDuis ut congue arcu, sit amet cursus nisl. Mauris bibendum diam nisl, in dignissim nulla interdum et. Suspendisse quam massa, gravida sit amet efficitur non, gravida non risus. Nulla auctor, purus feugiat commodo interdum, velit tellus mattis nibh, non aliquam tellus turpis aliquet lectus. Cras blandit est at ex vulputate, et imperdiet libero commodo. Curabitur et odio nulla. In posuere massa a ultrices facilisis. Suspendisse ac risus at erat bibendum tempus mollis sed dolor. Phasellus nec maximus est. Sed semper augue facilisis mi commodo ultricies. Suspendisse lacinia vulputate fermentum. Vivamus in cursus sapien. Maecenas dolor enim, vulputate pulvinar urna ac, fermentum semper felis. In lacinia ligula lorem, non vulputate tellus vulputate in. Vivamus sed nunc scelerisque dolor imperdiet tincidunt. Phasellus vel massa ac sem consectetur condimentum eu at tellus.',1,0,1453577758,1449096648,1,0,0,0,0,0,0,0,'',0,0,0,0,0,1,0,0,0,'a:1:{s:6:\"hidden\";N;}'),(4,40,181,'Media position: Left, Image','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus auctor, lacus id finibus volutpat, tortor nibh tempor quam, sed maximus dolor diam non elit. Ut lacus tortor, interdum eget sem nec, fringilla ornare mauris. Aliquam et tincidunt eros. Mauris a hendrerit velit. Vivamus auctor sem augue, a tristique libero aliquam sit amet. Suspendisse sollicitudin lacus pretium sapien pharetra, ut aliquam orci fermentum. In hac habitasse platea dictumst. Vestibulum sollicitudin ac nisi a mollis. In efficitur hendrerit ipsum id accumsan. Proin dictum, libero vitae interdum tincidunt, metus quam elementum dolor, id sodales sapien metus vel nulla. Nulla tellus ligula, dignissim lobortis viverra vitae, suscipit et nisl. Curabitur in tellus in augue sodales finibus non eget lacus.\r\nAenean eget urna at diam tincidunt cursus. Quisque ornare dictum imperdiet. Ut finibus, tellus a interdum varius, arcu eros rutrum orci, eu elementum tellus tellus nec mauris. Sed condimentum fringilla magna in maximus. Fusce aliquam est quis tellus convallis tristique. Phasellus euismod tincidunt accumsan. Pellentesque suscipit imperdiet mauris, id maximus ex vehicula eu. Integer ac ipsum nisl. Ut ut vestibulum ex. Duis nec condimentum nunc. Curabitur finibus tortor sit amet magna luctus consequat. Nullam at leo enim. Donec malesuada ipsum enim, at viverra velit rhoncus ut. Duis condimentum erat ornare odio rhoncus placerat. Sed maximus libero eu hendrerit aliquet. Pellentesque eleifend arcu libero, quis convallis urna bibendum non.',1,0,1453667669,1449096669,1,0,0,0,0,0,0,0,'',0,0,0,0,0,2,0,0,0,'a:7:{s:6:\"header\";N;s:8:\"bodytext\";N;s:5:\"media\";N;s:11:\"mediaorient\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}'),(5,40,181,'Media position: Right, Image','Mauris a ante placerat, consequat nunc eget, fermentum tellus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam non ligula a ligula suscipit efficitur ut in leo. Mauris aliquam risus quis congue pharetra. Sed eget orci vitae urna tempor bibendum id at leo. Ut sodales ex in nunc volutpat, vitae placerat urna posuere. Praesent tincidunt pretium lorem, interdum ultricies nibh feugiat a. Mauris facilisis ac enim pretium ullamcorper. Vivamus eget luctus arcu. Duis vel purus aliquet, condimentum felis sit amet, venenatis mi. Etiam quis luctus dui, non mollis metus. Sed hendrerit dictum lorem, sed eleifend felis congue non. Nunc et erat quam.\r\nCras lectus mi, vehicula in lectus at, rutrum convallis quam. Fusce quis semper ante. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean venenatis, neque in ultricies congue, ipsum mi scelerisque quam, in dictum metus erat vitae ex. Vestibulum rhoncus velit luctus luctus scelerisque. Pellentesque pulvinar lorem non mauris consequat, nec molestie nisi maximus. Nullam sagittis tincidunt purus eget venenatis. Nulla porttitor neque ex, ac scelerisque libero vehicula in. Nullam at felis ut justo malesuada euismod. Sed velit purus, volutpat eu pellentesque vel, cursus ut neque. Aenean velit mauris, scelerisque nec tincidunt vitae, porta eu eros. Nunc fermentum tincidunt massa, non blandit mauris dignissim vitae. Nulla ultricies blandit metus, quis dictum nunc dictum ac. Maecenas a nibh tincidunt magna ultrices fringilla.',1,0,1453577758,1449096697,1,0,0,0,0,0,0,0,'',0,0,0,0,0,3,0,0,0,'a:7:{s:6:\"header\";N;s:8:\"bodytext\";N;s:5:\"media\";N;s:11:\"mediaorient\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}');
/*!40000 ALTER TABLE `tx_bootstrappackage_tab_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_key` varchar(60) NOT NULL DEFAULT '',
  `repository` int(11) unsigned NOT NULL DEFAULT '1',
  `version` varchar(15) NOT NULL DEFAULT '',
  `alldownloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `downloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext,
  `state` int(4) NOT NULL DEFAULT '0',
  `review_state` int(4) NOT NULL DEFAULT '0',
  `category` int(4) NOT NULL DEFAULT '0',
  `last_updated` int(11) unsigned NOT NULL DEFAULT '0',
  `serialized_dependencies` mediumtext,
  `author_name` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `ownerusername` varchar(50) NOT NULL DEFAULT '',
  `md5hash` varchar(35) NOT NULL DEFAULT '',
  `update_comment` mediumtext,
  `authorcompany` varchar(255) NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT '0',
  `current_version` int(3) NOT NULL DEFAULT '0',
  `lastreviewedversion` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`),
  KEY `index_currentversions` (`current_version`,`review_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_repository`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext,
  `wsdl_url` varchar(100) NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) NOT NULL DEFAULT '',
  `last_update` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,0,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','https://typo3.org/wsdl/tx_ter_wsdl.php','https://repositories.typo3.org/mirrors.xml.gz',1448314281,6828);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_uid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `public` tinyint(3) NOT NULL DEFAULT '0',
  `item_uid` int(11) NOT NULL DEFAULT '0',
  `preset_data` blob,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_chashcache`
--

DROP TABLE IF EXISTS `tx_realurl_chashcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_chashcache` (
  `spurl_hash` char(32) NOT NULL DEFAULT '',
  `chash_string` varchar(32) NOT NULL DEFAULT '',
  `spurl_string` text,
  PRIMARY KEY (`spurl_hash`),
  KEY `chash_string` (`chash_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_chashcache`
--

LOCK TABLES `tx_realurl_chashcache` WRITE;
/*!40000 ALTER TABLE `tx_realurl_chashcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_chashcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_errorlog`
--

DROP TABLE IF EXISTS `tx_realurl_errorlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_errorlog` (
  `url_hash` int(11) NOT NULL DEFAULT '0',
  `url` text NOT NULL,
  `error` text NOT NULL,
  `last_referer` text NOT NULL,
  `counter` int(11) NOT NULL DEFAULT '0',
  `cr_date` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`url_hash`,`rootpage_id`),
  KEY `counter` (`counter`,`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_errorlog`
--

LOCK TABLES `tx_realurl_errorlog` WRITE;
/*!40000 ALTER TABLE `tx_realurl_errorlog` DISABLE KEYS */;
INSERT INTO `tx_realurl_errorlog` VALUES (84152004,'content-examples/textmedia/','Segment \"textmedia\" was not a keyword for a postVarSet as expected on page with id=14.','http://bootstrap.dev.local/',1,1450013041,1450013041,1);
/*!40000 ALTER TABLE `tx_realurl_errorlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_pathcache`
--

DROP TABLE IF EXISTS `tx_realurl_pathcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_pathcache` (
  `cache_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  `mpvar` tinytext NOT NULL,
  `pagepath` text NOT NULL,
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cache_id`),
  KEY `pathq1` (`rootpage_id`,`pagepath`(32),`expire`),
  KEY `pathq2` (`page_id`,`language_id`,`rootpage_id`,`expire`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_pathcache`
--

LOCK TABLES `tx_realurl_pathcache` WRITE;
/*!40000 ALTER TABLE `tx_realurl_pathcache` DISABLE KEYS */;
INSERT INTO `tx_realurl_pathcache` VALUES (1,35,0,1,'','features',1458691200),(2,34,0,1,'','customizing',1458691200),(3,33,0,1,'','content-examples/overview',1458691200),(4,32,0,1,'','content-examples/languages-characters',1458691200),(5,31,0,1,'','content-examples/text',1458691200),(6,30,0,1,'','content-examples/headers',1458691200),(7,29,0,1,'','content-examples/text-and-images',1458691200),(8,28,0,1,'','content-examples/images-with-links',1458691200),(9,27,0,1,'','content-examples/image-groups',1458691200),(12,24,0,1,'','content-examples/frames',1458691200),(14,22,0,1,'','content-examples/file-downloads',1458691200),(15,21,0,1,'','content-examples/forms',1458691200),(25,38,0,1,'','content-examples/bullet-list',1458691200),(26,39,0,1,'','content-examples/table',1458691200),(27,40,0,1,'','content-examples/tab',1458691200),(28,35,1,1,'','features',0),(29,35,2,1,'','features',0),(30,34,1,1,'','customizing',0),(31,34,2,1,'','customizing',0),(32,39,1,1,'','content-examples/table',0),(33,39,2,1,'','content-examples/table',0),(34,40,1,1,'','content-examples/tab',0),(35,40,2,1,'','content-examples/tab',0),(36,42,0,1,'','content-examples/menu',1458691200),(40,42,1,1,'','content-examples/menu',0),(41,42,2,1,'','content-examples/menu',0),(42,43,0,1,'','content-examples/html',1458691200),(43,44,0,1,'','content-examples/insert-records',1458691200),(45,46,0,1,'','content-examples/divider',1458691200),(46,47,0,1,'','content-examples/form',1458691200),(47,48,0,1,'','content-examples/text-and-media',1458691200);
/*!40000 ALTER TABLE `tx_realurl_pathcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_redirects`
--

DROP TABLE IF EXISTS `tx_realurl_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_redirects` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `url_hash` int(11) NOT NULL DEFAULT '0',
  `url` text NOT NULL,
  `destination` text NOT NULL,
  `last_referer` text NOT NULL,
  `counter` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `has_moved` int(11) NOT NULL DEFAULT '0',
  `domain_limit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `sel01` (`url_hash`,`domain_limit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_redirects`
--

LOCK TABLES `tx_realurl_redirects` WRITE;
/*!40000 ALTER TABLE `tx_realurl_redirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_uniqalias`
--

DROP TABLE IF EXISTS `tx_realurl_uniqalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_uniqalias` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `field_alias` varchar(255) NOT NULL DEFAULT '',
  `field_id` varchar(60) NOT NULL DEFAULT '',
  `value_alias` varchar(255) NOT NULL DEFAULT '',
  `value_id` int(11) NOT NULL DEFAULT '0',
  `lang` int(11) NOT NULL DEFAULT '0',
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `tablename` (`tablename`),
  KEY `bk_realurl01` (`field_alias`(20),`field_id`,`value_id`,`lang`,`expire`),
  KEY `bk_realurl02` (`tablename`(32),`field_alias`(20),`field_id`,`value_alias`(20),`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_uniqalias`
--

LOCK TABLES `tx_realurl_uniqalias` WRITE;
/*!40000 ALTER TABLE `tx_realurl_uniqalias` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_uniqalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_urldecodecache`
--

DROP TABLE IF EXISTS `tx_realurl_urldecodecache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_urldecodecache` (
  `url_hash` char(32) NOT NULL DEFAULT '',
  `spurl` tinytext NOT NULL,
  `content` blob NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`url_hash`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_urldecodecache`
--

LOCK TABLES `tx_realurl_urldecodecache` WRITE;
/*!40000 ALTER TABLE `tx_realurl_urldecodecache` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_urldecodecache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_urlencodecache`
--

DROP TABLE IF EXISTS `tx_realurl_urlencodecache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_urlencodecache` (
  `url_hash` char(32) NOT NULL DEFAULT '',
  `origparams` tinytext NOT NULL,
  `internalExtras` tinytext NOT NULL,
  `content` text NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`url_hash`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_urlencodecache`
--

LOCK TABLES `tx_realurl_urlencodecache` WRITE;
/*!40000 ALTER TABLE `tx_realurl_urlencodecache` DISABLE KEYS */;
INSERT INTO `tx_realurl_urlencodecache` VALUES ('5240e49591d607b8ab4eb30919aa063c','_DEFAULT | id=47','','content-examples/form/',47,1453576629),('7fab329b8aab745ee628aa7a43b8235f','_DEFAULT | id=14','','content-examples/bullet-list/',14,1453576629),('dabf8dec29d58f1d85a9075e8e132712','_DEFAULT | id=46','','content-examples/divider/',46,1453576629),('f5ba5e8e7ccb540f2e93350946d7d555','_DEFAULT | id=36','','/',36,1453576629),('f5dc96d84e43b483865e80a0f0090121','_DEFAULT | id=44','','content-examples/insert-records/',44,1453576629);
/*!40000 ALTER TABLE `tx_realurl_urlencodecache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rsaauth_keys`
--

DROP TABLE IF EXISTS `tx_rsaauth_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rsaauth_keys` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `key_value` text,
  PRIMARY KEY (`uid`),
  KEY `crdate` (`crdate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rsaauth_keys`
--

LOCK TABLES `tx_rsaauth_keys` WRITE;
/*!40000 ALTER TABLE `tx_rsaauth_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rsaauth_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rtehtmlarea_acronym`
--

DROP TABLE IF EXISTS `tx_rtehtmlarea_acronym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rtehtmlarea_acronym` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `term` varchar(255) NOT NULL DEFAULT '',
  `acronym` varchar(255) NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rtehtmlarea_acronym`
--

LOCK TABLES `tx_rtehtmlarea_acronym` WRITE;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-24 21:15:20
