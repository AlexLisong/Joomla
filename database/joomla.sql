/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.10-log : Database - joomla
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`joomla` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `joomla`;

/*Table structure for table `r8kmb_assets` */

DROP TABLE IF EXISTS `r8kmb_assets`;

CREATE TABLE `r8kmb_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_assets` */

insert  into `r8kmb_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (1,0,0,101,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(8,1,17,34,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),(9,1,35,36,1,'com_cpanel','com_cpanel','{}'),(10,1,37,38,1,'com_installer','com_installer','{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,39,40,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1}}'),(12,1,41,42,1,'com_login','com_login','{}'),(13,1,43,44,1,'com_mailto','com_mailto','{}'),(14,1,45,46,1,'com_massmail','com_massmail','{}'),(15,1,47,48,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,49,50,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1}}'),(17,1,51,52,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,53,66,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1}}'),(19,1,67,70,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(20,1,71,72,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1}}'),(21,1,73,74,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1}}'),(22,1,75,76,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,77,78,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1}}'),(24,1,79,82,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.edit.own\":{\"6\":1}}'),(26,1,83,84,1,'com_wrapper','com_wrapper','{}'),(27,8,18,23,2,'com_content.category.2','Uncategorised','{}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{}'),(30,19,68,69,2,'com_newsfeeds.category.5','Uncategorised','{}'),(32,24,80,81,2,'com_users.category.7','Uncategorised','{}'),(33,1,85,86,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(35,8,24,33,2,'com_content.category.9','Blog','{}'),(36,27,19,20,3,'com_content.article.1','About','{}'),(37,27,21,22,3,'com_content.article.2','Working on Your Site','{}'),(38,35,25,26,3,'com_content.article.3','Welcome to your blog','{}'),(39,35,27,28,3,'com_content.article.4','About your home page','{}'),(40,35,29,30,3,'com_content.article.5','Your Modules','{}'),(41,1,87,88,1,'com_users.category.10','Uncategorised','{}'),(42,1,89,90,1,'com_joomlaupdate','com_joomlaupdate','{}'),(43,35,31,32,3,'com_content.article.6','Your Template','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(44,1,91,92,1,'com_tags','com_tags','{\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(45,1,93,94,1,'com_contenthistory','com_contenthistory','{}'),(46,1,95,96,1,'com_ajax','com_ajax','{}'),(47,1,97,98,1,'com_postinstall','com_postinstall','{}'),(48,18,54,55,2,'com_modules.module.93','mod_flexicategories','{}'),(49,18,56,57,2,'com_modules.module.94','mod_flexicontent','{}'),(50,18,58,59,2,'com_modules.module.95','mod_flexifilter','{}'),(51,18,60,61,2,'com_modules.module.96','mod_flexitagscloud','{}'),(52,18,62,63,2,'com_modules.module.97','mod_flexiadvsearch','{}'),(53,18,64,65,2,'com_modules.module.98','FLEXIcontent Google-Map module','{}'),(54,1,99,100,1,'com_flexicontent','FLEXIcontent','{}');

/*Table structure for table `r8kmb_associations` */

DROP TABLE IF EXISTS `r8kmb_associations`;

CREATE TABLE `r8kmb_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_associations` */

/*Table structure for table `r8kmb_banner_clients` */

DROP TABLE IF EXISTS `r8kmb_banner_clients`;

CREATE TABLE `r8kmb_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_banner_clients` */

/*Table structure for table `r8kmb_banner_tracks` */

DROP TABLE IF EXISTS `r8kmb_banner_tracks`;

CREATE TABLE `r8kmb_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_banner_tracks` */

/*Table structure for table `r8kmb_banners` */

DROP TABLE IF EXISTS `r8kmb_banners`;

CREATE TABLE `r8kmb_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_banners` */

/*Table structure for table `r8kmb_categories` */

DROP TABLE IF EXISTS `r8kmb_categories`;

CREATE TABLE `r8kmb_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_categories` */

insert  into `r8kmb_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`,`version`) values (1,0,0,0,13,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',842,'2017-12-27 15:08:21',0,'0000-00-00 00:00:00',0,'*',1),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',842,'2017-12-27 15:08:21',0,'0000-00-00 00:00:00',0,'*',1),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',842,'2017-12-27 15:08:21',0,'0000-00-00 00:00:00',0,'*',1),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',842,'2017-12-27 15:08:21',0,'0000-00-00 00:00:00',0,'*',1),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',842,'2017-12-27 15:08:21',0,'0000-00-00 00:00:00',0,'*',1),(7,32,1,9,10,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',842,'2017-12-27 15:08:21',0,'0000-00-00 00:00:00',0,'*',1),(9,35,1,11,12,1,'blog','com_content','Blog','blog','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',842,'2017-12-27 15:08:21',0,'0000-00-00 00:00:00',0,'*',1);

/*Table structure for table `r8kmb_contact_details` */

DROP TABLE IF EXISTS `r8kmb_contact_details`;

CREATE TABLE `r8kmb_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_contact_details` */

/*Table structure for table `r8kmb_content` */

DROP TABLE IF EXISTS `r8kmb_content`;

CREATE TABLE `r8kmb_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_content` */

insert  into `r8kmb_content`(`id`,`asset_id`,`title`,`alias`,`introtext`,`fulltext`,`state`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values (1,36,'About','about','<p>This tells you a bit about this blog and the person who writes it. </p><p>When you are logged in you will be able to edit this page by clicking on the edit icon.</p>','',1,2,'2017-12-27 15:08:21',842,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2017-12-27 15:08:21','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,2,'','',1,16,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(2,37,'Working on Your Site','working-on-your-site','<p>Here are some basic tips for working on your site.</p><ul><li>Joomla! has a \"front end\" that you are looking at now and an \"administrator\" or \"back end\" which is where you do the more advanced work of creating your site such as setting up the menus and deciding what modules to show. You need to login to the administrator separately using the same user name and password that you used to login to this part of the site.</li><li>One of the first things you will probably want to do is change the site title and tag line and to add a logo. To do this click on the Template Settings link in the top menu. To change your site description, browser title, default email and other items, click Site Settings. More advanced configuration options are available in the administrator.</li><li>To totally change the look of your site you will probably want to install a new template. In the Extensions menu click on Extensions Manager and then go to the Install tab. There are many free and commercial templates available for Joomla.</li><li>As you have already seen, you can control who can see different parts of you site. When you work with modules, articles or weblinks setting the Access level to Registered will mean that only logged in users can see them</li><li>When you create a new article or other kind of content you also can save it as Published or Unpublished. If it is Unpublished site visitors will not be able to see it but you will.</li><li>You can learn much more about working with Joomla from the <a href=\"https://docs.joomla.org/\">Joomla documentation site</a> and get help from other users at the <a href=\"https://forum.joomla.org/\">Joomla forums</a>. In the administrator there are help buttons on every page that provide detailed information about the functions on that page.</li></ul>','',1,2,'2017-12-27 15:08:21',842,'Joomla','2017-12-27 15:08:21',842,0,'0000-00-00 00:00:00','2017-12-27 15:08:21','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',2,1,'','',3,8,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(3,38,'Welcome to your blog','welcome-to-your-blog','<p>This is a sample blog posting.</p><p>If you log in to the site (the Author Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site.</p><p>As you add and modify articles you will see how your site changes and also how you can customise it in various ways.</p><p>Go ahead, you can\'t break it.</p>','',1,9,'2017-12-27 15:08:21',842,'Joomla','2017-12-27 15:08:21',842,0,'0000-00-00 00:00:00','2017-12-27 15:08:21','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',4,2,'','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(4,39,'About your home page','about-your-home-page','<p>Your home page is set to display the four most recent articles from the blog category in a column. Then there are links to the 4 next oldest articles. You can change those numbers by editing the content options settings in the blog tab in your site administrator. There is a link to your site administrator in the top menu.</p><p>If you want to have your blog post broken into two parts, an introduction and then a full length separate page, use the Read More button to insert a break.</p>','<p>On the full page you will see both the introductory content and the rest of the article. You can change the settings to hide the introduction if you want.</p><p></p><p></p><p></p>',1,9,'2017-12-27 15:08:21',842,'Joomla','2017-12-27 15:08:21',842,0,'0000-00-00 00:00:00','2017-12-27 15:08:21','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',7,1,'','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(5,40,'Your Modules','your-modules','<p>Your site has some commonly used modules already preconfigured. These include:</p><ul><li>Image Module which holds the image beneath the menu. This is a Custom module that you can edit to change the image.</li><li>Most Read Posts which lists articles based on the number of times they have been read.</li><li>Older Articles which lists out articles by month.</li><li>Syndicate which allows your readers to read your posts in a news reader.</li><li>Popular Tags, which will appear if you use tagging on your articles. Just enter a tag in the Tags field when editing.</li></ul><p>Each of these modules has many options which you can experiment with in the Module Manager in your site Administrator. Moving your mouse over a module and clicking on the edit icon will take you to an edit screen for that module. Always be sure to save and close any module you edit.</p><p>Joomla! also includes many other modules you can incorporate in your site. As you develop your site you may want to add more module that you can find at the <a href=\"https://extensions.joomla.org/\">Joomla Extensions Directory.</a></p>','',1,9,'2017-12-27 15:08:21',842,'Joomla','2017-12-27 15:08:21',842,0,'0000-00-00 00:00:00','2017-12-27 15:08:21','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',11,0,'','',1,4,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(6,43,'Your Template','your-template','<p>Templates control the look and feel of your website.</p><p>This blog is installed with the Protostar template.</p><p>You can edit the options by clicking on the Working on Your Site, Template Settings link in the top menu (visible when you login).</p><p>For example you can change the site background color, highlights color, site title, site description and title font used.</p><p>More options are available in the site administrator. You may also install a new template using the extension manager.</p>','',1,9,'2017-12-27 15:08:21',842,'Joomla','2017-12-27 15:08:21',842,0,'0000-00-00 00:00:00','2017-12-27 15:08:21','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',17,0,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');

/*Table structure for table `r8kmb_content_frontpage` */

DROP TABLE IF EXISTS `r8kmb_content_frontpage`;

CREATE TABLE `r8kmb_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_content_frontpage` */

/*Table structure for table `r8kmb_content_rating` */

DROP TABLE IF EXISTS `r8kmb_content_rating`;

CREATE TABLE `r8kmb_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_content_rating` */

/*Table structure for table `r8kmb_content_types` */

DROP TABLE IF EXISTS `r8kmb_content_types`;

CREATE TABLE `r8kmb_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_content_types` */

insert  into `r8kmb_content_types`(`type_id`,`type_title`,`type_alias`,`table`,`rules`,`field_mappings`,`router`,`content_history_options`) values (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(4,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute',''),(5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

/*Table structure for table `r8kmb_contentitem_tag_map` */

DROP TABLE IF EXISTS `r8kmb_contentitem_tag_map`;

CREATE TABLE `r8kmb_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

/*Data for the table `r8kmb_contentitem_tag_map` */

/*Table structure for table `r8kmb_core_log_searches` */

DROP TABLE IF EXISTS `r8kmb_core_log_searches`;

CREATE TABLE `r8kmb_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_core_log_searches` */

/*Table structure for table `r8kmb_extensions` */

DROP TABLE IF EXISTS `r8kmb_extensions`;

CREATE TABLE `r8kmb_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10046 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_extensions` */

