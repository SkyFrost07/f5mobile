-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2017 at 12:06 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `f5mobile_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `plbs_commentmeta`
--

CREATE TABLE `plbs_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plbs_comments`
--

CREATE TABLE `plbs_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_general_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_general_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `plbs_comments`
--

INSERT INTO `plbs_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(21, 152, 'WooCommerce', '', '', '', '2017-06-26 13:12:57', '2017-06-26 06:12:57', 'Chờ thanh toán chuyển khoản Trạng thái đơn hàng đã được chuyển từ Pending payment sang On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(22, 153, 'WooCommerce', '', '', '', '2017-06-26 13:40:56', '2017-06-26 06:40:56', 'Chờ thanh toán chuyển khoản Trạng thái đơn hàng đã được chuyển từ Pending payment sang On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(23, 154, 'WooCommerce', '', '', '', '2017-06-26 13:43:19', '2017-06-26 06:43:19', 'Chờ thanh toán chuyển khoản Trạng thái đơn hàng đã được chuyển từ Pending payment sang On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(26, 167, 'WooCommerce', '', '', '', '2017-06-26 20:23:22', '2017-06-26 13:23:22', 'Thực hiện thanh toán khi giao hàng Trạng thái đơn hàng đã được chuyển từ Pending payment sang Đang xử lý.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `plbs_es_deliverreport`
--

CREATE TABLE `plbs_es_deliverreport` (
  `es_deliver_id` int(10) UNSIGNED NOT NULL,
  `es_deliver_sentguid` varchar(255) NOT NULL,
  `es_deliver_emailid` int(10) UNSIGNED NOT NULL,
  `es_deliver_emailmail` varchar(255) NOT NULL,
  `es_deliver_sentdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_deliver_status` varchar(25) NOT NULL,
  `es_deliver_viewdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_deliver_sentstatus` varchar(25) NOT NULL DEFAULT 'Sent',
  `es_deliver_senttype` varchar(25) NOT NULL DEFAULT 'Immediately'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plbs_es_deliverreport`
--

INSERT INTO `plbs_es_deliverreport` (`es_deliver_id`, `es_deliver_sentguid`, `es_deliver_emailid`, `es_deliver_emailmail`, `es_deliver_sentdate`, `es_deliver_status`, `es_deliver_viewdate`, `es_deliver_sentstatus`, `es_deliver_senttype`) VALUES
(1, 'zaexcl-axlwcb-rsdquk-dzukiy-vkjwbf', 1, 'skyfrost.07@gmail.com', '2017-06-28 13:54:58', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately'),
(2, 'zaexcl-axlwcb-rsdquk-dzukiy-vkjwbf', 2, 'a.example@example.com', '2017-06-28 13:54:59', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately'),
(3, 'iavesl-nzrtfk-znejpt-rkyzli-kcwbtv', 1, 'skyfrost.07@gmail.com', '2017-06-28 13:56:26', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately'),
(4, 'iavesl-nzrtfk-znejpt-rkyzli-kcwbtv', 2, 'a.example@example.com', '2017-06-28 13:56:27', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately');

-- --------------------------------------------------------

--
-- Table structure for table `plbs_es_emaillist`
--

CREATE TABLE `plbs_es_emaillist` (
  `es_email_id` int(10) UNSIGNED NOT NULL,
  `es_email_name` varchar(255) NOT NULL,
  `es_email_mail` varchar(255) NOT NULL,
  `es_email_status` varchar(25) NOT NULL DEFAULT 'Unconfirmed',
  `es_email_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_email_viewcount` varchar(100) NOT NULL,
  `es_email_group` varchar(255) NOT NULL DEFAULT 'Public',
  `es_email_guid` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plbs_es_emaillist`
--

INSERT INTO `plbs_es_emaillist` (`es_email_id`, `es_email_name`, `es_email_mail`, `es_email_status`, `es_email_created`, `es_email_viewcount`, `es_email_group`, `es_email_guid`) VALUES
(1, 'Admin', 'skyfrost.07@gmail.com', 'Confirmed', '2017-06-27 17:57:17', '0', 'Public', 'myojkw-rwlvao-opyrvl-btousg-fbqzly'),
(2, 'Example', 'a.example@example.com', 'Confirmed', '2017-06-27 17:57:17', '0', 'Public', 'rsfohd-ylxveu-qdkxbs-hakrib-irybwe'),
(3, 'A van B', 'avanb@gmail.com', 'Unconfirmed', '2017-06-27 18:38:31', '0', 'Public', 'xegmfh-ekrbfx-szbdxa-dmyswi-xbzepm'),
(4, 'dsafd fas', 'dsafsdaf@gmail.com', 'Unconfirmed', '2017-06-27 18:39:50', '0', 'Public', 'zatmfj-tsxipc-vkgeui-feqtva-wgnvjt'),
(5, 'how', 'how@gmail.com', 'Unconfirmed', '2017-06-27 18:46:09', '0', 'Public', 'uldcbh-bjrsia-cebigs-msvzrp-jniyur');

-- --------------------------------------------------------

--
-- Table structure for table `plbs_es_notification`
--

CREATE TABLE `plbs_es_notification` (
  `es_note_id` int(10) UNSIGNED NOT NULL,
  `es_note_cat` text,
  `es_note_group` varchar(255) NOT NULL,
  `es_note_templ` int(10) UNSIGNED NOT NULL,
  `es_note_status` varchar(10) NOT NULL DEFAULT 'Enable'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plbs_es_notification`
--

INSERT INTO `plbs_es_notification` (`es_note_id`, `es_note_cat`, `es_note_group`, `es_note_templ`, `es_note_status`) VALUES
(1, ' ##Apps## -- ##Blog## -- ##Game ứng dụng## -- ##Khuyễn mãi - Giảm giá - Tri ân khách hàng## -- ##Review sản phẩm## -- ##Thủ thuật## -- ##Tin tức công nghệ## -- ##Tin tuyển dụng## -- ##Tuyển dụng## -- ##TV - Videos## ', 'Public', 1, 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `plbs_es_sentdetails`
--

CREATE TABLE `plbs_es_sentdetails` (
  `es_sent_id` int(10) UNSIGNED NOT NULL,
  `es_sent_guid` varchar(255) NOT NULL,
  `es_sent_qstring` varchar(255) NOT NULL,
  `es_sent_source` varchar(255) NOT NULL,
  `es_sent_starttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_sent_endtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_sent_count` int(10) UNSIGNED NOT NULL,
  `es_sent_preview` text,
  `es_sent_status` varchar(25) NOT NULL DEFAULT 'Sent',
  `es_sent_type` varchar(25) NOT NULL DEFAULT 'Immediately',
  `es_sent_subject` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plbs_es_sentdetails`
--

INSERT INTO `plbs_es_sentdetails` (`es_sent_id`, `es_sent_guid`, `es_sent_qstring`, `es_sent_source`, `es_sent_starttime`, `es_sent_endtime`, `es_sent_count`, `es_sent_preview`, `es_sent_status`, `es_sent_type`, `es_sent_subject`) VALUES
(1, 'zaexcl-axlwcb-rsdquk-dzukiy-vkjwbf', '0', 'Newsletter', '2017-06-28 13:54:58', '2017-06-28 13:55:00', 2, '<strong style="color: #990000;"> Email Subscribers</strong><br /><br />Nội dung email<br /><br />&nbsp;<br /><br /><strong>Thanks &amp; Regards</strong><br />Admin', 'Sent', 'Immediately', 'Bản tin khuyễn mãi'),
(2, 'iavesl-nzrtfk-znejpt-rkyzli-kcwbtv', '0', 'Newsletter', '2017-06-28 13:56:26', '2017-06-28 13:56:28', 2, '<strong style="color: #990000;"> Email Subscribers</strong><br /><br />Nội dung email<br /><br />&nbsp;<br /><br /><strong>Thanks &amp; Regards</strong><br />Admin', 'Sent', 'Immediately', 'Bản tin khuyễn mãi');

-- --------------------------------------------------------

--
-- Table structure for table `plbs_es_templatetable`
--

CREATE TABLE `plbs_es_templatetable` (
  `es_templ_id` int(10) UNSIGNED NOT NULL,
  `es_templ_heading` varchar(255) NOT NULL,
  `es_templ_body` text,
  `es_templ_status` varchar(25) NOT NULL DEFAULT 'Published',
  `es_email_type` varchar(100) NOT NULL DEFAULT 'Newsletter'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plbs_es_templatetable`
--

INSERT INTO `plbs_es_templatetable` (`es_templ_id`, `es_templ_heading`, `es_templ_body`, `es_templ_status`, `es_email_type`) VALUES
(1, 'Bài viết mới ###POSTTITLE###', 'Xin chào ###NAME###,\r\n\r\nChúng tôi vừa đăng một bài viết mới trên blog. ###POSTTITLE###\r\n###POSTDESC###\r\nBạn có thể xem bài viết mới nhất tại ###POSTLINK###\r\n\r\nBạn nhận được email này bởi vì bạn đã đăng ký nhận bản tin khi có cập nhật bài viết mới.\r\n\r\nThanks &amp; Regards\r\nAdmin', 'Published', 'Post Notification'),
(2, 'Gửi thông báo ###POSTTITLE###', 'Xin chào ###EMAIL###,\r\n\r\nChúng tôi vừa đăng một bài viết mới trên website. ###POSTTITLE###\r\n###POSTIMAGE###\r\n###POSTFULL###\r\nBạn có thể xem bài viết mới nhất tại  ###POSTLINK###\r\nBạn nhậ được email này bởi vì bạn đã đăng ký nhận bản tin cập nhật của chúng tôi\r\n\r\nThanks &amp; Regards\r\nAdmin', 'Published', 'Post Notification'),
(3, 'Bản tin khuyễn mãi', '<strong style=\\"color: #990000;\\"> Email Subscribers</strong>\r\n\r\nNội dung email\r\n\r\n&nbsp;\r\n\r\n<strong>Thanks &amp; Regards</strong>\r\nAdmin', 'Published', 'Newsletter');

-- --------------------------------------------------------

--
-- Table structure for table `plbs_itsec_lockouts`
--

CREATE TABLE `plbs_itsec_lockouts` (
  `lockout_id` bigint(20) UNSIGNED NOT NULL,
  `lockout_type` varchar(20) COLLATE utf8_general_ci NOT NULL,
  `lockout_start` datetime NOT NULL,
  `lockout_start_gmt` datetime NOT NULL,
  `lockout_expire` datetime NOT NULL,
  `lockout_expire_gmt` datetime NOT NULL,
  `lockout_host` varchar(40) COLLATE utf8_general_ci DEFAULT NULL,
  `lockout_user` bigint(20) UNSIGNED DEFAULT NULL,
  `lockout_username` varchar(60) COLLATE utf8_general_ci DEFAULT NULL,
  `lockout_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plbs_itsec_log`
--

CREATE TABLE `plbs_itsec_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `log_type` varchar(20) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `log_function` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `log_priority` int(2) NOT NULL DEFAULT '1',
  `log_date` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `log_date_gmt` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `log_host` varchar(40) COLLATE utf8_general_ci DEFAULT NULL,
  `log_username` varchar(60) COLLATE utf8_general_ci DEFAULT NULL,
  `log_user` bigint(20) UNSIGNED DEFAULT NULL,
  `log_url` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `log_referrer` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `log_data` longtext COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `plbs_itsec_log`
--

INSERT INTO `plbs_itsec_log` (`log_id`, `log_type`, `log_function`, `log_priority`, `log_date`, `log_date_gmt`, `log_host`, `log_username`, `log_user`, `log_url`, `log_referrer`, `log_data`) VALUES
(3, 'backup', 'Database Backup Executed', 3, '2017-06-30 21:22:12', '2017-06-30 14:22:12', '', '', 0, '', '', 'a:1:{i:0;a:2:{s:6:"status";s:5:"Error";s:7:"details";s:45:"email to backup recipients could not be sent.";}}'),
(2, 'backup', 'Database Backup Executed', 3, '2017-06-30 21:22:08', '2017-06-30 14:22:08', '', '', 0, '', '', 'a:1:{i:0;a:2:{s:6:"status";s:5:"Error";s:7:"details";s:45:"email to backup recipients could not be sent.";}}');

-- --------------------------------------------------------

--
-- Table structure for table `plbs_itsec_temp`
--

CREATE TABLE `plbs_itsec_temp` (
  `temp_id` bigint(20) UNSIGNED NOT NULL,
  `temp_type` varchar(20) COLLATE utf8_general_ci NOT NULL,
  `temp_date` datetime NOT NULL,
  `temp_date_gmt` datetime NOT NULL,
  `temp_host` varchar(40) COLLATE utf8_general_ci DEFAULT NULL,
  `temp_user` bigint(20) UNSIGNED DEFAULT NULL,
  `temp_username` varchar(60) COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plbs_links`
--

CREATE TABLE `plbs_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_general_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_general_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plbs_options`
--

CREATE TABLE `plbs_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_general_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_general_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `plbs_options`
--

INSERT INTO `plbs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/f5mobile', 'yes'),
(2, 'home', 'http://localhost/f5mobile', 'yes'),
(3, 'blogname', 'Shop name', 'yes'),
(4, 'blogdescription', 'Webshop', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'skyfrost.07@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:226:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:19:"sitemap_index\\.xml$";s:19:"index.php?sitemap=1";s:31:"([^/]+?)-sitemap([0-9]+)?\\.xml$";s:51:"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]";s:24:"([a-z]+)?-?sitemap\\.xsl$";s:25:"index.php?xsl=$matches[1]";s:11:"san-pham/?$";s:27:"index.php?post_type=product";s:41:"san-pham/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:36:"san-pham/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:28:"san-pham/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:10:"hoi_dap/?$";s:27:"index.php?post_type=hoi_dap";s:40:"hoi_dap/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=hoi_dap&feed=$matches[1]";s:35:"hoi_dap/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=hoi_dap&feed=$matches[1]";s:27:"hoi_dap/page/([0-9]{1,})/?$";s:45:"index.php?post_type=hoi_dap&paged=$matches[1]";s:49:"chuyen-muc/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:44:"chuyen-muc/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:25:"chuyen-muc/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:37:"chuyen-muc/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:34:"chuyen-muc/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:19:"chuyen-muc/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:47:"danh-muc/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:42:"danh-muc/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:23:"danh-muc/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:35:"danh-muc/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:17:"danh-muc/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:48:"tu-khoa/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:43:"tu-khoa/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:24:"tu-khoa/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:36:"tu-khoa/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:18:"tu-khoa/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:36:"san-pham/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"san-pham/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"san-pham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"san-pham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"san-pham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"san-pham/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"san-pham/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:29:"san-pham/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:49:"san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:44:"san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:37:"san-pham/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:44:"san-pham/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:34:"san-pham/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:40:"san-pham/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:51:"san-pham/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:33:"san-pham/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:25:"san-pham/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"san-pham/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"san-pham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"san-pham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"san-pham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"san-pham/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:58:"phu-kien-san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?phu-kien-san-pham=$matches[1]&feed=$matches[2]";s:53:"phu-kien-san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?phu-kien-san-pham=$matches[1]&feed=$matches[2]";s:34:"phu-kien-san-pham/([^/]+)/embed/?$";s:50:"index.php?phu-kien-san-pham=$matches[1]&embed=true";s:46:"phu-kien-san-pham/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?phu-kien-san-pham=$matches[1]&paged=$matches[2]";s:28:"phu-kien-san-pham/([^/]+)/?$";s:39:"index.php?phu-kien-san-pham=$matches[1]";s:48:"warrant/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?warrant=$matches[1]&feed=$matches[2]";s:43:"warrant/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?warrant=$matches[1]&feed=$matches[2]";s:24:"warrant/([^/]+)/embed/?$";s:40:"index.php?warrant=$matches[1]&embed=true";s:36:"warrant/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?warrant=$matches[1]&paged=$matches[2]";s:18:"warrant/([^/]+)/?$";s:29:"index.php?warrant=$matches[1]";s:50:"muc-hoi-dap/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?muc-hoi-dap=$matches[1]&feed=$matches[2]";s:45:"muc-hoi-dap/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?muc-hoi-dap=$matches[1]&feed=$matches[2]";s:26:"muc-hoi-dap/(.+?)/embed/?$";s:44:"index.php?muc-hoi-dap=$matches[1]&embed=true";s:38:"muc-hoi-dap/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?muc-hoi-dap=$matches[1]&paged=$matches[2]";s:20:"muc-hoi-dap/(.+?)/?$";s:33:"index.php?muc-hoi-dap=$matches[1]";s:32:"slider/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"slider/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"slider/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"slider/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"slider/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"slider/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:21:"slider/(.+?)/embed/?$";s:39:"index.php?slider=$matches[1]&embed=true";s:25:"slider/(.+?)/trackback/?$";s:33:"index.php?slider=$matches[1]&tb=1";s:33:"slider/(.+?)/page/?([0-9]{1,})/?$";s:46:"index.php?slider=$matches[1]&paged=$matches[2]";s:40:"slider/(.+?)/comment-page-([0-9]{1,})/?$";s:46:"index.php?slider=$matches[1]&cpage=$matches[2]";s:30:"slider/(.+?)/wc-api(/(.*))?/?$";s:47:"index.php?slider=$matches[1]&wc-api=$matches[3]";s:36:"slider/.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:47:"slider/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:29:"slider/(.+?)(?:/([0-9]+))?/?$";s:45:"index.php?slider=$matches[1]&page=$matches[2]";s:35:"hoi_dap/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"hoi_dap/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"hoi_dap/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"hoi_dap/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"hoi_dap/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"hoi_dap/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"hoi_dap/([^/]+)/embed/?$";s:40:"index.php?hoi_dap=$matches[1]&embed=true";s:28:"hoi_dap/([^/]+)/trackback/?$";s:34:"index.php?hoi_dap=$matches[1]&tb=1";s:48:"hoi_dap/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?hoi_dap=$matches[1]&feed=$matches[2]";s:43:"hoi_dap/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?hoi_dap=$matches[1]&feed=$matches[2]";s:36:"hoi_dap/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?hoi_dap=$matches[1]&paged=$matches[2]";s:43:"hoi_dap/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?hoi_dap=$matches[1]&cpage=$matches[2]";s:33:"hoi_dap/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?hoi_dap=$matches[1]&wc-api=$matches[3]";s:39:"hoi_dap/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"hoi_dap/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"hoi_dap/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?hoi_dap=$matches[1]&page=$matches[2]";s:24:"hoi_dap/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"hoi_dap/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"hoi_dap/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"hoi_dap/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"hoi_dap/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"hoi_dap/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"chinh-sach/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"chinh-sach/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"chinh-sach/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"chinh-sach/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"chinh-sach/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"chinh-sach/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"chinh-sach/(.+?)/embed/?$";s:43:"index.php?chinh_sach=$matches[1]&embed=true";s:29:"chinh-sach/(.+?)/trackback/?$";s:37:"index.php?chinh_sach=$matches[1]&tb=1";s:37:"chinh-sach/(.+?)/page/?([0-9]{1,})/?$";s:50:"index.php?chinh_sach=$matches[1]&paged=$matches[2]";s:44:"chinh-sach/(.+?)/comment-page-([0-9]{1,})/?$";s:50:"index.php?chinh_sach=$matches[1]&cpage=$matches[2]";s:34:"chinh-sach/(.+?)/wc-api(/(.*))?/?$";s:51:"index.php?chinh_sach=$matches[1]&wc-api=$matches[3]";s:40:"chinh-sach/.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:51:"chinh-sach/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:33:"chinh-sach/(.+?)(?:/([0-9]+))?/?$";s:49:"index.php?chinh_sach=$matches[1]&page=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=28&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:10:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:41:"better-wp-security/better-wp-security.php";i:2;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:3;s:39:"email-subscribers/email-subscribers.php";i:4;s:25:"kk-star-ratings/index.php";i:5;s:25:"option-tree/ot-loader.php";i:6;s:37:"tinymce-advanced/tinymce-advanced.php";i:8;s:27:"woocommerce/woocommerce.php";i:9;s:24:"wordpress-seo/wp-seo.php";i:10;s:40:"yith-woocommerce-zoom-magnifier/init.php";}', 'yes'),
(34, 'category_base', '/chuyen-muc', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '7', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'mytheme', 'yes'),
(41, 'stylesheet', 'mytheme', 'yes'),
(42, 'comment_whitelist', '', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '/tag', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '80', 'yes'),
(59, 'thumbnail_size_h', '80', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '0', 'yes'),
(62, 'medium_size_h', '0', 'yes'),
(63, 'avatar_default', 'wavatar', 'yes'),
(64, 'large_size_w', '0', 'yes'),
(65, 'large_size_h', '0', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '2', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '20', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:41:"better-wp-security/better-wp-security.php";a:2:{i:0;s:10:"ITSEC_Core";i:1;s:16:"handle_uninstall";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(84, 'page_on_front', '28', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'plbs_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:132:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:12:"Khách hàng";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'vi', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:5:{s:15:"sidebar-widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:7:"sidebar";a:0:{}s:19:"wp_inactive_widgets";a:0:{}s:9:"subscribe";a:1:{i:0;s:19:"email-subscribers-3";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'cron', 'a:10:{i:1498842000;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1498844337;a:2:{s:16:"itsec_purge_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:20:"itsec_purge_lockouts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1498845594;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1498847412;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1498876927;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1498888943;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1498920127;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1498980882;a:1:{s:18:"wpseo_onpage_fetch";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1499126400;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(106, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1497372259;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(117, '_site_transient_timeout_browser_1cfcb7a4fecd9fc9dc40638091e2ac25', '1497938531', 'no'),
(118, '_site_transient_browser_1cfcb7a4fecd9fc9dc40638091e2ac25', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"58.0.3029.110";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(119, 'can_compress_scripts', '1', 'no'),
(132, '_transient_timeout_plugin_slugs', '1498921830', 'no'),
(133, '_transient_plugin_slugs', 'a:15:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:3;s:39:"email-subscribers/email-subscribers.php";i:4;s:45:"ewww-image-optimizer/ewww-image-optimizer.php";i:5;s:9:"hello.php";i:6;s:41:"better-wp-security/better-wp-security.php";i:7;s:25:"kk-star-ratings/index.php";i:8;s:25:"option-tree/ot-loader.php";i:9;s:37:"tinymce-advanced/tinymce-advanced.php";i:10;s:33:"w3-total-cache/w3-total-cache.php";i:11;s:27:"woocommerce/woocommerce.php";i:12;s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";i:13;s:40:"yith-woocommerce-zoom-magnifier/init.php";i:14;s:24:"wordpress-seo/wp-seo.php";}', 'no'),
(137, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(138, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(139, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(143, '_site_transient_timeout_wordpress_credits_vi', '1497420194', 'no');
INSERT INTO `plbs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(144, '_site_transient_wordpress_credits_vi', 'a:2:{s:6:"groups";a:8:{s:15:"project-leaders";a:4:{s:4:"name";s:15:"Project Leaders";s:4:"type";s:6:"titles";s:7:"shuffle";b:1;s:4:"data";a:6:{s:4:"matt";a:4:{i:0;s:14:"Matt Mullenweg";i:1;s:32:"767fc9c115a1b989744c755db47feb60";i:2;s:4:"matt";i:3;s:12:"Release Lead";}s:5:"nacin";a:4:{i:0;s:12:"Andrew Nacin";i:1;s:32:"01cfe9feaafb068590891bbd1f6a7f5a";i:2;s:5:"nacin";i:3;s:14:"Lead Developer";}s:11:"markjaquith";a:4:{i:0;s:12:"Mark Jaquith";i:1;s:32:"097a87a525e317519b5ee124820012fb";i:2;s:11:"markjaquith";i:3;s:14:"Lead Developer";}s:6:"azaozz";a:4:{i:0;s:10:"Andrew Ozz";i:1;s:32:"4e84843ebff0918d72ade21c6ee7b1e4";i:2;s:6:"azaozz";i:3;s:14:"Lead Developer";}s:5:"helen";a:4:{i:0;s:16:"Helen Hou-Sandí";i:1;s:32:"6506162ada6b700b151ad8a187f65842";i:2;s:5:"helen";i:3;s:14:"Lead Developer";}s:4:"dd32";a:4:{i:0;s:10:"Dion Hulse";i:1;s:32:"4af2825655b46fb1206b08d9041d8e3e";i:2;s:4:"dd32";i:3;s:14:"Lead Developer";}}}s:15:"core-developers";a:4:{s:4:"name";s:23:"Contributing Developers";s:4:"type";s:6:"titles";s:7:"shuffle";b:0;s:4:"data";a:21:{s:8:"jbpaul17";a:4:{i:0;s:9:"Jeff Paul";i:1;s:32:"8ac4ec4b1f9cb342e59ed5127f050d24";i:2;s:8:"jbpaul17";i:3;s:14:"Release Deputy";}s:13:"aaroncampbell";a:4:{i:0;s:17:"Aaron D. Campbell";i:1;s:32:"f27b79eb04eb414c4c1fc98375fe7404";i:2;s:13:"aaroncampbell";i:3;s:14:"Core Developer";}s:6:"jorbin";a:4:{i:0;s:12:"Aaron Jorbin";i:1;s:32:"b3e2b94eb305bf95a1bee11bc7705fb7";i:2;s:6:"jorbin";i:3;s:14:"Core Developer";}s:7:"afercia";a:4:{i:0;s:13:"Andrea Fercia";i:1;s:32:"074af62ea5ff218b6a6eeab89104f616";i:2;s:7:"afercia";i:3;s:14:"Core Developer";}s:12:"boonebgorges";a:4:{i:0;s:15:"Boone B. Gorges";i:1;s:32:"9cf7c4541a582729a5fc7ae484786c0c";i:2;s:12:"boonebgorges";i:3;s:14:"Core Developer";}s:7:"ocean90";a:4:{i:0;s:17:"Dominik Schilling";i:1;s:32:"616b56a9c5898a427304425af0966c07";i:2;s:7:"ocean90";i:3;s:14:"Core Developer";}s:12:"DrewAPicture";a:4:{i:0;s:11:"Drew Jaynes";i:1;s:32:"95c934fa2c3362794bf62ff8c59ada08";i:2;s:12:"DrewAPicture";i:3;s:14:"Core Developer";}s:7:"iseulde";a:4:{i:0;s:22:"Ella Iseulde Van Dorpe";i:1;s:32:"1a847a68778b8344b6aa106a8861984f";i:2;s:7:"iseulde";i:3;s:14:"Core Developer";}s:5:"pento";a:4:{i:0;s:15:"Gary Pendergast";i:1;s:32:"1ad9e5c98d81c6815a65dab5b6e1f669";i:2;s:5:"pento";i:3;s:14:"Core Developer";}s:10:"jeremyfelt";a:4:{i:0;s:11:"Jeremy Felt";i:1;s:32:"d1759b1c669981b7c52ec9a97d19e6bd";i:2;s:10:"jeremyfelt";i:3;s:14:"Core Developer";}s:9:"joemcgill";a:4:{i:0;s:10:"Joe McGill";i:1;s:32:"7cef1c9108207ec24db7a40f142db676";i:2;s:9:"joemcgill";i:3;s:14:"Core Developer";}s:11:"johnbillion";a:4:{i:0;s:15:"John Blackbourn";i:1;s:32:"23e12888dcd87d07434b7621bc164958";i:2;s:11:"johnbillion";i:3;s:14:"Core Developer";}s:12:"mikeschroder";a:4:{i:0;s:13:"Mike Schroder";i:1;s:32:"76424a001dc6b3ebb4faca0c567800c4";i:2;s:12:"mikeschroder";i:3;s:14:"Core Developer";}s:10:"swissspidy";a:4:{i:0;s:15:"Pascal Birchler";i:1;s:32:"609d6ee54dc13a51270cb99769535b82";i:2;s:10:"swissspidy";i:3;s:14:"Core Developer";}s:11:"rachelbaker";a:4:{i:0;s:12:"Rachel Baker";i:1;s:32:"634b37a53babc18a5bda19722d5b41a3";i:2;s:11:"rachelbaker";i:3;s:14:"Core Developer";}s:14:"wonderboymusic";a:4:{i:0;s:12:"Scott Taylor";i:1;s:32:"112ca15732a80bb928c52caec9d2c8dd";i:2;s:14:"wonderboymusic";i:3;s:14:"Core Developer";}s:14:"SergeyBiryukov";a:4:{i:0;s:15:"Sergey Biryukov";i:1;s:32:"750b7b0fcd855389264c2b1294d61bd6";i:2;s:14:"SergeyBiryukov";i:3;s:14:"Core Developer";}s:11:"westonruter";a:4:{i:0;s:12:"Weston Ruter";i:1;s:32:"22ed378fbf1d918ef43a45b2a1f34634";i:2;s:11:"westonruter";i:3;s:14:"Core Developer";}s:13:"davidakennedy";a:4:{i:0;s:16:"David A. Kennedy";i:1;s:32:"219860d3117df777c48f475d25e24fdd";i:2;s:13:"davidakennedy";i:3;s:0:"";}s:8:"flixos90";a:4:{i:0;s:11:"Felix Arntz";i:1;s:32:"55035b4301c3710ff0fc65d7231af18d";i:2;s:8:"flixos90";i:3;s:0:"";}s:9:"melchoyce";a:4:{i:0;s:10:"Mel Choyce";i:1;s:32:"ed4f856405e64c1492839d2bf4913baa";i:2;s:9:"melchoyce";i:3;s:0:"";}}}s:23:"contributing-developers";a:4:{s:4:"name";b:0;s:4:"type";s:6:"titles";s:7:"shuffle";b:1;s:4:"data";a:13:{s:8:"obenland";a:4:{i:0;s:19:"Konstantin Obenland";i:1;s:32:"2370ea5912750f4cb0f3c51ae1cbca55";i:2;s:8:"obenland";i:3;s:0:"";}s:6:"rmccue";a:4:{i:0;s:10:"Ryan McCue";i:1;s:32:"08818120f223035a0857c2a0ec417f93";i:2;s:6:"rmccue";i:3;s:0:"";}s:10:"karmatosed";a:4:{i:0;s:13:"Tammie Lister";i:1;s:32:"ca7d4273a689cdbf524d8332771bb1ca";i:2;s:10:"karmatosed";i:3;s:0:"";}s:8:"joehoyle";a:4:{i:0;s:9:"Joe Hoyle";i:1;s:32:"0ceb885cc3d306af93c9764b2936d618";i:2;s:8:"joehoyle";i:3;s:0:"";}s:9:"ericlewis";a:4:{i:0;s:17:"Eric Andrew Lewis";i:1;s:32:"7e524cf1c5e8d108658899a497dc4bd4";i:2;s:9:"ericlewis";i:3;s:0:"";}s:13:"peterwilsoncc";a:4:{i:0;s:12:"Peter Wilson";i:1;s:32:"1dd9fded718f9b344d48f37f9bfcb159";i:2;s:13:"peterwilsoncc";i:3;s:0:"";}s:9:"kovshenin";a:4:{i:0;s:20:"Konstantin Kovshenin";i:1;s:32:"8585b20b69e8ff4b0ba737accfdbb31b";i:2;s:9:"kovshenin";i:3;s:0:"";}s:14:"michaelarestad";a:4:{i:0;s:15:"Michael Arestad";i:1;s:32:"e8b4c8470f61ff15b9c98f7a1556c16b";i:2;s:14:"michaelarestad";i:3;s:0:"";}s:15:"adamsilverstein";a:4:{i:0;s:16:"Adam Silverstein";i:1;s:32:"fddbd6c3e1c3d971aa732b9346aeb433";i:2;s:15:"adamsilverstein";i:3;s:0:"";}s:7:"jnylen0";a:4:{i:0;s:11:"James Nylen";i:1;s:32:"0c4d46844039ba935f69208615e9010c";i:2;s:7:"jnylen0";i:3;s:0:"";}s:10:"kadamwhite";a:4:{i:0;s:12:"K.Adam White";i:1;s:32:"6cd1cf6de05952505a165425efaf06b4";i:2;s:10:"kadamwhite";i:3;s:0:"";}s:4:"Joen";a:4:{i:0;s:13:"Joen Asmussen";i:1;s:32:"7fda1da9c34e978d5990afd7f58ca0f4";i:2;s:4:"Joen";i:3;s:0:"";}s:6:"matveb";a:4:{i:0;s:14:"Matias Ventura";i:1;s:32:"3f8389957d0c59bb0bd5433e86b53a19";i:2;s:6:"matveb";i:3;s:0:"";}}}s:16:"recent-rockstars";a:4:{s:4:"name";b:0;s:4:"type";s:6:"titles";s:7:"shuffle";b:1;s:4:"data";a:0:{}}s:5:"props";a:4:{s:4:"name";s:33:"Core Contributors to WordPress %s";s:12:"placeholders";a:1:{i:0;s:3:"4.8";}s:4:"type";s:4:"list";s:4:"data";a:309:{s:11:"1naveengiri";s:11:"1naveengiri";s:9:"4nickpick";s:9:"4nickpick";s:8:"abhishek";s:8:"abhishek";s:11:"abhishekfdd";s:14:"Abhishek Kumar";s:6:"abrain";s:6:"abrain";s:7:"kawauso";s:21:"Adam Harley (Kawauso)";s:10:"adamsoucie";s:11:"Adam Soucie";s:12:"afzalmultani";s:13:"Afzal Multani";s:12:"mrahmadawais";s:11:"Ahmad Awais";s:5:"ajoah";s:5:"ajoah";s:6:"xknown";s:11:"Alex Concha";s:10:"apmarshall";s:19:"Alex Floyd Marshall";s:11:"alexkingorg";s:9:"Alex King";s:10:"tellyworth";s:11:"Alex Shiels";s:15:"andreamiddleton";s:16:"Andrea Middleton";s:10:"rockwell15";s:15:"Andrew Rockwell";s:8:"kelderic";s:11:"Andy Mercer";s:13:"ankit-k-gupta";s:13:"Ankit K Gupta";s:7:"arena94";s:7:"arena94";s:10:"arshidkv12";s:6:"Arshid";s:9:"aryamaaru";s:4:"Arun";s:6:"asalce";s:6:"asalce";s:12:"ashokkumar24";s:12:"ashokkumar24";s:11:"barryceelen";s:12:"Barry Ceelen";s:7:"bcworkz";s:7:"bcworkz";s:15:"bharatkambariya";s:16:"Bharat Kambariya";s:9:"blobfolio";s:9:"Blobfolio";s:7:"gitlost";s:6:"bonger";s:4:"bor0";s:16:"Boro Sitnikovski";s:5:"bradt";s:14:"Brad Touesnard";s:12:"bradyvercher";s:13:"Brady Vercher";s:7:"kraftbj";s:13:"Brandon Kraft";s:10:"drrobotnik";s:15:"Brandon Lavigne";s:14:"bridgetwillard";s:15:"Bridget Willard";s:17:"bhargavbhandari90";s:5:"Bunty";s:8:"camikaos";s:9:"Cami Kaos";s:12:"carl-alberto";s:12:"Carl Alberto";s:20:"caseypatrickdriscoll";s:14:"Casey Driscoll";s:4:"cazm";s:4:"cazm";s:6:"ccprog";s:6:"ccprog";s:12:"chandrapatel";s:13:"Chandra Patel";s:6:"chesio";s:6:"chesio";s:10:"ketuchetan";s:14:"chetansatasiya";s:11:"chiragpatel";s:12:"Chirag Patel";s:6:"chouby";s:6:"Chouby";s:12:"chriseverson";s:12:"chriseverson";s:8:"cklosows";s:15:"Chris Klosowski";s:9:"chris_dev";s:9:"Chris Mok";s:13:"christian1012";s:15:"Christian Chung";s:12:"coreymckrill";s:13:"Corey McKrill";s:10:"courtneypk";s:13:"Courtney P.K.";s:14:"cristianozanca";s:15:"Cristiano Zanca";s:8:"csloisel";s:8:"csloisel";s:6:"curdin";s:19:"Curdin Krummenacher";s:12:"clarinetlord";s:13:"Cyrus Collier";s:15:"danielbachhuber";s:16:"Daniel Bachhuber";s:5:"mte90";s:21:"Daniele Scasciafratte";s:9:"diddledan";s:16:"Daniel Llewellyn";s:6:"nerrad";s:22:"Darren Ethier (nerrad)";s:9:"darshan02";s:10:"Darshan_dj";s:8:"darthaud";s:8:"darthaud";s:4:"dllh";s:26:"Daryl L. L. Houston (dllh)";s:13:"davidanderson";s:14:"David Anderson";s:11:"davidbenton";s:11:"davidbenton";s:10:"davidbinda";s:13:"David Binovec";s:3:"dlh";s:13:"David Herrera";s:8:"dshanske";s:13:"David Shanske";s:12:"designsimply";s:12:"designsimply";s:10:"dhanendran";s:10:"Dhanendran";s:9:"dharm1025";s:14:"Dharmesh Patel";s:13:"dhaval-parekh";s:13:"Dhaval Parekh";s:13:"dingo_bastard";s:7:"dingo-d";s:10:"dotancohen";s:11:"Dotan Cohen";s:9:"doublehhh";s:7:"DoubleH";s:9:"dreamon11";s:9:"DreamOn11";s:12:"drivingralle";s:12:"Drivingralle";s:7:"dspilka";s:7:"dspilka";s:10:"chopinbach";s:13:"Edwin Cromley";s:7:"ejner69";s:11:"Ejner Galaz";s:10:"emirpprime";s:10:"emirpprime";s:8:"ethitter";s:12:"Erick Hitter";s:11:"endif-media";s:11:"Ethan Allen";s:6:"fab1en";s:17:"Fabien Quatravaux";s:11:"fibonaccina";s:11:"fibonaccina";s:9:"mista-flo";s:12:"Florian TIAR";s:8:"francina";s:16:"Francesca Marano";s:7:"fstaude";s:20:"Frank Neumann-Staude";s:10:"f-j-kaiser";s:18:"Franz Josef Kaiser";s:6:"gma992";s:17:"Gabriel Maldonado";s:14:"voldemortensen";s:15:"Garth Mortensen";s:7:"garyc40";s:8:"Gary Cao";s:10:"soulseekah";s:17:"Gennady Kovshenin";s:15:"georgestephanis";s:16:"George Stephanis";s:10:"ghosttoast";s:19:"Gustave F. Gerhardt";s:10:"hedgefield";s:10:"hedgefield";s:14:"helgatheviking";s:14:"helgatheviking";s:9:"hristo-sg";s:16:"Hristo Pandjarov";s:7:"iandunn";s:8:"Ian Dunn";s:7:"zinigor";s:13:"Igor Zinovyev";s:17:"ig_communitysites";s:17:"ig_communitysites";s:5:"imath";s:5:"imath";s:7:"ipstenu";s:22:"Ipstenu (Mika Epstein)";s:10:"ireneyoast";s:10:"ireneyoast";s:9:"iv3rson76";s:13:"Ivan Stefanov";s:9:"ivantedja";s:9:"ivantedja";s:8:"jdgrimes";s:11:"J.D. Grimes";s:12:"jackreichert";s:13:"Jack Reichert";s:9:"whyisjake";s:13:"Jake Spurlock";s:12:"jaydeep-rami";s:12:"Jaydeep Rami";s:6:"jazbek";s:6:"jazbek";s:4:"jblz";s:10:"Jeff Bowen";s:11:"jfarthing84";s:13:"Jeff Farthing";s:9:"cheffheid";s:14:"Jeffrey de Wit";s:10:"jenblogs4u";s:10:"Jen Miller";s:4:"jpry";s:10:"Jeremy Pry";s:16:"jesseenterprises";s:16:"jesseenterprises";s:14:"jigneshnakrani";s:15:"Jignesh Nakrani";s:8:"jipmoors";s:9:"Jip Moors";s:8:"jjcomack";s:8:"jjcomack";s:9:"joedolson";s:10:"Joe Dolson";s:15:"johnjamesjacoby";s:17:"John James Jacoby";s:7:"desrosj";s:19:"Jonathan Desrosiers";s:12:"spacedmonkey";s:12:"Jonny Harris";s:11:"joostdevalk";s:13:"Joost de Valk";s:12:"chanthaboune";s:7:"Josepha";s:7:"shelob9";s:12:"Josh Pollock";s:6:"juhise";s:11:"Juhi Saxena";s:9:"kopepasah";s:16:"Justin Kopepasah";s:14:"certainstrings";s:13:"Justin Tucker";s:6:"kafleg";s:6:"kafleg";s:7:"trepmal";s:16:"Kailey (trepmal)";s:8:"karinedo";s:8:"karinedo";s:7:"zoonini";s:7:"Kathryn";s:7:"kaushik";s:7:"kaushik";s:12:"kkoppenhaver";s:18:"Keanan Koppenhaver";s:12:"keesiemeijer";s:12:"keesiemeijer";s:6:"ryelle";s:10:"Kelly Dwan";s:7:"ixkaito";s:4:"Kite";s:6:"kjellr";s:6:"kjellr";s:7:"kostasx";s:7:"kostasx";s:11:"kubik-rubik";s:11:"kubik-rubik";s:6:"kuck1u";s:6:"KUCKLU";s:12:"lancewillett";s:13:"Lance Willett";s:13:"laurelfulford";s:13:"laurelfulford";s:6:"leemon";s:6:"leemon";s:11:"leewillis77";s:10:"Lee Willis";s:11:"lewiscowles";s:11:"LewisCowles";s:12:"liammcarthur";s:12:"LiamMcArthur";s:10:"lucasstark";s:11:"Lucas Stark";s:10:"lukasbesch";s:10:"lukasbesch";s:12:"lukecavanagh";s:13:"Luke Cavanagh";s:12:"maedahbatool";s:13:"Maedah Batool";s:5:"mp518";s:16:"Mahesh Prajapati";s:12:"mantismamita";s:12:"mantismamita";s:5:"tyxla";s:14:"Marin Atanasov";s:7:"maguiar";s:12:"Mario Aguiar";s:12:"markoheijnen";s:13:"Marko Heijnen";s:6:"mrwweb";s:15:"Mark Root-Wiley";s:4:"mapk";s:11:"Mark Uraine";s:14:"matheusgimenez";s:14:"MatheusGimenez";s:9:"matheusfd";s:15:"Matheus Martins";s:11:"mathieuhays";s:11:"mathieuhays";s:6:"matias";s:6:"matias";s:7:"mboynes";s:14:"Matthew Boynes";s:7:"mattheu";s:20:"Matthew Haines-Young";s:9:"mattwiebe";s:10:"Matt Wiebe";s:8:"mattyrob";s:8:"mattyrob";s:11:"maximeculea";s:12:"Maxime Culea";s:9:"mayukojpn";s:13:"Mayo Moriyama";s:6:"mayurk";s:14:"Mayur Keshwani";s:7:"menakas";s:9:"Menaka S.";s:11:"michalzuber";s:11:"michalzuber";s:13:"michelleweber";s:13:"michelleweber";s:6:"stubgo";s:10:"Miina Sikk";s:7:"mihai2u";s:12:"Mike Crantea";s:12:"mikehansenme";s:11:"Mike Hansen";s:10:"mikejolley";s:11:"Mike Jolley";s:10:"mikelittle";s:11:"Mike Little";s:8:"mnelson4";s:11:"Mike Nelson";s:7:"dimadin";s:12:"Milan Dinić";s:12:"milindmore22";s:11:"Milind More";s:11:"mitraval192";s:12:"Mithun Raval";s:11:"mmdeveloper";s:11:"MMDeveloper";s:6:"batmoo";s:15:"Mohammad Jangda";s:9:"mohanjith";s:9:"mohanjith";s:9:"monikarao";s:9:"monikarao";s:11:"morganestes";s:12:"Morgan Estes";s:6:"mt8biz";s:22:"moto hachi ( mt8.biz )";s:11:"mrgregwaugh";s:11:"MrGregWaugh";s:9:"mschadegg";s:9:"mschadegg";s:9:"codegeass";s:15:"Muhammet Arslan";s:4:"dots";s:9:"MULTIDOTS";s:3:"nao";s:12:"Naoko Takano";s:10:"naomicbush";s:13:"Naomi C. Bush";s:9:"natereist";s:10:"Nate Reist";s:13:"greatislander";s:13:"Ned Zimmerman";s:16:"celloexpressions";s:11:"Nick Halsey";s:10:"nikschavan";s:13:"Nikhil Chavan";s:14:"nitin-kevadiya";s:14:"Nitin Kevadiya";s:13:"kailanitish90";s:12:"Nitish Kaila";s:11:"nobremarcos";s:11:"nobremarcos";s:9:"nosegraze";s:9:"NoseGraze";s:9:"nsundberg";s:9:"nsundberg";s:12:"nullvariable";s:12:"nullvariable";s:11:"odysseygate";s:7:"odyssey";s:8:"iaaxpage";s:13:"page-carbajal";s:7:"pbearne";s:11:"Paul Bearne";s:6:"pbiron";s:10:"Paul Biron";s:13:"pauldewouters";s:15:"Paul de Wouters";s:9:"figureone";s:9:"Paul Ryan";s:9:"pavelevap";s:9:"pavelevap";s:10:"sirbrillig";s:12:"Payton Swick";s:7:"pdufour";s:7:"pdufour";s:5:"piewp";s:7:"Perdaan";s:10:"philipjohn";s:11:"Philip John";s:8:"delawski";s:14:"Piotr Delawski";s:7:"psoluch";s:12:"Piotr Soluch";s:14:"postpostmodern";s:14:"postpostmodern";s:12:"pranalipatel";s:13:"Pranali Patel";s:14:"pratikshrestha";s:15:"Pratik Shrestha";s:9:"presskopp";s:9:"Presskopp";s:12:"printsachen1";s:12:"printsachen1";s:17:"priyankabehera155";s:15:"Priyanka Behera";s:6:"prosti";s:6:"prosti";s:7:"ptbello";s:7:"ptbello";s:10:"rafaehlers";s:13:"Rafael Ehlers";s:12:"raggedrobins";s:12:"raggedrobins";s:8:"raisonon";s:8:"raisonon";s:11:"ramiabraham";s:11:"ramiabraham";s:5:"ramiy";s:14:"Rami Yushuvaev";s:4:"ranh";s:4:"ranh";s:9:"rclations";s:10:"RC Lations";s:10:"redrambles";s:10:"redrambles";s:8:"reidbusi";s:8:"reidbusi";s:6:"reldev";s:6:"reldev";s:7:"rellect";s:7:"rellect";s:5:"arena";s:6:"RENAUT";s:7:"rensw90";s:7:"rensw90";s:12:"reportermike";s:12:"reportermike";s:12:"rianrietveld";s:13:"Rian Rietveld";s:12:"riddhiehta02";s:12:"Riddhi Mehta";s:12:"aussieguy123";s:13:"Robbie Cahill";s:12:"sanchothefat";s:15:"Robert O\'Rourke";s:14:"littlerchicken";s:13:"Robin Cornett";s:9:"runciters";s:9:"runciters";s:4:"ryan";s:10:"Ryan Boren";s:7:"welcher";s:12:"Ryan Welcher";s:11:"sagarjadhav";s:12:"Sagar Jadhav";s:11:"sagarkbhatt";s:11:"sagarkbhatt";s:14:"sagarprajapati";s:15:"Sagar Prajapati";s:7:"salcode";s:14:"Sal Ferrarello";s:15:"samantha-miller";s:15:"Samantha Miller";s:12:"samikeijonen";s:13:"Sami Keijonen";s:12:"samuelsidler";s:13:"Samuel Sidler";s:12:"sanketparmar";s:13:"Sanket Parmar";s:11:"sathyapulse";s:11:"sathyapulse";s:9:"sboisvert";s:9:"sboisvert";s:11:"coffee2code";s:12:"Scott Reilly";s:10:"seanchayes";s:10:"Sean Hayes";s:15:"sebastianpisula";s:16:"Sebastian Pisula";s:4:"sfpt";s:4:"sfpt";s:8:"sgolemon";s:8:"sgolemon";s:7:"shadyvb";s:12:"Shady Sharaf";s:6:"shanee";s:6:"shanee";s:14:"shashwatmittal";s:15:"Shashwat Mittal";s:18:"shazahm1hotmailcom";s:8:"shazahm1";s:7:"shulard";s:7:"shulard";s:6:"slbmeh";s:6:"slbmeh";s:5:"soean";s:11:"Soren Wrede";s:8:"sstoqnov";s:17:"Stanimir Stoyanov";s:8:"stephdau";s:25:"Stephane Daury (stephdau)";s:6:"netweb";s:13:"Stephen Edgar";s:13:"stephenharris";s:14:"Stephen Harris";s:11:"stevenkword";s:11:"Steven Word";s:13:"stormrockwell";s:14:"Storm Rockwell";s:5:"sudar";s:11:"Sudar Muthu";s:10:"supercoder";s:10:"Supercoder";s:4:"cybr";s:13:"Sybre Waaijer";s:8:"szaqal21";s:8:"szaqal21";s:6:"gonom9";s:6:"taggon";s:8:"miyauchi";s:17:"Takayuki Miyauchi";s:12:"takayukister";s:16:"Takayuki Miyoshi";s:14:"technopolitica";s:14:"technopolitica";s:8:"teinertb";s:8:"teinertb";s:9:"tejas5989";s:9:"tejas5989";s:7:"terwdan";s:7:"terwdan";s:12:"tharsheblows";s:12:"tharsheblows";s:8:"themiked";s:8:"theMikeD";s:9:"thepelkus";s:9:"thepelkus";s:8:"tfrommen";s:16:"Thorsten Frommen";s:14:"timmydcrawford";s:14:"Timmy Crawford";s:17:"timothyblynjacobs";s:14:"Timothy Jacobs";s:5:"timph";s:5:"timph";s:8:"tmatsuur";s:8:"tmatsuur";s:6:"tomdxw";s:6:"tomdxw";s:13:"topher1kenobe";s:6:"Topher";s:7:"wpsmith";s:12:"Travis Smith";s:14:"triplejumper12";s:14:"triplejumper12";s:8:"truongwp";s:8:"truongwp";s:6:"tymvie";s:6:"tymvie";s:14:"grapplerulrich";s:6:"Ulrich";s:12:"utkarshpatel";s:7:"Utkarsh";s:13:"vaishuagola27";s:14:"vaishu.agola27";s:8:"vijustin";s:8:"vijustin";s:6:"vortfu";s:6:"vortfu";s:4:"wpfo";s:4:"wpfo";s:4:"xrmx";s:4:"xrmx";s:5:"ze3kr";s:5:"ze3kr";s:6:"h3llas";s:12:"Zeljko Ascic";}}s:10:"validators";a:4:{s:4:"name";s:11:"Translators";s:4:"type";s:7:"compact";s:7:"shuffle";b:1;s:4:"data";a:8:{s:6:"rilwis";a:3:{i:0;s:8:"Anh Tran";i:1;s:32:"2e74a69db53e6992ac62944100d5309f";i:2;s:6:"rilwis";}s:5:"htdat";a:3:{i:0;s:9:"Dat Hoang";i:1;s:32:"13dcfc284d916a2bfc735bf521943ed2";i:2;s:5:"htdat";}s:10:"dinhtungdu";a:3:{i:0;s:10:"dinhtungdu";i:1;s:32:"256a636b71ef62a4a25b675e7df193cb";i:2;s:10:"dinhtungdu";}s:10:"huynetbase";a:3:{i:0;s:10:"huynetbase";i:1;s:32:"0ad158f76567fab398480c8645f7505f";i:2;s:10:"huynetbase";}s:11:"thachpham92";a:3:{i:0;s:10:"Peter Pham";i:1;s:32:"7946a77f96c665fd1456bc39814711a3";i:2;s:11:"thachpham92";}s:17:"philiparthurmoore";a:3:{i:0;s:19:"Philip Arthur Moore";i:1;s:32:"575b9511eb725e354e03ede7123fac4f";i:2;s:17:"philiparthurmoore";}s:9:"tonybui-1";a:3:{i:0;s:15:"Tony WooRockets";i:1;s:32:"c9f8cb6da18358d57e26f90cb0440cf9";i:2;s:9:"tonybui-1";}s:4:"tucq";a:3:{i:0;s:4:"tucq";i:1;s:32:"547f6e8d42c67dbabe796a5162acd53e";i:2;s:4:"tucq";}}}s:11:"translators";a:3:{s:4:"name";b:0;s:4:"type";s:4:"list";s:4:"data";a:22:{s:13:"dinhquochan96";s:13:"dinhquochan96";s:10:"hoangvusk4";s:10:"hoangvusk4";s:10:"kenboy2304";s:10:"kenboy2304";s:7:"khoipro";s:11:"Khoi Nguyen";s:7:"kuldokk";s:7:"kuldokk";s:9:"ledoannam";s:9:"ledoannam";s:9:"levantoan";s:11:"Le Van Toan";s:6:"luanvn";s:6:"luanvn";s:6:"tutv95";s:7:"Max Min";s:8:"minhhieu";s:8:"minhhieu";s:15:"nguyenvanduocit";s:15:"Nguyen Van Duoc";s:6:"nhattn";s:6:"nhattn";s:9:"nhumanh79";s:9:"nhumanh79";s:10:"ntnhan0605";s:10:"ntnhan0605";s:5:"petya";s:15:"Petya Raykovska";s:7:"sondoha";s:6:"Son Do";s:14:"tatthiennguyen";s:16:"Thien Nguyen Tat";s:9:"thinhbg59";s:9:"thinhbg59";s:13:"tranhoangquoc";s:13:"TranHoangQuoc";s:5:"nmt90";s:10:"Triet Minh";s:8:"truongwp";s:8:"truongwp";s:9:"zou272937";s:9:"zou272937";}}s:9:"libraries";a:3:{s:4:"name";s:18:"External Libraries";s:4:"type";s:9:"libraries";s:4:"data";a:32:{i:0;a:2:{i:0;s:11:"Backbone.js";i:1;s:22:"http://backbonejs.org/";}i:1;a:2:{i:0;s:10:"Class POP3";i:1;s:25:"https://squirrelmail.org/";}i:2;a:2:{i:0;s:16:"Color Animations";i:1;s:33:"https://plugins.jquery.com/color/";}i:3;a:2:{i:0;s:8:"getID3()";i:1;s:30:"http://getid3.sourceforge.net/";}i:4;a:2:{i:0;s:15:"Horde Text Diff";i:1;s:23:"https://pear.horde.org/";}i:5;a:2:{i:0;s:11:"hoverIntent";i:1;s:57:"http://cherne.net/brian/resources/jquery.hoverIntent.html";}i:6;a:2:{i:0;s:13:"imgAreaSelect";i:1;s:42:"http://odyniec.net/projects/imgareaselect/";}i:7;a:2:{i:0;s:4:"Iris";i:1;s:34:"https://github.com/Automattic/Iris";}i:8;a:2:{i:0;s:6:"jQuery";i:1;s:19:"https://jquery.com/";}i:9;a:2:{i:0;s:9:"jQuery UI";i:1;s:21:"https://jqueryui.com/";}i:10;a:2:{i:0;s:14:"jQuery Hotkeys";i:1;s:41:"https://github.com/tzuryby/jquery.hotkeys";}i:11;a:2:{i:0;s:22:"jQuery serializeObject";i:1;s:49:"http://benalman.com/projects/jquery-misc-plugins/";}i:12;a:2:{i:0;s:12:"jQuery.query";i:1;s:40:"https://plugins.jquery.com/query-object/";}i:13;a:2:{i:0;s:14:"jQuery.suggest";i:1;s:43:"https://github.com/pvulgaris/jquery.suggest";}i:14;a:2:{i:0;s:21:"jQuery UI Touch Punch";i:1;s:27:"http://touchpunch.furf.com/";}i:15;a:2:{i:0;s:5:"json2";i:1;s:43:"https://github.com/douglascrockford/JSON-js";}i:16;a:2:{i:0;s:7:"Masonry";i:1;s:28:"http://masonry.desandro.com/";}i:17;a:2:{i:0;s:15:"MediaElement.js";i:1;s:26:"http://mediaelementjs.com/";}i:18;a:2:{i:0;s:6:"PclZip";i:1;s:33:"http://www.phpconcept.net/pclzip/";}i:19;a:2:{i:0;s:6:"PemFTP";i:1;s:71:"https://www.phpclasses.org/package/1743-PHP-FTP-client-in-pure-PHP.html";}i:20;a:2:{i:0;s:6:"phpass";i:1;s:31:"http://www.openwall.com/phpass/";}i:21;a:2:{i:0;s:9:"PHPMailer";i:1;s:38:"https://github.com/PHPMailer/PHPMailer";}i:22;a:2:{i:0;s:8:"Plupload";i:1;s:24:"http://www.plupload.com/";}i:23;a:2:{i:0;s:13:"random_compat";i:1;s:42:"https://github.com/paragonie/random_compat";}i:24;a:2:{i:0;s:8:"Requests";i:1;s:31:"http://requests.ryanmccue.info/";}i:25;a:2:{i:0;s:9:"SimplePie";i:1;s:21:"http://simplepie.org/";}i:26;a:2:{i:0;s:27:"The Incutio XML-RPC Library";i:1;s:34:"http://scripts.incutio.com/xmlrpc/";}i:27;a:2:{i:0;s:8:"Thickbox";i:1;s:32:"http://codylindley.com/thickbox/";}i:28;a:2:{i:0;s:7:"TinyMCE";i:1;s:24:"https://www.tinymce.com/";}i:29;a:2:{i:0;s:7:"Twemoji";i:1;s:34:"https://github.com/twitter/twemoji";}i:30;a:2:{i:0;s:13:"Underscore.js";i:1;s:24:"http://underscorejs.org/";}i:31;a:2:{i:0;s:6:"zxcvbn";i:1;s:33:"https://github.com/dropbox/zxcvbn";}}}}s:4:"data";a:2:{s:8:"profiles";s:33:"https://profiles.wordpress.org/%s";s:7:"version";s:3:"4.8";}}', 'no'),
(147, 'recently_activated', 'a:2:{s:33:"w3-total-cache/w3-total-cache.php";i:1498834440;s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";i:1498658838;}', 'yes'),
(162, 'r_notice_data', '{"type":"redux-message","title":"<strong>The Ultimate Redux Extensions Bundle!<\\/strong><br\\/>\\r\\n\\r\\n","message":"Attention Redux Developers!  Due to popular demand, we are extending the availability of the Ultimate Redux Extension Bundle, which includes <strong>all<\\/strong> of our extensions at over 40% off!  Grab you\'re copy today at <a href=\\"https:\\/\\/reduxframework.com\\/extension\\/ultimate-bundle\\">https:\\/\\/reduxframework.com\\/extension\\/ultimate-bundle<\\/a>","color":"rgba(0,162,227,1)"}', 'yes'),
(163, 'redux_blast', '1497334563', 'yes'),
(164, 'redux_version_upgraded_from', '3.6.5', 'yes'),
(167, 'redux_demo', 'a:70:{s:12:"opt-checkbox";s:1:"1";s:15:"opt-multi-check";a:3:{i:1;s:1:"1";i:2;s:1:"0";i:3;s:1:"0";}s:9:"opt-radio";s:1:"2";s:12:"opt-sortable";a:3:{s:8:"Text One";s:6:"Item 1";s:8:"Text Two";s:6:"Item 2";s:10:"Text Three";s:6:"Item 3";}s:18:"opt-check-sortable";a:3:{s:3:"cb1";b:0;s:3:"cb2";b:1;s:3:"cb3";b:0;}s:12:"text-example";s:12:"Default Text";s:17:"text-example-hint";s:12:"Default Text";s:12:"opt-textarea";s:12:"Default Text";s:10:"opt-editor";s:27:"Powered by Redux Framework.";s:15:"opt-editor-tiny";s:27:"Powered by Redux Framework.";s:18:"opt-ace-editor-css";s:29:"#header{\n   margin: 0 auto;\n}";s:17:"opt-ace-editor-js";s:39:"jQuery(document).ready(function(){\n\n});";s:18:"opt-ace-editor-php";s:28:"<?php\n    echo "PHP String";";s:15:"opt-color-title";s:7:"#000000";s:16:"opt-color-footer";s:7:"#dd9933";s:16:"opt-color-header";a:2:{s:4:"from";s:7:"#1e73be";s:2:"to";s:7:"#00897e";}s:14:"opt-color-rgba";a:2:{s:5:"color";s:7:"#7e33dd";s:5:"alpha";s:2:".8";}s:14:"opt-link-color";a:3:{s:7:"regular";s:4:"#aaa";s:5:"hover";s:4:"#bbb";s:6:"active";s:4:"#ccc";}s:17:"opt-palette-color";s:3:"red";s:17:"opt-header-border";a:6:{s:12:"border-color";s:7:"#1e73be";s:12:"border-style";s:5:"solid";s:10:"border-top";s:3:"3px";s:12:"border-right";s:3:"3px";s:13:"border-bottom";s:3:"3px";s:11:"border-left";s:3:"3px";}s:26:"opt-header-border-expanded";a:6:{s:12:"border-color";s:7:"#1e73be";s:12:"border-style";s:5:"solid";s:10:"border-top";s:3:"3px";s:12:"border-right";s:3:"3px";s:13:"border-bottom";s:3:"3px";s:11:"border-left";s:3:"3px";}s:14:"opt-dimensions";a:2:{s:5:"width";i:200;s:6:"height";i:100;}s:20:"opt-dimensions-width";a:2:{s:5:"width";i:200;s:6:"height";i:100;}s:11:"opt-spacing";a:4:{s:10:"margin-top";s:3:"1px";s:12:"margin-right";s:3:"2px";s:13:"margin-bottom";s:3:"3px";s:11:"margin-left";s:3:"4px";}s:20:"opt-spacing-expanded";a:4:{s:10:"margin-top";s:3:"1px";s:12:"margin-right";s:3:"2px";s:13:"margin-bottom";s:3:"3px";s:11:"margin-left";s:3:"4px";}s:9:"opt-media";a:1:{s:3:"url";s:52:"http://s.wordpress.org/style/images/codeispoetry.png";}s:14:"opt-button-set";s:1:"2";s:20:"opt-button-set-multi";a:2:{i:0;s:1:"2";i:1;s:1:"3";}s:9:"switch-on";b:1;s:10:"switch-off";b:0;s:13:"switch-parent";i:0;s:13:"switch-child1";b:0;s:13:"switch-child2";b:0;s:10:"opt-select";s:1:"2";s:21:"opt-select-stylesheet";s:11:"default.css";s:19:"opt-select-optgroup";s:1:"2";s:16:"opt-multi-select";a:2:{i:0;s:1:"2";i:1;s:1:"3";}s:16:"opt-select-image";s:13:"tree_bark.png";s:23:"opt-image-select-layout";s:1:"2";s:12:"opt-patterns";i:0;s:16:"opt-image-select";s:1:"2";s:11:"opt-presets";i:0;s:16:"opt-select_image";i:0;s:16:"opt-slider-label";i:250;s:15:"opt-slider-text";i:75;s:17:"opt-slider-select";a:2:{i:1;i:100;i:2;i:300;}s:16:"opt-slider-float";d:0.5;s:11:"opt-spinner";s:2:"40";s:19:"opt-typography-body";a:4:{s:5:"color";s:7:"#dd9933";s:9:"font-size";s:4:"30px";s:11:"font-family";s:26:"Arial,Helvetica,sans-serif";s:11:"font-weight";s:6:"Normal";}s:14:"opt-typography";a:6:{s:5:"color";s:4:"#333";s:10:"font-style";s:3:"700";s:11:"font-family";s:4:"Abel";s:6:"google";b:1;s:9:"font-size";s:4:"33px";s:11:"line-height";s:4:"40px";}s:19:"opt-homepage-layout";a:3:{s:7:"enabled";a:4:{s:10:"highlights";s:10:"Highlights";s:6:"slider";s:6:"Slider";s:10:"staticpage";s:11:"Static Page";s:8:"services";s:8:"Services";}s:8:"disabled";a:0:{}s:6:"backup";a:0:{}}s:21:"opt-homepage-layout-2";a:2:{s:8:"disabled";a:2:{s:10:"highlights";s:10:"Highlights";s:6:"slider";s:6:"Slider";}s:7:"enabled";a:2:{s:10:"staticpage";s:11:"Static Page";s:8:"services";s:8:"Services";}}s:14:"opt-text-email";s:13:"test@test.com";s:12:"opt-text-url";s:25:"http://reduxframework.com";s:16:"opt-text-numeric";s:1:"0";s:22:"opt-text-comma-numeric";s:1:"0";s:25:"opt-text-no-special-chars";s:1:"0";s:20:"opt-text-str_replace";s:20:"This is the default.";s:21:"opt-text-preg_replace";s:1:"0";s:24:"opt-text-custom_validate";s:1:"0";s:20:"opt-textarea-no-html";s:27:"No HTML is allowed in here.";s:17:"opt-textarea-html";s:24:"HTML is allowed in here.";s:22:"opt-textarea-some-html";s:36:"<p>Some HTML is allowed in here.</p>";s:18:"opt-required-basic";b:0;s:19:"opt-required-nested";b:0;s:29:"opt-required-nested-buttonset";s:11:"button-text";s:19:"opt-required-select";s:10:"no-sidebar";s:32:"opt-required-select-left-sidebar";s:0:"";s:33:"opt-required-select-right-sidebar";s:0:"";s:19:"opt-customizer-only";s:1:"2";}', 'yes'),
(168, 'redux_demo-transients', 'a:2:{s:14:"changed_values";a:0:{}s:9:"last_save";i:1497334564;}', 'yes'),
(171, 'option_tree_settings', 'a:3:{s:8:"sections";a:7:{i:0;a:2:{s:5:"title";s:11:"Tổng quan";s:2:"id";s:7:"general";}i:1;a:2:{s:5:"title";s:6:"Header";s:2:"id";s:6:"header";}i:2;a:2:{s:5:"title";s:11:"Trang chủ";s:2:"id";s:9:"home_page";}i:3;a:2:{s:5:"title";s:6:"Footer";s:2:"id";s:6:"footer";}i:4;a:2:{s:5:"title";s:18:"Trang sản phẩm";s:2:"id";s:20:"product_page_options";}i:5;a:2:{s:5:"title";s:27:"Trang danh mục, tin tức";s:2:"id";s:16:"category_options";}i:6;a:2:{s:5:"title";s:31:"Fanpage, Kênh mạng xã hội";s:2:"id";s:7:"socials";}}s:8:"settings";a:33:{i:0;a:13:{s:5:"label";s:7:"Favicon";s:2:"id";s:8:"_favicon";s:4:"type";s:6:"upload";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:7:"general";}i:1;a:13:{s:5:"label";s:4:"Logo";s:2:"id";s:7:"pl_logo";s:4:"type";s:6:"upload";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:7:"general";}i:2;a:14:{s:5:"label";s:23:"Danh sách địa chỉ";s:2:"id";s:12:"address_list";s:4:"type";s:9:"list-item";s:4:"desc";s:0:"";s:8:"settings";a:1:{i:0;a:12:{s:5:"label";s:7:"Hotline";s:2:"id";s:7:"hotline";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";}}s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:7:"general";}i:3;a:13:{s:5:"label";s:33:"Xem số sản phẩm mỗi trang";s:2:"id";s:16:"pl_prod_per_page";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:2:"12";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:7:"general";}i:4;a:13:{s:5:"label";s:11:"Header info";s:2:"id";s:12:"header_block";s:4:"type";s:9:"list-item";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:6:"header";}i:5;a:13:{s:5:"label";s:11:"Banner menu";s:2:"id";s:16:"banner_main_menu";s:4:"type";s:6:"upload";s:4:"desc";s:30:"Ảnh banner trong menu chính";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:6:"header";}i:6;a:13:{s:5:"label";s:18:"Logo square banner";s:2:"id";s:12:"bn_shop_logo";s:4:"type";s:6:"upload";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:9:"home_page";}i:7;a:13:{s:5:"label";s:16:"Tên shop banner";s:2:"id";s:12:"bn_shop_name";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:9:"home_page";}i:8;a:13:{s:5:"label";s:15:"Mô tả banner";s:2:"id";s:19:"bn_shop_description";s:4:"type";s:15:"textarea-simple";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:1:"2";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:9:"home_page";}i:9;a:13:{s:5:"label";s:18:"Banner shop phải";s:2:"id";s:17:"banner_shop_right";s:4:"type";s:6:"upload";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:9:"home_page";}i:10;a:14:{s:5:"label";s:23:"Danh mục sản phẩm";s:2:"id";s:14:"home_prod_cats";s:4:"type";s:9:"list-item";s:4:"desc";s:0:"";s:8:"settings";a:4:{i:0;a:12:{s:5:"label";s:30:"Chọn danh mục sản phẩm";s:2:"id";s:14:"product_cat_id";s:4:"type";s:15:"taxonomy-select";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:11:"product_cat";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";}i:1;a:12:{s:5:"label";s:19:"Chọn ảnh banner";s:2:"id";s:12:"banner_image";s:4:"type";s:6:"upload";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";}i:2;a:12:{s:5:"label";s:11:"Link banner";s:2:"id";s:17:"banner_image_link";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";}i:3;a:12:{s:5:"label";s:46:"Chọn số lượng sản phẩm hiện thị";s:2:"id";s:16:"product_per_page";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:4:"0,12";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";}}s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:9:"home_page";}i:11;a:14:{s:5:"label";s:36:"Danh mục phụ kiện trái (Grid)";s:2:"id";s:19:"home_prod_cats_grid";s:4:"type";s:9:"list-item";s:4:"desc";s:0:"";s:8:"settings";a:2:{i:0;a:12:{s:5:"label";s:30:"Chọn danh mục sản phẩm";s:2:"id";s:15:"product_acce_id";s:4:"type";s:15:"taxonomy-select";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:12:"product_acce";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";}i:1;a:12:{s:5:"label";s:11:"Giản giá";s:2:"id";s:11:"sale_number";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";}}s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:11:"product_cat";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:9:"home_page";}i:12;a:14:{s:5:"label";s:37:"Danh mục phụ kiện phải (List)";s:2:"id";s:18:"hom_prod_cats_list";s:4:"type";s:9:"list-item";s:4:"desc";s:0:"";s:8:"settings";a:2:{i:0;a:12:{s:5:"label";s:30:"Chọn danh mục phụ kiện";s:2:"id";s:12:"prod_acce_id";s:4:"type";s:15:"taxonomy-select";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:12:"product_acce";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";}i:1;a:12:{s:5:"label";s:39:"Số lượng sản phẩm hiển thị";s:2:"id";s:16:"product_per_page";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";}}s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:9:"home_page";}i:13;a:13:{s:5:"label";s:20:"Danh mục tin tức";s:2:"id";s:9:"home_cats";s:4:"type";s:15:"category-select";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:9:"home_page";}i:14;a:13:{s:5:"label";s:8:"Mô tả";s:2:"id";s:11:"footer_desc";s:4:"type";s:15:"textarea-simple";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:1:"3";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:6:"footer";}i:15;a:13:{s:5:"label";s:28:"Menu hỗ trợ khách hàng";s:2:"id";s:19:"footer_menu_support";s:4:"type";s:25:"custom-post-type-checkbox";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:4:"page";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:6:"footer";}i:16;a:14:{s:5:"label";s:16:"Mạng xã hội";s:2:"id";s:12:"social_items";s:4:"type";s:9:"list-item";s:4:"desc";s:0:"";s:8:"settings";a:2:{i:0;a:12:{s:5:"label";s:4:"Icon";s:2:"id";s:4:"icon";s:4:"type";s:4:"text";s:4:"desc";s:56:"Icon lấy theo fontawesome http://fontawesome.io/icons/";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";}i:1;a:12:{s:5:"label";s:4:"Link";s:2:"id";s:4:"link";s:4:"type";s:4:"text";s:4:"desc";s:26:"Link fanpage, channel, ...";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";}}s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:6:"footer";}i:17;a:13:{s:5:"label";s:21:"Mã nhúng google map";s:2:"id";s:16:"google_map_embed";s:4:"type";s:15:"textarea-simple";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:1:"4";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:6:"footer";}i:18;a:13:{s:5:"label";s:7:"GPĐKKD";s:2:"id";s:15:"end_footer_desc";s:4:"type";s:15:"textarea-simple";s:4:"desc";s:25:"</br> để xuống dòng";s:3:"std";s:0:"";s:4:"rows";s:1:"2";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:6:"footer";}i:19;a:13:{s:5:"label";s:10:"Coppyright";s:2:"id";s:10:"coppyright";s:4:"type";s:15:"textarea-simple";s:4:"desc";s:26:"<br /> để xuống dòng";s:3:"std";s:0:"";s:4:"rows";s:1:"3";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:6:"footer";}i:20;a:13:{s:5:"label";s:16:"Icon thanh toán";s:2:"id";s:14:"banner_payment";s:4:"type";s:6:"upload";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:6:"footer";}i:21;a:13:{s:5:"label";s:26:"Trả góp % tối thiểu";s:2:"id";s:15:"percent_min_pay";s:4:"type";s:4:"text";s:4:"desc";s:54:"Số phần trăm tối thiểu phải trả trước.";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:20:"product_page_options";}i:22;a:13:{s:5:"label";s:26:"Lãi suất trả góp (%)";s:2:"id";s:16:"interest_percent";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:3:"2.1";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:20:"product_page_options";}i:23;a:13:{s:5:"label";s:24:"Icon tổ chức cho vay";s:2:"id";s:16:"installment_icon";s:4:"type";s:6:"upload";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:20:"product_page_options";}i:24;a:13:{s:5:"label";s:18:"Mô tả mua hàng";s:2:"id";s:13:"buy_safe_desc";s:4:"type";s:8:"textarea";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:20:"product_page_options";}i:25;a:13:{s:5:"label";s:30:"Ảnh nền mô tả mua hàng";s:2:"id";s:14:"buy_safe_image";s:4:"type";s:6:"upload";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:20:"product_page_options";}i:26;a:14:{s:5:"label";s:27:"Phương thức thanh toán";s:2:"id";s:21:"payment_method_single";s:4:"type";s:9:"list-item";s:4:"desc";s:66:"Chỉ hiển thị ở trang sản phẩm, dưới phần mô tả";s:8:"settings";a:1:{i:0;a:12:{s:5:"label";s:10:"Ảnh/Icon";s:2:"id";s:5:"image";s:4:"type";s:6:"upload";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";}}s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:20:"product_page_options";}i:27;a:13:{s:5:"label";s:10:"Top banner";s:2:"id";s:14:"cat_top_banner";s:4:"type";s:6:"upload";s:4:"desc";s:37:"Banner top trong danh mục tin tức";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:16:"category_options";}i:28;a:13:{s:5:"label";s:15:"Link top banner";s:2:"id";s:19:"link_top_cat_banner";s:4:"type";s:4:"text";s:4:"desc";s:30:"Link trỏ đến của banner";s:3:"std";s:7:"http://";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:16:"category_options";}i:29;a:14:{s:5:"label";s:24:"Danh mục trên sidebar";s:2:"id";s:15:"sidebar_cat_ids";s:4:"type";s:9:"list-item";s:4:"desc";s:40:"Danh mục trên sidebar trang tin tức";s:8:"settings";a:2:{i:0;a:12:{s:5:"label";s:17:"Chọn danh mục";s:2:"id";s:6:"cat_id";s:4:"type";s:15:"category-select";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";}i:1;a:12:{s:5:"label";s:29:"Số bài viết hiển thị";s:2:"id";s:8:"per_page";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:1:"5";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";}}s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:16:"category_options";}i:30;a:13:{s:5:"label";s:20:"Tên channel youtube";s:2:"id";s:20:"youtube_channel_name";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:7:"socials";}i:31;a:13:{s:5:"label";s:20:"Youtube embed script";s:2:"id";s:20:"youtube_embed_script";s:4:"type";s:15:"textarea-simple";s:4:"desc";s:276:"Lấy mã ở trang này: https://developers.google.com/youtube/youtube_subscribe_button.<br />\r\nVào đây để lấy tên kênh youtube hoặc ID kênh youtube: https://www.youtube.com/account_advanced. sau đó thay data-channel="ID hoặc tên kênh youtube của bạn".";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:7:"socials";}i:32;a:13:{s:5:"label";s:19:"Facebook SDK script";s:2:"id";s:19:"facebook_sdk_script";s:4:"type";s:15:"textarea-simple";s:4:"desc";s:45:"Thay appId bằng ID ứng dụng của bạn";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:7:"socials";}}s:15:"contextual_help";a:1:{s:7:"sidebar";s:0:"";}}', 'yes');
INSERT INTO `plbs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(172, 'option_tree', 'a:33:{s:8:"_favicon";s:61:"http://localhost/f5mobile/wp-content/uploads/2017/06/icon.png";s:7:"pl_logo";s:61:"http://localhost/f5mobile/wp-content/uploads/2017/06/logo.png";s:12:"address_list";a:2:{i:0;a:2:{s:5:"title";s:28:"abc Cầu Giấy - Hà Nội";s:7:"hotline";s:12:"093284234254";}i:1;a:2:{s:5:"title";s:27:"cde Đống Đa - Hà Nội";s:7:"hotline";s:13:"02934 0984984";}}s:16:"pl_prod_per_page";s:2:"12";s:12:"header_block";a:4:{i:0;a:4:{s:5:"title";s:14:"Mua trả góp";s:5:"image";s:14:"fa-credit-card";s:4:"link";s:7:"http://";s:11:"description";s:19:"Không thế chấp";}i:1;a:4:{s:5:"title";s:22:"Miễn phí giao hàng";s:5:"image";s:8:"fa-truck";s:4:"link";s:7:"http://";s:11:"description";s:25:"Tận nơi - Toàn quốc";}i:2;a:4:{s:5:"title";s:23:"Dùng thử miễn phí";s:5:"image";s:10:"fa-history";s:4:"link";s:7:"http://";s:11:"description";s:14:"Trong 10 ngày";}i:3;a:4:{s:5:"title";s:24:"Hệ thống cửa hàng";s:5:"image";s:13:"fa-map-marker";s:4:"link";s:7:"http://";s:11:"description";s:24:"Cầu Giấy - Hà Nội";}}s:16:"banner_main_menu";s:68:"http://localhost/f5mobile/wp-content/uploads/2017/06/bg-menu-2-1.png";s:12:"bn_shop_logo";s:68:"http://localhost/f5mobile/wp-content/uploads/2017/06/square-logo.png";s:12:"bn_shop_name";s:35:"SHOP NAME - CẦU GIẤY, HÀ NỘI";s:19:"bn_shop_description";s:218:"“Chúng tôi tạo nên Môi trường mua hàng đặc biệt thân thiện – Giá hấp dẫn nhất thị trường và Yên tâm về mọi mặt cho tất cả các khách hàng của mình.” - ABC, TNHH ABC";s:17:"banner_shop_right";s:60:"http://localhost/f5mobile/wp-content/uploads/2017/06/1-2.jpg";s:14:"home_prod_cats";a:5:{i:0;a:5:{s:5:"title";s:18:"Iphone quốc tế";s:14:"product_cat_id";s:2:"22";s:12:"banner_image";s:63:"http://localhost/f5mobile/wp-content/uploads/2017/06/banner.png";s:17:"banner_image_link";s:0:"";s:16:"product_per_page";s:1:"8";}i:1;a:5:{s:5:"title";s:11:"Iphone lock";s:14:"product_cat_id";s:2:"51";s:12:"banner_image";s:0:"";s:17:"banner_image_link";s:0:"";s:16:"product_per_page";s:1:"8";}i:4;a:5:{s:5:"title";s:6:"Banner";s:14:"product_cat_id";s:0:"";s:12:"banner_image";s:63:"http://localhost/f5mobile/wp-content/uploads/2017/06/images.jpg";s:17:"banner_image_link";s:0:"";s:16:"product_per_page";s:0:"";}i:2;a:5:{s:5:"title";s:17:"Máy tính bảng";s:14:"product_cat_id";s:2:"23";s:12:"banner_image";s:0:"";s:17:"banner_image_link";s:0:"";s:16:"product_per_page";s:1:"8";}i:3;a:5:{s:5:"title";s:18:"Android smartphone";s:14:"product_cat_id";s:2:"24";s:12:"banner_image";s:0:"";s:17:"banner_image_link";s:0:"";s:16:"product_per_page";s:1:"8";}}s:19:"home_prod_cats_grid";a:4:{i:0;a:3:{s:5:"title";s:19:"Gậy tự sướng";s:15:"product_acce_id";s:2:"65";s:11:"sale_number";s:4:"-20%";}i:1;a:3:{s:5:"title";s:17:"Sạc dự phòng";s:15:"product_acce_id";s:2:"66";s:11:"sale_number";s:4:"-20%";}i:2;a:3:{s:5:"title";s:8:"Tai nghe";s:15:"product_acce_id";s:2:"67";s:11:"sale_number";s:4:"-30%";}i:3;a:3:{s:5:"title";s:20:"Ốp lưng theo màu";s:15:"product_acce_id";s:2:"68";s:11:"sale_number";s:4:"-25%";}}s:18:"hom_prod_cats_list";a:4:{i:0;a:3:{s:5:"title";s:10:"Củ sạc";s:12:"prod_acce_id";s:2:"69";s:16:"product_per_page";s:1:"2";}i:1;a:3:{s:5:"title";s:12:"Miếng dán";s:12:"prod_acce_id";s:2:"70";s:16:"product_per_page";s:1:"2";}i:2;a:3:{s:5:"title";s:22:"Sạc cáp các loại";s:12:"prod_acce_id";s:2:"71";s:16:"product_per_page";s:0:"";}i:3;a:3:{s:5:"title";s:21:"Pin sạc dự phòng";s:12:"prod_acce_id";s:2:"72";s:16:"product_per_page";s:0:"";}}s:9:"home_cats";s:2:"56";s:11:"footer_desc";s:256:"Shop name là thương hiệu bán lẻ smartphone được cộng đồng công nghệ ưa chuộng và đặc biệt khuyến cáo vì luôn luôn đảm bảo được cả 3 tiêu chí Hàng chất – Dịch vụ cao cấp – Giá hấp dẫn nhất.";s:19:"footer_menu_support";a:3:{i:124;s:3:"124";i:125;s:3:"125";i:123;s:3:"123";}s:12:"social_items";a:4:{i:0;a:3:{s:5:"title";s:8:"Facebook";s:4:"icon";s:11:"fa-facebook";s:4:"link";s:7:"http://";}i:1;a:3:{s:5:"title";s:7:"Google+";s:4:"icon";s:14:"fa-google-plus";s:4:"link";s:8:"https://";}i:2;a:3:{s:5:"title";s:7:"Twitter";s:4:"icon";s:10:"fa-twitter";s:4:"link";s:7:"http://";}i:3;a:3:{s:5:"title";s:7:"Youtube";s:4:"icon";s:10:"fa-youtube";s:4:"link";s:7:"http://";}}s:16:"google_map_embed";s:430:"<iframe src="https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d33440.05974094824!2d105.77088140881467!3d21.034159752412467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m5!1s0x3135ab5756f91033%3A0x576917442d674bfd!2zQ-G6p3UgR2nhuqV5LCBIw6AgTuG7mWksIFZp4buHdCBOYW0!3m2!1d21.036236799999998!2d105.7905825!4m0!5e0!3m2!1svi!2s!4v1498585431320" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>";s:15:"end_footer_desc";s:107:"ĐƠN VỊ CHỦ QUẢN: CÔNG TY TNHH XUẤT NHẬP KHẨU TNA VIỆT NAM.<br />\r\nGPĐKKD SỐ: 0107056326";s:10:"coppyright";s:131:"<p>© 2013 -2015 <strong>Shop name</strong><br />\r\n         Design By <strong>Company</strong></p>\r\nCoded By <strong>Pinla</strong>";s:14:"banner_payment";s:75:"http://localhost/f5mobile/wp-content/uploads/2017/06/universal_payments.png";s:15:"percent_min_pay";s:2:"20";s:16:"interest_percent";s:3:"3.5";s:16:"installment_icon";s:68:"http://localhost/f5mobile/wp-content/uploads/2017/06/home-credit.png";s:13:"buy_safe_desc";s:388:"<p class="tit"><strong>MUA HÀNG TỪ XA DỄ NHƯ ĐẾM 1-2-3 AN TOÀN 100%</strong></p>\r\n<p>Nếu bạn không ở Hà Nội?</p>\r\n<div class="neuhn">\r\n<ul>\r\n<li>Giao hàng - thu tiền tại nhà trên toàn quốc</li>\r\n<li>Được tặng thêm 3 tháng bảo hành</li>\r\n<li>Nhận hàng trong vòng 1-2 ngày</li>\r\n<li>Hoàn 100% tiền nếu không hài lòng</li>\r\n</ul>\r\n</div>";s:14:"buy_safe_image";s:69:"http://localhost/f5mobile/wp-content/uploads/2017/06/100percent-1.png";s:21:"payment_method_single";a:2:{i:0;a:2:{s:5:"title";s:39:"Gọi Giao hàng tận nơi miễn phí";s:5:"image";s:66:"http://localhost/f5mobile/wp-content/uploads/2017/06/giao-hang.png";}i:1;a:2:{s:5:"title";s:73:"Gọi Thanh toán khi nhận hàng bằng tiền mặt, ATM, Visa, Master";s:5:"image";s:67:"http://localhost/f5mobile/wp-content/uploads/2017/06/thanh-toan.png";}}s:14:"cat_top_banner";s:65:"http://localhost/f5mobile/wp-content/uploads/2017/06/images-1.jpg";s:19:"link_top_cat_banner";s:7:"http://";s:15:"sidebar_cat_ids";a:2:{i:0;a:3:{s:5:"title";s:13:"Khuyễn mãi";s:6:"cat_id";s:2:"76";s:8:"per_page";s:1:"5";}i:1;a:3:{s:5:"title";s:13:"Thủ thuật";s:6:"cat_id";s:2:"88";s:8:"per_page";s:1:"5";}}s:20:"youtube_channel_name";s:12:"Shop name TV";s:20:"youtube_embed_script";s:169:"<script src="https://apis.google.com/js/platform.js"></script>\r\n<div class="g-ytsubscribe" data-channel="GoogleDevelopers" data-layout="full" data-count="default"></div>";s:19:"facebook_sdk_script";s:367:"<div id="fb-root"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.9&appId=1418616455105788";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>";}', 'yes'),
(173, 'ot_media_post_ID', '4', 'yes'),
(174, '_site_transient_timeout_browser_492addfb82e42578c56d2fd7abae843f', '1497975803', 'no'),
(175, '_site_transient_browser_492addfb82e42578c56d2fd7abae843f', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"58.0.3029.110";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(191, 'current_theme', 'Pinla', 'yes'),
(192, 'theme_mods_mytheme', 'a:4:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:3:{s:7:"primary";i:15;s:6:"footer";i:57;s:8:"cat_menu";i:90;}s:19:"ot_set_google_fonts";a:0:{}}', 'yes'),
(193, 'theme_switched', '', 'yes'),
(207, 'tadv_settings', 'a:6:{s:9:"toolbar_1";s:139:"formatselect,bold,italic,underline,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,undo,redo,image,media,fullscreen";s:9:"toolbar_2";s:118:"fontselect,fontsizeselect,outdent,indent,pastetext,removeformat,charmap,wp_more,forecolor,backcolor,table,wp_help,code";s:9:"toolbar_3";s:0:"";s:9:"toolbar_4";s:0:"";s:7:"options";s:7:"advlist";s:7:"plugins";s:18:"table,code,advlist";}', 'yes'),
(208, 'tadv_admin_settings', 'a:1:{s:16:"disabled_editors";s:0:"";}', 'yes'),
(209, 'tadv_version', '4000', 'yes'),
(220, 'itsec-storage', 'a:7:{s:6:"global";a:31:{s:18:"notification_email";a:1:{i:0;s:21:"skyfrost.07@gmail.com";}s:12:"backup_email";a:1:{i:0;s:21:"skyfrost.07@gmail.com";}s:15:"lockout_message";s:5:"error";s:20:"user_lockout_message";s:64:"You have been locked out due to too many invalid login attempts.";s:25:"community_lockout_message";s:77:"Your IP address has been flagged as a threat by the iThemes Security network.";s:9:"blacklist";b:1;s:15:"blacklist_count";i:3;s:16:"blacklist_period";i:7;s:19:"email_notifications";b:0;s:14:"lockout_period";i:15;s:18:"lockout_white_list";a:0:{}s:12:"log_rotation";i:14;s:8:"log_type";s:8:"database";s:12:"log_location";s:57:"E:\\wamp64\\www\\wp/wp-content/uploads/ithemes-security/logs";s:8:"log_info";s:39:"wp-basic-FzPg7cqk97BStopWB7cMcxeRjV0e1O";s:14:"allow_tracking";b:0;s:11:"write_files";b:1;s:10:"nginx_file";s:27:"E:\\wamp64\\www\\wp/nginx.conf";s:24:"infinitewp_compatibility";b:0;s:11:"did_upgrade";b:0;s:9:"lock_file";b:0;s:12:"digest_email";b:0;s:14:"proxy_override";b:0;s:14:"hide_admin_bar";b:0;s:16:"show_error_codes";b:0;s:25:"show_new_dashboard_notice";b:0;s:19:"show_security_check";b:0;s:16:"digest_last_sent";i:1497375537;s:15:"digest_messages";a:0:{}s:5:"build";i:4070;s:20:"activation_timestamp";i:0;}s:19:"network-brute-force";a:5:{s:7:"api_key";s:0:"";s:10:"api_secret";s:0:"";s:10:"enable_ban";b:1;s:13:"updates_optin";b:1;s:7:"api_nag";b:0;}s:16:"wordpress-tweaks";a:13:{s:18:"wlwmanifest_header";b:0;s:14:"edituri_header";b:0;s:12:"comment_spam";b:0;s:11:"file_editor";b:1;s:14:"disable_xmlrpc";i:0;s:22:"allow_xmlrpc_multiauth";b:0;s:8:"rest_api";s:15:"restrict-access";s:11:"safe_jquery";b:0;s:12:"login_errors";b:0;s:21:"force_unique_nicename";b:0;s:27:"disable_unused_author_pages";b:0;s:14:"jquery_version";s:6:"1.12.4";s:16:"block_tabnapping";b:0;}s:11:"brute-force";a:4:{s:17:"max_attempts_host";i:5;s:17:"max_attempts_user";i:10;s:12:"check_period";i:15;s:14:"auto_ban_admin";b:0;}s:6:"backup";a:9:{s:9:"all_sites";b:0;s:6:"method";i:1;s:8:"location";s:60:"E:\\wamp64\\www\\wp/wp-content/uploads/ithemes-security/backups";s:6:"retain";i:0;s:3:"zip";b:1;s:7:"exclude";a:3:{i:0;s:14:"itsec_lockouts";i:1;s:9:"itsec_log";i:2;s:10:"itsec_temp";}s:7:"enabled";b:1;s:8:"interval";i:15;s:8:"last_run";i:1498832528;}s:13:"system-tweaks";a:10:{s:18:"directory_browsing";b:1;s:11:"uploads_php";b:1;s:13:"protect_files";b:0;s:15:"request_methods";b:0;s:24:"suspicious_query_strings";b:0;s:22:"non_english_characters";b:0;s:16:"long_url_strings";b:0;s:17:"write_permissions";b:0;s:11:"plugins_php";b:0;s:10:"themes_php";b:0;}s:12:"hide-backend";a:6:{s:7:"enabled";b:1;s:4:"slug";s:6:"manage";s:12:"theme_compat";b:1;s:17:"theme_compat_slug";s:9:"not_found";s:16:"post_logout_slug";s:0:"";s:8:"register";s:15:"wp-register-php";}}', 'yes'),
(221, 'itsec_temp_whitelist_ip', 'a:1:{s:3:"::1";i:1498919637;}', 'no'),
(223, 'itsec_active_modules', 'a:10:{s:9:"ban-users";b:1;s:11:"brute-force";b:1;s:6:"backup";b:1;s:19:"network-brute-force";b:1;s:16:"strong-passwords";b:0;s:16:"wordpress-tweaks";b:1;s:9:"away-mode";b:0;s:13:"system-tweaks";b:1;s:11:"file-change";b:0;s:3:"ssl";b:0;}', 'yes'),
(227, 'woocommerce_default_country', 'VN', 'yes'),
(228, 'woocommerce_allowed_countries', 'all', 'yes'),
(229, 'woocommerce_all_except_countries', '', 'yes'),
(230, 'woocommerce_specific_allowed_countries', '', 'yes'),
(231, 'woocommerce_ship_to_countries', '', 'yes'),
(232, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(233, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(234, 'woocommerce_calc_taxes', 'no', 'yes'),
(235, 'woocommerce_demo_store', 'no', 'yes'),
(236, 'woocommerce_demo_store_notice', 'Đây là cửa hàng demo nhằm mục đích thử nghiệm &mdash; các đơn hàng sẽ không có hiệu lực.', 'no'),
(237, 'woocommerce_currency', 'VND', 'yes'),
(238, 'woocommerce_currency_pos', 'right', 'yes'),
(239, 'woocommerce_price_thousand_sep', '.', 'yes'),
(240, 'woocommerce_price_decimal_sep', ',', 'yes'),
(241, 'woocommerce_price_num_decimals', '0', 'yes'),
(242, 'woocommerce_weight_unit', 'kg', 'yes'),
(243, 'woocommerce_dimension_unit', 'cm', 'yes'),
(244, 'woocommerce_enable_review_rating', 'no', 'yes'),
(245, 'woocommerce_review_rating_required', 'no', 'no'),
(246, 'woocommerce_review_rating_verification_label', 'no', 'no'),
(247, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(248, 'woocommerce_shop_page_id', '5', 'yes'),
(249, 'woocommerce_shop_page_display', 'both', 'yes'),
(250, 'woocommerce_category_archive_display', '', 'yes'),
(251, 'woocommerce_default_catalog_orderby', 'popularity', 'yes'),
(252, 'woocommerce_cart_redirect_after_add', 'yes', 'yes'),
(253, 'woocommerce_enable_ajax_add_to_cart', 'no', 'yes'),
(254, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(255, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(256, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:2:"80";s:6:"height";s:2:"80";s:4:"crop";i:1;}', 'yes'),
(257, 'woocommerce_manage_stock', 'no', 'yes'),
(258, 'woocommerce_hold_stock_minutes', '60', 'no'),
(259, 'woocommerce_notify_low_stock', 'yes', 'no'),
(260, 'woocommerce_notify_no_stock', 'yes', 'no'),
(261, 'woocommerce_stock_email_recipient', 'skyfrost.07@gmail.com', 'no'),
(262, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(263, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(264, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(265, 'woocommerce_stock_format', '', 'yes'),
(266, 'woocommerce_file_download_method', 'force', 'no'),
(267, 'woocommerce_downloads_require_login', 'no', 'no'),
(268, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(269, 'woocommerce_prices_include_tax', 'no', 'yes'),
(270, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(271, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(272, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(273, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(274, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(275, 'woocommerce_tax_display_cart', 'excl', 'no'),
(276, 'woocommerce_price_display_suffix', '', 'yes'),
(277, 'woocommerce_tax_total_display', 'itemized', 'no'),
(278, 'woocommerce_enable_shipping_calc', 'no', 'no'),
(279, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(280, 'woocommerce_ship_to_destination', 'billing', 'no'),
(281, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(282, 'woocommerce_enable_coupons', 'no', 'yes'),
(283, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(284, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(285, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(286, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(287, 'woocommerce_cart_page_id', '6', 'yes'),
(288, 'woocommerce_checkout_page_id', '7', 'yes'),
(289, 'woocommerce_terms_page_id', '', 'no'),
(290, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(291, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(292, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(293, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(294, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(295, 'woocommerce_myaccount_page_id', '8', 'yes'),
(296, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(297, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(298, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(299, 'woocommerce_registration_generate_username', 'no', 'no'),
(300, 'woocommerce_registration_generate_password', 'no', 'no'),
(301, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(302, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(303, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(304, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(305, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(306, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(307, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(308, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(309, 'woocommerce_email_from_name', 'WP basic', 'no'),
(310, 'woocommerce_email_from_address', 'skyfrost.07@gmail.com', 'no'),
(311, 'woocommerce_email_header_image', '', 'no'),
(312, 'woocommerce_email_footer_text', 'WP basic - Powered by WooCommerce', 'no'),
(313, 'woocommerce_email_base_color', '#96588a', 'no'),
(314, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(315, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(316, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(317, 'woocommerce_api_enabled', 'yes', 'yes'),
(323, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(325, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(326, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(327, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(328, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(329, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(330, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(331, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(332, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(333, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(334, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(335, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(336, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(337, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(341, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(357, 'woocommerce_paypal-ec_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(358, 'woocommerce_stripe_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(359, 'woocommerce_paypal_settings', 'a:2:{s:7:"enabled";s:3:"yes";s:5:"email";s:21:"skyfrost.07@gmail.com";}', 'yes'),
(360, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(361, 'woocommerce_bacs_settings', 'a:5:{s:7:"enabled";s:3:"yes";s:5:"title";s:28:"Chuyển khoản ngân hàng";s:11:"description";s:314:"Thực hiện thanh toán vào ngay tài khoản ngân hàng của chúng tôi. Vui lòng sử dụng ID Đơn hàng của bạn như một phần để tham khảo khi thanh toán. Đơn hàng của bạn sẽ không được vận chuyển cho tới khi tiền được gửi vào tài khoản của chúng tôi.";s:12:"instructions";s:183:"Vui lòng chuyển khoảng vào tài khoản ngân hàng của chúng tôi để hoàn tất mua hàng:<br /> Ghi rõ nội dung chuyển khoản: "thanh toan don hang : ma_don_hang"";s:15:"account_details";s:0:"";}', 'yes'),
(362, 'woocommerce_cod_settings', 'a:6:{s:7:"enabled";s:3:"yes";s:5:"title";s:35:"Trả tiền mặt khi nhận hàng";s:11:"description";s:33:"Trả tiền mặt khi giao hàng";s:12:"instructions";s:33:"Trả tiền mặt khi giao hàng";s:18:"enable_for_methods";a:1:{i:0;s:13:"free_shipping";}s:18:"enable_for_virtual";s:3:"yes";}', 'yes'),
(364, 'woocommerce_allow_tracking', 'no', 'yes'),
(365, 'wc_ppec_version', '1.4.0', 'yes'),
(367, '_transient_shipping-transient-version', '1497890275', 'yes'),
(381, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(399, 'cptui_new_install', 'false', 'yes'),
(400, 'acf_version', '4.4.11', 'yes'),
(401, 'wpseo', 'a:24:{s:14:"blocking_files";a:0:{}s:15:"ms_defaults_set";b:0;s:7:"version";s:3:"4.9";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:6:"person";s:20:"disableadvanced_meta";b:1;s:19:"onpage_indexability";b:1;s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:11:"person_name";s:5:"Pinla";s:12:"website_name";s:9:"Shop name";s:22:"alternate_website_name";s:0:"";s:12:"yandexverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";b:0;s:16:"environment_type";s:10:"production";s:23:"content_analysis_active";b:1;s:23:"keyword_analysis_active";b:1;s:20:"enable_setting_pages";b:1;s:21:"enable_admin_bar_menu";b:1;s:26:"enable_cornerstone_content";b:1;s:22:"show_onboarding_notice";b:0;s:18:"first_activated_on";b:0;}', 'yes'),
(402, 'wpseo_permalinks', 'a:9:{s:15:"cleanpermalinks";b:0;s:24:"cleanpermalink-extravars";s:0:"";s:29:"cleanpermalink-googlecampaign";b:0;s:31:"cleanpermalink-googlesitesearch";b:0;s:15:"cleanreplytocom";b:0;s:10:"cleanslugs";b:1;s:18:"redirectattachment";b:0;s:17:"stripcategorybase";b:0;s:13:"trailingslash";b:0;}', 'yes'),
(403, 'wpseo_titles', 'a:111:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:15:"usemetakeywords";b:0;s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:18:"metakey-home-wpseo";s:0:"";s:20:"metakey-author-wpseo";s:0:"";s:22:"noindex-subpages-wpseo";b:0;s:20:"noindex-author-wpseo";b:0;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:1;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"metakey-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:16:"hideeditbox-post";b:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"metakey-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:16:"hideeditbox-page";b:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"metakey-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:22:"hideeditbox-attachment";b:0;s:18:"title-tax-category";s:44:"%%term_title%% %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:20:"metakey-tax-category";s:0:"";s:24:"hideeditbox-tax-category";b:0;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:44:"%%term_title%% %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:20:"metakey-tax-post_tag";s:0:"";s:24:"hideeditbox-tax-post_tag";b:0;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:44:"%%term_title%% %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:23:"metakey-tax-post_format";s:0:"";s:27:"hideeditbox-tax-post_format";b:0;s:23:"noindex-tax-post_format";b:1;s:13:"title-product";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:16:"metadesc-product";s:0:"";s:15:"metakey-product";s:0:"";s:15:"noindex-product";b:0;s:16:"showdate-product";b:0;s:19:"hideeditbox-product";b:0;s:13:"title-hoi_dap";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:16:"metadesc-hoi_dap";s:0:"";s:15:"metakey-hoi_dap";s:0:"";s:15:"noindex-hoi_dap";b:0;s:16:"showdate-hoi_dap";b:0;s:19:"hideeditbox-hoi_dap";b:0;s:16:"title-chinh_sach";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-chinh_sach";s:0:"";s:18:"metakey-chinh_sach";s:0:"";s:18:"noindex-chinh_sach";b:0;s:19:"showdate-chinh_sach";b:0;s:22:"hideeditbox-chinh_sach";b:0;s:23:"title-ptarchive-product";s:43:"%%pt_plural%% %%page%% %%sep%% %%sitename%%";s:26:"metadesc-ptarchive-product";s:0:"";s:25:"metakey-ptarchive-product";s:0:"";s:25:"bctitle-ptarchive-product";s:0:"";s:25:"noindex-ptarchive-product";b:0;s:23:"title-ptarchive-hoi_dap";s:43:"%%pt_plural%% %%page%% %%sep%% %%sitename%%";s:26:"metadesc-ptarchive-hoi_dap";s:0:"";s:25:"metakey-ptarchive-hoi_dap";s:0:"";s:25:"bctitle-ptarchive-hoi_dap";s:0:"";s:25:"noindex-ptarchive-hoi_dap";b:0;s:21:"title-tax-product_cat";s:44:"%%term_title%% %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-product_cat";s:0:"";s:23:"metakey-tax-product_cat";s:0:"";s:27:"hideeditbox-tax-product_cat";b:0;s:23:"noindex-tax-product_cat";b:0;s:21:"title-tax-product_tag";s:44:"%%term_title%% %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-product_tag";s:0:"";s:23:"metakey-tax-product_tag";s:0:"";s:27:"hideeditbox-tax-product_tag";b:0;s:23:"noindex-tax-product_tag";b:0;s:32:"title-tax-product_shipping_class";s:44:"%%term_title%% %%page%% %%sep%% %%sitename%%";s:35:"metadesc-tax-product_shipping_class";s:0:"";s:34:"metakey-tax-product_shipping_class";s:0:"";s:38:"hideeditbox-tax-product_shipping_class";b:0;s:34:"noindex-tax-product_shipping_class";b:0;s:22:"title-tax-product_acce";s:44:"%%term_title%% %%page%% %%sep%% %%sitename%%";s:25:"metadesc-tax-product_acce";s:0:"";s:24:"metakey-tax-product_acce";s:0:"";s:28:"hideeditbox-tax-product_acce";b:0;s:24:"noindex-tax-product_acce";b:0;s:17:"title-tax-warrant";s:44:"%%term_title%% %%page%% %%sep%% %%sitename%%";s:20:"metadesc-tax-warrant";s:0:"";s:19:"metakey-tax-warrant";s:0:"";s:23:"hideeditbox-tax-warrant";b:1;s:19:"noindex-tax-warrant";b:1;s:22:"title-tax-question_cat";s:44:"%%term_title%% %%page%% %%sep%% %%sitename%%";s:25:"metadesc-tax-question_cat";s:0:"";s:24:"metakey-tax-question_cat";s:0:"";s:28:"hideeditbox-tax-question_cat";b:0;s:24:"noindex-tax-question_cat";b:0;}', 'yes'),
(404, 'wpseo_social', 'a:20:{s:9:"fb_admins";a:0:{}s:12:"fbconnectkey";s:32:"9384d105f29ab7415cdfc892828303dc";s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:14:"plus-publisher";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:7:"summary";s:11:"youtube_url";s:0:"";s:15:"google_plus_url";s:0:"";s:10:"fbadminapp";s:0:"";}', 'yes'),
(405, 'wpseo_rss', 'a:2:{s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";}', 'yes'),
(406, 'wpseo_internallinks', 'a:14:{s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:23:"breadcrumbs-blog-remove";b:0;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:23:"post_types-post-maintax";i:0;s:26:"post_types-product-maintax";i:0;s:29:"taxonomy-product_cat-ptparent";i:0;s:29:"taxonomy-product_tag-ptparent";i:0;s:40:"taxonomy-product_shipping_class-ptparent";i:0;}', 'yes'),
(407, 'wpseo_xml', 'a:22:{s:22:"disable_author_sitemap";b:1;s:22:"disable_author_noposts";b:1;s:16:"enablexmlsitemap";b:1;s:16:"entries-per-page";i:1000;s:14:"excluded-posts";s:0:"";s:38:"user_role-administrator-not_in_sitemap";b:0;s:31:"user_role-editor-not_in_sitemap";b:0;s:31:"user_role-author-not_in_sitemap";b:0;s:36:"user_role-contributor-not_in_sitemap";b:0;s:35:"user_role-subscriber-not_in_sitemap";b:0;s:33:"user_role-customer-not_in_sitemap";b:0;s:37:"user_role-shop_manager-not_in_sitemap";b:0;s:30:"post_types-post-not_in_sitemap";b:0;s:30:"post_types-page-not_in_sitemap";b:0;s:36:"post_types-attachment-not_in_sitemap";b:1;s:33:"post_types-product-not_in_sitemap";b:0;s:34:"taxonomies-category-not_in_sitemap";b:0;s:34:"taxonomies-post_tag-not_in_sitemap";b:0;s:37:"taxonomies-post_format-not_in_sitemap";b:0;s:37:"taxonomies-product_cat-not_in_sitemap";b:0;s:37:"taxonomies-product_tag-not_in_sitemap";b:0;s:48:"taxonomies-product_shipping_class-not_in_sitemap";b:0;}', 'yes'),
(408, 'wpseo_flush_rewrite', '1', 'yes'),
(411, 'wpseo-gsc', 'a:1:{s:7:"profile";s:0:"";}', 'yes'),
(412, 'wpseo_sitemap_cache_validator_global', '4O7DN', 'no'),
(415, 'wpseo_sitemap_1_cache_validator', 'szhL', 'no'),
(416, 'wpseo_sitemap_page_cache_validator', '5skgG', 'no'),
(431, 'cptui_post_types', 'a:3:{s:6:"slider";a:28:{s:4:"name";s:6:"slider";s:5:"label";s:6:"Slider";s:14:"singular_label";s:6:"Slider";s:11:"description";s:18:"Slider trang chủ";s:6:"public";s:5:"false";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:4:"true";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:2:"22";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:21:"dashicons-images-alt2";s:8:"supports";a:2:{i:0;s:5:"title";i:1;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:23:{s:9:"menu_name";s:6:"Slider";s:9:"all_items";s:18:"Tất cả sliders";s:7:"add_new";s:11:"Thêm mới";s:12:"add_new_item";s:17:"Thêm mới slide";s:9:"edit_item";s:11:"Sửa slide";s:8:"new_item";s:17:"Thêm mới slide";s:9:"view_item";s:9:"Xem slide";s:10:"view_items";s:10:"Xem slides";s:12:"search_items";s:17:"Tìm kiếm slide";s:14:"featured_image";s:11:"Ảnh slide";s:18:"set_featured_image";s:18:"Chọn ảnh slide";s:21:"remove_featured_image";s:10:"Xóa ảnh";s:18:"use_featured_image";s:16:"Dùng ảnh này";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}s:7:"hoi_dap";a:28:{s:4:"name";s:7:"hoi_dap";s:5:"label";s:11:"Hỏi đáp";s:14:"singular_label";s:11:"Hỏi đáp";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:4:"true";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:2:"23";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:25:"dashicons-controls-repeat";s:8:"supports";a:4:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";i:3;s:8:"comments";}s:10:"taxonomies";a:2:{i:0;s:8:"post_tag";i:1;s:12:"question_cat";}s:6:"labels";a:23:{s:9:"menu_name";s:11:"Hỏi đáp";s:9:"all_items";s:10:"Tất cả";s:7:"add_new";s:11:"Thêm mới";s:12:"add_new_item";s:11:"Thêm mới";s:9:"edit_item";s:13:"Chỉnh sửa";s:8:"new_item";s:11:"Thêm mới";s:9:"view_item";s:3:"Xem";s:10:"view_items";s:3:"Xem";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}s:10:"chinh_sach";a:28:{s:4:"name";s:10:"chinh_sach";s:5:"label";s:12:"Chính sách";s:14:"singular_label";s:12:"Chính sách";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:4:"true";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:4:"true";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:10:"chinh-sach";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:2:"25";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:26:"dashicons-welcome-add-page";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:23:{s:9:"menu_name";s:11:"Chính ách";s:9:"all_items";s:10:"Tất cả";s:7:"add_new";s:11:"Thêm mới";s:12:"add_new_item";s:11:"Thêm mới";s:9:"edit_item";s:13:"Chỉnh sửa";s:8:"new_item";s:11:"Thêm mới";s:9:"view_item";s:3:"Xem";s:10:"view_items";s:3:"Xem";s:12:"search_items";s:11:"Tìm kiếm";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(436, 'wpseo_sitemap_slider_cache_validator', '2XB4Y', 'no'),
(440, 'wpseo_onpage', 'a:2:{s:6:"status";i:0;s:10:"last_fetch";i:1498376092;}', 'yes'),
(452, 'wpseo_sitemap_category_cache_validator', '4ZAtC', 'no'),
(453, 'wpseo_sitemap_post_cache_validator', '4ZAtS', 'no'),
(483, 'wpseo_sitemap_22_cache_validator', '3r8Du', 'no'),
(484, 'wpseo_sitemap_23_cache_validator', '3r8E2', 'no'),
(485, 'wpseo_sitemap_24_cache_validator', '3r8EC', 'no'),
(486, 'wpseo_sitemap_25_cache_validator', '3r8Fz', 'no'),
(487, 'wpseo_sitemap_26_cache_validator', '3r8HK', 'no'),
(488, 'wpseo_sitemap_27_cache_validator', '3r8Ij', 'no'),
(508, 'wpseo_sitemap_product_cat_cache_validator', '4XNw7', 'no'),
(539, 'wpseo_taxonomy_meta', 'a:4:{s:8:"category";a:2:{i:48;a:2:{s:13:"wpseo_linkdex";s:2:"-9";s:19:"wpseo_content_score";s:2:"30";}i:47;a:2:{s:13:"wpseo_linkdex";s:2:"-9";s:19:"wpseo_content_score";s:2:"30";}}s:11:"product_cat";a:5:{i:25;a:2:{s:13:"wpseo_linkdex";s:2:"-2";s:19:"wpseo_content_score";s:2:"30";}i:28;a:2:{s:13:"wpseo_linkdex";s:2:"-2";s:19:"wpseo_content_score";s:2:"30";}i:31;a:2:{s:13:"wpseo_linkdex";s:2:"-2";s:19:"wpseo_content_score";s:2:"30";}i:26;a:2:{s:13:"wpseo_linkdex";s:2:"-2";s:19:"wpseo_content_score";s:2:"30";}i:59;a:2:{s:13:"wpseo_linkdex";s:2:"-9";s:19:"wpseo_content_score";s:2:"30";}}s:7:"warrant";a:2:{i:77;a:2:{s:13:"wpseo_linkdex";s:2:"-9";s:19:"wpseo_content_score";s:2:"30";}i:78;a:2:{s:13:"wpseo_linkdex";s:2:"-9";s:19:"wpseo_content_score";s:2:"30";}}s:12:"product_acce";a:8:{i:65;a:2:{s:13:"wpseo_linkdex";s:2:"-9";s:19:"wpseo_content_score";s:2:"30";}i:69;a:2:{s:13:"wpseo_linkdex";s:2:"-9";s:19:"wpseo_content_score";s:2:"30";}i:72;a:2:{s:13:"wpseo_linkdex";s:2:"-9";s:19:"wpseo_content_score";s:2:"30";}i:71;a:2:{s:13:"wpseo_linkdex";s:2:"-9";s:19:"wpseo_content_score";s:2:"30";}i:66;a:2:{s:13:"wpseo_linkdex";s:2:"-9";s:19:"wpseo_content_score";s:2:"30";}i:67;a:2:{s:13:"wpseo_linkdex";s:2:"-2";s:19:"wpseo_content_score";s:2:"30";}i:68;a:2:{s:13:"wpseo_linkdex";s:2:"-9";s:19:"wpseo_content_score";s:2:"30";}i:70;a:2:{s:13:"wpseo_linkdex";s:2:"-9";s:19:"wpseo_content_score";s:2:"30";}}}', 'yes'),
(584, 'wpseo_sitemap_product_cache_validator', '4XNwj', 'no'),
(585, '_transient_product_query-transient-version', '1498490082', 'yes'),
(586, '_transient_product-transient-version', '1498490082', 'yes'),
(589, '_transient_timeout_wc_shipping_method_count_0_1497890275', '1500482295', 'no'),
(590, '_transient_wc_shipping_method_count_0_1497890275', '1', 'no'),
(593, 'wpseo_sitemap_82_cache_validator', '5nJ5w', 'no'),
(624, 'wpseo_sitemap_92_cache_validator', '5bHsX', 'no'),
(625, 'wpseo_sitemap_94_cache_validator', '5bHtv', 'no'),
(650, 'cptui_taxonomies', 'a:3:{s:12:"product_acce";a:21:{s:4:"name";s:12:"product_acce";s:5:"label";s:25:"Phụ kiện sản phẩm";s:14:"singular_label";s:17:"phu-kien-san-pham";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:12:"hierarchical";s:4:"true";s:7:"show_ui";s:4:"true";s:12:"show_in_menu";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:17:"phu-kien-san-pham";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:17:"phu-kien-san-pham";s:17:"rewrite_withfront";s:1:"1";s:20:"rewrite_hierarchical";s:1:"0";s:17:"show_admin_column";s:5:"false";s:12:"show_in_rest";s:5:"false";s:18:"show_in_quick_edit";s:4:"true";s:9:"rest_base";s:0:"";s:6:"labels";a:18:{s:9:"menu_name";s:12:"Phụ kiện";s:9:"all_items";s:10:"Tất cả";s:9:"edit_item";s:13:"Chỉnh sửa";s:9:"view_item";s:3:"Xem";s:11:"update_item";s:17:"Cập nhật tên";s:12:"add_new_item";s:11:"Thêm mới";s:13:"new_item_name";s:12:"Thêm  mới";s:11:"parent_item";s:12:"Phụ kiện";s:17:"parent_item_colon";s:12:"Phụ kiện";s:12:"search_items";s:12:"Phụ kiện";s:13:"popular_items";s:0:"";s:26:"separate_items_with_commas";s:0:"";s:19:"add_or_remove_items";s:0:"";s:21:"choose_from_most_used";s:0:"";s:9:"not_found";s:0:"";s:8:"no_terms";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";}s:12:"object_types";a:1:{i:0;s:7:"product";}}s:7:"warrant";a:21:{s:4:"name";s:7:"warrant";s:5:"label";s:16:"Gói bảo hành";s:14:"singular_label";s:16:"Gói bảo hành";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:12:"hierarchical";s:4:"true";s:7:"show_ui";s:4:"true";s:12:"show_in_menu";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:20:"rewrite_hierarchical";s:1:"0";s:17:"show_admin_column";s:5:"false";s:12:"show_in_rest";s:5:"false";s:18:"show_in_quick_edit";s:0:"";s:9:"rest_base";s:0:"";s:6:"labels";a:18:{s:9:"all_items";s:27:"Tất cả gói bảo hành";s:9:"edit_item";s:22:"Sửa gói bảo hành";s:9:"view_item";s:20:"Xem gói bảo hành";s:11:"update_item";s:29:"Cập nhật gói bảo hành";s:12:"add_new_item";s:11:"Thêm mới";s:13:"new_item_name";s:11:"Thêm mới";s:9:"menu_name";s:0:"";s:11:"parent_item";s:0:"";s:17:"parent_item_colon";s:0:"";s:12:"search_items";s:0:"";s:13:"popular_items";s:0:"";s:26:"separate_items_with_commas";s:0:"";s:19:"add_or_remove_items";s:0:"";s:21:"choose_from_most_used";s:0:"";s:9:"not_found";s:0:"";s:8:"no_terms";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";}s:12:"object_types";a:1:{i:0;s:7:"product";}}s:12:"question_cat";a:21:{s:4:"name";s:12:"question_cat";s:5:"label";s:25:"Chuyên mục hỏi đáp";s:14:"singular_label";s:25:"Chuyên mục hỏi đáp";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:12:"hierarchical";s:4:"true";s:7:"show_ui";s:4:"true";s:12:"show_in_menu";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:11:"muc-hoi-dap";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:11:"muc-hoi-dap";s:17:"rewrite_withfront";s:1:"1";s:20:"rewrite_hierarchical";s:1:"1";s:17:"show_admin_column";s:4:"true";s:12:"show_in_rest";s:5:"false";s:18:"show_in_quick_edit";s:4:"true";s:9:"rest_base";s:0:"";s:6:"labels";a:18:{s:9:"menu_name";s:25:"Chuyên mục hỏi đáp";s:9:"all_items";s:10:"Tất cả";s:9:"edit_item";s:13:"Chỉnh sửa";s:9:"view_item";s:3:"Xem";s:11:"update_item";s:12:"Cập nhật";s:12:"add_new_item";s:11:"Thêm mới";s:13:"new_item_name";s:11:"Thêm mới";s:11:"parent_item";s:0:"";s:17:"parent_item_colon";s:0:"";s:12:"search_items";s:0:"";s:13:"popular_items";s:0:"";s:26:"separate_items_with_commas";s:0:"";s:19:"add_or_remove_items";s:0:"";s:21:"choose_from_most_used";s:0:"";s:9:"not_found";s:0:"";s:8:"no_terms";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";}s:12:"object_types";a:1:{i:0;s:7:"hoi_dap";}}}', 'yes'),
(655, 'wpseo_sitemap_70_cache_validator', '5qwWK', 'no'),
(658, 'wpseo_sitemap_101_cache_validator', '5qxZO', 'no'),
(659, 'wpseo_sitemap_104_cache_validator', '5qy1e', 'no'),
(664, 'wpseo_sitemap_106_cache_validator', '5qAze', 'no'),
(665, 'wpseo_sitemap_108_cache_validator', '5qAzD', 'no'),
(668, 'wpseo_sitemap_74_cache_validator', 'rXzQ', 'no'),
(673, 'wpseo_sitemap_112_cache_validator', '5qDZf', 'no'),
(677, 'product_cat_children', 'a:5:{i:58;a:3:{i:0;i:25;i:1;i:28;i:2;i:31;}i:51;a:1:{i:0;i:26;}i:22;a:5:{i:0;i:27;i:1;i:29;i:2;i:30;i:3;i:51;i:4;i:58;}i:23;a:6:{i:0;i:32;i:1;i:33;i:2;i:34;i:3;i:35;i:4;i:36;i:5;i:37;}i:24;a:4:{i:0;i:38;i:1;i:39;i:2;i:40;i:3;i:41;}}', 'yes'),
(678, 'wpseo_sitemap_110_cache_validator', '5qFNu', 'no'),
(681, 'product_acce_65_pl_term_image', '97', 'no'),
(682, '_product_acce_65_pl_term_image', 'field_594954ef3e476', 'no'),
(684, 'wpseo_sitemap_product_acce_cache_validator', '3LMzZ', 'no'),
(685, 'product_acce_66_pl_term_image', '98', 'no'),
(686, '_product_acce_66_pl_term_image', 'field_594954ef3e476', 'no'),
(688, 'product_acce_67_pl_term_image', '99', 'no'),
(689, '_product_acce_67_pl_term_image', 'field_594954ef3e476', 'no'),
(691, 'product_acce_68_pl_term_image', '100', 'no'),
(692, '_product_acce_68_pl_term_image', 'field_594954ef3e476', 'no'),
(694, 'product_acce_69_pl_term_image', '100', 'no'),
(695, '_product_acce_69_pl_term_image', 'field_594954ef3e476', 'no'),
(697, 'product_acce_70_pl_term_image', '100', 'no'),
(698, '_product_acce_70_pl_term_image', 'field_594954ef3e476', 'no'),
(700, 'product_acce_71_pl_term_image', '100', 'no'),
(701, '_product_acce_71_pl_term_image', 'field_594954ef3e476', 'no'),
(703, 'product_acce_72_pl_term_image', '100', 'no'),
(704, '_product_acce_72_pl_term_image', 'field_594954ef3e476', 'no'),
(714, 'wpseo_sitemap_accessory_cache_validator', '5y5NK', 'no'),
(731, 'category_73_pl_term_image', '116', 'no'),
(732, '_category_73_pl_term_image', 'field_594954ef3e476', 'no'),
(734, 'category_74_pl_term_image', '117', 'no'),
(735, '_category_74_pl_term_image', 'field_594954ef3e476', 'no'),
(737, 'category_75_pl_term_image', '118', 'no'),
(738, '_category_75_pl_term_image', 'field_594954ef3e476', 'no'),
(740, 'category_76_pl_term_image', '119', 'no'),
(741, '_category_76_pl_term_image', 'field_594954ef3e476', 'no'),
(773, 'core_updater.lock', '1498054831', 'no'),
(774, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:60:"https://downloads.wordpress.org/release/vi/wordpress-4.8.zip";s:6:"locale";s:2:"vi";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:60:"https://downloads.wordpress.org/release/vi/wordpress-4.8.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.8";s:7:"version";s:3:"4.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1498832533;s:15:"version_checked";s:3:"4.8";s:12:"translations";a:0:{}}', 'no'),
(776, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1498832537;s:7:"checked";a:1:{s:7:"mytheme";s:3:"1.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(781, 'woocommerce_permalinks', 'a:5:{s:13:"category_base";s:8:"danh-muc";s:8:"tag_base";s:7:"tu-khoa";s:14:"attribute_base";s:0:"";s:12:"product_base";s:9:"/san-pham";s:22:"use_verbose_page_rules";b:1;}', 'yes'),
(802, 'better-font-awesome_options', 'a:4:{s:7:"version";s:6:"latest";s:8:"minified";i:1;s:18:"remove_existing_fa";i:1;s:18:"hide_admin_notices";i:1;}', 'yes'),
(805, '_transient_timeout_bfa-css', '1500650510', 'no');
INSERT INTO `plbs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(806, '_transient_bfa-css', 'a:1:{s:5:"4.7.0";s:31000:"/*!\n *  Font Awesome 4.7.0 by @davegandy - http://fontawesome.io - @fontawesome\n *  License - http://fontawesome.io/license (Font: SIL OFL 1.1, CSS: MIT License)\n */@font-face{font-family:\'FontAwesome\';src:url(\'../fonts/fontawesome-webfont.eot?v=4.7.0\');src:url(\'../fonts/fontawesome-webfont.eot?#iefix&v=4.7.0\') format(\'embedded-opentype\'),url(\'../fonts/fontawesome-webfont.woff2?v=4.7.0\') format(\'woff2\'),url(\'../fonts/fontawesome-webfont.woff?v=4.7.0\') format(\'woff\'),url(\'../fonts/fontawesome-webfont.ttf?v=4.7.0\') format(\'truetype\'),url(\'../fonts/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular\') format(\'svg\');font-weight:normal;font-style:normal}.fa{display:inline-block;font:normal normal normal 14px/1 FontAwesome;font-size:inherit;text-rendering:auto;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.fa-lg{font-size:1.33333333em;line-height:.75em;vertical-align:-15%}.fa-2x{font-size:2em}.fa-3x{font-size:3em}.fa-4x{font-size:4em}.fa-5x{font-size:5em}.fa-fw{width:1.28571429em;text-align:center}.fa-ul{padding-left:0;margin-left:2.14285714em;list-style-type:none}.fa-ul>li{position:relative}.fa-li{position:absolute;left:-2.14285714em;width:2.14285714em;top:.14285714em;text-align:center}.fa-li.fa-lg{left:-1.85714286em}.fa-border{padding:.2em .25em .15em;border:solid .08em #eee;border-radius:.1em}.fa-pull-left{float:left}.fa-pull-right{float:right}.fa.fa-pull-left{margin-right:.3em}.fa.fa-pull-right{margin-left:.3em}.pull-right{float:right}.pull-left{float:left}.fa.pull-left{margin-right:.3em}.fa.pull-right{margin-left:.3em}.fa-spin{-webkit-animation:fa-spin 2s infinite linear;animation:fa-spin 2s infinite linear}.fa-pulse{-webkit-animation:fa-spin 1s infinite steps(8);animation:fa-spin 1s infinite steps(8)}@-webkit-keyframes fa-spin{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}@keyframes fa-spin{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}.fa-rotate-90{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=1)";-webkit-transform:rotate(90deg);-ms-transform:rotate(90deg);transform:rotate(90deg)}.fa-rotate-180{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=2)";-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg)}.fa-rotate-270{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=3)";-webkit-transform:rotate(270deg);-ms-transform:rotate(270deg);transform:rotate(270deg)}.fa-flip-horizontal{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=0, mirror=1)";-webkit-transform:scale(-1, 1);-ms-transform:scale(-1, 1);transform:scale(-1, 1)}.fa-flip-vertical{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1)";-webkit-transform:scale(1, -1);-ms-transform:scale(1, -1);transform:scale(1, -1)}:root .fa-rotate-90,:root .fa-rotate-180,:root .fa-rotate-270,:root .fa-flip-horizontal,:root .fa-flip-vertical{filter:none}.fa-stack{position:relative;display:inline-block;width:2em;height:2em;line-height:2em;vertical-align:middle}.fa-stack-1x,.fa-stack-2x{position:absolute;left:0;width:100%;text-align:center}.fa-stack-1x{line-height:inherit}.fa-stack-2x{font-size:2em}.fa-inverse{color:#fff}.fa-glass:before{content:"\\f000"}.fa-music:before{content:"\\f001"}.fa-search:before{content:"\\f002"}.fa-envelope-o:before{content:"\\f003"}.fa-heart:before{content:"\\f004"}.fa-star:before{content:"\\f005"}.fa-star-o:before{content:"\\f006"}.fa-user:before{content:"\\f007"}.fa-film:before{content:"\\f008"}.fa-th-large:before{content:"\\f009"}.fa-th:before{content:"\\f00a"}.fa-th-list:before{content:"\\f00b"}.fa-check:before{content:"\\f00c"}.fa-remove:before,.fa-close:before,.fa-times:before{content:"\\f00d"}.fa-search-plus:before{content:"\\f00e"}.fa-search-minus:before{content:"\\f010"}.fa-power-off:before{content:"\\f011"}.fa-signal:before{content:"\\f012"}.fa-gear:before,.fa-cog:before{content:"\\f013"}.fa-trash-o:before{content:"\\f014"}.fa-home:before{content:"\\f015"}.fa-file-o:before{content:"\\f016"}.fa-clock-o:before{content:"\\f017"}.fa-road:before{content:"\\f018"}.fa-download:before{content:"\\f019"}.fa-arrow-circle-o-down:before{content:"\\f01a"}.fa-arrow-circle-o-up:before{content:"\\f01b"}.fa-inbox:before{content:"\\f01c"}.fa-play-circle-o:before{content:"\\f01d"}.fa-rotate-right:before,.fa-repeat:before{content:"\\f01e"}.fa-refresh:before{content:"\\f021"}.fa-list-alt:before{content:"\\f022"}.fa-lock:before{content:"\\f023"}.fa-flag:before{content:"\\f024"}.fa-headphones:before{content:"\\f025"}.fa-volume-off:before{content:"\\f026"}.fa-volume-down:before{content:"\\f027"}.fa-volume-up:before{content:"\\f028"}.fa-qrcode:before{content:"\\f029"}.fa-barcode:before{content:"\\f02a"}.fa-tag:before{content:"\\f02b"}.fa-tags:before{content:"\\f02c"}.fa-book:before{content:"\\f02d"}.fa-bookmark:before{content:"\\f02e"}.fa-print:before{content:"\\f02f"}.fa-camera:before{content:"\\f030"}.fa-font:before{content:"\\f031"}.fa-bold:before{content:"\\f032"}.fa-italic:before{content:"\\f033"}.fa-text-height:before{content:"\\f034"}.fa-text-width:before{content:"\\f035"}.fa-align-left:before{content:"\\f036"}.fa-align-center:before{content:"\\f037"}.fa-align-right:before{content:"\\f038"}.fa-align-justify:before{content:"\\f039"}.fa-list:before{content:"\\f03a"}.fa-dedent:before,.fa-outdent:before{content:"\\f03b"}.fa-indent:before{content:"\\f03c"}.fa-video-camera:before{content:"\\f03d"}.fa-photo:before,.fa-image:before,.fa-picture-o:before{content:"\\f03e"}.fa-pencil:before{content:"\\f040"}.fa-map-marker:before{content:"\\f041"}.fa-adjust:before{content:"\\f042"}.fa-tint:before{content:"\\f043"}.fa-edit:before,.fa-pencil-square-o:before{content:"\\f044"}.fa-share-square-o:before{content:"\\f045"}.fa-check-square-o:before{content:"\\f046"}.fa-arrows:before{content:"\\f047"}.fa-step-backward:before{content:"\\f048"}.fa-fast-backward:before{content:"\\f049"}.fa-backward:before{content:"\\f04a"}.fa-play:before{content:"\\f04b"}.fa-pause:before{content:"\\f04c"}.fa-stop:before{content:"\\f04d"}.fa-forward:before{content:"\\f04e"}.fa-fast-forward:before{content:"\\f050"}.fa-step-forward:before{content:"\\f051"}.fa-eject:before{content:"\\f052"}.fa-chevron-left:before{content:"\\f053"}.fa-chevron-right:before{content:"\\f054"}.fa-plus-circle:before{content:"\\f055"}.fa-minus-circle:before{content:"\\f056"}.fa-times-circle:before{content:"\\f057"}.fa-check-circle:before{content:"\\f058"}.fa-question-circle:before{content:"\\f059"}.fa-info-circle:before{content:"\\f05a"}.fa-crosshairs:before{content:"\\f05b"}.fa-times-circle-o:before{content:"\\f05c"}.fa-check-circle-o:before{content:"\\f05d"}.fa-ban:before{content:"\\f05e"}.fa-arrow-left:before{content:"\\f060"}.fa-arrow-right:before{content:"\\f061"}.fa-arrow-up:before{content:"\\f062"}.fa-arrow-down:before{content:"\\f063"}.fa-mail-forward:before,.fa-share:before{content:"\\f064"}.fa-expand:before{content:"\\f065"}.fa-compress:before{content:"\\f066"}.fa-plus:before{content:"\\f067"}.fa-minus:before{content:"\\f068"}.fa-asterisk:before{content:"\\f069"}.fa-exclamation-circle:before{content:"\\f06a"}.fa-gift:before{content:"\\f06b"}.fa-leaf:before{content:"\\f06c"}.fa-fire:before{content:"\\f06d"}.fa-eye:before{content:"\\f06e"}.fa-eye-slash:before{content:"\\f070"}.fa-warning:before,.fa-exclamation-triangle:before{content:"\\f071"}.fa-plane:before{content:"\\f072"}.fa-calendar:before{content:"\\f073"}.fa-random:before{content:"\\f074"}.fa-comment:before{content:"\\f075"}.fa-magnet:before{content:"\\f076"}.fa-chevron-up:before{content:"\\f077"}.fa-chevron-down:before{content:"\\f078"}.fa-retweet:before{content:"\\f079"}.fa-shopping-cart:before{content:"\\f07a"}.fa-folder:before{content:"\\f07b"}.fa-folder-open:before{content:"\\f07c"}.fa-arrows-v:before{content:"\\f07d"}.fa-arrows-h:before{content:"\\f07e"}.fa-bar-chart-o:before,.fa-bar-chart:before{content:"\\f080"}.fa-twitter-square:before{content:"\\f081"}.fa-facebook-square:before{content:"\\f082"}.fa-camera-retro:before{content:"\\f083"}.fa-key:before{content:"\\f084"}.fa-gears:before,.fa-cogs:before{content:"\\f085"}.fa-comments:before{content:"\\f086"}.fa-thumbs-o-up:before{content:"\\f087"}.fa-thumbs-o-down:before{content:"\\f088"}.fa-star-half:before{content:"\\f089"}.fa-heart-o:before{content:"\\f08a"}.fa-sign-out:before{content:"\\f08b"}.fa-linkedin-square:before{content:"\\f08c"}.fa-thumb-tack:before{content:"\\f08d"}.fa-external-link:before{content:"\\f08e"}.fa-sign-in:before{content:"\\f090"}.fa-trophy:before{content:"\\f091"}.fa-github-square:before{content:"\\f092"}.fa-upload:before{content:"\\f093"}.fa-lemon-o:before{content:"\\f094"}.fa-phone:before{content:"\\f095"}.fa-square-o:before{content:"\\f096"}.fa-bookmark-o:before{content:"\\f097"}.fa-phone-square:before{content:"\\f098"}.fa-twitter:before{content:"\\f099"}.fa-facebook-f:before,.fa-facebook:before{content:"\\f09a"}.fa-github:before{content:"\\f09b"}.fa-unlock:before{content:"\\f09c"}.fa-credit-card:before{content:"\\f09d"}.fa-feed:before,.fa-rss:before{content:"\\f09e"}.fa-hdd-o:before{content:"\\f0a0"}.fa-bullhorn:before{content:"\\f0a1"}.fa-bell:before{content:"\\f0f3"}.fa-certificate:before{content:"\\f0a3"}.fa-hand-o-right:before{content:"\\f0a4"}.fa-hand-o-left:before{content:"\\f0a5"}.fa-hand-o-up:before{content:"\\f0a6"}.fa-hand-o-down:before{content:"\\f0a7"}.fa-arrow-circle-left:before{content:"\\f0a8"}.fa-arrow-circle-right:before{content:"\\f0a9"}.fa-arrow-circle-up:before{content:"\\f0aa"}.fa-arrow-circle-down:before{content:"\\f0ab"}.fa-globe:before{content:"\\f0ac"}.fa-wrench:before{content:"\\f0ad"}.fa-tasks:before{content:"\\f0ae"}.fa-filter:before{content:"\\f0b0"}.fa-briefcase:before{content:"\\f0b1"}.fa-arrows-alt:before{content:"\\f0b2"}.fa-group:before,.fa-users:before{content:"\\f0c0"}.fa-chain:before,.fa-link:before{content:"\\f0c1"}.fa-cloud:before{content:"\\f0c2"}.fa-flask:before{content:"\\f0c3"}.fa-cut:before,.fa-scissors:before{content:"\\f0c4"}.fa-copy:before,.fa-files-o:before{content:"\\f0c5"}.fa-paperclip:before{content:"\\f0c6"}.fa-save:before,.fa-floppy-o:before{content:"\\f0c7"}.fa-square:before{content:"\\f0c8"}.fa-navicon:before,.fa-reorder:before,.fa-bars:before{content:"\\f0c9"}.fa-list-ul:before{content:"\\f0ca"}.fa-list-ol:before{content:"\\f0cb"}.fa-strikethrough:before{content:"\\f0cc"}.fa-underline:before{content:"\\f0cd"}.fa-table:before{content:"\\f0ce"}.fa-magic:before{content:"\\f0d0"}.fa-truck:before{content:"\\f0d1"}.fa-pinterest:before{content:"\\f0d2"}.fa-pinterest-square:before{content:"\\f0d3"}.fa-google-plus-square:before{content:"\\f0d4"}.fa-google-plus:before{content:"\\f0d5"}.fa-money:before{content:"\\f0d6"}.fa-caret-down:before{content:"\\f0d7"}.fa-caret-up:before{content:"\\f0d8"}.fa-caret-left:before{content:"\\f0d9"}.fa-caret-right:before{content:"\\f0da"}.fa-columns:before{content:"\\f0db"}.fa-unsorted:before,.fa-sort:before{content:"\\f0dc"}.fa-sort-down:before,.fa-sort-desc:before{content:"\\f0dd"}.fa-sort-up:before,.fa-sort-asc:before{content:"\\f0de"}.fa-envelope:before{content:"\\f0e0"}.fa-linkedin:before{content:"\\f0e1"}.fa-rotate-left:before,.fa-undo:before{content:"\\f0e2"}.fa-legal:before,.fa-gavel:before{content:"\\f0e3"}.fa-dashboard:before,.fa-tachometer:before{content:"\\f0e4"}.fa-comment-o:before{content:"\\f0e5"}.fa-comments-o:before{content:"\\f0e6"}.fa-flash:before,.fa-bolt:before{content:"\\f0e7"}.fa-sitemap:before{content:"\\f0e8"}.fa-umbrella:before{content:"\\f0e9"}.fa-paste:before,.fa-clipboard:before{content:"\\f0ea"}.fa-lightbulb-o:before{content:"\\f0eb"}.fa-exchange:before{content:"\\f0ec"}.fa-cloud-download:before{content:"\\f0ed"}.fa-cloud-upload:before{content:"\\f0ee"}.fa-user-md:before{content:"\\f0f0"}.fa-stethoscope:before{content:"\\f0f1"}.fa-suitcase:before{content:"\\f0f2"}.fa-bell-o:before{content:"\\f0a2"}.fa-coffee:before{content:"\\f0f4"}.fa-cutlery:before{content:"\\f0f5"}.fa-file-text-o:before{content:"\\f0f6"}.fa-building-o:before{content:"\\f0f7"}.fa-hospital-o:before{content:"\\f0f8"}.fa-ambulance:before{content:"\\f0f9"}.fa-medkit:before{content:"\\f0fa"}.fa-fighter-jet:before{content:"\\f0fb"}.fa-beer:before{content:"\\f0fc"}.fa-h-square:before{content:"\\f0fd"}.fa-plus-square:before{content:"\\f0fe"}.fa-angle-double-left:before{content:"\\f100"}.fa-angle-double-right:before{content:"\\f101"}.fa-angle-double-up:before{content:"\\f102"}.fa-angle-double-down:before{content:"\\f103"}.fa-angle-left:before{content:"\\f104"}.fa-angle-right:before{content:"\\f105"}.fa-angle-up:before{content:"\\f106"}.fa-angle-down:before{content:"\\f107"}.fa-desktop:before{content:"\\f108"}.fa-laptop:before{content:"\\f109"}.fa-tablet:before{content:"\\f10a"}.fa-mobile-phone:before,.fa-mobile:before{content:"\\f10b"}.fa-circle-o:before{content:"\\f10c"}.fa-quote-left:before{content:"\\f10d"}.fa-quote-right:before{content:"\\f10e"}.fa-spinner:before{content:"\\f110"}.fa-circle:before{content:"\\f111"}.fa-mail-reply:before,.fa-reply:before{content:"\\f112"}.fa-github-alt:before{content:"\\f113"}.fa-folder-o:before{content:"\\f114"}.fa-folder-open-o:before{content:"\\f115"}.fa-smile-o:before{content:"\\f118"}.fa-frown-o:before{content:"\\f119"}.fa-meh-o:before{content:"\\f11a"}.fa-gamepad:before{content:"\\f11b"}.fa-keyboard-o:before{content:"\\f11c"}.fa-flag-o:before{content:"\\f11d"}.fa-flag-checkered:before{content:"\\f11e"}.fa-terminal:before{content:"\\f120"}.fa-code:before{content:"\\f121"}.fa-mail-reply-all:before,.fa-reply-all:before{content:"\\f122"}.fa-star-half-empty:before,.fa-star-half-full:before,.fa-star-half-o:before{content:"\\f123"}.fa-location-arrow:before{content:"\\f124"}.fa-crop:before{content:"\\f125"}.fa-code-fork:before{content:"\\f126"}.fa-unlink:before,.fa-chain-broken:before{content:"\\f127"}.fa-question:before{content:"\\f128"}.fa-info:before{content:"\\f129"}.fa-exclamation:before{content:"\\f12a"}.fa-superscript:before{content:"\\f12b"}.fa-subscript:before{content:"\\f12c"}.fa-eraser:before{content:"\\f12d"}.fa-puzzle-piece:before{content:"\\f12e"}.fa-microphone:before{content:"\\f130"}.fa-microphone-slash:before{content:"\\f131"}.fa-shield:before{content:"\\f132"}.fa-calendar-o:before{content:"\\f133"}.fa-fire-extinguisher:before{content:"\\f134"}.fa-rocket:before{content:"\\f135"}.fa-maxcdn:before{content:"\\f136"}.fa-chevron-circle-left:before{content:"\\f137"}.fa-chevron-circle-right:before{content:"\\f138"}.fa-chevron-circle-up:before{content:"\\f139"}.fa-chevron-circle-down:before{content:"\\f13a"}.fa-html5:before{content:"\\f13b"}.fa-css3:before{content:"\\f13c"}.fa-anchor:before{content:"\\f13d"}.fa-unlock-alt:before{content:"\\f13e"}.fa-bullseye:before{content:"\\f140"}.fa-ellipsis-h:before{content:"\\f141"}.fa-ellipsis-v:before{content:"\\f142"}.fa-rss-square:before{content:"\\f143"}.fa-play-circle:before{content:"\\f144"}.fa-ticket:before{content:"\\f145"}.fa-minus-square:before{content:"\\f146"}.fa-minus-square-o:before{content:"\\f147"}.fa-level-up:before{content:"\\f148"}.fa-level-down:before{content:"\\f149"}.fa-check-square:before{content:"\\f14a"}.fa-pencil-square:before{content:"\\f14b"}.fa-external-link-square:before{content:"\\f14c"}.fa-share-square:before{content:"\\f14d"}.fa-compass:before{content:"\\f14e"}.fa-toggle-down:before,.fa-caret-square-o-down:before{content:"\\f150"}.fa-toggle-up:before,.fa-caret-square-o-up:before{content:"\\f151"}.fa-toggle-right:before,.fa-caret-square-o-right:before{content:"\\f152"}.fa-euro:before,.fa-eur:before{content:"\\f153"}.fa-gbp:before{content:"\\f154"}.fa-dollar:before,.fa-usd:before{content:"\\f155"}.fa-rupee:before,.fa-inr:before{content:"\\f156"}.fa-cny:before,.fa-rmb:before,.fa-yen:before,.fa-jpy:before{content:"\\f157"}.fa-ruble:before,.fa-rouble:before,.fa-rub:before{content:"\\f158"}.fa-won:before,.fa-krw:before{content:"\\f159"}.fa-bitcoin:before,.fa-btc:before{content:"\\f15a"}.fa-file:before{content:"\\f15b"}.fa-file-text:before{content:"\\f15c"}.fa-sort-alpha-asc:before{content:"\\f15d"}.fa-sort-alpha-desc:before{content:"\\f15e"}.fa-sort-amount-asc:before{content:"\\f160"}.fa-sort-amount-desc:before{content:"\\f161"}.fa-sort-numeric-asc:before{content:"\\f162"}.fa-sort-numeric-desc:before{content:"\\f163"}.fa-thumbs-up:before{content:"\\f164"}.fa-thumbs-down:before{content:"\\f165"}.fa-youtube-square:before{content:"\\f166"}.fa-youtube:before{content:"\\f167"}.fa-xing:before{content:"\\f168"}.fa-xing-square:before{content:"\\f169"}.fa-youtube-play:before{content:"\\f16a"}.fa-dropbox:before{content:"\\f16b"}.fa-stack-overflow:before{content:"\\f16c"}.fa-instagram:before{content:"\\f16d"}.fa-flickr:before{content:"\\f16e"}.fa-adn:before{content:"\\f170"}.fa-bitbucket:before{content:"\\f171"}.fa-bitbucket-square:before{content:"\\f172"}.fa-tumblr:before{content:"\\f173"}.fa-tumblr-square:before{content:"\\f174"}.fa-long-arrow-down:before{content:"\\f175"}.fa-long-arrow-up:before{content:"\\f176"}.fa-long-arrow-left:before{content:"\\f177"}.fa-long-arrow-right:before{content:"\\f178"}.fa-apple:before{content:"\\f179"}.fa-windows:before{content:"\\f17a"}.fa-android:before{content:"\\f17b"}.fa-linux:before{content:"\\f17c"}.fa-dribbble:before{content:"\\f17d"}.fa-skype:before{content:"\\f17e"}.fa-foursquare:before{content:"\\f180"}.fa-trello:before{content:"\\f181"}.fa-female:before{content:"\\f182"}.fa-male:before{content:"\\f183"}.fa-gittip:before,.fa-gratipay:before{content:"\\f184"}.fa-sun-o:before{content:"\\f185"}.fa-moon-o:before{content:"\\f186"}.fa-archive:before{content:"\\f187"}.fa-bug:before{content:"\\f188"}.fa-vk:before{content:"\\f189"}.fa-weibo:before{content:"\\f18a"}.fa-renren:before{content:"\\f18b"}.fa-pagelines:before{content:"\\f18c"}.fa-stack-exchange:before{content:"\\f18d"}.fa-arrow-circle-o-right:before{content:"\\f18e"}.fa-arrow-circle-o-left:before{content:"\\f190"}.fa-toggle-left:before,.fa-caret-square-o-left:before{content:"\\f191"}.fa-dot-circle-o:before{content:"\\f192"}.fa-wheelchair:before{content:"\\f193"}.fa-vimeo-square:before{content:"\\f194"}.fa-turkish-lira:before,.fa-try:before{content:"\\f195"}.fa-plus-square-o:before{content:"\\f196"}.fa-space-shuttle:before{content:"\\f197"}.fa-slack:before{content:"\\f198"}.fa-envelope-square:before{content:"\\f199"}.fa-wordpress:before{content:"\\f19a"}.fa-openid:before{content:"\\f19b"}.fa-institution:before,.fa-bank:before,.fa-university:before{content:"\\f19c"}.fa-mortar-board:before,.fa-graduation-cap:before{content:"\\f19d"}.fa-yahoo:before{content:"\\f19e"}.fa-google:before{content:"\\f1a0"}.fa-reddit:before{content:"\\f1a1"}.fa-reddit-square:before{content:"\\f1a2"}.fa-stumbleupon-circle:before{content:"\\f1a3"}.fa-stumbleupon:before{content:"\\f1a4"}.fa-delicious:before{content:"\\f1a5"}.fa-digg:before{content:"\\f1a6"}.fa-pied-piper-pp:before{content:"\\f1a7"}.fa-pied-piper-alt:before{content:"\\f1a8"}.fa-drupal:before{content:"\\f1a9"}.fa-joomla:before{content:"\\f1aa"}.fa-language:before{content:"\\f1ab"}.fa-fax:before{content:"\\f1ac"}.fa-building:before{content:"\\f1ad"}.fa-child:before{content:"\\f1ae"}.fa-paw:before{content:"\\f1b0"}.fa-spoon:before{content:"\\f1b1"}.fa-cube:before{content:"\\f1b2"}.fa-cubes:before{content:"\\f1b3"}.fa-behance:before{content:"\\f1b4"}.fa-behance-square:before{content:"\\f1b5"}.fa-steam:before{content:"\\f1b6"}.fa-steam-square:before{content:"\\f1b7"}.fa-recycle:before{content:"\\f1b8"}.fa-automobile:before,.fa-car:before{content:"\\f1b9"}.fa-cab:before,.fa-taxi:before{content:"\\f1ba"}.fa-tree:before{content:"\\f1bb"}.fa-spotify:before{content:"\\f1bc"}.fa-deviantart:before{content:"\\f1bd"}.fa-soundcloud:before{content:"\\f1be"}.fa-database:before{content:"\\f1c0"}.fa-file-pdf-o:before{content:"\\f1c1"}.fa-file-word-o:before{content:"\\f1c2"}.fa-file-excel-o:before{content:"\\f1c3"}.fa-file-powerpoint-o:before{content:"\\f1c4"}.fa-file-photo-o:before,.fa-file-picture-o:before,.fa-file-image-o:before{content:"\\f1c5"}.fa-file-zip-o:before,.fa-file-archive-o:before{content:"\\f1c6"}.fa-file-sound-o:before,.fa-file-audio-o:before{content:"\\f1c7"}.fa-file-movie-o:before,.fa-file-video-o:before{content:"\\f1c8"}.fa-file-code-o:before{content:"\\f1c9"}.fa-vine:before{content:"\\f1ca"}.fa-codepen:before{content:"\\f1cb"}.fa-jsfiddle:before{content:"\\f1cc"}.fa-life-bouy:before,.fa-life-buoy:before,.fa-life-saver:before,.fa-support:before,.fa-life-ring:before{content:"\\f1cd"}.fa-circle-o-notch:before{content:"\\f1ce"}.fa-ra:before,.fa-resistance:before,.fa-rebel:before{content:"\\f1d0"}.fa-ge:before,.fa-empire:before{content:"\\f1d1"}.fa-git-square:before{content:"\\f1d2"}.fa-git:before{content:"\\f1d3"}.fa-y-combinator-square:before,.fa-yc-square:before,.fa-hacker-news:before{content:"\\f1d4"}.fa-tencent-weibo:before{content:"\\f1d5"}.fa-qq:before{content:"\\f1d6"}.fa-wechat:before,.fa-weixin:before{content:"\\f1d7"}.fa-send:before,.fa-paper-plane:before{content:"\\f1d8"}.fa-send-o:before,.fa-paper-plane-o:before{content:"\\f1d9"}.fa-history:before{content:"\\f1da"}.fa-circle-thin:before{content:"\\f1db"}.fa-header:before{content:"\\f1dc"}.fa-paragraph:before{content:"\\f1dd"}.fa-sliders:before{content:"\\f1de"}.fa-share-alt:before{content:"\\f1e0"}.fa-share-alt-square:before{content:"\\f1e1"}.fa-bomb:before{content:"\\f1e2"}.fa-soccer-ball-o:before,.fa-futbol-o:before{content:"\\f1e3"}.fa-tty:before{content:"\\f1e4"}.fa-binoculars:before{content:"\\f1e5"}.fa-plug:before{content:"\\f1e6"}.fa-slideshare:before{content:"\\f1e7"}.fa-twitch:before{content:"\\f1e8"}.fa-yelp:before{content:"\\f1e9"}.fa-newspaper-o:before{content:"\\f1ea"}.fa-wifi:before{content:"\\f1eb"}.fa-calculator:before{content:"\\f1ec"}.fa-paypal:before{content:"\\f1ed"}.fa-google-wallet:before{content:"\\f1ee"}.fa-cc-visa:before{content:"\\f1f0"}.fa-cc-mastercard:before{content:"\\f1f1"}.fa-cc-discover:before{content:"\\f1f2"}.fa-cc-amex:before{content:"\\f1f3"}.fa-cc-paypal:before{content:"\\f1f4"}.fa-cc-stripe:before{content:"\\f1f5"}.fa-bell-slash:before{content:"\\f1f6"}.fa-bell-slash-o:before{content:"\\f1f7"}.fa-trash:before{content:"\\f1f8"}.fa-copyright:before{content:"\\f1f9"}.fa-at:before{content:"\\f1fa"}.fa-eyedropper:before{content:"\\f1fb"}.fa-paint-brush:before{content:"\\f1fc"}.fa-birthday-cake:before{content:"\\f1fd"}.fa-area-chart:before{content:"\\f1fe"}.fa-pie-chart:before{content:"\\f200"}.fa-line-chart:before{content:"\\f201"}.fa-lastfm:before{content:"\\f202"}.fa-lastfm-square:before{content:"\\f203"}.fa-toggle-off:before{content:"\\f204"}.fa-toggle-on:before{content:"\\f205"}.fa-bicycle:before{content:"\\f206"}.fa-bus:before{content:"\\f207"}.fa-ioxhost:before{content:"\\f208"}.fa-angellist:before{content:"\\f209"}.fa-cc:before{content:"\\f20a"}.fa-shekel:before,.fa-sheqel:before,.fa-ils:before{content:"\\f20b"}.fa-meanpath:before{content:"\\f20c"}.fa-buysellads:before{content:"\\f20d"}.fa-connectdevelop:before{content:"\\f20e"}.fa-dashcube:before{content:"\\f210"}.fa-forumbee:before{content:"\\f211"}.fa-leanpub:before{content:"\\f212"}.fa-sellsy:before{content:"\\f213"}.fa-shirtsinbulk:before{content:"\\f214"}.fa-simplybuilt:before{content:"\\f215"}.fa-skyatlas:before{content:"\\f216"}.fa-cart-plus:before{content:"\\f217"}.fa-cart-arrow-down:before{content:"\\f218"}.fa-diamond:before{content:"\\f219"}.fa-ship:before{content:"\\f21a"}.fa-user-secret:before{content:"\\f21b"}.fa-motorcycle:before{content:"\\f21c"}.fa-street-view:before{content:"\\f21d"}.fa-heartbeat:before{content:"\\f21e"}.fa-venus:before{content:"\\f221"}.fa-mars:before{content:"\\f222"}.fa-mercury:before{content:"\\f223"}.fa-intersex:before,.fa-transgender:before{content:"\\f224"}.fa-transgender-alt:before{content:"\\f225"}.fa-venus-double:before{content:"\\f226"}.fa-mars-double:before{content:"\\f227"}.fa-venus-mars:before{content:"\\f228"}.fa-mars-stroke:before{content:"\\f229"}.fa-mars-stroke-v:before{content:"\\f22a"}.fa-mars-stroke-h:before{content:"\\f22b"}.fa-neuter:before{content:"\\f22c"}.fa-genderless:before{content:"\\f22d"}.fa-facebook-official:before{content:"\\f230"}.fa-pinterest-p:before{content:"\\f231"}.fa-whatsapp:before{content:"\\f232"}.fa-server:before{content:"\\f233"}.fa-user-plus:before{content:"\\f234"}.fa-user-times:before{content:"\\f235"}.fa-hotel:before,.fa-bed:before{content:"\\f236"}.fa-viacoin:before{content:"\\f237"}.fa-train:before{content:"\\f238"}.fa-subway:before{content:"\\f239"}.fa-medium:before{content:"\\f23a"}.fa-yc:before,.fa-y-combinator:before{content:"\\f23b"}.fa-optin-monster:before{content:"\\f23c"}.fa-opencart:before{content:"\\f23d"}.fa-expeditedssl:before{content:"\\f23e"}.fa-battery-4:before,.fa-battery:before,.fa-battery-full:before{content:"\\f240"}.fa-battery-3:before,.fa-battery-three-quarters:before{content:"\\f241"}.fa-battery-2:before,.fa-battery-half:before{content:"\\f242"}.fa-battery-1:before,.fa-battery-quarter:before{content:"\\f243"}.fa-battery-0:before,.fa-battery-empty:before{content:"\\f244"}.fa-mouse-pointer:before{content:"\\f245"}.fa-i-cursor:before{content:"\\f246"}.fa-object-group:before{content:"\\f247"}.fa-object-ungroup:before{content:"\\f248"}.fa-sticky-note:before{content:"\\f249"}.fa-sticky-note-o:before{content:"\\f24a"}.fa-cc-jcb:before{content:"\\f24b"}.fa-cc-diners-club:before{content:"\\f24c"}.fa-clone:before{content:"\\f24d"}.fa-balance-scale:before{content:"\\f24e"}.fa-hourglass-o:before{content:"\\f250"}.fa-hourglass-1:before,.fa-hourglass-start:before{content:"\\f251"}.fa-hourglass-2:before,.fa-hourglass-half:before{content:"\\f252"}.fa-hourglass-3:before,.fa-hourglass-end:before{content:"\\f253"}.fa-hourglass:before{content:"\\f254"}.fa-hand-grab-o:before,.fa-hand-rock-o:before{content:"\\f255"}.fa-hand-stop-o:before,.fa-hand-paper-o:before{content:"\\f256"}.fa-hand-scissors-o:before{content:"\\f257"}.fa-hand-lizard-o:before{content:"\\f258"}.fa-hand-spock-o:before{content:"\\f259"}.fa-hand-pointer-o:before{content:"\\f25a"}.fa-hand-peace-o:before{content:"\\f25b"}.fa-trademark:before{content:"\\f25c"}.fa-registered:before{content:"\\f25d"}.fa-creative-commons:before{content:"\\f25e"}.fa-gg:before{content:"\\f260"}.fa-gg-circle:before{content:"\\f261"}.fa-tripadvisor:before{content:"\\f262"}.fa-odnoklassniki:before{content:"\\f263"}.fa-odnoklassniki-square:before{content:"\\f264"}.fa-get-pocket:before{content:"\\f265"}.fa-wikipedia-w:before{content:"\\f266"}.fa-safari:before{content:"\\f267"}.fa-chrome:before{content:"\\f268"}.fa-firefox:before{content:"\\f269"}.fa-opera:before{content:"\\f26a"}.fa-internet-explorer:before{content:"\\f26b"}.fa-tv:before,.fa-television:before{content:"\\f26c"}.fa-contao:before{content:"\\f26d"}.fa-500px:before{content:"\\f26e"}.fa-amazon:before{content:"\\f270"}.fa-calendar-plus-o:before{content:"\\f271"}.fa-calendar-minus-o:before{content:"\\f272"}.fa-calendar-times-o:before{content:"\\f273"}.fa-calendar-check-o:before{content:"\\f274"}.fa-industry:before{content:"\\f275"}.fa-map-pin:before{content:"\\f276"}.fa-map-signs:before{content:"\\f277"}.fa-map-o:before{content:"\\f278"}.fa-map:before{content:"\\f279"}.fa-commenting:before{content:"\\f27a"}.fa-commenting-o:before{content:"\\f27b"}.fa-houzz:before{content:"\\f27c"}.fa-vimeo:before{content:"\\f27d"}.fa-black-tie:before{content:"\\f27e"}.fa-fonticons:before{content:"\\f280"}.fa-reddit-alien:before{content:"\\f281"}.fa-edge:before{content:"\\f282"}.fa-credit-card-alt:before{content:"\\f283"}.fa-codiepie:before{content:"\\f284"}.fa-modx:before{content:"\\f285"}.fa-fort-awesome:before{content:"\\f286"}.fa-usb:before{content:"\\f287"}.fa-product-hunt:before{content:"\\f288"}.fa-mixcloud:before{content:"\\f289"}.fa-scribd:before{content:"\\f28a"}.fa-pause-circle:before{content:"\\f28b"}.fa-pause-circle-o:before{content:"\\f28c"}.fa-stop-circle:before{content:"\\f28d"}.fa-stop-circle-o:before{content:"\\f28e"}.fa-shopping-bag:before{content:"\\f290"}.fa-shopping-basket:before{content:"\\f291"}.fa-hashtag:before{content:"\\f292"}.fa-bluetooth:before{content:"\\f293"}.fa-bluetooth-b:before{content:"\\f294"}.fa-percent:before{content:"\\f295"}.fa-gitlab:before{content:"\\f296"}.fa-wpbeginner:before{content:"\\f297"}.fa-wpforms:before{content:"\\f298"}.fa-envira:before{content:"\\f299"}.fa-universal-access:before{content:"\\f29a"}.fa-wheelchair-alt:before{content:"\\f29b"}.fa-question-circle-o:before{content:"\\f29c"}.fa-blind:before{content:"\\f29d"}.fa-audio-description:before{content:"\\f29e"}.fa-volume-control-phone:before{content:"\\f2a0"}.fa-braille:before{content:"\\f2a1"}.fa-assistive-listening-systems:before{content:"\\f2a2"}.fa-asl-interpreting:before,.fa-american-sign-language-interpreting:before{content:"\\f2a3"}.fa-deafness:before,.fa-hard-of-hearing:before,.fa-deaf:before{content:"\\f2a4"}.fa-glide:before{content:"\\f2a5"}.fa-glide-g:before{content:"\\f2a6"}.fa-signing:before,.fa-sign-language:before{content:"\\f2a7"}.fa-low-vision:before{content:"\\f2a8"}.fa-viadeo:before{content:"\\f2a9"}.fa-viadeo-square:before{content:"\\f2aa"}.fa-snapchat:before{content:"\\f2ab"}.fa-snapchat-ghost:before{content:"\\f2ac"}.fa-snapchat-square:before{content:"\\f2ad"}.fa-pied-piper:before{content:"\\f2ae"}.fa-first-order:before{content:"\\f2b0"}.fa-yoast:before{content:"\\f2b1"}.fa-themeisle:before{content:"\\f2b2"}.fa-google-plus-circle:before,.fa-google-plus-official:before{content:"\\f2b3"}.fa-fa:before,.fa-font-awesome:before{content:"\\f2b4"}.fa-handshake-o:before{content:"\\f2b5"}.fa-envelope-open:before{content:"\\f2b6"}.fa-envelope-open-o:before{content:"\\f2b7"}.fa-linode:before{content:"\\f2b8"}.fa-address-book:before{content:"\\f2b9"}.fa-address-book-o:before{content:"\\f2ba"}.fa-vcard:before,.fa-address-card:before{content:"\\f2bb"}.fa-vcard-o:before,.fa-address-card-o:before{content:"\\f2bc"}.fa-user-circle:before{content:"\\f2bd"}.fa-user-circle-o:before{content:"\\f2be"}.fa-user-o:before{content:"\\f2c0"}.fa-id-badge:before{content:"\\f2c1"}.fa-drivers-license:before,.fa-id-card:before{content:"\\f2c2"}.fa-drivers-license-o:before,.fa-id-card-o:before{content:"\\f2c3"}.fa-quora:before{content:"\\f2c4"}.fa-free-code-camp:before{content:"\\f2c5"}.fa-telegram:before{content:"\\f2c6"}.fa-thermometer-4:before,.fa-thermometer:before,.fa-thermometer-full:before{content:"\\f2c7"}.fa-thermometer-3:before,.fa-thermometer-three-quarters:before{content:"\\f2c8"}.fa-thermometer-2:before,.fa-thermometer-half:before{content:"\\f2c9"}.fa-thermometer-1:before,.fa-thermometer-quarter:before{content:"\\f2ca"}.fa-thermometer-0:before,.fa-thermometer-empty:before{content:"\\f2cb"}.fa-shower:before{content:"\\f2cc"}.fa-bathtub:before,.fa-s15:before,.fa-bath:before{content:"\\f2cd"}.fa-podcast:before{content:"\\f2ce"}.fa-window-maximize:before{content:"\\f2d0"}.fa-window-minimize:before{content:"\\f2d1"}.fa-window-restore:before{content:"\\f2d2"}.fa-times-rectangle:before,.fa-window-close:before{content:"\\f2d3"}.fa-times-rectangle-o:before,.fa-window-close-o:before{content:"\\f2d4"}.fa-bandcamp:before{content:"\\f2d5"}.fa-grav:before{content:"\\f2d6"}.fa-etsy:before{content:"\\f2d7"}.fa-imdb:before{content:"\\f2d8"}.fa-ravelry:before{content:"\\f2d9"}.fa-eercast:before{content:"\\f2da"}.fa-microchip:before{content:"\\f2db"}.fa-snowflake-o:before{content:"\\f2dc"}.fa-superpowers:before{content:"\\f2dd"}.fa-wpexplorer:before{content:"\\f2de"}.fa-meetup:before{content:"\\f2e0"}.sr-only{position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0, 0, 0, 0);border:0}.sr-only-focusable:active,.sr-only-focusable:focus{position:static;width:auto;height:auto;margin:0;overflow:visible;clip:auto}\n";}', 'no'),
(809, 'font_select', 'fa4', 'yes'),
(819, 'woocommerce_gateway_order', 'a:5:{s:3:"cod";i:0;s:4:"bacs";i:1;s:6:"cheque";i:2;s:6:"paypal";i:3;s:11:"ppec_paypal";i:4;}', 'yes'),
(861, '_site_transient_timeout_browser_5a44afb513ff98a874122cd432a844f1', '1498891407', 'no'),
(862, '_site_transient_browser_5a44afb513ff98a874122cd432a844f1', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"54.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(889, 'warrant_77_tax_content', '<ul>\r\n 	<li><strong>Phần cứng:</strong> 06 Tháng</li>\r\n 	<li><strong>Phần mềm:</strong> Hỗ trợ trọn đời</li>\r\n 	<li><strong>Màn hình &amp; nguồn:</strong> 06 Tháng (các nơi khác đa số không bh màn hình hoặc bh tính vào phí).</li>\r\n 	<li><strong>1 Đổi 1:</strong> Ngay tức thì trong vòng 30 ngày nếu máy lỗi phần cứng.</li>\r\n 	<li><strong>Ngoài thời hạn bảo hành:</strong> Miễn phí công sửa chữa.</li>\r\n 	<li><strong>Dùng thử 10 ngày miễn phí.</strong></li>\r\n 	<li><strong>3 Ngày hoàn tiền không cần lý do</strong></li>\r\n</ul>\r\nGiá gói bảo hành: <strong class="price_value">500.000 đ</strong>', 'no'),
(890, '_warrant_77_tax_content', 'field_594e109475a1f', 'no'),
(891, 'wpseo_sitemap_warrant_cache_validator', '4XNvT', 'no'),
(892, 'warrant_78_tax_content', '<ul>\r\n 	<li><strong>Phần cứng:</strong> 06 Tháng</li>\r\n 	<li><strong>Phần mềm:</strong> Hỗ trợ trọn đời</li>\r\n 	<li><strong>Màn hình &amp; nguồn:</strong> 06 Tháng (các nơi khác đa số không bh màn hình hoặc bh tính vào phí).</li>\r\n</ul>\r\nGiá gói bảo hành: 3<strong class="price_value">00.000 đ</strong>', 'no'),
(893, '_warrant_78_tax_content', 'field_594e109475a1f', 'no'),
(896, 'warrant_children', 'a:0:{}', 'yes'),
(912, '_transient_timeout_wc_related_112', '1498423165', 'no'),
(913, '_transient_wc_related_112', 'a:0:{}', 'no'),
(919, '_transient_timeout_wc_shipping_method_count_1_1497890275', '1500889875', 'no'),
(920, '_transient_wc_shipping_method_count_1_1497890275', '1', 'no'),
(933, '_transient_timeout_wc_upgrade_notice_3.0.8', '1498401624', 'no'),
(934, '_transient_wc_upgrade_notice_3.0.8', '', 'no'),
(948, 'woocommerce_db_version', '3.0.9', 'yes'),
(949, 'woocommerce_version', '3.0.9', 'yes'),
(975, 'wpseo_sitemap_pa_man-hinh_cache_validator', '4UYWI', 'no'),
(977, 'wpseo_sitemap_90_cache_validator', '4jD59', 'no'),
(997, '_transient_wc_attribute_taxonomies', 'a:12:{i:0;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"2";s:14:"attribute_name";s:8:"man-hinh";s:15:"attribute_label";s:10:"Màn hình";s:14:"attribute_type";s:4:"text";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:1;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"3";s:14:"attribute_name";s:3:"ram";s:15:"attribute_label";s:3:"RAM";s:14:"attribute_type";s:4:"text";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:2;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"4";s:14:"attribute_name";s:3:"cpu";s:15:"attribute_label";s:3:"CPU";s:14:"attribute_type";s:4:"text";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:3;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"5";s:14:"attribute_name";s:10:"camera-sau";s:15:"attribute_label";s:10:"Camera sau";s:14:"attribute_type";s:4:"text";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:4;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"6";s:14:"attribute_name";s:12:"camera-truoc";s:15:"attribute_label";s:15:"Camera trước";s:14:"attribute_type";s:4:"text";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:5;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"7";s:14:"attribute_name";s:12:"bo-nho-trong";s:15:"attribute_label";s:16:"Bộ nhớ trong";s:14:"attribute_type";s:4:"text";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:6;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"8";s:14:"attribute_name";s:12:"he-dieu-hanh";s:15:"attribute_label";s:18:"Hệ điều hành";s:14:"attribute_type";s:4:"text";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:7;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"9";s:14:"attribute_name";s:11:"chip-do-hoa";s:15:"attribute_label";s:16:"Chip đồ họa";s:14:"attribute_type";s:4:"text";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:8;O:8:"stdClass":6:{s:12:"attribute_id";s:2:"10";s:14:"attribute_name";s:17:"ho-tro-the-toi-da";s:15:"attribute_label";s:26:"Hỗ trợ thẻ tối đa";s:14:"attribute_type";s:4:"text";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:9;O:8:"stdClass":6:{s:12:"attribute_id";s:2:"11";s:14:"attribute_name";s:10:"so-khe-sim";s:15:"attribute_label";s:12:"Số khe SIM";s:14:"attribute_type";s:4:"text";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:10;O:8:"stdClass":6:{s:12:"attribute_id";s:2:"12";s:14:"attribute_name";s:14:"dung-luong-pin";s:15:"attribute_label";s:17:"Dung lượng Pin";s:14:"attribute_type";s:4:"text";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:11;O:8:"stdClass":6:{s:12:"attribute_id";s:2:"13";s:14:"attribute_name";s:7:"ket-noi";s:15:"attribute_label";s:11:"Kết nối";s:14:"attribute_type";s:4:"text";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}}', 'yes'),
(1039, '_transient_timeout_wc_related_94', '1498423412', 'no'),
(1040, '_transient_wc_related_94', 'a:2:{i:0;s:2:"92";i:1;s:2:"90";}', 'no'),
(1046, 'wpseo_sitemap_product_tag_cache_validator', '4jD5G', 'no'),
(1050, '_transient_orders-transient-version', '1498483399', 'yes'),
(1051, '_transient_timeout_wc_cbp_b5bba3b3e35b6284c5c6ec9facb2a844', '1500931094', 'no'),
(1052, '_transient_wc_cbp_b5bba3b3e35b6284c5c6ec9facb2a844', 'a:0:{}', 'no'),
(1057, '_transient_timeout_wc_cbp_22cdf2baf647f922e11502d1442eb2a2', '1500954771', 'no'),
(1058, '_transient_wc_cbp_22cdf2baf647f922e11502d1442eb2a2', 'a:0:{}', 'no'),
(1076, '_transient_timeout_wc_cbp_6c5d0b0d05940bcc3310ef91e38ac304', '1500959038', 'no'),
(1077, '_transient_wc_cbp_6c5d0b0d05940bcc3310ef91e38ac304', 'a:0:{}', 'no'),
(1107, 'yit_recently_activated', 'a:0:{}', 'yes'),
(1112, 'yith_wcmg_slider_direction', 'left', 'yes'),
(1113, 'yith_wcas_general_videobox', 'a:7:{s:11:"plugin_name";s:31:"YITH WooCommerce Zoom Magnifier";s:18:"title_first_column";s:30:"Discover The Advanced Features";s:24:"description_first_column";s:95:"Upgrade to the PREMIUM VERSION of YITH WOOCOMMERCE ZOOM MAGNIFIER to benefit from all features!";s:5:"video";a:3:{s:8:"video_id";s:9:"122436840";s:15:"video_image_url";s:132:"http://localhost/f5mobile/wp-content/plugins/yith-woocommerce-zoom-magnifier/assets/images/yith-woocommerce-zoom-magnifier-video.jpg";s:17:"video_description";s:79:"See YITH WooCommerce Zoom Magnifier plugin with full premium features in action";}s:19:"title_second_column";s:28:"Get Support and Pro Features";s:25:"description_second_column";s:206:"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product, and you will get one year of free updates and support through our platform available 24h/24.";s:6:"button";a:2:{s:4:"href";s:84:"http://yithemes.com/themes/plugins/yith-woocommerce-zoom-magnifier/?refer_id=1030585";s:5:"title";s:28:"Get Support and Pro Features";}}', 'yes'),
(1114, 'yith_wcmg_enable_plugin', 'yes', 'yes'),
(1115, 'yith_wcmg_enable_mobile', 'yes', 'yes'),
(1116, 'yith_wcmg_force_sizes', 'yes', 'yes'),
(1117, 'yith_wcmg_zoom_width', 'auto', 'yes'),
(1118, 'yith_wcmg_zoom_height', 'auto', 'yes'),
(1119, 'woocommerce_magnifier_image', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";s:2:"on";}', 'yes'),
(1120, 'yith_wcmg_zoom_position', 'right', 'yes'),
(1121, 'yith_wcmg_zoom_mobile_position', 'inside', 'yes'),
(1122, 'yith_wcmg_loading_label', 'Loading...', 'yes'),
(1123, 'yith_wcmg_lens_opacity', '0.5', 'yes'),
(1124, 'yith_wcmg_softfocus', 'no', 'yes'),
(1125, 'yith_wcmg_enableslider', 'yes', 'yes'),
(1126, 'yith_wcmg_slider_responsive', 'no', 'yes'),
(1127, 'yith_wcmg_slider_items', '5', 'yes'),
(1128, 'yith_wcmg_slider_circular', 'yes', 'yes'),
(1129, 'yith_wcmg_slider_infinite', 'yes', 'yes'),
(1159, 'category_88_pl_term_image', '', 'no'),
(1160, '_category_88_pl_term_image', 'field_594954ef3e476', 'no'),
(1162, 'category_89_pl_term_image', '', 'no'),
(1163, '_category_89_pl_term_image', 'field_594954ef3e476', 'no'),
(1176, '_site_transient_timeout_browser_c849de43a30d492cec817074490368ba', '1499019796', 'no'),
(1177, '_site_transient_browser_c849de43a30d492cec817074490368ba', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"58.0.3029.110";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(1211, 'woocommerce_ppec_paypal_settings', 'a:36:{s:7:"enabled";s:2:"no";s:5:"title";s:23:"PayPal Express Checkout";s:11:"description";s:85:"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.";s:16:"account_settings";s:0:"";s:11:"environment";s:4:"live";s:15:"api_credentials";s:0:"";s:12:"api_username";s:0:"";s:12:"api_password";s:0:"";s:13:"api_signature";s:0:"";s:15:"api_certificate";s:0:"";s:11:"api_subject";s:0:"";s:23:"sandbox_api_credentials";s:0:"";s:20:"sandbox_api_username";s:0:"";s:20:"sandbox_api_password";s:0:"";s:21:"sandbox_api_signature";s:0:"";s:23:"sandbox_api_certificate";s:0:"";s:19:"sandbox_api_subject";s:0:"";s:16:"display_settings";s:0:"";s:10:"brand_name";s:9:"F5 mobile";s:11:"button_size";s:5:"large";s:21:"cart_checkout_enabled";s:3:"yes";s:12:"mark_enabled";s:2:"no";s:14:"logo_image_url";s:0:"";s:16:"header_image_url";s:0:"";s:10:"page_style";s:0:"";s:12:"landing_page";s:5:"Login";s:14:"credit_enabled";s:2:"no";s:34:"checkout_on_single_product_enabled";s:2:"no";s:8:"advanced";s:0:"";s:5:"debug";s:2:"no";s:14:"invoice_prefix";s:3:"WC-";s:15:"require_billing";s:2:"no";s:20:"require_phone_number";s:2:"no";s:13:"paymentaction";s:4:"sale";s:16:"instant_payments";s:2:"no";s:26:"subtotal_mismatch_behavior";s:3:"add";}', 'yes'),
(1212, 'wc_gateway_ppce_prompt_to_connect', 'PayPal Express Checkout is almost ready. To get started, <a href="http://localhost/f5mobile/wp-admin/admin.php?page=wc-settings&#038;tab=checkout&#038;section=ppec_paypal">connect your PayPal account</a>.', 'yes'),
(1224, 'woocommerce_bacs_accounts', 'a:1:{i:0;a:6:{s:12:"account_name";s:13:"Trần Văn A";s:14:"account_number";s:7:"1344535";s:9:"bank_name";s:15:"Ngân hành ACB";s:9:"sort_code";s:0:"";s:4:"iban";s:0:"";s:3:"bic";s:0:"";}}', 'yes'),
(1238, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:3:"p=6";i:1;s:10:"/gio-hang/";i:2;s:3:"p=7";i:3;s:12:"/thanh-toan/";i:4;s:3:"p=8";i:5;s:11:"/tai-khoan/";}', 'yes'),
(1258, 'product_acce_91_pl_term_image', '', 'no'),
(1259, '_product_acce_91_pl_term_image', 'field_594954ef3e476', 'no'),
(1268, 'product_acce_children', 'a:1:{i:91;a:8:{i:0;i:65;i:1;i:66;i:2;i:67;i:3;i:68;i:4;i:69;i:5;i:70;i:6;i:71;i:7;i:72;}}', 'yes'),
(1299, 'page_for_posts', '166', 'yes'),
(1303, '_transient_timeout_wc_cbp_5315e58437544336663d4e743b634a39', '1501075127', 'no'),
(1304, '_transient_wc_cbp_5315e58437544336663d4e743b634a39', 'a:0:{}', 'no'),
(1305, '_transient_timeout_wc_cbp_6630636d9ea3de3b7443c0f1028f241f', '1501075602', 'no'),
(1306, '_transient_wc_cbp_6630636d9ea3de3b7443c0f1028f241f', 'a:0:{}', 'no'),
(1311, '_transient_timeout_wc_term_counts', '1501253558', 'no'),
(1312, '_transient_wc_term_counts', 'a:17:{i:24;s:1:"4";i:23;s:1:"4";i:34;s:1:"4";i:37;s:1:"1";i:22;s:1:"6";i:25;s:1:"3";i:28;s:1:"1";i:26;s:1:"4";i:30;s:1:"5";i:27;s:1:"3";i:31;s:1:"4";i:38;s:1:"4";i:58;s:1:"5";i:51;s:1:"4";i:29;s:0:"";i:86;s:1:"1";i:87;s:1:"1";}', 'no'),
(1317, 'wpseo_sitemap_68_cache_validator', '53djN', 'no'),
(1319, 'category_children', 'a:2:{i:46;a:1:{i:0;i:47;}i:56;a:4:{i:0;i:73;i:1;i:74;i:2;i:75;i:3;i:76;}}', 'yes'),
(1320, 'wpseo_sitemap_72_cache_validator', '53m7Z', 'no'),
(1326, 'wpseo_sitemap_question_cat_cache_validator', '4QToW', 'no'),
(1328, 'question_cat_children', 'a:1:{i:92;a:2:{i:0;i:93;i:1;i:94;}}', 'yes'),
(1329, '_transient_timeout_wc_products_will_display_91_1498490082', '1501426228', 'no'),
(1330, '_transient_wc_products_will_display_91_1498490082', '', 'no'),
(1335, 'wpseo_sitemap_hoi_dap_cache_validator', '4QTpf', 'no'),
(1344, 'wpseo_sitemap_179_cache_validator', '5EC7n', 'no'),
(1361, '_transient_timeout_wc_low_stock_count', '1501166859', 'no'),
(1362, '_transient_wc_low_stock_count', '0', 'no'),
(1363, '_transient_timeout_wc_outofstock_count', '1501166859', 'no'),
(1364, '_transient_wc_outofstock_count', '0', 'no'),
(1365, 'wpseo_sitemap_174_cache_validator', '4QToo', 'no'),
(1370, '_transient_timeout_wc_products_will_display_69_1498490082', '1501168804', 'no'),
(1371, '_transient_wc_products_will_display_69_1498490082', '1', 'no'),
(1372, '_transient_timeout_wc_products_will_display_70_1498490082', '1501168806', 'no'),
(1373, '_transient_wc_products_will_display_70_1498490082', '1', 'no'),
(1374, '_transient_timeout_wc_products_will_display_71_1498490082', '1501426236', 'no'),
(1375, '_transient_wc_products_will_display_71_1498490082', '1', 'no'),
(1376, '_transient_timeout_wc_products_will_display_72_1498490082', '1501168810', 'no'),
(1377, '_transient_wc_products_will_display_72_1498490082', '1', 'no'),
(1382, 'wpseo_sitemap_chinh_sach_cache_validator', 'szir', 'no'),
(1384, 'wpseo_sitemap_126_cache_validator', '56V6C', 'no'),
(1385, 'wpseo_sitemap_127_cache_validator', 'pZwq', 'no'),
(1386, 'wpseo_sitemap_128_cache_validator', 'pZwX', 'no'),
(1401, 'email-subscribers', '2.9', 'yes'),
(1402, 'ig_es_fromname', 'Admin', 'yes'),
(1403, 'ig_es_fromemail', 'skyfrost.07@gmail.com', 'yes'),
(1404, 'ig_es_emailtype', 'WP HTML MAIL', 'yes'),
(1405, 'ig_es_notifyadmin', 'NO', 'yes'),
(1406, 'ig_es_adminemail', 'skyfrost.07@gmail.com', 'yes'),
(1407, 'ig_es_admin_new_sub_subject', 'Tiêu đề mail gửi cho Admin khi có người đăng ký', 'yes'),
(1408, 'ig_es_admin_new_sub_content', 'Chào Admin, \r\n\r\nChúng tôi nhận được một yêu cầu đăng ký nhận thông tin cập nhật từ website của chúng ta.\r\n\r\nHọ tên : ###NAME###\r\nEmail: ###EMAIL###\r\n\r\nCãm ơn!\r\nShop Name', 'yes'),
(1409, 'ig_es_welcomeemail', 'NO', 'yes'),
(1410, 'ig_es_welcomesubject', 'Tiêu đề email chào mừng đã đăng ký thành công', 'yes'),
(1411, 'ig_es_welcomecontent', 'Chào bạn ###NAME###, \r\n\r\nChúng tôi đã nhận được xác nhận yêu cầu đăng ký nhận bản tin từ bạn.\r\n\r\nCãm ơn bạn!\r\nShop name\r\n\r\nKhông muốn nhận bản tin từ chúng tôi?. vui lòng <a href=\\\'###LINK###\\\'>chọn vào đây</a> để hủy đăng ký', 'yes'),
(1412, 'ig_es_optintype', 'Double Opt In', 'yes'),
(1413, 'ig_es_confirmsubject', 'Tiêu đề email xác nhận đăng ký nhận bản tin gửi cho ngưởi đăng ký', 'yes'),
(1414, 'ig_es_confirmcontent', 'Xin chào ###NAME###, \r\n\r\nBạn đã gửi yêu cầu đăng ký nhận bản tin khuyễn mãi của chúng tôi. Vui lòng xác nhận bằng cách <a href=\\\'###LINK###\\\'>chọn vào đây</a>.\r\n\r\nNếu không phải bạn đăng ký, vui lòng chọn vào đường dẫn sau:  ###LINK### \r\n\r\nThank You\r\nShop name', 'yes'),
(1415, 'ig_es_optinlink', 'http://localhost/f5mobile/?es=optin&db=###DBID###&email=###EMAIL###&guid=###GUID###', 'yes'),
(1416, 'ig_es_unsublink', 'http://localhost/f5mobile/?es=unsubscribe&db=###DBID###&email=###EMAIL###&guid=###GUID###', 'yes'),
(1417, 'ig_es_unsubcontent', 'No longer interested in emails from F5 mobile?. Please <a href=\\\'###LINK###\\\'>click here</a> to unsubscribe', 'yes'),
(1418, 'ig_es_unsubtext', 'Thank You, You have been successfully unsubscribed. You will no longer hear from us.', 'yes'),
(1419, 'ig_es_successmsg', 'Cãm ơn bạn đã đăng ký nhận bản tin khuyễn mãi của chúng tôi', 'yes'),
(1420, 'ig_es_suberror', 'Oops.. This subscription cant be completed, sorry. The email address is blocked or already subscribed. Thank you.', 'yes'),
(1421, 'ig_es_unsuberror', 'Oops.. We are getting some technical error. Please try again or contact admin.', 'yes'),
(1424, 'widget_email-subscribers', 'a:2:{i:3;a:4:{s:8:"es_title";s:27:"Đăng ký nhận bản tin";s:7:"es_desc";s:148:"Hãy điền email và đăng ký nhận bản tin từ Shop name. Chúng tôi sẽ gửi các thông tin khuyến mại qua email cho khách hàng!";s:7:"es_name";s:3:"YES";s:8:"es_group";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(1425, 'ig_es_sync_wp_users', 's:4:"b:0;";', 'yes'),
(1426, 'current_sa_email_subscribers_db_version', '3.3', 'yes'),
(1427, 'ig_es_post_image_size', 'full', 'yes'),
(1428, 'ig_es_sentreport', 'Xin chào Admin,\r\n\r\nEmai đã đươc gưởi tới ###COUNT### email(s). Vui lòng xem chi tiết.\r\n\r\nUnique ID : ###UNIQUE### \r\nStart Time: ###STARTTIME### \r\nEnd Time: ###ENDTIME### \r\n\r\nĐể biết thêm thông tin vui lòng đăng nhập vào trang quản trị của bạn (Vào phần Report menu Email Subscribers)\r\n\r\nThank You. \r\n', 'yes'),
(1429, 'ig_es_sentreport_subject', 'Tiêu đề mail gửi báo cáo cho Admin', 'yes'),
(1430, 'ig_es_cronurl', 'http://localhost/f5mobile/?es=cron&guid=zyuqvl-baijcy-rchxsb-jbaqig-eopuhv', 'yes'),
(1431, 'ig_es_cron_mailcount', '50', 'yes'),
(1432, 'ig_es_cron_adminmail', 'Hi Admin, \r\n\r\nCron URL has been triggered successfully on ###DATE### for the email ###SUBJECT###. And it sent email to ###COUNT### recipient. \r\n\r\nThank You', 'yes'),
(1434, 'es_roles_subscriber', 'manage_options', 'yes'),
(1435, 'es_roles_mail', 'manage_options', 'yes'),
(1436, 'es_roles_notification', 'manage_options', 'yes'),
(1437, 'es_roles_sendmail', 'manage_options', 'yes'),
(1438, 'es_roles_sentmail', 'manage_options', 'yes'),
(1439, 'ig_es_rolesandcapabilities', 'a:5:{s:19:"es_roles_subscriber";s:14:"manage_options";s:13:"es_roles_mail";s:14:"manage_options";s:21:"es_roles_notification";s:14:"manage_options";s:17:"es_roles_sendmail";s:14:"manage_options";s:17:"es_roles_sentmail";s:14:"manage_options";}', 'yes'),
(1444, '_transient_timeout_external_ip_address_::1', '1499192718', 'no'),
(1445, '_transient_external_ip_address_::1', '42.112.135.85', 'no');
INSERT INTO `plbs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1453, '_site_transient_timeout_available_translations', '1498669049', 'no'),
(1454, '_site_transient_available_translations', 'a:108:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-23 21:35:47";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-28 10:32:29";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.5/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-17 20:31:44";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:60:"https://downloads.wordpress.org/translation/core/4.8/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-18 19:16:01";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-04 16:58:43";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-16 11:47:56";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 08:46:26";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-14 13:21:24";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-14 23:24:44";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsæt";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 08:50:23";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.8/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 21:25:12";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-14 00:09:35";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:69:"https://downloads.wordpress.org/translation/core/4.8/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-23 12:43:20";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-21 18:05:57";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-17 08:09:19";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:53:43";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 07:18:00";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 05:14:35";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-23 16:48:27";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-27 10:36:23";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-16 17:22:41";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-22 23:32:30";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-20 00:55:30";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-23 23:02:31";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-28 20:09:49";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 16:37:11";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-21 08:00:44";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-09 15:50:45";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-08 18:25:22";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 08:47:21";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-23 06:47:57";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-27 08:48:19";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-17 20:40:15";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-07 12:07:46";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 13:33:29";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-17 08:25:42";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-23 07:33:38";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:39";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-08 21:11:01";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-13 13:55:54";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 07:29:14";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-25 11:16:15";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-12 09:20:11";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:13";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-19 07:08:35";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:25";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-09 11:50:13";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-03-17 20:40:40";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-21 12:45:17";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-03-05 09:45:10";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.18";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.18/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-26 11:11:30";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-23 11:30:58";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-26 13:23:34";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-20 17:04:00";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-02-16 13:24:21";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7.5/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-08 13:05:53";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-02 13:47:38";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-23 09:31:28";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.18";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.18/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-23 10:24:37";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-21 17:29:18";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-18 18:31:34";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 13:54:09";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 09:02:13";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-08 15:29:14";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-24 08:35:30";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-08 11:06:53";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-27 07:35:06";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:43";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-19 13:54:12";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-05 09:23:39";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-17 19:23:40";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-03 00:28:41";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-13 09:55:38";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 11:24:18";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-17 17:23:10";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:45";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 13:17:37";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'no'),
(1462, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1498674487', 'no'),
(1463, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4343;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2482;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2352;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2162;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1820;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1584;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1561;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1428;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1343;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1328;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1321;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1269;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1261;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1110;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1050;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1040;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:989;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:930;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:816;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:794;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:789;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:765;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:760;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:667;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:658;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:657;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:648;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:645;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:635;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:632;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:611;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:594;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:590;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:582;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:580;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:569;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:569;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:556;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:551;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:537;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:531;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:530;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:518;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:506;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:499;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:492;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:490;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:476;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:467;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:466;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:465;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:463;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:441;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:437;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:435;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:434;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:433;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:421;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:417;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:410;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:405;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:402;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:398;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:397;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:396;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:394;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:378;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:376;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:368;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:367;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:350;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:340;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:331;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:331;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:330;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:324;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:323;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:322;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:320;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:320;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:316;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:314;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:306;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:298;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:296;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:290;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:289;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:288;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:288;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:283;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:282;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:277;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:275;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:275;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:273;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:270;}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";i:265;}s:7:"captcha";a:3:{s:4:"name";s:7:"captcha";s:4:"slug";s:7:"captcha";s:5:"count";i:264;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:263;}s:5:"cache";a:3:{s:4:"name";s:5:"cache";s:4:"slug";s:5:"cache";s:5:"count";i:263;}}', 'no'),
(1467, '_transient_timeout_wc_cbp_2fb675eee5a8e883681f1586a108a46e', '1501255887', 'no'),
(1468, '_transient_wc_cbp_2fb675eee5a8e883681f1586a108a46e', 'a:6:{i:0;i:112;i:1;i:86;i:2;i:88;i:3;i:112;i:4;i:86;i:5;i:88;}', 'no');
INSERT INTO `plbs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1470, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1498835428;s:8:"response";a:2:{s:27:"woocommerce/woocommerce.php";O:8:"stdClass":8:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.1.0";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.1.0.zip";s:6:"tested";s:3:"4.8";s:13:"compatibility";O:8:"stdClass":0:{}}s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";O:8:"stdClass":8:{s:2:"id";s:57:"w.org/plugins/woocommerce-gateway-paypal-express-checkout";s:4:"slug";s:43:"woocommerce-gateway-paypal-express-checkout";s:6:"plugin";s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";s:11:"new_version";s:5:"1.4.1";s:3:"url";s:74:"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/";s:7:"package";s:92:"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.4.1.zip";s:6:"tested";s:5:"4.7.5";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:13:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.11";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.11.zip";}s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.3.2.zip";}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":6:{s:2:"id";s:33:"w.org/plugins/custom-post-type-ui";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.5.4";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.4.zip";}s:39:"email-subscribers/email-subscribers.php";O:8:"stdClass":6:{s:2:"id";s:31:"w.org/plugins/email-subscribers";s:4:"slug";s:17:"email-subscribers";s:6:"plugin";s:39:"email-subscribers/email-subscribers.php";s:11:"new_version";s:5:"3.3.1";s:3:"url";s:48:"https://wordpress.org/plugins/email-subscribers/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/email-subscribers.3.3.1.zip";}s:45:"ewww-image-optimizer/ewww-image-optimizer.php";O:8:"stdClass":6:{s:2:"id";s:34:"w.org/plugins/ewww-image-optimizer";s:4:"slug";s:20:"ewww-image-optimizer";s:6:"plugin";s:45:"ewww-image-optimizer/ewww-image-optimizer.php";s:11:"new_version";s:5:"3.4.1";s:3:"url";s:51:"https://wordpress.org/plugins/ewww-image-optimizer/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/ewww-image-optimizer.3.4.1.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:41:"better-wp-security/better-wp-security.php";O:8:"stdClass":6:{s:2:"id";s:32:"w.org/plugins/better-wp-security";s:4:"slug";s:18:"better-wp-security";s:6:"plugin";s:41:"better-wp-security/better-wp-security.php";s:11:"new_version";s:5:"6.2.1";s:3:"url";s:49:"https://wordpress.org/plugins/better-wp-security/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/better-wp-security.6.2.1.zip";}s:25:"kk-star-ratings/index.php";O:8:"stdClass":6:{s:2:"id";s:29:"w.org/plugins/kk-star-ratings";s:4:"slug";s:15:"kk-star-ratings";s:6:"plugin";s:25:"kk-star-ratings/index.php";s:11:"new_version";s:3:"2.6";s:3:"url";s:46:"https://wordpress.org/plugins/kk-star-ratings/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/kk-star-ratings.2.6.zip";}s:25:"option-tree/ot-loader.php";O:8:"stdClass":6:{s:2:"id";s:25:"w.org/plugins/option-tree";s:4:"slug";s:11:"option-tree";s:6:"plugin";s:25:"option-tree/ot-loader.php";s:11:"new_version";s:5:"2.6.0";s:3:"url";s:42:"https://wordpress.org/plugins/option-tree/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/option-tree.2.6.0.zip";}s:37:"tinymce-advanced/tinymce-advanced.php";O:8:"stdClass":6:{s:2:"id";s:30:"w.org/plugins/tinymce-advanced";s:4:"slug";s:16:"tinymce-advanced";s:6:"plugin";s:37:"tinymce-advanced/tinymce-advanced.php";s:11:"new_version";s:5:"4.6.3";s:3:"url";s:47:"https://wordpress.org/plugins/tinymce-advanced/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/tinymce-advanced.4.6.3.zip";}s:33:"w3-total-cache/w3-total-cache.php";O:8:"stdClass":6:{s:2:"id";s:28:"w.org/plugins/w3-total-cache";s:4:"slug";s:14:"w3-total-cache";s:6:"plugin";s:33:"w3-total-cache/w3-total-cache.php";s:11:"new_version";s:7:"0.9.5.4";s:3:"url";s:45:"https://wordpress.org/plugins/w3-total-cache/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/w3-total-cache.0.9.5.4.zip";}s:40:"yith-woocommerce-zoom-magnifier/init.php";O:8:"stdClass":6:{s:2:"id";s:45:"w.org/plugins/yith-woocommerce-zoom-magnifier";s:4:"slug";s:31:"yith-woocommerce-zoom-magnifier";s:6:"plugin";s:40:"yith-woocommerce-zoom-magnifier/init.php";s:11:"new_version";s:6:"1.2.29";s:3:"url";s:62:"https://wordpress.org/plugins/yith-woocommerce-zoom-magnifier/";s:7:"package";s:81:"https://downloads.wordpress.org/plugin/yith-woocommerce-zoom-magnifier.1.2.29.zip";}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":6:{s:2:"id";s:27:"w.org/plugins/wordpress-seo";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:3:"4.9";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/wordpress-seo.4.9.zip";}}}', 'no'),
(1471, 'kksr_enable', '1', 'yes'),
(1472, 'kksr_clear', '1', 'yes'),
(1473, 'kksr_show_in_home', '0', 'yes'),
(1474, 'kksr_show_in_archives', '0', 'yes'),
(1475, 'kksr_show_in_posts', '0', 'yes'),
(1476, 'kksr_show_in_pages', '0', 'yes'),
(1477, 'kksr_unique', '1', 'yes'),
(1478, 'kksr_position', 'top-left', 'yes'),
(1479, 'kksr_legend', '[avg] ([per]) [total] đánh giá', 'yes'),
(1480, 'kksr_init_msg', 'Đánh giá', 'yes'),
(1481, 'kksr_column', '1', 'yes'),
(1482, 'kksr_ver', '2.5.1', 'yes'),
(1483, 'kksr_stars', '5', 'yes'),
(1484, 'kksr_stars_w', '24', 'yes'),
(1485, 'kksr_stars_h', '24', 'yes'),
(1486, 'kksr_stars_gray', 'http://localhost/f5mobile/wp-content/plugins/kk-star-ratings/gray.png', 'yes'),
(1487, 'kksr_stars_yellow', 'http://localhost/f5mobile/wp-content/plugins/kk-star-ratings/yellow.png', 'yes'),
(1488, 'kksr_stars_orange', 'http://localhost/f5mobile/wp-content/plugins/kk-star-ratings/orange.png', 'yes'),
(1489, 'kksr_js_fuelspeed', '400', 'yes'),
(1490, 'kksr_js_thankyou', 'Cãm ơn đánh giá của bạn', 'yes'),
(1491, 'kksr_js_error', 'Có lỗi xảy ra, vui lòng thử lại sau!', 'yes'),
(1492, 'kksr_tooltip', '1', 'yes'),
(1493, 'kksr_tooltips', 'a:5:{i:0;a:2:{s:3:"tip";s:0:"";s:5:"color";s:7:"#ffffff";}i:1;a:2:{s:3:"tip";s:0:"";s:5:"color";s:7:"#ffffff";}i:2;a:2:{s:3:"tip";s:0:"";s:5:"color";s:7:"#ffffff";}i:3;a:2:{s:3:"tip";s:0:"";s:5:"color";s:7:"#ffffff";}i:4;a:2:{s:3:"tip";s:0:"";s:5:"color";s:7:"#ffffff";}}', 'yes'),
(1494, 'widget_bhittaniplugin_kkstarratings_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1495, 'kksr_disable_in_archives', '', 'yes'),
(1496, 'kksr_exclude_categories', '', 'yes'),
(1497, 'kksr_grs', '', 'yes'),
(1498, 'kksr_reset', 'a:1:{i:112;s:1:"0";}', 'yes'),
(1499, '_site_transient_timeout_itsec_wp_upload_dir', '1498918926', 'no'),
(1500, '_site_transient_itsec_wp_upload_dir', 'a:6:{s:4:"path";s:49:"E:\\wamp64\\www\\f5mobile/wp-content/uploads/2017/06";s:3:"url";s:52:"http://localhost/f5mobile/wp-content/uploads/2017/06";s:6:"subdir";s:8:"/2017/06";s:7:"basedir";s:41:"E:\\wamp64\\www\\f5mobile/wp-content/uploads";s:7:"baseurl";s:44:"http://localhost/f5mobile/wp-content/uploads";s:5:"error";b:0;}', 'no'),
(1502, '_site_transient_timeout_theme_roots', '1498834336', 'no'),
(1503, '_site_transient_theme_roots', 'a:1:{s:7:"mytheme";s:7:"/themes";}', 'no'),
(1504, '_transient_timeout_yit_panel_sidebar_remote_widgets', '1499229125', 'no'),
(1505, '_transient_yit_panel_sidebar_remote_widgets', 'a:0:{}', 'no'),
(1506, '_transient_timeout_yit_panel_sidebar_remote_widgets_update', '1498919640', 'no'),
(1507, '_transient_yit_panel_sidebar_remote_widgets_update', '1', 'no'),
(1508, '_transient_timeout_wpseo-dashboard-totals', '1498919640', 'no'),
(1509, '_transient_wpseo-dashboard-totals', 'a:1:{i:1;a:1:{i:3;a:5:{s:8:"seo_rank";s:2:"na";s:5:"title";s:27:"Posts without focus keyword";s:5:"class";s:15:"wpseo-glance-na";s:10:"icon_class";s:2:"na";s:5:"count";s:1:"5";}}}', 'no'),
(1510, '_transient_timeout_wc_report_sales_by_date', '1498921822', 'no'),
(1511, '_transient_wc_report_sales_by_date', 'a:40:{s:32:"55a9b11150cc0bc0845d1bdac9d914d3";a:1:{i:0;O:8:"stdClass":2:{s:5:"count";s:1:"4";s:9:"post_date";s:19:"2017-06-26 13:12:53";}}s:32:"ed595a767fe400516a65e51dc5065b9a";a:0:{}s:32:"d43c66ae2226285cd0ec0eb83458dee5";a:1:{i:0;O:8:"stdClass":2:{s:16:"order_item_count";s:1:"7";s:9:"post_date";s:19:"2017-06-26 13:12:53";}}s:32:"11a79cdaca0eade4820882c4cfe8ce23";N;s:32:"ee7d965df99fdf829b25c96d8cbc9c4c";a:1:{i:0;O:8:"stdClass":5:{s:11:"total_sales";s:8:"36758000";s:14:"total_shipping";s:1:"0";s:9:"total_tax";s:1:"0";s:18:"total_shipping_tax";s:1:"0";s:9:"post_date";s:19:"2017-06-26 13:12:53";}}s:32:"235a6d2947903d99fd61ee19df43debe";a:0:{}s:32:"3863354c22dedb2241cdc655a21c9a58";a:0:{}s:32:"14c03c47c7b5f53a238c40205cf4b100";a:0:{}s:32:"d0da4f311636b10048c00f1924f55657";a:1:{i:0;O:8:"stdClass":2:{s:5:"count";s:1:"4";s:9:"post_date";s:19:"2017-06-26 13:12:53";}}s:32:"6b594e6b2172c0b8cae576b6288b1d6b";a:0:{}s:32:"9c71d113dce70734b8f8c09c179bc61b";a:1:{i:0;O:8:"stdClass":2:{s:16:"order_item_count";s:1:"7";s:9:"post_date";s:19:"2017-06-26 13:12:53";}}s:32:"bf35af5da6de33c4db0b496d826776d2";N;s:32:"35a8cb24e35a377eec71400bca9f2255";a:1:{i:0;O:8:"stdClass":5:{s:11:"total_sales";s:8:"36758000";s:14:"total_shipping";s:1:"0";s:9:"total_tax";s:1:"0";s:18:"total_shipping_tax";s:1:"0";s:9:"post_date";s:19:"2017-06-26 13:12:53";}}s:32:"9737da84d8748519fe5cb2a8d09f2ccc";a:0:{}s:32:"7ecd2bbe98abbfc69a1ea40258f44f5c";a:0:{}s:32:"3131b720a0a4e90b2fd66032b1bed0da";a:0:{}s:32:"117a58ae02cbc8750219004bdabd93d1";a:1:{i:0;O:8:"stdClass":2:{s:5:"count";s:1:"4";s:9:"post_date";s:19:"2017-06-26 13:12:53";}}s:32:"eac46035fab8df27301d0c396f35ded4";a:0:{}s:32:"78a2b4f47f8827a269dac19c96f1b66d";a:1:{i:0;O:8:"stdClass":2:{s:16:"order_item_count";s:1:"7";s:9:"post_date";s:19:"2017-06-26 13:12:53";}}s:32:"a20788caf4f462df332396ea3382bdd5";N;s:32:"65f39ee1567b23bb258e809a3bddb75c";a:1:{i:0;O:8:"stdClass":5:{s:11:"total_sales";s:8:"36758000";s:14:"total_shipping";s:1:"0";s:9:"total_tax";s:1:"0";s:18:"total_shipping_tax";s:1:"0";s:9:"post_date";s:19:"2017-06-26 13:12:53";}}s:32:"1fe92753a013fc82802fdee4521efc0b";a:0:{}s:32:"6b1f3e3e59b1021f41af7f013b64d1e9";a:0:{}s:32:"8461464042805f811c2d18dd8e1357da";a:0:{}s:32:"4700515a7d9e5f87dbc7f012a8786a9b";a:1:{i:0;O:8:"stdClass":2:{s:5:"count";s:1:"4";s:9:"post_date";s:19:"2017-06-26 13:12:53";}}s:32:"c8c4803580ad0f2e429941f1b97f9162";a:0:{}s:32:"ef93c219329552aaf1a1b65093b40c6b";a:1:{i:0;O:8:"stdClass":2:{s:16:"order_item_count";s:1:"7";s:9:"post_date";s:19:"2017-06-26 13:12:53";}}s:32:"1df4c460e1e6d8b4754f3f6cb42b4133";N;s:32:"05c753500ee30e5c3292e31f25808a04";a:1:{i:0;O:8:"stdClass":5:{s:11:"total_sales";s:8:"36758000";s:14:"total_shipping";s:1:"0";s:9:"total_tax";s:1:"0";s:18:"total_shipping_tax";s:1:"0";s:9:"post_date";s:19:"2017-06-26 13:12:53";}}s:32:"c9ab840f76c6e8817195448ef5462d8d";a:0:{}s:32:"85090a21d2bf59fe0b96b921864998ea";a:0:{}s:32:"43adadcf33f6804dccdea3a2656e8d7a";a:0:{}s:32:"4edef159409ae4cd37746d6e0bd37124";a:1:{i:0;O:8:"stdClass":2:{s:5:"count";s:1:"4";s:9:"post_date";s:19:"2017-06-26 13:12:53";}}s:32:"a3c8df24241f85d7b2052decfbb7c85f";a:0:{}s:32:"6c3ddee87a83e25ad16fd49943feb079";a:1:{i:0;O:8:"stdClass":2:{s:16:"order_item_count";s:1:"7";s:9:"post_date";s:19:"2017-06-26 13:12:53";}}s:32:"924d4bdc96847426799fe696fb720349";N;s:32:"0ba91f7bd45b6ed3298c3ad197aa6dc9";a:1:{i:0;O:8:"stdClass":5:{s:11:"total_sales";s:8:"36758000";s:14:"total_shipping";s:1:"0";s:9:"total_tax";s:1:"0";s:18:"total_shipping_tax";s:1:"0";s:9:"post_date";s:19:"2017-06-26 13:12:53";}}s:32:"e6fd1c582f71680a7a539ddd0343f821";a:0:{}s:32:"2dea1dbcc7c483d473dac77cba8caa4f";a:0:{}s:32:"c3f3d9ee85dde96e0f8ccc208147ac17";a:0:{}}', 'no'),
(1512, '_transient_timeout_wc_admin_report', '1498919641', 'no'),
(1513, '_transient_wc_admin_report', 'a:2:{s:32:"9c5b33caff9a17ae8b9f588336f29130";a:1:{i:0;O:8:"stdClass":2:{s:15:"sparkline_value";s:8:"36758000";s:9:"post_date";s:19:"2017-06-26 13:12:53";}}s:32:"11650738cd89d38f73f9acaf591454e6";a:1:{i:0;O:8:"stdClass":3:{s:10:"product_id";s:2:"90";s:15:"sparkline_value";s:1:"2";s:9:"post_date";s:19:"2017-06-26 13:12:53";}}}', 'no'),
(1514, '_transient_timeout_yoast_i18n_wordpress-seo_vi', '1498919674', 'no'),
(1515, '_transient_yoast_i18n_wordpress-seo_vi', 'O:8:"stdClass":12:{s:2:"id";s:6:"396250";s:4:"name";s:10:"Vietnamese";s:4:"slug";s:7:"default";s:10:"project_id";s:4:"3158";s:6:"locale";s:2:"vi";s:13:"current_count";i:59;s:18:"untranslated_count";i:1023;s:13:"waiting_count";i:10;s:11:"fuzzy_count";i:2;s:18:"percent_translated";i:5;s:9:"wp_locale";s:2:"vi";s:13:"last_modified";s:19:"2016-04-28 12:38:25";}', 'no'),
(1523, 'w3tc_state', '{"common.install":1498833999,"extension.swarmify.hide_note_activate_suggestion":"true"}', 'no'),
(1534, '_transient_timeout_w3tc_license_status', '1499266109', 'no'),
(1535, '_transient_w3tc_license_status', 'no_key', 'no'),
(1539, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:0;s:3:"all";i:0;s:9:"moderated";i:0;s:8:"approved";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `plbs_postmeta`
--

CREATE TABLE `plbs_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `plbs_postmeta`
--

INSERT INTO `plbs_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 1, '_edit_lock', '1498835278:1'),
(7, 10, '_menu_item_type', 'custom'),
(8, 10, '_menu_item_menu_item_parent', '0'),
(9, 10, '_menu_item_object_id', '10'),
(10, 10, '_menu_item_object', 'custom'),
(11, 10, '_menu_item_target', ''),
(12, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(13, 10, '_menu_item_xfn', ''),
(14, 10, '_menu_item_url', 'http://localhost/wp/'),
(15, 10, '_menu_item_orphaned', '1497378802'),
(16, 11, '_menu_item_type', 'post_type'),
(17, 11, '_menu_item_menu_item_parent', '0'),
(18, 11, '_menu_item_object_id', '5'),
(19, 11, '_menu_item_object', 'page'),
(20, 11, '_menu_item_target', ''),
(21, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(22, 11, '_menu_item_xfn', ''),
(23, 11, '_menu_item_url', ''),
(24, 11, '_menu_item_orphaned', '1497378802'),
(25, 12, '_menu_item_type', 'post_type'),
(26, 12, '_menu_item_menu_item_parent', '0'),
(27, 12, '_menu_item_object_id', '6'),
(28, 12, '_menu_item_object', 'page'),
(29, 12, '_menu_item_target', ''),
(30, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(31, 12, '_menu_item_xfn', ''),
(32, 12, '_menu_item_url', ''),
(33, 12, '_menu_item_orphaned', '1497378802'),
(34, 13, '_menu_item_type', 'post_type'),
(35, 13, '_menu_item_menu_item_parent', '0'),
(36, 13, '_menu_item_object_id', '8'),
(37, 13, '_menu_item_object', 'page'),
(38, 13, '_menu_item_target', ''),
(39, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(40, 13, '_menu_item_xfn', ''),
(41, 13, '_menu_item_url', ''),
(42, 13, '_menu_item_orphaned', '1497378803'),
(43, 14, '_menu_item_type', 'post_type'),
(44, 14, '_menu_item_menu_item_parent', '0'),
(45, 14, '_menu_item_object_id', '7'),
(46, 14, '_menu_item_object', 'page'),
(47, 14, '_menu_item_target', ''),
(48, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(49, 14, '_menu_item_xfn', ''),
(50, 14, '_menu_item_url', ''),
(51, 14, '_menu_item_orphaned', '1497378803'),
(52, 15, '_menu_item_type', 'post_type'),
(53, 15, '_menu_item_menu_item_parent', '0'),
(54, 15, '_menu_item_object_id', '2'),
(55, 15, '_menu_item_object', 'page'),
(56, 15, '_menu_item_target', ''),
(57, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(58, 15, '_menu_item_xfn', ''),
(59, 15, '_menu_item_url', ''),
(60, 15, '_menu_item_orphaned', '1497378803'),
(61, 16, '_menu_item_type', 'custom'),
(62, 16, '_menu_item_menu_item_parent', '0'),
(63, 16, '_menu_item_object_id', '16'),
(64, 16, '_menu_item_object', 'custom'),
(65, 16, '_menu_item_target', ''),
(66, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(67, 16, '_menu_item_xfn', ''),
(68, 16, '_menu_item_url', 'http://localhost/wp/'),
(69, 16, '_menu_item_orphaned', '1497378808'),
(70, 17, '_menu_item_type', 'post_type'),
(71, 17, '_menu_item_menu_item_parent', '0'),
(72, 17, '_menu_item_object_id', '5'),
(73, 17, '_menu_item_object', 'page'),
(74, 17, '_menu_item_target', ''),
(75, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(76, 17, '_menu_item_xfn', ''),
(77, 17, '_menu_item_url', ''),
(78, 17, '_menu_item_orphaned', '1497378808'),
(79, 18, '_menu_item_type', 'post_type'),
(80, 18, '_menu_item_menu_item_parent', '0'),
(81, 18, '_menu_item_object_id', '6'),
(82, 18, '_menu_item_object', 'page'),
(83, 18, '_menu_item_target', ''),
(84, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(85, 18, '_menu_item_xfn', ''),
(86, 18, '_menu_item_url', ''),
(87, 18, '_menu_item_orphaned', '1497378809'),
(88, 19, '_menu_item_type', 'post_type'),
(89, 19, '_menu_item_menu_item_parent', '0'),
(90, 19, '_menu_item_object_id', '8'),
(91, 19, '_menu_item_object', 'page'),
(92, 19, '_menu_item_target', ''),
(93, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(94, 19, '_menu_item_xfn', ''),
(95, 19, '_menu_item_url', ''),
(96, 19, '_menu_item_orphaned', '1497378809'),
(97, 20, '_menu_item_type', 'post_type'),
(98, 20, '_menu_item_menu_item_parent', '0'),
(99, 20, '_menu_item_object_id', '7'),
(100, 20, '_menu_item_object', 'page'),
(101, 20, '_menu_item_target', ''),
(102, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(103, 20, '_menu_item_xfn', ''),
(104, 20, '_menu_item_url', ''),
(105, 20, '_menu_item_orphaned', '1497378809'),
(106, 21, '_menu_item_type', 'post_type'),
(107, 21, '_menu_item_menu_item_parent', '0'),
(108, 21, '_menu_item_object_id', '2'),
(109, 21, '_menu_item_object', 'page'),
(110, 21, '_menu_item_target', ''),
(111, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(112, 21, '_menu_item_xfn', ''),
(113, 21, '_menu_item_url', ''),
(114, 21, '_menu_item_orphaned', '1497378809'),
(168, 5, '_edit_last', '1'),
(169, 5, '_edit_lock', '1498383673:1'),
(170, 8, '_edit_last', '1'),
(171, 8, '_edit_lock', '1497766246:1'),
(172, 28, '_edit_last', '1'),
(173, 28, '_edit_lock', '1498481298:1'),
(174, 28, '_wp_page_template', 'home.php'),
(175, 28, '_yoast_wpseo_content_score', '30'),
(178, 29, '_edit_last', '1'),
(179, 29, 'field_59462a23a5380', 'a:14:{s:3:"key";s:19:"field_59462a23a5380";s:5:"label";s:11:"Link đến";s:4:"name";s:11:"target_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:7:"http://";s:11:"placeholder";s:7:"http://";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(181, 29, 'position', 'normal'),
(182, 29, 'layout', 'default'),
(183, 29, 'hide_on_screen', ''),
(184, 29, '_edit_lock', '1497770958:1'),
(185, 30, '_edit_last', '1'),
(186, 30, '_edit_lock', '1497772358:1'),
(187, 31, '_wp_attached_file', '2017/06/slider1.png'),
(188, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1170;s:6:"height";i:450;s:4:"file";s:19:"2017/06/slider1.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"slider1-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"slider1-300x240.png";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:19:"slider1-768x295.png";s:5:"width";i:768;s:6:"height";i:295;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"slider1-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"slider1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:19:"slider1-600x450.png";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(189, 30, '_thumbnail_id', '31'),
(190, 30, 'target_link', 'http://'),
(191, 30, '_target_link', 'field_59462a23a5380'),
(192, 30, '_yoast_wpseo_content_score', '30'),
(193, 32, '_edit_last', '1'),
(194, 32, '_edit_lock', '1497772383:1'),
(195, 33, '_wp_attached_file', '2017/06/123.jpg'),
(196, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1170;s:6:"height";i:450;s:4:"file";s:15:"2017/06/123.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"123-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"123-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"123-768x295.jpg";s:5:"width";i:768;s:6:"height";i:295;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"123-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"123-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:15:"123-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(197, 32, '_thumbnail_id', '33'),
(198, 32, 'target_link', 'http://'),
(199, 32, '_target_link', 'field_59462a23a5380'),
(200, 32, '_yoast_wpseo_content_score', '30'),
(201, 34, '_edit_last', '1'),
(202, 34, '_edit_lock', '1497772853:1'),
(203, 35, '_wp_attached_file', '2017/06/banerr-baohanh-1.png'),
(204, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:600;s:4:"file";s:28:"2017/06/banerr-baohanh-1.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"banerr-baohanh-1-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:28:"banerr-baohanh-1-300x240.png";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:28:"banerr-baohanh-1-768x288.png";s:5:"width";i:768;s:6:"height";i:288;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"banerr-baohanh-1-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"banerr-baohanh-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:28:"banerr-baohanh-1-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:5:"slide";a:4:{s:4:"file";s:29:"banerr-baohanh-1-1170x450.png";s:5:"width";i:1170;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(205, 34, '_thumbnail_id', '35'),
(206, 34, 'target_link', 'http://'),
(207, 34, '_target_link', 'field_59462a23a5380'),
(208, 34, '_yoast_wpseo_content_score', '30'),
(209, 36, '_edit_last', '1'),
(210, 36, '_edit_lock', '1497772275:1'),
(211, 37, '_wp_attached_file', '2017/06/slider2.jpg'),
(212, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4843;s:6:"height";i:1772;s:4:"file";s:19:"2017/06/slider2.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"slider2-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"slider2-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"slider2-768x281.jpg";s:5:"width";i:768;s:6:"height";i:281;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"slider2-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"slider2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"slider2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:20:"slider2-1170x450.jpg";s:5:"width";i:1170;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(213, 36, '_thumbnail_id', '37'),
(214, 36, 'target_link', 'http://'),
(215, 36, '_target_link', 'field_59462a23a5380'),
(216, 36, '_yoast_wpseo_content_score', '30'),
(217, 29, 'field_59462c37a157f', 'a:15:{s:3:"key";s:19:"field_59462c37a157f";s:5:"label";s:11:"Sắp xếp";s:4:"name";s:10:"sort_order";s:4:"type";s:6:"number";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:2:"10";s:11:"placeholder";s:1:"0";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(218, 29, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:6:"slider";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(219, 36, 'sort_order', '4'),
(220, 36, '_sort_order', 'field_59462c37a157f'),
(221, 30, 'sort_order', '0'),
(222, 30, '_sort_order', 'field_59462c37a157f'),
(223, 34, 'sort_order', '2'),
(224, 34, '_sort_order', 'field_59462c37a157f'),
(225, 32, 'sort_order', '1'),
(226, 32, '_sort_order', 'field_59462c37a157f'),
(227, 38, '_edit_last', '1'),
(228, 38, '_edit_lock', '1498834860:1'),
(229, 39, '_wp_attached_file', '2017/06/bner.png'),
(230, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1170;s:6:"height";i:450;s:4:"file";s:16:"2017/06/bner.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"bner-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"bner-300x240.png";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:16:"bner-768x295.png";s:5:"width";i:768;s:6:"height";i:295;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"bner-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"bner-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:16:"bner-600x450.png";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(231, 38, '_thumbnail_id', '39'),
(232, 38, 'target_link', 'http://'),
(233, 38, '_target_link', 'field_59462a23a5380'),
(234, 38, 'sort_order', '5'),
(235, 38, '_sort_order', 'field_59462c37a157f'),
(238, 1, '_edit_last', '1'),
(242, 1, '_wp_old_slug', 'chao-moi-nguoi'),
(243, 1, '_yoast_wpseo_primary_category', '1'),
(244, 1, '_yoast_wpseo_content_score', '30'),
(245, 42, '_edit_last', '1'),
(246, 42, '_edit_lock', '1498576880:1'),
(249, 42, '_yoast_wpseo_primary_category', '1'),
(250, 42, '_yoast_wpseo_content_score', '60'),
(251, 43, '_edit_last', '1'),
(252, 43, '_edit_lock', '1497773515:1'),
(255, 43, '_yoast_wpseo_primary_category', '1'),
(256, 43, '_yoast_wpseo_content_score', '30'),
(257, 44, '_edit_last', '1'),
(258, 44, '_edit_lock', '1498402775:1'),
(261, 44, '_yoast_wpseo_primary_category', ''),
(262, 44, '_yoast_wpseo_content_score', '30'),
(263, 45, '_edit_last', '1'),
(266, 45, '_yoast_wpseo_primary_category', ''),
(267, 45, '_yoast_wpseo_content_score', '30'),
(268, 45, '_edit_lock', '1498402764:1'),
(280, 47, '_wp_attached_file', '2017/06/logo.png'),
(281, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:313;s:6:"height";i:99;s:4:"file";s:16:"2017/06/logo.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"logo-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:15:"logo-300x99.png";s:5:"width";i:300;s:6:"height";i:99;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"logo-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"logo-300x99.png";s:5:"width";i:300;s:6:"height";i:99;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(282, 48, '_menu_item_type', 'taxonomy'),
(283, 48, '_menu_item_menu_item_parent', '0'),
(284, 48, '_menu_item_object_id', '24'),
(285, 48, '_menu_item_object', 'product_cat'),
(286, 48, '_menu_item_target', ''),
(287, 48, '_menu_item_classes', 'a:1:{i:0;s:8:"child-50";}'),
(288, 48, '_menu_item_xfn', ''),
(289, 48, '_menu_item_url', ''),
(291, 49, '_menu_item_type', 'taxonomy'),
(292, 49, '_menu_item_menu_item_parent', '48'),
(293, 49, '_menu_item_object_id', '41'),
(294, 49, '_menu_item_object', 'product_cat'),
(295, 49, '_menu_item_target', ''),
(296, 49, '_menu_item_classes', 'a:1:{i:0;s:8:"width-50";}'),
(297, 49, '_menu_item_xfn', ''),
(298, 49, '_menu_item_url', ''),
(300, 50, '_menu_item_type', 'taxonomy'),
(301, 50, '_menu_item_menu_item_parent', '48'),
(302, 50, '_menu_item_object_id', '38'),
(303, 50, '_menu_item_object', 'product_cat'),
(304, 50, '_menu_item_target', ''),
(305, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(306, 50, '_menu_item_xfn', ''),
(307, 50, '_menu_item_url', ''),
(309, 51, '_menu_item_type', 'taxonomy'),
(310, 51, '_menu_item_menu_item_parent', '48'),
(311, 51, '_menu_item_object_id', '39'),
(312, 51, '_menu_item_object', 'product_cat'),
(313, 51, '_menu_item_target', ''),
(314, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(315, 51, '_menu_item_xfn', ''),
(316, 51, '_menu_item_url', ''),
(318, 52, '_menu_item_type', 'taxonomy'),
(319, 52, '_menu_item_menu_item_parent', '48'),
(320, 52, '_menu_item_object_id', '40'),
(321, 52, '_menu_item_object', 'product_cat'),
(322, 52, '_menu_item_target', ''),
(323, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(324, 52, '_menu_item_xfn', ''),
(325, 52, '_menu_item_url', ''),
(327, 53, '_menu_item_type', 'taxonomy'),
(328, 53, '_menu_item_menu_item_parent', '0'),
(329, 53, '_menu_item_object_id', '23'),
(330, 53, '_menu_item_object', 'product_cat'),
(331, 53, '_menu_item_target', ''),
(332, 53, '_menu_item_classes', 'a:1:{i:0;s:8:"child-50";}'),
(333, 53, '_menu_item_xfn', ''),
(334, 53, '_menu_item_url', ''),
(336, 54, '_menu_item_type', 'taxonomy'),
(337, 54, '_menu_item_menu_item_parent', '53'),
(338, 54, '_menu_item_object_id', '32'),
(339, 54, '_menu_item_object', 'product_cat'),
(340, 54, '_menu_item_target', ''),
(341, 54, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(342, 54, '_menu_item_xfn', ''),
(343, 54, '_menu_item_url', ''),
(345, 55, '_menu_item_type', 'taxonomy'),
(346, 55, '_menu_item_menu_item_parent', '53'),
(347, 55, '_menu_item_object_id', '34'),
(348, 55, '_menu_item_object', 'product_cat'),
(349, 55, '_menu_item_target', ''),
(350, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(351, 55, '_menu_item_xfn', ''),
(352, 55, '_menu_item_url', ''),
(354, 56, '_menu_item_type', 'taxonomy'),
(355, 56, '_menu_item_menu_item_parent', '53'),
(356, 56, '_menu_item_object_id', '33'),
(357, 56, '_menu_item_object', 'product_cat'),
(358, 56, '_menu_item_target', ''),
(359, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(360, 56, '_menu_item_xfn', ''),
(361, 56, '_menu_item_url', ''),
(363, 57, '_menu_item_type', 'taxonomy'),
(364, 57, '_menu_item_menu_item_parent', '53'),
(365, 57, '_menu_item_object_id', '35'),
(366, 57, '_menu_item_object', 'product_cat'),
(367, 57, '_menu_item_target', ''),
(368, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(369, 57, '_menu_item_xfn', ''),
(370, 57, '_menu_item_url', ''),
(372, 58, '_menu_item_type', 'taxonomy'),
(373, 58, '_menu_item_menu_item_parent', '53'),
(374, 58, '_menu_item_object_id', '36'),
(375, 58, '_menu_item_object', 'product_cat'),
(376, 58, '_menu_item_target', ''),
(377, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(378, 58, '_menu_item_xfn', ''),
(379, 58, '_menu_item_url', ''),
(381, 59, '_menu_item_type', 'taxonomy'),
(382, 59, '_menu_item_menu_item_parent', '53'),
(383, 59, '_menu_item_object_id', '37'),
(384, 59, '_menu_item_object', 'product_cat'),
(385, 59, '_menu_item_target', ''),
(386, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(387, 59, '_menu_item_xfn', ''),
(388, 59, '_menu_item_url', ''),
(390, 60, '_menu_item_type', 'taxonomy'),
(391, 60, '_menu_item_menu_item_parent', '0'),
(392, 60, '_menu_item_object_id', '22'),
(393, 60, '_menu_item_object', 'product_cat'),
(394, 60, '_menu_item_target', ''),
(395, 60, '_menu_item_classes', 'a:1:{i:0;s:8:"child-50";}'),
(396, 60, '_menu_item_xfn', ''),
(397, 60, '_menu_item_url', ''),
(399, 61, '_menu_item_type', 'taxonomy'),
(400, 61, '_menu_item_menu_item_parent', '60'),
(401, 61, '_menu_item_object_id', '25'),
(402, 61, '_menu_item_object', 'product_cat'),
(403, 61, '_menu_item_target', ''),
(404, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(405, 61, '_menu_item_xfn', ''),
(406, 61, '_menu_item_url', ''),
(408, 62, '_menu_item_type', 'taxonomy'),
(409, 62, '_menu_item_menu_item_parent', '60'),
(410, 62, '_menu_item_object_id', '28'),
(411, 62, '_menu_item_object', 'product_cat'),
(412, 62, '_menu_item_target', ''),
(413, 62, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(414, 62, '_menu_item_xfn', ''),
(415, 62, '_menu_item_url', ''),
(417, 63, '_menu_item_type', 'taxonomy'),
(418, 63, '_menu_item_menu_item_parent', '60'),
(419, 63, '_menu_item_object_id', '26'),
(420, 63, '_menu_item_object', 'product_cat'),
(421, 63, '_menu_item_target', ''),
(422, 63, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(423, 63, '_menu_item_xfn', ''),
(424, 63, '_menu_item_url', ''),
(426, 64, '_menu_item_type', 'taxonomy'),
(427, 64, '_menu_item_menu_item_parent', '60'),
(428, 64, '_menu_item_object_id', '30'),
(429, 64, '_menu_item_object', 'product_cat'),
(430, 64, '_menu_item_target', ''),
(431, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(432, 64, '_menu_item_xfn', ''),
(433, 64, '_menu_item_url', ''),
(435, 65, '_menu_item_type', 'taxonomy'),
(436, 65, '_menu_item_menu_item_parent', '60'),
(437, 65, '_menu_item_object_id', '27'),
(438, 65, '_menu_item_object', 'product_cat'),
(439, 65, '_menu_item_target', ''),
(440, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(441, 65, '_menu_item_xfn', ''),
(442, 65, '_menu_item_url', ''),
(444, 66, '_menu_item_type', 'taxonomy'),
(445, 66, '_menu_item_menu_item_parent', '60'),
(446, 66, '_menu_item_object_id', '31'),
(447, 66, '_menu_item_object', 'product_cat'),
(448, 66, '_menu_item_target', ''),
(449, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(450, 66, '_menu_item_xfn', ''),
(451, 66, '_menu_item_url', ''),
(453, 67, '_menu_item_type', 'taxonomy'),
(454, 67, '_menu_item_menu_item_parent', '60'),
(455, 67, '_menu_item_object_id', '29'),
(456, 67, '_menu_item_object', 'product_cat'),
(457, 67, '_menu_item_target', ''),
(458, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(459, 67, '_menu_item_xfn', ''),
(460, 67, '_menu_item_url', ''),
(471, 69, '_menu_item_type', 'taxonomy'),
(472, 69, '_menu_item_menu_item_parent', '0'),
(473, 69, '_menu_item_object_id', '46'),
(474, 69, '_menu_item_object', 'category'),
(475, 69, '_menu_item_target', ''),
(476, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(477, 69, '_menu_item_xfn', ''),
(478, 69, '_menu_item_url', ''),
(489, 71, '_edit_last', '1'),
(490, 71, '_edit_lock', '1498449273:1'),
(491, 71, '_wp_page_template', 'default'),
(492, 71, '_yoast_wpseo_content_score', '30'),
(502, 73, '_menu_item_type', 'taxonomy'),
(503, 73, '_menu_item_menu_item_parent', '69'),
(504, 73, '_menu_item_object_id', '47'),
(505, 73, '_menu_item_object', 'category'),
(506, 73, '_menu_item_target', ''),
(507, 73, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(508, 73, '_menu_item_xfn', ''),
(509, 73, '_menu_item_url', ''),
(520, 75, '_wp_attached_file', '2017/06/square-logo.png'),
(521, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:440;s:6:"height";i:433;s:4:"file";s:23:"2017/06/square-logo.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"square-logo-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"square-logo-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"square-logo-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"square-logo-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(522, 76, '_wp_attached_file', '2017/06/1-2.jpg'),
(523, 76, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:302;s:6:"height";i:104;s:4:"file";s:15:"2017/06/1-2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-2-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"1-2-300x104.jpg";s:5:"width";i:300;s:6:"height";i:104;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"1-2-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"1-2-300x104.jpg";s:5:"width";i:300;s:6:"height";i:104;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(524, 78, '_wp_attached_file', '2017/06/banner.png'),
(525, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:235;s:6:"height";i:617;s:4:"file";s:18:"2017/06/banner.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"banner-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"banner-235x200.png";s:5:"width";i:235;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"banner-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"banner-235x300.png";s:5:"width";i:235;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:18:"banner-235x600.png";s:5:"width";i:235;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:5:"slide";a:4:{s:4:"file";s:18:"banner-235x450.png";s:5:"width";i:235;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(526, 79, '_wc_review_count', '0'),
(527, 79, '_wc_rating_count', 'a:0:{}'),
(528, 79, '_wc_average_rating', '0'),
(529, 79, '_edit_last', '1'),
(530, 79, '_edit_lock', '1498375923:1'),
(531, 80, '_wp_attached_file', '2017/06/1-3-525x350.jpg'),
(532, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:525;s:6:"height";i:350;s:4:"file";s:23:"2017/06/1-3-525x350.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"1-3-525x350-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"1-3-525x350-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"1-3-525x350-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"1-3-525x350-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(533, 81, '_wp_attached_file', '2017/06/oppo-f3-f5mobile.jpg'),
(534, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:28:"2017/06/oppo-f3-f5mobile.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"oppo-f3-f5mobile-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"oppo-f3-f5mobile-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"oppo-f3-f5mobile-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"oppo-f3-f5mobile-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:28:"oppo-f3-f5mobile-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(535, 79, '_thumbnail_id', '81'),
(536, 79, '_sku', ''),
(537, 79, '_regular_price', '6220000'),
(538, 79, '_sale_price', '6000000'),
(539, 79, '_sale_price_dates_from', ''),
(540, 79, '_sale_price_dates_to', ''),
(541, 79, 'total_sales', '0'),
(542, 79, '_tax_status', 'taxable'),
(543, 79, '_tax_class', ''),
(544, 79, '_manage_stock', 'no'),
(545, 79, '_backorders', 'no'),
(546, 79, '_sold_individually', 'no'),
(547, 79, '_weight', ''),
(548, 79, '_length', ''),
(549, 79, '_width', ''),
(550, 79, '_height', ''),
(551, 79, '_upsell_ids', 'a:0:{}'),
(552, 79, '_crosssell_ids', 'a:0:{}'),
(553, 79, '_purchase_note', ''),
(554, 79, '_default_attributes', 'a:0:{}'),
(555, 79, '_virtual', 'no'),
(556, 79, '_downloadable', 'no'),
(557, 79, '_product_image_gallery', '80'),
(558, 79, '_download_limit', '-1'),
(559, 79, '_download_expiry', '-1'),
(560, 79, '_stock', NULL),
(561, 79, '_stock_status', 'instock'),
(562, 79, '_product_version', '3.0.8'),
(563, 79, '_price', '6000000'),
(564, 79, '_yoast_wpseo_primary_product_cat', '24'),
(565, 79, '_yoast_wpseo_content_score', '30'),
(566, 82, '_wc_review_count', '0'),
(567, 82, '_wc_rating_count', 'a:0:{}'),
(568, 82, '_wc_average_rating', '0'),
(569, 82, '_edit_last', '1'),
(570, 82, '_edit_lock', '1498141452:1'),
(571, 82, '_sku', ''),
(572, 82, '_regular_price', '9190000'),
(573, 82, '_sale_price', '9000000'),
(574, 82, '_sale_price_dates_from', ''),
(575, 82, '_sale_price_dates_to', ''),
(576, 82, 'total_sales', '0'),
(577, 82, '_tax_status', 'taxable'),
(578, 82, '_tax_class', ''),
(579, 82, '_manage_stock', 'no'),
(580, 82, '_backorders', 'no'),
(581, 82, '_sold_individually', 'no'),
(582, 82, '_weight', ''),
(583, 82, '_length', ''),
(584, 82, '_width', ''),
(585, 82, '_height', ''),
(586, 82, '_upsell_ids', 'a:0:{}'),
(587, 82, '_crosssell_ids', 'a:0:{}'),
(588, 82, '_purchase_note', ''),
(589, 82, '_default_attributes', 'a:0:{}'),
(590, 82, '_virtual', 'no'),
(591, 82, '_downloadable', 'no'),
(592, 82, '_product_image_gallery', ''),
(593, 82, '_download_limit', '-1'),
(594, 82, '_download_expiry', '-1'),
(595, 82, '_stock', NULL),
(596, 82, '_stock_status', 'instock'),
(597, 82, '_product_version', '3.0.8'),
(598, 82, '_price', '9000000'),
(599, 82, '_yoast_wpseo_primary_product_cat', '22'),
(600, 82, '_yoast_wpseo_content_score', '30'),
(601, 83, '_wp_attached_file', '2017/06/iphone-6s-xam.png'),
(602, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:25:"2017/06/iphone-6s-xam.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"iphone-6s-xam-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"iphone-6s-xam-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"iphone-6s-xam-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"iphone-6s-xam-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"slide";a:4:{s:4:"file";s:25:"iphone-6s-xam-600x450.png";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(603, 82, '_thumbnail_id', '83'),
(604, 84, '_wc_review_count', '0'),
(605, 84, '_wc_rating_count', 'a:0:{}'),
(606, 84, '_wc_average_rating', '0'),
(607, 84, '_edit_last', '1'),
(608, 84, '_edit_lock', '1498480808:1'),
(609, 85, '_wp_attached_file', '2017/06/medium.png'),
(610, 85, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:350;s:6:"height";i:350;s:4:"file";s:18:"2017/06/medium.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"medium-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"medium-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"medium-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"medium-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(611, 84, '_thumbnail_id', '85'),
(612, 84, '_sku', ''),
(613, 84, '_regular_price', '8990000'),
(614, 84, '_sale_price', ''),
(615, 84, '_sale_price_dates_from', ''),
(616, 84, '_sale_price_dates_to', ''),
(617, 84, 'total_sales', '0'),
(618, 84, '_tax_status', 'taxable'),
(619, 84, '_tax_class', ''),
(620, 84, '_manage_stock', 'no'),
(621, 84, '_backorders', 'no'),
(622, 84, '_sold_individually', 'no'),
(623, 84, '_weight', ''),
(624, 84, '_length', ''),
(625, 84, '_width', ''),
(626, 84, '_height', ''),
(627, 84, '_upsell_ids', 'a:0:{}'),
(628, 84, '_crosssell_ids', 'a:0:{}'),
(629, 84, '_purchase_note', ''),
(630, 84, '_default_attributes', 'a:0:{}'),
(631, 84, '_virtual', 'no'),
(632, 84, '_downloadable', 'no'),
(633, 84, '_product_image_gallery', ''),
(634, 84, '_download_limit', '-1'),
(635, 84, '_download_expiry', '-1'),
(636, 84, '_stock', NULL),
(637, 84, '_stock_status', 'instock'),
(638, 84, '_product_version', '3.0.9'),
(639, 84, '_price', '8990000'),
(640, 84, '_yoast_wpseo_primary_product_cat', '22'),
(641, 84, '_yoast_wpseo_content_score', '30'),
(642, 86, '_wc_review_count', '0'),
(643, 86, '_wc_rating_count', 'a:0:{}'),
(644, 86, '_wc_average_rating', '0'),
(645, 87, '_wp_attached_file', '2017/06/demo-ip5s-gold.png'),
(646, 87, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:26:"2017/06/demo-ip5s-gold.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"demo-ip5s-gold-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"demo-ip5s-gold-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"demo-ip5s-gold-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"demo-ip5s-gold-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"slide";a:4:{s:4:"file";s:26:"demo-ip5s-gold-600x450.png";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(647, 86, '_edit_last', '1'),
(648, 86, '_edit_lock', '1498490289:1'),
(649, 86, '_thumbnail_id', '87'),
(650, 86, '_sku', ''),
(651, 86, '_regular_price', '2690000'),
(652, 86, '_sale_price', '2490000'),
(653, 86, '_sale_price_dates_from', ''),
(654, 86, '_sale_price_dates_to', ''),
(655, 86, 'total_sales', '2'),
(656, 86, '_tax_status', 'taxable'),
(657, 86, '_tax_class', ''),
(658, 86, '_manage_stock', 'no'),
(659, 86, '_backorders', 'no'),
(660, 86, '_sold_individually', 'no'),
(661, 86, '_weight', ''),
(662, 86, '_length', ''),
(663, 86, '_width', ''),
(664, 86, '_height', ''),
(665, 86, '_upsell_ids', 'a:0:{}'),
(666, 86, '_crosssell_ids', 'a:0:{}'),
(667, 86, '_purchase_note', ''),
(668, 86, '_default_attributes', 'a:0:{}'),
(669, 86, '_virtual', 'no'),
(670, 86, '_downloadable', 'no'),
(671, 86, '_product_image_gallery', ''),
(672, 86, '_download_limit', '-1'),
(673, 86, '_download_expiry', '-1'),
(674, 86, '_stock', NULL),
(675, 86, '_stock_status', 'instock'),
(676, 86, '_product_version', '3.0.9'),
(677, 86, '_price', '2490000'),
(678, 86, '_yoast_wpseo_primary_product_cat', '25'),
(679, 86, '_yoast_wpseo_content_score', '60'),
(680, 88, '_wc_review_count', '0'),
(681, 88, '_wc_rating_count', 'a:0:{}'),
(682, 88, '_wc_average_rating', '0'),
(683, 88, '_edit_last', '1'),
(684, 88, '_edit_lock', '1498473207:1'),
(685, 89, '_wp_attached_file', '2017/06/iphone-5s-quoc-te.png'),
(686, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:29:"2017/06/iphone-5s-quoc-te.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"iphone-5s-quoc-te-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:29:"iphone-5s-quoc-te-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"iphone-5s-quoc-te-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:29:"iphone-5s-quoc-te-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"slide";a:4:{s:4:"file";s:29:"iphone-5s-quoc-te-600x450.png";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(687, 88, '_thumbnail_id', '89'),
(688, 88, '_sku', ''),
(689, 88, '_regular_price', '3120000'),
(690, 88, '_sale_price', '3000000'),
(691, 88, '_sale_price_dates_from', ''),
(692, 88, '_sale_price_dates_to', ''),
(693, 88, 'total_sales', '1'),
(694, 88, '_tax_status', 'taxable'),
(695, 88, '_tax_class', ''),
(696, 88, '_manage_stock', 'no'),
(697, 88, '_backorders', 'no'),
(698, 88, '_sold_individually', 'no'),
(699, 88, '_weight', ''),
(700, 88, '_length', ''),
(701, 88, '_width', ''),
(702, 88, '_height', ''),
(703, 88, '_upsell_ids', 'a:0:{}'),
(704, 88, '_crosssell_ids', 'a:0:{}'),
(705, 88, '_purchase_note', ''),
(706, 88, '_default_attributes', 'a:0:{}'),
(707, 88, '_virtual', 'no'),
(708, 88, '_downloadable', 'no'),
(709, 88, '_product_image_gallery', ''),
(710, 88, '_download_limit', '-1'),
(711, 88, '_download_expiry', '-1'),
(712, 88, '_stock', NULL),
(713, 88, '_stock_status', 'instock'),
(714, 88, '_product_version', '3.0.9'),
(715, 88, '_price', '3000000'),
(716, 88, '_yoast_wpseo_primary_product_cat', '22'),
(717, 88, '_yoast_wpseo_content_score', '30'),
(718, 90, '_wc_review_count', '0'),
(719, 90, '_wc_rating_count', 'a:0:{}'),
(720, 90, '_wc_average_rating', '0'),
(721, 90, '_edit_last', '1'),
(722, 90, '_edit_lock', '1498480964:1'),
(723, 91, '_wp_attached_file', '2017/06/iphone-6s-plus-fpt-gold.png'),
(724, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:35:"2017/06/iphone-6s-plus-fpt-gold.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"iphone-6s-plus-fpt-gold-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:35:"iphone-6s-plus-fpt-gold-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"iphone-6s-plus-fpt-gold-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:35:"iphone-6s-plus-fpt-gold-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"slide";a:4:{s:4:"file";s:35:"iphone-6s-plus-fpt-gold-600x450.png";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(725, 90, '_thumbnail_id', '91'),
(726, 90, '_sku', ''),
(727, 90, '_regular_price', '13990000'),
(728, 90, '_sale_price', ''),
(729, 90, '_sale_price_dates_from', ''),
(730, 90, '_sale_price_dates_to', ''),
(731, 90, 'total_sales', '2'),
(732, 90, '_tax_status', 'taxable'),
(733, 90, '_tax_class', ''),
(734, 90, '_manage_stock', 'no'),
(735, 90, '_backorders', 'no'),
(736, 90, '_sold_individually', 'no'),
(737, 90, '_weight', ''),
(738, 90, '_length', ''),
(739, 90, '_width', ''),
(740, 90, '_height', ''),
(741, 90, '_upsell_ids', 'a:4:{i:0;i:86;i:1;i:88;i:2;i:84;i:3;i:82;}'),
(742, 90, '_crosssell_ids', 'a:4:{i:0;i:101;i:1;i:110;i:2;i:112;i:3;i:106;}'),
(743, 90, '_purchase_note', ''),
(744, 90, '_default_attributes', 'a:0:{}'),
(745, 90, '_virtual', 'no'),
(746, 90, '_downloadable', 'no'),
(747, 90, '_product_image_gallery', '89,87,85,95,93,35'),
(748, 90, '_download_limit', '-1'),
(749, 90, '_download_expiry', '-1'),
(750, 90, '_stock', NULL),
(751, 90, '_stock_status', 'instock'),
(752, 90, '_product_version', '3.0.9'),
(753, 90, '_price', '13990000'),
(754, 90, '_yoast_wpseo_primary_product_cat', '22'),
(755, 90, '_yoast_wpseo_content_score', '30'),
(756, 92, '_wc_review_count', '0'),
(757, 92, '_wc_rating_count', 'a:0:{}'),
(758, 92, '_wc_average_rating', '0'),
(759, 92, '_edit_last', '1'),
(760, 92, '_edit_lock', '1498386482:1'),
(761, 93, '_wp_attached_file', '2017/06/ipad-mini-2-silver.png'),
(762, 93, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:30:"2017/06/ipad-mini-2-silver.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"ipad-mini-2-silver-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:30:"ipad-mini-2-silver-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"ipad-mini-2-silver-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"ipad-mini-2-silver-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"slide";a:4:{s:4:"file";s:30:"ipad-mini-2-silver-600x450.png";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(763, 92, '_thumbnail_id', '93'),
(764, 92, '_sku', ''),
(765, 92, '_regular_price', '7790000'),
(766, 92, '_sale_price', '7500000'),
(767, 92, '_sale_price_dates_from', ''),
(768, 92, '_sale_price_dates_to', ''),
(769, 92, 'total_sales', '0'),
(770, 92, '_tax_status', 'taxable'),
(771, 92, '_tax_class', ''),
(772, 92, '_manage_stock', 'no'),
(773, 92, '_backorders', 'no'),
(774, 92, '_sold_individually', 'no'),
(775, 92, '_weight', ''),
(776, 92, '_length', ''),
(777, 92, '_width', ''),
(778, 92, '_height', ''),
(779, 92, '_upsell_ids', 'a:0:{}'),
(780, 92, '_crosssell_ids', 'a:0:{}'),
(781, 92, '_purchase_note', ''),
(782, 92, '_default_attributes', 'a:0:{}'),
(783, 92, '_virtual', 'no'),
(784, 92, '_downloadable', 'no'),
(785, 92, '_product_image_gallery', ''),
(786, 92, '_download_limit', '-1'),
(787, 92, '_download_expiry', '-1'),
(788, 92, '_stock', NULL),
(789, 92, '_stock_status', 'instock'),
(790, 92, '_product_version', '3.0.8'),
(791, 92, '_price', '7500000'),
(792, 92, '_yoast_wpseo_primary_product_cat', '23'),
(793, 92, '_yoast_wpseo_content_score', '30'),
(794, 94, '_wc_review_count', '0'),
(795, 94, '_wc_rating_count', 'a:0:{}'),
(796, 94, '_wc_average_rating', '0'),
(797, 94, '_edit_last', '1'),
(798, 94, '_edit_lock', '1498338507:1'),
(799, 95, '_wp_attached_file', '2017/06/ipad-mini-3.png'),
(800, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:23:"2017/06/ipad-mini-3.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"ipad-mini-3-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"ipad-mini-3-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"ipad-mini-3-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"ipad-mini-3-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"slide";a:4:{s:4:"file";s:23:"ipad-mini-3-600x450.png";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(801, 94, '_thumbnail_id', '95'),
(802, 94, '_sku', ''),
(803, 94, '_regular_price', '4500000'),
(804, 94, '_sale_price', ''),
(805, 94, '_sale_price_dates_from', ''),
(806, 94, '_sale_price_dates_to', ''),
(807, 94, 'total_sales', '0'),
(808, 94, '_tax_status', 'taxable'),
(809, 94, '_tax_class', ''),
(810, 94, '_manage_stock', 'no'),
(811, 94, '_backorders', 'no'),
(812, 94, '_sold_individually', 'no'),
(813, 94, '_weight', ''),
(814, 94, '_length', ''),
(815, 94, '_width', ''),
(816, 94, '_height', ''),
(817, 94, '_upsell_ids', 'a:0:{}'),
(818, 94, '_crosssell_ids', 'a:0:{}'),
(819, 94, '_purchase_note', ''),
(820, 94, '_default_attributes', 'a:0:{}'),
(821, 94, '_virtual', 'no'),
(822, 94, '_downloadable', 'no'),
(823, 94, '_product_image_gallery', ''),
(824, 94, '_download_limit', '-1'),
(825, 94, '_download_expiry', '-1'),
(826, 94, '_stock', NULL),
(827, 94, '_stock_status', 'instock'),
(828, 94, '_product_version', '3.0.9'),
(829, 94, '_price', '4500000'),
(830, 94, '_yoast_wpseo_primary_product_cat', ''),
(831, 94, '_yoast_wpseo_content_score', '30'),
(832, 96, '_wp_attached_file', '2017/06/images.jpg'),
(833, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1900;s:6:"height";i:443;s:4:"file";s:18:"2017/06/images.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"images-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"images-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"images-768x179.jpg";s:5:"width";i:768;s:6:"height";i:179;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"images-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"images-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"images-600x443.jpg";s:5:"width";i:600;s:6:"height";i:443;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:19:"images-1170x443.jpg";s:5:"width";i:1170;s:6:"height";i:443;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(834, 97, '_wp_attached_file', '2017/06/phu-kien-4.png'),
(835, 97, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:322;s:4:"file";s:22:"2017/06/phu-kien-4.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"phu-kien-4-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"phu-kien-4-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"phu-kien-4-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"phu-kien-4-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(836, 98, '_wp_attached_file', '2017/06/phu-kien-3-1.png');
INSERT INTO `plbs_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(837, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:322;s:4:"file";s:24:"2017/06/phu-kien-3-1.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"phu-kien-3-1-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"phu-kien-3-1-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"phu-kien-3-1-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:24:"phu-kien-3-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(838, 99, '_wp_attached_file', '2017/06/phu-kien-2.png'),
(839, 99, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:322;s:4:"file";s:22:"2017/06/phu-kien-2.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"phu-kien-2-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"phu-kien-2-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"phu-kien-2-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"phu-kien-2-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(840, 100, '_wp_attached_file', '2017/06/sac-du-phong.jpg'),
(841, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:322;s:4:"file";s:24:"2017/06/sac-du-phong.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"sac-du-phong-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"sac-du-phong-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"sac-du-phong-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:24:"sac-du-phong-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(842, 101, '_wc_review_count', '0'),
(843, 101, '_wc_rating_count', 'a:0:{}'),
(844, 101, '_wc_average_rating', '0'),
(845, 101, '_edit_last', '1'),
(846, 101, '_edit_lock', '1497978598:1'),
(847, 101, '_sku', ''),
(848, 101, '_regular_price', '300000'),
(849, 101, '_sale_price', ''),
(850, 101, '_sale_price_dates_from', ''),
(851, 101, '_sale_price_dates_to', ''),
(852, 101, 'total_sales', '0'),
(853, 101, '_tax_status', 'taxable'),
(854, 101, '_tax_class', ''),
(855, 101, '_manage_stock', 'no'),
(856, 101, '_backorders', 'no'),
(857, 101, '_sold_individually', 'no'),
(858, 101, '_weight', ''),
(859, 101, '_length', ''),
(860, 101, '_width', ''),
(861, 101, '_height', ''),
(862, 101, '_upsell_ids', 'a:0:{}'),
(863, 101, '_crosssell_ids', 'a:0:{}'),
(864, 101, '_purchase_note', ''),
(865, 101, '_default_attributes', 'a:0:{}'),
(866, 101, '_virtual', 'no'),
(867, 101, '_downloadable', 'no'),
(868, 101, '_product_image_gallery', ''),
(869, 101, '_download_limit', '-1'),
(870, 101, '_download_expiry', '-1'),
(871, 101, '_stock', NULL),
(872, 101, '_stock_status', 'instock'),
(873, 101, '_product_version', '3.0.8'),
(874, 101, '_price', '300000'),
(875, 101, '_yoast_wpseo_primary_product_cat', '54'),
(876, 101, '_yoast_wpseo_content_score', '30'),
(879, 103, '_wp_attached_file', '2017/06/sac-ipad-350x350.png'),
(880, 103, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:350;s:6:"height";i:350;s:4:"file";s:28:"2017/06/sac-ipad-350x350.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"sac-ipad-350x350-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:28:"sac-ipad-350x350-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"sac-ipad-350x350-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"sac-ipad-350x350-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(881, 101, '_thumbnail_id', '103'),
(882, 104, '_wc_review_count', '0'),
(883, 104, '_wc_rating_count', 'a:0:{}'),
(884, 104, '_wc_average_rating', '0'),
(885, 105, '_wp_attached_file', '2017/06/222.jpg'),
(886, 105, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:830;s:6:"height";i:553;s:4:"file";s:15:"2017/06/222.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"222-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"222-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"222-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"222-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"222-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:15:"222-600x553.jpg";s:5:"width";i:600;s:6:"height";i:553;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:15:"222-830x450.jpg";s:5:"width";i:830;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(887, 104, '_edit_last', '1'),
(888, 104, '_thumbnail_id', '105'),
(889, 104, '_sku', ''),
(890, 104, '_regular_price', '299000'),
(891, 104, '_sale_price', ''),
(892, 104, '_sale_price_dates_from', ''),
(893, 104, '_sale_price_dates_to', ''),
(894, 104, 'total_sales', '1'),
(895, 104, '_tax_status', 'taxable'),
(896, 104, '_tax_class', ''),
(897, 104, '_manage_stock', 'no'),
(898, 104, '_backorders', 'no'),
(899, 104, '_sold_individually', 'no'),
(900, 104, '_weight', ''),
(901, 104, '_length', ''),
(902, 104, '_width', ''),
(903, 104, '_height', ''),
(904, 104, '_upsell_ids', 'a:0:{}'),
(905, 104, '_crosssell_ids', 'a:0:{}'),
(906, 104, '_purchase_note', ''),
(907, 104, '_default_attributes', 'a:0:{}'),
(908, 104, '_virtual', 'no'),
(909, 104, '_downloadable', 'no'),
(910, 104, '_product_image_gallery', ''),
(911, 104, '_download_limit', '-1'),
(912, 104, '_download_expiry', '-1'),
(913, 104, '_stock', NULL),
(914, 104, '_stock_status', 'instock'),
(915, 104, '_product_version', '3.0.8'),
(916, 104, '_price', '299000'),
(917, 104, '_yoast_wpseo_primary_product_cat', '54'),
(918, 104, '_yoast_wpseo_content_score', '30'),
(919, 104, '_edit_lock', '1497978589:1'),
(920, 106, '_wc_review_count', '0'),
(921, 106, '_wc_rating_count', 'a:0:{}'),
(922, 106, '_wc_average_rating', '0'),
(923, 106, '_edit_last', '1'),
(924, 106, '_edit_lock', '1497978571:1'),
(925, 107, '_wp_attached_file', '2017/06/mieng-dan-man-hinh-iphone-org-se.jpg'),
(926, 107, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:533;s:4:"file";s:44:"2017/06/mieng-dan-man-hinh-iphone-org-se.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"mieng-dan-man-hinh-iphone-org-se-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"mieng-dan-man-hinh-iphone-org-se-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:44:"mieng-dan-man-hinh-iphone-org-se-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:42:"mieng-dan-man-hinh-iphone-org-se-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:44:"mieng-dan-man-hinh-iphone-org-se-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:44:"mieng-dan-man-hinh-iphone-org-se-600x533.jpg";s:5:"width";i:600;s:6:"height";i:533;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:44:"mieng-dan-man-hinh-iphone-org-se-800x450.jpg";s:5:"width";i:800;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(927, 106, '_thumbnail_id', '107'),
(928, 106, '_sku', ''),
(929, 106, '_regular_price', '50000'),
(930, 106, '_sale_price', ''),
(931, 106, '_sale_price_dates_from', ''),
(932, 106, '_sale_price_dates_to', ''),
(933, 106, 'total_sales', '0'),
(934, 106, '_tax_status', 'taxable'),
(935, 106, '_tax_class', ''),
(936, 106, '_manage_stock', 'no'),
(937, 106, '_backorders', 'no'),
(938, 106, '_sold_individually', 'no'),
(939, 106, '_weight', ''),
(940, 106, '_length', ''),
(941, 106, '_width', ''),
(942, 106, '_height', ''),
(943, 106, '_upsell_ids', 'a:0:{}'),
(944, 106, '_crosssell_ids', 'a:0:{}'),
(945, 106, '_purchase_note', ''),
(946, 106, '_default_attributes', 'a:0:{}'),
(947, 106, '_virtual', 'no'),
(948, 106, '_downloadable', 'no'),
(949, 106, '_product_image_gallery', ''),
(950, 106, '_download_limit', '-1'),
(951, 106, '_download_expiry', '-1'),
(952, 106, '_stock', NULL),
(953, 106, '_stock_status', 'instock'),
(954, 106, '_product_version', '3.0.8'),
(955, 106, '_price', '50000'),
(956, 106, '_yoast_wpseo_primary_product_cat', '55'),
(957, 106, '_yoast_wpseo_content_score', '30'),
(958, 108, '_wc_review_count', '0'),
(959, 108, '_wc_rating_count', 'a:0:{}'),
(960, 108, '_wc_average_rating', '0'),
(961, 109, '_wp_attached_file', '2017/06/635824870875402215_MDMH-iphone-5-a.jpg'),
(962, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:549;s:4:"file";s:46:"2017/06/635824870875402215_MDMH-iphone-5-a.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"635824870875402215_MDMH-iphone-5-a-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:46:"635824870875402215_MDMH-iphone-5-a-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:46:"635824870875402215_MDMH-iphone-5-a-768x439.jpg";s:5:"width";i:768;s:6:"height";i:439;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:44:"635824870875402215_MDMH-iphone-5-a-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:46:"635824870875402215_MDMH-iphone-5-a-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:46:"635824870875402215_MDMH-iphone-5-a-600x549.jpg";s:5:"width";i:600;s:6:"height";i:549;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:46:"635824870875402215_MDMH-iphone-5-a-960x450.jpg";s:5:"width";i:960;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(963, 108, '_edit_last', '1'),
(964, 108, '_thumbnail_id', '109'),
(965, 108, '_sku', ''),
(966, 108, '_regular_price', '49000'),
(967, 108, '_sale_price', ''),
(968, 108, '_sale_price_dates_from', ''),
(969, 108, '_sale_price_dates_to', ''),
(970, 108, 'total_sales', '0'),
(971, 108, '_tax_status', 'taxable'),
(972, 108, '_tax_class', ''),
(973, 108, '_manage_stock', 'no'),
(974, 108, '_backorders', 'no'),
(975, 108, '_sold_individually', 'no'),
(976, 108, '_weight', ''),
(977, 108, '_length', ''),
(978, 108, '_width', ''),
(979, 108, '_height', ''),
(980, 108, '_upsell_ids', 'a:0:{}'),
(981, 108, '_crosssell_ids', 'a:0:{}'),
(982, 108, '_purchase_note', ''),
(983, 108, '_default_attributes', 'a:0:{}'),
(984, 108, '_virtual', 'no'),
(985, 108, '_downloadable', 'no'),
(986, 108, '_product_image_gallery', ''),
(987, 108, '_download_limit', '-1'),
(988, 108, '_download_expiry', '-1'),
(989, 108, '_stock', NULL),
(990, 108, '_stock_status', 'instock'),
(991, 108, '_product_version', '3.0.8'),
(992, 108, '_price', '49000'),
(993, 108, '_yoast_wpseo_primary_product_cat', '55'),
(994, 108, '_yoast_wpseo_content_score', '30'),
(995, 108, '_edit_lock', '1498315835:1'),
(996, 110, '_wc_review_count', '0'),
(997, 110, '_wc_rating_count', 'a:0:{}'),
(998, 110, '_wc_average_rating', '0'),
(999, 110, '_edit_last', '1'),
(1000, 110, '_edit_lock', '1497978552:1'),
(1001, 111, '_wp_attached_file', '2017/06/22.jpg'),
(1002, 111, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:830;s:6:"height";i:553;s:4:"file";s:14:"2017/06/22.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:12:"22-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"22-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:14:"22-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:12:"22-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:14:"22-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:14:"22-600x553.jpg";s:5:"width";i:600;s:6:"height";i:553;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:14:"22-830x450.jpg";s:5:"width";i:830;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1003, 110, '_thumbnail_id', '111'),
(1004, 110, '_sku', ''),
(1005, 110, '_regular_price', '250000'),
(1006, 110, '_sale_price', ''),
(1007, 110, '_sale_price_dates_from', ''),
(1008, 110, '_sale_price_dates_to', ''),
(1009, 110, 'total_sales', '0'),
(1010, 110, '_tax_status', 'taxable'),
(1011, 110, '_tax_class', ''),
(1012, 110, '_manage_stock', 'no'),
(1013, 110, '_backorders', 'no'),
(1014, 110, '_sold_individually', 'no'),
(1015, 110, '_weight', ''),
(1016, 110, '_length', ''),
(1017, 110, '_width', ''),
(1018, 110, '_height', ''),
(1019, 110, '_upsell_ids', 'a:0:{}'),
(1020, 110, '_crosssell_ids', 'a:0:{}'),
(1021, 110, '_purchase_note', ''),
(1022, 110, '_default_attributes', 'a:0:{}'),
(1023, 110, '_virtual', 'no'),
(1024, 110, '_downloadable', 'no'),
(1025, 110, '_product_image_gallery', ''),
(1026, 110, '_download_limit', '-1'),
(1027, 110, '_download_expiry', '-1'),
(1028, 110, '_stock', NULL),
(1029, 110, '_stock_status', 'instock'),
(1030, 110, '_product_version', '3.0.8'),
(1031, 110, '_price', '250000'),
(1032, 110, '_yoast_wpseo_primary_product_cat', '64'),
(1033, 110, '_yoast_wpseo_content_score', '30'),
(1034, 112, '_wc_review_count', '0'),
(1035, 112, '_wc_rating_count', 'a:0:{}'),
(1036, 112, '_wc_average_rating', '0'),
(1037, 113, '_wp_attached_file', '2017/06/pin-du-phong-xiaomi-350x350.gif'),
(1038, 113, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:350;s:6:"height";i:350;s:4:"file";s:39:"2017/06/pin-du-phong-xiaomi-350x350.gif";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"pin-du-phong-xiaomi-350x350-80x80.gif";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/gif";}s:6:"medium";a:4:{s:4:"file";s:39:"pin-du-phong-xiaomi-350x350-300x200.gif";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/gif";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:37:"pin-du-phong-xiaomi-350x350-80x80.gif";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/gif";}s:12:"shop_catalog";a:4:{s:4:"file";s:39:"pin-du-phong-xiaomi-350x350-300x300.gif";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/gif";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1039, 112, '_edit_last', '1'),
(1040, 112, '_thumbnail_id', '113'),
(1041, 112, '_sku', ''),
(1042, 112, '_regular_price', '499000'),
(1043, 112, '_sale_price', ''),
(1044, 112, '_sale_price_dates_from', ''),
(1045, 112, '_sale_price_dates_to', ''),
(1046, 112, 'total_sales', '1'),
(1047, 112, '_tax_status', 'taxable'),
(1048, 112, '_tax_class', ''),
(1049, 112, '_manage_stock', 'no'),
(1050, 112, '_backorders', 'no'),
(1051, 112, '_sold_individually', 'no'),
(1052, 112, '_weight', ''),
(1053, 112, '_length', ''),
(1054, 112, '_width', ''),
(1055, 112, '_height', ''),
(1056, 112, '_upsell_ids', 'a:0:{}'),
(1057, 112, '_crosssell_ids', 'a:0:{}'),
(1058, 112, '_purchase_note', ''),
(1059, 112, '_default_attributes', 'a:0:{}'),
(1060, 112, '_virtual', 'no'),
(1061, 112, '_downloadable', 'no'),
(1062, 112, '_product_image_gallery', ''),
(1063, 112, '_download_limit', '-1'),
(1064, 112, '_download_expiry', '-1'),
(1065, 112, '_stock', NULL),
(1066, 112, '_stock_status', 'instock'),
(1067, 112, '_product_version', '3.0.8'),
(1068, 112, '_price', '499000'),
(1069, 112, '_yoast_wpseo_primary_product_cat', '60'),
(1070, 112, '_yoast_wpseo_content_score', '30'),
(1071, 112, '_edit_lock', '1498284729:1'),
(1072, 114, '_edit_last', '1'),
(1073, 114, 'field_594954ef3e476', 'a:11:{s:3:"key";s:19:"field_594954ef3e476";s:5:"label";s:5:"Ảnh";s:4:"name";s:13:"pl_term_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1075, 114, 'position', 'normal'),
(1076, 114, 'layout', 'no_box'),
(1077, 114, 'hide_on_screen', ''),
(1078, 114, '_edit_lock', '1498657282:1'),
(1081, 114, 'rule', 'a:5:{s:5:"param";s:11:"ef_taxonomy";s:8:"operator";s:2:"==";s:5:"value";s:12:"product_acce";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1082, 114, 'rule', 'a:5:{s:5:"param";s:11:"ef_taxonomy";s:8:"operator";s:2:"==";s:5:"value";s:8:"category";s:8:"order_no";i:0;s:8:"group_no";i:1;}'),
(1083, 116, '_wp_attached_file', '2017/06/block-tin-tuc3.png'),
(1084, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:290;s:4:"file";s:26:"2017/06/block-tin-tuc3.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"block-tin-tuc3-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"block-tin-tuc3-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"block-tin-tuc3-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"block-tin-tuc3-300x290.png";s:5:"width";i:300;s:6:"height";i:290;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1085, 117, '_wp_attached_file', '2017/06/block-tin-tuc2.png'),
(1086, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:290;s:4:"file";s:26:"2017/06/block-tin-tuc2.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"block-tin-tuc2-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"block-tin-tuc2-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"block-tin-tuc2-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"block-tin-tuc2-300x290.png";s:5:"width";i:300;s:6:"height";i:290;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1087, 118, '_wp_attached_file', '2017/06/block-tin-tuc1.png'),
(1088, 118, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:290;s:4:"file";s:26:"2017/06/block-tin-tuc1.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"block-tin-tuc1-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"block-tin-tuc1-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"block-tin-tuc1-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"block-tin-tuc1-300x290.png";s:5:"width";i:300;s:6:"height";i:290;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1089, 119, '_wp_attached_file', '2017/06/block-tin-tuc4-1.png'),
(1090, 119, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:290;s:4:"file";s:28:"2017/06/block-tin-tuc4-1.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"block-tin-tuc4-1-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:28:"block-tin-tuc4-1-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"block-tin-tuc4-1-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"block-tin-tuc4-1-300x290.png";s:5:"width";i:300;s:6:"height";i:290;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1103, 123, '_edit_last', '1'),
(1104, 123, '_wp_page_template', 'page-calc-installment.php'),
(1105, 123, '_yoast_wpseo_content_score', '30'),
(1106, 123, '_edit_lock', '1498469702:1'),
(1107, 124, '_edit_last', '1'),
(1108, 124, '_wp_page_template', 'page-check-order.php'),
(1109, 124, '_yoast_wpseo_content_score', '30'),
(1110, 124, '_edit_lock', '1498469472:1'),
(1111, 125, '_edit_last', '1'),
(1112, 125, '_wp_page_template', 'default'),
(1113, 125, '_yoast_wpseo_content_score', '60'),
(1114, 125, '_edit_lock', '1498469173:1'),
(1142, 129, '_menu_item_type', 'post_type'),
(1143, 129, '_menu_item_menu_item_parent', '0'),
(1144, 129, '_menu_item_object_id', '71'),
(1145, 129, '_menu_item_object', 'page'),
(1146, 129, '_menu_item_target', ''),
(1147, 129, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1148, 129, '_menu_item_xfn', ''),
(1149, 129, '_menu_item_url', ''),
(1151, 130, '_menu_item_type', 'post_type'),
(1152, 130, '_menu_item_menu_item_parent', '0'),
(1153, 130, '_menu_item_object_id', '124'),
(1154, 130, '_menu_item_object', 'page'),
(1155, 130, '_menu_item_target', ''),
(1156, 130, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1157, 130, '_menu_item_xfn', ''),
(1158, 130, '_menu_item_url', ''),
(1160, 131, '_menu_item_type', 'post_type'),
(1161, 131, '_menu_item_menu_item_parent', '0'),
(1162, 131, '_menu_item_object_id', '125'),
(1163, 131, '_menu_item_object', 'page'),
(1164, 131, '_menu_item_target', ''),
(1165, 131, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1166, 131, '_menu_item_xfn', ''),
(1167, 131, '_menu_item_url', ''),
(1169, 132, '_menu_item_type', 'post_type'),
(1170, 132, '_menu_item_menu_item_parent', '0'),
(1171, 132, '_menu_item_object_id', '123'),
(1172, 132, '_menu_item_object', 'page'),
(1173, 132, '_menu_item_target', ''),
(1174, 132, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1175, 132, '_menu_item_xfn', ''),
(1176, 132, '_menu_item_url', ''),
(1178, 133, '_wp_attached_file', '2017/06/bg-menu-2-1.png'),
(1179, 133, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:324;s:4:"file";s:23:"2017/06/bg-menu-2-1.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"bg-menu-2-1-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"bg-menu-2-1-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"bg-menu-2-1-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"bg-menu-2-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:23:"bg-menu-2-1-600x324.png";s:5:"width";i:600;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1180, 134, '_wp_attached_file', '2017/06/universal_payments.png'),
(1181, 134, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:205;s:6:"height";i:40;s:4:"file";s:30:"2017/06/universal_payments.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"universal_payments-80x40.png";s:5:"width";i:80;s:6:"height";i:40;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"universal_payments-80x40.png";s:5:"width";i:80;s:6:"height";i:40;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1182, 82, '_yoast_wpseo_primary_product_acce', ''),
(1183, 137, '_edit_last', '1'),
(1184, 137, 'field_594e109475a1f', 'a:11:{s:3:"key";s:19:"field_594e109475a1f";s:5:"label";s:10:"Nội dung";s:4:"name";s:11:"tax_content";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:21:"Nội dung mục này";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:5:"basic";s:12:"media_upload";s:2:"no";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1186, 137, 'position', 'normal'),
(1187, 137, 'layout', 'no_box'),
(1188, 137, 'hide_on_screen', ''),
(1189, 137, '_edit_lock', '1498290266:1'),
(1191, 137, 'rule', 'a:5:{s:5:"param";s:11:"ef_taxonomy";s:8:"operator";s:2:"==";s:5:"value";s:7:"warrant";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1192, 90, '_yoast_wpseo_primary_product_acce', ''),
(1193, 90, '_yoast_wpseo_primary_warrant', '77'),
(1194, 138, '_edit_last', '1'),
(1195, 138, 'field_594e24ee5f26c', 'a:14:{s:3:"key";s:19:"field_594e24ee5f26c";s:5:"label";s:35:"Bảng giá sản phẩm liên quan";s:4:"name";s:19:"price_related_prods";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"return_format";s:2:"id";s:9:"post_type";a:1:{i:0;s:7:"product";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";s:0:"";s:3:"max";s:1:"8";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1197, 138, 'position', 'normal'),
(1198, 138, 'layout', 'default'),
(1199, 138, 'hide_on_screen', ''),
(1200, 138, '_edit_lock', '1498299204:1'),
(1203, 90, 'price_related_prods', 'a:4:{i:0;s:2:"86";i:1;s:2:"88";i:2;s:2:"90";i:3;s:2:"82";}'),
(1204, 90, '_price_related_prods', 'field_594e24ee5f26c'),
(1205, 138, 'field_594e276f91a9a', 'a:14:{s:3:"key";s:19:"field_594e276f91a9a";s:5:"label";s:42:"Phụ kiện phù hợp với sản phẩm";s:4:"name";s:16:"prod_accessories";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"return_format";s:2:"id";s:9:"post_type";a:1:{i:0;s:7:"product";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";s:0:"";s:3:"max";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(1207, 90, 'prod_accessories', 'a:6:{i:0;s:3:"104";i:1;s:3:"112";i:2;s:3:"110";i:3;s:3:"101";i:4;s:3:"106";i:5;s:3:"108";}'),
(1208, 90, '_prod_accessories', 'field_594e276f91a9a'),
(1209, 90, 'prod_fullbox', 'Bộ sản phẩm gồm: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim'),
(1212, 138, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"product";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1213, 138, '_wp_trash_meta_status', 'publish'),
(1214, 138, '_wp_trash_meta_time', '1498299346'),
(1215, 138, '_wp_desired_post_slug', 'acf_san-pham-phu-kien-lien-quan'),
(1216, 90, '_product_attributes', 'a:4:{s:11:"pa_man-hinh";a:6:{s:4:"name";s:11:"pa_man-hinh";s:5:"value";s:0:"";s:8:"position";i:0;s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:6:"pa_ram";a:6:{s:4:"name";s:6:"pa_ram";s:5:"value";s:0:"";s:8:"position";i:1;s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:6:"pa_cpu";a:6:{s:4:"name";s:6:"pa_cpu";s:5:"value";s:0:"";s:8:"position";i:2;s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:13:"pa_camera-sau";a:6:{s:4:"name";s:13:"pa_camera-sau";s:5:"value";s:0:"";s:8:"position";i:3;s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(1217, 88, '_yoast_wpseo_primary_product_acce', ''),
(1218, 88, '_yoast_wpseo_primary_warrant', ''),
(1219, 139, '_wp_attached_file', '2017/06/giao-hang.png'),
(1220, 139, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:66;s:6:"height";i:57;s:4:"file";s:21:"2017/06/giao-hang.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1221, 140, '_wp_attached_file', '2017/06/thanh-toan.png'),
(1222, 140, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:69;s:6:"height";i:57;s:4:"file";s:22:"2017/06/thanh-toan.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1225, 142, '_wp_attached_file', '2017/06/100percent-1.png'),
(1226, 142, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:209;s:6:"height";i:247;s:4:"file";s:24:"2017/06/100percent-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"100percent-1-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"100percent-1-209x200.png";s:5:"width";i:209;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"100percent-1-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1227, 94, '_yoast_wpseo_primary_product_acce', ''),
(1228, 94, '_yoast_wpseo_primary_warrant', ''),
(1229, 90, '_wp_old_slug', 'iphone-6s-plus-64g-chua-active-fullbox'),
(1230, 88, '_wp_old_slug', 'iphone-5s-quoc-te-16gb-xam-like-new'),
(1231, 6, '_edit_lock', '1498386241:1'),
(1232, 143, '_menu_item_type', 'taxonomy'),
(1233, 143, '_menu_item_menu_item_parent', '0'),
(1234, 143, '_menu_item_object_id', '89'),
(1235, 143, '_menu_item_object', 'category'),
(1236, 143, '_menu_item_target', ''),
(1237, 143, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1238, 143, '_menu_item_xfn', ''),
(1239, 143, '_menu_item_url', ''),
(1241, 144, '_menu_item_type', 'taxonomy'),
(1242, 144, '_menu_item_menu_item_parent', '0'),
(1243, 144, '_menu_item_object_id', '1'),
(1244, 144, '_menu_item_object', 'category'),
(1245, 144, '_menu_item_target', ''),
(1246, 144, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1247, 144, '_menu_item_xfn', ''),
(1248, 144, '_menu_item_url', ''),
(1250, 145, '_menu_item_type', 'taxonomy'),
(1251, 145, '_menu_item_menu_item_parent', '0'),
(1252, 145, '_menu_item_object_id', '88'),
(1253, 145, '_menu_item_object', 'category'),
(1254, 145, '_menu_item_target', ''),
(1255, 145, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1256, 145, '_menu_item_xfn', ''),
(1257, 145, '_menu_item_url', ''),
(1259, 146, '_menu_item_type', 'taxonomy'),
(1260, 146, '_menu_item_menu_item_parent', '0'),
(1261, 146, '_menu_item_object_id', '76'),
(1262, 146, '_menu_item_object', 'category'),
(1263, 146, '_menu_item_target', ''),
(1264, 146, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1265, 146, '_menu_item_xfn', ''),
(1266, 146, '_menu_item_url', ''),
(1268, 147, '_menu_item_type', 'taxonomy'),
(1269, 147, '_menu_item_menu_item_parent', '0'),
(1270, 147, '_menu_item_object_id', '73'),
(1271, 147, '_menu_item_object', 'category'),
(1272, 147, '_menu_item_target', ''),
(1273, 147, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1274, 147, '_menu_item_xfn', ''),
(1275, 147, '_menu_item_url', ''),
(1277, 148, '_menu_item_type', 'taxonomy'),
(1278, 148, '_menu_item_menu_item_parent', '0'),
(1279, 148, '_menu_item_object_id', '56'),
(1280, 148, '_menu_item_object', 'category'),
(1281, 148, '_menu_item_target', ''),
(1282, 148, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1283, 148, '_menu_item_xfn', ''),
(1284, 148, '_menu_item_url', ''),
(1286, 149, '_wp_attached_file', '2017/06/images-1.jpg'),
(1287, 149, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1900;s:6:"height";i:240;s:4:"file";s:20:"2017/06/images-1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"images-1-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"images-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"images-1-768x97.jpg";s:5:"width";i:768;s:6:"height";i:97;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"images-1-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"images-1-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"images-1-600x240.jpg";s:5:"width";i:600;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:21:"images-1-1170x240.jpg";s:5:"width";i:1170;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_magnifier";a:4:{s:4:"file";s:20:"images-1-600x240.jpg";s:5:"width";i:600;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1288, 150, '_wp_attached_file', '2017/06/cod.jpg'),
(1289, 150, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1066;s:4:"file";s:15:"2017/06/cod.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"cod-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"cod-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"cod-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"cod-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"cod-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:15:"cod-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:16:"cod-1170x450.jpg";s:5:"width";i:1170;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_magnifier";a:4:{s:4:"file";s:15:"cod-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"6.3";s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 70D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1497088856";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"42";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1290, 1, '_thumbnail_id', '150'),
(1291, 7, '_edit_lock', '1498458529:1'),
(1292, 7, '_edit_last', '1'),
(1293, 7, '_wp_page_template', 'default'),
(1294, 7, '_yoast_wpseo_content_score', '30'),
(1295, 152, '_order_key', 'wc_order_5950a5e5d8808'),
(1296, 152, '_customer_user', '1'),
(1297, 152, '_payment_method', 'bacs'),
(1298, 152, '_payment_method_title', 'Direct bank transfer'),
(1299, 152, '_transaction_id', ''),
(1300, 152, '_customer_ip_address', '::1'),
(1301, 152, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.110 safari/537.36 opr/45.0.2552.898'),
(1302, 152, '_created_via', 'checkout'),
(1303, 152, '_date_completed', ''),
(1304, 152, '_completed_date', ''),
(1305, 152, '_date_paid', ''),
(1306, 152, '_paid_date', ''),
(1307, 152, '_cart_hash', 'fd5cedb416c9bb6876ad70f3bb34fe43'),
(1308, 152, '_billing_first_name', 'Nguyễn Văn Lam'),
(1309, 152, '_billing_last_name', ''),
(1310, 152, '_billing_company', ''),
(1311, 152, '_billing_address_1', 'Cầu Giấy - Hà Nội'),
(1312, 152, '_billing_address_2', ''),
(1313, 152, '_billing_city', ''),
(1314, 152, '_billing_state', ''),
(1315, 152, '_billing_postcode', ''),
(1316, 152, '_billing_country', ''),
(1317, 152, '_billing_email', 'skyfrost.07@gmail.com'),
(1318, 152, '_billing_phone', '0123456774'),
(1319, 152, '_shipping_first_name', 'Nguyễn Văn Lam'),
(1320, 152, '_shipping_last_name', ''),
(1321, 152, '_shipping_company', ''),
(1322, 152, '_shipping_address_1', 'Cầu Giấy - Hà Nội'),
(1323, 152, '_shipping_address_2', ''),
(1324, 152, '_shipping_city', ''),
(1325, 152, '_shipping_state', ''),
(1326, 152, '_shipping_postcode', ''),
(1327, 152, '_shipping_country', ''),
(1328, 152, '_order_currency', 'VND'),
(1329, 152, '_cart_discount', '0'),
(1330, 152, '_cart_discount_tax', '0'),
(1331, 152, '_order_shipping', '0'),
(1332, 152, '_order_shipping_tax', '0'),
(1333, 152, '_order_tax', '0'),
(1334, 152, '_order_total', '14289000'),
(1335, 152, '_order_version', '3.0.9'),
(1336, 152, '_prices_include_tax', 'no'),
(1337, 152, '_billing_address_index', 'Nguyễn Văn Lam   Cầu Giấy - Hà Nội      skyfrost.07@gmail.com 0123456774'),
(1338, 152, '_shipping_address_index', 'Nguyễn Văn Lam   Cầu Giấy - Hà Nội     '),
(1339, 152, '_shipping_method', 'a:1:{i:0;s:15:"free_shipping:1";}'),
(1340, 152, '_recorded_sales', 'yes'),
(1341, 152, '_recorded_coupon_usage_counts', 'yes'),
(1342, 152, '_edit_lock', '1498469735:1'),
(1343, 153, '_order_key', 'wc_order_5950ac75370c1'),
(1344, 153, '_customer_user', '1'),
(1345, 153, '_payment_method', 'bacs'),
(1346, 153, '_payment_method_title', 'Chuyển khoản ngann hàng'),
(1347, 153, '_transaction_id', ''),
(1348, 153, '_customer_ip_address', '::1'),
(1349, 153, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.110 safari/537.36 opr/45.0.2552.898'),
(1350, 153, '_created_via', 'checkout'),
(1351, 153, '_date_completed', ''),
(1352, 153, '_completed_date', ''),
(1353, 153, '_date_paid', ''),
(1354, 153, '_paid_date', ''),
(1355, 153, '_cart_hash', '649e998715eb4ac663c1cdacfff78a2e'),
(1356, 153, '_billing_first_name', 'Nguyễn Văn Lam'),
(1357, 153, '_billing_last_name', ''),
(1358, 153, '_billing_company', ''),
(1359, 153, '_billing_address_1', 'Cầu Giấy - Hà Nội'),
(1360, 153, '_billing_address_2', ''),
(1361, 153, '_billing_city', ''),
(1362, 153, '_billing_state', ''),
(1363, 153, '_billing_postcode', ''),
(1364, 153, '_billing_country', ''),
(1365, 153, '_billing_email', 'skyfrost.07@gmail.com'),
(1366, 153, '_billing_phone', '0123456774'),
(1367, 153, '_shipping_first_name', 'Nguyễn Văn Lam'),
(1368, 153, '_shipping_last_name', ''),
(1369, 153, '_shipping_company', ''),
(1370, 153, '_shipping_address_1', 'Cầu Giấy - Hà Nội'),
(1371, 153, '_shipping_address_2', ''),
(1372, 153, '_shipping_city', ''),
(1373, 153, '_shipping_state', ''),
(1374, 153, '_shipping_postcode', ''),
(1375, 153, '_shipping_country', ''),
(1376, 153, '_order_currency', 'VND'),
(1377, 153, '_cart_discount', '0'),
(1378, 153, '_cart_discount_tax', '0'),
(1379, 153, '_order_shipping', '0'),
(1380, 153, '_order_shipping_tax', '0'),
(1381, 153, '_order_tax', '0'),
(1382, 153, '_order_total', '2490000'),
(1383, 153, '_order_version', '3.0.9'),
(1384, 153, '_prices_include_tax', 'no'),
(1385, 153, '_billing_address_index', 'Nguyễn Văn Lam   Cầu Giấy - Hà Nội      skyfrost.07@gmail.com 0123456774'),
(1386, 153, '_shipping_address_index', 'Nguyễn Văn Lam   Cầu Giấy - Hà Nội     '),
(1387, 153, '_shipping_method', 'a:1:{i:0;s:15:"free_shipping:1";}'),
(1388, 153, '_recorded_sales', 'yes'),
(1389, 153, '_recorded_coupon_usage_counts', 'yes'),
(1390, 154, '_order_key', 'wc_order_5950ad03edeb2'),
(1391, 154, '_customer_user', '1'),
(1392, 154, '_payment_method', 'bacs'),
(1393, 154, '_payment_method_title', 'Chuyển khoản ngân hàng'),
(1394, 154, '_transaction_id', ''),
(1395, 154, '_customer_ip_address', '::1'),
(1396, 154, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.110 safari/537.36 opr/45.0.2552.898'),
(1397, 154, '_created_via', 'checkout'),
(1398, 154, '_date_completed', ''),
(1399, 154, '_completed_date', ''),
(1400, 154, '_date_paid', ''),
(1401, 154, '_paid_date', ''),
(1402, 154, '_cart_hash', 'ef27ce671d5399312f842e5dc3f95bf2'),
(1403, 154, '_billing_first_name', 'Nguyễn Văn Lam'),
(1404, 154, '_billing_last_name', ''),
(1405, 154, '_billing_company', ''),
(1406, 154, '_billing_address_1', 'Cầu Giấy - Hà Nội'),
(1407, 154, '_billing_address_2', ''),
(1408, 154, '_billing_city', ''),
(1409, 154, '_billing_state', ''),
(1410, 154, '_billing_postcode', ''),
(1411, 154, '_billing_country', ''),
(1412, 154, '_billing_email', 'skyfrost.07@gmail.com'),
(1413, 154, '_billing_phone', '0123456774'),
(1414, 154, '_shipping_first_name', 'Nguyễn Văn Lam'),
(1415, 154, '_shipping_last_name', ''),
(1416, 154, '_shipping_company', ''),
(1417, 154, '_shipping_address_1', 'Cầu Giấy - Hà Nội'),
(1418, 154, '_shipping_address_2', ''),
(1419, 154, '_shipping_city', ''),
(1420, 154, '_shipping_state', ''),
(1421, 154, '_shipping_postcode', ''),
(1422, 154, '_shipping_country', ''),
(1423, 154, '_order_currency', 'VND'),
(1424, 154, '_cart_discount', '0'),
(1425, 154, '_cart_discount_tax', '0'),
(1426, 154, '_order_shipping', '0'),
(1427, 154, '_order_shipping_tax', '0'),
(1428, 154, '_order_tax', '0'),
(1429, 154, '_order_total', '13990000'),
(1430, 154, '_order_version', '3.0.9'),
(1431, 154, '_prices_include_tax', 'no'),
(1432, 154, '_billing_address_index', 'Nguyễn Văn Lam   Cầu Giấy - Hà Nội      skyfrost.07@gmail.com 0123456774'),
(1433, 154, '_shipping_address_index', 'Nguyễn Văn Lam   Cầu Giấy - Hà Nội     '),
(1434, 154, '_shipping_method', 'a:1:{i:0;s:15:"free_shipping:1";}'),
(1435, 154, '_recorded_sales', 'yes'),
(1436, 154, '_recorded_coupon_usage_counts', 'yes'),
(1437, 155, '_wp_attached_file', '2017/06/banner-ngang-1-2.jpg'),
(1438, 155, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:620;s:6:"height";i:180;s:4:"file";s:28:"2017/06/banner-ngang-1-2.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"banner-ngang-1-2-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"banner-ngang-1-2-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"banner-ngang-1-2-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"banner-ngang-1-2-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:28:"banner-ngang-1-2-600x180.jpg";s:5:"width";i:600;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_magnifier";a:4:{s:4:"file";s:28:"banner-ngang-1-2-600x180.jpg";s:5:"width";i:600;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1439, 157, '_wp_attached_file', '2017/06/banner-ngang-2.png'),
(1440, 157, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:620;s:6:"height";i:180;s:4:"file";s:26:"2017/06/banner-ngang-2.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"banner-ngang-2-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"banner-ngang-2-300x180.png";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"banner-ngang-2-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"banner-ngang-2-300x180.png";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:26:"banner-ngang-2-600x180.png";s:5:"width";i:600;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:14:"shop_magnifier";a:4:{s:4:"file";s:26:"banner-ngang-2-600x180.png";s:5:"width";i:600;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1441, 158, '_edit_last', '1'),
(1442, 158, 'field_5950b5722696e', 'a:11:{s:3:"key";s:19:"field_5950b5722696e";s:5:"label";s:31:"Số điện thoại trả góp";s:4:"name";s:17:"phone_installment";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:66:"<h3>Cần vay ngay</h3>\r\nHãy gọi <br />\r\n<h3>0123432423423</h3>";s:7:"toolbar";s:5:"basic";s:12:"media_upload";s:2:"no";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1444, 158, 'position', 'normal'),
(1445, 158, 'layout', 'default'),
(1446, 158, 'hide_on_screen', ''),
(1447, 158, '_edit_lock', '1498466741:1'),
(1449, 123, 'phone_installment', '<h3 style="text-align: center;">Cần vay ngay</h3>\r\n<p style="text-align: center;">Hãy gọi</p>\r\n\r\n<h3 style="text-align: center;">0123432423423</h3>'),
(1450, 123, '_phone_installment', 'field_5950b5722696e'),
(1453, 158, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:3:"123";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1454, 159, '_wp_attached_file', '2017/06/home-credit.png');
INSERT INTO `plbs_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1455, 159, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:118;s:4:"file";s:23:"2017/06/home-credit.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"home-credit-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"home-credit-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1456, 154, '_edit_lock', '1498469529:1'),
(1457, 160, '_wc_review_count', '0'),
(1458, 160, '_wc_rating_count', 'a:0:{}'),
(1459, 160, '_wc_average_rating', '0'),
(1460, 160, '_edit_last', '1'),
(1461, 160, '_edit_lock', '1498480432:1'),
(1462, 161, '_wp_attached_file', '2017/06/iPhone-7-f5mobile.jpg'),
(1463, 161, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:29:"2017/06/iPhone-7-f5mobile.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"iPhone-7-f5mobile-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"iPhone-7-f5mobile-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"iPhone-7-f5mobile-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:29:"iPhone-7-f5mobile-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:29:"iPhone-7-f5mobile-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1464, 160, '_thumbnail_id', '161'),
(1465, 160, 'prod_fullbox', 'Bộ sản phẩm gồm: Hộp, Sạc, Sách hướng dẫn, Cáp, Cây lấy sim'),
(1466, 160, '_sku', ''),
(1467, 160, '_regular_price', '12590000'),
(1468, 160, '_sale_price', ''),
(1469, 160, '_sale_price_dates_from', ''),
(1470, 160, '_sale_price_dates_to', ''),
(1471, 160, 'total_sales', '0'),
(1472, 160, '_tax_status', 'taxable'),
(1473, 160, '_tax_class', ''),
(1474, 160, '_manage_stock', 'no'),
(1475, 160, '_backorders', 'no'),
(1476, 160, '_sold_individually', 'no'),
(1477, 160, '_weight', ''),
(1478, 160, '_length', ''),
(1479, 160, '_width', ''),
(1480, 160, '_height', ''),
(1481, 160, '_upsell_ids', 'a:0:{}'),
(1482, 160, '_crosssell_ids', 'a:0:{}'),
(1483, 160, '_purchase_note', ''),
(1484, 160, '_default_attributes', 'a:0:{}'),
(1485, 160, '_virtual', 'no'),
(1486, 160, '_downloadable', 'no'),
(1487, 160, '_product_image_gallery', ''),
(1488, 160, '_download_limit', '-1'),
(1489, 160, '_download_expiry', '-1'),
(1490, 160, '_stock', NULL),
(1491, 160, '_stock_status', 'instock'),
(1492, 160, '_product_version', '3.0.9'),
(1493, 160, '_price', '12590000'),
(1494, 160, '_yoast_wpseo_primary_product_cat', '30'),
(1495, 160, '_yoast_wpseo_primary_product_acce', ''),
(1496, 160, '_yoast_wpseo_primary_warrant', '77'),
(1497, 160, '_yoast_wpseo_content_score', '30'),
(1498, 162, '_wc_review_count', '0'),
(1499, 162, '_wc_rating_count', 'a:0:{}'),
(1500, 162, '_wc_average_rating', '0'),
(1501, 163, '_wp_attached_file', '2017/06/OPPO-A37-1.png'),
(1502, 163, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:22:"2017/06/OPPO-A37-1.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"OPPO-A37-1-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"OPPO-A37-1-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"OPPO-A37-1-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"OPPO-A37-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"slide";a:4:{s:4:"file";s:22:"OPPO-A37-1-600x450.png";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1503, 162, '_edit_last', '1'),
(1504, 162, '_edit_lock', '1498480616:1'),
(1505, 162, '_thumbnail_id', '163'),
(1506, 162, '_sku', ''),
(1507, 162, '_regular_price', '3900000'),
(1508, 162, '_sale_price', ''),
(1509, 162, '_sale_price_dates_from', ''),
(1510, 162, '_sale_price_dates_to', ''),
(1511, 162, 'total_sales', '0'),
(1512, 162, '_tax_status', 'taxable'),
(1513, 162, '_tax_class', ''),
(1514, 162, '_manage_stock', 'no'),
(1515, 162, '_backorders', 'no'),
(1516, 162, '_sold_individually', 'no'),
(1517, 162, '_weight', ''),
(1518, 162, '_length', ''),
(1519, 162, '_width', ''),
(1520, 162, '_height', ''),
(1521, 162, '_upsell_ids', 'a:1:{i:0;i:79;}'),
(1522, 162, '_crosssell_ids', 'a:2:{i:0;i:101;i:1;i:104;}'),
(1523, 162, '_purchase_note', ''),
(1524, 162, '_default_attributes', 'a:0:{}'),
(1525, 162, '_virtual', 'no'),
(1526, 162, '_downloadable', 'no'),
(1527, 162, '_product_image_gallery', ''),
(1528, 162, '_download_limit', '-1'),
(1529, 162, '_download_expiry', '-1'),
(1530, 162, '_stock', NULL),
(1531, 162, '_stock_status', 'instock'),
(1532, 162, '_product_version', '3.0.9'),
(1533, 162, '_price', '3900000'),
(1534, 162, '_yoast_wpseo_primary_product_cat', '38'),
(1535, 162, '_yoast_wpseo_primary_product_acce', ''),
(1536, 162, '_yoast_wpseo_primary_warrant', '78'),
(1537, 162, '_yoast_wpseo_content_score', '30'),
(1538, 164, '_wc_review_count', '0'),
(1539, 164, '_wc_rating_count', 'a:0:{}'),
(1540, 164, '_wc_average_rating', '0'),
(1541, 165, '_wp_attached_file', '2017/06/ipad-mini-2-grey.png'),
(1542, 165, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:28:"2017/06/ipad-mini-2-grey.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"ipad-mini-2-grey-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:28:"ipad-mini-2-grey-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"ipad-mini-2-grey-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"ipad-mini-2-grey-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"slide";a:4:{s:4:"file";s:28:"ipad-mini-2-grey-600x450.png";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1543, 164, '_edit_last', '1'),
(1544, 164, '_thumbnail_id', '165'),
(1545, 164, 'prod_fullbox', 'Bộ sản phẩm gồm:  Sạc, Cáp, Cây lấy sim'),
(1546, 164, '_sku', ''),
(1547, 164, '_regular_price', '7500000'),
(1548, 164, '_sale_price', ''),
(1549, 164, '_sale_price_dates_from', ''),
(1550, 164, '_sale_price_dates_to', ''),
(1551, 164, 'total_sales', '0'),
(1552, 164, '_tax_status', 'taxable'),
(1553, 164, '_tax_class', ''),
(1554, 164, '_manage_stock', 'no'),
(1555, 164, '_backorders', 'no'),
(1556, 164, '_sold_individually', 'no'),
(1557, 164, '_weight', ''),
(1558, 164, '_length', ''),
(1559, 164, '_width', ''),
(1560, 164, '_height', ''),
(1561, 164, '_upsell_ids', 'a:0:{}'),
(1562, 164, '_crosssell_ids', 'a:0:{}'),
(1563, 164, '_purchase_note', ''),
(1564, 164, '_default_attributes', 'a:0:{}'),
(1565, 164, '_virtual', 'no'),
(1566, 164, '_downloadable', 'no'),
(1567, 164, '_product_image_gallery', ''),
(1568, 164, '_download_limit', '-1'),
(1569, 164, '_download_expiry', '-1'),
(1570, 164, '_stock', NULL),
(1571, 164, '_stock_status', 'instock'),
(1572, 164, '_product_version', '3.0.9'),
(1573, 164, '_price', '7500000'),
(1574, 164, '_yoast_wpseo_primary_product_cat', '34'),
(1575, 164, '_yoast_wpseo_primary_product_acce', ''),
(1576, 164, '_yoast_wpseo_primary_warrant', '78'),
(1577, 164, '_yoast_wpseo_content_score', '30'),
(1578, 164, '_edit_lock', '1498489919:1'),
(1582, 166, '_edit_last', '1'),
(1583, 166, '_edit_lock', '1498489222:1'),
(1584, 166, '_wp_page_template', 'index.php'),
(1585, 166, '_yoast_wpseo_content_score', '30'),
(1586, 167, '_order_key', 'wc_order_59510ac6a8ce0'),
(1587, 167, '_customer_user', '1'),
(1588, 167, '_payment_method', 'cod'),
(1589, 167, '_payment_method_title', 'Trả tiền mặt khi nhận hàng'),
(1590, 167, '_transaction_id', ''),
(1591, 167, '_customer_ip_address', '::1'),
(1592, 167, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.110 safari/537.36 opr/45.0.2552.898'),
(1593, 167, '_created_via', 'checkout'),
(1594, 167, '_date_completed', ''),
(1595, 167, '_completed_date', ''),
(1596, 167, '_date_paid', '1498508599'),
(1597, 167, '_paid_date', '2017-06-27 03:23:19'),
(1598, 167, '_cart_hash', 'b3b1e90b7d450831a439f062f952c95c'),
(1599, 167, '_billing_first_name', 'Admin'),
(1600, 167, '_billing_last_name', ''),
(1601, 167, '_billing_company', ''),
(1602, 167, '_billing_address_1', 'Cầu Giấy - Hà Nội'),
(1603, 167, '_billing_address_2', ''),
(1604, 167, '_billing_city', ''),
(1605, 167, '_billing_state', ''),
(1606, 167, '_billing_postcode', ''),
(1607, 167, '_billing_country', ''),
(1608, 167, '_billing_email', 'skyfrost.07@gmail.com'),
(1609, 167, '_billing_phone', '0123456774'),
(1610, 167, '_shipping_first_name', 'Admin'),
(1611, 167, '_shipping_last_name', ''),
(1612, 167, '_shipping_company', ''),
(1613, 167, '_shipping_address_1', 'Cầu Giấy - Hà Nội'),
(1614, 167, '_shipping_address_2', ''),
(1615, 167, '_shipping_city', ''),
(1616, 167, '_shipping_state', ''),
(1617, 167, '_shipping_postcode', ''),
(1618, 167, '_shipping_country', ''),
(1619, 167, '_order_currency', 'VND'),
(1620, 167, '_cart_discount', '0'),
(1621, 167, '_cart_discount_tax', '0'),
(1622, 167, '_order_shipping', '0'),
(1623, 167, '_order_shipping_tax', '0'),
(1624, 167, '_order_tax', '0'),
(1625, 167, '_order_total', '5989000'),
(1626, 167, '_order_version', '3.0.9'),
(1627, 167, '_prices_include_tax', 'no'),
(1628, 167, '_billing_address_index', 'Admin   Cầu Giấy - Hà Nội      skyfrost.07@gmail.com 0123456774'),
(1629, 167, '_shipping_address_index', 'Admin   Cầu Giấy - Hà Nội     '),
(1630, 167, '_shipping_method', 'a:1:{i:0;s:15:"free_shipping:1";}'),
(1631, 167, '_download_permissions_granted', 'yes'),
(1632, 167, '_recorded_sales', 'yes'),
(1633, 167, '_recorded_coupon_usage_counts', 'yes'),
(1634, 86, '_yoast_wpseo_primary_product_acce', ''),
(1635, 86, '_yoast_wpseo_primary_warrant', '77'),
(1636, 168, '_edit_last', '1'),
(1637, 168, '_edit_lock', '1498490927:1'),
(1638, 168, '_wp_page_template', 'page-questions.php'),
(1639, 168, '_yoast_wpseo_content_score', '30'),
(1640, 169, '_menu_item_type', 'taxonomy'),
(1641, 169, '_menu_item_menu_item_parent', '0'),
(1642, 169, '_menu_item_object_id', '46'),
(1643, 169, '_menu_item_object', 'category'),
(1644, 169, '_menu_item_target', ''),
(1645, 169, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1646, 169, '_menu_item_xfn', ''),
(1647, 169, '_menu_item_url', ''),
(1649, 170, '_menu_item_type', 'taxonomy'),
(1650, 170, '_menu_item_menu_item_parent', '173'),
(1651, 170, '_menu_item_object_id', '92'),
(1652, 170, '_menu_item_object', 'question_cat'),
(1653, 170, '_menu_item_target', ''),
(1654, 170, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1655, 170, '_menu_item_xfn', ''),
(1656, 170, '_menu_item_url', ''),
(1658, 171, '_menu_item_type', 'taxonomy'),
(1659, 171, '_menu_item_menu_item_parent', '173'),
(1660, 171, '_menu_item_object_id', '93'),
(1661, 171, '_menu_item_object', 'question_cat'),
(1662, 171, '_menu_item_target', ''),
(1663, 171, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1664, 171, '_menu_item_xfn', ''),
(1665, 171, '_menu_item_url', ''),
(1667, 172, '_menu_item_type', 'taxonomy'),
(1668, 172, '_menu_item_menu_item_parent', '173'),
(1669, 172, '_menu_item_object_id', '94'),
(1670, 172, '_menu_item_object', 'question_cat'),
(1671, 172, '_menu_item_target', ''),
(1672, 172, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1673, 172, '_menu_item_xfn', ''),
(1674, 172, '_menu_item_url', ''),
(1676, 173, '_menu_item_type', 'post_type'),
(1677, 173, '_menu_item_menu_item_parent', '0'),
(1678, 173, '_menu_item_object_id', '168'),
(1679, 173, '_menu_item_object', 'page'),
(1680, 173, '_menu_item_target', ''),
(1681, 173, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1682, 173, '_menu_item_xfn', ''),
(1683, 173, '_menu_item_url', ''),
(1685, 174, '_edit_last', '1'),
(1686, 174, '_edit_lock', '1498574915:1'),
(1687, 174, '_yoast_wpseo_primary_question_cat', '92'),
(1688, 174, '_yoast_wpseo_content_score', '30'),
(1689, 175, '_edit_last', '1'),
(1690, 175, 'field_59513820309c0', 'a:14:{s:3:"key";s:19:"field_59513820309c0";s:5:"label";s:9:"Họ tên";s:4:"name";s:15:"question_author";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:12:"Khách hàng";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1691, 175, 'field_59513871309c1', 'a:12:{s:3:"key";s:19:"field_59513871309c1";s:5:"label";s:5:"Email";s:4:"name";s:14:"question_email";s:4:"type";s:5:"email";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(1693, 175, 'position', 'acf_after_title'),
(1694, 175, 'layout', 'default'),
(1695, 175, 'hide_on_screen', ''),
(1696, 175, '_edit_lock', '1498495174:1'),
(1697, 176, '_edit_last', '1'),
(1698, 176, 'field_5951390ba4000', 'a:11:{s:3:"key";s:19:"field_5951390ba4000";s:5:"label";s:23:"Trả lời của bạn";s:4:"name";s:15:"question_answer";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1699, 176, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"hoi_dap";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1700, 176, 'position', 'normal'),
(1701, 176, 'layout', 'default'),
(1702, 176, 'hide_on_screen', ''),
(1703, 176, '_edit_lock', '1498495143:1'),
(1704, 175, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"hoi_dap";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1705, 174, 'question_author', 'Khách hàng'),
(1706, 174, '_question_author', 'field_59513820309c0'),
(1707, 174, 'question_email', 'khachhang@gmail.com'),
(1708, 174, '_question_email', 'field_59513871309c1'),
(1709, 174, 'question_answer', 'Chào bạn, hiện tại vẫn chưa có công cụ jailbreak cho phiên bản iOS 10 bạn ạ. Tuy nhiên, bạn vẫn có thể dùng máy lock như bình thường.\r\n\r\nBạn mua máy, <b>Shop </b>sẽ fix hết lỗi cho bạn dùng bình thường như máy quốc tế chỉ là chưa jailbreak thì bạn không cài được các ứng dụng ngoài thôi. Khi có công cụ jailbreak, nếu muốn bạn có thể mang qua để nhân viễn kĩ thuật hỗ trợ.\r\n\r\n<b>Shop </b>bảo hành trọn đời máy về phần mềm nên bạn muốn jailbreak hoặc gặp vấn đề gì về phần mềm có thể mang qua bất kì lúc nào trong khung giờ làm việc của cửa hàng sẽ có nhân viên kĩ thuật hỗ trợ miễn phí.'),
(1710, 174, '_question_answer', 'field_5951390ba4000'),
(1711, 177, '_edit_last', '1'),
(1712, 177, '_edit_lock', '1498495477:1'),
(1713, 177, 'question_author', 'Khách hàng'),
(1714, 177, '_question_author', 'field_59513820309c0'),
(1715, 177, 'question_email', 'khachhang@gmail.com'),
(1716, 177, '_question_email', 'field_59513871309c1'),
(1717, 177, 'question_answer', ''),
(1718, 177, '_question_answer', 'field_5951390ba4000'),
(1719, 177, '_yoast_wpseo_primary_question_cat', ''),
(1720, 177, '_yoast_wpseo_content_score', '60'),
(1721, 178, '_edit_last', '1'),
(1722, 178, '_edit_lock', '1498495326:1'),
(1723, 178, 'question_author', 'Khách hàng'),
(1724, 178, '_question_author', 'field_59513820309c0'),
(1725, 178, 'question_email', 'khachhang@gmail.com'),
(1726, 178, '_question_email', 'field_59513871309c1'),
(1727, 178, 'question_answer', ''),
(1728, 178, '_question_answer', 'field_5951390ba4000'),
(1729, 178, '_yoast_wpseo_primary_question_cat', '92'),
(1730, 178, '_yoast_wpseo_content_score', '60'),
(1736, 180, 'question_author', 'IBF'),
(1737, 180, 'question_email', 'ifb@gmail.com'),
(1738, 180, '_edit_lock', '1498499614:1'),
(1739, 181, 'question_author', 'IBF'),
(1740, 181, 'question_email', 'ifb@gmail.com'),
(1741, 182, 'question_author', 'LNV'),
(1742, 182, 'question_email', 'lmv@gmail.com'),
(1743, 182, '_edit_lock', '1498499779:1'),
(1744, 183, 'question_author', 'ok'),
(1745, 183, 'question_email', 'ok@gmail.com'),
(1746, 183, '_post_views', '14'),
(1747, 174, '_post_views', '28'),
(1748, 177, '_post_views', '1'),
(1749, 181, '_post_views', '3'),
(1750, 182, '_post_views', '1'),
(1751, 180, '_post_views', '5'),
(1752, 184, '_menu_item_type', 'taxonomy'),
(1753, 184, '_menu_item_menu_item_parent', '0'),
(1754, 184, '_menu_item_object_id', '91'),
(1755, 184, '_menu_item_object', 'product_acce'),
(1756, 184, '_menu_item_target', ''),
(1757, 184, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1758, 184, '_menu_item_xfn', ''),
(1759, 184, '_menu_item_url', ''),
(1761, 185, '_menu_item_type', 'taxonomy'),
(1762, 185, '_menu_item_menu_item_parent', '184'),
(1763, 185, '_menu_item_object_id', '68'),
(1764, 185, '_menu_item_object', 'product_acce'),
(1765, 185, '_menu_item_target', ''),
(1766, 185, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1767, 185, '_menu_item_xfn', ''),
(1768, 185, '_menu_item_url', ''),
(1770, 186, '_menu_item_type', 'taxonomy'),
(1771, 186, '_menu_item_menu_item_parent', '184'),
(1772, 186, '_menu_item_object_id', '72'),
(1773, 186, '_menu_item_object', 'product_acce'),
(1774, 186, '_menu_item_target', ''),
(1775, 186, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1776, 186, '_menu_item_xfn', ''),
(1777, 186, '_menu_item_url', ''),
(1779, 187, '_menu_item_type', 'taxonomy'),
(1780, 187, '_menu_item_menu_item_parent', '184'),
(1781, 187, '_menu_item_object_id', '67'),
(1782, 187, '_menu_item_object', 'product_acce'),
(1783, 187, '_menu_item_target', ''),
(1784, 187, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1785, 187, '_menu_item_xfn', ''),
(1786, 187, '_menu_item_url', ''),
(1790, 1, '_pingme', '1'),
(1791, 1, '_encloseme', '1'),
(1792, 188, '_edit_last', '1'),
(1793, 188, '_edit_lock', '1498577798:1'),
(1794, 189, '_wp_attached_file', '2017/06/modelos-de-contrato-de-trabajo-2014.jpg'),
(1795, 189, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:368;s:6:"height";i:326;s:4:"file";s:47:"2017/06/modelos-de-contrato-de-trabajo-2014.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"modelos-de-contrato-de-trabajo-2014-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:47:"modelos-de-contrato-de-trabajo-2014-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:45:"modelos-de-contrato-de-trabajo-2014-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:47:"modelos-de-contrato-de-trabajo-2014-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1796, 188, '_thumbnail_id', '189'),
(1797, 188, '_yoast_wpseo_content_score', '30'),
(1798, 190, '_edit_last', '1'),
(1799, 190, '_edit_lock', '1498577830:1'),
(1800, 191, '_wp_attached_file', '2017/06/save_money-256.png'),
(1801, 191, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:256;s:6:"height";i:256;s:4:"file";s:26:"2017/06/save_money-256.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"save_money-256-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"save_money-256-256x200.png";s:5:"width";i:256;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"save_money-256-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1802, 190, '_thumbnail_id', '191'),
(1803, 190, '_yoast_wpseo_content_score', '30'),
(1804, 192, '_edit_last', '1'),
(1805, 192, '_edit_lock', '1498577865:1'),
(1806, 193, '_wp_attached_file', '2017/06/chinh-sach-doi-tra-hang.jpg'),
(1807, 193, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:225;s:4:"file";s:35:"2017/06/chinh-sach-doi-tra-hang.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"chinh-sach-doi-tra-hang-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"chinh-sach-doi-tra-hang-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"chinh-sach-doi-tra-hang-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:35:"chinh-sach-doi-tra-hang-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1808, 192, '_thumbnail_id', '193'),
(1809, 192, '_yoast_wpseo_content_score', '30'),
(1810, 194, '_edit_last', '1'),
(1811, 194, '_edit_lock', '1498584600:1'),
(1815, 194, '_yoast_wpseo_content_score', '30'),
(1816, 196, '_edit_last', '1'),
(1817, 196, '_edit_lock', '1498583112:1'),
(1818, 196, '_wp_page_template', 'page-policy.php'),
(1819, 196, '_yoast_wpseo_content_score', '30'),
(1829, 197, '_menu_item_type', 'post_type'),
(1830, 197, '_menu_item_menu_item_parent', '0'),
(1831, 197, '_menu_item_object_id', '194'),
(1832, 197, '_menu_item_object', 'chinh_sach'),
(1833, 197, '_menu_item_target', ''),
(1834, 197, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1835, 197, '_menu_item_xfn', ''),
(1836, 197, '_menu_item_url', ''),
(1838, 198, '_menu_item_type', 'post_type'),
(1839, 198, '_menu_item_menu_item_parent', '0'),
(1840, 198, '_menu_item_object_id', '192'),
(1841, 198, '_menu_item_object', 'chinh_sach'),
(1842, 198, '_menu_item_target', ''),
(1843, 198, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1844, 198, '_menu_item_xfn', ''),
(1845, 198, '_menu_item_url', ''),
(1847, 199, '_menu_item_type', 'post_type'),
(1848, 199, '_menu_item_menu_item_parent', '0'),
(1849, 199, '_menu_item_object_id', '190'),
(1850, 199, '_menu_item_object', 'chinh_sach'),
(1851, 199, '_menu_item_target', ''),
(1852, 199, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1853, 199, '_menu_item_xfn', ''),
(1854, 199, '_menu_item_url', ''),
(1855, 200, '_wp_attached_file', '2017/06/chinh-sach-bao-hanhjpg.jpg'),
(1856, 200, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:34:"2017/06/chinh-sach-bao-hanhjpg.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"chinh-sach-bao-hanhjpg-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"chinh-sach-bao-hanhjpg-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"chinh-sach-bao-hanhjpg-80x80.jpg";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1857, 194, '_thumbnail_id', '200'),
(1858, 201, '_wp_attached_file', '2017/06/icon.png'),
(1859, 201, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:16;s:6:"height";i:16;s:4:"file";s:16:"2017/06/icon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1860, 112, '_kksr_ratings', '4'),
(1861, 112, '_kksr_casts', '1'),
(1862, 112, '_kksr_ips', 'YToxOntpOjA7czozOiI6OjEiO30='),
(1863, 112, '_kksr_avg', '4.00'),
(1864, 1, '_kksr_ratings', '12'),
(1865, 1, '_kksr_casts', '3'),
(1866, 1, '_kksr_ips', 'YToxOntpOjA7czozOiI6OjEiO30='),
(1867, 1, '_kksr_avg', '4.00'),
(1868, 42, '_kksr_ratings', '5'),
(1869, 42, '_kksr_casts', '1'),
(1870, 42, '_kksr_ips', 'YToxOntpOjA7czozOiI6OjEiO30='),
(1871, 42, '_kksr_avg', '5.00'),
(1872, 160, '_kksr_ratings', '4'),
(1873, 160, '_kksr_casts', '1'),
(1874, 160, '_kksr_ips', 'YToxOntpOjA7czozOiI6OjEiO30='),
(1875, 160, '_kksr_avg', '4.00'),
(1876, 110, '_kksr_ratings', '5'),
(1877, 110, '_kksr_casts', '1'),
(1878, 110, '_kksr_ips', 'YToxOntpOjA7czozOiI6OjEiO30='),
(1879, 110, '_kksr_avg', '5.00');

-- --------------------------------------------------------

--
-- Table structure for table `plbs_posts`
--

CREATE TABLE `plbs_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_general_ci NOT NULL,
  `post_title` text COLLATE utf8_general_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_general_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_general_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_general_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_general_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_general_ci NOT NULL,
  `pinged` text COLLATE utf8_general_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_general_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_general_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `plbs_posts`
--

INSERT INTO `plbs_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-06-18 15:22:54', '2017-06-18 08:22:54', 'Nhằm nâng cao chất lượng phục vụ cho tất cả quý khách hàng  ở xa, không thể đến trực tiếp cửa hàng, F5 Mobile ưu đãi gấp 2 lần bình thường về chất lượng phụ kiện đi kèm.\r\n\r\nMua hàng online. X2 ưu đãi. Tặng thêm bộ sạc cáp foxconn loại 1 trị giá <strong>200.000đ</strong> để khách hàng dự phòng khi bộ cũ gặp vấn đề mà khỏi lo đi mua ngoài bị chặt chém.\r\n\r\nNgoài bộ sản phẩm kèm theo máy fullbox đầy đủ Cáp, sạc, tai nghe… Từ ngày 10/6 tất cả các khách hàng mua hàng từ xa tại F5 Mobile sẽ được tặng thêm 1 bộ phụ kiện cao cấp của Foxconn gồm có cáp, sạc kèm theo. Các bạn sẽ nhận được 2 bộ phụ kiện khi nhận được sản phẩm.', 'Khuyến mại chào hè – Mua hàng ONLINE, X2 ưu đãi', '', 'publish', 'open', 'open', '', 'khuyen-mai-chao-mua-hang-online-x2-uu-dai', '', '', '2017-06-27 22:21:28', '2017-06-27 15:21:28', '', 0, 'http://localhost/wp/?p=1', 0, 'post', '', 0),
(4, 1, '2017-06-13 06:18:55', '2017-06-13 06:18:55', '', 'Media', '', 'private', 'closed', 'closed', '', 'media', '', '', '2017-06-13 06:18:55', '2017-06-13 06:18:55', '', 0, 'http://localhost/wp/?option-tree=media', 0, 'option-tree', '', 0),
(5, 1, '2017-06-13 18:24:01', '2017-06-13 18:24:01', '', 'Sản phẩm', '', 'publish', 'closed', 'closed', '', 'san-pham', '', '', '2017-06-18 06:10:33', '2017-06-18 06:10:33', '', 0, 'http://localhost/wp/cua-hang/', 0, 'page', '', 0),
(6, 1, '2017-06-13 18:24:02', '2017-06-13 18:24:02', '[woocommerce_cart]', 'Giỏ hàng', '', 'publish', 'closed', 'closed', '', 'gio-hang', '', '', '2017-06-13 18:24:02', '2017-06-13 18:24:02', '', 0, 'http://localhost/wp/gio-hang/', 0, 'page', '', 0),
(7, 1, '2017-06-13 18:24:02', '2017-06-13 18:24:02', '[woocommerce_checkout]', 'Thanh toán', '', 'publish', 'closed', 'closed', '', 'thanh-toan', '', '', '2017-06-26 11:19:51', '2017-06-26 04:19:51', '', 0, 'http://localhost/wp/thanh-toan/', 0, 'page', '', 0),
(8, 1, '2017-06-13 18:24:02', '2017-06-13 18:24:02', '[woocommerce_my_account]', 'Tài khoản', '', 'publish', 'closed', 'closed', '', 'tai-khoan', '', '', '2017-06-18 06:10:46', '2017-06-18 06:10:46', '', 0, 'http://localhost/wp/tai-khoan/', 0, 'page', '', 0),
(28, 1, '2017-06-18 06:13:07', '2017-06-18 06:13:07', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2017-06-18 06:13:07', '2017-06-18 06:13:07', '', 0, 'http://localhost/wp/?page_id=28', 0, 'page', '', 0),
(29, 1, '2017-06-18 07:23:39', '2017-06-18 07:23:39', '', 'Tùy chỉnh slider', '', 'publish', 'closed', 'closed', '', 'acf_tuy-chinh-slider', '', '', '2017-06-18 07:31:36', '2017-06-18 07:31:36', '', 0, 'http://localhost/f5mobile/?post_type=acf&#038;p=29', 0, 'acf', '', 0),
(30, 1, '2017-06-18 07:27:11', '2017-06-18 07:27:11', '', 'Miễn phí vận chuyển toàn quốc', '', 'publish', 'closed', 'closed', '', 'mien-phi-van-chuyen-toan-quoc', '', '', '2017-06-18 07:54:19', '2017-06-18 07:54:19', '', 0, 'http://localhost/f5mobile/?post_type=slider&#038;p=30', 0, 'slider', '', 0),
(31, 1, '2017-06-18 07:26:17', '2017-06-18 07:26:17', '', 'slider1', '', 'inherit', 'open', 'closed', '', 'slider1', '', '', '2017-06-18 07:26:17', '2017-06-18 07:26:17', '', 30, 'http://localhost/f5mobile/wp-content/uploads/2017/06/slider1.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2017-06-18 07:28:24', '2017-06-18 07:28:24', '', 'Tặng pin dự phòng chính hãng khi mua trả góp', '', 'publish', 'closed', 'closed', '', 'tang-pin-du-phong-chinh-hang-khi-mua-tra-gop', '', '', '2017-06-18 07:55:18', '2017-06-18 07:55:18', '', 0, 'http://localhost/f5mobile/?post_type=slider&#038;p=32', 0, 'slider', '', 0),
(33, 1, '2017-06-18 07:28:05', '2017-06-18 07:28:05', '', '123', '', 'inherit', 'open', 'closed', '', '123', '', '', '2017-06-18 07:28:05', '2017-06-18 07:28:05', '', 32, 'http://localhost/f5mobile/wp-content/uploads/2017/06/123.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2017-06-18 07:29:10', '2017-06-18 07:29:10', '', 'Mua iPhone cũ bảo hành gấp đôi máy mới', '', 'publish', 'closed', 'closed', '', 'mua-iphone-cu-bao-hanh-gap-doi-may-moi', '', '', '2017-06-18 07:32:24', '2017-06-18 07:32:24', '', 0, 'http://localhost/f5mobile/?post_type=slider&#038;p=34', 0, 'slider', '', 0),
(35, 1, '2017-06-18 07:28:59', '2017-06-18 07:28:59', '', 'banerr-baohanh-1', '', 'inherit', 'open', 'closed', '', 'banerr-baohanh-1', '', '', '2017-06-18 07:28:59', '2017-06-18 07:28:59', '', 34, 'http://localhost/f5mobile/wp-content/uploads/2017/06/banerr-baohanh-1.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2017-06-18 07:30:02', '2017-06-18 07:30:02', '', 'Độc quyền tại Shop - Dùng thử miễn phí', '', 'publish', 'closed', 'closed', '', 'doc-quyen-tai-shop-dung-thu-mien-phi', '', '', '2017-06-18 07:53:35', '2017-06-18 07:53:35', '', 0, 'http://localhost/f5mobile/?post_type=slider&#038;p=36', 0, 'slider', '', 0),
(37, 1, '2017-06-18 07:29:55', '2017-06-18 07:29:55', '', 'slider2', '', 'inherit', 'open', 'closed', '', 'slider2', '', '', '2017-06-18 07:29:55', '2017-06-18 07:29:55', '', 36, 'http://localhost/f5mobile/wp-content/uploads/2017/06/slider2.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2017-06-18 08:04:05', '2017-06-18 08:04:05', '', 'Bảo Hành Điện Tử - An Tâm Mua Sắm', '', 'publish', 'closed', 'closed', '', 'bao-hanh-dien-tu-tam-mua-sam', '', '', '2017-06-18 08:04:05', '2017-06-18 08:04:05', '', 0, 'http://localhost/f5mobile/?post_type=slider&#038;p=38', 0, 'slider', '', 0),
(39, 1, '2017-06-18 08:03:49', '2017-06-18 08:03:49', '', 'bner', '', 'inherit', 'open', 'closed', '', 'bner', '', '', '2017-06-18 08:03:49', '2017-06-18 08:03:49', '', 38, 'http://localhost/f5mobile/wp-content/uploads/2017/06/bner.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2017-06-18 08:11:08', '2017-06-18 08:11:08', 'Nhằm nâng cao chất lượng phục vụ cho tất cả quý khách hàng  ở xa, không thể đến trực tiếp cửa hàng, F5 Mobile ưu đãi gấp 2 lần bình thường về chất lượng phụ kiện đi kèm.\n\nMua hàng online. X2 ưu đãi. Tặng thêm bộ sạc cáp foxconn loại 1 trị giá <strong>200.000đ</strong> để khách hàng dự phòng khi bộ cũ gặp vấn đề mà khỏi lo đi mua ngoài bị chặt chém.\n\n<img class="aligncenter wp-image-39478 " src="https://f5mobile.vn/wp-content/uploads/2017/06/cod.jpg" alt="" width="738" height="492" />\n\nNgoài bộ sản phẩm kèm theo máy fullbox đầy đủ Cáp, sạc, tai nghe… Từ ngày 10/6 tất cả các khách hàng mua hàng từ xa tại F5 Mobile sẽ được tặng thêm 1 bộ phụ kiện cao cấp của Foxconn gồm có cáp, sạc kèm theo. Các bạn sẽ nhận được 2 bộ phụ kiện khi nhận được sản phẩm.', 'Khuyến mại chào hè – Mua hàng ONLINE, X2 ưu đãi', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2017-06-18 08:11:08', '2017-06-18 08:11:08', '', 1, 'http://localhost/f5mobile/1-autosave-v1/', 0, 'revision', '', 0),
(42, 1, '2017-06-18 08:13:40', '2017-06-18 01:13:40', 'Nhằm để tri ân khách hàng đã và đang ủng hộ F5 Mobile trong suốt thời gian vừa qua, chúng tôi sẽ gửi tặng đến chương trình khuyến mãi lần này cho tất cả các khách hàng tham gia mua hàng trả góp tại F5 Mobile.\r\n<ul>\r\n 	<li><strong>Thời gian áp dụng :</strong> Chương trình bắt đầu diễn ra từ ngày 18/5/2017</li>\r\n 	<li><strong>Đối tượng nhận thưởng:</strong> Tất cả các khách hàng mua trả góp thành công tại cửa hàng</li>\r\n 	<li><strong>Phần thưởng</strong>: Nhận ngay 1 pin dự phòng chính hãng 5000 mAh Vegar</li>\r\n</ul>', 'Tặng pin dự phòng chính hãng khi mua trả góp tại Shop', '', 'publish', 'open', 'open', '', 'tang-pin-du-phong-chinh-hang-khi-mua-tra-gop-tai-shop', '', '', '2017-06-27 22:21:19', '2017-06-27 15:21:19', '', 0, 'http://localhost/f5mobile/?p=42', 0, 'post', '', 0),
(43, 1, '2017-06-18 08:14:12', '2017-06-18 08:14:12', '<strong>Bản cập nhật iOS 10.2.1 tuy không bổ sung thêm các tính năng mới nhưng nó sẽ khắc phục một số lỗi gây khó chịu cho người dùng từ trước tới nay, điển hình là lỗi sập nguồn trên iPhone 6s.</strong>\r\n\r\nTháng 9 năm ngoái, người dùng iPhone 6/6s liên tục gặp phải lỗi tự động sập nguồn dù thời lượng pin vẫn còn từ 30-40%. Thậm chí nhiều máy sau khi sập nguồn không thể khởi động lại.\r\n\r\nApple sau đó đã phải cứu vãn tình thế bằng cách triển khai một trương trình hỗ trợ thay pin miễn phí cho iPhone gặp sự cố.', 'iOS 10.2.1 có thể khắc phục lỗi sập nguồn trên iPhone 6/6s', '', 'publish', 'open', 'open', '', 'ios-10-2-1-co-khac-phuc-loi-sap-nguon-tren-iphone-66s', '', '', '2017-06-18 08:14:12', '2017-06-18 08:14:12', '', 0, 'http://localhost/f5mobile/?p=43', 0, 'post', '', 0),
(44, 1, '2017-06-18 08:14:37', '2017-06-18 01:14:37', '<strong>Kể từ ngày 25/02/2017 hệ thống F5mobile áp dụng tiêu chuẩn đặc biệt dành riêng cho iPhone cũ, khẳng định chế độ hậu mãi số 01 Việt Nam: “Mua máy cũ giá rẻ, an tâm gấp đôi mua mới”.</strong>', '24 Tháng: Chế độ bảo hành “iPhone cũ” số một Việt Nam', '', 'publish', 'open', 'open', '', '24-thang-che-bao-hanh-iphone-cu-mot-viet-nam', '', '', '2017-06-25 21:59:35', '2017-06-25 14:59:35', '', 0, 'http://localhost/f5mobile/?p=44', 0, 'post', '', 0),
(45, 1, '2017-06-18 08:15:03', '2017-06-18 01:15:03', '<strong>Factime – Tính năng gọi video trên hiện tại chỉ cho phép 2 người kết nối với nhau, tuy nhiên điều này sẽ thay đổi khi iOS 11 ra mắt.</strong>\r\n\r\nFacetime là tính năng gọi video trên nền tảng iOS được Apple ra giới thiệu lần đầu vào năm 2010. Hiện nay tính năng này mới cho phép 2 người gọi video với nhau cùng một lúc.', 'iOS 11 sẽ cho phép gọi FaceTime nhiều người cùng lúc', '', 'publish', 'open', 'open', '', 'ios-11-se-cho-phep-goi-facetime-nhieu-nguoi-cung-luc', '', '', '2017-06-25 21:59:24', '2017-06-25 14:59:24', '', 0, 'http://localhost/f5mobile/?p=45', 0, 'post', '', 0),
(47, 1, '2017-06-18 15:40:11', '2017-06-18 08:40:11', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2017-06-18 15:40:11', '2017-06-18 08:40:11', '', 4, 'http://localhost/f5mobile/wp-content/uploads/2017/06/logo.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2017-06-18 16:28:19', '2017-06-18 09:28:19', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2017-06-27 22:19:46', '2017-06-27 15:19:46', '', 0, 'http://localhost/f5mobile/?p=48', 16, 'nav_menu_item', '', 0),
(49, 1, '2017-06-18 16:28:19', '2017-06-18 09:28:19', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2017-06-27 22:19:46', '2017-06-27 15:19:46', '', 24, 'http://localhost/f5mobile/?p=49', 17, 'nav_menu_item', '', 0),
(50, 1, '2017-06-18 16:28:19', '2017-06-18 09:28:19', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2017-06-27 22:19:46', '2017-06-27 15:19:46', '', 24, 'http://localhost/f5mobile/?p=50', 18, 'nav_menu_item', '', 0),
(51, 1, '2017-06-18 16:28:19', '2017-06-18 09:28:19', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2017-06-27 22:19:46', '2017-06-27 15:19:46', '', 24, 'http://localhost/f5mobile/?p=51', 19, 'nav_menu_item', '', 0),
(52, 1, '2017-06-18 16:28:19', '2017-06-18 09:28:19', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2017-06-27 22:19:46', '2017-06-27 15:19:46', '', 24, 'http://localhost/f5mobile/?p=52', 20, 'nav_menu_item', '', 0),
(53, 1, '2017-06-18 16:28:19', '2017-06-18 09:28:19', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2017-06-27 22:19:45', '2017-06-27 15:19:45', '', 0, 'http://localhost/f5mobile/?p=53', 9, 'nav_menu_item', '', 0),
(54, 1, '2017-06-18 16:28:20', '2017-06-18 09:28:20', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2017-06-27 22:19:45', '2017-06-27 15:19:45', '', 23, 'http://localhost/f5mobile/?p=54', 10, 'nav_menu_item', '', 0),
(55, 1, '2017-06-18 16:28:20', '2017-06-18 09:28:20', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2017-06-27 22:19:45', '2017-06-27 15:19:45', '', 23, 'http://localhost/f5mobile/?p=55', 11, 'nav_menu_item', '', 0),
(56, 1, '2017-06-18 16:28:20', '2017-06-18 09:28:20', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2017-06-27 22:19:45', '2017-06-27 15:19:45', '', 23, 'http://localhost/f5mobile/?p=56', 12, 'nav_menu_item', '', 0),
(57, 1, '2017-06-18 16:28:20', '2017-06-18 09:28:20', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2017-06-27 22:19:45', '2017-06-27 15:19:45', '', 23, 'http://localhost/f5mobile/?p=57', 13, 'nav_menu_item', '', 0),
(58, 1, '2017-06-18 16:28:20', '2017-06-18 09:28:20', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2017-06-27 22:19:46', '2017-06-27 15:19:46', '', 23, 'http://localhost/f5mobile/?p=58', 14, 'nav_menu_item', '', 0),
(59, 1, '2017-06-18 16:28:20', '2017-06-18 09:28:20', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2017-06-27 22:19:46', '2017-06-27 15:19:46', '', 23, 'http://localhost/f5mobile/?p=59', 15, 'nav_menu_item', '', 0),
(60, 1, '2017-06-18 16:28:20', '2017-06-18 09:28:20', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2017-06-27 22:19:45', '2017-06-27 15:19:45', '', 0, 'http://localhost/f5mobile/?p=60', 1, 'nav_menu_item', '', 0),
(61, 1, '2017-06-18 16:28:20', '2017-06-18 09:28:20', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2017-06-27 22:19:45', '2017-06-27 15:19:45', '', 58, 'http://localhost/f5mobile/?p=61', 2, 'nav_menu_item', '', 0),
(62, 1, '2017-06-18 16:28:20', '2017-06-18 09:28:20', ' ', '', '', 'publish', 'closed', 'closed', '', '62', '', '', '2017-06-27 22:19:45', '2017-06-27 15:19:45', '', 58, 'http://localhost/f5mobile/?p=62', 3, 'nav_menu_item', '', 0),
(63, 1, '2017-06-18 16:28:20', '2017-06-18 09:28:20', ' ', '', '', 'publish', 'closed', 'closed', '', '63', '', '', '2017-06-27 22:19:45', '2017-06-27 15:19:45', '', 51, 'http://localhost/f5mobile/?p=63', 4, 'nav_menu_item', '', 0),
(64, 1, '2017-06-18 16:28:21', '2017-06-18 09:28:21', ' ', '', '', 'publish', 'closed', 'closed', '', '64', '', '', '2017-06-27 22:19:45', '2017-06-27 15:19:45', '', 22, 'http://localhost/f5mobile/?p=64', 5, 'nav_menu_item', '', 0),
(65, 1, '2017-06-18 16:28:21', '2017-06-18 09:28:21', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2017-06-27 22:19:45', '2017-06-27 15:19:45', '', 22, 'http://localhost/f5mobile/?p=65', 6, 'nav_menu_item', '', 0),
(66, 1, '2017-06-18 16:28:21', '2017-06-18 09:28:21', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2017-06-27 22:19:45', '2017-06-27 15:19:45', '', 58, 'http://localhost/f5mobile/?p=66', 7, 'nav_menu_item', '', 0),
(67, 1, '2017-06-18 16:28:21', '2017-06-18 09:28:21', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2017-06-27 22:19:45', '2017-06-27 15:19:45', '', 22, 'http://localhost/f5mobile/?p=67', 8, 'nav_menu_item', '', 0),
(69, 1, '2017-06-18 16:30:58', '2017-06-18 09:30:58', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2017-06-27 22:19:46', '2017-06-27 15:19:46', '', 0, 'http://localhost/f5mobile/?p=69', 29, 'nav_menu_item', '', 0),
(71, 1, '2017-06-18 16:38:13', '2017-06-18 09:38:13', '<p dir="ltr">Với tiêu chí lấy khách hàng là <strong>trung tâm</strong>, từng chi tiết, từng sản phẩm, từng quy trình, phong cách của Shop đều được chau chuốt để mang lại những trải nghiệm tuyệt vời cho khách hàng theo đúng tinh thần hiếu khách Omotenashi của người Nhật</p>\r\n<p dir="ltr">“Mỗi thành viên trong gia đình Shop cam kết đón tiếp và chăm sóc khách hàng như khách quý đến nhà, nhằm mang lại cho họ cảm giác thân thuộc, thoải mái như trong chính ngôi nhà của mình, đồng thời cảm nhận được sự hoàn mỹ và hài lòng vượt trên cả mong đợi”</p>', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2017-06-26 10:45:25', '2017-06-26 03:45:25', '', 0, 'http://localhost/f5mobile/?page_id=71', 0, 'page', '', 0),
(73, 1, '2017-06-18 16:41:39', '2017-06-18 09:41:39', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2017-06-27 22:19:46', '2017-06-27 15:19:46', '', 46, 'http://localhost/f5mobile/?p=73', 30, 'nav_menu_item', '', 0),
(75, 1, '2017-06-18 17:33:51', '2017-06-18 10:33:51', '', 'square-logo', '', 'inherit', 'open', 'closed', '', 'square-logo', '', '', '2017-06-18 17:33:51', '2017-06-18 10:33:51', '', 4, 'http://localhost/f5mobile/wp-content/uploads/2017/06/square-logo.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2017-06-18 17:35:00', '2017-06-18 10:35:00', '', '1-2', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2017-06-18 17:35:00', '2017-06-18 10:35:00', '', 4, 'http://localhost/f5mobile/wp-content/uploads/2017/06/1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2017-06-19 01:06:14', '2017-06-18 18:06:14', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2017-06-19 01:06:14', '2017-06-18 18:06:14', '', 4, 'http://localhost/f5mobile/wp-content/uploads/2017/06/banner.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2017-06-19 23:35:30', '2017-06-19 16:35:30', '<img class="alignnone size-medium wp-image-80" src="http://localhost/f5mobile/wp-content/uploads/2017/06/1-3-525x350-300x200.jpg" alt="" width="300" height="200" />', 'OPPO F3', '', 'publish', 'open', 'closed', '', 'oppo-f3', '', '', '2017-06-19 23:35:31', '2017-06-19 16:35:31', '', 0, 'http://localhost/f5mobile/?post_type=product&#038;p=79', 0, 'product', '', 0),
(80, 1, '2017-06-19 23:33:18', '2017-06-19 16:33:18', '', '1-3-525x350', '', 'inherit', 'open', 'closed', '', '1-3-525x350', '', '', '2017-06-19 23:33:18', '2017-06-19 16:33:18', '', 79, 'http://localhost/f5mobile/wp-content/uploads/2017/06/1-3-525x350.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2017-06-19 23:33:57', '2017-06-19 16:33:57', '', 'oppo-f3-f5mobile', '', 'inherit', 'open', 'closed', '', 'oppo-f3-f5mobile', '', '', '2017-06-19 23:33:57', '2017-06-19 16:33:57', '', 79, 'http://localhost/f5mobile/wp-content/uploads/2017/06/oppo-f3-f5mobile.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2017-06-19 23:39:55', '2017-06-19 16:39:55', 'iPhone 6S Plus Lock – 32GB – Like new', 'iPhone 6S Plus Lock – 32GB – Like new', '<div class="khuyenmai chinhsachsp">\r\n\r\n<strong class="tit">Quà khuyến mại</strong>\r\n<div class="cont">\r\n<ul>\r\n 	<li>Xám/ Trắng/ Hồng/ Vàng: 9,200,000đ/ 9,600,000d/ 9,800,000đ/ 10,100,000đ</li>\r\n 	<li>Tặng dán cường lực chống trầy xước, hạn chế rơi vỡ trị giá 100.000đ</li>\r\n 	<li>Tặng ốp lưng silicon trị giá 50.000đ</li>\r\n 	<li>Tặng sim ghép fix lỗi trị giá 150.000đ</li>\r\n 	<li>Trợ giá mua pin dự phòng Rock chính hãng 10.000mAh chỉ với 299.000đ</li>\r\n 	<li>Giảm 30% khi mua đồ chơi smartphone tại store</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<strong class="tit">Tặng kèm gói bảo hành:</strong>\r\n<div class="option_pack"><span id="bh0" class="active" data-submit="Vàng_0" data-price="0">Vàng</span></div>\r\n<div id="pack_0" class="bh-cont">\r\n<div class="shieldf5">\r\n<ul>\r\n 	<li><strong>Phần cứng:</strong> 24 Tháng</li>\r\n 	<li><strong>Phần mềm:</strong> Hỗ trợ trọn đời</li>\r\n 	<li><strong>Màn hình &amp; nguồn:</strong> 24 Tháng (các nơi khác đa số không bh màn hình hoặc bh tính vào phí).</li>\r\n 	<li><strong>1 Đổi 1:</strong> Ngay tức thì trong vòng 30 ngày nếu máy lỗi phần cứng.</li>\r\n 	<li><strong>Ngoài thời hạn bảo hành:</strong> Miễn phí công sửa chữa.</li>\r\n 	<li><strong>Dùng thử 10 ngày miễn phí.</strong></li>\r\n 	<li><strong>3 Ngày hoàn tiền không cần lý do</strong></li>\r\n</ul>\r\nGiá gói bảo hành: <strong class="price_value">500.000 đ</strong>\r\n\r\n</div>\r\n</div>', 'publish', 'open', 'closed', '', 'iphone-6s-plus-lock-32gb-like-new', '', '', '2017-06-22 20:53:16', '2017-06-22 13:53:16', '', 0, 'http://localhost/f5mobile/?post_type=product&#038;p=82', 0, 'product', '', 0),
(83, 1, '2017-06-19 23:40:25', '2017-06-19 16:40:25', '', 'iphone-6s-xam', '', 'inherit', 'open', 'closed', '', 'iphone-6s-xam', '', '', '2017-06-19 23:40:25', '2017-06-19 16:40:25', '', 82, 'http://localhost/f5mobile/wp-content/uploads/2017/06/iphone-6s-xam.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2017-06-19 23:42:00', '2017-06-19 16:42:00', '', 'iPhone 6 plus 16G FullBox (CPO)', '', 'publish', 'open', 'closed', '', 'iphone-6-plus-16g-fullbox-cpo', '', '', '2017-06-26 19:40:07', '2017-06-26 12:40:07', '', 0, 'http://localhost/f5mobile/?post_type=product&#038;p=84', 0, 'product', '', 0),
(85, 1, '2017-06-19 23:41:30', '2017-06-19 16:41:30', '', 'medium', '', 'inherit', 'open', 'closed', '', 'medium-2', '', '', '2017-06-19 23:41:30', '2017-06-19 16:41:30', '', 84, 'http://localhost/f5mobile/wp-content/uploads/2017/06/medium.png', 0, 'attachment', 'image/png', 0),
(86, 1, '2017-06-19 23:43:41', '2017-06-19 16:43:41', '<div class="khuyenmai chinhsachsp">\r\n\r\n<strong class="tit">Quà khuyến mại</strong>\r\n<div class="cont">\r\n<ul>\r\n 	<li>Hàng máy trần mới sạc vài lần.</li>\r\n 	<li>Xám/Trắng/Vàng: 2,700,000đ/2,800,000đ/2,900,000đ</li>\r\n 	<li>Tặng dán cường lực chống trầy xước, hạn chế rơi vỡ</li>\r\n 	<li>Tặng ốp lưng silicon</li>\r\n 	<li>Tặng sim ghép fix lỗi</li>\r\n 	<li>Trợ giá mua pin dự phòng Rock chính hãng 10.000mAh chỉ với 299.000đ</li>\r\n 	<li>Giảm 30% khi mua đồ chơi smartphone tại store</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<strong class="tit">Tặng kèm gói bảo hành:</strong>\r\n<div class="option_pack"><span id="bh0" class="active" data-submit="Vàng_0" data-price="0"><i class="fa fa-check-square"></i>Vàng</span></div>\r\n<div id="pack_0" class="bh-cont">\r\n<div class="shieldf5">\r\n<ul>\r\n 	<li><strong>Phần cứng:</strong> 06 Tháng</li>\r\n 	<li><strong>Phần mềm:</strong> Hỗ trợ trọn đời</li>\r\n 	<li><strong>Màn hình &amp; nguồn:</strong> 06 Tháng (các nơi khác đa số không bh màn hình hoặc bh tính vào phí).</li>\r\n 	<li><strong>1 Đổi 1:</strong> Ngay tức thì trong vòng 30 ngày nếu máy lỗi phần cứng.</li>\r\n 	<li><strong>Ngoài thời hạn bảo hành:</strong> Miễn phí công sửa chữa.</li>\r\n 	<li><strong>Dùng thử 10 ngày miễn phí.</strong></li>\r\n 	<li><strong>3 Ngày hoàn tiền không cần lý do</strong></li>\r\n</ul>\r\nGiá gói bảo hành: <strong class="price_value">500.000 đ</strong>\r\n\r\n</div>\r\n</div>', 'iPhone 5s Lock Nhật – 16GB – New', '<strong class="tit">Quà khuyến mại</strong>\r\n<div class="cont">\r\n<ul>\r\n 	<li>Hàng máy trần mới sạc vài lần.</li>\r\n 	<li>Xám/Trắng/Vàng: 2,700,000đ/2,800,000đ/2,900,000đ</li>\r\n 	<li>Tặng dán cường lực chống trầy xước, hạn chế rơi vỡ</li>\r\n 	<li>Tặng ốp lưng silicon</li>\r\n 	<li>Tặng sim ghép fix lỗi</li>\r\n 	<li>Trợ giá mua pin dự phòng Rock chính hãng 10.000mAh chỉ với 299.000đ</li>\r\n 	<li>Giảm 30% khi mua đồ chơi smartphone tại store</li>\r\n</ul>\r\n</div>', 'publish', 'open', 'closed', '', 'iphone-5s-lock-nhat-16gb-new', '', '', '2017-06-26 22:14:42', '2017-06-26 15:14:42', '', 0, 'http://localhost/f5mobile/?post_type=product&#038;p=86', 0, 'product', '', 0),
(87, 1, '2017-06-19 23:43:24', '2017-06-19 16:43:24', '', 'demo-ip5s-gold', '', 'inherit', 'open', 'closed', '', 'demo-ip5s-gold', '', '', '2017-06-19 23:43:24', '2017-06-19 16:43:24', '', 86, 'http://localhost/f5mobile/wp-content/uploads/2017/06/demo-ip5s-gold.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2017-06-19 23:44:57', '2017-06-19 16:44:57', 'iPhone 5s Quốc Tế – 16GB – Xám – Like new\r\n\r\n<img class="alignnone wp-image-89 size-full" src="http://localhost/f5mobile/wp-content/uploads/2017/06/iphone-5s-quoc-te.png" alt="" width="600" height="600" /> <img class="alignnone size-full wp-image-87" src="http://localhost/f5mobile/wp-content/uploads/2017/06/demo-ip5s-gold.png" alt="" width="600" height="600" />', 'iPhone 5s Quốc Tế – 16GB – Xám – Like new', '', 'publish', 'open', 'closed', '', 'san-pham-don-gian', '', '', '2017-06-26 17:22:27', '2017-06-26 10:22:27', '', 0, 'http://localhost/f5mobile/?post_type=product&#038;p=88', 0, 'product', '', 0),
(89, 1, '2017-06-19 23:44:28', '2017-06-19 16:44:28', '', 'iphone-5s-quoc-te', '', 'inherit', 'open', 'closed', '', 'iphone-5s-quoc-te', '', '', '2017-06-19 23:44:28', '2017-06-19 16:44:28', '', 88, 'http://localhost/f5mobile/wp-content/uploads/2017/06/iphone-5s-quoc-te.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2017-06-19 23:45:59', '2017-06-19 16:45:59', 'iPhe 6s Plus 64G Chưa Active Fullboxon', 'iPhe 6s Plus 64G Chưa Active Fullboxon', '<strong class="tit">Quà khuyến mại</strong>\r\n<div class="cont">\r\n<ul>\r\n 	<li>Tặng dán cường lực chống trầy xước, hạn chế rơi vỡ trị giá 100.000đ</li>\r\n 	<li>Tặng ốp lưng silicon trị giá 50.000đ</li>\r\n 	<li>Trợ giá mua pin dự phòng Rock chính hãng 10.000mAh chỉ với 299.000đ</li>\r\n 	<li>Giảm 30% khi mua đồ chơi smartphone tại store</li>\r\n</ul>\r\n</div>', 'publish', 'open', 'closed', '', 'iphe-6s-plus-64g-chua-active-fullboxon', '', '', '2017-06-26 19:42:43', '2017-06-26 12:42:43', '', 0, 'http://localhost/f5mobile/?post_type=product&#038;p=90', 0, 'product', '', 0),
(91, 1, '2017-06-19 23:45:46', '2017-06-19 16:45:46', '', 'iphone-6s-plus-fpt-gold', '', 'inherit', 'open', 'closed', '', 'iphone-6s-plus-fpt-gold', '', '', '2017-06-19 23:45:46', '2017-06-19 16:45:46', '', 90, 'http://localhost/f5mobile/wp-content/uploads/2017/06/iphone-6s-plus-fpt-gold.png', 0, 'attachment', 'image/png', 0),
(92, 1, '2017-06-19 23:47:06', '2017-06-19 16:47:06', '', 'iPad Mini 4 4G/Wifi – 16G – Trắng – Like New', '', 'publish', 'open', 'closed', '', 'ipad-mini-4-4gwifi-16g-trang-like-new', '', '', '2017-06-20 23:22:17', '2017-06-20 16:22:17', '', 0, 'http://localhost/f5mobile/?post_type=product&#038;p=92', 0, 'product', '', 0),
(93, 1, '2017-06-19 23:46:44', '2017-06-19 16:46:44', '', 'ipad-mini-2-silver', '', 'inherit', 'open', 'closed', '', 'ipad-mini-2-silver', '', '', '2017-06-19 23:46:44', '2017-06-19 16:46:44', '', 92, 'http://localhost/f5mobile/wp-content/uploads/2017/06/ipad-mini-2-silver.png', 0, 'attachment', 'image/png', 0),
(94, 1, '2017-06-19 23:48:23', '2017-06-19 16:48:23', '', 'iPad Mini 4 4G/Wifi – 32G – Vàng – Like New', '', 'publish', 'open', 'closed', '', 'ipad-mini-4-4gwifi-32g-vang-like-new', '', '', '2017-06-25 03:42:04', '2017-06-24 20:42:04', '', 0, 'http://localhost/f5mobile/?post_type=product&#038;p=94', 0, 'product', '', 0),
(95, 1, '2017-06-19 23:48:14', '2017-06-19 16:48:14', '', 'ipad-mini-3', '', 'inherit', 'open', 'closed', '', 'ipad-mini-3', '', '', '2017-06-19 23:48:14', '2017-06-19 16:48:14', '', 94, 'http://localhost/f5mobile/wp-content/uploads/2017/06/ipad-mini-3.png', 0, 'attachment', 'image/png', 0),
(96, 1, '2017-06-20 02:10:19', '2017-06-19 19:10:19', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2017-06-20 02:10:19', '2017-06-19 19:10:19', '', 4, 'http://localhost/f5mobile/wp-content/uploads/2017/06/images.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2017-06-20 23:42:08', '2017-06-20 16:42:08', '', 'phu-kien-4', '', 'inherit', 'open', 'closed', '', 'phu-kien-4', '', '', '2017-06-20 23:42:08', '2017-06-20 16:42:08', '', 4, 'http://localhost/f5mobile/wp-content/uploads/2017/06/phu-kien-4.png', 0, 'attachment', 'image/png', 0),
(98, 1, '2017-06-20 23:43:04', '2017-06-20 16:43:04', '', 'phu-kien-3-1', '', 'inherit', 'open', 'closed', '', 'phu-kien-3-1', '', '', '2017-06-20 23:43:04', '2017-06-20 16:43:04', '', 4, 'http://localhost/f5mobile/wp-content/uploads/2017/06/phu-kien-3-1.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2017-06-20 23:43:23', '2017-06-20 16:43:23', '', 'phu-kien-2', '', 'inherit', 'open', 'closed', '', 'phu-kien-2', '', '', '2017-06-20 23:43:23', '2017-06-20 16:43:23', '', 4, 'http://localhost/f5mobile/wp-content/uploads/2017/06/phu-kien-2.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2017-06-20 23:43:50', '2017-06-20 16:43:50', '', 'sac-du-phong', '', 'inherit', 'open', 'closed', '', 'sac-du-phong', '', '', '2017-06-20 23:43:50', '2017-06-20 16:43:50', '', 4, 'http://localhost/f5mobile/wp-content/uploads/2017/06/sac-du-phong.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2017-06-20 23:45:18', '2017-06-20 16:45:18', '', 'Củ sạc ipad', '', 'publish', 'open', 'closed', '', 'cu-sac-ipad', '', '', '2017-06-21 00:09:58', '2017-06-20 17:09:58', '', 0, 'http://localhost/f5mobile/?post_type=product&#038;p=101', 0, 'product', '', 0),
(103, 1, '2017-06-20 23:45:51', '2017-06-20 16:45:51', '', 'sac-ipad-350x350', '', 'inherit', 'open', 'closed', '', 'sac-ipad-350x350', '', '', '2017-06-20 23:45:51', '2017-06-20 16:45:51', '', 101, 'http://localhost/f5mobile/wp-content/uploads/2017/06/sac-ipad-350x350.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2017-06-20 23:47:03', '2017-06-20 16:47:03', '', 'Sạc Ôtô Rock Chính Hãng', '', 'publish', 'open', 'closed', '', 'sac-oto-rock-chinh-hang', '', '', '2017-06-21 00:09:49', '2017-06-20 17:09:49', '', 0, 'http://localhost/f5mobile/?post_type=product&#038;p=104', 0, 'product', '', 0),
(105, 1, '2017-06-20 23:46:58', '2017-06-20 16:46:58', '', '222', '', 'inherit', 'open', 'closed', '', '222', '', '', '2017-06-20 23:46:58', '2017-06-20 16:46:58', '', 104, 'http://localhost/f5mobile/wp-content/uploads/2017/06/222.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2017-06-20 23:48:38', '2017-06-20 16:48:38', '', 'Dán màn hình từ tính iPhone', '', 'publish', 'open', 'closed', '', 'dan-man-hinh-tu-tinh-iphone', '', '', '2017-06-21 00:09:31', '2017-06-20 17:09:31', '', 0, 'http://localhost/f5mobile/?post_type=product&#038;p=106', 0, 'product', '', 0),
(107, 1, '2017-06-20 23:48:32', '2017-06-20 16:48:32', '', 'mieng-dan-man-hinh-iphone-org-se', '', 'inherit', 'open', 'closed', '', 'mieng-dan-man-hinh-iphone-org-se', '', '', '2017-06-20 23:48:32', '2017-06-20 16:48:32', '', 106, 'http://localhost/f5mobile/wp-content/uploads/2017/06/mieng-dan-man-hinh-iphone-org-se.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2017-06-20 23:49:40', '2017-06-20 16:49:40', '', 'Gói dán cường lực iPhone trong 1 năm', '', 'publish', 'open', 'closed', '', 'goi-dan-cuong-luc-iphone-trong-1-nam', '', '', '2017-06-21 00:09:21', '2017-06-20 17:09:21', '', 0, 'http://localhost/f5mobile/?post_type=product&#038;p=108', 0, 'product', '', 0),
(109, 1, '2017-06-20 23:49:33', '2017-06-20 16:49:33', '', '635824870875402215_MDMH-iphone-5-a', '', 'inherit', 'open', 'closed', '', '635824870875402215_mdmh-iphone-5-a', '', '', '2017-06-20 23:49:33', '2017-06-20 16:49:33', '', 108, 'http://localhost/f5mobile/wp-content/uploads/2017/06/635824870875402215_MDMH-iphone-5-a.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2017-06-20 23:51:50', '2017-06-20 16:51:50', '', 'Cáp Sạc Lightning ZIN chính hãng', '', 'publish', 'open', 'closed', '', 'cap-sac-lightning-zin-chinh-hang', '', '', '2017-06-21 00:09:12', '2017-06-20 17:09:12', '', 0, 'http://localhost/f5mobile/?post_type=product&#038;p=110', 0, 'product', '', 0),
(111, 1, '2017-06-20 23:51:46', '2017-06-20 16:51:46', '', '22', '', 'inherit', 'open', 'closed', '', '22', '', '', '2017-06-20 23:51:46', '2017-06-20 16:51:46', '', 110, 'http://localhost/f5mobile/wp-content/uploads/2017/06/22.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2017-06-20 23:53:39', '2017-06-20 16:53:39', '', 'Pin sạc dự phòng Xiaomi 10400 mAh', '', 'publish', 'open', 'closed', '', 'pin-sac-du-phong-xiaomi-10400-mah', '', '', '2017-06-21 00:08:29', '2017-06-20 17:08:29', '', 0, 'http://localhost/f5mobile/?post_type=product&#038;p=112', 0, 'product', '', 0),
(113, 1, '2017-06-20 23:53:19', '2017-06-20 16:53:19', '', 'pin-du-phong-xiaomi-350x350', '', 'inherit', 'open', 'closed', '', 'pin-du-phong-xiaomi-350x350', '', '', '2017-06-20 23:53:19', '2017-06-20 16:53:19', '', 112, 'http://localhost/f5mobile/wp-content/uploads/2017/06/pin-du-phong-xiaomi-350x350.gif', 0, 'attachment', 'image/gif', 0),
(114, 1, '2017-06-21 00:03:44', '2017-06-20 17:03:44', '', 'Ảnh phụ kiện', '', 'publish', 'closed', 'closed', '', 'acf_anh-phu-kien', '', '', '2017-06-21 01:31:40', '2017-06-20 18:31:40', '', 0, 'http://localhost/f5mobile/?post_type=acf&#038;p=114', 0, 'acf', '', 0),
(116, 1, '2017-06-21 01:32:19', '2017-06-20 18:32:19', '', 'block-tin-tuc3', '', 'inherit', 'open', 'closed', '', 'block-tin-tuc3', '', '', '2017-06-21 01:32:19', '2017-06-20 18:32:19', '', 0, 'http://localhost/f5mobile/wp-content/uploads/2017/06/block-tin-tuc3.png', 0, 'attachment', 'image/png', 0),
(117, 1, '2017-06-21 01:32:52', '2017-06-20 18:32:52', '', 'block-tin-tuc2', '', 'inherit', 'open', 'closed', '', 'block-tin-tuc2', '', '', '2017-06-21 01:32:52', '2017-06-20 18:32:52', '', 0, 'http://localhost/f5mobile/wp-content/uploads/2017/06/block-tin-tuc2.png', 0, 'attachment', 'image/png', 0),
(118, 1, '2017-06-21 01:33:16', '2017-06-20 18:33:16', '', 'block-tin-tuc1', '', 'inherit', 'open', 'closed', '', 'block-tin-tuc1', '', '', '2017-06-21 01:33:16', '2017-06-20 18:33:16', '', 0, 'http://localhost/f5mobile/wp-content/uploads/2017/06/block-tin-tuc1.png', 0, 'attachment', 'image/png', 0),
(119, 1, '2017-06-21 01:33:43', '2017-06-20 18:33:43', '', 'block-tin-tuc4-1', '', 'inherit', 'open', 'closed', '', 'block-tin-tuc4-1', '', '', '2017-06-21 01:33:43', '2017-06-20 18:33:43', '', 0, 'http://localhost/f5mobile/wp-content/uploads/2017/06/block-tin-tuc4-1.png', 0, 'attachment', 'image/png', 0),
(123, 1, '2017-06-21 01:46:12', '2017-06-20 18:46:12', '<img class="alignnone wp-image-155 size-full" src="http://localhost/f5mobile/wp-content/uploads/2017/06/banner-ngang-1-2.jpg" alt="" width="620" height="180" /><img class="alignnone wp-image-157 size-full" src="http://localhost/f5mobile/wp-content/uploads/2017/06/banner-ngang-2.png" alt="" width="620" height="180" />', 'Tính tiền trả góp', '', 'publish', 'closed', 'closed', '', 'tinh-tien-tra-gop', '', '', '2017-06-26 14:22:27', '2017-06-26 07:22:27', '', 0, 'http://localhost/f5mobile/?page_id=123', 0, 'page', '', 0),
(124, 1, '2017-06-21 01:46:26', '2017-06-20 18:46:26', '', 'Kiểm tra đơn hàng online', '', 'publish', 'closed', 'closed', '', 'kiem-tra-don-hang-online', '', '', '2017-06-26 16:31:03', '2017-06-26 09:31:03', '', 0, 'http://localhost/f5mobile/?page_id=124', 0, 'page', '', 0),
(125, 1, '2017-06-21 01:46:43', '2017-06-20 18:46:43', '<h3><span style="font-size: 12pt;">Tính năng check thông tin bảo hành online đang được bảo trì. Quý khách hàng muốn kiểm tra thông tin bảo hành vui lòng liên hệ trực tiếp với nhân viên chăm sóc khách hàng tại fanpage: Facebook/&lt;shopname&gt; Hoặc liên hệ qua số điện thoại: 0234234234. Xin cảm ơn!</span></h3>', 'Kiểm tra thông tin bảo hành', '', 'publish', 'closed', 'closed', '', 'kiem-tra-thong-tin-bao-hanh', '', '', '2017-06-26 16:27:44', '2017-06-26 09:27:44', '', 0, 'http://localhost/f5mobile/?page_id=125', 0, 'page', '', 0),
(129, 1, '2017-06-21 01:47:29', '2017-06-20 18:47:29', ' ', '', '', 'publish', 'closed', 'closed', '', '129', '', '', '2017-06-27 22:46:37', '2017-06-27 15:46:37', '', 0, 'http://localhost/f5mobile/?p=129', 1, 'nav_menu_item', '', 0),
(130, 1, '2017-06-21 01:47:29', '2017-06-20 18:47:29', ' ', '', '', 'publish', 'closed', 'closed', '', '130', '', '', '2017-06-27 22:46:37', '2017-06-27 15:46:37', '', 0, 'http://localhost/f5mobile/?p=130', 3, 'nav_menu_item', '', 0),
(131, 1, '2017-06-21 01:47:30', '2017-06-20 18:47:30', ' ', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2017-06-27 22:46:37', '2017-06-27 15:46:37', '', 0, 'http://localhost/f5mobile/?p=131', 4, 'nav_menu_item', '', 0),
(132, 1, '2017-06-21 01:47:29', '2017-06-20 18:47:29', ' ', '', '', 'publish', 'closed', 'closed', '', '132', '', '', '2017-06-27 22:46:37', '2017-06-27 15:46:37', '', 0, 'http://localhost/f5mobile/?p=132', 2, 'nav_menu_item', '', 0),
(133, 1, '2017-06-21 01:52:04', '2017-06-20 18:52:04', '', 'bg-menu-2-1', '', 'inherit', 'open', 'closed', '', 'bg-menu-2-1', '', '', '2017-06-21 01:52:04', '2017-06-20 18:52:04', '', 4, 'http://localhost/f5mobile/wp-content/uploads/2017/06/bg-menu-2-1.png', 0, 'attachment', 'image/png', 0),
(134, 1, '2017-06-21 02:15:28', '2017-06-20 19:15:28', '', 'universal_payments', '', 'inherit', 'open', 'closed', '', 'universal_payments', '', '', '2017-06-21 02:15:28', '2017-06-20 19:15:28', '', 4, 'http://localhost/f5mobile/wp-content/uploads/2017/06/universal_payments.png', 0, 'attachment', 'image/png', 0),
(136, 1, '2017-06-21 22:36:35', '2017-06-21 15:36:35', '<div class="khuyenmai chinhsachsp">\n\n<strong class="tit">Quà khuyến mại</strong>\n<div class="cont">\n<ul>\n 	<li>Xám/ Trắng/ Hồng/ Vàng: 9,200,000đ/ 9,600,000d/ 9,800,000đ/ 10,100,000đ</li>\n 	<li>Tặng dán cường lực chống trầy xước, hạn chế rơi vỡ trị giá 100.000đ</li>\n 	<li>Tặng ốp lưng silicon trị giá 50.000đ</li>\n 	<li>Tặng sim ghép fix lỗi trị giá 150.000đ</li>\n 	<li>Trợ giá mua pin dự phòng Rock chính hãng 10.000mAh chỉ với 299.000đ</li>\n 	<li>Giảm 30% khi mua đồ chơi smartphone tại store</li>\n</ul>\n</div>\n</div>\n<strong class="tit">Tặng kèm gói bảo hành:</strong>\n\n<span id="bh0" class="active" data-submit="Vàng_0" data-price="0">Vàng</span>\n<div id="pack_0" class="bh-cont">\n<div class="shieldf5">\n<ul>\n 	<li><strong>Phần cứng:</strong> 24 Tháng</li>\n 	<li><strong>Phần mềm:</strong> Hỗ trợ trọn đời</li>\n 	<li><strong>Màn hình &amp; nguồn:</strong> 24 Tháng (các nơi khác đa số không bh màn hình hoặc bh tính vào phí).</li>\n 	<li><strong>1 Đổi 1:</strong> Ngay tức thì trong vòng 30 ngày nếu máy lỗi phần cứng.</li>\n 	<li><strong>Ngoài thời hạn bảo hành:</strong> Miễn phí công sửa chữa.</li>\n 	<li><strong>Dùng thử 10 ngày miễn phí.</strong></li>\n 	<li><strong>3 Ngày hoàn tiền không cần lý do</strong></li>\n</ul>\nGiá gói bảo hành: <strong class="price_value">500.000 đ</strong>\n\n</div>\n</div>', 'iPhone 6S Plus Lock – 32GB – Like new', '<div class="khuyenmai chinhsachsp">\n\n<strong class="tit">Quà khuyến mại</strong>\n<div class="cont">\n<ul>\n 	<li>Xám/ Trắng/ Hồng/ Vàng: 9,200,000đ/ 9,600,000d/ 9,800,000đ/ 10,100,000đ</li>\n 	<li>Tặng dán cường lực chống trầy xước, hạn chế rơi vỡ trị giá 100.000đ</li>\n 	<li>Tặng ốp lưng silicon trị giá 50.000đ</li>\n 	<li>Tặng sim ghép fix lỗi trị giá 150.000đ</li>\n 	<li>Trợ giá mua pin dự phòng Rock chính hãng 10.000mAh chỉ với 299.000đ</li>\n 	<li>Giảm 30% khi mua đồ chơi smartphone tại store</li>\n</ul>\n</div>\n</div>\n<strong class="tit">Tặng kèm gói bảo hành:</strong>\n<div class="option_pack"><span id="bh0" class="active" data-submit="Vàng_0" data-price="0">Vàng</span></div>\n<div id="pack_0" class="bh-cont">\n<div class="shieldf5">\n<ul>\n 	<li><strong>Phần cứng:</strong> 24 Tháng</li>\n 	<li><strong>Phần mềm:</strong> Hỗ trợ trọn đời</li>\n 	<li><strong>Màn hình &amp; nguồn:</strong> 24 Tháng (các nơi khác đa số không bh màn hình hoặc bh tính vào phí).</li>\n 	<li><strong>1 Đổi 1:</strong> Ngay tức thì trong vòng 30 ngày nếu máy lỗi phần cứng.</li>\n 	<li><strong>Ngoài thời hạn bảo hành:</strong> Miễn phí công sửa chữa.</li>\n 	<li><strong>Dùng thử 10 ngày miễn phí.</strong></li>\n 	<li><strong>3 Ngày hoàn tiền không cần lý do</strong></li>\n</ul>\nGiá gói bảo hành: <strong class="price_value">500.000 đ</strong>\n\n</div>\n</div>', 'inherit', 'closed', 'closed', '', '82-autosave-v1', '', '', '2017-06-21 22:36:35', '2017-06-21 15:36:35', '', 82, 'http://localhost/f5mobile/82-autosave-v1/', 0, 'revision', '', 0),
(137, 1, '2017-06-24 14:18:21', '2017-06-24 07:18:21', '', 'Mô tả taxonomy', '', 'publish', 'closed', 'closed', '', 'acf_mo-ta-taxonomy', '', '', '2017-06-24 14:21:39', '2017-06-24 07:21:39', '', 0, 'http://localhost/f5mobile/?post_type=acf&#038;p=137', 0, 'acf', '', 0),
(138, 1, '2017-06-24 15:41:34', '2017-06-24 08:41:34', '', 'Sản phẩm, phụ kiện liên quan', '', 'trash', 'closed', 'closed', '', 'acf_san-pham-phu-kien-lien-quan__trashed', '', '', '2017-06-24 17:15:46', '2017-06-24 10:15:46', '', 0, 'http://localhost/f5mobile/?post_type=acf&#038;p=138', 0, 'acf', '', 0),
(139, 1, '2017-06-25 03:16:51', '2017-06-24 20:16:51', '', 'giao-hang', '', 'inherit', 'open', 'closed', '', 'giao-hang', '', '', '2017-06-25 03:16:51', '2017-06-24 20:16:51', '', 4, 'http://localhost/f5mobile/wp-content/uploads/2017/06/giao-hang.png', 0, 'attachment', 'image/png', 0),
(140, 1, '2017-06-25 03:17:17', '2017-06-24 20:17:17', '', 'thanh-toan', '', 'inherit', 'open', 'closed', '', 'thanh-toan-2', '', '', '2017-06-25 03:17:17', '2017-06-24 20:17:17', '', 4, 'http://localhost/f5mobile/wp-content/uploads/2017/06/thanh-toan.png', 0, 'attachment', 'image/png', 0),
(142, 1, '2017-06-25 03:20:31', '2017-06-24 20:20:31', '', '100percent', '', 'inherit', 'open', 'closed', '', '100percent-2', '', '', '2017-06-25 03:20:31', '2017-06-24 20:20:31', '', 4, 'http://localhost/f5mobile/wp-content/uploads/2017/06/100percent-1.png', 0, 'attachment', 'image/png', 0),
(143, 1, '2017-06-25 20:37:49', '2017-06-25 13:37:49', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2017-06-26 22:32:27', '2017-06-26 15:32:27', '', 0, 'http://localhost/f5mobile/?p=143', 6, 'nav_menu_item', '', 0),
(144, 1, '2017-06-25 20:37:48', '2017-06-25 13:37:48', ' ', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2017-06-26 22:32:27', '2017-06-26 15:32:27', '', 0, 'http://localhost/f5mobile/?p=144', 1, 'nav_menu_item', '', 0),
(145, 1, '2017-06-25 20:37:49', '2017-06-25 13:37:49', ' ', '', '', 'publish', 'closed', 'closed', '', '145', '', '', '2017-06-26 22:32:27', '2017-06-26 15:32:27', '', 0, 'http://localhost/f5mobile/?p=145', 5, 'nav_menu_item', '', 0),
(146, 1, '2017-06-25 20:37:48', '2017-06-25 13:37:48', '', 'Khuyễn mãi', '', 'publish', 'closed', 'closed', '', 'khuyen-mai', '', '', '2017-06-26 22:32:27', '2017-06-26 15:32:27', '', 56, 'http://localhost/f5mobile/?p=146', 3, 'nav_menu_item', '', 0),
(147, 1, '2017-06-25 20:37:48', '2017-06-25 13:37:48', '', 'Review', '', 'publish', 'closed', 'closed', '', 'review', '', '', '2017-06-26 22:32:27', '2017-06-26 15:32:27', '', 56, 'http://localhost/f5mobile/?p=147', 4, 'nav_menu_item', '', 0),
(148, 1, '2017-06-25 20:37:48', '2017-06-25 13:37:48', '', 'Tin tức', '', 'publish', 'closed', 'closed', '', 'tin-tuc', '', '', '2017-06-26 22:32:27', '2017-06-26 15:32:27', '', 0, 'http://localhost/f5mobile/?p=148', 2, 'nav_menu_item', '', 0),
(149, 1, '2017-06-25 20:52:28', '2017-06-25 13:52:28', '', 'images', '', 'inherit', 'open', 'closed', '', 'images-2', '', '', '2017-06-25 20:52:28', '2017-06-25 13:52:28', '', 4, 'http://localhost/f5mobile/wp-content/uploads/2017/06/images-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2017-06-25 21:15:00', '2017-06-25 14:15:00', '', 'cod', '', 'inherit', 'open', 'closed', '', 'cod', '', '', '2017-06-25 21:15:00', '2017-06-25 14:15:00', '', 1, 'http://localhost/f5mobile/wp-content/uploads/2017/06/cod.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, '2017-06-26 01:23:17', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-06-26 01:23:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/f5mobile/?p=151', 0, 'post', '', 0),
(152, 1, '2017-06-26 13:12:53', '2017-06-26 06:12:53', '', 'Order &ndash; Tháng Sáu 26, 2017 @ 01:12 Chiều', 'Giao hàng ngoài giờ hành chính', 'wc-on-hold', 'open', 'closed', 'order_5950a5e5dd303', 'don-hang-jun-26-2017-0612-am', '', '', '2017-06-26 13:12:55', '2017-06-26 06:12:55', '', 0, 'http://localhost/f5mobile/?post_type=shop_order&#038;p=152', 0, 'shop_order', '', 1),
(153, 1, '2017-06-26 13:40:53', '2017-06-26 06:40:53', '', 'Order &ndash; Tháng Sáu 26, 2017 @ 01:40 Chiều', '', 'wc-on-hold', 'open', 'closed', 'order_5950ac7538e7c', 'don-hang-jun-26-2017-0640-am', '', '', '2017-06-26 13:40:54', '2017-06-26 06:40:54', '', 0, 'http://localhost/f5mobile/?post_type=shop_order&#038;p=153', 0, 'shop_order', '', 1),
(154, 1, '2017-06-26 13:43:15', '2017-06-26 06:43:15', '', 'Order &ndash; Tháng Sáu 26, 2017 @ 01:43 Chiều', '', 'wc-on-hold', 'open', 'closed', 'order_5950ad03efd0d', 'don-hang-jun-26-2017-0643-am', '', '', '2017-06-26 13:43:16', '2017-06-26 06:43:16', '', 0, 'http://localhost/f5mobile/?post_type=shop_order&#038;p=154', 0, 'shop_order', '', 1),
(155, 1, '2017-06-26 14:12:24', '2017-06-26 07:12:24', '', 'banner-ngang-1-2', '', 'inherit', 'open', 'closed', '', 'banner-ngang-1-2', '', '', '2017-06-26 14:12:24', '2017-06-26 07:12:24', '', 123, 'http://localhost/f5mobile/wp-content/uploads/2017/06/banner-ngang-1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2017-06-26 14:12:47', '2017-06-26 07:12:47', '<img class="alignnone wp-image-155 size-full" src="http://localhost/f5mobile/wp-content/uploads/2017/06/banner-ngang-1-2.jpg" alt="" width="620" height="180" />', 'Tính tiền trả góp', '', 'inherit', 'closed', 'closed', '', '123-autosave-v1', '', '', '2017-06-26 14:12:47', '2017-06-26 07:12:47', '', 123, 'http://localhost/f5mobile/123-autosave-v1/', 0, 'revision', '', 0),
(157, 1, '2017-06-26 14:13:07', '2017-06-26 07:13:07', '', 'banner-ngang-2', '', 'inherit', 'open', 'closed', '', 'banner-ngang-2', '', '', '2017-06-26 14:13:07', '2017-06-26 07:13:07', '', 123, 'http://localhost/f5mobile/wp-content/uploads/2017/06/banner-ngang-2.png', 0, 'attachment', 'image/png', 0),
(158, 1, '2017-06-26 14:21:05', '2017-06-26 07:21:05', '', 'Trả góp', '', 'publish', 'closed', 'closed', '', 'acf_tra-gop', '', '', '2017-06-26 15:40:52', '2017-06-26 08:40:52', '', 0, 'http://localhost/f5mobile/?post_type=acf&#038;p=158', 0, 'acf', '', 0),
(159, 1, '2017-06-26 15:42:29', '2017-06-26 08:42:29', '', 'home-credit', '', 'inherit', 'open', 'closed', '', 'home-credit', '', '', '2017-06-26 15:42:29', '2017-06-26 08:42:29', '', 4, 'http://localhost/f5mobile/wp-content/uploads/2017/06/home-credit.png', 0, 'attachment', 'image/png', 0),
(160, 1, '2017-06-26 19:34:38', '2017-06-26 12:34:38', '', 'iPhone 7 Quốc Tế – 32Gb – Like new', '<ul>\r\n 	<li>Hồng: 12,500,000vnd. Trắng, Vàng, Đen Nhám: 12,700,000vnd.</li>\r\n 	<li>Tặng dán cường lực chống trầy xước, hạn chế rơi vỡ trị giá 100.000đ</li>\r\n 	<li>Tặng ốp lưng silicon trị giá 50.000đ</li>\r\n 	<li>Trợ giá mua pin dự phòng Rock chính hãng 10.000mAh chỉ với 299.000đ</li>\r\n 	<li>Trợ giá khi mua tai nghe zin iPhone 7: 350.000đ</li>\r\n 	<li>Giảm 30% khi mua đồ chơi smartphone tại store</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'iphone-7-quoc-te-32gb-like-new', '', '', '2017-06-26 19:34:39', '2017-06-26 12:34:39', '', 0, 'http://localhost/f5mobile/?post_type=product&#038;p=160', 0, 'product', '', 0),
(161, 1, '2017-06-26 19:32:32', '2017-06-26 12:32:32', '', 'iPhone-7-f5mobile', '', 'inherit', 'open', 'closed', '', 'iphone-7-f5mobile', '', '', '2017-06-26 19:32:32', '2017-06-26 12:32:32', '', 160, 'http://localhost/f5mobile/wp-content/uploads/2017/06/iPhone-7-f5mobile.jpg', 0, 'attachment', 'image/jpeg', 0),
(162, 1, '2017-06-26 19:38:36', '2017-06-26 12:38:36', '', 'OPPO Neo 9 (A37)', '<span class="_5mfr _47e3"><span class="_7oe">🎯</span></span>A37 (Neo9) giá: 3.290.000đ ( Áp dụng Bắc Ninh )\r\n<span class="_5mfr _47e3"><span class="_7oe">🎁</span></span> Tặng thẻ nhớ 8G trị giá 200k\r\n<span class="_5mfr _47e3"><span class="_7oe">🎁</span></span> Tặng loa bluetooth trị giá 500k\r\n<span class="_5mfr _47e3"><span class="_7oe">🎁</span></span> Tặng tai nghe bluetooth trị giá 500k\r\n<span class="_5mfr _47e3"><span class="_7oe">🎁</span></span> Tặng dán cường lực trị giá 50k\r\n<span class="_5mfr _47e3"><span class="_7oe">✔️</span></span> TỔNG COMBO QUÀ TẶNG KÈM MẶC ĐỊNH: 1.250.000đ\r\n<span class="_5mfr _47e3"><span class="_7oe">➕</span></span>Trả góp 0%, trả trước: 1.107.000đ', 'publish', 'open', 'closed', '', 'oppo-neo-9-a37', '', '', '2017-06-26 19:38:36', '2017-06-26 12:38:36', '', 0, 'http://localhost/f5mobile/?post_type=product&#038;p=162', 0, 'product', '', 0),
(163, 1, '2017-06-26 19:36:47', '2017-06-26 12:36:47', '', 'OPPO-A37-1', '', 'inherit', 'open', 'closed', '', 'oppo-a37-1', '', '', '2017-06-26 19:36:47', '2017-06-26 12:36:47', '', 162, 'http://localhost/f5mobile/wp-content/uploads/2017/06/OPPO-A37-1.png', 0, 'attachment', 'image/png', 0),
(164, 1, '2017-06-26 19:41:51', '2017-06-26 12:41:51', '', 'iPad Air 2 4G/Wifi – 16G- Đen – Like New', '', 'publish', 'open', 'closed', '', 'ipad-air-2-4gwifi-16g-den-like-new', '', '', '2017-06-26 19:41:51', '2017-06-26 12:41:51', '', 0, 'http://localhost/f5mobile/?post_type=product&#038;p=164', 0, 'product', '', 0),
(165, 1, '2017-06-26 19:41:17', '2017-06-26 12:41:17', '', 'ipad-mini-2-grey', '', 'inherit', 'open', 'closed', '', 'ipad-mini-2-grey', '', '', '2017-06-26 19:41:17', '2017-06-26 12:41:17', '', 164, 'http://localhost/f5mobile/wp-content/uploads/2017/06/ipad-mini-2-grey.png', 0, 'attachment', 'image/png', 0),
(166, 1, '2017-06-26 19:51:19', '2017-06-26 12:51:19', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2017-06-26 19:51:19', '2017-06-26 12:51:19', '', 0, 'http://localhost/f5mobile/?page_id=166', 0, 'page', '', 0),
(167, 1, '2017-06-26 20:23:18', '2017-06-26 13:23:18', '', 'Order &ndash; Tháng Sáu 26, 2017 @ 08:23 Chiều', '', 'wc-processing', 'open', 'closed', 'order_59510ac6ab187', 'don-hang-jun-26-2017-0123-pm', '', '', '2017-06-26 20:23:19', '2017-06-26 13:23:19', '', 0, 'http://localhost/f5mobile/?post_type=shop_order&#038;p=167', 0, 'shop_order', '', 1),
(168, 1, '2017-06-26 22:25:36', '2017-06-26 15:25:36', '', 'Hỏi đáp', '', 'publish', 'closed', 'closed', '', 'hoi-dap', '', '', '2017-06-26 22:30:23', '2017-06-26 15:30:23', '', 0, 'http://localhost/f5mobile/?page_id=168', 0, 'page', '', 0),
(169, 1, '2017-06-26 22:32:27', '2017-06-26 15:32:27', ' ', '', '', 'publish', 'closed', 'closed', '', '169', '', '', '2017-06-26 22:32:27', '2017-06-26 15:32:27', '', 0, 'http://localhost/f5mobile/?p=169', 7, 'nav_menu_item', '', 0),
(170, 1, '2017-06-26 22:42:59', '2017-06-26 15:42:59', ' ', '', '', 'publish', 'closed', 'closed', '', '170', '', '', '2017-06-27 22:19:46', '2017-06-27 15:19:46', '', 0, 'http://localhost/f5mobile/?p=170', 22, 'nav_menu_item', '', 0),
(171, 1, '2017-06-26 22:42:59', '2017-06-26 15:42:59', ' ', '', '', 'publish', 'closed', 'closed', '', '171', '', '', '2017-06-27 22:19:46', '2017-06-27 15:19:46', '', 92, 'http://localhost/f5mobile/?p=171', 23, 'nav_menu_item', '', 0),
(172, 1, '2017-06-26 22:42:59', '2017-06-26 15:42:59', ' ', '', '', 'publish', 'closed', 'closed', '', '172', '', '', '2017-06-27 22:19:46', '2017-06-27 15:19:46', '', 92, 'http://localhost/f5mobile/?p=172', 24, 'nav_menu_item', '', 0);
INSERT INTO `plbs_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(173, 1, '2017-06-26 22:42:59', '2017-06-26 15:42:59', ' ', '', '', 'publish', 'closed', 'closed', '', '173', '', '', '2017-06-27 22:19:46', '2017-06-27 15:19:46', '', 0, 'http://localhost/f5mobile/?p=173', 21, 'nav_menu_item', '', 0),
(174, 1, '2017-06-26 23:36:25', '2017-06-26 16:36:25', 'Em<strong> muốn</strong> mua<strong> iPhone 6 Lock nhưng thấy mọi người bảo bây giờ chủ yếu chạy iOS 10, vậy hiện tại đã jailbreak iOS 10 được chưa? Không có jailbreak máy lock có dùng được không?</strong>', 'Jailbreak iOS 10 được chưa? Không có jailbreak máy lock có dùng được không?', '', 'publish', 'open', 'closed', '', 'jailbreak-ios-10-duoc-chua-khong-co-jailbreak-may-lock-co-dung-duoc-khong', '', '', '2017-06-27 21:48:35', '2017-06-27 14:48:35', '', 0, 'http://localhost/f5mobile/?post_type=hoi_dap&#038;p=174', 0, 'hoi_dap', '', 0),
(175, 1, '2017-06-26 23:40:31', '2017-06-26 16:40:31', '', 'Người đăng câu hỏi', '', 'publish', 'closed', 'closed', '', 'acf_nguoi-dang-cau-hoi', '', '', '2017-06-26 23:41:49', '2017-06-26 16:41:49', '', 0, 'http://localhost/f5mobile/?post_type=acf&#038;p=175', 0, 'acf', '', 0),
(176, 1, '2017-06-26 23:41:23', '2017-06-26 16:41:23', '', 'Trả lời câu hỏi', '', 'publish', 'closed', 'closed', '', 'acf_tra-loi-cau-hoi', '', '', '2017-06-26 23:41:23', '2017-06-26 16:41:23', '', 0, 'http://localhost/f5mobile/?post_type=acf&#038;p=176', 0, 'acf', '', 0),
(177, 1, '2017-06-26 23:43:55', '2017-06-26 16:43:55', 'iPhone khóa mạng là gì? Có nên mua iPhone 6 khóa mạng Nhật?', 'iPhone khóa mạng là gì? Có nên mua iPhone 6 khóa mạng Nhật?', '', 'publish', 'open', 'closed', '', 'iphone-khoa-mang-la-gi-co-nen-mua-iphone-6-khoa-mang-nhat', '', '', '2017-06-26 23:44:36', '2017-06-26 16:44:36', '', 0, 'http://localhost/f5mobile/?post_type=hoi_dap&#038;p=177', 0, 'hoi_dap', '', 0),
(178, 1, '2017-06-26 23:44:25', '2017-06-26 16:44:25', '<div>iPhone Refurbished là gì? Có nên mua iPhone hàng Refurbished?</div>', 'iPhone Refurbished là gì? Có nên mua iPhone hàng Refurbished?', '', 'publish', 'open', 'closed', '', 'iphone-refurbished-la-gi-co-nen-mua-iphone-hang-refurbished', '', '', '2017-06-26 23:44:25', '2017-06-26 16:44:25', '', 0, 'http://localhost/f5mobile/?post_type=hoi_dap&#038;p=178', 0, 'hoi_dap', '', 0),
(180, 1, '2017-06-27 00:55:23', '2017-06-26 17:55:23', 'Nội dung câu hỏi mưới', 'Nội dung câu hỏi mưới', '', 'publish', 'open', 'closed', '', 'noi-dung-cau-hoi-muoi', '', '', '2017-06-27 00:55:23', '2017-06-26 17:55:23', '', 0, 'http://localhost/f5mobile/hoi_dap/noi-dung-cau-hoi-muoi/', 0, 'hoi_dap', '', 0),
(181, 1, '2017-06-27 00:55:51', '2017-06-26 17:55:51', 'Nội dung câu hỏi mưới', 'Nội dung câu hỏi mưới', '', 'publish', 'open', 'closed', '', 'noi-dung-cau-hoi-muoi-2', '', '', '2017-06-27 00:55:51', '2017-06-26 17:55:51', '', 0, 'http://localhost/f5mobile/hoi_dap/noi-dung-cau-hoi-muoi-2/', 0, 'hoi_dap', '', 0),
(182, 1, '2017-06-27 00:58:20', '2017-06-26 17:58:20', 'Hỏi đpá ứng dụng tí thôi', 'Câu hỏi số 2', '', 'publish', 'open', 'closed', '', 'cau-hoi-so-2', '', '', '2017-06-27 00:58:20', '2017-06-26 17:58:20', '', 0, 'http://localhost/f5mobile/hoi_dap/cau-hoi-so-2/', 0, 'hoi_dap', '', 0),
(183, 1, '2017-06-27 01:09:49', '2017-06-26 18:09:49', 'Làm sao để biết', 'Câu hỏi số 3', '', 'publish', 'open', 'closed', '', 'cau-hoi-so-3', '', '', '2017-06-27 01:09:49', '2017-06-26 18:09:49', '', 0, 'http://localhost/f5mobile/hoi_dap/cau-hoi-so-3/', 0, 'hoi_dap', '', 0),
(184, 1, '2017-06-27 22:19:46', '2017-06-27 15:19:46', ' ', '', '', 'publish', 'closed', 'closed', '', '184', '', '', '2017-06-27 22:19:46', '2017-06-27 15:19:46', '', 0, 'http://localhost/f5mobile/?p=184', 25, 'nav_menu_item', '', 0),
(185, 1, '2017-06-27 22:19:46', '2017-06-27 15:19:46', ' ', '', '', 'publish', 'closed', 'closed', '', '185', '', '', '2017-06-27 22:19:46', '2017-06-27 15:19:46', '', 91, 'http://localhost/f5mobile/?p=185', 26, 'nav_menu_item', '', 0),
(186, 1, '2017-06-27 22:19:46', '2017-06-27 15:19:46', ' ', '', '', 'publish', 'closed', 'closed', '', '186', '', '', '2017-06-27 22:19:46', '2017-06-27 15:19:46', '', 91, 'http://localhost/f5mobile/?p=186', 27, 'nav_menu_item', '', 0),
(187, 1, '2017-06-27 22:19:46', '2017-06-27 15:19:46', ' ', '', '', 'publish', 'closed', 'closed', '', '187', '', '', '2017-06-27 22:19:46', '2017-06-27 15:19:46', '', 91, 'http://localhost/f5mobile/?p=187', 28, 'nav_menu_item', '', 0),
(188, 1, '2017-06-27 22:38:56', '2017-06-27 15:38:56', '', 'Giải quyết khiếu nại', '', 'publish', 'closed', 'closed', '', 'giai-quyet-khieu-nai', '', '', '2017-06-27 22:38:56', '2017-06-27 15:38:56', '', 0, 'http://localhost/f5mobile/?post_type=chinh_sach&#038;p=188', 0, 'chinh_sach', '', 0),
(189, 1, '2017-06-27 22:38:51', '2017-06-27 15:38:51', '', 'modelos-de-contrato-de-trabajo-2014', '', 'inherit', 'open', 'closed', '', 'modelos-de-contrato-de-trabajo-2014', '', '', '2017-06-27 22:38:51', '2017-06-27 15:38:51', '', 188, 'http://localhost/f5mobile/wp-content/uploads/2017/06/modelos-de-contrato-de-trabajo-2014.jpg', 0, 'attachment', 'image/jpeg', 0),
(190, 1, '2017-06-27 22:39:29', '2017-06-27 15:39:29', '', 'Mua trả góp điện thoại', '', 'publish', 'closed', 'closed', '', 'mua-tra-gop-dien-thoai', '', '', '2017-06-27 22:39:29', '2017-06-27 15:39:29', '', 0, 'http://localhost/f5mobile/?post_type=chinh_sach&#038;p=190', 0, 'chinh_sach', '', 0),
(191, 1, '2017-06-27 22:39:25', '2017-06-27 15:39:25', '', 'save_money-256', '', 'inherit', 'open', 'closed', '', 'save_money-256', '', '', '2017-06-27 22:39:25', '2017-06-27 15:39:25', '', 190, 'http://localhost/f5mobile/wp-content/uploads/2017/06/save_money-256.png', 0, 'attachment', 'image/png', 0),
(192, 1, '2017-06-27 22:40:04', '2017-06-27 15:40:04', '', 'Chính sách đổi trả hàng', '', 'publish', 'closed', 'closed', '', 'chinh-sach-doi-tra-hang', '', '', '2017-06-27 22:40:04', '2017-06-27 15:40:04', '', 0, 'http://localhost/f5mobile/?post_type=chinh_sach&#038;p=192', 0, 'chinh_sach', '', 0),
(193, 1, '2017-06-27 22:40:00', '2017-06-27 15:40:00', '', 'chinh-sach-doi-tra-hang', '', 'inherit', 'open', 'closed', '', 'chinh-sach-doi-tra-hang-2', '', '', '2017-06-27 22:40:00', '2017-06-27 15:40:00', '', 192, 'http://localhost/f5mobile/wp-content/uploads/2017/06/chinh-sach-doi-tra-hang.jpg', 0, 'attachment', 'image/jpeg', 0),
(194, 1, '2017-06-27 22:40:29', '2017-06-27 15:40:29', '', 'Chính sách bảo hành', '', 'publish', 'closed', 'closed', '', 'chinh-sach-bao-hanh', '', '', '2017-06-28 00:22:39', '2017-06-27 17:22:39', '', 0, 'http://localhost/f5mobile/?post_type=chinh_sach&#038;p=194', 0, 'chinh_sach', '', 0),
(196, 1, '2017-06-27 22:44:37', '2017-06-27 15:44:37', '', 'Chính sách', '', 'publish', 'closed', 'closed', '', 'chinh-sach', '', '', '2017-06-28 00:06:23', '2017-06-27 17:06:23', '', 0, 'http://localhost/f5mobile/?page_id=196', 0, 'page', '', 0),
(197, 1, '2017-06-27 22:46:37', '2017-06-27 15:46:37', ' ', '', '', 'publish', 'closed', 'closed', '', '197', '', '', '2017-06-27 22:46:37', '2017-06-27 15:46:37', '', 0, 'http://localhost/f5mobile/?p=197', 5, 'nav_menu_item', '', 0),
(198, 1, '2017-06-27 22:46:37', '2017-06-27 15:46:37', ' ', '', '', 'publish', 'closed', 'closed', '', '198', '', '', '2017-06-27 22:46:37', '2017-06-27 15:46:37', '', 0, 'http://localhost/f5mobile/?p=198', 6, 'nav_menu_item', '', 0),
(199, 1, '2017-06-27 22:46:37', '2017-06-27 15:46:37', ' ', '', '', 'publish', 'closed', 'closed', '', '199', '', '', '2017-06-27 22:46:37', '2017-06-27 15:46:37', '', 0, 'http://localhost/f5mobile/?p=199', 7, 'nav_menu_item', '', 0),
(200, 1, '2017-06-28 00:22:34', '2017-06-27 17:22:34', '', 'chinh-sach-bao-hanhjpg', '', 'inherit', 'open', 'closed', '', 'chinh-sach-bao-hanhjpg', '', '', '2017-06-28 00:22:34', '2017-06-27 17:22:34', '', 194, 'http://localhost/f5mobile/wp-content/uploads/2017/06/chinh-sach-bao-hanhjpg.jpg', 0, 'attachment', 'image/jpeg', 0),
(201, 1, '2017-06-28 20:45:30', '2017-06-28 13:45:30', '', 'icon', '', 'inherit', 'open', 'closed', '', 'icon', '', '', '2017-06-28 20:45:30', '2017-06-28 13:45:30', '', 4, 'http://localhost/f5mobile/wp-content/uploads/2017/06/icon.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `plbs_termmeta`
--

CREATE TABLE `plbs_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `plbs_termmeta`
--

INSERT INTO `plbs_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 22, 'order', '0'),
(2, 22, 'display_type', ''),
(3, 22, 'thumbnail_id', '0'),
(4, 23, 'order', '0'),
(5, 23, 'display_type', ''),
(6, 23, 'thumbnail_id', '0'),
(7, 24, 'order', '0'),
(8, 24, 'display_type', ''),
(9, 24, 'thumbnail_id', '0'),
(10, 25, 'order', '0'),
(11, 25, 'display_type', ''),
(12, 25, 'thumbnail_id', '0'),
(13, 26, 'order', '0'),
(14, 26, 'display_type', ''),
(15, 26, 'thumbnail_id', '0'),
(16, 27, 'order', '0'),
(17, 27, 'display_type', ''),
(18, 27, 'thumbnail_id', '0'),
(19, 28, 'order', '0'),
(20, 28, 'display_type', ''),
(21, 28, 'thumbnail_id', '0'),
(22, 29, 'order', '0'),
(23, 29, 'display_type', ''),
(24, 29, 'thumbnail_id', '0'),
(25, 30, 'order', '0'),
(26, 30, 'display_type', ''),
(27, 30, 'thumbnail_id', '0'),
(28, 31, 'order', '0'),
(29, 31, 'display_type', ''),
(30, 31, 'thumbnail_id', '0'),
(31, 32, 'order', '0'),
(32, 32, 'display_type', ''),
(33, 32, 'thumbnail_id', '0'),
(34, 33, 'order', '0'),
(35, 33, 'display_type', ''),
(36, 33, 'thumbnail_id', '0'),
(37, 34, 'order', '0'),
(38, 34, 'display_type', ''),
(39, 34, 'thumbnail_id', '0'),
(40, 35, 'order', '0'),
(41, 35, 'display_type', ''),
(42, 35, 'thumbnail_id', '0'),
(43, 36, 'order', '0'),
(44, 36, 'display_type', ''),
(45, 36, 'thumbnail_id', '0'),
(46, 37, 'order', '0'),
(47, 37, 'display_type', ''),
(48, 37, 'thumbnail_id', '0'),
(49, 38, 'order', '0'),
(50, 38, 'display_type', ''),
(51, 38, 'thumbnail_id', '0'),
(52, 39, 'order', '0'),
(53, 39, 'display_type', ''),
(54, 39, 'thumbnail_id', '0'),
(55, 40, 'order', '0'),
(56, 40, 'display_type', ''),
(57, 40, 'thumbnail_id', '0'),
(58, 41, 'order', '0'),
(59, 41, 'display_type', ''),
(60, 41, 'thumbnail_id', '0'),
(76, 51, 'order', '0'),
(77, 51, 'display_type', ''),
(78, 51, 'thumbnail_id', '0'),
(91, 24, 'product_count_product_cat', '4'),
(92, 38, 'product_count_product_cat', '4'),
(93, 22, 'product_count_product_cat', '6'),
(94, 26, 'product_count_product_cat', '4'),
(95, 30, 'product_count_product_cat', '5'),
(96, 27, 'product_count_product_cat', '3'),
(97, 31, 'product_count_product_cat', '4'),
(98, 25, 'product_count_product_cat', '3'),
(99, 28, 'product_count_product_cat', '1'),
(100, 23, 'product_count_product_cat', '4'),
(101, 37, 'product_count_product_cat', '1'),
(103, 34, 'product_count_product_cat', '4'),
(104, 58, 'order', '0'),
(105, 58, 'display_type', ''),
(106, 58, 'thumbnail_id', '0'),
(107, 58, 'product_count_product_cat', '5'),
(108, 51, 'product_count_product_cat', '4'),
(129, 80, 'order_pa_man-hinh', '0'),
(130, 81, 'order_pa_ram', '0'),
(131, 82, 'order_pa_cpu', '0'),
(132, 83, 'order_pa_ram', '0'),
(133, 84, 'order_pa_cpu', '0'),
(134, 85, 'order_pa_camera-sau', '0'),
(135, 86, 'product_count_product_tag', '1'),
(136, 87, 'product_count_product_tag', '1');

-- --------------------------------------------------------

--
-- Table structure for table `plbs_terms`
--

CREATE TABLE `plbs_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `plbs_terms`
--

INSERT INTO `plbs_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Blog', 'blog', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Header menu', 'header-menu', 0),
(22, 'Iphone', 'iphone', 0),
(23, 'Ipad', 'ipad', 0),
(24, 'Android', 'android', 0),
(25, 'Iphone 5', 'iphone-5', 0),
(26, 'Iphone 6', 'iphone-6', 0),
(27, 'Iphone 6s', 'iphone-6s', 0),
(28, 'Iphone 5s', 'iphone-5s', 0),
(29, 'Iphone 7', 'iphone-7', 0),
(30, 'Iphone 6 Plus', 'iphone-6-plus', 0),
(31, 'Iphone 6s Plus', 'iphone-6s-plus', 0),
(32, 'Ipad 3', 'ipad-3', 0),
(33, 'Ipad Air', 'ipad-air', 0),
(34, 'Ipad 4', 'ipad-4', 0),
(35, 'Ipad Air 2', 'ipad-air-2', 0),
(36, 'Ipad mini 1', 'ipad-mini-1', 0),
(37, 'Ipad Mini 2', 'ipad-mini-2', 0),
(38, 'Oppo', 'oppo', 0),
(39, 'Samsung', 'samsung', 0),
(40, 'Vivo', 'vivo', 0),
(41, 'Nokia', 'nokia', 0),
(46, 'Tuyển dụng', 'tuyen-dung', 0),
(47, 'Tin tuyển dụng', 'tin-tuyen-dung', 0),
(51, 'Iphone lock', 'iphone-lock', 0),
(56, 'Tin tức công nghệ', 'tin-tuc-cong-nghe', 0),
(57, 'Footer menu', 'footer-menu', 0),
(58, 'Iphone quốc tế', 'iphone-quoc-te', 0),
(65, 'Gậy tự sướng', 'gay-tu-suong', 0),
(66, 'Sạc dự phòng', 'sac-du-phong', 0),
(67, 'Tai nghe', 'tai-nghe', 0),
(68, 'Ốp lưng theo màu', 'op-lung-theo-mau', 0),
(69, 'Củ sạc', 'cu-sac', 0),
(70, 'Miếng dán', 'mieng-dan', 0),
(71, 'Sạc cáp các loại', 'sac-cap-cac-loai', 0),
(72, 'Pin sạc dự phòng', 'pin-sac-du-phong', 0),
(73, 'Review sản phẩm', 'review-san-pham', 0),
(74, 'Game ứng dụng', 'game-ung-dung', 0),
(75, 'TV - Videos', 'tv-videos', 0),
(76, 'Khuyễn mãi - Giảm giá - Tri ân khách hàng', 'khuyen-mai-giam-gia-tri-an-khach-hang', 0),
(77, 'Vàng', 'vang', 0),
(78, 'Bạc', 'bac', 0),
(80, 'LED-backlit IPS LCD', 'led-backlit-ips-lcd', 0),
(81, '1GB', '1gb', 0),
(82, 'Apple A7 2 nhân 64-bit', 'apple-a7-2-nhan-64-bit', 0),
(83, 'Apple A7 2 nhân 64-bit', 'apple-a7-2-nhan-64-bit', 0),
(84, '1GB', '1gb', 0),
(85, '8.0 MP, Quay phim FullHD 1080p@30fps', '8-0-mp-quay-phim-fullhd-1080p30fps', 0),
(86, 'Iphone', 'iphone', 0),
(87, 'Iphone 6', 'iphone-6', 0),
(88, 'Thủ thuật', 'thu-thuat', 0),
(89, 'Apps', 'apps', 0),
(90, 'Category Menu', 'category-menu', 0),
(91, 'Phụ kiện', 'phu-kien', 0),
(92, 'Hỏi đáp chung', 'hoi-dap-chung', 0),
(93, 'Câu hỏi thường gặp', 'cau-hoi-thuong-gap', 0),
(94, 'Hỏi đáp ứng dụng', 'hoi-dap-ung-dung', 0);

-- --------------------------------------------------------

--
-- Table structure for table `plbs_term_relationships`
--

CREATE TABLE `plbs_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `plbs_term_relationships`
--

INSERT INTO `plbs_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 46, 0),
(1, 76, 0),
(42, 1, 0),
(42, 46, 0),
(42, 76, 0),
(43, 1, 0),
(44, 1, 0),
(44, 88, 0),
(45, 1, 0),
(45, 88, 0),
(48, 15, 0),
(49, 15, 0),
(50, 15, 0),
(51, 15, 0),
(52, 15, 0),
(53, 15, 0),
(54, 15, 0),
(55, 15, 0),
(56, 15, 0),
(57, 15, 0),
(58, 15, 0),
(59, 15, 0),
(60, 15, 0),
(61, 15, 0),
(62, 15, 0),
(63, 15, 0),
(64, 15, 0),
(65, 15, 0),
(66, 15, 0),
(67, 15, 0),
(69, 15, 0),
(73, 15, 0),
(79, 2, 0),
(79, 8, 0),
(79, 24, 0),
(79, 38, 0),
(82, 2, 0),
(82, 8, 0),
(82, 22, 0),
(82, 26, 0),
(82, 27, 0),
(82, 30, 0),
(82, 31, 0),
(82, 38, 0),
(84, 2, 0),
(84, 8, 0),
(84, 22, 0),
(84, 24, 0),
(84, 26, 0),
(84, 30, 0),
(84, 38, 0),
(86, 2, 0),
(86, 8, 0),
(86, 22, 0),
(86, 25, 0),
(86, 30, 0),
(86, 77, 0),
(88, 2, 0),
(88, 8, 0),
(88, 22, 0),
(88, 25, 0),
(88, 26, 0),
(88, 28, 0),
(88, 31, 0),
(90, 2, 0),
(90, 8, 0),
(90, 22, 0),
(90, 27, 0),
(90, 30, 0),
(90, 31, 0),
(90, 34, 0),
(90, 77, 0),
(90, 80, 0),
(90, 83, 0),
(90, 84, 0),
(90, 85, 0),
(90, 86, 0),
(90, 87, 0),
(92, 2, 0),
(92, 23, 0),
(92, 34, 0),
(92, 37, 0),
(94, 2, 0),
(94, 23, 0),
(94, 34, 0),
(101, 2, 0),
(101, 69, 0),
(104, 2, 0),
(104, 69, 0),
(106, 2, 0),
(106, 70, 0),
(108, 2, 0),
(108, 70, 0),
(110, 2, 0),
(110, 71, 0),
(112, 2, 0),
(112, 72, 0),
(129, 57, 0),
(130, 57, 0),
(131, 57, 0),
(132, 57, 0),
(143, 90, 0),
(144, 90, 0),
(145, 90, 0),
(146, 90, 0),
(147, 90, 0),
(148, 90, 0),
(160, 2, 0),
(160, 25, 0),
(160, 26, 0),
(160, 27, 0),
(160, 30, 0),
(160, 31, 0),
(160, 58, 0),
(160, 77, 0),
(162, 2, 0),
(162, 38, 0),
(162, 78, 0),
(164, 2, 0),
(164, 34, 0),
(164, 78, 0),
(169, 90, 0),
(170, 15, 0),
(171, 15, 0),
(172, 15, 0),
(173, 15, 0),
(174, 93, 0),
(174, 94, 0),
(177, 93, 0),
(178, 92, 0),
(178, 93, 0),
(178, 94, 0),
(180, 93, 0),
(181, 93, 0),
(182, 94, 0),
(183, 93, 0),
(184, 15, 0),
(185, 15, 0),
(186, 15, 0),
(187, 15, 0),
(197, 57, 0),
(198, 57, 0),
(199, 57, 0);

-- --------------------------------------------------------

--
-- Table structure for table `plbs_term_taxonomy`
--

CREATE TABLE `plbs_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_general_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `plbs_term_taxonomy`
--

INSERT INTO `plbs_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'product_type', '', 0, 17),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 6),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'nav_menu', '', 0, 30),
(22, 22, 'product_cat', '', 0, 5),
(23, 23, 'product_cat', '', 0, 2),
(24, 24, 'product_cat', '', 0, 2),
(25, 25, 'product_cat', '', 58, 3),
(26, 26, 'product_cat', '', 51, 4),
(27, 27, 'product_cat', '', 22, 3),
(28, 28, 'product_cat', '', 58, 1),
(29, 29, 'product_cat', '', 22, 0),
(30, 30, 'product_cat', '', 22, 5),
(31, 31, 'product_cat', '', 58, 4),
(32, 32, 'product_cat', '', 23, 0),
(33, 33, 'product_cat', '', 23, 0),
(34, 34, 'product_cat', '', 23, 4),
(35, 35, 'product_cat', '', 23, 0),
(36, 36, 'product_cat', '', 23, 0),
(37, 37, 'product_cat', '', 23, 1),
(38, 38, 'product_cat', '', 24, 4),
(39, 39, 'product_cat', '', 24, 0),
(40, 40, 'product_cat', '', 24, 0),
(41, 41, 'product_cat', '', 24, 0),
(46, 46, 'category', '', 0, 2),
(47, 47, 'category', '', 46, 0),
(51, 51, 'product_cat', '', 22, 0),
(56, 56, 'category', '', 0, 0),
(57, 57, 'nav_menu', '', 0, 7),
(58, 58, 'product_cat', '', 22, 1),
(65, 65, 'product_acce', '', 91, 0),
(66, 66, 'product_acce', '', 91, 0),
(67, 67, 'product_acce', '', 91, 0),
(68, 68, 'product_acce', '', 91, 0),
(69, 69, 'product_acce', '', 91, 2),
(70, 70, 'product_acce', '', 91, 2),
(71, 71, 'product_acce', '', 91, 1),
(72, 72, 'product_acce', '', 91, 1),
(73, 73, 'category', '', 56, 0),
(74, 74, 'category', '', 56, 0),
(75, 75, 'category', '', 56, 0),
(76, 76, 'category', '', 56, 2),
(77, 77, 'warrant', '', 0, 3),
(78, 78, 'warrant', '', 0, 2),
(80, 80, 'pa_man-hinh', '', 0, 1),
(81, 81, 'pa_ram', '', 0, 0),
(82, 82, 'pa_cpu', '', 0, 0),
(83, 83, 'pa_ram', '', 0, 1),
(84, 84, 'pa_cpu', '', 0, 1),
(85, 85, 'pa_camera-sau', '', 0, 1),
(86, 86, 'product_tag', '', 0, 1),
(87, 87, 'product_tag', '', 0, 1),
(88, 88, 'category', '', 0, 2),
(89, 89, 'category', '', 0, 0),
(90, 90, 'nav_menu', '', 0, 7),
(91, 91, 'product_acce', '', 0, 0),
(92, 92, 'question_cat', '', 0, 1),
(93, 93, 'question_cat', '', 92, 6),
(94, 94, 'question_cat', '', 92, 3);

-- --------------------------------------------------------

--
-- Table structure for table `plbs_usermeta`
--

CREATE TABLE `plbs_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `plbs_usermeta`
--

INSERT INTO `plbs_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Admin'),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'plbs_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'plbs_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:"58b316afd63c6763860f2f15fbdf68e714fd91960fa29bf985bce986c3dcd27c";a:4:{s:10:"expiration";i:1499006037;s:2:"ip";s:3:"::1";s:2:"ua";s:133:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 OPR/45.0.2552.898";s:5:"login";i:1498833237;}}'),
(16, 1, 'plbs_dashboard_quick_press_last_post_id', '151'),
(17, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(18, 1, 'plbs_user-settings', 'editor=tinymce&libraryContent=browse&posts_list_mode=list&imgsize=full'),
(19, 1, 'plbs_user-settings-time', '1498472543'),
(20, 1, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:55:"dashboard_activity,woocommerce_dashboard_recent_reviews";s:4:"side";s:19:"dashboard_right_now";s:7:"column3";s:21:"dashboard_quick_press";s:7:"column4";s:28:"woocommerce_dashboard_status";}'),
(21, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(22, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(23, 1, 'itsec_user_activity_last_seen', '1498833241'),
(24, 1, 'itsec-settings-view', 'grid'),
(25, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:15:"add-product_tag";}'),
(28, 1, 'wpseo-dismiss-gsc', 'seen'),
(30, 1, 'manageedit-postcolumnshidden', 'a:4:{i:0;s:23:"wpseo-score-readability";i:1;s:11:"wpseo-title";i:2;s:14:"wpseo-metadesc";i:3;s:13:"wpseo-focuskw";}'),
(31, 1, 'edit_post_per_page', '20'),
(32, 1, 'closedpostboxes_slider', 'a:1:{i:0;s:10:"wpseo_meta";}'),
(33, 1, 'metaboxhidden_slider', 'a:1:{i:0;s:7:"slugdiv";}'),
(34, 1, 'meta-box-order_slider', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:9:"submitdiv";s:6:"normal";s:39:"postimagediv,postexcerpt,acf_29,slugdiv";s:8:"advanced";s:0:"";}'),
(35, 1, 'screen_layout_slider', '2'),
(37, 1, 'plbs_yoast_notifications', 'a:2:{i:0;a:2:{s:7:"message";s:774:"We\'ve noticed you\'ve been using Yoast SEO for some time now; we hope you love it! We\'d be thrilled if you could <a href="https://yoa.st/rate-yoast-seo?utm_content=4.9">give us a 5 stars rating on WordPress.org</a>!\n\nIf you are experiencing issues, <a href="https://yoa.st/bugreport?utm_content=4.9">please file a bug report</a> and we\'ll do our best to help you out.\n\nBy the way, did you know we also have a <a href=\'https://yoa.st/premium-notification?utm_content=4.9\'>Premium plugin</a>? It offers advanced features, like a redirect manager and support for multiple keywords. It also comes with 24/7 personal support.\n\n<a class="button" href="http://localhost/f5mobile/wp-admin/?page=wpseo_dashboard&yoast_dismiss=upsell">Please don\'t show me this notification anymore</a>";s:7:"options";a:8:{s:4:"type";s:7:"warning";s:2:"id";s:19:"wpseo-upsell-notice";s:5:"nonce";N;s:8:"priority";d:0.80000000000000004;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:14:"manage_options";s:16:"capability_check";s:3:"all";}}i:1;a:2:{s:7:"message";s:168:"Don\'t miss your crawl errors: <a href="http://localhost/f5mobile/wp-admin/admin.php?page=wpseo_search_console&tab=settings">connect with Google Search Console here</a>.";s:7:"options";a:8:{s:4:"type";s:7:"warning";s:2:"id";s:17:"wpseo-dismiss-gsc";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:14:"manage_options";s:16:"capability_check";s:3:"all";}}}'),
(38, 1, 'nav_menu_recently_edited', '57'),
(39, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(40, 1, 'closedpostboxes_product', 'a:1:{i:0;s:10:"wpseo_meta";}'),
(41, 1, 'metaboxhidden_product', 'a:6:{i:0;s:7:"acf_158";i:1;s:7:"acf_137";i:2;s:7:"acf_114";i:3;s:6:"acf_29";i:4;s:10:"postcustom";i:5;s:7:"slugdiv";}'),
(42, 1, 'meta-box-order_product', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:100:"submitdiv,product_catdiv,postimagediv,woocommerce-product-images,product_accediv,tagsdiv-product_tag";s:6:"normal";s:120:"acf_137,acf_114,woocommerce-product-data,postexcerpt,warrantdiv,acf_138,acf_29,postcustom,slugdiv,wpseo_meta,commentsdiv";s:8:"advanced";s:0:"";}'),
(43, 1, 'screen_layout_product', '2'),
(44, 1, 'closedpostboxes_post', 'a:0:{}'),
(45, 1, 'metaboxhidden_post', 'a:8:{i:0;s:7:"acf_114";i:1;s:6:"acf_29";i:2;s:13:"trackbacksdiv";i:3;s:10:"postcustom";i:4;s:16:"commentstatusdiv";i:5;s:11:"commentsdiv";i:6;s:7:"slugdiv";i:7;s:9:"authordiv";}'),
(46, 1, 'manageedit-warrantcolumnshidden', 'a:2:{i:0;s:11:"wpseo_score";i:1;s:23:"wpseo_score_readability";}'),
(47, 1, 'edit_warrant_per_page', '20'),
(49, 1, 'closedpostboxes_page', 'a:0:{}'),
(50, 1, 'metaboxhidden_page', 'a:9:{i:0;s:10:"wpseo_meta";i:1;s:7:"acf_114";i:2;s:7:"acf_137";i:3;s:6:"acf_29";i:4;s:10:"postcustom";i:5;s:16:"commentstatusdiv";i:6;s:11:"commentsdiv";i:7;s:7:"slugdiv";i:8;s:9:"authordiv";}'),
(51, 1, 'last_update', '1498483398'),
(52, 1, 'billing_first_name', 'Admin'),
(53, 1, 'billing_address_1', 'Cầu Giấy - Hà Nội'),
(54, 1, 'billing_email', 'skyfrost.07@gmail.com'),
(55, 1, 'billing_phone', '0123456774'),
(56, 1, 'shipping_first_name', 'Admin'),
(57, 1, 'shipping_address_1', 'Cầu Giấy - Hà Nội'),
(59, 1, 'closedpostboxes_shop_order', 'a:0:{}'),
(60, 1, 'metaboxhidden_shop_order', 'a:4:{i:0;s:7:"acf_114";i:1;s:7:"acf_137";i:2;s:6:"acf_29";i:3;s:10:"postcustom";}'),
(66, 1, 'shipping_method', 'a:1:{i:0;s:15:"free_shipping:1";}'),
(67, 1, 'closedpostboxes_hoi_dap', 'a:1:{i:0;s:10:"wpseo_meta";}'),
(68, 1, 'metaboxhidden_hoi_dap', 'a:5:{i:0;s:7:"acf_114";i:1;s:7:"acf_137";i:2;s:7:"acf_158";i:3;s:6:"acf_29";i:4;s:7:"slugdiv";}'),
(69, 1, 'meta-box-order_hoi_dap', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:42:"submitdiv,tagsdiv-post_tag,question_catdiv";s:6:"normal";s:76:"wpseo_meta,acf_114,acf_137,acf_158,acf_29,authordiv,commentstatusdiv,slugdiv";s:8:"advanced";s:0:"";}'),
(70, 1, 'screen_layout_hoi_dap', '2'),
(71, 1, 'wpseo-upsell-notice', 'seen'),
(72, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:1:{s:32:"5f93f983524def3dca464469d2cf9f3e";a:9:{s:10:"product_id";i:110;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:250000;s:13:"line_subtotal";d:250000;s:8:"line_tax";d:0;s:17:"line_subtotal_tax";d:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}}');

-- --------------------------------------------------------

--
-- Table structure for table `plbs_users`
--

CREATE TABLE `plbs_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `plbs_users`
--

INSERT INTO `plbs_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BsaWZQCRaXBSIkurRR9HooH3.qSPy41', 'admin', 'skyfrost.07@gmail.com', '', '2017-06-13 05:59:53', '', 0, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `plbs_woocommerce_api_keys`
--

CREATE TABLE `plbs_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8_general_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8_general_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8_general_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8_general_ci NOT NULL,
  `nonces` longtext COLLATE utf8_general_ci,
  `truncated_key` char(7) COLLATE utf8_general_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plbs_woocommerce_attribute_taxonomies`
--

CREATE TABLE `plbs_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8_general_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8_general_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8_general_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8_general_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `plbs_woocommerce_attribute_taxonomies`
--

INSERT INTO `plbs_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(2, 'man-hinh', 'Màn hình', 'text', 'menu_order', 0),
(3, 'ram', 'RAM', 'text', 'menu_order', 0),
(4, 'cpu', 'CPU', 'text', 'menu_order', 0),
(5, 'camera-sau', 'Camera sau', 'text', 'menu_order', 0),
(6, 'camera-truoc', 'Camera trước', 'text', 'menu_order', 0),
(7, 'bo-nho-trong', 'Bộ nhớ trong', 'text', 'menu_order', 0),
(8, 'he-dieu-hanh', 'Hệ điều hành', 'text', 'menu_order', 0),
(9, 'chip-do-hoa', 'Chip đồ họa', 'text', 'menu_order', 0),
(10, 'ho-tro-the-toi-da', 'Hỗ trợ thẻ tối đa', 'text', 'menu_order', 0),
(11, 'so-khe-sim', 'Số khe SIM', 'text', 'menu_order', 0),
(12, 'dung-luong-pin', 'Dung lượng Pin', 'text', 'menu_order', 0),
(13, 'ket-noi', 'Kết nối', 'text', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Table structure for table `plbs_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `plbs_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(32) COLLATE utf8_general_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8_general_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8_general_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8_general_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plbs_woocommerce_log`
--

CREATE TABLE `plbs_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8_general_ci NOT NULL,
  `message` longtext COLLATE utf8_general_ci NOT NULL,
  `context` longtext COLLATE utf8_general_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plbs_woocommerce_order_itemmeta`
--

CREATE TABLE `plbs_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_general_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `plbs_woocommerce_order_itemmeta`
--

INSERT INTO `plbs_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '90'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '13990000'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '13990000'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(10, 2, '_product_id', '104'),
(11, 2, '_variation_id', '0'),
(12, 2, '_qty', '1'),
(13, 2, '_tax_class', ''),
(14, 2, '_line_subtotal', '299000'),
(15, 2, '_line_subtotal_tax', '0'),
(16, 2, '_line_total', '299000'),
(17, 2, '_line_tax', '0'),
(18, 2, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(19, 3, 'method_id', 'free_shipping:1'),
(20, 3, 'cost', '0'),
(21, 3, 'total_tax', '0'),
(22, 3, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
(23, 3, 'Mặt hàng', 'iPhe 6s Plus 64G Chưa Active Fullboxon &times; 1, Sạc Ôtô Rock Chính Hãng &times; 1'),
(24, 4, '_product_id', '86'),
(25, 4, '_variation_id', '0'),
(26, 4, '_qty', '1'),
(27, 4, '_tax_class', ''),
(28, 4, '_line_subtotal', '2490000'),
(29, 4, '_line_subtotal_tax', '0'),
(30, 4, '_line_total', '2490000'),
(31, 4, '_line_tax', '0'),
(32, 4, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(33, 5, 'method_id', 'free_shipping:1'),
(34, 5, 'cost', '0'),
(35, 5, 'total_tax', '0'),
(36, 5, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
(37, 5, 'Mặt hàng', 'iPhone 5s Lock Nhật – 16GB – New &times; 1'),
(38, 6, '_product_id', '90'),
(39, 6, '_variation_id', '0'),
(40, 6, '_qty', '1'),
(41, 6, '_tax_class', ''),
(42, 6, '_line_subtotal', '13990000'),
(43, 6, '_line_subtotal_tax', '0'),
(44, 6, '_line_total', '13990000'),
(45, 6, '_line_tax', '0'),
(46, 6, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(47, 7, 'method_id', 'free_shipping:1'),
(48, 7, 'cost', '0'),
(49, 7, 'total_tax', '0'),
(50, 7, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
(51, 7, 'Mặt hàng', 'iPhe 6s Plus 64G Chưa Active Fullboxon &times; 1'),
(52, 8, '_product_id', '112'),
(53, 8, '_variation_id', '0'),
(54, 8, '_qty', '1'),
(55, 8, '_tax_class', ''),
(56, 8, '_line_subtotal', '499000'),
(57, 8, '_line_subtotal_tax', '0'),
(58, 8, '_line_total', '499000'),
(59, 8, '_line_tax', '0'),
(60, 8, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(61, 9, '_product_id', '86'),
(62, 9, '_variation_id', '0'),
(63, 9, '_qty', '1'),
(64, 9, '_tax_class', ''),
(65, 9, '_line_subtotal', '2490000'),
(66, 9, '_line_subtotal_tax', '0'),
(67, 9, '_line_total', '2490000'),
(68, 9, '_line_tax', '0'),
(69, 9, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(70, 10, '_product_id', '88'),
(71, 10, '_variation_id', '0'),
(72, 10, '_qty', '1'),
(73, 10, '_tax_class', ''),
(74, 10, '_line_subtotal', '3000000'),
(75, 10, '_line_subtotal_tax', '0'),
(76, 10, '_line_total', '3000000'),
(77, 10, '_line_tax', '0'),
(78, 10, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(79, 11, 'method_id', 'free_shipping:1'),
(80, 11, 'cost', '0'),
(81, 11, 'total_tax', '0'),
(82, 11, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
(83, 11, 'Mặt hàng', 'Pin sạc dự phòng Xiaomi 10400 mAh &times; 1, iPhone 5s Lock Nhật – 16GB – New &times; 1, iPhone 5s Quốc Tế – 16GB – Xám – Like new &times; 1');

-- --------------------------------------------------------

--
-- Table structure for table `plbs_woocommerce_order_items`
--

CREATE TABLE `plbs_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8_general_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `plbs_woocommerce_order_items`
--

INSERT INTO `plbs_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'iPhe 6s Plus 64G Chưa Active Fullboxon', 'line_item', 152),
(2, 'Sạc Ôtô Rock Chính Hãng', 'line_item', 152),
(3, 'Free shipping', 'shipping', 152),
(4, 'iPhone 5s Lock Nhật – 16GB – New', 'line_item', 153),
(5, 'Free shipping', 'shipping', 153),
(6, 'iPhe 6s Plus 64G Chưa Active Fullboxon', 'line_item', 154),
(7, 'Free shipping', 'shipping', 154),
(8, 'Pin sạc dự phòng Xiaomi 10400 mAh', 'line_item', 167),
(9, 'iPhone 5s Lock Nhật – 16GB – New', 'line_item', 167),
(10, 'iPhone 5s Quốc Tế – 16GB – Xám – Like new', 'line_item', 167),
(11, 'Free shipping', 'shipping', 167);

-- --------------------------------------------------------

--
-- Table structure for table `plbs_woocommerce_payment_tokenmeta`
--

CREATE TABLE `plbs_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_general_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plbs_woocommerce_payment_tokens`
--

CREATE TABLE `plbs_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8_general_ci NOT NULL,
  `token` text COLLATE utf8_general_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8_general_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plbs_woocommerce_sessions`
--

CREATE TABLE `plbs_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8_general_ci NOT NULL,
  `session_value` longtext COLLATE utf8_general_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `plbs_woocommerce_sessions`
--

INSERT INTO `plbs_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(128, '1', 'a:24:{s:8:"customer";s:792:"a:25:{s:2:"id";i:1;s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:24:"Cầu Giấy - Hà Nội";s:7:"address";s:24:"Cầu Giấy - Hà Nội";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"VN";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:24:"Cầu Giấy - Hà Nội";s:16:"shipping_address";s:24:"Cầu Giấy - Hà Nội";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"VN";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;s:10:"first_name";s:5:"Admin";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:10:"0123456774";s:5:"email";s:21:"skyfrost.07@gmail.com";s:19:"shipping_first_name";s:5:"Admin";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";s:4:"cart";s:312:"a:1:{s:32:"5f93f983524def3dca464469d2cf9f3e";a:9:{s:10:"product_id";i:110;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:250000;s:13:"line_subtotal";d:250000;s:8:"line_tax";d:0;s:17:"line_subtotal_tax";d:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:250000;s:5:"total";d:250000;s:8:"subtotal";i:250000;s:15:"subtotal_ex_tax";i:250000;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";i:0;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";s:10:"wc_notices";N;s:22:"shipping_for_package_0";s:397:"a:2:{s:12:"package_hash";s:40:"wc_ship_61a68d5aeab5626a134b5f41f149e1bd";s:5:"rates";a:1:{s:15:"free_shipping:1";O:16:"WC_Shipping_Rate":6:{s:2:"id";s:15:"free_shipping:1";s:5:"label";s:13:"Free shipping";s:4:"cost";s:1:"0";s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";s:27:"\0WC_Shipping_Rate\0meta_data";a:1:{s:11:"Mặt hàng";s:47:"Cáp Sạc Lightning ZIN chính hãng &times; 1";}}}}";s:23:"chosen_shipping_methods";s:33:"a:1:{i:0;s:15:"free_shipping:1";}";s:22:"shipping_method_counts";s:14:"a:1:{i:0;i:1;}";s:21:"chosen_payment_method";s:3:"cod";}', 1499007052);

-- --------------------------------------------------------

--
-- Table structure for table `plbs_woocommerce_shipping_zones`
--

CREATE TABLE `plbs_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8_general_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plbs_woocommerce_shipping_zone_locations`
--

CREATE TABLE `plbs_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8_general_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plbs_woocommerce_shipping_zone_methods`
--

CREATE TABLE `plbs_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8_general_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `plbs_woocommerce_shipping_zone_methods`
--

INSERT INTO `plbs_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(0, 1, 'free_shipping', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `plbs_woocommerce_tax_rates`
--

CREATE TABLE `plbs_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plbs_woocommerce_tax_rate_locations`
--

CREATE TABLE `plbs_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8_general_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `plbs_commentmeta`
--
ALTER TABLE `plbs_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `plbs_comments`
--
ALTER TABLE `plbs_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `plbs_es_deliverreport`
--
ALTER TABLE `plbs_es_deliverreport`
  ADD PRIMARY KEY (`es_deliver_id`);

--
-- Indexes for table `plbs_es_emaillist`
--
ALTER TABLE `plbs_es_emaillist`
  ADD PRIMARY KEY (`es_email_id`);

--
-- Indexes for table `plbs_es_notification`
--
ALTER TABLE `plbs_es_notification`
  ADD PRIMARY KEY (`es_note_id`);

--
-- Indexes for table `plbs_es_sentdetails`
--
ALTER TABLE `plbs_es_sentdetails`
  ADD PRIMARY KEY (`es_sent_id`);

--
-- Indexes for table `plbs_es_templatetable`
--
ALTER TABLE `plbs_es_templatetable`
  ADD PRIMARY KEY (`es_templ_id`);

--
-- Indexes for table `plbs_itsec_lockouts`
--
ALTER TABLE `plbs_itsec_lockouts`
  ADD PRIMARY KEY (`lockout_id`),
  ADD KEY `lockout_expire_gmt` (`lockout_expire_gmt`),
  ADD KEY `lockout_host` (`lockout_host`),
  ADD KEY `lockout_user` (`lockout_user`),
  ADD KEY `lockout_username` (`lockout_username`),
  ADD KEY `lockout_active` (`lockout_active`);

--
-- Indexes for table `plbs_itsec_log`
--
ALTER TABLE `plbs_itsec_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_type` (`log_type`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `plbs_itsec_temp`
--
ALTER TABLE `plbs_itsec_temp`
  ADD PRIMARY KEY (`temp_id`),
  ADD KEY `temp_date_gmt` (`temp_date_gmt`),
  ADD KEY `temp_host` (`temp_host`),
  ADD KEY `temp_user` (`temp_user`),
  ADD KEY `temp_username` (`temp_username`);

--
-- Indexes for table `plbs_links`
--
ALTER TABLE `plbs_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `plbs_options`
--
ALTER TABLE `plbs_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `plbs_postmeta`
--
ALTER TABLE `plbs_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `plbs_posts`
--
ALTER TABLE `plbs_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `plbs_termmeta`
--
ALTER TABLE `plbs_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `plbs_terms`
--
ALTER TABLE `plbs_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `plbs_term_relationships`
--
ALTER TABLE `plbs_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `plbs_term_taxonomy`
--
ALTER TABLE `plbs_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `plbs_usermeta`
--
ALTER TABLE `plbs_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `plbs_users`
--
ALTER TABLE `plbs_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `plbs_woocommerce_api_keys`
--
ALTER TABLE `plbs_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `plbs_woocommerce_attribute_taxonomies`
--
ALTER TABLE `plbs_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `plbs_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `plbs_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- Indexes for table `plbs_woocommerce_log`
--
ALTER TABLE `plbs_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `plbs_woocommerce_order_itemmeta`
--
ALTER TABLE `plbs_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `plbs_woocommerce_order_items`
--
ALTER TABLE `plbs_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `plbs_woocommerce_payment_tokenmeta`
--
ALTER TABLE `plbs_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `plbs_woocommerce_payment_tokens`
--
ALTER TABLE `plbs_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `plbs_woocommerce_sessions`
--
ALTER TABLE `plbs_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `plbs_woocommerce_shipping_zones`
--
ALTER TABLE `plbs_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `plbs_woocommerce_shipping_zone_locations`
--
ALTER TABLE `plbs_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `plbs_woocommerce_shipping_zone_methods`
--
ALTER TABLE `plbs_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `plbs_woocommerce_tax_rates`
--
ALTER TABLE `plbs_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `plbs_woocommerce_tax_rate_locations`
--
ALTER TABLE `plbs_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `plbs_commentmeta`
--
ALTER TABLE `plbs_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plbs_comments`
--
ALTER TABLE `plbs_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `plbs_es_deliverreport`
--
ALTER TABLE `plbs_es_deliverreport`
  MODIFY `es_deliver_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `plbs_es_emaillist`
--
ALTER TABLE `plbs_es_emaillist`
  MODIFY `es_email_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `plbs_es_notification`
--
ALTER TABLE `plbs_es_notification`
  MODIFY `es_note_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `plbs_es_sentdetails`
--
ALTER TABLE `plbs_es_sentdetails`
  MODIFY `es_sent_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `plbs_es_templatetable`
--
ALTER TABLE `plbs_es_templatetable`
  MODIFY `es_templ_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `plbs_itsec_lockouts`
--
ALTER TABLE `plbs_itsec_lockouts`
  MODIFY `lockout_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plbs_itsec_log`
--
ALTER TABLE `plbs_itsec_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `plbs_itsec_temp`
--
ALTER TABLE `plbs_itsec_temp`
  MODIFY `temp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plbs_links`
--
ALTER TABLE `plbs_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plbs_options`
--
ALTER TABLE `plbs_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1540;
--
-- AUTO_INCREMENT for table `plbs_postmeta`
--
ALTER TABLE `plbs_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1880;
--
-- AUTO_INCREMENT for table `plbs_posts`
--
ALTER TABLE `plbs_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT for table `plbs_termmeta`
--
ALTER TABLE `plbs_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
--
-- AUTO_INCREMENT for table `plbs_terms`
--
ALTER TABLE `plbs_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `plbs_term_taxonomy`
--
ALTER TABLE `plbs_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `plbs_usermeta`
--
ALTER TABLE `plbs_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `plbs_users`
--
ALTER TABLE `plbs_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `plbs_woocommerce_api_keys`
--
ALTER TABLE `plbs_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plbs_woocommerce_attribute_taxonomies`
--
ALTER TABLE `plbs_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `plbs_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `plbs_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plbs_woocommerce_log`
--
ALTER TABLE `plbs_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plbs_woocommerce_order_itemmeta`
--
ALTER TABLE `plbs_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `plbs_woocommerce_order_items`
--
ALTER TABLE `plbs_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `plbs_woocommerce_payment_tokenmeta`
--
ALTER TABLE `plbs_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plbs_woocommerce_payment_tokens`
--
ALTER TABLE `plbs_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plbs_woocommerce_sessions`
--
ALTER TABLE `plbs_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `plbs_woocommerce_shipping_zones`
--
ALTER TABLE `plbs_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plbs_woocommerce_shipping_zone_locations`
--
ALTER TABLE `plbs_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plbs_woocommerce_shipping_zone_methods`
--
ALTER TABLE `plbs_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `plbs_woocommerce_tax_rates`
--
ALTER TABLE `plbs_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plbs_woocommerce_tax_rate_locations`
--
ALTER TABLE `plbs_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
