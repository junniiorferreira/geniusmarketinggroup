-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Apr 20, 2018 at 08:59 AM
-- Server version: 5.6.39-cll-lve
-- PHP Version: 5.6.30

SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `i4575396_wp1`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) TYPE=MyISAM  AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-03-23 12:21:07', '2018-03-23 15:21:07', 'Olá, isso é um comentário.\nPara começar a moderar, editar e deletar comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) TYPE=MyISAM  AUTO_INCREMENT=506 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www.geniusmarketinggroup.com/', 'yes'),
(2, 'home', 'http://www.geniusmarketinggroup.com/', 'yes'),
(3, 'blogname', 'GENIUS', 'yes'),
(4, 'blogdescription', 'MARKETING GROUP', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'kyrvim@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:278:{s:9:"webdor/?$";s:26:"index.php?post_type=webdor";s:39:"webdor/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=webdor&feed=$matches[1]";s:34:"webdor/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=webdor&feed=$matches[1]";s:26:"webdor/page/([0-9]{1,})/?$";s:44:"index.php?post_type=webdor&paged=$matches[1]";s:8:"about/?$";s:25:"index.php?post_type=about";s:38:"about/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=about&feed=$matches[1]";s:33:"about/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=about&feed=$matches[1]";s:25:"about/page/([0-9]{1,})/?$";s:43:"index.php?post_type=about&paged=$matches[1]";s:6:"seo/?$";s:23:"index.php?post_type=seo";s:36:"seo/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?post_type=seo&feed=$matches[1]";s:31:"seo/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?post_type=seo&feed=$matches[1]";s:23:"seo/page/([0-9]{1,})/?$";s:41:"index.php?post_type=seo&paged=$matches[1]";s:9:"design/?$";s:26:"index.php?post_type=design";s:39:"design/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=design&feed=$matches[1]";s:34:"design/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=design&feed=$matches[1]";s:26:"design/page/([0-9]{1,})/?$";s:44:"index.php?post_type=design&paged=$matches[1]";s:12:"marketing/?$";s:29:"index.php?post_type=marketing";s:42:"marketing/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?post_type=marketing&feed=$matches[1]";s:37:"marketing/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?post_type=marketing&feed=$matches[1]";s:29:"marketing/page/([0-9]{1,})/?$";s:47:"index.php?post_type=marketing&paged=$matches[1]";s:6:"faq/?$";s:23:"index.php?post_type=faq";s:36:"faq/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?post_type=faq&feed=$matches[1]";s:31:"faq/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?post_type=faq&feed=$matches[1]";s:23:"faq/page/([0-9]{1,})/?$";s:41:"index.php?post_type=faq&paged=$matches[1]";s:9:"friend/?$";s:26:"index.php?post_type=friend";s:39:"friend/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=friend&feed=$matches[1]";s:34:"friend/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=friend&feed=$matches[1]";s:26:"friend/page/([0-9]{1,})/?$";s:44:"index.php?post_type=friend&paged=$matches[1]";s:9:"social/?$";s:26:"index.php?post_type=social";s:39:"social/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=social&feed=$matches[1]";s:34:"social/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=social&feed=$matches[1]";s:26:"social/page/([0-9]{1,})/?$";s:44:"index.php?post_type=social&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:34:"webdor/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"webdor/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"webdor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"webdor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"webdor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"webdor/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"webdor/([^/]+)/embed/?$";s:39:"index.php?webdor=$matches[1]&embed=true";s:27:"webdor/([^/]+)/trackback/?$";s:33:"index.php?webdor=$matches[1]&tb=1";s:47:"webdor/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?webdor=$matches[1]&feed=$matches[2]";s:42:"webdor/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?webdor=$matches[1]&feed=$matches[2]";s:35:"webdor/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?webdor=$matches[1]&paged=$matches[2]";s:42:"webdor/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?webdor=$matches[1]&cpage=$matches[2]";s:31:"webdor/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?webdor=$matches[1]&page=$matches[2]";s:23:"webdor/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"webdor/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"webdor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"webdor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"webdor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"webdor/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"about/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"about/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"about/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"about/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"about/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"about/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"about/([^/]+)/embed/?$";s:38:"index.php?about=$matches[1]&embed=true";s:26:"about/([^/]+)/trackback/?$";s:32:"index.php?about=$matches[1]&tb=1";s:46:"about/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?about=$matches[1]&feed=$matches[2]";s:41:"about/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?about=$matches[1]&feed=$matches[2]";s:34:"about/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?about=$matches[1]&paged=$matches[2]";s:41:"about/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?about=$matches[1]&cpage=$matches[2]";s:30:"about/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?about=$matches[1]&page=$matches[2]";s:22:"about/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"about/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"about/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"about/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"about/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"about/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"seo/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"seo/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"seo/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"seo/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"seo/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"seo/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:20:"seo/([^/]+)/embed/?$";s:36:"index.php?seo=$matches[1]&embed=true";s:24:"seo/([^/]+)/trackback/?$";s:30:"index.php?seo=$matches[1]&tb=1";s:44:"seo/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?seo=$matches[1]&feed=$matches[2]";s:39:"seo/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?seo=$matches[1]&feed=$matches[2]";s:32:"seo/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?seo=$matches[1]&paged=$matches[2]";s:39:"seo/([^/]+)/comment-page-([0-9]{1,})/?$";s:43:"index.php?seo=$matches[1]&cpage=$matches[2]";s:28:"seo/([^/]+)(?:/([0-9]+))?/?$";s:42:"index.php?seo=$matches[1]&page=$matches[2]";s:20:"seo/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:30:"seo/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:50:"seo/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:"seo/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:"seo/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:"seo/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"design/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"design/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"design/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"design/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"design/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"design/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"design/([^/]+)/embed/?$";s:39:"index.php?design=$matches[1]&embed=true";s:27:"design/([^/]+)/trackback/?$";s:33:"index.php?design=$matches[1]&tb=1";s:47:"design/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?design=$matches[1]&feed=$matches[2]";s:42:"design/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?design=$matches[1]&feed=$matches[2]";s:35:"design/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?design=$matches[1]&paged=$matches[2]";s:42:"design/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?design=$matches[1]&cpage=$matches[2]";s:31:"design/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?design=$matches[1]&page=$matches[2]";s:23:"design/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"design/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"design/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"design/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"design/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"design/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:37:"marketing/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"marketing/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"marketing/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"marketing/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"marketing/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"marketing/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"marketing/([^/]+)/embed/?$";s:42:"index.php?marketing=$matches[1]&embed=true";s:30:"marketing/([^/]+)/trackback/?$";s:36:"index.php?marketing=$matches[1]&tb=1";s:50:"marketing/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?marketing=$matches[1]&feed=$matches[2]";s:45:"marketing/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?marketing=$matches[1]&feed=$matches[2]";s:38:"marketing/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?marketing=$matches[1]&paged=$matches[2]";s:45:"marketing/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?marketing=$matches[1]&cpage=$matches[2]";s:34:"marketing/([^/]+)(?:/([0-9]+))?/?$";s:48:"index.php?marketing=$matches[1]&page=$matches[2]";s:26:"marketing/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"marketing/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"marketing/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"marketing/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"marketing/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"marketing/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"faq/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"faq/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"faq/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"faq/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"faq/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"faq/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:20:"faq/([^/]+)/embed/?$";s:36:"index.php?faq=$matches[1]&embed=true";s:24:"faq/([^/]+)/trackback/?$";s:30:"index.php?faq=$matches[1]&tb=1";s:44:"faq/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?faq=$matches[1]&feed=$matches[2]";s:39:"faq/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?faq=$matches[1]&feed=$matches[2]";s:32:"faq/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?faq=$matches[1]&paged=$matches[2]";s:39:"faq/([^/]+)/comment-page-([0-9]{1,})/?$";s:43:"index.php?faq=$matches[1]&cpage=$matches[2]";s:28:"faq/([^/]+)(?:/([0-9]+))?/?$";s:42:"index.php?faq=$matches[1]&page=$matches[2]";s:20:"faq/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:30:"faq/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:50:"faq/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:"faq/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:"faq/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:"faq/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"friend/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"friend/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"friend/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"friend/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"friend/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"friend/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"friend/([^/]+)/embed/?$";s:39:"index.php?friend=$matches[1]&embed=true";s:27:"friend/([^/]+)/trackback/?$";s:33:"index.php?friend=$matches[1]&tb=1";s:47:"friend/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?friend=$matches[1]&feed=$matches[2]";s:42:"friend/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?friend=$matches[1]&feed=$matches[2]";s:35:"friend/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?friend=$matches[1]&paged=$matches[2]";s:42:"friend/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?friend=$matches[1]&cpage=$matches[2]";s:31:"friend/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?friend=$matches[1]&page=$matches[2]";s:23:"friend/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"friend/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"friend/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"friend/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"friend/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"friend/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"social/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"social/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"social/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"social/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"social/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"social/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"social/([^/]+)/embed/?$";s:39:"index.php?social=$matches[1]&embed=true";s:27:"social/([^/]+)/trackback/?$";s:33:"index.php?social=$matches[1]&tb=1";s:47:"social/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?social=$matches[1]&feed=$matches[2]";s:42:"social/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?social=$matches[1]&feed=$matches[2]";s:35:"social/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?social=$matches[1]&paged=$matches[2]";s:42:"social/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?social=$matches[1]&cpage=$matches[2]";s:31:"social/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?social=$matches[1]&page=$matches[2]";s:23:"social/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"social/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"social/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"social/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"social/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"social/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=14&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:31:".+?/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:".+?/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:".+?/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"(.+?)/([^/]+)/embed/?$";s:63:"index.php?category_name=$matches[1]&name=$matches[2]&embed=true";s:26:"(.+?)/([^/]+)/trackback/?$";s:57:"index.php?category_name=$matches[1]&name=$matches[2]&tb=1";s:46:"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]";s:41:"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]";s:34:"(.+?)/([^/]+)/page/?([0-9]{1,})/?$";s:70:"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]";s:41:"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$";s:70:"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]";s:30:"(.+?)/([^/]+)(?:/([0-9]+))?/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]";s:20:".+?/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:30:".+?/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:50:".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:".+?/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:14:"(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:26:"(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:33:"(.+?)/comment-page-([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&cpage=$matches[2]";s:8:"(.+?)/?$";s:35:"index.php?category_name=$matches[1]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:50:"contact-form-7-mailchimp-extension/cf7-mch-ext.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'suit-up', 'yes'),
(41, 'stylesheet', 'suit-up', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '15', 'yes'),
(84, 'page_on_front', '14', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', '', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1524237668;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1524237683;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1524238525;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1521818483;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(125, 'can_compress_scripts', '1', 'no'),
(140, 'current_theme', 'Suit up!', 'yes'),
(141, 'theme_mods_suit-up', 'a:6:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:18:"suit_up_theme_logo";s:77:"http://www.geniusmarketinggroup.com/wp-content/uploads/2018/04/Logo-GMG-1.png";s:22:"suit_up_webdor_control";s:2:"21";s:19:"suit_up_footer_logo";s:91:"http://www.geniusmarketinggroup.com/wp-content/uploads/2018/04/Logo-BW-redimensionado-1.png";}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(146, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(301, 'recently_activated', 'a:0:{}', 'yes'),
(307, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.0.1";s:13:"bulk_validate";a:4:{s:9:"timestamp";d:1522956681;s:7:"version";s:5:"5.0.1";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(318, 'core_updater.lock', '1523013541', 'no'),
(368, 'new_admin_email', 'kyrvim@gmail.com', 'yes'),
(371, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.5";s:7:"version";s:5:"4.9.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1524198496;s:15:"version_checked";s:5:"4.9.5";s:12:"translations";a:0:{}}', 'no'),
(383, 'mce_show_notice', '0', 'no'),
(384, 'mce_loyalty', 'a:11:{s:7:"seconds";i:53;s:7:"minutes";i:26;s:5:"hours";i:12;s:4:"mday";i:9;s:4:"wday";i:1;s:3:"mon";i:4;s:4:"year";i:2018;s:4:"yday";i:98;s:7:"weekday";s:6:"Monday";s:5:"month";s:5:"April";i:0;i:1523276813;}', 'no'),
(386, 'cf7_mch_138', 'a:25:{s:3:"api";s:0:"";s:4:"list";s:0:"";s:5:"email";s:0:"";s:4:"name";s:0:"";s:6:"accept";s:0:"";s:12:"CustomValue1";s:0:"";s:10:"CustomKey1";s:0:"";s:12:"CustomValue2";s:0:"";s:10:"CustomKey2";s:0:"";s:12:"CustomValue3";s:0:"";s:10:"CustomKey3";s:0:"";s:12:"CustomValue4";s:0:"";s:10:"CustomKey4";s:0:"";s:12:"CustomValue5";s:0:"";s:10:"CustomKey5";s:0:"";s:12:"CustomValue6";s:0:"";s:10:"CustomKey6";s:0:"";s:12:"CustomValue7";s:0:"";s:10:"CustomKey7";s:0:"";s:12:"CustomValue8";s:0:"";s:10:"CustomKey8";s:0:"";s:12:"CustomValue9";s:0:"";s:10:"CustomKey9";s:0:"";s:13:"CustomValue10";s:0:"";s:11:"CustomKey10";s:0:"";}', 'yes'),
(505, '_site_transient_theme_roots', 'a:4:{s:7:"suit-up";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(419, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1524198497;s:7:"checked";a:4:{s:7:"suit-up";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:1:{s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.5";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.5.zip";}}s:12:"translations";a:0:{}}', 'no'),
(420, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1524225785;s:7:"checked";a:4:{s:19:"akismet/akismet.php";s:5:"4.0.2";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"5.0.1";s:50:"contact-form-7-mailchimp-extension/cf7-mch-ext.php";s:6:"0.4.50";s:9:"hello.php";s:3:"1.6";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.5";s:12:"requires_php";N;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.0.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.0.1.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}}s:50:"contact-form-7-mailchimp-extension/cf7-mch-ext.php";O:8:"stdClass":9:{s:2:"id";s:48:"w.org/plugins/contact-form-7-mailchimp-extension";s:4:"slug";s:34:"contact-form-7-mailchimp-extension";s:6:"plugin";s:50:"contact-form-7-mailchimp-extension/cf7-mch-ext.php";s:11:"new_version";s:6:"0.4.50";s:3:"url";s:65:"https://wordpress.org/plugins/contact-form-7-mailchimp-extension/";s:7:"package";s:77:"https://downloads.wordpress.org/plugin/contact-form-7-mailchimp-extension.zip";s:5:"icons";a:2:{s:2:"2x";s:87:"https://ps.w.org/contact-form-7-mailchimp-extension/assets/icon-256x256.png?rev=1072113";s:2:"1x";s:87:"https://ps.w.org/contact-form-7-mailchimp-extension/assets/icon-128x128.png?rev=1072113";}s:7:"banners";a:2:{s:2:"2x";s:90:"https://ps.w.org/contact-form-7-mailchimp-extension/assets/banner-1544x500.png?rev=1072092";s:2:"1x";s:89:"https://ps.w.org/contact-form-7-mailchimp-extension/assets/banner-772x250.png?rev=1625715";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(433, '_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:0;}', 'yes'),
(421, '_site_transient_timeout_browser_efc56fe28520bcd166ef136f44025003', '1524164235', 'no'),
(422, '_site_transient_browser_efc56fe28520bcd166ef136f44025003', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"65.0.3325.181";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(434, '_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:0;}', 'yes'),
(504, '_site_transient_timeout_theme_roots', '1524227586', 'no'),
(427, '_site_transient_timeout_browser_22fadc2b21d7de294926341f5ae3eb05', '1524169631', 'no'),
(428, '_site_transient_browser_22fadc2b21d7de294926341f5ae3eb05', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"65.0.3325.181";s:8:"platform";s:9:"Macintosh";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(446, '_site_transient_timeout_browser_56b529b7dc2c591fc7e2844c2dc739ff', '1524244233', 'no'),
(447, '_site_transient_browser_56b529b7dc2c591fc7e2844c2dc739ff', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"64.0.3282.186";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) TYPE=MyISAM  AUTO_INCREMENT=363 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_lock', '1521818625:1'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', '#about'),
(11, 6, '_menu_item_type', 'custom'),
(12, 6, '_menu_item_menu_item_parent', '0'),
(13, 6, '_menu_item_object_id', '6'),
(14, 6, '_menu_item_object', 'custom'),
(15, 6, '_menu_item_target', ''),
(16, 6, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(17, 6, '_menu_item_xfn', ''),
(18, 6, '_menu_item_url', '#seo'),
(19, 7, '_menu_item_type', 'custom'),
(20, 7, '_menu_item_menu_item_parent', '0'),
(21, 7, '_menu_item_object_id', '7'),
(22, 7, '_menu_item_object', 'custom'),
(23, 7, '_menu_item_target', ''),
(24, 7, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(25, 7, '_menu_item_xfn', ''),
(26, 7, '_menu_item_url', '#design'),
(27, 8, '_menu_item_type', 'custom'),
(28, 8, '_menu_item_menu_item_parent', '0'),
(29, 8, '_menu_item_object_id', '8'),
(30, 8, '_menu_item_object', 'custom'),
(31, 8, '_menu_item_target', ''),
(32, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(33, 8, '_menu_item_xfn', ''),
(34, 8, '_menu_item_url', '#marketing'),
(362, 172, '_wp_trash_meta_time', '1524060953'),
(361, 172, '_wp_trash_meta_status', 'publish'),
(43, 10, '_menu_item_type', 'custom'),
(44, 10, '_menu_item_menu_item_parent', '0'),
(45, 10, '_menu_item_object_id', '10'),
(46, 10, '_menu_item_object', 'custom'),
(47, 10, '_menu_item_target', ''),
(48, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(49, 10, '_menu_item_xfn', ''),
(50, 10, '_menu_item_url', '#clients'),
(51, 11, '_menu_item_type', 'custom'),
(52, 11, '_menu_item_menu_item_parent', '0'),
(53, 11, '_menu_item_object_id', '11'),
(54, 11, '_menu_item_object', 'custom'),
(55, 11, '_menu_item_target', ''),
(56, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(57, 11, '_menu_item_xfn', ''),
(58, 11, '_menu_item_url', '#contact'),
(59, 4, '_wp_trash_meta_status', 'publish'),
(60, 4, '_wp_trash_meta_time', '1521818630'),
(61, 12, '_wp_attached_file', '2018/03/logo.png'),
(62, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:234;s:6:"height";i:79;s:4:"file";s:16:"2018/03/logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"logo-150x79.png";s:5:"width";i:150;s:6:"height";i:79;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(63, 13, '_wp_trash_meta_status', 'publish'),
(64, 13, '_wp_trash_meta_time', '1521818780'),
(66, 14, '_customize_changeset_uuid', 'a9cf52a6-49bb-4e23-a296-615787bd93da'),
(68, 15, '_customize_changeset_uuid', 'a9cf52a6-49bb-4e23-a296-615787bd93da'),
(69, 16, '_wp_trash_meta_status', 'publish'),
(70, 16, '_wp_trash_meta_time', '1521818869'),
(71, 19, '_wp_trash_meta_status', 'publish'),
(72, 19, '_wp_trash_meta_time', '1521818889'),
(73, 2, '_wp_trash_meta_status', 'publish'),
(74, 2, '_wp_trash_meta_time', '1521818909'),
(75, 2, '_wp_desired_post_slug', 'pagina-exemplo'),
(76, 14, '_edit_lock', '1521818924:1'),
(77, 21, '_edit_last', '1'),
(78, 21, '_edit_lock', '1524060674:1'),
(79, 21, 'webdor_string_layer_a', 'Intelligence'),
(80, 21, 'webdor_string_layer_b', 'Efficiency'),
(84, 24, '_wp_trash_meta_status', 'publish'),
(85, 24, '_wp_trash_meta_time', '1521822694'),
(95, 28, '_wp_attached_file', '2018/03/apple-frame.png'),
(96, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1177;s:6:"height";i:682;s:4:"file";s:23:"2018/03/apple-frame.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"apple-frame-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"apple-frame-300x174.png";s:5:"width";i:300;s:6:"height";i:174;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:23:"apple-frame-768x445.png";s:5:"width";i:768;s:6:"height";i:445;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:24:"apple-frame-1024x593.png";s:5:"width";i:1024;s:6:"height";i:593;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(97, 21, '_thumbnail_id', '28'),
(98, 1, '_wp_trash_meta_status', 'publish'),
(99, 1, '_wp_trash_meta_time', '1522250756'),
(100, 1, '_wp_desired_post_slug', 'ola-mundo'),
(101, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(102, 30, '_edit_last', '1'),
(103, 30, '_edit_lock', '1523196092:1'),
(104, 30, 'about_string_layer', 'At GMG we understand that digital marketing  and social  media management <b>ARE NO LONGER BOUTIQUE SERVICES... THEY ARE AS ESSENTIAL AS ANY OTHER UTILITY. </b>'),
(105, 34, '_edit_last', '1'),
(106, 34, '_edit_lock', '1523196182:1'),
(107, 34, 'seo_string_layer_title', 'Inbound Marketing'),
(110, 34, 'seo_string_layer_content', 'When used appropriately, content marketing can do more than sell your product, it can create a cult like following and organic base of support for your brand.<br><br>\r\nContent Marketing is very different than traditional marketing strategies. Rather than simply remind your customer about the awesomeness of your product... content marketing involves the sharing of editorial content for consumption by your ideal consumer. The plan is to educate and engaging them in a way that makes it more likely they will try your product or service.  When used appropriately, content marketing can do more than sell your product, it can create a cult like following, and organic base of support for your brand.'),
(111, 38, '_edit_last', '1'),
(112, 38, '_edit_lock', '1523196263:1'),
(113, 38, 'cf_item_list_a', 'Visually appealing and Google optimized websites, that work well across many different media interface platforms.'),
(122, 38, 'cf_item_list_b', 'Adhere strictly to Google''s search engine optimization standards.'),
(123, 38, 'cf_item_list_c', 'Provides easily navigable and diversified content.'),
(124, 41, '_edit_last', '1'),
(125, 41, '_edit_lock', '1523196433:1'),
(126, 44, '_wp_attached_file', '2018/04/marketing-bg.png'),
(127, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:345;s:6:"height";i:288;s:4:"file";s:24:"2018/04/marketing-bg.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"marketing-bg-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"marketing-bg-300x250.png";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(128, 41, '_thumbnail_id', '44'),
(129, 46, '_edit_last', '1'),
(130, 46, '_edit_lock', '1523196400:1'),
(131, 48, '_edit_last', '1'),
(132, 48, '_edit_lock', '1522845398:1'),
(133, 49, '_edit_last', '1'),
(134, 49, '_edit_lock', '1523196378:1'),
(135, 51, '_edit_last', '1'),
(136, 51, '_edit_lock', '1523196322:1'),
(137, 53, '_edit_last', '1'),
(138, 53, '_edit_lock', '1523196297:1'),
(139, 54, '_wp_attached_file', '2018/04/ico-long.png'),
(140, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:35;s:6:"height";i:36;s:4:"file";s:20:"2018/04/ico-long.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(141, 53, '_thumbnail_id', '54'),
(142, 57, '_wp_attached_file', '2018/04/ico-product.png'),
(143, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:37;s:6:"height";i:36;s:4:"file";s:23:"2018/04/ico-product.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(144, 51, '_thumbnail_id', '57'),
(145, 58, '_wp_attached_file', '2018/04/ico-geo.png'),
(146, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:38;s:6:"height";i:38;s:4:"file";s:19:"2018/04/ico-geo.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(147, 49, '_thumbnail_id', '58'),
(148, 48, '_wp_trash_meta_status', 'draft'),
(149, 48, '_wp_trash_meta_time', '1522845540'),
(150, 48, '_wp_desired_post_slug', ''),
(151, 60, '_wp_attached_file', '2018/04/ico-focus.png'),
(152, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:35;s:6:"height";i:36;s:4:"file";s:21:"2018/04/ico-focus.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(153, 46, '_thumbnail_id', '60'),
(154, 62, '_edit_last', '1'),
(155, 62, '_edit_lock', '1523196282:1'),
(156, 63, '_wp_attached_file', '2018/04/ico-racial.png'),
(157, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:35;s:6:"height";i:35;s:4:"file";s:22:"2018/04/ico-racial.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(158, 62, '_thumbnail_id', '63'),
(159, 65, '_edit_last', '1'),
(160, 65, '_edit_lock', '1522892234:1'),
(161, 67, '_edit_last', '1'),
(162, 67, '_edit_lock', '1522892268:1'),
(163, 69, '_edit_last', '1'),
(164, 69, '_edit_lock', '1522892306:1'),
(165, 71, '_edit_last', '1'),
(166, 71, '_edit_lock', '1522892338:1'),
(167, 73, '_edit_last', '1'),
(168, 73, '_edit_lock', '1522892384:1'),
(169, 75, '_edit_last', '1'),
(170, 75, '_edit_lock', '1523197744:1'),
(171, 77, '_edit_last', '1'),
(172, 77, '_edit_lock', '1523216648:1'),
(173, 78, '_wp_attached_file', '2018/04/texture-media.png'),
(174, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:126;s:6:"height";i:54;s:4:"file";s:25:"2018/04/texture-media.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(175, 77, '_thumbnail_id', '78'),
(176, 80, '_edit_last', '1'),
(177, 80, '_edit_lock', '1523216668:1'),
(178, 81, '_wp_attached_file', '2018/04/ultra-standard.png'),
(179, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:136;s:6:"height";i:54;s:4:"file";s:26:"2018/04/ultra-standard.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(180, 80, '_thumbnail_id', '81'),
(181, 83, '_edit_last', '1'),
(182, 83, '_edit_lock', '1523216769:1'),
(183, 84, '_wp_attached_file', '2018/04/target.png'),
(184, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:153;s:6:"height";i:54;s:4:"file";s:18:"2018/04/target.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"target-150x54.png";s:5:"width";i:150;s:6:"height";i:54;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(185, 83, '_thumbnail_id', '84'),
(186, 86, '_edit_last', '1'),
(187, 86, '_edit_lock', '1523216814:1'),
(188, 87, '_wp_attached_file', '2018/04/sundial.png'),
(189, 87, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:54;s:4:"file";s:19:"2018/04/sundial.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(190, 86, '_thumbnail_id', '87'),
(191, 89, '_edit_last', '1'),
(192, 89, '_edit_lock', '1523216973:1'),
(193, 90, '_wp_attached_file', '2018/04/cetaphil.png'),
(194, 90, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:130;s:6:"height";i:54;s:4:"file";s:20:"2018/04/cetaphil.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(195, 89, '_thumbnail_id', '90'),
(196, 92, '_edit_last', '1'),
(197, 92, '_edit_lock', '1523216956:1'),
(198, 93, '_wp_attached_file', '2018/04/airbnb.png'),
(199, 93, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:170;s:6:"height";i:54;s:4:"file";s:18:"2018/04/airbnb.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"airbnb-150x54.png";s:5:"width";i:150;s:6:"height";i:54;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(200, 92, '_thumbnail_id', '93'),
(201, 95, '_edit_last', '1'),
(202, 95, '_edit_lock', '1523217116:1'),
(203, 96, '_wp_attached_file', '2018/04/beech-nut.png'),
(204, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:133;s:6:"height";i:54;s:4:"file";s:21:"2018/04/beech-nut.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(205, 95, '_thumbnail_id', '96'),
(206, 98, '_edit_last', '1'),
(207, 98, '_edit_lock', '1523228330:1'),
(208, 99, '_wp_attached_file', '2018/04/capital.png'),
(209, 99, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:165;s:6:"height";i:54;s:4:"file";s:19:"2018/04/capital.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"capital-150x54.png";s:5:"width";i:150;s:6:"height";i:54;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(210, 98, '_thumbnail_id', '99'),
(219, 103, '_form', '[text* your-name placeholder "Your Name*"]\n[email* your-email placeholder "Email*"]\n[text company-name placeholder "Company Name"]\n[text* phone-number placeholder "Phone Number*"]\n[submit "Send"]'),
(220, 103, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:23:"GENIUS "[your-subject]"";s:6:"sender";s:30:"[your-name] <kyrvim@gmail.com>";s:9:"recipient";s:16:"kyrvim@gmail.com";s:4:"body";s:184:"De: [your-name] <[your-email]>\nAssunto: [your-subject]\n\nCorpo da mensagem:\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de contato em GENIUS (http://localhost/sandbox)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(221, 103, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:23:"GENIUS "[your-subject]"";s:6:"sender";s:25:"GENIUS <kyrvim@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:128:"Corpo da mensagem:\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de contato em GENIUS (http://localhost/sandbox)";s:18:"additional_headers";s:26:"Reply-To: kyrvim@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(222, 103, '_messages', 'a:23:{s:12:"mail_sent_ok";s:27:"Thank you for your message.";s:12:"mail_sent_ng";s:70:"There was an error while trying to send your message. Try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:70:"There was an error while trying to send your message. Try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is earlier than the oldest allowed.";s:13:"date_too_late";s:48:"The date is later than the highest date allowed.";s:13:"upload_failed";s:51:"An unknown error occurred while uploading the file.";s:24:"upload_file_type_invalid";s:53:"You do not have permission to send this type of file.";s:21:"upload_file_too_large";s:22:"The file is too large.";s:23:"upload_failed_php_error";s:39:"There was an error submitting the file.";s:14:"invalid_number";s:25:"Number format is invalid.";s:16:"number_too_small";s:44:"The number is less than the minimum allowed.";s:16:"number_too_large";s:47:"The number is greater than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:35:"O código digitado está incorreto.";s:13:"invalid_email";s:37:"The entered email address is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:28:"The phone number is invalid.";}'),
(223, 103, '_additional_settings', ''),
(224, 103, '_locale', 'pt_BR'),
(225, 127, '_wp_attached_file', '2018/04/footer-logo.png'),
(226, 127, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:230;s:6:"height";i:90;s:4:"file";s:23:"2018/04/footer-logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"footer-logo-150x90.png";s:5:"width";i:150;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(227, 128, '_wp_trash_meta_status', 'publish'),
(228, 128, '_wp_trash_meta_time', '1523231815'),
(229, 129, '_edit_lock', '1523275019:1'),
(270, 129, '_wp_trash_meta_status', 'publish'),
(271, 129, '_wp_trash_meta_time', '1523275063'),
(272, 135, '_edit_lock', '1523275347:1'),
(273, 135, '_wp_trash_meta_status', 'publish'),
(274, 135, '_wp_trash_meta_time', '1523275348'),
(275, 136, '_wp_trash_meta_status', 'publish'),
(276, 136, '_wp_trash_meta_time', '1523275510'),
(279, 138, '_form', '<div class="suit-up-newsletter">\n [email* your-email placeholder "Your Email"]\n [submit "sUBSCRIBE"]\n</div>'),
(280, 138, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:23:"GENIUS "[your-subject]"";s:6:"sender";s:30:"[your-name] <kyrvim@gmail.com>";s:9:"recipient";s:16:"kyrvim@gmail.com";s:4:"body";s:169:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on GENIUS (http://localhost/sandbox)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(281, 138, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:23:"GENIUS "[your-subject]"";s:6:"sender";s:25:"GENIUS <kyrvim@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:111:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on GENIUS (http://localhost/sandbox)";s:18:"additional_headers";s:26:"Reply-To: kyrvim@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(282, 138, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(283, 138, '_additional_settings', ''),
(284, 138, '_locale', 'en_US'),
(285, 139, '_edit_last', '1'),
(286, 139, '_edit_lock', '1523305470:1'),
(287, 140, '_wp_attached_file', '2018/04/ico-face.png'),
(288, 140, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:22;s:6:"height";i:26;s:4:"file";s:20:"2018/04/ico-face.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(289, 139, '_thumbnail_id', '140'),
(290, 142, '_edit_last', '1'),
(291, 142, '_edit_lock', '1523304577:1'),
(292, 143, '_wp_attached_file', '2018/04/ico-tube.png'),
(293, 143, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:22;s:6:"height";i:26;s:4:"file";s:20:"2018/04/ico-tube.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(294, 142, '_thumbnail_id', '143'),
(295, 145, '_edit_last', '1'),
(296, 145, '_edit_lock', '1523304644:1'),
(297, 146, '_wp_attached_file', '2018/04/ico-google.png'),
(298, 146, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:23;s:6:"height";i:26;s:4:"file";s:22:"2018/04/ico-google.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(299, 145, '_thumbnail_id', '146'),
(300, 148, '_edit_last', '1'),
(301, 148, '_edit_lock', '1523304673:1'),
(302, 149, '_wp_attached_file', '2018/04/ico-twitter.png'),
(303, 149, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:24;s:6:"height";i:26;s:4:"file";s:23:"2018/04/ico-twitter.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(304, 148, '_thumbnail_id', '149'),
(305, 151, '_edit_last', '1'),
(306, 151, '_edit_lock', '1523304745:1'),
(307, 152, '_wp_attached_file', '2018/04/ico-insta.png'),
(308, 152, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:25;s:6:"height";i:24;s:4:"file";s:21:"2018/04/ico-insta.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(309, 151, '_thumbnail_id', '152'),
(310, 155, '_wp_attached_file', '2018/04/logo-1.png'),
(311, 155, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:245;s:6:"height";i:98;s:4:"file";s:18:"2018/04/logo-1.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"logo-1-150x98.png";s:5:"width";i:150;s:6:"height";i:98;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(312, 156, '_wp_trash_meta_status', 'publish'),
(313, 156, '_wp_trash_meta_time', '1523562011'),
(314, 157, '_wp_attached_file', '2018/04/flogo-1.png'),
(315, 157, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:272;s:6:"height";i:138;s:4:"file";s:19:"2018/04/flogo-1.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"flogo-1-150x138.png";s:5:"width";i:150;s:6:"height";i:138;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(316, 158, '_wp_trash_meta_status', 'publish'),
(317, 158, '_wp_trash_meta_time', '1523562026'),
(318, 75, '_wp_trash_meta_status', 'publish'),
(319, 75, '_wp_trash_meta_time', '1523629973'),
(320, 75, '_wp_desired_post_slug', 'proident-magna-voluptatum-morbi-conubia-esse-cubilia-molestias-ab-necessitatibus-nostrud-litora-provident-nam-possimus-laboris-omnis-repellat-2'),
(321, 73, '_wp_trash_meta_status', 'publish'),
(322, 73, '_wp_trash_meta_time', '1523629973'),
(323, 73, '_wp_desired_post_slug', 'cupidatat-quibusdam-voluptate-alias-sodales-assumenda-eligendi-fusce-cupidatat-ex-mus-necessitatibus-facilisi-nemo-porro-odit-2'),
(324, 71, '_wp_trash_meta_status', 'publish'),
(325, 71, '_wp_trash_meta_time', '1523629973'),
(326, 71, '_wp_desired_post_slug', 'proident-magna-voluptatum-morbi-conubia-esse-cubilia-molestias-ab-necessitatibus-nostrud-litora-provident-nam-possimus-laboris-omnis-repellat'),
(327, 69, '_wp_trash_meta_status', 'publish'),
(328, 69, '_wp_trash_meta_time', '1523629973'),
(329, 69, '_wp_desired_post_slug', 'cupidatat-quibusdam-voluptate-alias-sodales-assumenda-eligendi-fusce-cupidatat-ex-mus-necessitatibus-facilisi-nemo-porro-odit'),
(330, 67, '_wp_trash_meta_status', 'publish'),
(331, 67, '_wp_trash_meta_time', '1523629973'),
(332, 67, '_wp_desired_post_slug', 'irure-nascetur-eros-error-consequat-tempore-blanditiis-hendrerit-similique-exercitationem-veniam-fugiat'),
(333, 65, '_wp_trash_meta_status', 'publish'),
(334, 65, '_wp_trash_meta_time', '1523629973'),
(335, 65, '_wp_desired_post_slug', 'debitis-ornare-placerat-fusce-nibh-ultricies-habitant-sollicitudin-nulla-consectetuer-laoreet-tristique-minim-ducimus-officia-lacinia'),
(336, 159, '_wp_attached_file', '2018/04/Logo-GMG.png'),
(337, 159, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:940;s:6:"height";i:420;s:4:"file";s:20:"2018/04/Logo-GMG.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Logo-GMG-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"Logo-GMG-300x134.png";s:5:"width";i:300;s:6:"height";i:134;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:20:"Logo-GMG-768x343.png";s:5:"width";i:768;s:6:"height";i:343;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(338, 160, '_wp_trash_meta_status', 'publish'),
(339, 160, '_wp_trash_meta_time', '1523996179'),
(340, 161, '_wp_trash_meta_status', 'publish'),
(341, 161, '_wp_trash_meta_time', '1523996206'),
(342, 162, '_wp_attached_file', '2018/04/Logo-GMG-redimensionado.png'),
(343, 162, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:220;s:6:"height";i:98;s:4:"file";s:35:"2018/04/Logo-GMG-redimensionado.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"Logo-GMG-redimensionado-150x98.png";s:5:"width";i:150;s:6:"height";i:98;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(344, 163, '_edit_lock', '1523997983:1'),
(345, 163, '_wp_trash_meta_status', 'publish'),
(346, 163, '_wp_trash_meta_time', '1523997984'),
(347, 164, '_wp_attached_file', '2018/04/Logo-GMG-1.png'),
(348, 164, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:220;s:6:"height";i:98;s:4:"file";s:22:"2018/04/Logo-GMG-1.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Logo-GMG-1-150x98.png";s:5:"width";i:150;s:6:"height";i:98;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(349, 165, '_wp_trash_meta_status', 'publish'),
(350, 165, '_wp_trash_meta_time', '1523998201'),
(357, 169, '_wp_attached_file', '2018/04/Logo-BW-redimensionado-1.png'),
(353, 167, '_wp_attached_file', '2018/04/Logo-BW-redimensionado.png'),
(354, 167, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:272;s:6:"height";i:138;s:4:"file";s:34:"2018/04/Logo-BW-redimensionado.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"Logo-BW-redimensionado-150x138.png";s:5:"width";i:150;s:6:"height";i:138;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(355, 168, '_wp_trash_meta_status', 'publish'),
(356, 168, '_wp_trash_meta_time', '1523998309'),
(358, 169, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:213;s:6:"height";i:81;s:4:"file";s:36:"2018/04/Logo-BW-redimensionado-1.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"Logo-BW-redimensionado-1-150x81.png";s:5:"width";i:150;s:6:"height";i:81;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(359, 170, '_wp_trash_meta_status', 'publish'),
(360, 170, '_wp_trash_meta_time', '1523998481');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) TYPE=MyISAM  AUTO_INCREMENT=173 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-03-23 12:21:07', '2018-03-23 15:21:07', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!', 'Olá, mundo!', '', 'trash', 'open', 'open', '', 'ola-mundo__trashed', '', '', '2018-03-28 12:25:56', '2018-03-28 15:25:56', '', 0, 'http://localhost/sandbox/?p=1', 0, 'post', '', 1),
(2, 1, '2018-03-23 12:21:07', '2018-03-23 15:21:07', 'Este é o exemplo de uma página. É diferente de um post de blog porque é estática e pode aparecer em menus de navegação (na maioria dos temas). A maioria das pessoas começam com uma página ''Sobre'' que as apresenta aos potenciais visitantes do site. Você pode usar algo como:\n\n<blockquote>Oi! Sou um estudante de Biologia e gosto de esportes e natureza. Nos fins de semana pratico futebol com meus amigos no clube local. Eu moro em Valinhos e fiz este site para falar sobre minha cidade.</blockquote>\n\n...ou algo como:\n\n<blockquote>A empresa Logos foi fundada em 1980, e tem provido o comércio local com o que há de melhor em informatização. Localizada em Recife, nossa empresa tem se destacado como um das que também contribuem para o descarte correto de equipamentos eletrônicos substituídos.</blockquote>\n\nComo um novo usuário WordPress, vá ao seu <a href="http://localhost/sandbox/wp-admin/">Painel</a> para excluir este conteúdo e criar o seu. Divirta-se!', 'Página de exemplo', '', 'trash', 'closed', 'open', '', 'pagina-exemplo__trashed', '', '', '2018-03-23 12:28:29', '2018-03-23 15:28:29', '', 0, 'http://localhost/sandbox/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-03-23 12:23:50', '2018-03-23 15:23:50', '{\n    "nav_menu[-2000214145]": {\n        "value": {\n            "name": "Primary menu",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-23 15:22:45"\n    },\n    "nav_menu_item[-2012767329]": {\n        "value": {\n            "object_id": 0,\n            "object": "custom",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "custom",\n            "title": "About us",\n            "url": "#about",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "About us",\n            "nav_menu_term_id": -2000214145,\n            "_invalid": false,\n            "type_label": "Link personalizado"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-23 15:22:45"\n    },\n    "nav_menu_item[-1231196248]": {\n        "value": {\n            "object_id": 0,\n            "object": "custom",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "custom",\n            "title": "Seo",\n            "url": "#seo",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Seo",\n            "nav_menu_term_id": -2000214145,\n            "_invalid": false,\n            "type_label": "Link personalizado"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-23 15:22:45"\n    },\n    "nav_menu_item[-1699329070]": {\n        "value": {\n            "object_id": 0,\n            "object": "custom",\n            "menu_item_parent": 0,\n            "position": 3,\n            "type": "custom",\n            "title": "Design",\n            "url": "#design",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Design",\n            "nav_menu_term_id": -2000214145,\n            "_invalid": false,\n            "type_label": "Link personalizado"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-23 15:23:45"\n    },\n    "nav_menu_item[-1284336288]": {\n        "value": {\n            "object_id": 0,\n            "object": "custom",\n            "menu_item_parent": 0,\n            "position": 4,\n            "type": "custom",\n            "title": "Marketing",\n            "url": "#marketing",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Marketing",\n            "nav_menu_term_id": -2000214145,\n            "_invalid": false,\n            "type_label": "Link personalizado"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-23 15:23:45"\n    },\n    "nav_menu_item[-1732114686]": {\n        "value": {\n            "object_id": 0,\n            "object": "custom",\n            "menu_item_parent": 0,\n            "position": 5,\n            "type": "custom",\n            "title": "Faq",\n            "url": "#faq",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Faq",\n            "nav_menu_term_id": -2000214145,\n            "_invalid": false,\n            "type_label": "Link personalizado"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-23 15:23:45"\n    },\n    "nav_menu_item[-70146237]": {\n        "value": {\n            "object_id": 0,\n            "object": "custom",\n            "menu_item_parent": 0,\n            "position": 6,\n            "type": "custom",\n            "title": "Clients",\n            "url": "#clients",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Clients",\n            "nav_menu_term_id": -2000214145,\n            "_invalid": false,\n            "type_label": "Link personalizado"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-23 15:23:45"\n    },\n    "nav_menu_item[-1022921923]": {\n        "value": {\n            "object_id": 0,\n            "object": "custom",\n            "menu_item_parent": 0,\n            "position": 7,\n            "type": "custom",\n            "title": "Contact",\n            "url": "#contact",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Contact",\n            "nav_menu_term_id": -2000214145,\n            "_invalid": false,\n            "type_label": "Link personalizado"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-23 15:23:45"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bce6cb88-0f6a-4449-a723-10212d1a606c', '', '', '2018-03-23 12:23:50', '2018-03-23 15:23:50', '', 0, 'http://localhost/sandbox/?p=4', 0, 'customize_changeset', '', 0),
(5, 1, '2018-03-23 12:23:50', '2018-03-23 15:23:50', '', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-03-23 12:23:50', '2018-03-23 15:23:50', '', 0, 'http://localhost/sandbox/2018/03/23/about-us/', 1, 'nav_menu_item', '', 0),
(6, 1, '2018-03-23 12:23:50', '2018-03-23 15:23:50', '', 'Seo', '', 'publish', 'closed', 'closed', '', 'seo', '', '', '2018-03-23 12:23:50', '2018-03-23 15:23:50', '', 0, 'http://localhost/sandbox/2018/03/23/seo/', 2, 'nav_menu_item', '', 0),
(7, 1, '2018-03-23 12:23:50', '2018-03-23 15:23:50', '', 'Design', '', 'publish', 'closed', 'closed', '', 'design', '', '', '2018-03-23 12:23:50', '2018-03-23 15:23:50', '', 0, 'http://localhost/sandbox/2018/03/23/design/', 3, 'nav_menu_item', '', 0),
(8, 1, '2018-03-23 12:23:50', '2018-03-23 15:23:50', '', 'Marketing', '', 'publish', 'closed', 'closed', '', 'marketing', '', '', '2018-03-23 12:23:50', '2018-03-23 15:23:50', '', 0, 'http://localhost/sandbox/2018/03/23/marketing/', 4, 'nav_menu_item', '', 0),
(10, 1, '2018-03-23 12:23:50', '2018-03-23 15:23:50', '', 'Clients', '', 'publish', 'closed', 'closed', '', 'clients', '', '', '2018-03-23 12:23:50', '2018-03-23 15:23:50', '', 0, 'http://localhost/sandbox/2018/03/23/clients/', 6, 'nav_menu_item', '', 0),
(11, 1, '2018-03-23 12:23:50', '2018-03-23 15:23:50', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-03-23 12:23:50', '2018-03-23 15:23:50', '', 0, 'http://localhost/sandbox/2018/03/23/contact/', 7, 'nav_menu_item', '', 0),
(12, 1, '2018-03-23 12:26:16', '2018-03-23 15:26:16', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-03-23 12:26:16', '2018-03-23 15:26:16', '', 0, 'http://localhost/sandbox/wp-content/uploads/2018/03/logo.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2018-03-23 12:26:20', '2018-03-23 15:26:20', '{\n    "suit-up::suit_up_theme_logo": {\n        "value": "http://localhost/sandbox/wp-content/uploads/2018/03/logo.png",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-23 15:26:20"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '536059c2-310d-450b-bdfd-4ce9917a7cec', '', '', '2018-03-23 12:26:20', '2018-03-23 15:26:20', '', 0, 'http://localhost/sandbox/2018/03/23/536059c2-310d-450b-bdfd-4ce9917a7cec/', 0, 'customize_changeset', '', 0),
(14, 1, '2018-03-23 12:27:49', '2018-03-23 15:27:49', '', 'Landing Page', '', 'publish', 'closed', 'closed', '', 'landing-page', '', '', '2018-03-23 12:27:49', '2018-03-23 15:27:49', '', 0, 'http://localhost/sandbox/?page_id=14', 0, 'page', '', 0),
(15, 1, '2018-03-23 12:27:49', '2018-03-23 15:27:49', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-03-23 12:27:49', '2018-03-23 15:27:49', '', 0, 'http://localhost/sandbox/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-03-23 12:27:49', '2018-03-23 15:27:49', '{\n    "show_on_front": {\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-23 15:27:49"\n    },\n    "page_on_front": {\n        "value": "14",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-23 15:27:49"\n    },\n    "page_for_posts": {\n        "value": "15",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-23 15:27:49"\n    },\n    "nav_menus_created_posts": {\n        "value": [\n            14,\n            15\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-23 15:27:49"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a9cf52a6-49bb-4e23-a296-615787bd93da', '', '', '2018-03-23 12:27:49', '2018-03-23 15:27:49', '', 0, 'http://localhost/sandbox/2018/03/23/a9cf52a6-49bb-4e23-a296-615787bd93da/', 0, 'customize_changeset', '', 0),
(17, 1, '2018-03-23 12:27:49', '2018-03-23 15:27:49', '', 'Landing Page', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-03-23 12:27:49', '2018-03-23 15:27:49', '', 14, 'http://localhost/sandbox/2018/03/23/14-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-03-23 12:27:49', '2018-03-23 15:27:49', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-03-23 12:27:49', '2018-03-23 15:27:49', '', 15, 'http://localhost/sandbox/2018/03/23/15-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-03-23 12:28:09', '2018-03-23 15:28:09', '{\n    "blogname": {\n        "value": "GENIUS",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-23 15:28:09"\n    },\n    "blogdescription": {\n        "value": "MARKETING GROUP",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-23 15:28:09"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0efc6e52-66c5-4e72-ad29-316658d55fc6', '', '', '2018-03-23 12:28:09', '2018-03-23 15:28:09', '', 0, 'http://localhost/sandbox/2018/03/23/0efc6e52-66c5-4e72-ad29-316658d55fc6/', 0, 'customize_changeset', '', 0),
(20, 1, '2018-03-23 12:28:29', '2018-03-23 15:28:29', 'Este é o exemplo de uma página. É diferente de um post de blog porque é estática e pode aparecer em menus de navegação (na maioria dos temas). A maioria das pessoas começam com uma página ''Sobre'' que as apresenta aos potenciais visitantes do site. Você pode usar algo como:\n\n<blockquote>Oi! Sou um estudante de Biologia e gosto de esportes e natureza. Nos fins de semana pratico futebol com meus amigos no clube local. Eu moro em Valinhos e fiz este site para falar sobre minha cidade.</blockquote>\n\n...ou algo como:\n\n<blockquote>A empresa Logos foi fundada em 1980, e tem provido o comércio local com o que há de melhor em informatização. Localizada em Recife, nossa empresa tem se destacado como um das que também contribuem para o descarte correto de equipamentos eletrônicos substituídos.</blockquote>\n\nComo um novo usuário WordPress, vá ao seu <a href="http://localhost/sandbox/wp-admin/">Painel</a> para excluir este conteúdo e criar o seu. Divirta-se!', 'Página de exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-03-23 12:28:29', '2018-03-23 15:28:29', '', 2, 'http://localhost/sandbox/2018/03/23/2-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-03-23 12:38:06', '2018-03-23 15:38:06', '', 'Creativity', '', 'publish', 'open', 'closed', '', 'creativity', '', '', '2018-04-18 11:13:35', '2018-04-18 14:13:35', '', 0, 'http://localhost/sandbox/?post_type=webdor&#038;p=21', 0, 'webdor', '', 0),
(171, 1, '2018-04-18 11:13:35', '2018-04-18 14:13:35', '', 'Creativity', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-04-18 11:13:35', '2018-04-18 14:13:35', '', 21, 'http://www.geniusmarketinggroup.com/sem-categoria/21-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-03-23 12:38:06', '2018-03-23 15:38:06', 'Turpis aspernatur sociis, porttitor, eu eiusmod', 'Creativity', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-03-23 12:38:06', '2018-03-23 15:38:06', '', 21, 'http://localhost/sandbox/2018/03/23/21-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-03-23 13:31:34', '2018-03-23 16:31:34', '{\n    "suit-up::suit_up_webdor_control": {\n        "value": "21",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-23 16:31:34"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd2d24242-aada-4f63-bea6-3aef2f270f65', '', '', '2018-03-23 13:31:34', '2018-03-23 16:31:34', '', 0, 'http://localhost/sandbox/2018/03/23/d2d24242-aada-4f63-bea6-3aef2f270f65/', 0, 'customize_changeset', '', 0),
(28, 1, '2018-03-23 13:55:19', '2018-03-23 16:55:19', '', 'apple-frame', '', 'inherit', 'open', 'closed', '', 'apple-frame', '', '', '2018-03-23 13:55:19', '2018-03-23 16:55:19', '', 21, 'http://localhost/sandbox/wp-content/uploads/2018/03/apple-frame.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2018-03-28 12:25:56', '2018-03-28 15:25:56', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!', 'Olá, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-03-28 12:25:56', '2018-03-28 15:25:56', '', 1, 'http://localhost/sandbox/2018/03/28/1-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-03-28 12:38:30', '2018-03-28 15:38:30', '<b>Genius Marketing Group</b> specializes in digital marketing, web development/graphic design, search engine optimization, and market research. We use an integrated strategy <i>(i.e. traditional, digital, SEO, and PPC)</i> to deliver high value marketing campaigns to clients of all sizes.', '<span>Who Are The</span> <b>GENIUSES?</b>', 'Furthermore, the modern consumer has multiple points of access and the most successful campaigns leverage the full customer profile, to effect positive  distinctiveness for tyour brand. ', 'publish', 'open', 'closed', '', 'who-are-the-geniuses', '', '', '2018-04-08 11:03:29', '2018-04-08 14:03:29', '', 0, 'http://localhost/sandbox/?post_type=about&#038;p=30', 0, 'about', '', 0),
(31, 1, '2018-03-28 12:38:30', '2018-03-28 15:38:30', '<b>Genius Marketing Group</b> specializes in digital marketing, web development/graphic design, search engine optimization, and market research. We use an integrated strategy <i>(i.e. traditional, digital, SEO, and PPC)</i> to deliver high value marketing campaigns to clients of all sizes.', 'Who Are The <b>GENIUSES?</b>', 'Furthermore, the modern consumer has multiple points of access and the most successful campaigns leverage the full customer profile, to effect positive  distinctiveness for tyour brand. ', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-03-28 12:38:30', '2018-03-28 15:38:30', '', 30, 'http://localhost/sandbox/2018/03/28/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-03-28 15:36:02', '2018-03-28 18:36:02', '<b>Genius Marketing Group</b> specializes in digital marketing, web development/graphic design, search engine optimization, and market research. We use an integrated strategy <i>(i.e. traditional, digital, SEO, and PPC)</i> to deliver high value marketing campaigns to clients of all sizes.', '<span>Who Are The<span> <b>GENIUSES?</b>', 'Furthermore, the modern consumer has multiple points of access and the most successful campaigns leverage the full customer profile, to effect positive  distinctiveness for tyour brand. ', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-03-28 15:36:02', '2018-03-28 18:36:02', '', 30, 'http://localhost/sandbox/2018/03/28/30-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-03-28 15:36:08', '2018-03-28 18:36:08', '<b>Genius Marketing Group</b> specializes in digital marketing, web development/graphic design, search engine optimization, and market research. We use an integrated strategy <i>(i.e. traditional, digital, SEO, and PPC)</i> to deliver high value marketing campaigns to clients of all sizes.', '<span>Who Are The</span> <b>GENIUSES?</b>', 'Furthermore, the modern consumer has multiple points of access and the most successful campaigns leverage the full customer profile, to effect positive  distinctiveness for tyour brand. ', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-03-28 15:36:08', '2018-03-28 18:36:08', '', 30, 'http://localhost/sandbox/2018/03/28/30-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-03-29 11:07:29', '2018-03-29 14:07:29', '<b>Search Engine Optimization</b> is the process of maximizing the number of potential visitors to your website, by modifying both it''s structure and content in order to achieve higher ranking in the most commonly used search engines.', '<p>/SEO OPTIMIZATION</p><b>DIGITAL MARKETING</b>', 'SEO has become quite the virtual battlefield.  Companies that pursue no SEO strategy at all, are relegated to very low rank and this can be a disaster for your company. When is the last time you conducted a Google Search and made it all the way to the third page of a set of search results?  If the answer is never...you''re starting to understand the importance of SEO to your business.', 'publish', 'open', 'closed', '', 'seo-optimizationdigital-marketing', '', '', '2018-04-08 11:04:51', '2018-04-08 14:04:51', '', 0, 'http://localhost/sandbox/?post_type=seo&#038;p=34', 0, 'seo', '', 0),
(35, 1, '2018-03-29 11:07:29', '2018-03-29 14:07:29', '<b>Search Engine Optimization</b> is the process of maximizing the number of potential visitors to your website, by modifying both it''s structure and content in order to achieve higher ranking in the most commonly used search engines.', '<span>/SEO OPTIMIZATION</span><b>DIGITAL MARKETING</b>', 'SEO has become quite the virtual battlefield.  Companies that pursue no SEO strategy at all, are relegated to very low rank and this can be a disaster for your company. When is the last time you conducted a Google Search and made it all the way to the third page of a set of search results?  If the answer is never...you''re starting to understand the importance of SEO to your business.', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-03-29 11:07:29', '2018-03-29 14:07:29', '', 34, 'http://localhost/sandbox/2018/03/29/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-03-29 13:41:38', '2018-03-29 16:41:38', '<b>Search Engine Optimization</b> is the process of maximizing the number of potential visitors to your website, by modifying both it''s structure and content in order to achieve higher ranking in the most commonly used search engines.', '<p>/SEO OPTIMIZATION</p><b>DIGITAL MARKETING</b>', 'SEO has become quite the virtual battlefield.  Companies that pursue no SEO strategy at all, are relegated to very low rank and this can be a disaster for your company. When is the last time you conducted a Google Search and made it all the way to the third page of a set of search results?  If the answer is never...you''re starting to understand the importance of SEO to your business.', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-03-29 13:41:38', '2018-03-29 16:41:38', '', 34, 'http://localhost/sandbox/2018/03/29/34-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-04-02 16:10:15', '2018-04-02 19:10:15', '<b>Responsive web design</b> is <span>"an approach to web design which makes web pages render well on a variety of devices and window or screen sizes."</span> You can no longer afford to have a rudimentary sight, with poor navigation that is difficult to access via cell phone,', '/GRAPHIC ARTISTRY <p>WEB PAGE DESIGN</p>', 'Websites are a dime a dozen right! Wrong. If you''ve ever used your phone to load a webpage, only to find that it''s interface had inappropriately sized text, poor navigational access, or simply crashed...you know why all websites are not created equal. \r\nResponsive web design is "an approach to web design which makes web pages render well on a variety of devices and window or screen sizes."  You can no longer afford to have a rudimentary webpage, with poor navigation that is difficult to access via cell phone, tablet...or any number of emerging technologies. At GMG, we strongly recommend you use our services or another reputable digital marketing and website development firm to implement RWD for your business.  Our RWD services deliver:', 'publish', 'open', 'closed', '', 'graphic-artistry-web-page-design', '', '', '2018-04-08 11:06:12', '2018-04-08 14:06:12', '', 0, 'http://localhost/sandbox/?post_type=design&#038;p=38', 0, 'design', '', 0),
(39, 1, '2018-04-02 16:10:15', '2018-04-02 19:10:15', '<b>Responsive web design</b> is <span>"an approach to web design which makes web pages render well on a variety of devices and window or screen sizes."</span> You can no longer afford to have a rudimentary sight, with poor navigation that is difficult to access via cell phone,', '/GRAPHIC ARTISTRY <p>WEB PAGE DESIGN</p>', 'Websites are a dime a dozen right! Wrong. If you''ve ever used your phone to load a webpage, only to find that it''s interface had inappropriately sized text, poor navigational access, or simply crashed...you know why all websites are not created equal. \r\nResponsive web design is "an approach to web design which makes web pages render well on a variety of devices and window or screen sizes."  You can no longer afford to have a rudimentary webpage, with poor navigation that is difficult to access via cell phone, tablet...or any number of emerging technologies. At GMG, we strongly recommend you use our services or another reputable digital marketing and website development firm to implement RWD for your business.  Our RWD services deliver:', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-04-02 16:10:15', '2018-04-02 19:10:15', '', 38, 'http://localhost/sandbox/2018/04/02/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-04-02 17:54:16', '2018-04-02 20:54:16', '<b>Responsive web design</b> is <span>"an approach to web design which makes web pages render well on a variety of devices and window or screen sizes."</span> You can no longer afford to have a rudimentary sighxt, with poor navigation that is difficult to access via cell phone,', '/GRAPHIC ARTISTRY <p>WEB PAGE DESIGN</p>', 'Websites are a dime a dozen right! Wrong. If you''ve ever used your phone to load a webpage, only to find that it''s interface had inappropriately sized text, poor navigational access, or simply crashed...you know why all websites are not created equal. \nResponsive web design is "an approach to web design which makes web pages render well on a variety of devices and window or screen sizes."  You can no longer afford to have a rudimentary webpage, with poor navigation that is difficult to access via cell phone, tablet...or any number of emerging technologies. At GMG, we strongly recommend you use our services or another reputable digital marketing and website development firm to implement RWD for your business.  Our RWD services deliver:', 'inherit', 'closed', 'closed', '', '38-autosave-v1', '', '', '2018-04-02 17:54:16', '2018-04-02 20:54:16', '', 38, 'http://localhost/sandbox/2018/04/02/38-autosave-v1/', 0, 'revision', '', 0),
(41, 1, '2018-04-03 21:54:48', '2018-04-04 00:54:48', '<b>Market research</b> is any organized effort to gather information about target markets, or potential/existing customers.  At GMG, we have in-house PhD level analytical expertise, as well as a trusted network of academic sub-contractors to deliver unbiased and authoritative market research.', '<p>/Market Analysis</p><b>Market Research</b>', '', 'publish', 'open', 'closed', '', 'market-analysis-market-research', '', '', '2018-04-04 18:17:55', '2018-04-04 21:17:55', '', 0, 'http://localhost/sandbox/?post_type=marketing&#038;p=41', 0, 'marketing', '', 0),
(42, 1, '2018-04-03 21:54:48', '2018-04-04 00:54:48', '<b>Market research</b> is any organized effort to gather information about target markets, or potential/existing customers.  At GMG, we have in-house PhD level analytical expertise, as well as a trusted network of academic sub-contractors to deliver unbiased and authoritative market research.', '/Market Analysis Market Research', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-04-03 21:54:48', '2018-04-04 00:54:48', '', 41, 'http://localhost/sandbox/2018/04/03/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-04-03 21:56:41', '2018-04-04 00:56:41', '<b>Market research</b> is any organized effort to gather information about target markets, or potential/existing customers.  At GMG, we have in-house PhD level analytical expertise, as well as a trusted network of academic sub-contractors to deliver unbiased and authoritative market research.', '/Market Analysis <p>Market Research</p>', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-04-03 21:56:41', '2018-04-04 00:56:41', '', 41, 'http://localhost/sandbox/2018/04/03/41-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-04-03 21:59:03', '2018-04-04 00:59:03', '', 'marketing-bg', '', 'inherit', 'open', 'closed', '', 'marketing-bg', '', '', '2018-04-03 21:59:03', '2018-04-04 00:59:03', '', 41, 'http://localhost/sandbox/wp-content/uploads/2018/04/marketing-bg.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2018-04-03 22:41:52', '2018-04-04 01:41:52', '<p>Solicitation of participants and coordination of group demographic makeup.</p>\r\n<p>Question construction, facilitator training.</p>\r\n<p>Compilation of responses, quantification, analysis.</p>', 'Focus groups', '', 'publish', 'open', 'closed', '', 'focus-groups', '', '', '2018-04-08 11:08:58', '2018-04-08 14:08:58', '', 0, 'http://localhost/sandbox/?post_type=marketing&#038;p=46', 0, 'marketing', '', 0),
(47, 1, '2018-04-03 22:41:52', '2018-04-04 01:41:52', '<p>Solicitation of participants and coordination of group demographic makeup.</p>\r\n<p>Question construction, facilitator training.</p>\r\n<p>Compilation of responses, quantification, analysis.</p>', 'Focus groups', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-04-03 22:41:52', '2018-04-04 01:41:52', '', 46, 'http://localhost/sandbox/2018/04/03/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-04-04 09:39:00', '2018-04-04 12:39:00', '<p>Demographic breakdown of target markets.</p>\n<p>Demographic breakdown of target markets.</p>\n<p>Demographic breakdown of target markets.</p>\n<p>Demographic breakdown of target markets.</p>', 'Geographic analysis', '', 'trash', 'open', 'closed', '', '__trashed', '', '', '2018-04-04 09:39:00', '2018-04-04 12:39:00', '', 0, 'http://localhost/sandbox/?post_type=marketing&#038;p=48', 0, 'marketing', '', 0),
(49, 1, '2018-04-03 22:50:18', '2018-04-04 01:50:18', '<p>Demographic breakdown of target markets.</p>\r\n<p>Coordination of surveys, focus group samples with analysis.</p>\r\n<p>Merging of census, demographic data with socio economics.  Statistical comparisons of years and identification of trends.</p>\r\n<p>Identification of prevalent ideologies and vote histories.</p>', 'Geographic analysis', '', 'publish', 'open', 'closed', '', 'geographic-analysis', '', '', '2018-04-08 11:08:36', '2018-04-08 14:08:36', '', 0, 'http://localhost/sandbox/?post_type=marketing&#038;p=49', 0, 'marketing', '', 0),
(50, 1, '2018-04-03 22:50:18', '2018-04-04 01:50:18', '<p>Demographic breakdown of target markets.</p>\r\n<p>Coordination of surveys, focus group samples with analysis.</p>\r\n<p>Merging of census, demographic data with socio economics.  Statistical comparisons of years and identification of trends.</p>\r\n<p>Identification of prevalent ideologies and vote histories.</p>', 'Geographic analysis', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-04-03 22:50:18', '2018-04-04 01:50:18', '', 49, 'http://localhost/sandbox/2018/04/03/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-04-03 22:55:27', '2018-04-04 01:55:27', '<p>We can utilize both quantitative and qualitative analysis to test and develop products in terms of their ingredients, packaging, brand identity, and messaging.</p>', 'Product Development and Messaging', '', 'publish', 'open', 'closed', '', 'product-development-and-messaging', '', '', '2018-04-08 11:07:39', '2018-04-08 14:07:39', '', 0, 'http://localhost/sandbox/?post_type=marketing&#038;p=51', 0, 'marketing', '', 0),
(52, 1, '2018-04-03 22:55:27', '2018-04-04 01:55:27', '<p>We can utilize both quantitative and qualitative analysis to test and develop products in terms of their ingredients, packaging, brand identity, and messaging.</p>', 'Product Development and Messaging', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2018-04-03 22:55:27', '2018-04-04 01:55:27', '', 51, 'http://localhost/sandbox/2018/04/03/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-04-04 09:32:34', '2018-04-04 12:32:34', '<p>Testing messaging strategies-- ability to branch/randomize survey to test different strategies both in form and detail.</p>\r\n<p>Product company reputation.</p>\r\n<p>Clustered or racial oversampling for demographic perception analysis.</p>', 'LONG FORM ''BENCHMARK SURVEYS''', '', 'publish', 'open', 'closed', '', 'long-form-benchmark-surveys', '', '', '2018-04-04 09:32:34', '2018-04-04 12:32:34', '', 0, 'http://localhost/sandbox/?post_type=marketing&#038;p=53', 0, 'marketing', '', 0),
(54, 1, '2018-04-04 09:32:15', '2018-04-04 12:32:15', '', 'ico-long', '', 'inherit', 'open', 'closed', '', 'ico-long', '', '', '2018-04-04 09:32:15', '2018-04-04 12:32:15', '', 53, 'http://localhost/sandbox/wp-content/uploads/2018/04/ico-long.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2018-04-04 09:32:34', '2018-04-04 12:32:34', '<p>Testing messaging strategies-- ability to branch/randomize survey to test different strategies both in form and detail.</p>\r\n<p>Product company reputation.</p>\r\n<p>Clustered or racial oversampling for demographic perception analysis.</p>', 'LONG FORM ''BENCHMARK SURVEYS''', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-04-04 09:32:34', '2018-04-04 12:32:34', '', 53, 'http://localhost/sandbox/2018/04/04/53-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-04-04 09:33:22', '2018-04-04 12:33:22', '<p>We can utilize both quantitative and qualitative analysis to test and develop products in terms of their ingredients, packaging, brand identity, and messaging.</p>', 'Product Development and Messaging', '', 'inherit', 'closed', 'closed', '', '51-autosave-v1', '', '', '2018-04-04 09:33:22', '2018-04-04 12:33:22', '', 51, 'http://localhost/sandbox/2018/04/04/51-autosave-v1/', 0, 'revision', '', 0),
(57, 1, '2018-04-04 09:34:50', '2018-04-04 12:34:50', '', 'ico-product', '', 'inherit', 'open', 'closed', '', 'ico-product', '', '', '2018-04-04 09:34:50', '2018-04-04 12:34:50', '', 51, 'http://localhost/sandbox/wp-content/uploads/2018/04/ico-product.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2018-04-04 09:38:07', '2018-04-04 12:38:07', '', 'ico-geo', '', 'inherit', 'open', 'closed', '', 'ico-geo', '', '', '2018-04-04 09:38:07', '2018-04-04 12:38:07', '', 49, 'http://localhost/sandbox/wp-content/uploads/2018/04/ico-geo.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2018-04-04 09:39:00', '2018-04-04 12:39:00', '<p>Demographic breakdown of target markets.</p>\n<p>Demographic breakdown of target markets.</p>\n<p>Demographic breakdown of target markets.</p>\n<p>Demographic breakdown of target markets.</p>', 'Geographic analysis', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2018-04-04 09:39:00', '2018-04-04 12:39:00', '', 48, 'http://localhost/sandbox/2018/04/04/48-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-04-04 09:40:03', '2018-04-04 12:40:03', '', 'ico-focus', '', 'inherit', 'open', 'closed', '', 'ico-focus', '', '', '2018-04-04 09:40:03', '2018-04-04 12:40:03', '', 46, 'http://localhost/sandbox/wp-content/uploads/2018/04/ico-focus.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2018-04-04 18:17:55', '2018-04-04 21:17:55', '<b>Market research</b> is any organized effort to gather information about target markets, or potential/existing customers.  At GMG, we have in-house PhD level analytical expertise, as well as a trusted network of academic sub-contractors to deliver unbiased and authoritative market research.', '<p>/Market Analysis</p><b>Market Research</b>', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-04-04 18:17:55', '2018-04-04 21:17:55', '', 41, 'http://localhost/sandbox/2018/04/04/41-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-04-04 21:55:19', '2018-04-05 00:55:19', '<p>Information on specific ethnic minority communities, their histories, and communication strategy development.</p>', 'Racial and Ethnic messaging', '', 'publish', 'open', 'closed', '', 'racial-and-ethnic-messaging', '', '', '2018-04-04 21:55:19', '2018-04-05 00:55:19', '', 0, 'http://localhost/sandbox/?post_type=marketing&#038;p=62', 0, 'marketing', '', 0),
(63, 1, '2018-04-04 21:54:35', '2018-04-05 00:54:35', '', 'ico-racial', '', 'inherit', 'open', 'closed', '', 'ico-racial', '', '', '2018-04-04 21:54:35', '2018-04-05 00:54:35', '', 62, 'http://localhost/sandbox/wp-content/uploads/2018/04/ico-racial.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2018-04-04 21:55:19', '2018-04-05 00:55:19', '<p>Information on specific ethnic minority communities, their histories, and communication strategy development.</p>', 'Racial and Ethnic messaging', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-04-04 21:55:19', '2018-04-05 00:55:19', '', 62, 'http://localhost/sandbox/2018/04/04/62-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-04-04 22:39:32', '2018-04-05 01:39:32', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 'Debitis ornare placerat fusce, nibh ultricies habitant sollicitudin nulla consectetuer! Laoreet tristique minim ducimus officia lacinia?', '', 'trash', 'open', 'closed', '', 'debitis-ornare-placerat-fusce-nibh-ultricies-habitant-sollicitudin-nulla-consectetuer-laoreet-tristique-minim-ducimus-officia-lacinia__trashed', '', '', '2018-04-13 11:32:53', '2018-04-13 14:32:53', '', 0, 'http://localhost/sandbox/?post_type=faq&#038;p=65', 0, 'faq', '', 0),
(66, 1, '2018-04-04 22:39:32', '2018-04-05 01:39:32', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 'Debitis ornare placerat fusce, nibh ultricies habitant sollicitudin nulla consectetuer! Laoreet tristique minim ducimus officia lacinia?', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2018-04-04 22:39:32', '2018-04-05 01:39:32', '', 65, 'http://localhost/sandbox/2018/04/04/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2018-04-04 22:40:04', '2018-04-05 01:40:04', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.\r\n', 'Irure nascetur? Eros, error consequat tempore blanditiis hendrerit? Similique exercitationem veniam fugiat?', '', 'trash', 'open', 'closed', '', 'irure-nascetur-eros-error-consequat-tempore-blanditiis-hendrerit-similique-exercitationem-veniam-fugiat__trashed', '', '', '2018-04-13 11:32:53', '2018-04-13 14:32:53', '', 0, 'http://localhost/sandbox/?post_type=faq&#038;p=67', 0, 'faq', '', 0),
(68, 1, '2018-04-04 22:40:04', '2018-04-05 01:40:04', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.\r\n', 'Irure nascetur? Eros, error consequat tempore blanditiis hendrerit? Similique exercitationem veniam fugiat?', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-04-04 22:40:04', '2018-04-05 01:40:04', '', 67, 'http://localhost/sandbox/2018/04/04/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-04-04 22:40:42', '2018-04-05 01:40:42', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 'Cupidatat quibusdam voluptate, alias sodales assumenda, eligendi fusce cupidatat ex, mus necessitatibus facilisi nemo, porro odit?', '', 'trash', 'open', 'closed', '', 'cupidatat-quibusdam-voluptate-alias-sodales-assumenda-eligendi-fusce-cupidatat-ex-mus-necessitatibus-facilisi-nemo-porro-odit__trashed', '', '', '2018-04-13 11:32:53', '2018-04-13 14:32:53', '', 0, 'http://localhost/sandbox/?post_type=faq&#038;p=69', 0, 'faq', '', 0),
(70, 1, '2018-04-04 22:40:42', '2018-04-05 01:40:42', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 'Cupidatat quibusdam voluptate, alias sodales assumenda, eligendi fusce cupidatat ex, mus necessitatibus facilisi nemo, porro odit?', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2018-04-04 22:40:42', '2018-04-05 01:40:42', '', 69, 'http://localhost/sandbox/2018/04/04/69-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-04-04 22:41:10', '2018-04-05 01:41:10', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 'Proident magna voluptatum? Morbi conubia esse cubilia molestias ab necessitatibus nostrud litora, provident nam possimus laboris omnis repellat?', '', 'trash', 'open', 'closed', '', 'proident-magna-voluptatum-morbi-conubia-esse-cubilia-molestias-ab-necessitatibus-nostrud-litora-provident-nam-possimus-laboris-omnis-repellat__trashed', '', '', '2018-04-13 11:32:53', '2018-04-13 14:32:53', '', 0, 'http://localhost/sandbox/?post_type=faq&#038;p=71', 0, 'faq', '', 0),
(72, 1, '2018-04-04 22:41:10', '2018-04-05 01:41:10', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 'Proident magna voluptatum? Morbi conubia esse cubilia molestias ab necessitatibus nostrud litora, provident nam possimus laboris omnis repellat?', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2018-04-04 22:41:10', '2018-04-05 01:41:10', '', 71, 'http://localhost/sandbox/2018/04/04/71-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-04-04 22:41:42', '2018-04-05 01:41:42', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 'Cupidatat quibusdam voluptate, alias sodales assumenda, eligendi fusce cupidatat ex, mus necessitatibus facilisi nemo, porro odit?', '', 'trash', 'open', 'closed', '', 'cupidatat-quibusdam-voluptate-alias-sodales-assumenda-eligendi-fusce-cupidatat-ex-mus-necessitatibus-facilisi-nemo-porro-odit-2__trashed', '', '', '2018-04-13 11:32:53', '2018-04-13 14:32:53', '', 0, 'http://localhost/sandbox/?post_type=faq&#038;p=73', 0, 'faq', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(74, 1, '2018-04-04 22:41:42', '2018-04-05 01:41:42', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 'Cupidatat quibusdam voluptate, alias sodales assumenda, eligendi fusce cupidatat ex, mus necessitatibus facilisi nemo, porro odit?', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2018-04-04 22:41:42', '2018-04-05 01:41:42', '', 73, 'http://localhost/sandbox/2018/04/04/73-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2018-04-04 22:42:28', '2018-04-05 01:42:28', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 'Proident magna voluptatum? Morbi conubia esse cubilia molestias ab necessitatibus nostrud litora, provident nam possimus laboris omnis repellat?', '', 'trash', 'open', 'closed', '', 'proident-magna-voluptatum-morbi-conubia-esse-cubilia-molestias-ab-necessitatibus-nostrud-litora-provident-nam-possimus-laboris-omnis-repellat-2__trashed', '', '', '2018-04-13 11:32:53', '2018-04-13 14:32:53', '', 0, 'http://localhost/sandbox/?post_type=faq&#038;p=75', 0, 'faq', '', 0),
(76, 1, '2018-04-04 22:42:28', '2018-04-05 01:42:28', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 'Proident magna voluptatum? Morbi conubia esse cubilia molestias ab necessitatibus nostrud litora, provident nam possimus laboris omnis repellat?', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2018-04-04 22:42:28', '2018-04-05 01:42:28', '', 75, 'http://localhost/sandbox/2018/04/04/75-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-04-05 16:15:33', '2018-04-05 19:15:33', '', 'Texture Media', 'https://www.texturemedia.com', 'publish', 'open', 'closed', '', 'texture-media', '', '', '2018-04-08 16:45:57', '2018-04-08 19:45:57', '', 0, 'http://localhost/sandbox/?post_type=friend&#038;p=77', 0, 'friend', '', 0),
(78, 1, '2018-04-05 16:15:23', '2018-04-05 19:15:23', '', 'texture-media', '', 'inherit', 'open', 'closed', '', 'texture-media', '', '', '2018-04-05 16:15:23', '2018-04-05 19:15:23', '', 77, 'http://localhost/sandbox/wp-content/uploads/2018/04/texture-media.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2018-04-05 16:15:33', '2018-04-05 19:15:33', '', 'Texture Media', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2018-04-05 16:15:33', '2018-04-05 19:15:33', '', 77, 'http://localhost/sandbox/2018/04/05/77-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-04-05 16:17:00', '2018-04-05 19:17:00', '', 'Ultra Standard', 'http://ultrastandard.com', 'publish', 'open', 'closed', '', 'ultra-standard', '', '', '2018-04-08 16:46:43', '2018-04-08 19:46:43', '', 0, 'http://localhost/sandbox/?post_type=friend&#038;p=80', 0, 'friend', '', 0),
(81, 1, '2018-04-05 16:16:48', '2018-04-05 19:16:48', '', 'ultra-standard', '', 'inherit', 'open', 'closed', '', 'ultra-standard', '', '', '2018-04-05 16:16:48', '2018-04-05 19:16:48', '', 80, 'http://localhost/sandbox/wp-content/uploads/2018/04/ultra-standard.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2018-04-05 16:17:00', '2018-04-05 19:17:00', '', 'Ultra Standard', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-04-05 16:17:00', '2018-04-05 19:17:00', '', 80, 'http://localhost/sandbox/2018/04/05/80-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-04-05 16:18:02', '2018-04-05 19:18:02', '', 'Target', 'https://intl.target.com/?disable_sapphire=true&', 'publish', 'open', 'closed', '', 'target', '', '', '2018-04-08 16:47:28', '2018-04-08 19:47:28', '', 0, 'http://localhost/sandbox/?post_type=friend&#038;p=83', 0, 'friend', '', 0),
(84, 1, '2018-04-05 16:17:56', '2018-04-05 19:17:56', '', 'target', '', 'inherit', 'open', 'closed', '', 'target', '', '', '2018-04-05 16:17:56', '2018-04-05 19:17:56', '', 83, 'http://localhost/sandbox/wp-content/uploads/2018/04/target.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2018-04-05 16:18:02', '2018-04-05 19:18:02', '', 'Target', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2018-04-05 16:18:02', '2018-04-05 19:18:02', '', 83, 'http://localhost/sandbox/2018/04/05/83-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-04-05 16:18:44', '2018-04-05 19:18:44', '', 'Sundial', 'https://www.sundialbrands.com', 'publish', 'open', 'closed', '', 'sundial', '', '', '2018-04-08 16:48:46', '2018-04-08 19:48:46', '', 0, 'http://localhost/sandbox/?post_type=friend&#038;p=86', 0, 'friend', '', 0),
(87, 1, '2018-04-05 16:18:37', '2018-04-05 19:18:37', '', 'sundial', '', 'inherit', 'open', 'closed', '', 'sundial', '', '', '2018-04-05 16:18:37', '2018-04-05 19:18:37', '', 86, 'http://localhost/sandbox/wp-content/uploads/2018/04/sundial.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2018-04-05 16:18:44', '2018-04-05 19:18:44', '', 'Sundial', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-04-05 16:18:44', '2018-04-05 19:18:44', '', 86, 'http://localhost/sandbox/2018/04/05/86-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-04-05 16:19:24', '2018-04-05 19:19:24', '', 'Cetaphil', 'http://www.cetaphil.com.br/index.php', 'publish', 'open', 'closed', '', 'cetaphil', '', '', '2018-04-08 16:49:32', '2018-04-08 19:49:32', '', 0, 'http://localhost/sandbox/?post_type=friend&#038;p=89', 0, 'friend', '', 0),
(90, 1, '2018-04-05 16:19:14', '2018-04-05 19:19:14', '', 'cetaphil', '', 'inherit', 'open', 'closed', '', 'cetaphil', '', '', '2018-04-05 16:19:14', '2018-04-05 19:19:14', '', 89, 'http://localhost/sandbox/wp-content/uploads/2018/04/cetaphil.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2018-04-05 16:19:24', '2018-04-05 19:19:24', '', 'Cetaphil', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-04-05 16:19:24', '2018-04-05 19:19:24', '', 89, 'http://localhost/sandbox/2018/04/05/89-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-04-05 16:20:06', '2018-04-05 19:20:06', '', 'AirBnb', 'https://www.airbnb.com/', 'publish', 'open', 'closed', '', 'airbnb', '', '', '2018-04-08 16:51:09', '2018-04-08 19:51:09', '', 0, 'http://localhost/sandbox/?post_type=friend&#038;p=92', 0, 'friend', '', 0),
(93, 1, '2018-04-05 16:19:59', '2018-04-05 19:19:59', '', 'airbnb', '', 'inherit', 'open', 'closed', '', 'airbnb', '', '', '2018-04-05 16:19:59', '2018-04-05 19:19:59', '', 92, 'http://localhost/sandbox/wp-content/uploads/2018/04/airbnb.png', 0, 'attachment', 'image/png', 0),
(94, 1, '2018-04-05 16:20:06', '2018-04-05 19:20:06', '', 'AirBnb', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2018-04-05 16:20:06', '2018-04-05 19:20:06', '', 92, 'http://localhost/sandbox/2018/04/05/92-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-04-05 16:21:06', '2018-04-05 19:21:06', '', 'Beech-nut', 'http://www.beechnut.com', 'publish', 'open', 'closed', '', 'beech-nut', '', '', '2018-04-08 16:52:11', '2018-04-08 19:52:11', '', 0, 'http://localhost/sandbox/?post_type=friend&#038;p=95', 0, 'friend', '', 0),
(96, 1, '2018-04-05 16:21:01', '2018-04-05 19:21:01', '', 'beech-nut', '', 'inherit', 'open', 'closed', '', 'beech-nut', '', '', '2018-04-05 16:21:01', '2018-04-05 19:21:01', '', 95, 'http://localhost/sandbox/wp-content/uploads/2018/04/beech-nut.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2018-04-05 16:21:06', '2018-04-05 19:21:06', '', 'Beech-nut', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-04-05 16:21:06', '2018-04-05 19:21:06', '', 95, 'http://localhost/sandbox/2018/04/05/95-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2018-04-05 16:21:42', '2018-04-05 19:21:42', '', 'Capital', 'http://www.capitalcreditgroup.com', 'publish', 'open', 'closed', '', 'capital', '', '', '2018-04-08 16:54:49', '2018-04-08 19:54:49', '', 0, 'http://localhost/sandbox/?post_type=friend&#038;p=98', 0, 'friend', '', 0),
(99, 1, '2018-04-05 16:21:37', '2018-04-05 19:21:37', '', 'capital', '', 'inherit', 'open', 'closed', '', 'capital', '', '', '2018-04-05 16:21:37', '2018-04-05 19:21:37', '', 98, 'http://localhost/sandbox/wp-content/uploads/2018/04/capital.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2018-04-05 16:21:42', '2018-04-05 19:21:42', '', 'Capital', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2018-04-05 16:21:42', '2018-04-05 19:21:42', '', 98, 'http://localhost/sandbox/2018/04/05/98-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2018-04-05 19:48:19', '2018-04-05 22:48:19', '[text* your-name placeholder "Your Name*"]\r\n[email* your-email placeholder "Email*"]\r\n[text company-name placeholder "Company Name"]\r\n[text* phone-number placeholder "Phone Number*"]\r\n[submit "Send"]\n1\nGENIUS "[your-subject]"\n[your-name] <kyrvim@gmail.com>\nkyrvim@gmail.com\nDe: [your-name] <[your-email]>\r\nAssunto: [your-subject]\r\n\r\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em GENIUS (http://localhost/sandbox)\nReply-To: [your-email]\n\n\n\n\nGENIUS "[your-subject]"\nGENIUS <kyrvim@gmail.com>\n[your-email]\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em GENIUS (http://localhost/sandbox)\nReply-To: kyrvim@gmail.com\n\n\n\nThank you for your message.\nThere was an error while trying to send your message. Try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error while trying to send your message. Try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is earlier than the oldest allowed.\nThe date is later than the highest date allowed.\nAn unknown error occurred while uploading the file.\nYou do not have permission to send this type of file.\nThe file is too large.\nThere was an error submitting the file.\nNumber format is invalid.\nThe number is less than the minimum allowed.\nThe number is greater than the maximum allowed.\nThe answer to the quiz is incorrect.\nO código digitado está incorreto.\nThe entered email address is invalid.\nThe URL is invalid.\nThe phone number is invalid.', 'contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-04-09 08:30:18', '2018-04-09 11:30:18', '', 0, 'http://localhost/sandbox/?post_type=wpcf7_contact_form&#038;p=103', 0, 'wpcf7_contact_form', '', 0),
(104, 1, '2018-04-08 11:03:29', '2018-04-08 14:03:29', '<b>Genius Marketing Group</b> specializes in digital marketing, web development/graphic design, search engine optimization, and market research. We use an integrated strategy <i>(i.e. traditional, digital, SEO, and PPC)</i> to deliver high value marketing campaigns to clients of all sizes.', '<span>Who Are The</span> <b>GENIUSES?</b>', 'Furthermore, the modern consumer has multiple points of access and the most successful campaigns leverage the full customer profile, to effect positive  distinctiveness for tyour brand. ', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-04-08 11:03:29', '2018-04-08 14:03:29', '', 30, 'http://localhost/sandbox/2018/04/08/30-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2018-04-08 11:04:51', '2018-04-08 14:04:51', '<b>Search Engine Optimization</b> is the process of maximizing the number of potential visitors to your website, by modifying both it''s structure and content in order to achieve higher ranking in the most commonly used search engines.', '<p>/SEO OPTIMIZATION</p><b>DIGITAL MARKETING</b>', 'SEO has become quite the virtual battlefield.  Companies that pursue no SEO strategy at all, are relegated to very low rank and this can be a disaster for your company. When is the last time you conducted a Google Search and made it all the way to the third page of a set of search results?  If the answer is never...you''re starting to understand the importance of SEO to your business.', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-04-08 11:04:51', '2018-04-08 14:04:51', '', 34, 'http://localhost/sandbox/2018/04/08/34-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2018-04-08 11:06:12', '2018-04-08 14:06:12', '<b>Responsive web design</b> is <span>"an approach to web design which makes web pages render well on a variety of devices and window or screen sizes."</span> You can no longer afford to have a rudimentary sight, with poor navigation that is difficult to access via cell phone,', '/GRAPHIC ARTISTRY <p>WEB PAGE DESIGN</p>', 'Websites are a dime a dozen right! Wrong. If you''ve ever used your phone to load a webpage, only to find that it''s interface had inappropriately sized text, poor navigational access, or simply crashed...you know why all websites are not created equal. \r\nResponsive web design is "an approach to web design which makes web pages render well on a variety of devices and window or screen sizes."  You can no longer afford to have a rudimentary webpage, with poor navigation that is difficult to access via cell phone, tablet...or any number of emerging technologies. At GMG, we strongly recommend you use our services or another reputable digital marketing and website development firm to implement RWD for your business.  Our RWD services deliver:', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-04-08 11:06:12', '2018-04-08 14:06:12', '', 38, 'http://localhost/sandbox/2018/04/08/38-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-04-08 11:07:39', '2018-04-08 14:07:39', '<p>We can utilize both quantitative and qualitative analysis to test and develop products in terms of their ingredients, packaging, brand identity, and messaging.</p>', 'Product Development and Messaging', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2018-04-08 11:07:39', '2018-04-08 14:07:39', '', 51, 'http://localhost/sandbox/2018/04/08/51-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2018-04-08 11:08:36', '2018-04-08 14:08:36', '<p>Demographic breakdown of target markets.</p>\r\n<p>Coordination of surveys, focus group samples with analysis.</p>\r\n<p>Merging of census, demographic data with socio economics.  Statistical comparisons of years and identification of trends.</p>\r\n<p>Identification of prevalent ideologies and vote histories.</p>', 'Geographic analysis', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-04-08 11:08:36', '2018-04-08 14:08:36', '', 49, 'http://localhost/sandbox/2018/04/08/49-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2018-04-08 11:08:48', '2018-04-08 14:08:48', '<p>Solicitation of participants and coordination of group demographic makeup.</p>\n<p>Question construction, facilitator training.</p>\n<p>Compilation of responses, quantification, analysis.</p>', 'Focus groups', '', 'inherit', 'closed', 'closed', '', '46-autosave-v1', '', '', '2018-04-08 11:08:48', '2018-04-08 14:08:48', '', 46, 'http://localhost/sandbox/2018/04/08/46-autosave-v1/', 0, 'revision', '', 0),
(110, 1, '2018-04-08 11:08:58', '2018-04-08 14:08:58', '<p>Solicitation of participants and coordination of group demographic makeup.</p>\r\n<p>Question construction, facilitator training.</p>\r\n<p>Compilation of responses, quantification, analysis.</p>', 'Focus groups', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-04-08 11:08:58', '2018-04-08 14:08:58', '', 46, 'http://localhost/sandbox/2018/04/08/46-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2018-04-17 17:16:19', '2018-04-17 20:16:19', '{\n    "suit-up::suit_up_theme_logo": {\n        "value": "http://www.geniusmarketinggroup.com/wp-content/uploads/2018/04/Logo-GMG.png",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-17 20:16:19"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0e362b25-d47f-4a9f-a3b3-64e746cb7df5', '', '', '2018-04-17 17:16:19', '2018-04-17 20:16:19', '', 0, 'http://www.geniusmarketinggroup.com/sem-categoria/0e362b25-d47f-4a9f-a3b3-64e746cb7df5/', 0, 'customize_changeset', '', 0),
(159, 1, '2018-04-17 17:16:14', '2018-04-17 20:16:14', '', 'Logo GMG', '', 'inherit', 'open', 'closed', '', 'logo-gmg', '', '', '2018-04-17 17:16:14', '2018-04-17 20:16:14', '', 0, 'http://www.geniusmarketinggroup.com/wp-content/uploads/2018/04/Logo-GMG.png', 0, 'attachment', 'image/png', 0),
(116, 1, '2018-04-08 15:42:50', '2018-04-08 18:42:50', '', 'Capital', 'https://www.texturemedia.com/', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2018-04-08 15:42:50', '2018-04-08 18:42:50', '', 98, 'http://localhost/sandbox/2018/04/08/98-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2018-04-08 15:43:46', '2018-04-08 18:43:46', '', 'Capital', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2018-04-08 15:43:46', '2018-04-08 18:43:46', '', 98, 'http://localhost/sandbox/2018/04/08/98-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2018-04-08 16:45:57', '2018-04-08 19:45:57', '', 'Texture Media', 'https://www.texturemedia.com', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2018-04-08 16:45:57', '2018-04-08 19:45:57', '', 77, 'http://localhost/sandbox/2018/04/08/77-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-04-08 16:46:43', '2018-04-08 19:46:43', '', 'Ultra Standard', 'http://ultrastandard.com', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-04-08 16:46:43', '2018-04-08 19:46:43', '', 80, 'http://localhost/sandbox/2018/04/08/80-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2018-04-08 16:47:28', '2018-04-08 19:47:28', '', 'Target', 'https://intl.target.com/?disable_sapphire=true&', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2018-04-08 16:47:28', '2018-04-08 19:47:28', '', 83, 'http://localhost/sandbox/2018/04/08/83-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-04-08 16:48:46', '2018-04-08 19:48:46', '', 'Sundial', 'https://www.sundialbrands.com', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-04-08 16:48:46', '2018-04-08 19:48:46', '', 86, 'http://localhost/sandbox/2018/04/08/86-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2018-04-08 16:49:32', '2018-04-08 19:49:32', '', 'Cetaphil', 'http://www.cetaphil.com.br/index.php', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-04-08 16:49:32', '2018-04-08 19:49:32', '', 89, 'http://localhost/sandbox/2018/04/08/89-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2018-04-08 16:51:09', '2018-04-08 19:51:09', '', 'AirBnb', 'https://www.airbnb.com/', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2018-04-08 16:51:09', '2018-04-08 19:51:09', '', 92, 'http://localhost/sandbox/2018/04/08/92-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2018-04-08 16:52:06', '2018-04-08 19:52:06', '', 'Beech-nut', '', 'inherit', 'closed', 'closed', '', '95-autosave-v1', '', '', '2018-04-08 16:52:06', '2018-04-08 19:52:06', '', 95, 'http://localhost/sandbox/2018/04/08/95-autosave-v1/', 0, 'revision', '', 0),
(125, 1, '2018-04-08 16:52:11', '2018-04-08 19:52:11', '', 'Beech-nut', 'http://www.beechnut.com', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-04-08 16:52:11', '2018-04-08 19:52:11', '', 95, 'http://localhost/sandbox/2018/04/08/95-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2018-04-08 16:54:49', '2018-04-08 19:54:49', '', 'Capital', 'http://www.capitalcreditgroup.com', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2018-04-08 16:54:49', '2018-04-08 19:54:49', '', 98, 'http://localhost/sandbox/2018/04/08/98-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2018-04-08 20:56:33', '2018-04-08 23:56:33', '', 'footer-logo', '', 'inherit', 'open', 'closed', '', 'footer-logo', '', '', '2018-04-08 20:56:33', '2018-04-08 23:56:33', '', 0, 'http://localhost/sandbox/wp-content/uploads/2018/04/footer-logo.png', 0, 'attachment', 'image/png', 0),
(128, 1, '2018-04-08 20:56:54', '2018-04-08 23:56:54', '{\n    "suit-up::suit_up_footer_logo": {\n        "value": "http://localhost/sandbox/wp-content/uploads/2018/04/footer-logo.png",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-08 23:56:54"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '73900d07-7ec3-4ff4-bcce-390abea09dcc', '', '', '2018-04-08 20:56:54', '2018-04-08 23:56:54', '', 0, 'http://localhost/sandbox/2018/04/08/73900d07-7ec3-4ff4-bcce-390abea09dcc/', 0, 'customize_changeset', '', 0),
(129, 1, '2018-04-09 08:57:37', '2018-04-09 11:57:37', '{\n    "nav_menu[-374126042]": {\n        "value": {\n            "name": "footer-menu",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-09 11:53:21"\n    },\n    "nav_menu_item[-1607809996]": {\n        "value": {\n            "object_id": 0,\n            "object": "custom",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "custom",\n            "title": "About Us",\n            "url": "#about",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "About Us",\n            "nav_menu_term_id": -374126042,\n            "_invalid": false,\n            "type_label": "Custom Link"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-09 11:53:21"\n    },\n    "nav_menu_item[-1804436588]": {\n        "value": {\n            "object_id": 0,\n            "object": "custom",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "custom",\n            "title": "Digital Marketing/SEO Optimization",\n            "url": "#seo",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Digital Marketing/SEO Optimization",\n            "nav_menu_term_id": -374126042,\n            "_invalid": false,\n            "type_label": "Custom Link"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-09 11:54:21"\n    },\n    "nav_menu_item[-288138301]": {\n        "value": {\n            "object_id": 0,\n            "object": "custom",\n            "menu_item_parent": 0,\n            "position": 3,\n            "type": "custom",\n            "title": "Web-Page Design/Graphic Artistr",\n            "url": "#design",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Web-Page Design/Graphic Artistr",\n            "nav_menu_term_id": -374126042,\n            "_invalid": false,\n            "type_label": "Custom Link"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-09 11:55:21"\n    },\n    "nav_menu_item[-1670921125]": {\n        "value": {\n            "object_id": 0,\n            "object": "custom",\n            "menu_item_parent": 0,\n            "position": 4,\n            "type": "custom",\n            "title": "Market Research/Market Analysis",\n            "url": "#marketing",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Market Research/Market Analysis",\n            "nav_menu_term_id": -374126042,\n            "_invalid": false,\n            "type_label": "Custom Link"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-09 11:56:21"\n    },\n    "nav_menu_item[-145364788]": {\n        "value": {\n            "object_id": 0,\n            "object": "custom",\n            "menu_item_parent": 0,\n            "position": 5,\n            "type": "custom",\n            "title": "Marketing 101",\n            "url": "#faq",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Marketing 101",\n            "nav_menu_term_id": -374126042,\n            "_invalid": false,\n            "type_label": "Custom Link"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-09 11:56:21"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f9474ca2-8c0b-46ca-b588-c4b1c39178f0', '', '', '2018-04-09 08:57:37', '2018-04-09 11:57:37', '', 0, 'http://localhost/sandbox/?p=129', 0, 'customize_changeset', '', 0),
(135, 1, '2018-04-09 09:02:28', '2018-04-09 12:02:28', '{\n    "nav_menu[2]": {\n        "value": {\n            "name": "header-menu",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-09 12:02:26"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7ca90ff8-0347-4c4f-be69-60bc4f0b1978', '', '', '2018-04-09 09:02:28', '2018-04-09 12:02:28', '', 0, 'http://localhost/sandbox/?p=135', 0, 'customize_changeset', '', 0),
(136, 1, '2018-04-09 09:05:05', '2018-04-09 12:05:05', '{\n    "nav_menu[3]": {\n        "value": false,\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-09 12:05:05"\n    },\n    "nav_menu[2]": {\n        "value": {\n            "name": "Primary menu",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-09 12:05:05"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '905368c5-25e8-4de8-8ff5-acb6c3c3e2d3', '', '', '2018-04-09 09:05:05', '2018-04-09 12:05:05', '', 0, 'http://localhost/sandbox/2018/04/09/905368c5-25e8-4de8-8ff5-acb6c3c3e2d3/', 0, 'customize_changeset', '', 0),
(138, 1, '2018-04-09 09:29:52', '2018-04-09 12:29:52', '<div class="suit-up-newsletter">\r\n [email* your-email placeholder "Your Email"]\r\n [submit "sUBSCRIBE"]\r\n</div>\n1\nGENIUS "[your-subject]"\n[your-name] <kyrvim@gmail.com>\nkyrvim@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on GENIUS (http://localhost/sandbox)\nReply-To: [your-email]\n\n\n\n\nGENIUS "[your-subject]"\nGENIUS <kyrvim@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on GENIUS (http://localhost/sandbox)\nReply-To: kyrvim@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Newsletter', '', 'publish', 'closed', 'closed', '', 'newsletter', '', '', '2018-04-09 15:52:47', '2018-04-09 18:52:47', '', 0, 'http://localhost/sandbox/?post_type=wpcf7_contact_form&#038;p=138', 0, 'wpcf7_contact_form', '', 0),
(139, 1, '2018-04-09 17:11:20', '2018-04-09 20:11:20', '', 'Facebook', 'https://www.facebook.com/', 'publish', 'open', 'closed', '', 'facebook', '', '', '2018-04-09 17:11:20', '2018-04-09 20:11:20', '', 0, 'http://localhost/sandbox/?post_type=social&#038;p=139', 0, 'social', '', 0),
(140, 1, '2018-04-09 17:09:58', '2018-04-09 20:09:58', '', 'ico-face', '', 'inherit', 'open', 'closed', '', 'ico-face', '', '', '2018-04-09 17:09:58', '2018-04-09 20:09:58', '', 139, 'http://localhost/sandbox/wp-content/uploads/2018/04/ico-face.png', 0, 'attachment', 'image/png', 0),
(141, 1, '2018-04-09 17:11:20', '2018-04-09 20:11:20', '', 'Facebook', 'https://www.facebook.com/', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2018-04-09 17:11:20', '2018-04-09 20:11:20', '', 139, 'http://localhost/sandbox/2018/04/09/139-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2018-04-09 17:11:59', '2018-04-09 20:11:59', '', 'Youtube', 'https://www.youtube.com/', 'publish', 'open', 'closed', '', 'youtube', '', '', '2018-04-09 17:11:59', '2018-04-09 20:11:59', '', 0, 'http://localhost/sandbox/?post_type=social&#038;p=142', 0, 'social', '', 0),
(143, 1, '2018-04-09 17:11:44', '2018-04-09 20:11:44', '', 'ico-tube', '', 'inherit', 'open', 'closed', '', 'ico-tube', '', '', '2018-04-09 17:11:44', '2018-04-09 20:11:44', '', 142, 'http://localhost/sandbox/wp-content/uploads/2018/04/ico-tube.png', 0, 'attachment', 'image/png', 0),
(144, 1, '2018-04-09 17:11:59', '2018-04-09 20:11:59', '', 'Youtube', 'https://www.youtube.com/', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2018-04-09 17:11:59', '2018-04-09 20:11:59', '', 142, 'http://localhost/sandbox/2018/04/09/142-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2018-04-09 17:13:06', '2018-04-09 20:13:06', '', 'Google+', 'https://plus.google.com/', 'publish', 'open', 'closed', '', 'google', '', '', '2018-04-09 17:13:06', '2018-04-09 20:13:06', '', 0, 'http://localhost/sandbox/?post_type=social&#038;p=145', 0, 'social', '', 0),
(146, 1, '2018-04-09 17:12:26', '2018-04-09 20:12:26', '', 'ico-google', '', 'inherit', 'open', 'closed', '', 'ico-google', '', '', '2018-04-09 17:12:26', '2018-04-09 20:12:26', '', 145, 'http://localhost/sandbox/wp-content/uploads/2018/04/ico-google.png', 0, 'attachment', 'image/png', 0),
(147, 1, '2018-04-09 17:13:06', '2018-04-09 20:13:06', '', 'Google+', 'https://plus.google.com/', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2018-04-09 17:13:06', '2018-04-09 20:13:06', '', 145, 'http://localhost/sandbox/2018/04/09/145-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2018-04-09 17:13:36', '2018-04-09 20:13:36', '', 'Twitter', 'https://twitter.com/', 'publish', 'open', 'closed', '', 'twitter', '', '', '2018-04-09 17:13:36', '2018-04-09 20:13:36', '', 0, 'http://localhost/sandbox/?post_type=social&#038;p=148', 0, 'social', '', 0),
(149, 1, '2018-04-09 17:13:22', '2018-04-09 20:13:22', '', 'ico-twitter', '', 'inherit', 'open', 'closed', '', 'ico-twitter', '', '', '2018-04-09 17:13:22', '2018-04-09 20:13:22', '', 148, 'http://localhost/sandbox/wp-content/uploads/2018/04/ico-twitter.png', 0, 'attachment', 'image/png', 0),
(150, 1, '2018-04-09 17:13:36', '2018-04-09 20:13:36', '', 'Twitter', 'https://twitter.com/', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2018-04-09 17:13:36', '2018-04-09 20:13:36', '', 148, 'http://localhost/sandbox/2018/04/09/148-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2018-04-09 17:14:14', '2018-04-09 20:14:14', '', 'Instagram', 'https://www.instagram.com/', 'publish', 'open', 'closed', '', 'instagram', '', '', '2018-04-09 17:14:14', '2018-04-09 20:14:14', '', 0, 'http://localhost/sandbox/?post_type=social&#038;p=151', 0, 'social', '', 0),
(152, 1, '2018-04-09 17:13:51', '2018-04-09 20:13:51', '', 'ico-insta', '', 'inherit', 'open', 'closed', '', 'ico-insta', '', '', '2018-04-09 17:13:51', '2018-04-09 20:13:51', '', 151, 'http://localhost/sandbox/wp-content/uploads/2018/04/ico-insta.png', 0, 'attachment', 'image/png', 0),
(153, 1, '2018-04-09 17:14:14', '2018-04-09 20:14:14', '', 'Instagram', 'https://www.instagram.com/', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2018-04-09 17:14:14', '2018-04-09 20:14:14', '', 151, 'http://localhost/sandbox/2018/04/09/151-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2018-04-12 15:57:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-12 15:57:15', '0000-00-00 00:00:00', '', 0, 'http://www.geniusmarketinggroup.com/?p=154', 0, 'post', '', 0),
(155, 1, '2018-04-12 16:40:04', '2018-04-12 19:40:04', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2018-04-12 16:40:04', '2018-04-12 19:40:04', '', 0, 'http://www.geniusmarketinggroup.com/wp-content/uploads/2018/04/logo-1.png', 0, 'attachment', 'image/png', 0),
(156, 1, '2018-04-12 16:40:11', '2018-04-12 19:40:11', '{\n    "suit-up::suit_up_theme_logo": {\n        "value": "http://www.geniusmarketinggroup.com/wp-content/uploads/2018/04/logo-1.png",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-12 19:40:11"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd24bb25e-af97-43c9-aada-2d6de52a2e64', '', '', '2018-04-12 16:40:11', '2018-04-12 19:40:11', '', 0, 'http://www.geniusmarketinggroup.com/sem-categoria/d24bb25e-af97-43c9-aada-2d6de52a2e64/', 0, 'customize_changeset', '', 0),
(157, 1, '2018-04-12 16:40:21', '2018-04-12 19:40:21', '', 'flogo', '', 'inherit', 'open', 'closed', '', 'flogo', '', '', '2018-04-12 16:40:21', '2018-04-12 19:40:21', '', 0, 'http://www.geniusmarketinggroup.com/wp-content/uploads/2018/04/flogo-1.png', 0, 'attachment', 'image/png', 0),
(158, 1, '2018-04-12 16:40:26', '2018-04-12 19:40:26', '{\n    "suit-up::suit_up_footer_logo": {\n        "value": "http://www.geniusmarketinggroup.com/wp-content/uploads/2018/04/flogo-1.png",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-12 19:40:26"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '183b2ef2-150b-43d3-af9a-7d533923c16c', '', '', '2018-04-12 16:40:26', '2018-04-12 19:40:26', '', 0, 'http://www.geniusmarketinggroup.com/sem-categoria/183b2ef2-150b-43d3-af9a-7d533923c16c/', 0, 'customize_changeset', '', 0),
(161, 1, '2018-04-17 17:16:46', '2018-04-17 20:16:46', '{\n    "suit-up::suit_up_theme_logo": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-17 20:16:46"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a3f6f052-6d2c-49da-89f4-58ce1dfe5685', '', '', '2018-04-17 17:16:46', '2018-04-17 20:16:46', '', 0, 'http://www.geniusmarketinggroup.com/sem-categoria/a3f6f052-6d2c-49da-89f4-58ce1dfe5685/', 0, 'customize_changeset', '', 0),
(162, 1, '2018-04-17 17:46:16', '2018-04-17 20:46:16', '', 'Logo-GMG-redimensionado', '', 'inherit', 'open', 'closed', '', 'logo-gmg-redimensionado', '', '', '2018-04-17 17:46:16', '2018-04-17 20:46:16', '', 0, 'http://www.geniusmarketinggroup.com/wp-content/uploads/2018/04/Logo-GMG-redimensionado.png', 0, 'attachment', 'image/png', 0),
(163, 1, '2018-04-17 17:46:24', '2018-04-17 20:46:24', '{\n    "suit-up::suit_up_theme_logo": {\n        "value": "http://www.geniusmarketinggroup.com/wp-content/uploads/2018/04/Logo-GMG-redimensionado.png",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-17 20:46:23"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fde602f7-9c04-42f4-8a8a-7d683a47c274', '', '', '2018-04-17 17:46:24', '2018-04-17 20:46:24', '', 0, 'http://www.geniusmarketinggroup.com/?p=163', 0, 'customize_changeset', '', 0),
(164, 1, '2018-04-17 17:49:49', '2018-04-17 20:49:49', '', 'Logo-GMG', '', 'inherit', 'open', 'closed', '', 'logo-gmg-2', '', '', '2018-04-17 17:49:49', '2018-04-17 20:49:49', '', 0, 'http://www.geniusmarketinggroup.com/wp-content/uploads/2018/04/Logo-GMG-1.png', 0, 'attachment', 'image/png', 0),
(165, 1, '2018-04-17 17:50:01', '2018-04-17 20:50:01', '{\n    "suit-up::suit_up_theme_logo": {\n        "value": "http://www.geniusmarketinggroup.com/wp-content/uploads/2018/04/Logo-GMG-1.png",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-17 20:50:01"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'df2d90d4-b161-4bab-b8e0-a03ff95ffa26', '', '', '2018-04-17 17:50:01', '2018-04-17 20:50:01', '', 0, 'http://www.geniusmarketinggroup.com/sem-categoria/df2d90d4-b161-4bab-b8e0-a03ff95ffa26/', 0, 'customize_changeset', '', 0),
(167, 1, '2018-04-17 17:51:41', '2018-04-17 20:51:41', '', 'Logo-BW-redimensionado', '', 'inherit', 'open', 'closed', '', 'logo-bw-redimensionado', '', '', '2018-04-17 17:51:41', '2018-04-17 20:51:41', '', 0, 'http://www.geniusmarketinggroup.com/wp-content/uploads/2018/04/Logo-BW-redimensionado.png', 0, 'attachment', 'image/png', 0),
(168, 1, '2018-04-17 17:51:49', '2018-04-17 20:51:49', '{\n    "suit-up::suit_up_footer_logo": {\n        "value": "http://www.geniusmarketinggroup.com/wp-content/uploads/2018/04/Logo-BW-redimensionado.png",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-17 20:51:49"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '47769048-48ec-4d7c-92c6-739f81833e44', '', '', '2018-04-17 17:51:49', '2018-04-17 20:51:49', '', 0, 'http://www.geniusmarketinggroup.com/sem-categoria/47769048-48ec-4d7c-92c6-739f81833e44/', 0, 'customize_changeset', '', 0),
(169, 1, '2018-04-17 17:54:36', '2018-04-17 20:54:36', '', 'Logo-BW-redimensionado', '', 'inherit', 'open', 'closed', '', 'logo-bw-redimensionado-2', '', '', '2018-04-17 17:54:36', '2018-04-17 20:54:36', '', 0, 'http://www.geniusmarketinggroup.com/wp-content/uploads/2018/04/Logo-BW-redimensionado-1.png', 0, 'attachment', 'image/png', 0),
(170, 1, '2018-04-17 17:54:41', '2018-04-17 20:54:41', '{\n    "suit-up::suit_up_footer_logo": {\n        "value": "http://www.geniusmarketinggroup.com/wp-content/uploads/2018/04/Logo-BW-redimensionado-1.png",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-17 20:54:41"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f967074b-e1ef-4c39-bbf4-cd77c48c9229', '', '', '2018-04-17 17:54:41', '2018-04-17 20:54:41', '', 0, 'http://www.geniusmarketinggroup.com/sem-categoria/f967074b-e1ef-4c39-bbf4-cd77c48c9229/', 0, 'customize_changeset', '', 0),
(172, 1, '2018-04-18 11:15:53', '2018-04-18 14:15:53', '{\n    "nav_menu_item[9]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-18 14:15:53"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a43826e4-023c-4c29-8b38-8b86d3d2e7ef', '', '', '2018-04-18 11:15:53', '2018-04-18 14:15:53', '', 0, 'http://www.geniusmarketinggroup.com/sem-categoria/a43826e4-023c-4c29-8b38-8b86d3d2e7ef/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) TYPE=MyISAM  AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Primary menu', 'primary-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) TYPE=MyISAM;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(8, 2, 0),
(10, 2, 0),
(11, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) TYPE=MyISAM  AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) TYPE=MyISAM  AUTO_INCREMENT=25 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:3:{s:64:"fb6f2a933946d9e9929ba182eb5a2746264647acfdc0e0f7aa5448b174417e44";a:4:{s:10:"expiration";i:1524168934;s:2:"ip";s:15:"179.218.214.217";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:5:"login";i:1523996134;}s:64:"047718a2abc826fc3717c89d5e1caf53cb30d475a1ab62f45294e8489eecc7c6";a:4:{s:10:"expiration";i:1524170870;s:2:"ip";s:15:"179.218.214.217";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:5:"login";i:1523998070;}s:64:"5dd6bb1ad5c83c0bdbfc804588f110fc3e2e3bb4555ac256c5a23417ad1836e5";a:4:{s:10:"expiration";i:1524233588;s:2:"ip";s:15:"179.218.214.217";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:5:"login";i:1524060788;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '154'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:13:"179.218.214.0";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor_expand=off&editor=html'),
(20, 1, 'wp_user-settings-time', '1522803572'),
(21, 1, 'closedpostboxes_webdor', 'a:0:{}'),
(22, 1, 'metaboxhidden_webdor', 'a:1:{i:0;s:7:"slugdiv";}'),
(23, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(24, 1, 'metaboxhidden_dashboard', 'a:4:{i:0;s:19:"dashboard_right_now";i:1;s:18:"dashboard_activity";i:2;s:21:"dashboard_quick_press";i:3;s:17:"dashboard_primary";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) TYPE=MyISAM  AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BVjybXxnbk8d4/ZTx1qkOemrOwGyTs1', 'admin', 'kyrvim@gmail.com', '', '2018-03-23 15:21:07', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