insert  into `r8kmb_extensions`(`extension_id`,`package_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (1,0,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,0,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,0,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,0,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0),(5,0,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,0,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,0,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,0,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(9,0,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,0,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}','','',0,'0000-00-00 00:00:00',0,0),(11,0,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','','',0,'0000-00-00 00:00:00',0,0),(12,0,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,0,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,0,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(15,0,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,0,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(17,0,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,0,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(19,0,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}','{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(20,0,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),(22,0,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,0,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,0,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(25,0,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,0,'com_finder','component','com_finder','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(28,0,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{\"updatesource\":\"default\",\"customurl\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(29,0,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(30,0,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}','','','',0,'0000-00-00 00:00:00',0,0),(31,0,'com_ajax','component','com_ajax','',1,1,1,1,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}','','','',0,'0000-00-00 00:00:00',0,0),(32,0,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(33,0,'com_fields','component','com_fields','',1,1,1,0,'{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),(34,0,'com_associations','component','com_associations','',1,1,1,0,'{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"Januar 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,0,'LIB_PHPUTF8','library','phputf8','',0,1,1,1,'{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,0,'LIB_JOOMLA','library','joomla','',0,1,1,1,'{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"mediaversion\":\"bbf8915ab8b7ea1db473ca86b860b5c7\"}','','',0,'0000-00-00 00:00:00',0,0),(104,0,'LIB_IDNA','library','idna_convert','',0,1,1,1,'{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}','','','',0,'0000-00-00 00:00:00',0,0),(105,0,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}','','','',0,'0000-00-00 00:00:00',0,0),(106,0,'LIB_PHPASS','library','phpass','',0,1,1,1,'{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}','','','',0,'0000-00-00 00:00:00',0,0),(200,0,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,0,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,0,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,0,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,0,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,0,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,0,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,0,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,0,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,0,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,0,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,0,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,0,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,0,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,0,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,0,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,0,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,0,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,0,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,0,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,0,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,0,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,0,'mod_finder','module','mod_finder','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,0,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,0,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,0,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,0,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,0,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,0,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,0,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,0,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,0,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,0,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,0,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,0,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,0,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,0,'mod_version','module','mod_version','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(315,0,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(316,0,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(317,0,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(318,0,'mod_sampledata','module','mod_sampledata','',1,1,1,0,'{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(400,0,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,0,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(402,0,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(403,0,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','','',0,'0000-00-00 00:00:00',1,0),(404,0,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(406,0,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,0,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,0,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,0,'plg_content_vote','plugin','vote','content',0,0,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}','','','',0,'0000-00-00 00:00:00',6,0),(410,0,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.30.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,0,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}','','','',0,'0000-00-00 00:00:00',2,0),(412,0,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2017\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.5.8\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}','{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}','','',0,'0000-00-00 00:00:00',3,0),(413,0,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}','','','',0,'0000-00-00 00:00:00',1,0),(414,0,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}','','','',0,'0000-00-00 00:00:00',2,0),(415,0,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','','','',0,'0000-00-00 00:00:00',3,0),(416,0,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}','','','',0,'0000-00-00 00:00:00',4,0),(417,0,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,0,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,0,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,0,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,0,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}','','','',0,'0000-00-00 00:00:00',1,0),(423,0,'plg_system_p3p','plugin','p3p','system',0,0,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,0,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,0,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,0,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}','','','',0,'0000-00-00 00:00:00',5,0),(427,0,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}','','','',0,'0000-00-00 00:00:00',6,0),(428,0,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}','','','',0,'0000-00-00 00:00:00',7,0),(429,0,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}','','','',0,'0000-00-00 00:00:00',8,0),(430,0,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}','','','',0,'0000-00-00 00:00:00',3,0),(431,0,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,0,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,0,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,0,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',1,0),(435,0,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(436,0,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}','','','',0,'0000-00-00 00:00:00',10,0),(437,0,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(438,0,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(439,0,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,0,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}','','','',0,'0000-00-00 00:00:00',7,0),(441,0,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(442,0,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','','','',0,'0000-00-00 00:00:00',1,0),(443,0,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','','','',0,'0000-00-00 00:00:00',2,0),(444,0,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','','','',0,'0000-00-00 00:00:00',3,0),(445,0,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','','','',0,'0000-00-00 00:00:00',4,0),(447,0,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','','','',0,'0000-00-00 00:00:00',0,0),(448,0,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}','','','',0,'0000-00-00 00:00:00',0,0),(449,0,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}','','','',0,'0000-00-00 00:00:00',0,0),(450,0,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}','','','',0,'0000-00-00 00:00:00',0,0),(451,0,'plg_search_tags','plugin','tags','search',0,1,1,0,'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(452,0,'plg_system_updatenotification','plugin','updatenotification','system',0,1,1,0,'{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}','{\"lastrun\":1514387329}','','',0,'0000-00-00 00:00:00',0,0),(453,0,'plg_editors-xtd_module','plugin','module','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}','','','',0,'0000-00-00 00:00:00',0,0),(454,0,'plg_system_stats','plugin','stats','system',0,1,1,0,'{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}','{\"mode\":3,\"lastrun\":1514387381,\"unique_id\":\"0ee58574e83d5ec696d526dbe93365b2ae292fb4\",\"interval\":12}','','',0,'0000-00-00 00:00:00',0,0),(455,0,'plg_installer_packageinstaller','plugin','packageinstaller','installer',0,1,1,1,'{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}','','','',0,'0000-00-00 00:00:00',1,0),(456,0,'PLG_INSTALLER_FOLDERINSTALLER','plugin','folderinstaller','installer',0,1,1,1,'{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}','','','',0,'0000-00-00 00:00:00',2,0),(457,0,'PLG_INSTALLER_URLINSTALLER','plugin','urlinstaller','installer',0,1,1,1,'{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}','','','',0,'0000-00-00 00:00:00',3,0),(458,0,'plg_quickicon_phpversioncheck','plugin','phpversioncheck','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}','','','',0,'0000-00-00 00:00:00',0,0),(459,0,'plg_editors-xtd_menu','plugin','menu','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(460,0,'plg_editors-xtd_contact','plugin','contact','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','','',0,'0000-00-00 00:00:00',0,0),(461,0,'plg_system_fields','plugin','fields','system',0,1,1,0,'{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),(462,0,'plg_fields_calendar','plugin','calendar','fields',0,1,1,0,'{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}','','','',0,'0000-00-00 00:00:00',0,0),(463,0,'plg_fields_checkboxes','plugin','checkboxes','fields',0,1,1,0,'{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}','','','',0,'0000-00-00 00:00:00',0,0),(464,0,'plg_fields_color','plugin','color','fields',0,1,1,0,'{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}','','','',0,'0000-00-00 00:00:00',0,0),(465,0,'plg_fields_editor','plugin','editor','fields',0,1,1,0,'{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}','','','',0,'0000-00-00 00:00:00',0,0),(466,0,'plg_fields_imagelist','plugin','imagelist','fields',0,1,1,0,'{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}','','','',0,'0000-00-00 00:00:00',0,0),(467,0,'plg_fields_integer','plugin','integer','fields',0,1,1,0,'{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}','{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(468,0,'plg_fields_list','plugin','list','fields',0,1,1,0,'{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}','','','',0,'0000-00-00 00:00:00',0,0),(469,0,'plg_fields_media','plugin','media','fields',0,1,1,0,'{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','','','',0,'0000-00-00 00:00:00',0,0),(470,0,'plg_fields_radio','plugin','radio','fields',0,1,1,0,'{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}','','','',0,'0000-00-00 00:00:00',0,0),(471,0,'plg_fields_sql','plugin','sql','fields',0,1,1,0,'{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}','','','',0,'0000-00-00 00:00:00',0,0),(472,0,'plg_fields_text','plugin','text','fields',0,1,1,0,'{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}','','','',0,'0000-00-00 00:00:00',0,0),(473,0,'plg_fields_textarea','plugin','textarea','fields',0,1,1,0,'{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}','','','',0,'0000-00-00 00:00:00',0,0),(474,0,'plg_fields_url','plugin','url','fields',0,1,1,0,'{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}','','','',0,'0000-00-00 00:00:00',0,0),(475,0,'plg_fields_user','plugin','user','fields',0,1,1,0,'{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}','','','',0,'0000-00-00 00:00:00',0,0),(476,0,'plg_fields_usergrouplist','plugin','usergrouplist','fields',0,1,1,0,'{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}','','','',0,'0000-00-00 00:00:00',0,0),(477,0,'plg_content_fields','plugin','fields','content',0,1,1,0,'{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),(478,0,'plg_editors-xtd_fields','plugin','fields','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),(479,0,'plg_sampledata_blog','plugin','blog','sampledata',0,1,1,0,'{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}','','','',0,'0000-00-00 00:00:00',0,0),(503,0,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,0,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(506,0,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(507,0,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(600,802,'English (en-GB)','language','en-GB','',0,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"December 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.3\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,802,'English (en-GB)','language','en-GB','',1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"December 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.3\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,0,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"December 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.3\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(802,0,'English (en-GB) Language Pack','package','pkg_en-GB','',0,1,1,1,'{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"December 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.3.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}','','','',0,'0000-00-00 00:00:00',0,0),(10000,0,'FLEXIcontent','component','com_flexicontent','',1,1,0,0,'{\"name\":\"FLEXIcontent\",\"type\":\"component\",\"creationDate\":\"04 October 2017\",\"author\":\"Emmanuel Danan, Georgios Papadakis, Yannick Berges, FLEXIcontent Team\",\"copyright\":\"(C) 2009-2017 Emmanuel Danan, Georgios Papadakis\",\"authorEmail\":\"noreply@flexicontent.org\",\"authorUrl\":\"http:\\/\\/www.flexicontent.org\",\"version\":\"3.2.1.5\",\"description\":\"COM_FLEXICONTENT_DESCRIPTION\",\"group\":\"\",\"filename\":\"manifest\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10001,0,'FLEXIcontent - User account via submit','plugin','account_via_submit','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - User account via submit\",\"type\":\"plugin\",\"creationDate\":\"February 2015\",\"author\":\"ggppdk\",\"copyright\":\"Copyright (C) 2015 ggppdk\",\"authorEmail\":\"ggppdk\",\"authorUrl\":\"www.flexicontent.org\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_EMAIL\",\"group\":\"\",\"filename\":\"account_via_submit\"}','{\"\":\"Edit coupons\",\"required\":\"0\",\"display_label_form\":\"1\",\"maxlength\":\"\",\"size\":\"30\",\"extra_attributes\":\"\",\"inputmask\":\"email\",\"email_confirm\":\"0\",\"use_full\":\"0\",\"use_first\":\"0\",\"use_last\":\"0\",\"use_gender\":\"0\",\"handle_existing_email\":\"0\",\"display_item_owner\":\"0\",\"display_when_logged\":\"0\",\"create_accounts\":\"1\",\"new_usertype\":\"\",\"useractivation\":\"\",\"mail_to_admin\":\"\",\"admin_send_as_bcc\":\"1\",\"create_coupons\":\"1\",\"coupon_desc\":\"Add a custom message here\",\"initialized\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10002,0,'FLEXIcontent - International Address / Google Maps','plugin','addressint','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - International Address \\/ Google Maps\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Lyquix, ggppdk\",\"copyright\":\"Copyright (C) Lyquix, ggppdk\",\"authorEmail\":\"info@lyquix.com\",\"authorUrl\":\"http:\\/\\/www.lyquix.com\",\"version\":\"1.2\",\"description\":\"PLG_FLEXICONTENT_FIELDS_ADDRESSINT\",\"group\":\"\",\"filename\":\"addressint\"}','{\"\":\"FLEXI_STORE_PROPERTIES_AS_FIELDS_DESC\",\"use_ingroup\":\"0\",\"allow_multiple\":\"0\",\"add_position\":\"3\",\"max_values\":\"0\",\"required\":\"0\",\"ac_types_default\":\"\",\"ac_type_allowed_list\":\"\",\"ac_country_default\":\"\",\"ac_country_allowed_list\":\"\",\"display_label_form\":\"1\",\"no_acc_msg_form\":\"\",\"formlayout\":\"\",\"edit_latlon\":\"1\",\"addr_edit_mode\":\"plaintext\",\"required_props_plaintext\":\"\",\"required_props\":\"\",\"use_name\":\"1\",\"use_addr2\":\"0\",\"use_addr3\":\"0\",\"use_usstate\":\"1\",\"use_province\":\"1\",\"use_zip_suffix\":\"1\",\"use_country\":\"1\",\"map_width_form\":\"350\",\"map_height_form\":\"250\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"viewlayout\":\"\",\"trigger_onprepare_content\":\"0\",\"trigger_plgs_incatview\":\"0\",\"show_address\":\"both\",\"addr_display_mode\":\"plaintext\",\"addr_format_tmpl\":\"[[name|<h3 class=\\\"fc-addrint business-name\\\">{{name}}<\\/h3>]]\\n [[addr1|<span class=\\\"fc-addrint street-address\\\">{{addr1}}<\\/span><br\\/>]]\\n [[addr2|<span class=\\\"fc-addrint street-address2\\\">{{addr2}}<\\/span><br\\/>]]\\n [[addr3|<span class=\\\"fc-addrint street-address3\\\">{{addr3}}<\\/span><br\\/>]]\\n [[city|<span class=\\\"fc-addrint city\\\">{{city}}<\\/span>]]\\n <span class=\\\"fc-addrint state\\\">[[state|{{state}}]][[province|{{province}},]]<\\/span>\\n <span class=\\\"fc-addrint postal-code\\\">{{zip}}[[zip_suffix|-{{zip_suffix}}]]<\\/span><br\\/>\\n <span class=\\\"fc-addrint country\\\">{{country}}<\\/span>\",\"directions_position\":\"\",\"directions_link_label\":\"\",\"show_map\":\"none\",\"map_embed_type\":\"int\",\"map_type\":\"roadmap\",\"map_zoom\":\"16\",\"link_map\":\"1\",\"marker_color\":\"red\",\"marker_size\":\"mid\",\"map_width\":\"200\",\"map_height\":\"150\",\"map_position\":\"0\",\"map_style\":\"\",\"field_prefix\":\"\",\"field_suffix\":\"\",\"google_maps_js_api_key\":\"\",\"google_maps_static_api_key\":\"\",\"field_name\":\"\",\"field_addr1\":\"\",\"field_addr2\":\"\",\"field_addr3\":\"\",\"field_city\":\"\",\"field_zip\":\"\",\"field_country\":\"\",\"field_lon\":\"\",\"field_lat\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10003,0,'FLEXIcontent - Author Items','plugin','authoritems','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Author Items\",\"type\":\"plugin\",\"creationDate\":\"March 2009\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2009 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.flexicontent.org\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_AUTHORITEMS\",\"group\":\"\",\"filename\":\"authoritems\"}','{\"\":\"FLEXI_FIELD_LABEL_AND_ACCESS\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"frontend_hidden\":\"1\",\"backend_hidden\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10004,0,'FLEXIcontent - Checkbox','plugin','checkbox','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Checkbox\",\"type\":\"plugin\",\"creationDate\":\"March 2009\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2009 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.vistamedia.fr\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_CHECKBOX\",\"group\":\"\",\"filename\":\"checkbox\"}','{\"\":\"FLEXI_FILTERING\",\"use_ingroup\":\"0\",\"allow_multiple\":\"0\",\"add_position\":\"3\",\"required\":\"0\",\"max_values\":\"0\",\"min_values\":\"0\",\"exact_values\":\"0\",\"default_values\":\"\",\"default_value_use\":\"0\",\"sql_mode\":\"0\",\"field_elements\":\"1::Yes%% 0::No%% \",\"use_elements_state\":\"0\",\"cascade_prompt\":\"\",\"image_type\":\"\",\"imagedir\":\"\",\"icon_size_form\":\"\",\"icon_color_form\":\"\",\"display_label_form\":\"1\",\"no_acc_msg_form\":\"\",\"use_jslib\":\"2\",\"form_vals_display\":\"\",\"size\":\"\",\"sortable\":\"\",\"usefirstoption\":\"0\",\"firstoptiontext\":\"FLEXI_PLEASE_SELECT\",\"pretext_form\":\"\",\"posttext_form\":\"\",\"separator\":\"0\",\"opentag_form\":\"\",\"closetag_form\":\"\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"viewlayout\":\"\",\"lang_filter_values\":\"1\",\"text_or_value\":\"1\",\"icon_size\":\"\",\"icon_color\":\"\",\"display_all\":\"0\",\"prx_sfx_open_close_configs\":\"\",\"remove_space\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"separatorf\":\"1\",\"opentag\":\"\",\"closetag\":\"\",\"ns_pretext\":\"\",\"ns_posttext\":\"\",\"trigger_onprepare_content\":\"0\",\"trigger_plgs_incatview\":\"0\",\"filter_customize_options\":\"0\",\"filter_compare_type\":\"0\",\"filter_values_require_all\":\"0\",\"filter_values_require_all_tip\":\"0\",\"display_label_filter\":\"2\",\"display_filter_as\":\"0\",\"faceted_filter\":\"2\",\"show_matching_items\":\"1\",\"hide_disabled_values\":\"0\",\"filter_usefirstoption\":\"0\",\"filter_firstoptiontext\":\"FLEXI_ALL\",\"slider_display_config\":\"1\",\"slider_custom_range\":\"\'min\': \'\', \'25%\': \'50\', \'50%\': \'150\', \'75%\': \'600\', \'max\': \'\'\",\"slider_custom_labels\":\"label_any ## label_50 ## label_150 ## label_600 ## label_any\",\"slider_custom_labels_jtext\":\"0\",\"pretext_filter\":\"\",\"posttext_filter\":\"\",\"opentag_filter\":\"\",\"closetag_filter\":\"\",\"display_label_filter_s\":\"2\",\"display_filter_as_s\":\"0\",\"faceted_filter_s\":\"2\",\"show_matching_items_s\":\"1\",\"hide_disabled_values_s\":\"0\",\"filter_usefirstoption_s\":\"0\",\"filter_firstoptiontext_s\":\"FLEXI_ALL\",\"slider_display_config_s\":\"1\",\"slider_custom_range_s\":\"\'min\': \'\', \'25%\': 500, \'50%\': 2000, \'75%\': 10000, \'max\': \'\'\",\"slider_custom_labels_s\":\"label_any ## label_500 ## label_2000 ## label_10000 ## label_any\",\"slider_custom_labels_jtext_s\":\"0\",\"pretext_filter_s\":\"\",\"posttext_filter_s\":\"\",\"opentag_filter_s\":\"\",\"closetag_filter_s\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10005,0,'FLEXIcontent - Checkbox Image','plugin','checkboximage','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Checkbox Image\",\"type\":\"plugin\",\"creationDate\":\"March 2009\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2009 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.vistamedia.fr\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_CHECKBOXIMAGE\",\"group\":\"\",\"filename\":\"checkboximage\"}','{\"\":\"FLEXI_FILTERING\",\"use_ingroup\":\"0\",\"allow_multiple\":\"0\",\"add_position\":\"3\",\"required\":\"0\",\"max_values\":\"0\",\"min_values\":\"0\",\"exact_values\":\"0\",\"default_values\":\"\",\"default_value_use\":\"0\",\"sql_mode\":\"0\",\"field_elements\":\"1::Information::information.png%% 0::Warning::warning.png%% \",\"use_elements_state\":\"0\",\"cascade_prompt\":\"\",\"image_type\":\"0\",\"imagedir\":\"images\\/stories\\/\",\"icon_size_form\":\"\",\"icon_color_form\":\"\",\"display_label_form\":\"1\",\"no_acc_msg_form\":\"\",\"use_jslib\":\"2\",\"form_vals_display\":\"1\",\"usefirstoption\":\"0\",\"firstoptiontext\":\"FLEXI_PLEASE_SELECT\",\"display_as_select\":\"0\",\"size\":\"6\",\"sortable\":\"0\",\"pretext_form\":\"\",\"posttext_form\":\"\",\"separator\":\"0\",\"opentag_form\":\"\",\"closetag_form\":\"\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"viewlayout\":\"\",\"lang_filter_values\":\"1\",\"text_or_value\":\"2\",\"icon_size\":\"\",\"icon_color\":\"\",\"display_all\":\"0\",\"prx_sfx_open_close_configs\":\"\",\"remove_space\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"separatorf\":\"1\",\"opentag\":\"\",\"closetag\":\"\",\"ns_pretext\":\"\",\"ns_posttext\":\"\",\"trigger_onprepare_content\":\"0\",\"trigger_plgs_incatview\":\"0\",\"filter_customize_options\":\"0\",\"filter_compare_type\":\"0\",\"filter_values_require_all\":\"0\",\"filter_values_require_all_tip\":\"0\",\"display_label_filter\":\"2\",\"filter_vals_display\":\"0\",\"icon_size_filter\":\"\",\"icon_color_filter\":\"\",\"display_filter_as\":\"0\",\"faceted_filter\":\"2\",\"show_matching_items\":\"1\",\"hide_disabled_values\":\"0\",\"filter_usefirstoption\":\"0\",\"filter_firstoptiontext\":\"FLEXI_ALL\",\"slider_display_config\":\"1\",\"slider_custom_range\":\"\'min\': \'\', \'25%\': \'50\', \'50%\': \'150\', \'75%\': \'600\', \'max\': \'\'\",\"slider_custom_labels\":\"label_any ## label_50 ## label_150 ## label_600 ## label_any\",\"slider_custom_labels_jtext\":\"0\",\"pretext_filter\":\"\",\"posttext_filter\":\"\",\"opentag_filter\":\"\",\"closetag_filter\":\"\",\"display_label_filter_s\":\"2\",\"filter_vals_display_s\":\"0\",\"icon_size_filter_s\":\"\",\"icon_color_filter_s\":\"\",\"display_filter_as_s\":\"0\",\"faceted_filter_s\":\"2\",\"show_matching_items_s\":\"1\",\"hide_disabled_values_s\":\"0\",\"filter_usefirstoption_s\":\"0\",\"filter_firstoptiontext_s\":\"FLEXI_ALL\",\"slider_display_config_s\":\"1\",\"slider_custom_range_s\":\"\'min\': \'\', \'25%\': 500, \'50%\': 2000, \'75%\': 10000, \'max\': \'\'\",\"slider_custom_labels_s\":\"label_any ## label_500 ## label_2000 ## label_10000 ## label_any\",\"slider_custom_labels_jtext_s\":\"0\",\"pretext_filter_s\":\"\",\"posttext_filter_s\":\"\",\"opentag_filter_s\":\"\",\"closetag_filter_s\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10006,0,'FLEXIcontent - Core Fields (Joomla article properties)','plugin','core','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Core Fields (Joomla article properties)\",\"type\":\"plugin\",\"creationDate\":\"March 2009\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2009 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.vistamedia.fr\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_CORE\",\"group\":\"\",\"filename\":\"core\"}','{\"\":\"Extra editor areas\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"viewlayout\":\"\",\"trigger_onprepare_content\":\"1\",\"trigger_plgs_incatview\":\"0\",\"remove_space\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"useogp\":\"1\",\"ogpinview\":\"\",\"ogpmaxlen\":\"300\",\"display_label_filter\":\"2\",\"display_filter_as\":\"0\",\"display_label_filter_s\":\"2\",\"display_filter_as_s\":\"0\",\"date_format\":\"\",\"custom_date\":\"\",\"lang_filter_format\":\"0\",\"microdata_itemprop\":\"dateModified\",\"reverse_filter_order\":\"0\",\"disable_keyboardinput\":\"0\",\"pretext_filter\":\"\",\"posttext_filter\":\"\",\"opentag_filter\":\"\",\"closetag_filter\":\"\",\"date_filter_group\":\"month\",\"date_filter_label_format\":\"\",\"faceted_filter\":\"2\",\"show_matching_items\":\"1\",\"hide_disabled_values\":\"0\",\"filter_usefirstoption\":\"0\",\"filter_firstoptiontext\":\"FLEXI_ALL\",\"slider_display_config\":\"1\",\"slider_custom_range\":\"\'min\': \'\', \'25%\': \'2000\', \'50%\': \'2005\', \'75%\': \'2020\', \'max\': \'\'\",\"slider_custom_labels\":\"label_any ## label_2000 ## label_2005 ## label_2020 ## label_any\",\"slider_custom_labels_jtext\":\"0\",\"date_filter_group_s\":\"month\",\"date_filter_label_format_s\":\"\",\"faceted_filter_s\":\"2\",\"show_matching_items_s\":\"1\",\"hide_disabled_values_s\":\"0\",\"filter_usefirstoption_s\":\"0\",\"filter_firstoptiontext_s\":\"FLEXI_ALL\",\"slider_display_config_s\":\"1\",\"slider_custom_range_s\":\"\'min\': \'\', \'25%\': 2000, \'50%\': 2005, \'75%\': 2020, \'max\': \'\'\",\"slider_custom_labels_s\":\"label_any ## label_2000 ## label_2005 ## label_2020 ## label_any\",\"slider_custom_labels_jtext_s\":\"0\",\"name_username\":\"1\",\"show_icons\":\"1\",\"submit_acclvl\":\"1\",\"logged_no_acc_msg\":\"\",\"logged_no_acc_doredirect\":\"0\",\"logged_no_acc_askredirect\":\"1\",\"logged_no_acc_url\":\"\",\"guest_no_acc_msg\":\"\",\"guest_no_acc_doredirect\":\"2\",\"guest_no_acc_askredirect\":\"1\",\"guest_no_acc_url\":\"\",\"default_rating\":\"50\",\"vote_1_weight\":\"100\",\"vote_2_weight\":\"100\",\"vote_3_weight\":\"100\",\"vote_4_weight\":\"100\",\"vote_5_weight\":\"100\",\"vote_6_weight\":\"100\",\"vote_7_weight\":\"100\",\"vote_8_weight\":\"100\",\"vote_9_weight\":\"100\",\"allow_reviews\":\"0\",\"rating_resolution\":\"5\",\"rating_stars\":\"5\",\"main_label\":\"FLEXI_VOTE_AVERAGE_RATING\",\"main_counter\":\"1\",\"main_counter_show_label\":\"1\",\"main_counter_show_percentage\":\"0\",\"main_image_configs\":\"\",\"main_image\":\"components\\/com_flexicontent\\/assets\\/images\\/star-medium.png\",\"main_dimension\":\"24\",\"enable_extra_votes\":\"0\",\"extra_votes_configs\":\"\",\"extra_votes\":\"\",\"extra_counter\":\"1\",\"extra_counter_show_label\":\"1\",\"extra_counter_show_percentage\":\"0\",\"extra_image_configs\":\"\",\"extra_image\":\"components\\/com_flexicontent\\/assets\\/images\\/star-medium.png\",\"extra_dimension\":\"24\",\"allow_guests_favs\":\"1\",\"display_favoured_usercount\":\"0\",\"display_favoured_userlist\":\"0\",\"display_favoured_max\":\"12\",\"link_to_view\":\"1\",\"separatorf\":\"3\",\"opentag\":\"\",\"closetag\":\"\",\"rootcatid\":\"\",\"rootcatid_s\":\"\",\"filter_values_require_all\":\"0\",\"filter_values_require_all_tip\":\"0\",\"required\":\"0\",\"validation\":\"2\",\"display_label_form\":\"1\",\"hide_html\":\"0\",\"maxlength\":\"\",\"rows\":\"6\",\"cols\":\"80\",\"width\":\"98%\",\"height\":\"400px\",\"show_buttons\":\"1\",\"skip_buttons\":\"\",\"cut_text_catview\":\"0\",\"cut_text_length_catview\":\"200\",\"cut_text_display_catview\":\"0\",\"cut_text_display_btn_icon_catview\":\"icon-paragraph-center\",\"cut_text_display_btn_text_catview\":\"...\",\"editorarea_per_tab\":\"0\",\"start_of_tabs_pattern\":\"\",\"end_of_tabs_pattern\":\"\",\"start_of_tab_pattern\":\"\",\"end_of_tab_pattern\":\"\",\"title_tab_pattern\":\"\",\"force_beforetabs\":\"1\",\"force_aftertabs\":\"1\",\"allow_tabs_code_editing\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10007,0,'FLEXIcontent - CORE property','plugin','coreprops','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - CORE property\",\"type\":\"plugin\",\"creationDate\":\"July 2012\",\"author\":\"ggppdk\",\"copyright\":\"Copyright (C) 2012 ggppdk\",\"authorEmail\":\"ggppdk@...\",\"authorUrl\":\"www.flexicontent.org\",\"version\":\"1.0\",\"description\":\"Item Form CORE property placer Plugin for FLEXIcontent. This field is used to define the place that the CORE property will appear in Item Form. This is done by ordering it in fields manager, while Content Type filter is enabled\",\"group\":\"\",\"filename\":\"coreprops\"}','{\"props_type\":\"\",\"\":\"FLEXI_FILTERING\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"link_maincat\":\"1\",\"prx_sfx_open_close_configs\":\"\",\"remove_space\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"separatorf\":\"1\",\"opentag\":\"\",\"closetag\":\"\",\"reverse_filter_order\":\"0\",\"filter_compare_type\":\"0\",\"filter_values_require_all\":\"0\",\"filter_values_require_all_tip\":\"0\",\"display_label_filter\":\"2\",\"display_filter_as\":\"0\",\"faceted_filter\":\"2\",\"show_matching_items\":\"1\",\"hide_disabled_values\":\"0\",\"filter_usefirstoption\":\"0\",\"filter_firstoptiontext\":\"FLEXI_ALL\",\"slider_display_config\":\"1\",\"slider_custom_range\":\"\'min\': \'\', \'25%\': \'50\', \'50%\': \'150\', \'75%\': \'600\', \'max\': \'\'\",\"slider_custom_labels\":\"label_any ## label_50 ## label_150 ## label_600 ## label_any\",\"slider_custom_labels_jtext\":\"0\",\"pretext_filter\":\"\",\"posttext_filter\":\"\",\"opentag_filter\":\"\",\"closetag_filter\":\"\",\"display_label_filter_s\":\"2\",\"display_filter_as_s\":\"0\",\"faceted_filter_s\":\"2\",\"show_matching_items_s\":\"1\",\"hide_disabled_values_s\":\"0\",\"filter_usefirstoption_s\":\"0\",\"filter_firstoptiontext_s\":\"FLEXI_ALL\",\"slider_display_config_s\":\"1\",\"slider_custom_range_s\":\"\'min\': \'\', \'25%\': 500, \'50%\': 2000, \'75%\': 10000, \'max\': \'\'\",\"slider_custom_labels_s\":\"label_any ## label_500 ## label_2000 ## label_10000 ## label_any\",\"slider_custom_labels_jtext_s\":\"0\",\"pretext_filter_s\":\"\",\"posttext_filter_s\":\"\",\"opentag_filter_s\":\"\",\"closetag_filter_s\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10008,0,'FLEXIcontent - Date / Timestamp / Publish Up-Down Dates','plugin','date','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Date \\/ Timestamp \\/ Publish Up-Down Dates\",\"type\":\"plugin\",\"creationDate\":\"March 2009\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2009 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.vistamedia.fr\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_DATE\",\"group\":\"\",\"filename\":\"date\"}','{\"\":\"FLEXI_FILTERING\",\"use_ingroup\":\"0\",\"allow_multiple\":\"0\",\"add_position\":\"3\",\"max_values\":\"0\",\"required\":\"0\",\"date_source\":\"0\",\"date_allowtime\":\"1\",\"use_editor_tz\":\"0\",\"display_label_form\":\"1\",\"no_acc_msg_form\":\"\",\"size\":\"30\",\"disable_keyboardinput\":\"0\",\"show_usage\":\"0\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"viewlayout\":\"\",\"show_no_value\":\"0\",\"no_value_msg\":\"\",\"date_format\":\"\",\"custom_date\":\"\",\"lang_filter_format\":\"0\",\"display_tz_suffix\":\"1\",\"display_tz_logged\":\"0\",\"display_tz_guests\":\"0\",\"prx_sfx_open_close_configs\":\"\",\"remove_space\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"opentag_closetag_separatorf_disabled_ingroup\":\"FLEXI_OPENTAG_CLOSETAG_SEPARATORF_DISABLED_INGROUP\",\"separatorf\":\"1\",\"opentag\":\"\",\"closetag\":\"\",\"trigger_onprepare_content\":\"0\",\"trigger_plgs_incatview\":\"0\",\"reverse_filter_order\":\"0\",\"filter_values_require_all\":\"0\",\"filter_values_require_all_tip\":\"0\",\"display_label_filter\":\"2\",\"date_filter_group\":\"month\",\"date_filter_label_format\":\"\",\"display_filter_as\":\"0\",\"faceted_filter\":\"2\",\"show_matching_items\":\"1\",\"hide_disabled_values\":\"0\",\"filter_usefirstoption\":\"0\",\"filter_firstoptiontext\":\"FLEXI_ALL\",\"slider_display_config\":\"1\",\"slider_custom_range\":\"\'min\': \'\', \'25%\': \'2000\', \'50%\': \'2005\', \'75%\': \'2020\', \'max\': \'\'\",\"slider_custom_labels\":\"label_any ## label_2000 ## label_2005 ## label_2020 ## label_any\",\"slider_custom_labels_jtext\":\"0\",\"pretext_filter\":\"\",\"posttext_filter\":\"\",\"opentag_filter\":\"\",\"closetag_filter\":\"\",\"display_label_filter_s\":\"2\",\"date_filter_group_s\":\"month\",\"date_filter_label_format_s\":\"\",\"display_filter_as_s\":\"0\",\"faceted_filter_s\":\"2\",\"show_matching_items_s\":\"1\",\"hide_disabled_values_s\":\"0\",\"filter_usefirstoption_s\":\"0\",\"filter_firstoptiontext_s\":\"FLEXI_ALL\",\"slider_display_config_s\":\"1\",\"slider_custom_range_s\":\"\'min\': \'\', \'25%\': 2000, \'50%\': 2005, \'75%\': 2020, \'max\': \'\'\",\"slider_custom_labels_s\":\"label_any ## label_2000 ## label_2005 ## label_2020 ## label_any\",\"slider_custom_labels_jtext_s\":\"0\",\"pretext_filter_s\":\"\",\"posttext_filter_s\":\"\",\"opentag_filter_s\":\"\",\"closetag_filter_s\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10009,0,'FLEXIcontent - Email','plugin','email','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Email\",\"type\":\"plugin\",\"creationDate\":\"March 2009\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2009 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.vistamedia.fr\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_EMAIL\",\"group\":\"\",\"filename\":\"email\"}','{\"\":\"FLEXI_ADVANCED_SEARCH_VIEW\",\"use_ingroup\":\"0\",\"allow_multiple\":\"0\",\"fields_box_placing\":\"1\",\"add_position\":\"3\",\"max_values\":\"0\",\"required\":\"0\",\"default_value\":\"\",\"default_value_use\":\"0\",\"default_value_title\":\"\",\"title_usage\":\"0\",\"formlayout\":\"\",\"show_values_expand_btn\":\"0\",\"simple_form_layout\":\"0\",\"maxlength\":\"4000\",\"size\":\"30\",\"extra_attributes\":\"\",\"inputmask\":\"\",\"use_title\":\"0\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"viewlayout\":\"\",\"email_cloaking\":\"1\",\"mailto_link\":\"1\",\"prx_sfx_open_close_configs\":\"\",\"remove_space\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"opentag_closetag_separatorf_disabled_ingroup\":\"FLEXI_OPENTAG_CLOSETAG_SEPARATORF_DISABLED_INGROUP\",\"separatorf\":\"1\",\"opentag\":\"\",\"closetag\":\"\",\"trigger_onprepare_content\":\"0\",\"trigger_plgs_incatview\":\"0\",\"display_filter_as_s\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10010,0,'FLEXIcontent - Load Module / Module position','plugin','fcloadmodule','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Load Module \\/ Module position\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2011 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.vistamedia.fr\",\"version\":\"1.1\",\"description\":\"Load a module or module position inside a content item\",\"group\":\"\",\"filename\":\"fcloadmodule\"}','{\"module_method\":\"1\",\"modules\":\"\",\"position\":\"\",\"style\":\"\",\"mod_params\":\"\",\"\":\"FLEXI_FIELD_LABEL_AND_ACCESS\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10011,0,'FLEXIcontent - Navigation (Next/Previous Item)','plugin','fcpagenav','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Navigation (Next\\/Previous Item)\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2011 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.vistamedia.fr\",\"version\":\"1.2\",\"description\":\"Page Navigation Field Plugin for FLEXIcontent\",\"group\":\"\",\"filename\":\"fcpagenav\"}','{\"\":\"FLEXI_FIELD_VALUES\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"viewlayout\":\"\",\"load_css\":\"1\",\"frontend_hidden\":\"1\",\"backend_hidden\":\"1\",\"information_sep\":\"FLEXI_INFORMATION\",\"show_prevnext_count\":\"1\",\"links_sep\":\"Links\",\"item_sep\":\"Previous \\/ Next items\",\"loop_prevnext\":\"1\",\"item_tooltips_sep\":\"Tooltips\",\"use_tooltip\":\"1\",\"tooltip_title_next\":\"\",\"tooltip_title_prev\":\"\",\"item_btntext_sep\":\"Button Text\",\"use_title\":\"0\",\"prev_label\":\"\",\"next_label\":\"\",\"cat_sep\":\"FLEXI_CATEGORY\",\"use_category_link\":\"0\",\"category_label\":\"\",\"images_sep\":\"Images\",\"image_thumbnail_sep\":\"Thumbnailing parameters\",\"nav_width\":\"120\",\"nav_height\":\"60\",\"nav_method\":\"1\",\"item_image_sep\":\"Item images\",\"item_use_image\":\"0\",\"item_image\":\"\",\"item_image_size\":\"\",\"cat_image_sep\":\"Category image\",\"cat_use_image\":\"0\",\"cat_image_source\":\"2\"}','','',0,'0000-00-00 00:00:00',0,0),(10012,0,'FLEXIcontent - Fieldgroup (Repeatable and cascadable group of fields)','plugin','fieldgroup','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Fieldgroup (Repeatable and cascadable group of fields)\",\"type\":\"plugin\",\"creationDate\":\"3 December 2014\",\"author\":\"ggppdk\",\"copyright\":\"Copyright (C) 2014 flexicontent.org\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.flexicontent.org\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_FIELDGROUP\",\"group\":\"\",\"filename\":\"fieldgroup\"}','{\"\":\"FLEXI_MICRODATA_SUPPORT\",\"fields\":\"\",\"allow_multiple\":\"0\",\"add_position\":\"3\",\"max_values\":\"0\",\"required\":\"0\",\"form_empty_fields\":\"1\",\"form_empty_fields_text\":\"FLEXI_NA\",\"compact_edit_global\":\"0\",\"compact_edit\":\"0\",\"compact_edit_excluded\":\"\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"trigger_onprepare_content\":\"0\",\"trigger_plgs_incatview\":\"0\",\"display_mode\":\"0\",\"custom_html\":\"\",\"hide_lbl_ifnoval\":\"\",\"prx_sfx_open_close_configs\":\"\",\"remove_space\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"separatorf\":\"1\",\"opentag\":\"\",\"closetag\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10013,0,'FLEXIcontent - File (Download/View/Share/Download cart)','plugin','file','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - File (Download\\/View\\/Share\\/Download cart)\",\"type\":\"plugin\",\"creationDate\":\"March 2009\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2009 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.vistamedia.fr\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_FILE\",\"group\":\"\",\"filename\":\"file\"}','{\"\":\"FLEXI_ADVANCED_SEARCH_VIEW\",\"use_ingroup\":\"0\",\"allow_multiple\":\"1\",\"fields_box_placing\":\"1\",\"add_position\":\"3\",\"max_values\":\"0\",\"required\":\"0\",\"show_values_expand_btn\":\"1\",\"formlayout\":\"\",\"form_file_preview\":\"0\",\"inputmode\":\"1\",\"iform_title\":\"1\",\"iform_desc\":\"1\",\"iform_lang\":\"0\",\"iform_access\":\"0\",\"iform_dir\":\"0\",\"iform_stamp\":\"0\",\"iform_title_default\":\"\",\"iform_desc_default\":\"\",\"iform_lang_default\":\"*\",\"iform_access_default\":\"1\",\"iform_dir_default\":\"1\",\"iform_stamp_default\":\"1\",\"use_myfiles\":\"1\",\"autoassign\":\"1\",\"target_dir\":\"1\",\"filelist_cols\":\"\",\"resize_on_upload\":\"\",\"upload_max_w\":\"\",\"upload_max_h\":\"\",\"upload_method\":\"\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"noaccess_display\":\"1\",\"noaccess_addvars\":\"0\",\"noaccess_url_unlogged\":\"\",\"noaccess_msg_unlogged\":\"\",\"noaccess_url_logged\":\"\",\"noaccess_msg_logged\":\"\",\"usebutton\":\"1\",\"buttonsposition\":\"1\",\"use_action_separator\":\"0\",\"action_separator\":\"\",\"allowdownloads\":\"1\",\"downloadstext\":\"FLEXI_DOWNLOAD\",\"allowview\":\"0\",\"viewtext\":\"\",\"viewinside\":\"1\",\"stamp_pdfs\":\"0\",\"pdf_header_text\":\"\",\"pdf_footer_text\":\"\",\"pdf_header_ffamily\":\"Helvetica\",\"pdf_header_fstyle\":\"\",\"pdf_header_fsize\":\"11\",\"pdf_header_align\":\"C\",\"pdf_header_border_type\":\"0\",\"pdf_footer_ffamily\":\"Helvetica\",\"pdf_footer_fstyle\":\"\",\"pdf_footer_fsize\":\"11\",\"pdf_footer_align\":\"C\",\"pdf_footer_border_type\":\"0\",\"stamp_date_format\":\"DATE_FORMAT_LC2\",\"stamp_custom_date\":\"\",\"stamp_lang_filter_format\":\"0\",\"stamp_display_tz_suffix\":\"1\",\"stamp_display_tz_logged\":\"0\",\"stamp_display_tz_guests\":\"0\",\"use_downloads_manager\":\"0\",\"addtocarttext\":\"\",\"allowshare\":\"0\",\"sharetext\":\"\",\"enable_coupons\":\"0\",\"coupon_hits_limit\":\"3\",\"coupon_expiration_days\":\"15\",\"viewlayout\":\"\",\"display_total_count\":\"0\",\"total_count_label\":\"FLEXI_FIELD_FILE_TOTAL_FILES\",\"display_total_hits\":\"0\",\"total_hits_label\":\"FLEXI_FIELD_FILE_TOTAL_DOWNLOADS\",\"useicon\":\"0\",\"display_filename\":\"1\",\"lowercase_filename\":\"1\",\"link_filename\":\"1\",\"display_lang\":\"1\",\"display_size\":\"0\",\"display_hits\":\"0\",\"display_descr\":\"1\",\"use_info_separator\":\"0\",\"info_separator\":\"\",\"prx_sfx_open_close_configs\":\"\",\"remove_space\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"opentag_closetag_separatorf_disabled_ingroup\":\"FLEXI_OPENTAG_CLOSETAG_SEPARATORF_DISABLED_INGROUP\",\"separatorf\":\"1\",\"opentag\":\"\",\"closetag\":\"\",\"trigger_onprepare_content\":\"0\",\"trigger_plgs_incatview\":\"0\",\"send_notifications\":\"0\",\"notifications_step\":\"20\",\"notification_tmpl\":\"%%FLEXI_HITS%% __FILE_HITS__ \\n %%FLEXI_FDN_FILE_NO%% __FILE_ID__:  [__FILE_TITLE__] \\n %%FLEXI_FDN_FILE_IN_ITEM%% __ITEM_TITLE__: \\n __ITEM_URL__\",\"send_all_to_email\":\"\",\"send_to_current_item_owner\":\"0\",\"display_filter_as_s\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10014,0,'FLEXIcontent - Item Form Tab / Fieldset / Custom HTML','plugin','groupmarker','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Item Form Tab \\/ Fieldset \\/ Custom HTML\",\"type\":\"plugin\",\"creationDate\":\"July 2012\",\"author\":\"ggppdk\",\"copyright\":\"Copyright (C) 2012 ggppdk\",\"authorEmail\":\"ggppdk@...\",\"authorUrl\":\"www.flexicontent.org\",\"version\":\"1.0\",\"description\":\"Form Field Group Marker Field Plugin for FLEXIcontent. This field is used to mark the start\\/end of FLEXIcontent field groups in ITEM edit FORM. Group will appear inside Tabs\\/Fieldsets\\/etc. Take care to match all openings with a closing marker appropriately.\",\"group\":\"\",\"filename\":\"groupmarker\"}','{\"marker_type\":\"fieldset_open\",\"cont_cssclass\":\"\",\"tabfset_specific\":\"FLEXI_TABS_FIELDSET_OPENING\",\"cont_label\":\"\",\"chtml_specific\":\"FLEXI_CUSTOM_HTML_SEP\",\"custom_html_sep\":\"<hr style=\'clear:both;\' \\/>\"}','','',0,'0000-00-00 00:00:00',0,0),(10015,0,'FLEXIcontent - Image or Gallery (image + details)','plugin','image','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Image or Gallery (image + details)\",\"type\":\"plugin\",\"creationDate\":\"March 2009\",\"author\":\"Emmanuel Danan, Georgios Papadakis\",\"copyright\":\"Copyright (C) 2009 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.vistamedia.fr\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_IMAGE\",\"group\":\"\",\"filename\":\"image\"}','{\"\":\"FLEXI_ADVANCED_SEARCH_VIEW\",\"display_label_form\":\"1\",\"no_acc_msg_form\":\"\",\"use_ingroup\":\"0\",\"allow_multiple\":\"1\",\"fields_box_placing\":\"1\",\"max_values\":\"0\",\"required\":\"0\",\"add_position\":\"3\",\"file_btns_position\":\"2\",\"upload_extensions\":\"bmp,gif,jpg,jpeg,png\",\"upload_maxsize\":\"10000000\",\"thumb_size_resizer\":\"2\",\"thumb_size_default\":\"120\",\"image_source\":\"1\",\"autoassign\":\"1\",\"of_usage\":\"0\",\"protect_original\":\"1\",\"target_dir\":\"1\",\"auto_delete_unused\":\"1\",\"list_all_media_files\":\"0\",\"limit_by_uploader\":\"0\",\"resize_on_upload\":\"\",\"upload_max_w\":\"\",\"upload_max_h\":\"\",\"upload_method\":\"\",\"linkto_url\":\"0\",\"url_target\":\"_self\",\"use_alt\":\"0\",\"default_alt\":\"\",\"alt_usage\":\"0\",\"use_title\":\"0\",\"default_title\":\"\",\"title_usage\":\"0\",\"use_desc\":\"1\",\"default_desc\":\"\",\"text_desc\":\"0\",\"use_cust1\":\"0\",\"default_cust1\":\"\",\"cust1_usage\":\"0\",\"use_cust2\":\"0\",\"default_cust2\":\"\",\"cust2_usage\":\"0\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"default_method_item\":\"display\",\"default_method_cat\":\"display_single\",\"cat_link_single_to\":\"1\",\"usepopup_disabled_link_to_url\":\"Gallery navigation JS has been disabled in ITEM & CATEGORY view, because parameter \'Link to URL\' was enabled\",\"usepopup_disabled_link_to_item\":\"Gallery navigation JS has been disabled in CATEGORY view, because parameter \'Link to item\' was enabled\",\"usepopup\":\"1\",\"popupinview\":\"\",\"popuptype\":\"4\",\"popuptype_mobile\":\"\",\"grouptype\":\"1\",\"thumbincatview\":\"1\",\"thumbinitemview\":\"2\",\"showtitle\":\"0\",\"showdesc\":\"0\",\"uselegend\":\"1\",\"legendinview\":\"\",\"default_image\":\"\",\"dir\":\"images\\/stories\\/flexicontent\",\"unique_thumb_method\":\"0\",\"quality\":\"90\",\"wm_opacity\":\"100\",\"wm_position\":\"BR\",\"w_l\":\"800\",\"h_l\":\"600\",\"method_l\":\"0\",\"use_watermark_l\":\"0\",\"wm_l\":\"plugins\\/flexicontent_fields\\/image\\/image\\/watermarks\\/wm_l.png\",\"copy_original_l\":\"1\",\"w_m\":\"400\",\"h_m\":\"300\",\"method_m\":\"0\",\"use_watermark_m\":\"0\",\"wm_m\":\"plugins\\/flexicontent_fields\\/image\\/image\\/watermarks\\/wm_m.png\",\"copy_original_m\":\"1\",\"w_s\":\"120\",\"h_s\":\"90\",\"method_s\":\"1\",\"use_watermark_s\":\"0\",\"wm_s\":\"plugins\\/flexicontent_fields\\/image\\/image\\/watermarks\\/wm_s.png\",\"copy_original_s\":\"1\",\"w_b\":\"40\",\"h_b\":\"30\",\"method_b\":\"1\",\"use_watermark_b\":\"0\",\"wm_b\":\"plugins\\/flexicontent_fields\\/image\\/image\\/watermarks\\/wm_s.png\",\"copy_original_b\":\"1\",\"prx_sfx_open_close_configs\":\"\",\"remove_space\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"separatorf\":\"0\",\"opentag\":\"\",\"closetag\":\"\",\"useogp\":\"0\",\"ogpinview\":\"\",\"ogpthumbsize\":\"2\",\"display_filter_as_s\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10016,0,'FLEXIcontent - Joomla Profile','plugin','jprofile','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Joomla Profile\",\"type\":\"plugin\",\"creationDate\":\"March 2009\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2009 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.flexicontent.org\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_JPROFILE\",\"group\":\"\",\"filename\":\"jprofile\"}','{\"\":\"FLEXI_FIELD_LABEL_AND_ACCESS\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"frontend_hidden\":\"1\",\"backend_hidden\":\"1\",\"displayed_user\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10017,0,'FLEXIcontent - HTML list of URLs/Anchors/JS links','plugin','linkslist','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - HTML list of URLs\\/Anchors\\/JS links\",\"type\":\"plugin\",\"creationDate\":\"March 2009\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2009 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.vistamedia.fr\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_LINKSLIST\",\"group\":\"\",\"filename\":\"linkslist\"}','{\"\":\"FLEXI_FIELD_LINKSLIST_CUSTOM_CSS_JS\",\"required\":\"0\",\"default_values\":\"\",\"extra_votes_configs\":\"\",\"field_elements\":\"\",\"editform_field_type\":\"1\",\"pretext_form\":\"\",\"posttext_form\":\"\",\"separator\":\"0\",\"opentag_form\":\"\",\"closetag_form\":\"\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"add_non_selected\":\"0\",\"list_type\":\"ul\",\"list_class\":\"\",\"list_id\":\"\",\"js_code\":\"\",\"css_code\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10018,0,'FLEXIcontent - Mini-Gallery (inline slideshow with popup zoom)','plugin','minigallery','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Mini-Gallery (inline slideshow with popup zoom)\",\"type\":\"plugin\",\"creationDate\":\"June 2009\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2009 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.vistamedia.fr\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_MINIGALLERY\",\"group\":\"\",\"filename\":\"minigallery\"}','{\"\":\"FLEXI_FIELD_MGALLERY_CAPTIONS\",\"allow_multiple\":\"1\",\"fields_box_placing\":\"1\",\"add_position\":\"3\",\"max_values\":\"0\",\"required\":\"0\",\"show_values_expand_btn\":\"1\",\"formlayout\":\"\",\"form_file_preview\":\"1\",\"inputmode\":\"1\",\"iform_title\":\"1\",\"iform_desc\":\"1\",\"iform_lang\":\"0\",\"iform_access\":\"0\",\"iform_dir\":\"0\",\"iform_title_default\":\"\",\"iform_desc_default\":\"\",\"iform_lang_default\":\"*\",\"iform_access_default\":\"1\",\"iform_dir_default\":\"0\",\"use_myfiles\":\"1\",\"autoassign\":\"1\",\"target_dir\":\"0\",\"filelist_cols\":\"\",\"resize_on_upload\":\"\",\"upload_max_w\":\"\",\"upload_max_h\":\"\",\"upload_method\":\"\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"usepopup\":\"1\",\"popuptype\":\"4\",\"w_l\":\"450\",\"h_l\":\"300\",\"thumbnails\":\"1\",\"thumbposition\":\"3\",\"w_s\":\"100\",\"h_s\":\"66\",\"scroll_thumbnails\":\"1\",\"usecaptions\":\"1\",\"customcaptions\":\"This is a caption\",\"controller\":\"1\",\"delay\":\"4000\",\"duration\":\"1000\",\"slideshowtype\":\"slideshow\",\"transition\":\"back\",\"t_dir\":\"in\",\"otheroptions\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10019,0,'FLEXIcontent - International Phone Numbers','plugin','phonenumbers','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - International Phone Numbers\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Lyquix, ggppdk\",\"copyright\":\"Copyright (C) 2013 Lyquix\",\"authorEmail\":\"info@lyquix.com\",\"authorUrl\":\"http:\\/\\/www.lyquix.com\",\"version\":\"1.2\",\"description\":\"PLG_FLEXICONTENT_FIELDS_PHONENUMBERS\",\"group\":\"\",\"filename\":\"phonenumbers\"}','{\"\":\"FLEXI_FIELD_VIEWING\",\"use_ingroup\":\"0\",\"allow_multiple\":\"0\",\"add_position\":\"3\",\"max_values\":\"0\",\"required\":\"0\",\"use_label\":\"3\",\"use_cc\":\"3\",\"use_phone\":\"3\",\"label_maxlength\":\"48\",\"label_size\":\"48\",\"cc_maxlength\":\"6\",\"cc_size\":\"6\",\"show_part_labels\":\"0\",\"phone1_maxlength\":\"12\",\"phone1_size\":\"12\",\"phone2_maxlength\":\"12\",\"phone2_size\":\"12\",\"phone3_maxlength\":\"12\",\"phone3_size\":\"12\",\"allow_letters\":\"0\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"display_phone_label\":\"1\",\"display_country_code\":\"1\",\"display_area_code\":\"1\",\"add_tel_link\":\"0\",\"label_prefix\":\"\",\"label_suffix\":\"\",\"country_code_prefix\":\"+\",\"separator_cc_phone1\":\" \",\"separator_phone1_phone2\":\"-\",\"separator_phone2_phone3\":\"-\",\"opentag\":\"\",\"closetag\":\"\",\"field_prefix\":\"\",\"field_suffix\":\"\",\"trigger_onprepare_content\":\"0\",\"trigger_plgs_incatview\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10020,0,'FLEXIcontent - Radio','plugin','radio','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Radio\",\"type\":\"plugin\",\"creationDate\":\"March 2009\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2009 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.vistamedia.fr\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_RADIO\",\"group\":\"\",\"filename\":\"radio\"}','{\"\":\"FLEXI_FILTERING\",\"use_ingroup\":\"0\",\"allow_multiple\":\"0\",\"add_position\":\"3\",\"required\":\"0\",\"max_values\":\"0\",\"min_values\":\"0\",\"exact_values\":\"0\",\"default_value\":\"\",\"default_value_use\":\"0\",\"sql_mode\":\"0\",\"field_elements\":\"1::Yes%% 0::No%% \",\"use_elements_state\":\"0\",\"cascade_prompt\":\"\",\"image_type\":\"\",\"imagedir\":\"\",\"icon_size_form\":\"\",\"icon_color_form\":\"\",\"display_label_form\":\"1\",\"no_acc_msg_form\":\"\",\"use_jslib\":\"2\",\"form_vals_display\":\"\",\"size\":\"\",\"sortable\":\"\",\"usefirstoption\":\"0\",\"firstoptiontext\":\"FLEXI_PLEASE_SELECT\",\"pretext_form\":\"\",\"posttext_form\":\"\",\"separator\":\"0\",\"opentag_form\":\"\",\"closetag_form\":\"\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"viewlayout\":\"\",\"lang_filter_values\":\"1\",\"text_or_value\":\"1\",\"icon_size\":\"\",\"icon_color\":\"\",\"display_all\":\"0\",\"prx_sfx_open_close_configs\":\"\",\"remove_space\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"opentag_closetag_separatorf_disabled_ingroup\":\"FLEXI_OPENTAG_CLOSETAG_SEPARATORF_DISABLED_INGROUP\",\"separatorf\":\"1\",\"opentag\":\"\",\"closetag\":\"\",\"ns_pretext\":\"\",\"ns_posttext\":\"\",\"trigger_onprepare_content\":\"0\",\"trigger_plgs_incatview\":\"0\",\"filter_customize_options\":\"0\",\"filter_compare_type\":\"0\",\"filter_values_require_all\":\"0\",\"filter_values_require_all_tip\":\"0\",\"display_label_filter\":\"2\",\"display_filter_as\":\"0\",\"faceted_filter\":\"2\",\"show_matching_items\":\"1\",\"hide_disabled_values\":\"0\",\"filter_usefirstoption\":\"0\",\"filter_firstoptiontext\":\"FLEXI_ALL\",\"slider_display_config\":\"1\",\"slider_custom_range\":\"\'min\': \'\', \'25%\': \'50\', \'50%\': \'150\', \'75%\': \'600\', \'max\': \'\'\",\"slider_custom_labels\":\"label_any ## label_50 ## label_150 ## label_600 ## label_any\",\"slider_custom_labels_jtext\":\"0\",\"pretext_filter\":\"\",\"posttext_filter\":\"\",\"opentag_filter\":\"\",\"closetag_filter\":\"\",\"display_label_filter_s\":\"2\",\"display_filter_as_s\":\"0\",\"faceted_filter_s\":\"2\",\"show_matching_items_s\":\"1\",\"hide_disabled_values_s\":\"0\",\"filter_usefirstoption_s\":\"0\",\"filter_firstoptiontext_s\":\"FLEXI_ALL\",\"slider_display_config_s\":\"1\",\"slider_custom_range_s\":\"\'min\': \'\', \'25%\': 500, \'50%\': 2000, \'75%\': 10000, \'max\': \'\'\",\"slider_custom_labels_s\":\"label_any ## label_500 ## label_2000 ## label_10000 ## label_any\",\"slider_custom_labels_jtext_s\":\"0\",\"pretext_filter_s\":\"\",\"posttext_filter_s\":\"\",\"opentag_filter_s\":\"\",\"closetag_filter_s\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10021,0,'FLEXIcontent - Radio Image','plugin','radioimage','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Radio Image\",\"type\":\"plugin\",\"creationDate\":\"March 2009\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2009 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.vistamedia.fr\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_RADIOIMAGE\",\"group\":\"\",\"filename\":\"radioimage\"}','{\"\":\"FLEXI_FILTERING\",\"use_ingroup\":\"0\",\"allow_multiple\":\"0\",\"add_position\":\"3\",\"required\":\"0\",\"max_values\":\"0\",\"min_values\":\"0\",\"exact_values\":\"0\",\"default_value\":\"\",\"default_value_use\":\"0\",\"sql_mode\":\"0\",\"field_elements\":\"1::Information::information.png%% 0::Warning::warning.png%% \",\"use_elements_state\":\"0\",\"cascade_prompt\":\"\",\"image_type\":\"0\",\"imagedir\":\"images\\/stories\\/\",\"icon_size_form\":\"\",\"icon_color_form\":\"\",\"display_label_form\":\"1\",\"no_acc_msg_form\":\"\",\"use_jslib\":\"2\",\"form_vals_display\":\"1\",\"usefirstoption\":\"0\",\"firstoptiontext\":\"FLEXI_PLEASE_SELECT\",\"display_as_select\":\"0\",\"size\":\"\",\"sortable\":\"\",\"pretext_form\":\"\",\"posttext_form\":\"\",\"separator\":\"0\",\"opentag_form\":\"\",\"closetag_form\":\"\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"viewlayout\":\"\",\"lang_filter_values\":\"1\",\"text_or_value\":\"2\",\"icon_size\":\"\",\"icon_color\":\"\",\"display_all\":\"0\",\"prx_sfx_open_close_configs\":\"\",\"remove_space\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"opentag_closetag_separatorf_disabled_ingroup\":\"FLEXI_OPENTAG_CLOSETAG_SEPARATORF_DISABLED_INGROUP\",\"separatorf\":\"1\",\"opentag\":\"\",\"closetag\":\"\",\"ns_pretext\":\"\",\"ns_posttext\":\"\",\"trigger_onprepare_content\":\"0\",\"trigger_plgs_incatview\":\"0\",\"filter_customize_options\":\"0\",\"filter_compare_type\":\"0\",\"filter_values_require_all\":\"0\",\"filter_values_require_all_tip\":\"0\",\"display_label_filter\":\"2\",\"filter_vals_display\":\"0\",\"icon_size_filter\":\"\",\"icon_color_filter\":\"\",\"display_filter_as\":\"0\",\"faceted_filter\":\"2\",\"show_matching_items\":\"1\",\"hide_disabled_values\":\"0\",\"filter_usefirstoption\":\"0\",\"filter_firstoptiontext\":\"FLEXI_ALL\",\"slider_display_config\":\"1\",\"slider_custom_range\":\"\'min\': \'\', \'25%\': \'50\', \'50%\': \'150\', \'75%\': \'600\', \'max\': \'\'\",\"slider_custom_labels\":\"label_any ## label_50 ## label_150 ## label_600 ## label_any\",\"slider_custom_labels_jtext\":\"0\",\"pretext_filter\":\"\",\"posttext_filter\":\"\",\"opentag_filter\":\"\",\"closetag_filter\":\"\",\"display_label_filter_s\":\"2\",\"filter_vals_display_s\":\"0\",\"icon_size_filter_s\":\"\",\"icon_color_filter_s\":\"\",\"display_filter_as_s\":\"0\",\"faceted_filter_s\":\"2\",\"show_matching_items_s\":\"1\",\"hide_disabled_values_s\":\"0\",\"filter_usefirstoption_s\":\"0\",\"filter_firstoptiontext_s\":\"FLEXI_ALL\",\"slider_display_config_s\":\"1\",\"slider_custom_range_s\":\"\'min\': \'\', \'25%\': 500, \'50%\': 2000, \'75%\': 10000, \'max\': \'\'\",\"slider_custom_labels_s\":\"label_any ## label_500 ## label_2000 ## label_10000 ## label_any\",\"slider_custom_labels_jtext_s\":\"0\",\"pretext_filter_s\":\"\",\"posttext_filter_s\":\"\",\"opentag_filter_s\":\"\",\"closetag_filter_s\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10022,0,'FLEXIcontent - Relation (List of related items)','plugin','relation','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Relation (List of related items)\",\"type\":\"plugin\",\"creationDate\":\"Aug 2011\",\"author\":\"ggppdk\",\"copyright\":\"Copyright (C) 2011 ggppdk\",\"authorEmail\":\"ggppdk\",\"authorUrl\":\"www.flexicontent.org\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_RELATION\",\"group\":\"\",\"filename\":\"relation\"}','{\"\":\"FLEXI_FILTERING\",\"display_label_form\":\"1\",\"required\":\"0\",\"no_acc_msg_form\":\"\",\"size\":\"12\",\"prepend_item_state\":\"1\",\"maxtitlechars\":\"40\",\"orderby_form\":\"alpha\",\"selected_items_sortable\":\"0\",\"method_cat\":\"1\",\"usesubcats\":\"0\",\"use_cat_acl\":\"1\",\"subcat_items\":\"1\",\"method_types\":\"1\",\"samelangonly\":\"1\",\"use_publish_dates\":\"1\",\"onlypublished\":\"1\",\"ownedbyuser\":\"0\",\"viewlayout\":\"\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"itemcount\":\"\",\"itemslist_acclvl\":\"1\",\"use_publish_dates_view\":\"1\",\"onlypublished_view\":\"1\",\"ownedbyuser_view\":\"-1\",\"orderby\":\"alpha\",\"orderbycustomfield\":\"1\",\"orderbycustomfieldid\":\"0\",\"orderbycustomfielddir\":\"ASC\",\"orderbycustomfieldint\":\"0\",\"relitem_html\":\"__display_text__\",\"displayway\":\"1\",\"addlink\":\"1\",\"addtooltip\":\"1\",\"trigger_onprepare_content\":\"0\",\"trigger_plgs_incatview\":\"0\",\"prx_sfx_open_close_configs\":\"\",\"remove_space\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"separatorf\":\"1\",\"opentag\":\"\",\"closetag\":\"\",\"auto_relate_curritem\":\"0\",\"auto_relate_position\":\"0\",\"auto_relate_acclvl\":\"1\",\"auto_relate_show_to_unauth\":\"0\",\"auto_relate_menu_itemid\":\"\",\"auto_relate_submit_title\":\"\",\"auto_relate_submit_text\":\"\",\"auto_relate_submit_mssg\":\"\",\"show_total_only\":\"0\",\"total_in_view\":\"\",\"total_show_auto_btn\":\"0\",\"total_show_list\":\"0\",\"total_relitem_html\":\"__display_text__\",\"filter_values_require_all\":\"0\",\"filter_values_require_all_tip\":\"0\",\"display_label_filter\":\"2\",\"display_filter_as\":\"0\",\"faceted_filter\":\"2\",\"show_matching_items\":\"1\",\"hide_disabled_values\":\"0\",\"filter_usefirstoption\":\"0\",\"filter_firstoptiontext\":\"FLEXI_ALL\",\"slider_display_config\":\"1\",\"slider_custom_range\":\"\'min\': \'\', \'25%\': \'50\', \'50%\': \'150\', \'75%\': \'600\', \'max\': \'\'\",\"slider_custom_labels\":\"label_any ## label_50 ## label_150 ## label_600 ## label_any\",\"slider_custom_labels_jtext\":\"0\",\"pretext_filter\":\"\",\"posttext_filter\":\"\",\"opentag_filter\":\"\",\"closetag_filter\":\"\",\"display_label_filter_s\":\"2\",\"display_filter_as_s\":\"0\",\"faceted_filter_s\":\"2\",\"show_matching_items_s\":\"1\",\"hide_disabled_values_s\":\"0\",\"filter_usefirstoption_s\":\"0\",\"filter_firstoptiontext_s\":\"FLEXI_ALL\",\"slider_display_config_s\":\"1\",\"slider_custom_range_s\":\"\'min\': \'\', \'25%\': 500, \'50%\': 2000, \'75%\': 10000, \'max\': \'\'\",\"slider_custom_labels_s\":\"label_any ## label_500 ## label_2000 ## label_10000 ## label_any\",\"slider_custom_labels_jtext_s\":\"0\",\"pretext_filter_s\":\"\",\"posttext_filter_s\":\"\",\"opentag_filter_s\":\"\",\"closetag_filter_s\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10023,0,'FLEXIcontent - Relation - Reverse','plugin','relation_reverse','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Relation - Reverse\",\"type\":\"plugin\",\"creationDate\":\"Aug 2011\",\"author\":\"ggppdk\",\"copyright\":\"Copyright (C) 2011 ggppdk\",\"authorEmail\":\"ggppdk\",\"authorUrl\":\"www.flexicontent.org\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_RELATION_REVERSE\",\"group\":\"\",\"filename\":\"relation_reverse\"}','{\"\":\"FLEXI_VIEWING\",\"itemcount_form\":\"\",\"orderby_form\":\"alpha\",\"orderbycustomfield_form\":\"1\",\"orderbycustomfieldid_form\":\"0\",\"orderbycustomfielddir_form\":\"ASC\",\"orderbycustomfieldint_form\":\"0\",\"relitem_html_form\":\"__display_text__\",\"displayway_form\":\"1\",\"addlink_form\":\"1\",\"addtooltip_form\":\"1\",\"pretext_form\":\"\",\"posttext_form\":\"\",\"separator\":\"1\",\"opentag_form\":\"\",\"closetag_form\":\"\",\"viewlayout\":\"\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"itemcount\":\"\",\"itemslist_acclvl\":\"1\",\"use_publish_dates\":\"1\",\"onlypublished\":\"1\",\"ownedbyuser\":\"0\",\"orderby\":\"alpha\",\"orderbycustomfield\":\"1\",\"orderbycustomfieldid\":\"0\",\"orderbycustomfielddir\":\"ASC\",\"orderbycustomfieldint\":\"0\",\"relitem_html\":\"__display_text__\",\"displayway\":\"1\",\"addlink\":\"1\",\"addtooltip\":\"1\",\"trigger_onprepare_content\":\"0\",\"trigger_plgs_incatview\":\"0\",\"prx_sfx_open_close_configs\":\"\",\"remove_space\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"separatorf\":\"1\",\"opentag\":\"\",\"closetag\":\"\",\"auto_relate_curritem\":\"0\",\"auto_relate_position\":\"0\",\"auto_relate_acclvl\":\"1\",\"auto_relate_show_to_unauth\":\"0\",\"auto_relate_menu_itemid\":\"\",\"auto_relate_submit_title\":\"\",\"auto_relate_submit_text\":\"\",\"auto_relate_submit_mssg\":\"\",\"show_total_only\":\"0\",\"total_in_view\":\"\",\"total_show_auto_btn\":\"0\",\"total_show_list\":\"0\",\"total_relitem_html\":\"__display_text__\"}','','',0,'0000-00-00 00:00:00',0,0),(10024,0,'FLEXIcontent - Select','plugin','select','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Select\",\"type\":\"plugin\",\"creationDate\":\"March 2009\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2009 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.vistamedia.fr\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_SELECT\",\"group\":\"\",\"filename\":\"select\"}','{\"\":\"FLEXI_FILTERING\",\"use_ingroup\":\"0\",\"allow_multiple\":\"0\",\"add_position\":\"3\",\"required\":\"0\",\"max_values\":\"0\",\"min_values\":\"0\",\"exact_values\":\"0\",\"default_value\":\"\",\"default_value_use\":\"0\",\"sql_mode\":\"0\",\"field_elements\":\"1::Yes%% 0::No%% \",\"use_elements_state\":\"0\",\"cascade_prompt\":\"\",\"image_type\":\"\",\"imagedir\":\"\",\"icon_size_form\":\"\",\"icon_color_form\":\"\",\"display_label_form\":\"1\",\"no_acc_msg_form\":\"\",\"use_jslib\":\"1\",\"form_vals_display\":\"\",\"size\":\"\",\"sortable\":\"\",\"usefirstoption\":\"1\",\"firstoptiontext\":\"FLEXI_PLEASE_SELECT\",\"opentag_form\":\"\",\"closetag_form\":\"\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"viewlayout\":\"\",\"lang_filter_values\":\"1\",\"text_or_value\":\"1\",\"icon_size\":\"\",\"icon_color\":\"\",\"display_all\":\"0\",\"prx_sfx_open_close_configs\":\"\",\"remove_space\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"opentag_closetag_separatorf_disabled_ingroup\":\"FLEXI_OPENTAG_CLOSETAG_SEPARATORF_DISABLED_INGROUP\",\"separatorf\":\"1\",\"opentag\":\"\",\"closetag\":\"\",\"ns_pretext\":\"\",\"ns_posttext\":\"\",\"trigger_onprepare_content\":\"0\",\"trigger_plgs_incatview\":\"0\",\"filter_customize_options\":\"0\",\"filter_compare_type\":\"0\",\"filter_values_require_all\":\"0\",\"filter_values_require_all_tip\":\"0\",\"display_label_filter\":\"2\",\"display_filter_as\":\"0\",\"faceted_filter\":\"2\",\"show_matching_items\":\"1\",\"hide_disabled_values\":\"0\",\"filter_usefirstoption\":\"0\",\"filter_firstoptiontext\":\"FLEXI_ALL\",\"slider_display_config\":\"1\",\"slider_custom_range\":\"\'min\': \'\', \'25%\': \'50\', \'50%\': \'150\', \'75%\': \'600\', \'max\': \'\'\",\"slider_custom_labels\":\"label_any ## label_50 ## label_150 ## label_600 ## label_any\",\"slider_custom_labels_jtext\":\"0\",\"pretext_filter\":\"\",\"posttext_filter\":\"\",\"opentag_filter\":\"\",\"closetag_filter\":\"\",\"display_label_filter_s\":\"2\",\"display_filter_as_s\":\"0\",\"faceted_filter_s\":\"2\",\"show_matching_items_s\":\"1\",\"hide_disabled_values_s\":\"0\",\"filter_usefirstoption_s\":\"0\",\"filter_firstoptiontext_s\":\"FLEXI_ALL\",\"slider_display_config_s\":\"1\",\"slider_custom_range_s\":\"\'min\': \'\', \'25%\': 500, \'50%\': 2000, \'75%\': 10000, \'max\': \'\'\",\"slider_custom_labels_s\":\"label_any ## label_500 ## label_2000 ## label_10000 ## label_any\",\"slider_custom_labels_jtext_s\":\"0\",\"pretext_filter_s\":\"\",\"posttext_filter_s\":\"\",\"opentag_filter_s\":\"\",\"closetag_filter_s\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10025,0,'FLEXIcontent - Select Multiple','plugin','selectmultiple','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Select Multiple\",\"type\":\"plugin\",\"creationDate\":\"March 2009\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2009 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.vistamedia.fr\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_SELECTMULTIPLE\",\"group\":\"\",\"filename\":\"selectmultiple\"}','{\"\":\"FLEXI_FILTERING\",\"use_ingroup\":\"0\",\"allow_multiple\":\"0\",\"add_position\":\"3\",\"required\":\"0\",\"max_values\":\"0\",\"min_values\":\"0\",\"exact_values\":\"0\",\"default_values\":\"\",\"default_value_use\":\"0\",\"sql_mode\":\"0\",\"field_elements\":\"1::Yes%% 0::No%% \",\"use_elements_state\":\"0\",\"cascade_prompt\":\"\",\"image_type\":\"\",\"imagedir\":\"\",\"icon_size_form\":\"\",\"icon_color_form\":\"\",\"display_label_form\":\"1\",\"no_acc_msg_form\":\"\",\"use_jslib\":\"1\",\"form_vals_display\":\"\",\"size\":\"6\",\"sortable\":\"0\",\"usefirstoption\":\"1\",\"firstoptiontext\":\"FLEXI_PLEASE_SELECT\",\"opentag_form\":\"\",\"closetag_form\":\"\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"viewlayout\":\"\",\"lang_filter_values\":\"1\",\"text_or_value\":\"1\",\"icon_size\":\"\",\"icon_color\":\"\",\"display_all\":\"0\",\"prx_sfx_open_close_configs\":\"\",\"remove_space\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"separatorf\":\"1\",\"opentag\":\"\",\"closetag\":\"\",\"ns_pretext\":\"\",\"ns_posttext\":\"\",\"trigger_onprepare_content\":\"0\",\"trigger_plgs_incatview\":\"0\",\"filter_customize_options\":\"0\",\"filter_compare_type\":\"0\",\"filter_values_require_all\":\"0\",\"filter_values_require_all_tip\":\"0\",\"display_label_filter\":\"2\",\"display_filter_as\":\"0\",\"faceted_filter\":\"2\",\"show_matching_items\":\"1\",\"hide_disabled_values\":\"0\",\"filter_usefirstoption\":\"0\",\"filter_firstoptiontext\":\"FLEXI_ALL\",\"slider_display_config\":\"1\",\"slider_custom_range\":\"\'min\': \'\', \'25%\': \'50\', \'50%\': \'150\', \'75%\': \'600\', \'max\': \'\'\",\"slider_custom_labels\":\"label_any ## label_50 ## label_150 ## label_600 ## label_any\",\"slider_custom_labels_jtext\":\"0\",\"pretext_filter\":\"\",\"posttext_filter\":\"\",\"opentag_filter\":\"\",\"closetag_filter\":\"\",\"display_label_filter_s\":\"2\",\"display_filter_as_s\":\"0\",\"faceted_filter_s\":\"2\",\"show_matching_items_s\":\"1\",\"hide_disabled_values_s\":\"0\",\"filter_usefirstoption_s\":\"0\",\"filter_firstoptiontext_s\":\"FLEXI_ALL\",\"slider_display_config_s\":\"1\",\"slider_custom_range_s\":\"\'min\': \'\', \'25%\': 500, \'50%\': 2000, \'75%\': 10000, \'max\': \'\'\",\"slider_custom_labels_s\":\"label_any ## label_500 ## label_2000 ## label_10000 ## label_any\",\"slider_custom_labels_jtext_s\":\"0\",\"pretext_filter_s\":\"\",\"posttext_filter_s\":\"\",\"opentag_filter_s\":\"\",\"closetag_filter_s\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10026,0,'FLEXIcontent - Shared Video/Audio (Youtube,etc / SoundCloud,Last.fm,etc)','plugin','sharedmedia','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Shared Video\\/Audio (Youtube,etc \\/ SoundCloud,Last.fm,etc)\",\"type\":\"plugin\",\"creationDate\":\"December 2015\",\"author\":\"Lyquix, ggppdk\",\"copyright\":\"Copyright (C) 2013 Lyquix\",\"authorEmail\":\"info@lyquix.com\",\"authorUrl\":\"http:\\/\\/www.lyquix.com\",\"version\":\"1.0\",\"description\":\"PLG_FLEXICONTENT_FIELDS_SHAREDMEDIA\",\"group\":\"\",\"filename\":\"sharedmedia\"}','{\"\":\"Debug\",\"use_ingroup\":\"0\",\"allow_multiple\":\"0\",\"add_position\":\"3\",\"max_values\":\"0\",\"display_label_form\":\"1\",\"no_acc_msg_form\":\"\",\"display_title_form\":\"1\",\"display_author_form\":\"1\",\"display_description_form\":\"1\",\"display_edit_size_form\":\"1\",\"display_api_type_form\":\"0\",\"display_media_id_form\":\"0\",\"display_duration_form\":\"0\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"prx_sfx_open_close_configs\":\"\",\"remove_space\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"opentag_closetag_separatorf_disabled_ingroup\":\"FLEXI_OPENTAG_CLOSETAG_SEPARATORF_DISABLED_INGROUP\",\"separatorf\":\"1\",\"opentag\":\"\",\"closetag\":\"\",\"display_title\":\"1\",\"headinglevel\":\"3\",\"display_author\":\"0\",\"display_description\":\"0\",\"display_duration\":\"0\",\"width\":\"480\",\"height\":\"270\",\"player_position\":\"0\",\"use_native_apis\":\"0\",\"autostart\":\"0\",\"force_ssl\":\"1\",\"youtube_key\":\"\",\"debug_to_console\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10027,0,'FLEXIcontent - TermList','plugin','termlist','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - TermList\",\"type\":\"plugin\",\"creationDate\":\"March 2009\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2009 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.vistamedia.fr\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_TERMLIST\",\"group\":\"\",\"filename\":\"termlist\"}','{\"\":\"FLEXI_ADVANCED_SEARCH_VIEW\",\"use_ingroup\":\"0\",\"allow_multiple\":\"0\",\"add_position\":\"3\",\"max_values\":\"0\",\"required\":\"0\",\"default_value_title\":\"\",\"title_usage\":\"0\",\"default_value\":\"\",\"default_value_use\":\"0\",\"validation\":\"2\",\"display_label_form\":\"1\",\"no_acc_msg_form\":\"\",\"title_label\":\"FLEXI_FIELD_TERMTITLE\",\"title_maxlength\":\"0\",\"title_size\":\"80\",\"value_label\":\"FLEXI_FIELD_TERMTEXT\",\"use_html\":\"0\",\"maxlength\":\"\",\"rows\":\"3\",\"cols\":\"80\",\"width\":\"98%\",\"height\":\"250px\",\"show_buttons\":\"0\",\"skip_buttons\":\"\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"viewlayout\":\"\",\"lang_filter_values\":\"0\",\"encode_output\":\"0\",\"clean_output\":\"0\",\"cut_text_catview\":\"0\",\"cut_text_length_catview\":\"200\",\"cut_text_display_catview\":\"0\",\"cut_text_display_btn_icon_catview\":\"icon-paragraph-center\",\"cut_text_display_btn_text_catview\":\"...\",\"prx_sfx_open_close_configs\":\"\",\"remove_space\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"opentag_closetag_separatorf_disabled_ingroup\":\"FLEXI_OPENTAG_CLOSETAG_SEPARATORF_DISABLED_INGROUP\",\"separatorf\":\"1\",\"opentag\":\"\",\"closetag\":\"\",\"trigger_onprepare_content\":\"0\",\"trigger_plgs_incatview\":\"0\",\"display_filter_as_s\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10028,0,'FLEXIcontent - Text (number/time/etc/custom validation)','plugin','text','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Text (number\\/time\\/etc\\/custom validation)\",\"type\":\"plugin\",\"creationDate\":\"March 2009\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2009 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.vistamedia.fr\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_TEXT\",\"group\":\"\",\"filename\":\"text\"}','{\"\":\"FLEXI_FILTERING\",\"use_ingroup\":\"0\",\"allow_multiple\":\"0\",\"add_position\":\"3\",\"max_values\":\"0\",\"required\":\"0\",\"default_value\":\"\",\"default_value_use\":\"0\",\"inputmask\":\"\",\"validation\":\"HTML\",\"regexmask\":\"\",\"custommask\":\"\",\"display_label_form\":\"1\",\"no_acc_msg_form\":\"\",\"placeholder\":\"\",\"maxlength\":\"\",\"size\":\"30\",\"extra_attributes\":\"\",\"pretext_form\":\"\",\"posttext_form\":\"\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"viewlayout\":\"\",\"lang_filter_values\":\"0\",\"encode_output\":\"0\",\"clean_output\":\"0\",\"format_output\":\"0\",\"decimal_digits_displayed\":\"2\",\"decimal_digits_sep\":\".\",\"decimal_thousands_sep\":\",\",\"output_prefix\":\"\",\"output_suffix\":\"\",\"output_custom_func\":\"$value_length = mb_strlen($value, \'UTF-8\');\\r\\nreturn \'Value length is: \'. $value_length;\",\"prx_sfx_open_close_configs\":\"\",\"remove_space\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"opentag_closetag_separatorf_disabled_ingroup\":\"FLEXI_OPENTAG_CLOSETAG_SEPARATORF_DISABLED_INGROUP\",\"separatorf\":\"1\",\"opentag\":\"\",\"closetag\":\"\",\"trigger_onprepare_content\":\"0\",\"trigger_plgs_incatview\":\"0\",\"useogp\":\"0\",\"ogpinview\":\"\",\"ogpusage\":\"1\",\"ogpmaxlen\":\"300\",\"filter_customize_options\":\"0\",\"reverse_filter_order\":\"0\",\"filter_compare_type\":\"0\",\"filter_values_require_all\":\"0\",\"filter_values_require_all_tip\":\"0\",\"display_label_filter\":\"2\",\"display_filter_as\":\"0\",\"faceted_filter\":\"2\",\"show_matching_items\":\"1\",\"hide_disabled_values\":\"0\",\"filter_usefirstoption\":\"0\",\"filter_firstoptiontext\":\"FLEXI_ALL\",\"slider_display_config\":\"1\",\"slider_custom_range\":\"\'min\': \'\', \'25%\': \'50\', \'50%\': \'150\', \'75%\': \'600\', \'max\': \'\'\",\"slider_custom_labels\":\"label_any ## label_50 ## label_150 ## label_600 ## label_any\",\"slider_custom_labels_jtext\":\"0\",\"pretext_filter\":\"\",\"posttext_filter\":\"\",\"opentag_filter\":\"\",\"closetag_filter\":\"\",\"display_label_filter_s\":\"2\",\"display_filter_as_s\":\"0\",\"faceted_filter_s\":\"2\",\"show_matching_items_s\":\"1\",\"hide_disabled_values_s\":\"0\",\"filter_usefirstoption_s\":\"0\",\"filter_firstoptiontext_s\":\"FLEXI_ALL\",\"slider_display_config_s\":\"1\",\"slider_custom_range_s\":\"\'min\': \'\', \'25%\': 500, \'50%\': 2000, \'75%\': 10000, \'max\': \'\'\",\"slider_custom_labels_s\":\"label_any ## label_500 ## label_2000 ## label_10000 ## label_any\",\"slider_custom_labels_jtext_s\":\"0\",\"pretext_filter_s\":\"\",\"posttext_filter_s\":\"\",\"opentag_filter_s\":\"\",\"closetag_filter_s\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10029,0,'FLEXIcontent - Textarea','plugin','textarea','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2009\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2009 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.vistamedia.fr\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_TEXTAREA\",\"group\":\"\",\"filename\":\"textarea\"}','{\"\":\"Extra editor areas\",\"use_ingroup\":\"0\",\"allow_multiple\":\"0\",\"add_position\":\"3\",\"max_values\":\"0\",\"required\":\"0\",\"default_value\":\"\",\"default_value_use\":\"0\",\"validation\":\"2\",\"display_label_form\":\"1\",\"no_acc_msg_form\":\"\",\"use_html\":\"0\",\"maxlength\":\"\",\"rows\":\"3\",\"cols\":\"80\",\"width\":\"98%\",\"height\":\"250px\",\"show_buttons\":\"0\",\"skip_buttons\":\"\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"viewlayout\":\"\",\"lang_filter_values\":\"0\",\"encode_output\":\"0\",\"clean_output\":\"0\",\"cut_text_catview\":\"0\",\"cut_text_length_catview\":\"200\",\"cut_text_display_catview\":\"0\",\"cut_text_display_btn_icon_catview\":\"icon-paragraph-center\",\"cut_text_display_btn_text_catview\":\"...\",\"prx_sfx_open_close_configs\":\"\",\"remove_space\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"opentag_closetag_separatorf_disabled_ingroup\":\"FLEXI_OPENTAG_CLOSETAG_SEPARATORF_DISABLED_INGROUP\",\"separatorf\":\"1\",\"opentag\":\"\",\"closetag\":\"\",\"trigger_onprepare_content\":\"0\",\"trigger_plgs_incatview\":\"0\",\"useogp\":\"0\",\"ogpinview\":\"\",\"ogpusage\":\"1\",\"ogpmaxlen\":\"300\",\"display_filter_as_s\":\"0\",\"editorarea_per_tab\":\"0\",\"start_of_tabs_pattern\":\"\",\"end_of_tabs_pattern\":\"\",\"start_of_tab_pattern\":\"\",\"end_of_tab_pattern\":\"\",\"title_tab_pattern\":\"\",\"force_beforetabs\":\"1\",\"force_aftertabs\":\"1\",\"allow_tabs_code_editing\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10030,0,'FLEXIcontent - Textselect (Text with existing value selection)','plugin','textselect','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Textselect (Text with existing value selection)\",\"type\":\"plugin\",\"creationDate\":\"25 July 2011\",\"author\":\"Suriya Kaewmungmuang, ggppdk\",\"copyright\":\"Copyright (C) 2011 flexicontent.org\",\"authorEmail\":\"enjoyman@gmail.com\",\"authorUrl\":\"www.flexicontent.org\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_TEXTSELECT\",\"group\":\"\",\"filename\":\"textselect\"}','{\"\":\"FLEXI_FILTERING\",\"use_ingroup\":\"0\",\"allow_multiple\":\"0\",\"add_position\":\"3\",\"max_values\":\"0\",\"required\":\"0\",\"default_value\":\"\",\"default_value_use\":\"0\",\"inputmask\":\"\",\"validation\":\"HTML\",\"regexmask\":\"\",\"custommask\":\"\",\"display_label_form\":\"1\",\"no_acc_msg_form\":\"\",\"placeholder\":\"\",\"maxlength\":\"\",\"size\":\"30\",\"extra_attributes\":\"\",\"pretext_form\":\"\",\"posttext_form\":\"\",\"select_field_mode\":\"0\",\"select_field_elements\":\"SELECT value, value as text FROM #__flexicontent_fields_item_relations WHERE field_id=\'{field->id}\' AND value != \'\' GROUP BY value\",\"select_field_prompt\":\"\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"viewlayout\":\"\",\"lang_filter_values\":\"0\",\"encode_output\":\"0\",\"clean_output\":\"0\",\"format_output\":\"0\",\"decimal_digits_displayed\":\"2\",\"decimal_digits_sep\":\".\",\"decimal_thousands_sep\":\",\",\"output_prefix\":\"\",\"output_suffix\":\"\",\"output_custom_func\":\"$value_length = mb_strlen($value, \'UTF-8\');\\r\\nreturn \'Value length is: \'. $value_length;\",\"prx_sfx_open_close_configs\":\"\",\"remove_space\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"opentag_closetag_separatorf_disabled_ingroup\":\"FLEXI_OPENTAG_CLOSETAG_SEPARATORF_DISABLED_INGROUP\",\"separatorf\":\"1\",\"opentag\":\"\",\"closetag\":\"\",\"trigger_onprepare_content\":\"0\",\"trigger_plgs_incatview\":\"0\",\"useogp\":\"0\",\"ogpinview\":\"\",\"ogpusage\":\"1\",\"ogpmaxlen\":\"300\",\"filter_customize_options\":\"0\",\"reverse_filter_order\":\"0\",\"filter_compare_type\":\"0\",\"filter_values_require_all\":\"0\",\"filter_values_require_all_tip\":\"0\",\"display_label_filter\":\"2\",\"display_filter_as\":\"0\",\"faceted_filter\":\"2\",\"show_matching_items\":\"1\",\"hide_disabled_values\":\"0\",\"filter_usefirstoption\":\"0\",\"filter_firstoptiontext\":\"FLEXI_ALL\",\"slider_display_config\":\"1\",\"slider_custom_range\":\"\'min\': \'\', \'25%\': \'50\', \'50%\': \'150\', \'75%\': \'600\', \'max\': \'\'\",\"slider_custom_labels\":\"label_any ## label_50 ## label_150 ## label_600 ## label_any\",\"slider_custom_labels_jtext\":\"0\",\"pretext_filter\":\"\",\"posttext_filter\":\"\",\"opentag_filter\":\"\",\"closetag_filter\":\"\",\"display_label_filter_s\":\"2\",\"display_filter_as_s\":\"0\",\"faceted_filter_s\":\"2\",\"show_matching_items_s\":\"1\",\"hide_disabled_values_s\":\"0\",\"filter_usefirstoption_s\":\"0\",\"filter_firstoptiontext_s\":\"FLEXI_ALL\",\"slider_display_config_s\":\"1\",\"slider_custom_range_s\":\"\'min\': \'\', \'25%\': 500, \'50%\': 2000, \'75%\': 10000, \'max\': \'\'\",\"slider_custom_labels_s\":\"label_any ## label_500 ## label_2000 ## label_10000 ## label_any\",\"slider_custom_labels_jtext_s\":\"0\",\"pretext_filter_s\":\"\",\"posttext_filter_s\":\"\",\"opentag_filter_s\":\"\",\"closetag_filter_s\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10031,0,'FLEXIcontent - Toolbar (social share/other tools)','plugin','toolbar','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Toolbar (social share\\/other tools)\",\"type\":\"plugin\",\"creationDate\":\"March 2011\",\"author\":\"Emmanuel Danan, George Papadakis\",\"copyright\":\"Copyright (C) 2009-2012 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.vistamedia.fr\",\"version\":\"1.2\",\"description\":\"Toolbar Field for FLEXIcontent\",\"group\":\"\",\"filename\":\"toolbar\"}','{\"\":\"FLEXI_FIELD_TOOLBAR_SOCIAL_BTN_BOX\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"frontend_hidden\":\"1\",\"backend_hidden\":\"1\",\"load_css\":\"1\",\"display_comments\":\"1\",\"display_print\":\"1\",\"display_email\":\"1\",\"display_voice\":\"0\",\"voicetarget\":\"flexicontent\",\"display_resizer\":\"1\",\"default_size\":\"12\",\"default_line\":\"16\",\"target\":\"flexicontent\",\"addthis_user\":\"\",\"addthis_pubid\":\"\",\"add_og_site_name\":\"0\",\"add_og_title\":\"0\",\"add_og_descr\":\"0\",\"add_og_type\":\"article\",\"add_og_image\":\"0\",\"og_image_field\":\"\",\"og_image_fallback\":\"\",\"og_image_thumbsize\":\"medium\",\"display_social\":\"1\",\"addthis_code_predefined\":\"\",\"addthis_custom_code\":\"\",\"addthis_size\":\"20\",\"addthis_style\":\"1\",\"addthis_fb_like\":\"1\",\"addthis_fb_like_resize\":\"1\",\"addthis_box_style\":\"1\",\"addthis_box_pos\":\"1\",\"display_social_cat\":\"0\",\"addthis_code_predefined_cat\":\"\",\"addthis_custom_code_cat\":\"\",\"addthis_size_cat\":\"20\",\"addthis_style_cat\":\"1\",\"addthis_fb_like_cat\":\"1\",\"addthis_fb_like_resize_cat\":\"1\",\"addthis_box_style_cat\":\"1\",\"addthis_box_pos_cat\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10032,0,'FLEXIcontent - Weblink','plugin','weblink','flexicontent_fields',0,0,1,0,'{\"name\":\"FLEXIcontent - Weblink\",\"type\":\"plugin\",\"creationDate\":\"March 2009\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2009 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.flexicontent.org\",\"version\":\"1.0\",\"description\":\"FLEXI_FIELD_WEBLINK\",\"group\":\"\",\"filename\":\"weblink\"}','{\"\":\"FLEXI_ADVANCED_SEARCH_VIEW\",\"use_ingroup\":\"0\",\"allow_multiple\":\"0\",\"fields_box_placing\":\"1\",\"add_position\":\"3\",\"max_values\":\"0\",\"required\":\"0\",\"link_source\":\"0\",\"default_link\":\"\",\"link_usage\":\"0\",\"allow_relative_addrs\":\"0\",\"formlayout\":\"\",\"show_values_expand_btn\":\"1\",\"simple_form_layout\":\"0\",\"maxlength\":\"4000\",\"size\":\"30\",\"extra_attributes\":\"\",\"inputmask\":\"\",\"use_title\":\"0\",\"default_title\":\"\",\"title_usage\":\"0\",\"use_text\":\"0\",\"default_text\":\"\",\"text_usage\":\"0\",\"use_class\":\"0\",\"default_class\":\"\",\"class_usage\":\"0\",\"class_choices\":\"\",\"use_id\":\"0\",\"default_id\":\"\",\"id_usage\":\"0\",\"use_target\":\"0\",\"use_hits\":\"1\",\"display_label\":\"1\",\"show_acc_msg\":\"0\",\"no_acc_msg\":\"\",\"include_in_csv_export\":\"0\",\"viewlayout\":\"\",\"target\":\"\",\"use_direct_link\":\"0\",\"add_rel_nofollow\":\"0\",\"display_hits\":\"0\",\"prx_sfx_open_close_configs\":\"\",\"remove_space\":\"0\",\"pretext\":\"\",\"posttext\":\"\",\"opentag_closetag_separatorf_disabled_ingroup\":\"FLEXI_OPENTAG_CLOSETAG_SEPARATORF_DISABLED_INGROUP\",\"separatorf\":\"1\",\"opentag\":\"\",\"closetag\":\"\",\"trigger_onprepare_content\":\"0\",\"trigger_plgs_incatview\":\"0\",\"display_filter_as_s\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10033,0,'PLG_FLEXICONTENT_FLEXINOTIFY','plugin','flexinotify','flexicontent',0,0,1,0,'{\"name\":\"PLG_FLEXICONTENT_FLEXINOTIFY\",\"type\":\"plugin\",\"creationDate\":\"April 2011\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2009 - 2011 Emmanuel Danan. All rights reserved.\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.flexicontent.org\",\"version\":\"1.0\",\"description\":\"PLG_FLEXICONTENT_FLEXINOTIFY_DESCRIPTION\",\"group\":\"\",\"filename\":\"flexinotify\"}','{\"debug_notifications\":\"0\",\"\":\"FLEXI_CUSTOMIZATIONS_PER_EMAIL\",\"mailsubject\":\"\",\"sendername\":\"\",\"senderemail\":\"\",\"send_personalized\":\"1\",\"personalized_limit\":\"50\",\"include_fullname\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10034,0,'PLG_CONTENT_FLEXIBREAK','plugin','flexibreak','content',0,0,1,0,'{\"name\":\"PLG_CONTENT_FLEXIBREAK\",\"type\":\"plugin\",\"creationDate\":\"2013 July\",\"author\":\"Peter Szalatnay, ggppdk\",\"copyright\":\"Copyright (C) 2009 - 2013 Peter Szalatnay, ggppdk. All rights reserved.\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.flexicontent.org\",\"version\":\"2.0\",\"description\":\"PLG_CONTENT_FLEXIBREAK_DESCRIPTION\",\"group\":\"\",\"filename\":\"flexibreak\"}','{\"\":\"PLG_FLEXIBREAK_INTRODUCTION_LINK\",\"display_method\":\"1\",\"pagination\":\"3\",\"show_prevnext_count\":\"1\",\"multipage_toc\":\"1\",\"return_anchors\":\"1\",\"toc_title\":\"1\",\"toc_placement\":\"1\",\"allpages_link\":\"1\",\"custom_allpages\":\"FLEXIBREAK_ALL_PAGES\",\"introtext_title\":\"1\",\"custom_introtext\":\"FLEXIBREAK_INTRODUCTION\"}','','',0,'0000-00-00 00:00:00',0,0),(10035,0,'PLG_FINDER_FLEXICONTENT','plugin','flexicontent','finder',0,0,1,0,'{\"name\":\"PLG_FINDER_FLEXICONTENT\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"FLEXIcontent Project\",\"copyright\":\"(C) 2013 FLEXIcontent Project. All rights reserved.\",\"authorEmail\":\"ggppdk@...\",\"authorUrl\":\"www.flexicontent.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_FLEXICONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"flexicontent\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10036,0,'PLG_SEARCH_FLEXISEARCH','plugin','flexisearch','search',0,0,1,0,'{\"name\":\"PLG_SEARCH_FLEXISEARCH\",\"type\":\"plugin\",\"creationDate\":\"oct 2011\",\"author\":\"Emmanuel Danan, Aazam, ggppdk\",\"copyright\":\"Copyright (C) 2011 Aazam, Emmanuel Danan\",\"authorEmail\":\"aazam@yandex.ru, emmanuel@vistamedia.fr\",\"authorUrl\":\"aazam.narod.ru,www.vistamedia.fr\",\"version\":\"1.1\",\"description\":\"PLG_SEARCH_FLEXISEARCH_DESCRIPTION\",\"group\":\"\",\"filename\":\"flexisearch\"}','{\"filter_lang\":\"1\",\"search_limit\":\"50\",\"search_title\":\"1\",\"search_desc\":\"1\",\"search_fields\":\"1\",\"search_meta\":\"1\",\"search_tags\":\"1\",\"search_select_types\":\"1\",\"search_types\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10037,0,'PLG_SEARCH_FLEXIADVSEARCH','plugin','flexiadvsearch','search',0,0,1,0,'{\"name\":\"PLG_SEARCH_FLEXIADVSEARCH\",\"type\":\"plugin\",\"creationDate\":\"29 June 2011\",\"author\":\"Suriya Kaewmungmuang, ggppdk\",\"copyright\":\"Copyright (C) 2011 flexicontent.org\",\"authorEmail\":\"enjoyman@gmail.com\",\"authorUrl\":\"www.flexicontent.org\",\"version\":\"1.0\",\"description\":\"PLG_SEARCH_FLEXIADVSEARCH_DESCRIPTION\",\"group\":\"\",\"filename\":\"flexiadvsearch\"}','{\"search_limit\":\"50\",\"filter_lang\":\"1\",\"search_archived\":\"0\",\"browsernav\":\"2\"}','','',0,'0000-00-00 00:00:00',0,0),(10038,0,'System - Flexisystem, core tasks','plugin','flexisystem','system',0,1,1,0,'{\"name\":\"System - Flexisystem, core tasks\",\"type\":\"plugin\",\"creationDate\":\"June 2009\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2009 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.vistamedia.fr\",\"version\":\"1.1\",\"description\":\"FLEXI_PLUGIN_SYSTEM\",\"group\":\"\",\"filename\":\"flexisystem\"}','{\"\":\"NOTE: if you are sending expiration emails, after items have expired, <br\\/> do not change item state, and do not clear publish down date\",\"exclude_redirect_cats\":\"\",\"exclude_redirect_articles\":\"\",\"redirect_pdf_format\":\"1\",\"checkin_on_session_end\":\"1\",\"limit_checkout_hours\":\"1\",\"max_checkout_hours\":\"24\",\"archive_on_publish_down\":\"0\",\"clear_publish_down_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10039,0,'System - Flexiadvroute, routing tasks','plugin','flexiadvroute','system',0,1,1,0,'{\"name\":\"System - Flexiadvroute, routing tasks\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Emmanuel Danan\",\"copyright\":\"Copyright (C) 2010 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"www.vistamedia.fr\",\"version\":\"2.0\",\"description\":\"System Plugin for FLEXIcontent Advanced Routing\",\"group\":\"\",\"filename\":\"flexiadvroute\"}','{\"\":\"Hide categories in Content \\/ Content Listings by NOT displaying: <br> <small> &nbsp; a. direct category links <br> &nbsp; b. category title as a content\\/content list markup <br> - These categories are for special purposes, e.g. contain items <b>displayed<\\/b> in frontpage or in a module Slideshow. <\\/small>\",\"route_to_type\":\"0\",\"type_to_route\":\"\",\"cats_to_exclude\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10040,0,'mod_flexicategories','module','mod_flexicategories','',0,1,0,0,'{\"name\":\"mod_flexicategories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FLEXICATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_flexicategories\"}','{\"show_description\":\"0\",\"numitems\":\"0\",\"show_children\":\"0\",\"count\":\"0\",\"maxlevel\":\"0\",\"\":\"FLEXI_IMAGE\",\"show_description_image\":\"0\",\"cat_image_source\":\"2\",\"cat_link_image\":\"1\",\"cat_image_method\":\"1\",\"cat_image_width\":\"24\",\"cat_image_height\":\"24\",\"cat_image_float\":\"left\",\"cat_default_image\":\"\",\"item_heading\":\"4\",\"owncache\":\"1\",\"cache_time\":\"900\"}','','',0,'0000-00-00 00:00:00',0,0),(10041,0,'mod_flexicontent','module','mod_flexicontent','',0,1,0,0,'{\"name\":\"mod_flexicontent\",\"type\":\"module\",\"creationDate\":\"12\\/04\\/2011\",\"author\":\"Emmanuel Danan\",\"copyright\":\"(C) 2009 Emmanuel Danan\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"http:\\/\\/www.flexicontent.org\",\"version\":\"1.3\",\"description\":\"MOD_FLEXICONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_flexicontent\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10042,0,'mod_flexifilter','module','mod_flexifilter','',0,1,0,0,'{\"name\":\"mod_flexifilter\",\"type\":\"module\",\"creationDate\":\"November 2012\",\"author\":\"George Papadakis\",\"copyright\":\"Copyright \\u00a9 2012 George Papadakis\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.flexicontent.org\",\"version\":\"1.0\",\"description\":\"MOD_FLEXIFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_flexifilter\"}','{\"\":\"FLEXI_MODULE_STYLING\",\"layout\":\"default\",\"cat_itemid\":\"\",\"display_cat_list\":\"0\",\"usesubcats\":\"0\",\"mcats_selection\":\"0\",\"mcats_itemid\":\"\",\"ff_placement\":\"0\",\"ff_toggle_search_title\":\"FLEXI_TOGGLE_SEARCH_FORM_MODULE\",\"filter_autosubmit\":\"0\",\"filter_instructions\":\"1\",\"show_search_go\":\"1\",\"flexi_button_class_go\":\"btn btn-success\",\"flexi_button_class_go_custom\":\"\",\"show_search_reset\":\"1\",\"flexi_button_class_reset\":\"btn\",\"flexi_button_class_reset_custom\":\"\",\"use_search\":\"1\",\"show_search_label\":\"1\",\"search_autocomplete\":\"1\",\"show_searchphrase\":\"1\",\"default_searchphrase\":\"all\",\"use_filters\":\"0\",\"display_filter_list\":\"0\",\"filters\":\"\",\"show_filter_labels\":\"1\",\"initial_filters\":\"\",\"filter_placement\":\"1\",\"filter_separatorf\":\"0\",\"filter_pretext\":\"\",\"filter_posttext\":\"\",\"filter_opentag\":\"\",\"filter_closetag\":\"\",\"use_persistent_filters\":\"0\",\"persistent_filters\":\"\",\"combine_show_rules\":\"AND\",\"show_in_views\":\"\",\"enable_php_rule\":\"0\",\"cache\":\"0\",\"moduleclass_sfx\":\"\",\"add_ccs\":\"\",\"add_tooltips\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10043,0,'mod_flexitagscloud','module','mod_flexitagcloud','',0,1,0,0,'{\"name\":\"mod_flexitagscloud\",\"type\":\"module\",\"creationDate\":\"09\\/11\\/2009\",\"author\":\"Emmanuel Danan\",\"copyright\":\"(C) 2008 - 2009 Christoph Lukes\",\"authorEmail\":\"emmanuel@vistamedia.fr\",\"authorUrl\":\"http:\\/\\/www.flexicontent.org\",\"version\":\"1.1\",\"description\":\"MOD_FLEXITAGSCLOUD_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_flexitagcloud\"}','{\"\":\"FLEXI_MODULE_STYLING\",\"layout\":\"default\",\"min_size\":\"1\",\"max_size\":\"10\",\"count\":\"25\",\"seo_mode\":\"1\",\"force_itemid\":\"\",\"method\":\"1\",\"treeinclude\":\"0\",\"combine_show_rules\":\"AND\",\"show_in_views\":\"\",\"enable_php_rule\":\"0\",\"sep_image\":\"FLEXI_IMAGE\",\"use_image\":\"0\",\"image_source\":\"\",\"link_image\":\"1\",\"image_size\":\"\",\"image_width\":\"90\",\"image_height\":\"90\",\"image_method\":\"0\",\"show_modify_date\":\"0\",\"date_format\":\"DATE_FORMAT_LC1\",\"custom_date\":\"\",\"use_fields\":\"0\",\"fields\":\"\",\"limit\":\"10\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"add_canonical\":\"\",\"orderby\":\"\",\"orderbycustomfieldid\":\"0\",\"orderbycustomfielddir\":\"ASC\",\"orderbycustomfieldint\":\"0\",\"limit_override\":\"\",\"orderby_override\":\"\",\"limit_options\":\"\",\"orderby_options\":\"\",\"use_search\":\"\",\"show_search_label\":\"\",\"show_search_tip\":\"\",\"show_search_go\":\"\",\"show_search_reset\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"moduleclass_sfx\":\"\",\"add_ccs\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10044,0,'mod_flexiadvsearch','module','mod_flexiadvsearch','',0,1,0,0,'{\"name\":\"mod_flexiadvsearch\",\"type\":\"module\",\"creationDate\":\"29\\/06\\/2011\",\"author\":\"Suriya Kaewmungmuang, ggppdk\",\"copyright\":\"(C) 2011 flexicontent.org\",\"authorEmail\":\"enjoyman@gmail.com\",\"authorUrl\":\"http:\\/\\/www.flexicontent.org\",\"version\":\"1.0\",\"description\":\"MOD_FLEXIADVSEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_flexiadvsearch\"}','{\"\":\"FLEXI_MODULE_STYLING\",\"layout\":\"news\",\"itemid_force\":\"0\",\"itemid_force_value\":\"\",\"search_inner_width\":\"20\",\"search_inner_prompt\":\"FLEXI_ADV_MOD_SEARCH_PROMPT\",\"button\":\"0\",\"flexi_button_class_go\":\"btn btn-success\",\"flexi_button_class_go_custom\":\"\",\"button_pos\":\"right\",\"button_as\":\"0\",\"button_image\":\"\",\"button_text\":\"FLEXI_ADV_MOD_GO\",\"direct_button\":\"0\",\"flexi_button_class_direct\":\"btn\",\"flexi_button_class_direct_custom\":\"\",\"direct_pos\":\"right\",\"direct_as\":\"0\",\"direct_image\":\"\",\"direct_text\":\"FLEXI_ADV_MOD_DIRECT\",\"linkadvsearch\":\"0\",\"linkadvsearch_txt\":\"FLEXI_ADV_MOD_ADVANCED_SEARCH\",\"flexi_button_class_advanced\":\"btn\",\"flexi_button_class_advanced_custom\":\"\",\"linkadvsearch_pos\":\"right\",\"combine_show_rules\":\"AND\",\"show_in_views\":\"\",\"enable_php_rule\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"moduleclass_sfx\":\"\",\"add_ccs\":\"\",\"add_tooltips\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10045,0,'mod_flexigooglemap','module','mod_flexigooglemap','',0,1,0,0,'{\"name\":\"mod_flexigooglemap\",\"type\":\"module\",\"creationDate\":\"Janvier 2016\",\"author\":\"Berges Yannick\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"yannick@com3elles.com\",\"authorUrl\":\"www.com3elles.com\",\"version\":\"0.9.2\",\"description\":\"MOD_FLEXIGOOGLEMAP_INTRO\",\"group\":\"\",\"filename\":\"mod_flexigooglemap\"}','{\"combine_show_rules\":\"AND\",\"\":\"MOD_FLEXIGOOGLEMAP_INFOWINDOWS\",\"show_in_views\":\"\",\"enable_php_rule\":\"0\",\"catidmode\":\"0\",\"method_category\":\"0\",\"treeinclude\":\"1\",\"fieldaddressid\":\"10\",\"apikey\":\"\",\"maptype\":\"ROADMAP\",\"width\":\"300px\",\"height\":\"600px\",\"maxzoommarker\":\"15\",\"count\":\"\",\"markermode\":\"0\",\"markercolor\":\"redpt\",\"lettermarker\":\"A\",\"animationmarker\":\"1\",\"clustermode\":\"1\",\"gridsize\":\"50\",\"maxzoom\":\"15\",\"uselink\":\"1\",\"linkmode\":\"\",\"$forced_itemid\":\"\",\"infotextmode\":\"0\",\"useadress\":\"1\",\"relitem_html\":\"your text {{fieldname}}\",\"usedirection\":\"1\",\"directionname\":\"MOD_FLEXIGOOGLEMAP_DIRECTIONNAME_TXT\",\"readmore\":\"MOD_FLEXIGOOGLEMAP_READMORE_TXT\",\"cache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);

/*Table structure for table `r8kmb_fields` */

DROP TABLE IF EXISTS `r8kmb_fields`;

CREATE TABLE `r8kmb_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_fields` */

/*Table structure for table `r8kmb_fields_categories` */

DROP TABLE IF EXISTS `r8kmb_fields_categories`;

CREATE TABLE `r8kmb_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_fields_categories` */

/*Table structure for table `r8kmb_fields_groups` */

DROP TABLE IF EXISTS `r8kmb_fields_groups`;

CREATE TABLE `r8kmb_fields_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_fields_groups` */

/*Table structure for table `r8kmb_fields_values` */

DROP TABLE IF EXISTS `r8kmb_fields_values`;

CREATE TABLE `r8kmb_fields_values` (
  `field_id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_fields_values` */

/*Table structure for table `r8kmb_finder_filters` */

DROP TABLE IF EXISTS `r8kmb_finder_filters`;

CREATE TABLE `r8kmb_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_filters` */

/*Table structure for table `r8kmb_finder_links` */

DROP TABLE IF EXISTS `r8kmb_finder_links`;

CREATE TABLE `r8kmb_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_links` */

/*Table structure for table `r8kmb_finder_links_terms0` */

DROP TABLE IF EXISTS `r8kmb_finder_links_terms0`;

CREATE TABLE `r8kmb_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_links_terms0` */

/*Table structure for table `r8kmb_finder_links_terms1` */

DROP TABLE IF EXISTS `r8kmb_finder_links_terms1`;

CREATE TABLE `r8kmb_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_links_terms1` */

/*Table structure for table `r8kmb_finder_links_terms2` */

DROP TABLE IF EXISTS `r8kmb_finder_links_terms2`;

CREATE TABLE `r8kmb_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_links_terms2` */

/*Table structure for table `r8kmb_finder_links_terms3` */

DROP TABLE IF EXISTS `r8kmb_finder_links_terms3`;

CREATE TABLE `r8kmb_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_links_terms3` */

/*Table structure for table `r8kmb_finder_links_terms4` */

DROP TABLE IF EXISTS `r8kmb_finder_links_terms4`;

CREATE TABLE `r8kmb_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_links_terms4` */

/*Table structure for table `r8kmb_finder_links_terms5` */

DROP TABLE IF EXISTS `r8kmb_finder_links_terms5`;

CREATE TABLE `r8kmb_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_links_terms5` */

/*Table structure for table `r8kmb_finder_links_terms6` */

DROP TABLE IF EXISTS `r8kmb_finder_links_terms6`;

CREATE TABLE `r8kmb_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_links_terms6` */

/*Table structure for table `r8kmb_finder_links_terms7` */

DROP TABLE IF EXISTS `r8kmb_finder_links_terms7`;

CREATE TABLE `r8kmb_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_links_terms7` */

/*Table structure for table `r8kmb_finder_links_terms8` */

DROP TABLE IF EXISTS `r8kmb_finder_links_terms8`;

CREATE TABLE `r8kmb_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_links_terms8` */

/*Table structure for table `r8kmb_finder_links_terms9` */

DROP TABLE IF EXISTS `r8kmb_finder_links_terms9`;

CREATE TABLE `r8kmb_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_links_terms9` */

/*Table structure for table `r8kmb_finder_links_termsa` */

DROP TABLE IF EXISTS `r8kmb_finder_links_termsa`;

CREATE TABLE `r8kmb_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_links_termsa` */

/*Table structure for table `r8kmb_finder_links_termsb` */

DROP TABLE IF EXISTS `r8kmb_finder_links_termsb`;

CREATE TABLE `r8kmb_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_links_termsb` */

/*Table structure for table `r8kmb_finder_links_termsc` */

DROP TABLE IF EXISTS `r8kmb_finder_links_termsc`;

CREATE TABLE `r8kmb_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_links_termsc` */

/*Table structure for table `r8kmb_finder_links_termsd` */

DROP TABLE IF EXISTS `r8kmb_finder_links_termsd`;

CREATE TABLE `r8kmb_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_links_termsd` */

/*Table structure for table `r8kmb_finder_links_termse` */

DROP TABLE IF EXISTS `r8kmb_finder_links_termse`;

CREATE TABLE `r8kmb_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_links_termse` */

/*Table structure for table `r8kmb_finder_links_termsf` */

DROP TABLE IF EXISTS `r8kmb_finder_links_termsf`;

CREATE TABLE `r8kmb_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_links_termsf` */

/*Table structure for table `r8kmb_finder_taxonomy` */

DROP TABLE IF EXISTS `r8kmb_finder_taxonomy`;

CREATE TABLE `r8kmb_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_taxonomy` */

insert  into `r8kmb_finder_taxonomy`(`id`,`parent_id`,`title`,`state`,`access`,`ordering`) values (1,0,'ROOT',0,0,0);

/*Table structure for table `r8kmb_finder_taxonomy_map` */

DROP TABLE IF EXISTS `r8kmb_finder_taxonomy_map`;

CREATE TABLE `r8kmb_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_taxonomy_map` */

/*Table structure for table `r8kmb_finder_terms` */

DROP TABLE IF EXISTS `r8kmb_finder_terms`;

CREATE TABLE `r8kmb_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_terms` */

/*Table structure for table `r8kmb_finder_terms_common` */

DROP TABLE IF EXISTS `r8kmb_finder_terms_common`;

CREATE TABLE `r8kmb_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_terms_common` */

insert  into `r8kmb_finder_terms_common`(`term`,`language`) values ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');

/*Table structure for table `r8kmb_finder_tokens` */

DROP TABLE IF EXISTS `r8kmb_finder_tokens`;

CREATE TABLE `r8kmb_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_tokens` */

/*Table structure for table `r8kmb_finder_tokens_aggregate` */

DROP TABLE IF EXISTS `r8kmb_finder_tokens_aggregate`;

CREATE TABLE `r8kmb_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_tokens_aggregate` */

/*Table structure for table `r8kmb_finder_types` */

DROP TABLE IF EXISTS `r8kmb_finder_types`;

CREATE TABLE `r8kmb_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `r8kmb_finder_types` */

/*Table structure for table `r8kmb_flexicontent_advsearch_index` */

DROP TABLE IF EXISTS `r8kmb_flexicontent_advsearch_index`;

CREATE TABLE `r8kmb_flexicontent_advsearch_index` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `extraid` int(11) NOT NULL,
  `search_index` longtext NOT NULL,
  `value_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`field_id`,`item_id`,`extraid`),
  KEY `sid` (`sid`),
  KEY `field_id` (`field_id`),
  KEY `item_id` (`item_id`),
  KEY `value_id` (`value_id`),
  FULLTEXT KEY `search_index` (`search_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `r8kmb_flexicontent_advsearch_index` */

/*Table structure for table `r8kmb_flexicontent_authors_ext` */

DROP TABLE IF EXISTS `r8kmb_flexicontent_authors_ext`;

CREATE TABLE `r8kmb_flexicontent_authors_ext` (
  `user_id` int(11) unsigned NOT NULL,
  `author_basicparams` text,
  `author_catparams` text,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `r8kmb_flexicontent_authors_ext` */

/*Table structure for table `r8kmb_flexicontent_cats_item_relations` */

DROP TABLE IF EXISTS `r8kmb_flexicontent_cats_item_relations`;

CREATE TABLE `r8kmb_flexicontent_cats_item_relations` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `itemid` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`catid`,`itemid`),
  KEY `catid` (`catid`),
  KEY `itemid` (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `r8kmb_flexicontent_cats_item_relations` */

/*Table structure for table `r8kmb_flexicontent_download_coupons` */

DROP TABLE IF EXISTS `r8kmb_flexicontent_download_coupons`;

CREATE TABLE `r8kmb_flexicontent_download_coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `hits` int(11) NOT NULL,
  `hits_limit` int(11) NOT NULL,
  `expire_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `file_id` (`file_id`),
  KEY `token` (`token`),
  KEY `expire_on` (`expire_on`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `r8kmb_flexicontent_download_coupons` */

/*Table structure for table `r8kmb_flexicontent_download_history` */

DROP TABLE IF EXISTS `r8kmb_flexicontent_download_history`;

CREATE TABLE `r8kmb_flexicontent_download_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `last_hit_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `file_id` (`file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `r8kmb_flexicontent_download_history` */

/*Table structure for table `r8kmb_flexicontent_edit_coupons` */

DROP TABLE IF EXISTS `r8kmb_flexicontent_edit_coupons`;

CREATE TABLE `r8kmb_flexicontent_edit_coupons` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `r8kmb_flexicontent_edit_coupons` */

/*Table structure for table `r8kmb_flexicontent_favourites` */

DROP TABLE IF EXISTS `r8kmb_flexicontent_favourites`;

CREATE TABLE `r8kmb_flexicontent_favourites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `notify` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`itemid`,`userid`,`type`),
  KEY `id` (`id`),
  KEY `itemid` (`itemid`),
  KEY `userid` (`userid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `r8kmb_flexicontent_favourites` */

/*Table structure for table `r8kmb_flexicontent_fields` */

DROP TABLE IF EXISTS `r8kmb_flexicontent_fields`;

CREATE TABLE `r8kmb_flexicontent_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) unsigned NOT NULL DEFAULT '0',
  `field_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `isfilter` tinyint(1) NOT NULL DEFAULT '0',
  `isadvfilter` tinyint(1) NOT NULL DEFAULT '0',
  `iscore` tinyint(1) NOT NULL DEFAULT '0',
  `issearch` tinyint(1) NOT NULL DEFAULT '1',
  `isadvsearch` tinyint(1) NOT NULL DEFAULT '0',
  `untranslatable` tinyint(1) NOT NULL DEFAULT '0',
  `formhidden` tinyint(1) NOT NULL DEFAULT '0',
  `valueseditable` tinyint(1) NOT NULL DEFAULT '0',
  `edithelp` tinyint(1) NOT NULL DEFAULT '2',
  `positions` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `attribs` mediumtext NOT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(11) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `r8kmb_flexicontent_fields` */

/*Table structure for table `r8kmb_flexicontent_fields_item_relations` */

DROP TABLE IF EXISTS `r8kmb_flexicontent_fields_item_relations`;

CREATE TABLE `r8kmb_flexicontent_fields_item_relations` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `valueorder` int(11) NOT NULL DEFAULT '1',
  `suborder` int(11) NOT NULL DEFAULT '1',
  `value` mediumtext NOT NULL,
  `value_integer` bigint(20) DEFAULT NULL,
  `value_decimal` decimal(65,15) DEFAULT NULL,
  `value_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`field_id`,`item_id`,`valueorder`,`suborder`),
  KEY `field_id` (`field_id`),
  KEY `item_id` (`item_id`),
  KEY `valueorder` (`valueorder`),
  KEY `value` (`value`(32)),
  KEY `value_integer` (`value_integer`),
  KEY `value_decimal` (`value_decimal`),
  KEY `value_datetime` (`value_datetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `r8kmb_flexicontent_fields_item_relations` */

/*Table structure for table `r8kmb_flexicontent_fields_type_relations` */

DROP TABLE IF EXISTS `r8kmb_flexicontent_fields_type_relations`;

CREATE TABLE `r8kmb_flexicontent_fields_type_relations` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`type_id`),
  KEY `field_id` (`field_id`),
  KEY `type_id` (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `r8kmb_flexicontent_fields_type_relations` */

/*Table structure for table `r8kmb_flexicontent_files` */

DROP TABLE IF EXISTS `r8kmb_flexicontent_files`;

CREATE TABLE `r8kmb_flexicontent_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `filename_original` varchar(255) NOT NULL DEFAULT '',
  `altname` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `url` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `secure` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ext` varchar(10) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `language` char(7) NOT NULL DEFAULT '*',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `size` int(11) unsigned NOT NULL DEFAULT '0',
  `assignments` int(11) unsigned NOT NULL DEFAULT '0',
  `stamp` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `uploaded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uploaded_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(11) unsigned NOT NULL DEFAULT '1',
  `attribs` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `r8kmb_flexicontent_files` */

/*Table structure for table `r8kmb_flexicontent_items_ext` */

DROP TABLE IF EXISTS `r8kmb_flexicontent_items_ext`;

CREATE TABLE `r8kmb_flexicontent_items_ext` (
  `item_id` int(11) unsigned NOT NULL,
  `type_id` int(11) unsigned NOT NULL,
  `language` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '*',
  `lang_parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sub_items` text NOT NULL,
  `sub_categories` text NOT NULL,
  `related_items` text NOT NULL,
  `search_index` mediumtext NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `lang_parent_id` (`lang_parent_id`),
  KEY `type_id` (`type_id`),
  FULLTEXT KEY `search_index` (`search_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `r8kmb_flexicontent_items_ext` */

/*Table structure for table `r8kmb_flexicontent_items_extravote` */

DROP TABLE IF EXISTS `r8kmb_flexicontent_items_extravote`;

CREATE TABLE `r8kmb_flexicontent_items_extravote` (
  `content_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `lastip` varchar(50) NOT NULL,
  `rating_sum` int(11) NOT NULL,
  `rating_count` int(11) NOT NULL,
  PRIMARY KEY (`content_id`,`field_id`),
  KEY `extravote_idx` (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `r8kmb_flexicontent_items_extravote` */

/*Table structure for table `r8kmb_flexicontent_items_tmp` */

DROP TABLE IF EXISTS `r8kmb_flexicontent_items_tmp`;

CREATE TABLE `r8kmb_flexicontent_items_tmp` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '*',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `lang_parent_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`(64)),
  KEY `state` (`state`),
  KEY `catid` (`catid`),
  KEY `created_by` (`created_by`),
  KEY `access` (`access`),
  KEY `language` (`language`),
  KEY `featured` (`featured`),
  KEY `type_id` (`type_id`),
  KEY `lang_parent_id` (`lang_parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `r8kmb_flexicontent_items_tmp` */

/*Table structure for table `r8kmb_flexicontent_items_versions` */

DROP TABLE IF EXISTS `r8kmb_flexicontent_items_versions`;

CREATE TABLE `r8kmb_flexicontent_items_versions` (
  `version` int(11) NOT NULL DEFAULT '0',
  `field_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `valueorder` int(11) NOT NULL DEFAULT '1',
  `suborder` int(11) NOT NULL DEFAULT '1',
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`version`,`field_id`,`item_id`,`valueorder`,`suborder`),
  KEY `version` (`version`),
  KEY `field_id` (`field_id`),
  KEY `item_id` (`item_id`),
  KEY `valueorder` (`valueorder`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `r8kmb_flexicontent_items_versions` */

/*Table structure for table `r8kmb_flexicontent_layouts_conf` */

DROP TABLE IF EXISTS `r8kmb_flexicontent_layouts_conf`;

CREATE TABLE `r8kmb_flexicontent_layouts_conf` (
  `template` varchar(50) NOT NULL DEFAULT '',
  `cfgname` varchar(50) NOT NULL DEFAULT '',
  `layout` varchar(20) NOT NULL DEFAULT '',
  `attribs` text,
  PRIMARY KEY (`template`,`cfgname`,`layout`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `r8kmb_flexicontent_layouts_conf` */

/*Table structure for table `r8kmb_flexicontent_tags` */

DROP TABLE IF EXISTS `r8kmb_flexicontent_tags`;

CREATE TABLE `r8kmb_flexicontent_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `alias` (`alias`),
  KEY `published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `r8kmb_flexicontent_tags` */

/*Table structure for table `r8kmb_flexicontent_tags_item_relations` */

DROP TABLE IF EXISTS `r8kmb_flexicontent_tags_item_relations`;

CREATE TABLE `r8kmb_flexicontent_tags_item_relations` (
  `tid` int(11) NOT NULL DEFAULT '0',
  `itemid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`,`itemid`),
  KEY `tid` (`tid`),
  KEY `itemid` (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `r8kmb_flexicontent_tags_item_relations` */

/*Table structure for table `r8kmb_flexicontent_templates` */

DROP TABLE IF EXISTS `r8kmb_flexicontent_templates`;

CREATE TABLE `r8kmb_flexicontent_templates` (
  `template` varchar(50) NOT NULL DEFAULT '',
  `cfgname` varchar(50) NOT NULL DEFAULT '',
  `layout` varchar(20) NOT NULL DEFAULT '',
  `position` varchar(100) NOT NULL DEFAULT '',
  `fields` text NOT NULL,
  PRIMARY KEY (`template`,`cfgname`,`layout`,`position`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `r8kmb_flexicontent_templates` */

/*Table structure for table `r8kmb_flexicontent_types` */

DROP TABLE IF EXISTS `r8kmb_flexicontent_types`;

CREATE TABLE `r8kmb_flexicontent_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `itemscreatable` smallint(8) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(11) unsigned NOT NULL DEFAULT '1',
  `attribs` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `alias` (`alias`),
  KEY `published` (`published`),
  KEY `access` (`access`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `r8kmb_flexicontent_types` */

/*Table structure for table `r8kmb_flexicontent_versions` */

DROP TABLE IF EXISTS `r8kmb_flexicontent_versions`;

CREATE TABLE `r8kmb_flexicontent_versions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `version_id` int(11) unsigned NOT NULL DEFAULT '0',
  `comment` mediumtext NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `state` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `version2item` (`item_id`,`version_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `r8kmb_flexicontent_versions` */

/*Table structure for table `r8kmb_languages` */

DROP TABLE IF EXISTS `r8kmb_languages`;

CREATE TABLE `r8kmb_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_languages` */

insert  into `r8kmb_languages`(`lang_id`,`asset_id`,`lang_code`,`title`,`title_native`,`sef`,`image`,`description`,`metakey`,`metadesc`,`sitename`,`published`,`access`,`ordering`) values (1,0,'en-GB','English (en-GB)','English (United Kingdom)','en','en_gb','','','','',1,1,1);

/*Table structure for table `r8kmb_menu` */

DROP TABLE IF EXISTS `r8kmb_menu`;

CREATE TABLE `r8kmb_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_menu` */

insert  into `r8kmb_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,93,0,'*',0),(2,'main','com_banners','Banners','','Banners','index.php?option=com_banners','component',1,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'main','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',1,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'main','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',1,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'main','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',1,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'main','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',1,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'main','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',1,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1),(8,'main','com_contact_contacts','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',1,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1),(9,'main','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',1,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1),(10,'main','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',1,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',19,22,0,'*',1),(11,'main','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',1,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',20,21,0,'*',1),(13,'main','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',1,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',29,34,0,'*',1),(14,'main','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',1,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',30,31,0,'*',1),(15,'main','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',1,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',32,33,0,'*',1),(16,'main','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',1,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',41,42,0,'*',1),(17,'main','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',1,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',45,46,0,'*',1),(18,'main','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',1,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',49,50,0,'*',1),(19,'main','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',1,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',51,52,0,'*',1),(20,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',1,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',53,54,0,'',1),(21,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',1,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',55,56,0,'*',1),(22,'main','com_associations','Multilingual Associations','','Multilingual Associations','index.php?option=com_associations','component',1,1,1,34,0,'0000-00-00 00:00:00',0,0,'class:associations',0,'',57,58,0,'*',1),(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=category&layout=blog&id=9','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_title\":\"0\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"4\",\"num_intro_articles\":\"0\",\"num_columns\":\"1\",\"num_links\":\"2\",\"multi_column_order\":\"1\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"info_bloc_position\":\"0\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',43,44,1,'*',0),(102,'bottommenu','Author Login','login','','login','index.php?option=com_users&view=login','component',1,1,1,25,0,'0000-00-00 00:00:00',0,1,'',0,'{\"login_redirect_url\":\"index.php?Itemid=101\",\"logindescription_show\":\"1\",\"login_description\":\"\",\"login_image\":\"\",\"logout_redirect_url\":\"\",\"logoutdescription_show\":\"1\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',59,60,0,'*',0),(103,'authormenu','Change Password','change-password','','change-password','index.php?option=com_users&view=profile&layout=edit','component',1,1,1,25,0,'0000-00-00 00:00:00',0,2,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',37,38,0,'*',0),(104,'authormenu','Create a Post','create-a-post','','create-a-post','index.php?option=com_content&view=form&layout=edit','component',1,1,1,22,0,'0000-00-00 00:00:00',0,3,'',0,'{\"enable_category\":\"1\",\"catid\":\"9\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',17,18,0,'*',0),(106,'authormenu','Site Administrator','2012-01-04-15-46-42','','2012-01-04-15-46-42','administrator','url',1,1,1,0,0,'0000-00-00 00:00:00',1,3,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',35,36,0,'*',0),(107,'authormenu','Log out','log-out','','log-out','index.php?option=com_users&view=login','component',1,1,1,25,0,'0000-00-00 00:00:00',0,1,'',0,'{\"login_redirect_url\":\"\",\"logindescription_show\":\"1\",\"login_description\":\"\",\"login_image\":\"\",\"logout_redirect_url\":\"\",\"logoutdescription_show\":\"1\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',39,40,0,'*',0),(108,'mainmenu','About','about','','about','index.php?option=com_content&view=article&id=1','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',47,48,0,'*',0),(109,'authormenu','Working on Your Site','working-on-your-site','','working-on-your-site','index.php?option=com_content&view=article&id=2','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',23,28,0,'*',0),(113,'authormenu','Site Settings','site-settings','','working-on-your-site/site-settings','index.php?option=com_config&view=config&controller=config.display.config','component',1,109,2,23,0,'0000-00-00 00:00:00',0,6,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',24,25,0,'*',0),(114,'authormenu','Template Settings','template-settings','','working-on-your-site/template-settings','index.php?option=com_config&view=templates&controller=config.display.templates','component',1,109,2,23,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',26,27,0,'*',0),(115,'mainmenu','Author Login','author-login','','author-login','index.php?option=com_users&view=login','component',1,1,1,25,0,'0000-00-00 00:00:00',0,1,'',0,'{\"login_redirect_url\":\"\",\"logindescription_show\":\"1\",\"login_description\":\"\",\"login_image\":\"\",\"logout_redirect_url\":\"\",\"logoutdescription_show\":\"1\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',61,62,0,'*',0),(116,'main','FLEXIcontent','flexicontent','','flexicontent','index.php?option=com_flexicontent','component',1,1,1,10000,0,'0000-00-00 00:00:00',0,1,'components/com_flexicontent/assets/images/flexicontent.png',0,'{}',63,92,0,'',1),(117,'main','FLEXI_DASHBOARD','flexi-dashboard','','flexicontent/flexi-dashboard','index.php?option=com_flexicontent','component',1,116,2,10000,0,'0000-00-00 00:00:00',0,1,'class:component',0,'{}',64,65,0,'',1),(118,'main','FLEXI_ITEMS','flexi-items','','flexicontent/flexi-items','index.php?option=com_flexicontent&view=items','component',1,116,2,10000,0,'0000-00-00 00:00:00',0,1,'class:component',0,'{}',66,67,0,'',1),(119,'main','FLEXI_CATEGORIES','flexi-categories','','flexicontent/flexi-categories','index.php?option=com_flexicontent&view=categories','component',1,116,2,10000,0,'0000-00-00 00:00:00',0,1,'class:component',0,'{}',68,69,0,'',1),(120,'main','FLEXI_TYPES','flexi-types','','flexicontent/flexi-types','index.php?option=com_flexicontent&view=types','component',1,116,2,10000,0,'0000-00-00 00:00:00',0,1,'class:component',0,'{}',70,71,0,'',1),(121,'main','FLEXI_FIELDS','flexi-fields','','flexicontent/flexi-fields','index.php?option=com_flexicontent&view=fields','component',1,116,2,10000,0,'0000-00-00 00:00:00',0,1,'class:component',0,'{}',72,73,0,'',1),(122,'main','FLEXI_TAGS','flexi-tags','','flexicontent/flexi-tags','index.php?option=com_flexicontent&view=tags','component',1,116,2,10000,0,'0000-00-00 00:00:00',0,1,'class:component',0,'{}',74,75,0,'',1),(123,'main','FLEXI_TEMPLATES','flexi-templates','','flexicontent/flexi-templates','index.php?option=com_flexicontent&view=templates','component',1,116,2,10000,0,'0000-00-00 00:00:00',0,1,'class:component',0,'{}',76,77,0,'',1),(124,'main','FLEXI_USERS','flexi-users','','flexicontent/flexi-users','index.php?option=com_flexicontent&view=users','component',1,116,2,10000,0,'0000-00-00 00:00:00',0,1,'class:component',0,'{}',78,79,0,'',1),(125,'main','FLEXI_GROUPS','flexi-groups','','flexicontent/flexi-groups','index.php?option=com_flexicontent&view=groups','component',1,116,2,10000,0,'0000-00-00 00:00:00',0,1,'class:component',0,'{}',80,81,0,'',1),(126,'main','FLEXI_FILEMANAGER','flexi-filemanager','','flexicontent/flexi-filemanager','index.php?option=com_flexicontent&view=filemanager','component',1,116,2,10000,0,'0000-00-00 00:00:00',0,1,'class:component',0,'{}',82,83,0,'',1),(127,'main','FLEXI_IMPORT','flexi-import','','flexicontent/flexi-import','index.php?option=com_flexicontent&view=import','component',1,116,2,10000,0,'0000-00-00 00:00:00',0,1,'class:component',0,'{}',84,85,0,'',1),(128,'main','FLEXI_SEARCH_INDEXES','flexi-search-indexes','','flexicontent/flexi-search-indexes','index.php?option=com_flexicontent&view=search','component',1,116,2,10000,0,'0000-00-00 00:00:00',0,1,'class:component',0,'{}',86,87,0,'',1),(129,'main','FLEXI_STATISTICS','flexi-statistics','','flexicontent/flexi-statistics','index.php?option=com_flexicontent&view=stats','component',1,116,2,10000,0,'0000-00-00 00:00:00',0,1,'class:component',0,'{}',88,89,0,'',1),(130,'main','FLEXI_CONFIG','flexi-config','','flexicontent/flexi-config','index.php?option=com_config&view=component&component=com_flexicontent','component',1,116,2,10000,0,'0000-00-00 00:00:00',0,1,'class:component',0,'{}',90,91,0,'',1);

/*Table structure for table `r8kmb_menu_types` */

DROP TABLE IF EXISTS `r8kmb_menu_types`;

CREATE TABLE `r8kmb_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_menu_types` */

insert  into `r8kmb_menu_types`(`id`,`asset_id`,`menutype`,`title`,`description`,`client_id`) values (1,0,'mainmenu','Main Menu','The main menu for the site',0),(2,0,'authormenu','Author Menu','',0),(3,0,'bottommenu','Bottom Menu','',0);

/*Table structure for table `r8kmb_messages` */

DROP TABLE IF EXISTS `r8kmb_messages`;

CREATE TABLE `r8kmb_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_messages` */

/*Table structure for table `r8kmb_messages_cfg` */

DROP TABLE IF EXISTS `r8kmb_messages_cfg`;

CREATE TABLE `r8kmb_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_messages_cfg` */

/*Table structure for table `r8kmb_modules` */

DROP TABLE IF EXISTS `r8kmb_modules`;

CREATE TABLE `r8kmb_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_modules` */

insert  into `r8kmb_modules`(`id`,`asset_id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (1,0,'Main Menu','','',1,'position-1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,0,'{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\" nav-pills\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(2,0,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,0,'Popular Articles','','',1,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"6\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),(4,0,'Recently Added Articles','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"6\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),(8,0,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,0,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,0,'Logged-in Users','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"6\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),(12,0,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,0,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,0,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,0,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,0,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,0,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}',0,'*'),(79,0,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(80,0,'Author Menu','','',1,'position-1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,0,'{\"menutype\":\"authormenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\" nav-pills\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(82,0,'Syndication','','',6,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_syndicate',1,0,'{\"display_text\":1,\"text\":\"My Blog\",\"format\":\"rss\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',0,'*'),(83,0,'Archived Articles','','',4,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_archive',1,1,'{\"count\":\"10\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(84,0,'Most Read Posts','','',5,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_popular',1,1,'{\"catid\":[\"9\"],\"count\":\"5\",\"show_front\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(85,0,'Older Posts','','',2,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_category',1,1,'{\"mode\":\"normal\",\"show_on_article_page\":\"0\",\"show_front\":\"show\",\"count\":\"6\",\"category_filtering_type\":\"1\",\"catid\":[\"9\"],\"show_child_category_articles\":\"0\",\"levels\":\"1\",\"author_filtering_type\":\"1\",\"created_by\":[\"\"],\"author_alias_filtering_type\":\"1\",\"created_by_alias\":[\"\"],\"excluded_articles\":\"\",\"date_filtering\":\"off\",\"date_field\":\"a.created\",\"start_date_range\":\"\",\"end_date_range\":\"\",\"relative_date\":\"30\",\"article_ordering\":\"a.created\",\"article_ordering_direction\":\"DESC\",\"article_grouping\":\"none\",\"article_grouping_direction\":\"krsort\",\"month_year_format\":\"F Y\",\"item_heading\":\"5\",\"link_titles\":\"1\",\"show_date\":\"0\",\"show_date_field\":\"created\",\"show_date_format\":\"Y-m-d H:i:s\",\"show_category\":\"0\",\"show_hits\":\"0\",\"show_author\":\"0\",\"show_introtext\":\"0\",\"introtext_limit\":\"100\",\"show_readmore\":\"0\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"15\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(86,0,'Bottom Menu','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,0,'{\"menutype\":\"bottommenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(87,0,'Search','','',1,'position-0',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_search',1,1,'{\"label\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"button_pos\":\"right\",\"imagebutton\":\"\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(88,0,'Image','','<p><img src=\"images/headers/raindrops.jpg\" alt=\"\" /></p>',1,'position-3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(89,0,'Popular Tags','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_tags_popular',1,1,'{\"maximum\":\"8\",\"timeframe\":\"alltime\",\"order_value\":\"count\",\"order_direction\":\"1\",\"display_count\":0,\"no_results_text\":\"0\",\"minsize\":1,\"maxsize\":2,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(90,0,'Similar Items','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_tags_similar',1,1,'{\"maximum\":\"5\",\"matchtype\":\"any\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(91,0,'Site Information','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_stats_admin',6,1,'{\"serverinfo\":\"1\",\"siteinfo\":\"1\",\"counter\":\"0\",\"increase\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"6\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),(92,0,'Release News','','',1,'postinstall',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_feed',1,1,'{\"rssurl\":\"https:\\/\\/www.joomla.org\\/announcements\\/release-news.feed\",\"rssrtl\":\"0\",\"rsstitle\":\"1\",\"rssdesc\":\"1\",\"rssimage\":\"1\",\"rssitems\":\"3\",\"rssitemdesc\":\"1\",\"word_count\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),(93,48,'mod_flexicategories','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_flexicategories',1,1,'',0,'*'),(94,49,'mod_flexicontent','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_flexicontent',1,1,'',0,'*'),(95,50,'mod_flexifilter','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_flexifilter',1,1,'',0,'*'),(96,51,'mod_flexitagscloud','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_flexitagcloud',1,1,'',0,'*'),(97,52,'mod_flexiadvsearch','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_flexiadvsearch',1,1,'',0,'*'),(98,53,'FLEXIcontent Google-Map module','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_flexigooglemap',1,1,'',0,'*');

/*Table structure for table `r8kmb_modules_menu` */

DROP TABLE IF EXISTS `r8kmb_modules_menu`;

CREATE TABLE `r8kmb_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_modules_menu` */

insert  into `r8kmb_modules_menu`(`moduleid`,`menuid`) values (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(80,0),(82,0),(83,0),(84,0),(85,0),(86,0),(87,0),(88,0),(89,0),(90,0),(91,0),(92,0);

/*Table structure for table `r8kmb_newsfeeds` */

DROP TABLE IF EXISTS `r8kmb_newsfeeds`;

CREATE TABLE `r8kmb_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_newsfeeds` */

/*Table structure for table `r8kmb_overrider` */

DROP TABLE IF EXISTS `r8kmb_overrider`;

CREATE TABLE `r8kmb_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_overrider` */

/*Table structure for table `r8kmb_postinstall_messages` */

DROP TABLE IF EXISTS `r8kmb_postinstall_messages`;

CREATE TABLE `r8kmb_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_postinstall_messages` */

insert  into `r8kmb_postinstall_messages`(`postinstall_message_id`,`extension_id`,`title_key`,`description_key`,`action_key`,`language_extension`,`language_client_id`,`type`,`action_file`,`action`,`condition_file`,`condition_method`,`version_introduced`,`enabled`) values (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),(2,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),(3,700,'COM_CPANEL_MSG_STATS_COLLECTION_TITLE','COM_CPANEL_MSG_STATS_COLLECTION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/statscollection.php','admin_postinstall_statscollection_condition','3.5.0',1),(4,700,'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION','plg_system_updatenotification',1,'action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_condition','3.6.3',1),(5,700,'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE','COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/joomla40checks.php','admin_postinstall_joomla40checks_condition','3.7.0',1),(6,700,'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE','TPL_HATHOR_MESSAGE_POSTINSTALL_BODY','TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION','tpl_hathor',1,'action','admin://templates/hathor/postinstall/hathormessage.php','hathormessage_postinstall_action','admin://templates/hathor/postinstall/hathormessage.php','hathormessage_postinstall_condition','3.7.0',1);

/*Table structure for table `r8kmb_redirect_links` */

DROP TABLE IF EXISTS `r8kmb_redirect_links`;

CREATE TABLE `r8kmb_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_redirect_links` */

/*Table structure for table `r8kmb_schemas` */

DROP TABLE IF EXISTS `r8kmb_schemas`;

CREATE TABLE `r8kmb_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_schemas` */

insert  into `r8kmb_schemas`(`extension_id`,`version_id`) values (700,'3.8.2-2017-10-14');

/*Table structure for table `r8kmb_session` */

DROP TABLE IF EXISTS `r8kmb_session`;

CREATE TABLE `r8kmb_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned DEFAULT NULL,
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_session` */

insert  into `r8kmb_session`(`session_id`,`client_id`,`guest`,`time`,`data`,`userid`,`username`) values ('ds1cigs5vjqf8eq3jta7giavl4',1,0,'1514387449','joomla|s:1580:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxMTtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MTQzODczMjk7czo0OiJsYXN0IjtpOjE1MTQzODc0NDY7czozOiJub3ciO2k6MTUxNDM4NzQ0Nzt9czo1OiJ0b2tlbiI7czozMjoiUzJhZmJkaTJaVUdpQ1RJTkJXa1o3ZUQxcFFTNmg2YkkiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjtzOjEyOiJyZWRpcmVjdF91cmwiO047fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtzOjM6Ijg0MiI7fXM6MTI6ImZsZXhpY29udGVudCI7Tzo4OiJzdGRDbGFzcyI6NDp7czoxMToicG9zdGluc3RhbGwiO2I6MDtzOjEzOiJhbGxwbGdwdWJsaXNoIjtiOjA7czoxNzoiY29sbGF0aW9uX3ZlcnNpb24iO3M6NToiMy44LjMiO3M6MTc6InJlY2hlY2tfYWZ0ZXJzYXZlIjtiOjE7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjthOjA6e319fXM6MTQ6Il9fZmxleGljb250ZW50IjtPOjg6InN0ZENsYXNzIjo4OntzOjE1OiJ1bmJvdW5kZWRfbm9leHQiO2I6MDtzOjE2OiJ1bmJvdW5kZWRfYmFkY2F0IjtiOjA7czoyNToic2NyZWVuU2l6ZUNvb2tpZVRvQmVBZGRlZCI7aTowO3M6MjE6InNjcmVlblNpemVDb29raWVUcmllZCI7aToxO3M6MjA6ImZjX3NjcmVlbl9yZXNvbHV0aW9uIjtzOjg6IjE5MjB4OTI1IjtzOjE1OiJmY19zY3JlZW5fd2lkdGgiO3M6NDoiMTkyMCI7czoxNjoiZmNfc2NyZWVuX2hlaWdodCI7czozOiI5MjUiO3M6MTU6InVuYm91bmRlZF9jb3VudCI7YjowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";',842,'chen');

/*Table structure for table `r8kmb_tags` */

DROP TABLE IF EXISTS `r8kmb_tags`;

CREATE TABLE `r8kmb_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_tags` */

insert  into `r8kmb_tags`(`id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`created_by_alias`,`modified_user_id`,`modified_time`,`images`,`urls`,`hits`,`language`,`version`,`publish_up`,`publish_down`) values (1,0,0,1,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'','','','',842,'2017-12-27 15:08:21','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');

/*Table structure for table `r8kmb_template_styles` */

DROP TABLE IF EXISTS `r8kmb_template_styles`;

CREATE TABLE `r8kmb_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_template_styles` */

insert  into `r8kmb_template_styles`(`id`,`template`,`client_id`,`home`,`title`,`params`) values (4,'beez3',0,'0','Beez3 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(7,'protostar',0,'1','protostar - Default','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),(8,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}');

/*Table structure for table `r8kmb_ucm_base` */

DROP TABLE IF EXISTS `r8kmb_ucm_base`;

CREATE TABLE `r8kmb_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_ucm_base` */

/*Table structure for table `r8kmb_ucm_content` */

DROP TABLE IF EXISTS `r8kmb_ucm_content`;

CREATE TABLE `r8kmb_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

/*Data for the table `r8kmb_ucm_content` */

/*Table structure for table `r8kmb_ucm_history` */

DROP TABLE IF EXISTS `r8kmb_ucm_history`;

CREATE TABLE `r8kmb_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_ucm_history` */

/*Table structure for table `r8kmb_update_sites` */

DROP TABLE IF EXISTS `r8kmb_update_sites`;

CREATE TABLE `r8kmb_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

/*Data for the table `r8kmb_update_sites` */

insert  into `r8kmb_update_sites`(`update_site_id`,`name`,`type`,`location`,`enabled`,`last_check_timestamp`,`extra_query`) values (1,'Joomla! Core','collection','https://update.joomla.org/core/list.xml',1,1514387347,''),(2,'Accredited Joomla! Translations','collection','https://update.joomla.org/language/translationlist_3.xml',1,1514387353,''),(3,'Joomla! Update Component Update Site','extension','https://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,1514387355,''),(4,'FLEXIcontent CCK update','extension','https://raw.githubusercontent.com/FLEXIcontent/flexicontent-cck/master/update.xml',1,0,'');

/*Table structure for table `r8kmb_update_sites_extensions` */

DROP TABLE IF EXISTS `r8kmb_update_sites_extensions`;

CREATE TABLE `r8kmb_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

/*Data for the table `r8kmb_update_sites_extensions` */

insert  into `r8kmb_update_sites_extensions`(`update_site_id`,`extension_id`) values (1,700),(2,802),(3,28),(4,10000);

/*Table structure for table `r8kmb_updates` */

DROP TABLE IF EXISTS `r8kmb_updates`;

CREATE TABLE `r8kmb_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

/*Data for the table `r8kmb_updates` */

insert  into `r8kmb_updates`(`update_id`,`update_site_id`,`extension_id`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`,`extra_query`) values (1,2,0,'Armenian','','pkg_hy-AM','package','',0,'3.4.4.1','','https://update.joomla.org/language/details3/hy-AM_details.xml','',''),(2,2,0,'Malay','','pkg_ms-MY','package','',0,'3.4.1.2','','https://update.joomla.org/language/details3/ms-MY_details.xml','',''),(3,2,0,'Romanian','','pkg_ro-RO','package','',0,'3.7.3.1','','https://update.joomla.org/language/details3/ro-RO_details.xml','',''),(4,2,0,'Flemish','','pkg_nl-BE','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/nl-BE_details.xml','',''),(5,2,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'3.8.0.1','','https://update.joomla.org/language/details3/zh-TW_details.xml','',''),(6,2,0,'French','','pkg_fr-FR','package','',0,'3.8.3.2','','https://update.joomla.org/language/details3/fr-FR_details.xml','',''),(7,2,0,'Galician','','pkg_gl-ES','package','',0,'3.3.1.2','','https://update.joomla.org/language/details3/gl-ES_details.xml','',''),(8,2,0,'Georgian','','pkg_ka-GE','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/ka-GE_details.xml','',''),(9,2,0,'Greek','','pkg_el-GR','package','',0,'3.8.3.4','','https://update.joomla.org/language/details3/el-GR_details.xml','',''),(10,2,0,'Japanese','','pkg_ja-JP','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/ja-JP_details.xml','',''),(11,2,0,'Hebrew','','pkg_he-IL','package','',0,'3.1.1.1','','https://update.joomla.org/language/details3/he-IL_details.xml','',''),(12,2,0,'Bengali','','pkg_bn-BD','package','',0,'3.8.2.1','','https://update.joomla.org/language/details3/bn-BD_details.xml','',''),(13,2,0,'Hungarian','','pkg_hu-HU','package','',0,'3.8.2.1','','https://update.joomla.org/language/details3/hu-HU_details.xml','',''),(14,2,0,'Afrikaans','','pkg_af-ZA','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/af-ZA_details.xml','',''),(15,2,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'3.7.5.1','','https://update.joomla.org/language/details3/ar-AA_details.xml','',''),(16,2,0,'Belarusian','','pkg_be-BY','package','',0,'3.2.1.2','','https://update.joomla.org/language/details3/be-BY_details.xml','',''),(17,2,0,'Bulgarian','','pkg_bg-BG','package','',0,'3.6.5.2','','https://update.joomla.org/language/details3/bg-BG_details.xml','',''),(18,2,0,'Catalan','','pkg_ca-ES','package','',0,'3.8.3.2','','https://update.joomla.org/language/details3/ca-ES_details.xml','',''),(19,2,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/zh-CN_details.xml','',''),(20,2,0,'Croatian','','pkg_hr-HR','package','',0,'3.7.5.1','','https://update.joomla.org/language/details3/hr-HR_details.xml','',''),(21,2,0,'Czech','','pkg_cs-CZ','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/cs-CZ_details.xml','',''),(22,2,0,'Danish','','pkg_da-DK','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/da-DK_details.xml','',''),(23,2,0,'Dutch','','pkg_nl-NL','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/nl-NL_details.xml','',''),(24,2,0,'Esperanto','','pkg_eo-XX','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/eo-XX_details.xml','',''),(25,2,0,'Estonian','','pkg_et-EE','package','',0,'3.7.0.1','','https://update.joomla.org/language/details3/et-EE_details.xml','',''),(26,2,0,'Italian','','pkg_it-IT','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/it-IT_details.xml','',''),(27,2,0,'Khmer','','pkg_km-KH','package','',0,'3.4.5.1','','https://update.joomla.org/language/details3/km-KH_details.xml','',''),(28,2,0,'Korean','','pkg_ko-KR','package','',0,'3.8.1.1','','https://update.joomla.org/language/details3/ko-KR_details.xml','',''),(29,2,0,'Latvian','','pkg_lv-LV','package','',0,'3.7.3.1','','https://update.joomla.org/language/details3/lv-LV_details.xml','',''),(30,2,0,'Macedonian','','pkg_mk-MK','package','',0,'3.6.5.1','','https://update.joomla.org/language/details3/mk-MK_details.xml','',''),(31,2,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'3.7.4.1','','https://update.joomla.org/language/details3/nb-NO_details.xml','',''),(32,2,0,'Norwegian Nynorsk','','pkg_nn-NO','package','',0,'3.4.2.1','','https://update.joomla.org/language/details3/nn-NO_details.xml','',''),(33,2,0,'Persian','','pkg_fa-IR','package','',0,'3.8.3.2','','https://update.joomla.org/language/details3/fa-IR_details.xml','',''),(34,2,0,'Polish','','pkg_pl-PL','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/pl-PL_details.xml','',''),(35,2,0,'Portuguese','','pkg_pt-PT','package','',0,'3.8.2.1','','https://update.joomla.org/language/details3/pt-PT_details.xml','',''),(36,2,0,'Russian','','pkg_ru-RU','package','',0,'3.8.2.1','','https://update.joomla.org/language/details3/ru-RU_details.xml','',''),(37,2,0,'English AU','','pkg_en-AU','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/en-AU_details.xml','',''),(38,2,0,'Slovak','','pkg_sk-SK','package','',0,'3.8.1.1','','https://update.joomla.org/language/details3/sk-SK_details.xml','',''),(39,2,0,'English US','','pkg_en-US','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/en-US_details.xml','',''),(40,2,0,'Swedish','','pkg_sv-SE','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/sv-SE_details.xml','',''),(41,2,0,'Syriac','','pkg_sy-IQ','package','',0,'3.4.5.1','','https://update.joomla.org/language/details3/sy-IQ_details.xml','',''),(42,2,0,'Tamil','','pkg_ta-IN','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/ta-IN_details.xml','',''),(43,2,0,'Thai','','pkg_th-TH','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/th-TH_details.xml','',''),(44,2,0,'Turkish','','pkg_tr-TR','package','',0,'3.8.2.1','','https://update.joomla.org/language/details3/tr-TR_details.xml','',''),(45,2,0,'Ukrainian','','pkg_uk-UA','package','',0,'3.7.1.1','','https://update.joomla.org/language/details3/uk-UA_details.xml','',''),(46,2,0,'Uyghur','','pkg_ug-CN','package','',0,'3.7.5.1','','https://update.joomla.org/language/details3/ug-CN_details.xml','',''),(47,2,0,'Albanian','','pkg_sq-AL','package','',0,'3.1.1.2','','https://update.joomla.org/language/details3/sq-AL_details.xml','',''),(48,2,0,'Basque','','pkg_eu-ES','package','',0,'3.7.5.1','','https://update.joomla.org/language/details3/eu-ES_details.xml','',''),(49,2,0,'Hindi','','pkg_hi-IN','package','',0,'3.3.6.2','','https://update.joomla.org/language/details3/hi-IN_details.xml','',''),(50,2,0,'German DE','','pkg_de-DE','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/de-DE_details.xml','',''),(51,2,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/pt-BR_details.xml','',''),(52,2,0,'Serbian Latin','','pkg_sr-YU','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/sr-YU_details.xml','',''),(53,2,0,'Spanish','','pkg_es-ES','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/es-ES_details.xml','',''),(54,2,0,'Bosnian','','pkg_bs-BA','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/bs-BA_details.xml','',''),(55,2,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/sr-RS_details.xml','',''),(56,2,0,'Vietnamese','','pkg_vi-VN','package','',0,'3.2.1.2','','https://update.joomla.org/language/details3/vi-VN_details.xml','',''),(57,2,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/id-ID_details.xml','',''),(58,2,0,'Finnish','','pkg_fi-FI','package','',0,'3.8.1.1','','https://update.joomla.org/language/details3/fi-FI_details.xml','',''),(59,2,0,'Swahili','','pkg_sw-KE','package','',0,'3.6.5.1','','https://update.joomla.org/language/details3/sw-KE_details.xml','',''),(60,2,0,'Montenegrin','','pkg_srp-ME','package','',0,'3.3.1.2','','https://update.joomla.org/language/details3/srp-ME_details.xml','',''),(61,2,0,'English CA','','pkg_en-CA','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/en-CA_details.xml','',''),(62,2,0,'French CA','','pkg_fr-CA','package','',0,'3.6.5.1','','https://update.joomla.org/language/details3/fr-CA_details.xml','',''),(63,2,0,'Welsh','','pkg_cy-GB','package','',0,'3.8.2.1','','https://update.joomla.org/language/details3/cy-GB_details.xml','',''),(64,2,0,'Sinhala','','pkg_si-LK','package','',0,'3.3.1.2','','https://update.joomla.org/language/details3/si-LK_details.xml','',''),(65,2,0,'Dari Persian','','pkg_prs-AF','package','',0,'3.4.4.2','','https://update.joomla.org/language/details3/prs-AF_details.xml','',''),(66,2,0,'Turkmen','','pkg_tk-TM','package','',0,'3.5.0.2','','https://update.joomla.org/language/details3/tk-TM_details.xml','',''),(67,2,0,'Irish','','pkg_ga-IE','package','',0,'3.8.2.1','','https://update.joomla.org/language/details3/ga-IE_details.xml','',''),(68,2,0,'Dzongkha','','pkg_dz-BT','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/dz-BT_details.xml','',''),(69,2,0,'Slovenian','','pkg_sl-SI','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/sl-SI_details.xml','',''),(70,2,0,'Spanish CO','','pkg_es-CO','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/es-CO_details.xml','',''),(71,2,0,'German CH','','pkg_de-CH','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/de-CH_details.xml','',''),(72,2,0,'German AT','','pkg_de-AT','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/de-AT_details.xml','',''),(73,2,0,'German LI','','pkg_de-LI','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/de-LI_details.xml','',''),(74,2,0,'German LU','','pkg_de-LU','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/de-LU_details.xml','',''),(75,2,0,'English NZ','','pkg_en-NZ','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/en-NZ_details.xml','','');

/*Table structure for table `r8kmb_user_keys` */

DROP TABLE IF EXISTS `r8kmb_user_keys`;

CREATE TABLE `r8kmb_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_user_keys` */

/*Table structure for table `r8kmb_user_notes` */

DROP TABLE IF EXISTS `r8kmb_user_notes`;

CREATE TABLE `r8kmb_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_user_notes` */

/*Table structure for table `r8kmb_user_profiles` */

DROP TABLE IF EXISTS `r8kmb_user_profiles`;

CREATE TABLE `r8kmb_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

/*Data for the table `r8kmb_user_profiles` */

/*Table structure for table `r8kmb_user_usergroup_map` */

DROP TABLE IF EXISTS `r8kmb_user_usergroup_map`;

CREATE TABLE `r8kmb_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_user_usergroup_map` */

insert  into `r8kmb_user_usergroup_map`(`user_id`,`group_id`) values (842,8);

/*Table structure for table `r8kmb_usergroups` */

DROP TABLE IF EXISTS `r8kmb_usergroups`;

CREATE TABLE `r8kmb_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_usergroups` */

insert  into `r8kmb_usergroups`(`id`,`parent_id`,`lft`,`rgt`,`title`) values (1,0,1,18,'Public'),(2,1,8,15,'Registered'),(3,2,9,14,'Author'),(4,3,10,13,'Editor'),(5,4,11,12,'Publisher'),(6,1,4,7,'Manager'),(7,6,5,6,'Administrator'),(8,1,16,17,'Super Users'),(9,1,2,3,'Guest');

/*Table structure for table `r8kmb_users` */

DROP TABLE IF EXISTS `r8kmb_users`;

CREATE TABLE `r8kmb_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=843 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_users` */

insert  into `r8kmb_users`(`id`,`name`,`username`,`email`,`password`,`block`,`sendEmail`,`registerDate`,`lastvisitDate`,`activation`,`params`,`lastResetTime`,`resetCount`,`otpKey`,`otep`,`requireReset`) values (842,'Super User','chen','234@ere','$2y$10$FkF8vZCoWkf1nQ6c79MpyeRcjwn.mQ4Flyvk.7CD/bEIIj2Pm1E3e',0,1,'2017-12-27 15:08:21','2017-12-27 15:09:01','0','','0000-00-00 00:00:00',0,'','',0);

/*Table structure for table `r8kmb_utf8_conversion` */

DROP TABLE IF EXISTS `r8kmb_utf8_conversion`;

CREATE TABLE `r8kmb_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_utf8_conversion` */

insert  into `r8kmb_utf8_conversion`(`converted`) values (2);

/*Table structure for table `r8kmb_viewlevels` */

DROP TABLE IF EXISTS `r8kmb_viewlevels`;

CREATE TABLE `r8kmb_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `r8kmb_viewlevels` */

insert  into `r8kmb_viewlevels`(`id`,`title`,`ordering`,`rules`) values (1,'Public',0,'[1]'),(2,'Registered',2,'[6,2,8]'),(3,'Special',3,'[6,3,8]'),(5,'Guest',1,'[9]'),(6,'Super Users',4,'[8]');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
