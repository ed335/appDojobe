-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 06/03/2026 às 21:05
-- Versão do servidor: 11.8.3-MariaDB-log
-- Versão do PHP: 7.2.34

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u263321158_dojobe_name1`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin_settings`
--

DROP TABLE IF EXISTS `admin_settings`;
CREATE TABLE IF NOT EXISTS `admin_settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `update_length` int(10) UNSIGNED NOT NULL COMMENT 'The max length of updates',
  `status_page` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Offline, 1 Online',
  `email_verification` enum('0','1') NOT NULL COMMENT '0 Off, 1 On',
  `email_no_reply` varchar(200) NOT NULL,
  `email_admin` varchar(200) NOT NULL,
  `captcha` enum('on','off') NOT NULL DEFAULT 'on',
  `file_size_allowed` int(11) UNSIGNED NOT NULL COMMENT 'Size in Bytes',
  `google_analytics` text NOT NULL,
  `paypal_account` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `pinterest` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `google_adsense` text NOT NULL,
  `currency_symbol` char(10) NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `min_subscription_amount` int(11) UNSIGNED NOT NULL,
  `payment_gateway` enum('PayPal','Stripe') NOT NULL DEFAULT 'PayPal',
  `min_width_height_image` varchar(100) NOT NULL,
  `fee_commission` int(10) UNSIGNED NOT NULL,
  `max_subscription_amount` int(10) UNSIGNED NOT NULL,
  `date_format` varchar(200) NOT NULL,
  `link_privacy` varchar(200) NOT NULL,
  `link_terms` varchar(200) NOT NULL,
  `currency_position` varchar(100) NOT NULL DEFAULT 'left',
  `facebook_login` enum('on','off') NOT NULL DEFAULT 'off',
  `amount_min_withdrawal` int(10) UNSIGNED NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `github` varchar(200) NOT NULL,
  `comment_length` int(10) UNSIGNED NOT NULL,
  `days_process_withdrawals` int(10) UNSIGNED NOT NULL,
  `google_login` enum('on','off') NOT NULL DEFAULT 'off',
  `number_posts_show` tinyint(3) UNSIGNED NOT NULL,
  `number_comments_show` tinyint(3) UNSIGNED NOT NULL,
  `registration_active` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 No, 1 Yes',
  `account_verification` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 No, 1 Yes',
  `logo` varchar(100) NOT NULL,
  `logo_2` varchar(100) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `home_index` varchar(100) NOT NULL,
  `bg_gradient` varchar(100) NOT NULL,
  `img_1` varchar(100) NOT NULL,
  `img_2` varchar(100) NOT NULL,
  `img_3` varchar(100) NOT NULL,
  `img_4` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `show_counter` enum('on','off') NOT NULL DEFAULT 'on',
  `color_default` varchar(100) NOT NULL,
  `decimal_format` enum('comma','dot') NOT NULL DEFAULT 'dot',
  `version` varchar(5) NOT NULL,
  `link_cookies` varchar(200) NOT NULL,
  `story_length` int(10) UNSIGNED NOT NULL,
  `maintenance_mode` enum('on','off') NOT NULL DEFAULT 'off',
  `company` varchar(100) NOT NULL,
  `country` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `vat` varchar(100) NOT NULL,
  `widget_creators_featured` enum('on','off') NOT NULL DEFAULT 'on',
  `home_style` int(10) UNSIGNED NOT NULL,
  `file_size_allowed_verify_account` int(10) UNSIGNED NOT NULL,
  `payout_method_paypal` enum('on','off') NOT NULL DEFAULT 'on',
  `payout_method_bank` enum('on','off') NOT NULL DEFAULT 'on',
  `min_tip_amount` int(10) UNSIGNED NOT NULL,
  `max_tip_amount` int(10) UNSIGNED NOT NULL,
  `min_ppv_amount` int(10) UNSIGNED NOT NULL,
  `max_ppv_amount` int(10) UNSIGNED NOT NULL,
  `min_deposits_amount` int(10) UNSIGNED NOT NULL,
  `max_deposits_amount` int(10) UNSIGNED NOT NULL,
  `button_style` enum('rounded','normal') NOT NULL DEFAULT 'rounded',
  `twitter_login` enum('on','off') NOT NULL DEFAULT 'off',
  `hide_admin_profile` enum('on','off') NOT NULL DEFAULT 'off',
  `requests_verify_account` enum('on','off') NOT NULL DEFAULT 'on',
  `navbar_background_color` varchar(30) NOT NULL,
  `navbar_text_color` varchar(30) NOT NULL,
  `footer_background_color` varchar(30) NOT NULL,
  `footer_text_color` varchar(30) NOT NULL,
  `preloading` enum('on','off') NOT NULL DEFAULT 'off',
  `preloading_image` varchar(100) NOT NULL,
  `watermark` enum('on','off') NOT NULL DEFAULT 'on',
  `earnings_simulator` enum('on','off') NOT NULL DEFAULT 'on',
  `custom_css` text NOT NULL,
  `custom_js` text NOT NULL,
  `alert_adult` enum('on','off') NOT NULL DEFAULT 'off',
  `genders` varchar(250) NOT NULL,
  `cover_default` varchar(100) NOT NULL,
  `who_can_see_content` enum('all','users') NOT NULL DEFAULT 'all',
  `users_can_edit_post` enum('on','off') NOT NULL DEFAULT 'on',
  `disable_wallet` enum('on','off') NOT NULL DEFAULT 'on',
  `disable_banner_cookies` enum('on','off') NOT NULL DEFAULT 'off',
  `wallet_format` enum('real_money','credits','points','tokens') NOT NULL DEFAULT 'real_money',
  `maximum_files_post` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `maximum_files_msg` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `announcement` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcement_show` varchar(100) NOT NULL,
  `announcement_cookie` varchar(20) NOT NULL,
  `limit_categories` int(10) UNSIGNED NOT NULL DEFAULT 3,
  `captcha_contact` enum('on','off') NOT NULL DEFAULT 'on',
  `disable_tips` enum('on','off') NOT NULL DEFAULT 'off',
  `payout_method_payoneer` enum('on','off') NOT NULL DEFAULT 'off',
  `payout_method_zelle` enum('on','off') NOT NULL DEFAULT 'off',
  `type_announcement` char(10) NOT NULL DEFAULT 'primary',
  `referral_system` enum('on','off') NOT NULL DEFAULT 'off',
  `auto_approve_post` enum('on','off') NOT NULL DEFAULT 'on',
  `watermark_on_videos` enum('on','off') NOT NULL DEFAULT 'on',
  `percentage_referred` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `referral_transaction_limit` char(10) NOT NULL DEFAULT '1',
  `video_encoding` enum('on','off') NOT NULL DEFAULT 'off',
  `live_streaming_status` enum('on','off') NOT NULL DEFAULT 'off',
  `live_streaming_minimum_price` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `live_streaming_max_price` int(10) UNSIGNED NOT NULL DEFAULT 100,
  `agora_app_id` varchar(200) NOT NULL,
  `tiktok` varchar(200) NOT NULL,
  `snapchat` varchar(200) NOT NULL,
  `limit_live_streaming_paid` int(10) UNSIGNED NOT NULL,
  `limit_live_streaming_free` int(10) UNSIGNED NOT NULL,
  `live_streaming_free` enum('0','1') NOT NULL DEFAULT '0',
  `type_withdrawals` char(50) NOT NULL DEFAULT 'custom',
  `shop` tinyint(1) NOT NULL DEFAULT 0,
  `min_price_product` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `max_price_product` int(10) UNSIGNED NOT NULL DEFAULT 100,
  `digital_product_sale` tinyint(1) NOT NULL DEFAULT 0,
  `custom_content` tinyint(1) NOT NULL DEFAULT 0,
  `tax_on_wallet` tinyint(1) NOT NULL DEFAULT 1,
  `stripe_connect` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `stripe_connect_countries` longtext NOT NULL,
  `physical_products` tinyint(1) NOT NULL DEFAULT 0,
  `disable_login_register_email` tinyint(1) NOT NULL DEFAULT 0,
  `disable_contact` tinyint(1) NOT NULL DEFAULT 0,
  `specific_day_payment_withdrawals` int(10) UNSIGNED NOT NULL,
  `disable_new_post_notification` tinyint(1) NOT NULL DEFAULT 0,
  `disable_search_creators` tinyint(1) NOT NULL DEFAULT 0,
  `search_creators_genders` tinyint(1) NOT NULL DEFAULT 0,
  `generate_qr_code` tinyint(1) NOT NULL DEFAULT 0,
  `autofollow_admin` tinyint(1) NOT NULL DEFAULT 0,
  `allow_zip_files` tinyint(1) NOT NULL DEFAULT 1,
  `reddit` varchar(200) NOT NULL,
  `telegram` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `push_notification_status` tinyint(1) NOT NULL DEFAULT 0,
  `onesignal_appid` varchar(150) NOT NULL,
  `onesignal_restapi` varchar(150) NOT NULL,
  `status_pwa` tinyint(1) NOT NULL DEFAULT 1,
  `zip_verification_creator` tinyint(1) NOT NULL DEFAULT 1,
  `amount_max_withdrawal` int(10) UNSIGNED NOT NULL,
  `story_status` tinyint(1) NOT NULL DEFAULT 0,
  `story_image` tinyint(1) NOT NULL DEFAULT 1,
  `story_text` tinyint(1) NOT NULL DEFAULT 1,
  `story_max_videos_length` int(10) UNSIGNED NOT NULL DEFAULT 30,
  `payout_method_western_union` enum('on','off') NOT NULL DEFAULT 'off',
  `payout_method_crypto` enum('on','off') NOT NULL DEFAULT 'off',
  `threads` varchar(200) NOT NULL,
  `watermak_video` varchar(100) NOT NULL,
  `coconut_key` varchar(255) NOT NULL,
  `encoding_method` varchar(255) NOT NULL DEFAULT 'ffmpeg',
  `allow_scheduled_posts` tinyint(1) DEFAULT 0,
  `google_tag_manager_head` text NOT NULL,
  `google_tag_manager_body` text NOT NULL,
  `live_streaming_private` enum('on','off') NOT NULL DEFAULT 'off',
  `live_streaming_minimum_price_private` decimal(10,2) DEFAULT NULL,
  `live_streaming_max_price_private` decimal(10,2) DEFAULT NULL,
  `limit_live_streaming_private` int(10) UNSIGNED NOT NULL,
  `show_address_company_footer` tinyint(1) DEFAULT 0,
  `watermark_position` varchar(50) NOT NULL DEFAULT 'center',
  `coconut_region` varchar(100) NOT NULL DEFAULT 'Virginia',
  `payout_method_mercadopago` enum('on','off') NOT NULL DEFAULT 'off',
  `theme` enum('light','dark') NOT NULL DEFAULT 'light',
  `allow_creators_deactivate_profile` tinyint(1) NOT NULL DEFAULT 0,
  `allow_epub_files` tinyint(1) NOT NULL DEFAULT 0,
  `gifts` tinyint(1) NOT NULL DEFAULT 0,
  `disable_free_post` tinyint(1) NOT NULL DEFAULT 0,
  `disable_explore_section` tinyint(1) NOT NULL DEFAULT 0,
  `disable_creators_section` tinyint(1) NOT NULL DEFAULT 0,
  `phone` varchar(100) DEFAULT NULL,
  `allow_free_items_shop` tinyint(1) NOT NULL DEFAULT 0,
  `allow_external_links_shop` tinyint(1) NOT NULL DEFAULT 0,
  `users_can_delete_messages` tinyint(1) NOT NULL DEFAULT 1,
  `delete_old_users_inactive` tinyint(1) NOT NULL DEFAULT 0,
  `delete_old_messages` tinyint(1) NOT NULL DEFAULT 0,
  `theme_color_pwa` varchar(255) NOT NULL DEFAULT '#ff3453',
  `video_call_status` tinyint(1) NOT NULL DEFAULT 0,
  `video_call_max_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `video_call_min_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `video_call_max_duration` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `websockets` tinyint(1) NOT NULL DEFAULT 0,
  `allow_reels` tinyint(1) NOT NULL DEFAULT 0,
  `disable_audio` tinyint(1) NOT NULL DEFAULT 0,
  `audio_call_status` tinyint(1) NOT NULL DEFAULT 0,
  `audio_call_max_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `audio_call_min_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `audio_call_max_duration` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `ppv_only_free_accounts` tinyint(1) NOT NULL DEFAULT 0,
  `giphy_status` tinyint(1) NOT NULL DEFAULT 0,
  `giphy_api_key` varchar(255) DEFAULT NULL,
  `moderation_status` tinyint(1) NOT NULL DEFAULT 0,
  `sightengine_api_user` varchar(255) DEFAULT NULL,
  `sightengine_api_api_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `admin_settings`
--

INSERT INTO `admin_settings` (`id`, `title`, `description`, `keywords`, `update_length`, `status_page`, `email_verification`, `email_no_reply`, `email_admin`, `captcha`, `file_size_allowed`, `google_analytics`, `paypal_account`, `twitter`, `facebook`, `pinterest`, `instagram`, `google_adsense`, `currency_symbol`, `currency_code`, `min_subscription_amount`, `payment_gateway`, `min_width_height_image`, `fee_commission`, `max_subscription_amount`, `date_format`, `link_privacy`, `link_terms`, `currency_position`, `facebook_login`, `amount_min_withdrawal`, `youtube`, `github`, `comment_length`, `days_process_withdrawals`, `google_login`, `number_posts_show`, `number_comments_show`, `registration_active`, `account_verification`, `logo`, `logo_2`, `favicon`, `home_index`, `bg_gradient`, `img_1`, `img_2`, `img_3`, `img_4`, `avatar`, `show_counter`, `color_default`, `decimal_format`, `version`, `link_cookies`, `story_length`, `maintenance_mode`, `company`, `country`, `address`, `city`, `zip`, `vat`, `widget_creators_featured`, `home_style`, `file_size_allowed_verify_account`, `payout_method_paypal`, `payout_method_bank`, `min_tip_amount`, `max_tip_amount`, `min_ppv_amount`, `max_ppv_amount`, `min_deposits_amount`, `max_deposits_amount`, `button_style`, `twitter_login`, `hide_admin_profile`, `requests_verify_account`, `navbar_background_color`, `navbar_text_color`, `footer_background_color`, `footer_text_color`, `preloading`, `preloading_image`, `watermark`, `earnings_simulator`, `custom_css`, `custom_js`, `alert_adult`, `genders`, `cover_default`, `who_can_see_content`, `users_can_edit_post`, `disable_wallet`, `disable_banner_cookies`, `wallet_format`, `maximum_files_post`, `maximum_files_msg`, `announcement`, `announcement_show`, `announcement_cookie`, `limit_categories`, `captcha_contact`, `disable_tips`, `payout_method_payoneer`, `payout_method_zelle`, `type_announcement`, `referral_system`, `auto_approve_post`, `watermark_on_videos`, `percentage_referred`, `referral_transaction_limit`, `video_encoding`, `live_streaming_status`, `live_streaming_minimum_price`, `live_streaming_max_price`, `agora_app_id`, `tiktok`, `snapchat`, `limit_live_streaming_paid`, `limit_live_streaming_free`, `live_streaming_free`, `type_withdrawals`, `shop`, `min_price_product`, `max_price_product`, `digital_product_sale`, `custom_content`, `tax_on_wallet`, `stripe_connect`, `stripe_connect_countries`, `physical_products`, `disable_login_register_email`, `disable_contact`, `specific_day_payment_withdrawals`, `disable_new_post_notification`, `disable_search_creators`, `search_creators_genders`, `generate_qr_code`, `autofollow_admin`, `allow_zip_files`, `reddit`, `telegram`, `linkedin`, `push_notification_status`, `onesignal_appid`, `onesignal_restapi`, `status_pwa`, `zip_verification_creator`, `amount_max_withdrawal`, `story_status`, `story_image`, `story_text`, `story_max_videos_length`, `payout_method_western_union`, `payout_method_crypto`, `threads`, `watermak_video`, `coconut_key`, `encoding_method`, `allow_scheduled_posts`, `google_tag_manager_head`, `google_tag_manager_body`, `live_streaming_private`, `live_streaming_minimum_price_private`, `live_streaming_max_price_private`, `limit_live_streaming_private`, `show_address_company_footer`, `watermark_position`, `coconut_region`, `payout_method_mercadopago`, `theme`, `allow_creators_deactivate_profile`, `allow_epub_files`, `gifts`, `disable_free_post`, `disable_explore_section`, `disable_creators_section`, `phone`, `allow_free_items_shop`, `allow_external_links_shop`, `users_can_delete_messages`, `delete_old_users_inactive`, `delete_old_messages`, `theme_color_pwa`, `video_call_status`, `video_call_max_price`, `video_call_min_price`, `video_call_max_duration`, `websockets`, `allow_reels`, `disable_audio`, `audio_call_status`, `audio_call_max_price`, `audio_call_min_price`, `audio_call_max_duration`, `ppv_only_free_accounts`, `giphy_status`, `giphy_api_key`, `moderation_status`, `sightengine_api_user`, `sightengine_api_api_secret`) VALUES
(1, 'Dojobe', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ut tortor rutrum massa efficitur tincidunt vel nec lacus. Curabitur porta aliquet diam, eu gravida neque lacinia.', 'donations,support,creators,Creaty,subscription', 250, '1', '1', 'contato@dojobe.com', 'contato@dojobe.com', 'off', 102400, '<!-- Google tag (gtag.js) -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=G-NK2SX5Y7PL\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'G-NK2SX5Y7PL\');\r\n</script>', 'paypal@yousite.com', '', '', '', 'https://www.instagram.com/soudojobe', '', 'R$', 'BRL', 2, 'PayPal', '400', 15, 50000, 'd/m/Y', 'https://dojobe.com/p/privacidade', 'https://dojobe.com/p/termos', 'left', '', 300, '', '', 250, 1, '', 5, 2, '1', '1', 'logo-1719637131.svg', 'logo_2-1738281535.png', 'favicon-1720834964.svg', 'home_index-1720834616.jpg', 'background-1719637744.jpg', 'image_index_1-1720843390.svg', 'image_index_2-1720843455.svg', 'image_index_3-1720843710.svg', 'image_index_4-1720833158.svg', 'default-1719637495.png', 'on', '#ff3453', 'dot', '6.8', 'https://dojobe.com/p/cookies', 500, '', 'Dojobe', 'Brazil', 'Rua 8', 'São Paulo', '01310-000', '', 'on', 2, 4096, 'on', 'on', 5, 1000000, 1, 1000000, 1, 1000000, 'rounded', '', 'on', 'on', '#ffffff', '#3a3a3a', '#f0f0f0', '#5f5f5f', 'off', '', 'on', 'on', '', '', 'off', 'male,female,lesbian,bisexual,metrosexual,couple', '', 'all', 'on', 'off', 'off', 'real_money', 5, 5, '', 'all', 'RtoXnfZssSyCovadJkKM', 3, 'off', 'off', 'off', 'off', 'primary', 'on', 'on', 'on', 5, '5', 'on', 'on', 5, 100, '588a0527fe3043b78ec1eb6435bac072', '', '', 0, 0, '1', 'custom', 1, 5, 1000000, 1, 1, 1, 0, 'BR', 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, '', '', '', 1, '861b2f11-7b4e-4fb4-93f2-8d8b07da707c', 'NDc0MTRhMDEtNWE1My00MGNkLTg4YzktNjNhZmY0YWQ0Mzg4', 1, 0, 0, 1, 1, 1, 30, 'off', 'off', '', 'watermak_video-1738648307.png', 'k-4b9bbb8dbd7e9afb9e6f5e99c0f0164d', 'coconut', 1, '<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({\'gtm.start\':\r\nnew Date().getTime(),event:\'gtm.js\'});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=\'dataLayer\'?\'&l=\'+l:\'\';j.async=true;j.src=\r\n\'https://www.googletagmanager.com/gtm.js?id=\'+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,\'script\',\'dataLayer\',\'GTM-W54LT7K4\');</script>\r\n<!-- End Google Tag Manager -->', '<!-- Google Tag Manager (noscript) -->\r\n<noscript><iframe src=\"https://www.googletagmanager.com/ns.html?id=GTM-W54LT7K4\"\r\nheight=\"0\" width=\"0\" style=\"display:none;visibility:hidden\"></iframe></noscript>\r\n<!-- End Google Tag Manager (noscript) -->', 'on', 8.00, 100000.00, 10, NULL, 'center', 'Virginia', 'off', 'light', 1, 0, 1, 0, 0, 0, NULL, 0, 0, 1, 0, 1, '#ff3453', 1, 5000, 1, 30, 1, 1, 0, 1, 50, 1, 10, 0, 0, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `advertisings`
--

DROP TABLE IF EXISTS `advertisings`;
CREATE TABLE IF NOT EXISTS `advertisings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `image` varchar(150) NOT NULL,
  `clicks` int(10) UNSIGNED NOT NULL,
  `impressions` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `expired_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clicks` (`clicks`),
  KEY `impressions` (`impressions`),
  KEY `expired_at` (`expired_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ad_click_impressions`
--

DROP TABLE IF EXISTS `ad_click_impressions`;
CREATE TABLE IF NOT EXISTS `ad_click_impressions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `advertisings_id` bigint(20) UNSIGNED NOT NULL,
  `type` char(20) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `advertisings_id` (`advertisings_id`),
  KEY `type` (`type`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `ad_click_impressions`
--

INSERT INTO `ad_click_impressions` (`id`, `advertisings_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, 1, 'impression', '45.184.68.231', '2024-06-26 05:00:29', '2024-06-26 05:00:29'),
(2, 1, 'click', '45.184.68.231', '2024-06-26 05:00:40', '2024-06-26 05:00:40');

-- --------------------------------------------------------

--
-- Estrutura para tabela `audio_calls`
--

DROP TABLE IF EXISTS `audio_calls`;
CREATE TABLE IF NOT EXISTS `audio_calls` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `buyer_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'calling',
  `minutes` int(10) UNSIGNED NOT NULL,
  `token` varchar(200) DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `joined_at` timestamp NULL DEFAULT NULL,
  `ended_at` timestamp NULL DEFAULT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seller_id` (`seller_id`),
  KEY `buyer_id` (`buyer_id`),
  KEY `status` (`status`),
  KEY `token` (`token`),
  KEY `joined_at` (`joined_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `tags` (`tags`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura para tabela `bookmarks`
--

DROP TABLE IF EXISTS `bookmarks`;
CREATE TABLE IF NOT EXISTS `bookmarks` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `updates_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookmarks_user_id_index` (`user_id`),
  KEY `bookmarks_updates_id_index` (`updates_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `mode` enum('on','off') NOT NULL DEFAULT 'on',
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `keywords`, `mode`, `image`) VALUES
(1, 'Seios Naturais', 'seios-naturais', 'Nossas gostosas com seios naturais', 'seios, naturais', 'on', 'seios-naturais-4Y7cyeSf1uN7hJwFg0zxZhqQ09aGFNEb.png'),
(2, 'Cavala', 'cavala', 'Nossas modelos cavalas, completas. Tome cuidado com essa seção rs', 'cavala', 'on', 'cavala-6DllFmROWp8mehpioUAOJOzmOZTfld15.png'),
(3, 'Vídeo Chamada', 'video-chamada', 'Vamos nos conhecer antes? Elas vão te fazer gozar antes de te tocar pessoalmente.', 'videochamada', 'on', 'video-chamada-yoFVjLGkrWjfQvDhiRGQrJShhcYpd4di.png'),
(4, 'Fitness', 'fitness', 'Aqui você vai querer mais uma repetição. Nossas modelos fitness você encontra aqui.', 'modelos, fitness, modelofitness', 'on', 'fitness-D73qGzxI0u3sbsuijue0hsnTWfxQXHG2.png'),
(5, 'Siliconada', 'siliconada', 'Somente as Siliconadas', 'siliconada, siliconized', 'on', 'siliconada-8rz0vbQACxKzcf4f91Mpb9tGx0TeCWOu.png'),
(7, 'Bunda Grande', 'bunda-grande', '', 'bunda, grande', 'on', 'bunda-grande-hRWjEmqvHlufNZJHew6kyn0IK3kexJrQ.png'),
(8, 'Fetiche', 'fetiche', 'Nossas modelos mais mente aberta, gostam de fetiches rs', 'fetiche', 'on', 'fetiche-VodYPSk23SIOLZ6eHSZEray03PlZFKCG.png'),
(9, 'Magrinha', 'magrinha', 'Categoria das nossas magrinhas gostosas', 'magrinha', 'on', 'magrinha-7UljXtNYBoxnIS8xgvQpKVdbf8EepXiZ.png'),
(10, 'Outras', 'outras', '', '', 'on', 'outras-fQDZL99osqJoAoFXRk5zwjs0jZLZ9OP0.png'),
(12, 'SexText', 'texting', 'Quer ter uma conversa mais apimentada? Com uma modelo real? Aqui você pode escolher', 'datetex, namoradinha, namorada', 'on', 'texting-E9VDet1CLOI3PNVkZLLEU3zGd45XN3SJ.png'),
(13, 'Packs', 'packs', 'Nossas modelos que vendem packs de conteúdos você encontra aqui', 'packs', 'on', 'packs-821zEf4AJzhRh7x7GkIqGVtzBMJ3axrL.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `updates_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Trash, 1 Active',
  `sticker` text DEFAULT NULL,
  `gif_image` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post` (`updates_id`,`user_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `comments`
--

INSERT INTO `comments` (`id`, `updates_id`, `user_id`, `reply`, `date`, `status`, `sticker`, `gif_image`) VALUES
(1, 34, 17, 'lindaaa', '2024-05-31 19:02:59', '1', NULL, NULL),
(2, 31, 17, 'que bela moça', '2024-05-31 19:03:30', '1', NULL, NULL),
(3, 31, 17, 'corpo lindo', '2024-05-31 19:03:40', '1', NULL, NULL),
(4, 101, 101, 'Te mandei um dm no Instagram.', '2025-02-22 07:06:32', '1', NULL, NULL),
(5, 99, 101, '😍😍😍', '2025-02-22 07:46:19', '1', NULL, NULL),
(6, 8, 93, '😨😨', '2025-04-24 02:59:17', '1', NULL, NULL),
(7, 12, 84, 'gostosa', '2025-04-24 03:08:30', '1', NULL, NULL),
(8, 11, 84, 'delicia', '2025-04-24 03:08:42', '1', NULL, NULL),
(9, 10, 84, 'bs', '2025-04-24 03:08:49', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `comments_likes`
--

DROP TABLE IF EXISTS `comments_likes`;
CREATE TABLE IF NOT EXISTS `comments_likes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comments_id` int(10) UNSIGNED NOT NULL,
  `replies_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_likes_user_id_index` (`user_id`),
  KEY `comments_likes_comments_id_index` (`comments_id`),
  KEY `comments_likes_replies_id_index` (`replies_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `comment_like_reels`
--

DROP TABLE IF EXISTS `comment_like_reels`;
CREATE TABLE IF NOT EXISTS `comment_like_reels` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment_reels_id` int(10) UNSIGNED NOT NULL,
  `reel_replies_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `comment_reels_id` (`comment_reels_id`),
  KEY `reel_replies_id` (`reel_replies_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `comment_reels`
--

DROP TABLE IF EXISTS `comment_reels`;
CREATE TABLE IF NOT EXISTS `comment_reels` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reels_id` bigint(20) UNSIGNED NOT NULL,
  `reply` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `reels_id` (`reels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `conversations`
--

DROP TABLE IF EXISTS `conversations`;
CREATE TABLE IF NOT EXISTS `conversations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_1` int(11) NOT NULL,
  `user_2` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `user_1` (`user_1`,`user_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'US', 'United States'),
(2, 'CA', 'Canada'),
(3, 'AF', 'Afghanistan'),
(4, 'AL', 'Albania'),
(5, 'DZ', 'Algeria'),
(6, 'DS', 'American Samoa'),
(7, 'AD', 'Andorra'),
(8, 'AO', 'Angola'),
(9, 'AI', 'Anguilla'),
(10, 'AQ', 'Antarctica'),
(11, 'AG', 'Antigua and/or Barbuda'),
(12, 'AR', 'Argentina'),
(13, 'AM', 'Armenia'),
(14, 'AW', 'Aruba'),
(15, 'AU', 'Australia'),
(16, 'AT', 'Austria'),
(17, 'AZ', 'Azerbaijan'),
(18, 'BS', 'Bahamas'),
(19, 'BH', 'Bahrain'),
(20, 'BD', 'Bangladesh'),
(21, 'BB', 'Barbados'),
(22, 'BY', 'Belarus'),
(23, 'BE', 'Belgium'),
(24, 'BZ', 'Belize'),
(25, 'BJ', 'Benin'),
(26, 'BM', 'Bermuda'),
(27, 'BT', 'Bhutan'),
(28, 'BO', 'Bolivia'),
(29, 'BA', 'Bosnia and Herzegovina'),
(30, 'BW', 'Botswana'),
(31, 'BV', 'Bouvet Island'),
(32, 'BR', 'Brazil'),
(33, 'IO', 'British lndian Ocean Territory'),
(34, 'BN', 'Brunei Darussalam'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'KH', 'Cambodia'),
(39, 'CM', 'Cameroon'),
(40, 'CV', 'Cape Verde'),
(41, 'KY', 'Cayman Islands'),
(42, 'CF', 'Central African Republic'),
(43, 'TD', 'Chad'),
(44, 'CL', 'Chile'),
(45, 'CN', 'China'),
(46, 'CX', 'Christmas Island'),
(47, 'CC', 'Cocos (Keeling) Islands'),
(48, 'CO', 'Colombia'),
(49, 'KM', 'Comoros'),
(50, 'CG', 'Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'ID', 'Indonesia'),
(101, 'IR', 'Iran (Islamic Republic of)'),
(102, 'IQ', 'Iraq'),
(103, 'IE', 'Ireland'),
(104, 'IL', 'Israel'),
(105, 'IT', 'Italy'),
(106, 'CI', 'Ivory Coast'),
(107, 'JM', 'Jamaica'),
(108, 'JP', 'Japan'),
(109, 'JO', 'Jordan'),
(110, 'KZ', 'Kazakhstan'),
(111, 'KE', 'Kenya'),
(112, 'KI', 'Kiribati'),
(113, 'KP', 'Korea, Democratic People\'s Republic of'),
(114, 'KR', 'Korea, Republic of'),
(115, 'XK', 'Kosovo'),
(116, 'KW', 'Kuwait'),
(117, 'KG', 'Kyrgyzstan'),
(118, 'LA', 'Lao People\'s Democratic Republic'),
(119, 'LV', 'Latvia'),
(120, 'LB', 'Lebanon'),
(121, 'LS', 'Lesotho'),
(122, 'LR', 'Liberia'),
(123, 'LY', 'Libyan Arab Jamahiriya'),
(124, 'LI', 'Liechtenstein'),
(125, 'LT', 'Lithuania'),
(126, 'LU', 'Luxembourg'),
(127, 'MO', 'Macau'),
(128, 'MK', 'Macedonia'),
(129, 'MG', 'Madagascar'),
(130, 'MW', 'Malawi'),
(131, 'MY', 'Malaysia'),
(132, 'MV', 'Maldives'),
(133, 'ML', 'Mali'),
(134, 'MT', 'Malta'),
(135, 'MH', 'Marshall Islands'),
(136, 'MQ', 'Martinique'),
(137, 'MR', 'Mauritania'),
(138, 'MU', 'Mauritius'),
(139, 'TY', 'Mayotte'),
(140, 'MX', 'Mexico'),
(141, 'FM', 'Micronesia, Federated States of'),
(142, 'MD', 'Moldova, Republic of'),
(143, 'MC', 'Monaco'),
(144, 'MN', 'Mongolia'),
(145, 'ME', 'Montenegro'),
(146, 'MS', 'Montserrat'),
(147, 'MA', 'Morocco'),
(148, 'MZ', 'Mozambique'),
(149, 'MM', 'Myanmar'),
(150, 'NA', 'Namibia'),
(151, 'NR', 'Nauru'),
(152, 'NP', 'Nepal'),
(153, 'NL', 'Netherlands'),
(154, 'AN', 'Netherlands Antilles'),
(155, 'NC', 'New Caledonia'),
(156, 'NZ', 'New Zealand'),
(157, 'NI', 'Nicaragua'),
(158, 'NE', 'Niger'),
(159, 'NG', 'Nigeria'),
(160, 'NU', 'Niue'),
(161, 'NF', 'Norfork Island'),
(162, 'MP', 'Northern Mariana Islands'),
(163, 'NO', 'Norway'),
(164, 'OM', 'Oman'),
(165, 'PK', 'Pakistan'),
(166, 'PW', 'Palau'),
(167, 'PA', 'Panama'),
(168, 'PG', 'Papua New Guinea'),
(169, 'PY', 'Paraguay'),
(170, 'PE', 'Peru'),
(171, 'PH', 'Philippines'),
(172, 'PN', 'Pitcairn'),
(173, 'PL', 'Poland'),
(174, 'PT', 'Portugal'),
(175, 'PR', 'Puerto Rico'),
(176, 'QA', 'Qatar'),
(177, 'RE', 'Reunion'),
(178, 'RO', 'Romania'),
(179, 'RU', 'Russian Federation'),
(180, 'RW', 'Rwanda'),
(181, 'KN', 'Saint Kitts and Nevis'),
(182, 'LC', 'Saint Lucia'),
(183, 'VC', 'Saint Vincent and the Grenadines'),
(184, 'WS', 'Samoa'),
(185, 'SM', 'San Marino'),
(186, 'ST', 'Sao Tome and Principe'),
(187, 'SA', 'Saudi Arabia'),
(188, 'SN', 'Senegal'),
(189, 'RS', 'Serbia'),
(190, 'SC', 'Seychelles'),
(191, 'SL', 'Sierra Leone'),
(192, 'SG', 'Singapore'),
(193, 'SK', 'Slovakia'),
(194, 'SI', 'Slovenia'),
(195, 'SB', 'Solomon Islands'),
(196, 'SO', 'Somalia'),
(197, 'ZA', 'South Africa'),
(198, 'GS', 'South Georgia South Sandwich Islands'),
(199, 'ES', 'Spain'),
(200, 'LK', 'Sri Lanka'),
(201, 'SH', 'St. Helena'),
(202, 'PM', 'St. Pierre and Miquelon'),
(203, 'SD', 'Sudan'),
(204, 'SR', 'Suriname'),
(205, 'SJ', 'Svalbarn and Jan Mayen Islands'),
(206, 'SZ', 'Swaziland'),
(207, 'SE', 'Sweden'),
(208, 'CH', 'Switzerland'),
(209, 'SY', 'Syrian Arab Republic'),
(210, 'TW', 'Taiwan'),
(211, 'TJ', 'Tajikistan'),
(212, 'TZ', 'Tanzania, United Republic of'),
(213, 'TH', 'Thailand'),
(214, 'TG', 'Togo'),
(215, 'TK', 'Tokelau'),
(216, 'TO', 'Tonga'),
(217, 'TT', 'Trinidad and Tobago'),
(218, 'TN', 'Tunisia'),
(219, 'TR', 'Turkey'),
(220, 'TM', 'Turkmenistan'),
(221, 'TC', 'Turks and Caicos Islands'),
(222, 'TV', 'Tuvalu'),
(223, 'UG', 'Uganda'),
(224, 'UA', 'Ukraine'),
(225, 'AE', 'United Arab Emirates'),
(226, 'GB', 'United Kingdom'),
(227, 'UM', 'United States minor outlying islands'),
(228, 'UY', 'Uruguay'),
(229, 'UZ', 'Uzbekistan'),
(230, 'VU', 'Vanuatu'),
(231, 'VA', 'Vatican City State'),
(232, 'VE', 'Venezuela'),
(233, 'VN', 'Vietnam'),
(234, 'VG', 'Virgin Islands (British)'),
(235, 'VI', 'Virgin Islands (U.S.)'),
(236, 'WF', 'Wallis and Futuna Islands'),
(237, 'EH', 'Western Sahara'),
(238, 'YE', 'Yemen'),
(239, 'YU', 'Yugoslavia'),
(240, 'ZR', 'Zaire'),
(241, 'ZM', 'Zambia'),
(242, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Estrutura para tabela `deposits`
--

DROP TABLE IF EXISTS `deposits`;
CREATE TABLE IF NOT EXISTS `deposits` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `txn_id` varchar(200) NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `payment_gateway` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(200) NOT NULL DEFAULT 'active',
  `screenshot_transfer` varchar(100) NOT NULL,
  `percentage_applied` varchar(50) DEFAULT NULL,
  `transaction_fee` double(10,2) NOT NULL,
  `taxes` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `txn_id`, `amount`, `payment_gateway`, `date`, `status`, `screenshot_transfer`, `percentage_applied`, `transaction_fee`, `taxes`) VALUES
(1, 4, 'mp_BEz6VCBVfWHZh12XFGK5eCCYe', 500, 'Mercadopago', '2024-05-18 02:42:01', 'active', '', NULL, 0.00, ''),
(2, 7, 'mp_mYMLuiFuiCjbBjXtntXsgopTV', 10000, 'Mercadopago', '2024-05-18 15:18:26', 'active', '', NULL, 0.00, ''),
(3, 7, 'mp_Bp8VaR2cbOoAies0MjXlXOEUU', 10000, 'Mercadopago', '2024-05-18 15:20:59', 'active', '', NULL, 0.00, ''),
(4, 7, 'mp_aJqgbF2ARfSWzZR0iziJEnp7L', 5432, 'Mercadopago', '2024-05-18 15:22:26', 'active', '', NULL, 0.00, ''),
(5, 3, 'mp_PRZV9fq1woPKnjBCxFuqw9S5I', 9877, 'Mercadopago', '2024-05-21 23:57:47', 'active', '', NULL, 0.00, ''),
(6, 5, 'mp_7PFjB6uuhUGUdleSIcNZAJLYr', 10000, 'Mercadopago', '2024-05-22 00:10:14', 'active', '', NULL, 0.00, ''),
(7, 5, 'mp_sUMjPNg5ZeHVEwkI9th2Jpf2y', 10000, 'Mercadopago', '2024-05-22 00:11:20', 'active', '', NULL, 0.00, ''),
(8, 8, 'mp_vrhBM9bpgOkDlIcpf4MIe3iPL', 10000, 'Mercadopago', '2024-05-22 00:20:03', 'active', '', NULL, 0.00, ''),
(9, 8, 'mp_IJOxUL6UofXlupgPr47B4oY7C', 10000, 'Mercadopago', '2024-05-22 00:26:54', 'active', '', NULL, 0.00, ''),
(10, 17, 'mp_lXlofPZ1DnxpobVhWKh1tV8i0', 5000, 'Mercadopago', '2024-05-30 17:30:57', 'active', '', NULL, 0.00, ''),
(11, 25, 'mp_kIdN11rlQrO9ZyoZUCn34Uzsd', 9750, 'Mercadopago', '2024-06-18 16:57:43', 'active', '', NULL, 0.00, ''),
(12, 26, 'mp_qerPMhEGbxL2BA8bsevKCDKBO', 9998, 'Mercadopago', '2024-06-18 16:58:48', 'active', '', NULL, 0.00, ''),
(13, 26, 'mp_Kx44OltLmBNMhUEHTMZAEyvnM', 10000, 'Mercadopago', '2024-06-18 17:01:15', 'active', '', NULL, 0.00, ''),
(14, 28, 'mp_0sIBBl5B2X77jwJtyxP23Fibs', 10000, 'Mercadopago', '2024-06-18 17:36:44', 'active', '', NULL, 0.00, ''),
(15, 2, 'mp_f6EqtjwM6WQRpG70QUFNhnxHf', 1, 'Mercadopago', '2024-07-06 14:00:38', 'active', '', '0.90', 0.90, ''),
(16, 2, 'mp_3Y2ZCY0nVNZv8T3bdYXcGNLv6', 1, 'Mercadopago', '2024-07-06 14:03:46', 'active', '', '0.90', 0.90, ''),
(18, 2, 'MP-hbrF42v5lkKByHpBSGdQk4Byq', 1, 'Mercadopago', '2024-07-06 15:02:07', 'pending', '', '0.0% + 0.90', 0.90, '0'),
(19, 2, 'MP-tut4VNOapeAQ2Qk8weNZD3UHB', 1, 'Mercadopago', '2024-07-06 16:00:09', 'pending', '', '0.0% + 0.90', 0.90, '0'),
(20, 2, 'MP-LmGFoEj87sG7facoj6tgrVZPw', 1, 'Mercadopago', '2024-07-06 16:41:51', 'pending', '', '0.0% + 0.90', 0.90, '0'),
(21, 1738088847, '82280266532', 2, 'Mercadopago', '2024-07-07 15:01:03', 'active', '', '0.90', 0.90, NULL),
(22, 2, '82026753855', 1, 'Mercadopago', '2024-07-07 22:57:46', 'active', '', NULL, 0.00, ''),
(23, 2, '82033788017', 1, 'Mercadopago', '2024-07-08 00:14:21', 'active', '', '0.90', 0.90, ''),
(24, 3, '82082347551', 1, 'Mercadopago', '2024-07-08 17:15:58', 'active', '', '0.90', 0.90, ''),
(25, 6, '82364440718', 1, 'Mercadopago', '2024-07-08 19:58:54', 'active', '', '0.90', 0.90, ''),
(26, 1, '90500682431', 888, 'Mercadopago', '2024-10-17 15:21:14', 'pending', '', '0.90', 0.90, ''),
(27, 1, '90500843455', 999, 'Mercadopago', '2024-10-17 15:24:13', 'pending', '', '0.90', 0.90, ''),
(28, 1, '91703099065', 200, 'Mercadopago', '2024-10-31 14:39:56', 'pending', '', '0.90', 0.90, ''),
(29, 60, '101290644034', 5, 'Mercadopago', '2025-02-04 17:15:02', 'active', '', '0.90', 0.90, ''),
(30, 101, 'mp_7UXUmwihZ8fFrpZILeudVtikK', 15, 'Mercadopago', '2025-02-22 07:20:13', 'active', '', '0.90', 0.90, ''),
(34, 1, '49ca5432-269c-4993-887d-746651c850ad', 111, 'OpenPix', '2025-09-09 15:49:28', 'initialized', '', '0.80', 0.80, ''),
(35, 125, '11424c82-4e90-4bfa-9802-102781aa0794', 10, 'OpenPix', '2025-09-09 15:49:45', 'initialized', '', '0.80', 0.80, ''),
(36, 125, 'f01cb41548fc452c87d180c8251e7f1f', 5, 'OpenPix', '2025-09-09 18:59:17', 'active', '', '0.80', 0.80, ''),
(37, 122, 'e95a2f8c8d564f4db935760d9e4c7cb4', 5, 'OpenPix', '2025-09-09 19:09:31', 'active', '', '0.80', 0.80, ''),
(38, 125, 'ccd00a088ff243f69e2353ce29918103', 6, 'OpenPix', '2025-09-09 19:09:39', 'active', '', '0.80', 0.80, ''),
(39, 125, 'ddd3095bab504ee0a87e22531970875b', 5, 'OpenPix', '2025-09-09 19:21:31', 'active', '', '0.80', 0.80, ''),
(40, 1, '0e60b3d7-18af-48a4-ac7c-3e49415ec007', 2, 'OpenPix', '2025-09-09 16:38:44', 'initialized', '', '0.80', 0.80, ''),
(41, 1, 'aa5816f3-3058-402c-b3ed-6f2f05084b06', 2, 'OpenPix', '2025-09-09 16:51:42', 'initialized', '', '0.80', 0.80, ''),
(42, 1, 'e64f5aef-1ac8-44da-8fc1-305c0d9757d5', 60, 'OpenPix', '2025-09-09 16:59:06', 'initialized', '', '0.80', 0.80, ''),
(43, 1, 'e848f63b-bc71-4ff2-aa11-e0aa55260d87', 80, 'OpenPix', '2025-09-09 17:02:42', 'initialized', '', '0.80', 0.80, ''),
(44, 34, '8cbbb845-0c9a-4445-a740-87ec783fc75c', 4534, 'OpenPix', '2025-09-25 01:57:25', 'initialized', '', '0.80', 0.80, ''),
(45, 164, '5ece4ffe-1edb-4dde-a95d-1f9c19b5a220', 123, 'OpenPix', '2025-11-05 19:41:50', 'initialized', '', '0.80', 0.80, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) DEFAULT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `gifts`
--

DROP TABLE IF EXISTS `gifts`;
CREATE TABLE IF NOT EXISTS `gifts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"1d2097f3-3855-40a1-a14e-37e5f9c04b01\",\"displayName\":\"App\\\\Notifications\\\\AdminVerificationPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:21:\\\"conta@suggarcont.site\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:42:\\\"App\\\\Notifications\\\\AdminVerificationPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\VerificationRequests\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"c91e2bf4-9c85-45e5-a3ad-51f12053ce8f\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1715999250, 1715999250),
(2, 'default', '{\"uuid\":\"c3f4af85-fbc2-4e7a-8cfc-4772491b999c\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1715999451, 1715999451),
(3, 'default', '{\"uuid\":\"8bf6c0a5-b96a-4113-83b3-de082d2196f1\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1715999619, 1715999619),
(4, 'default', '{\"uuid\":\"50abc325-af85-490b-a6bd-645a44f8c81e\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1716000130, 1716000130),
(5, 'default', '{\"uuid\":\"d41c3d33-2852-42ce-aa3b-8544a714a09a\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:8:\\\"eduardo4\\\";s:7:\\\"content\\\";s:43:\\\"Deitadinha depois da sessão de gravação!\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"16c293b0-626b-4bfd-a308-5e0f00170c14\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1716000138, 1716000138),
(6, 'default', '{\"uuid\":\"b7a20bf8-a1a1-4cb9-bed3-584e689e41f1\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:8:\\\"eduardo4\\\";s:7:\\\"content\\\";s:36:\\\"Essa posição ele entra bem fundo !\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"7d2b6193-a10f-4e75-a4f1-c5d6a5cc79f7\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1716000162, 1716000162),
(7, 'default', '{\"uuid\":\"ec437be6-0264-44d3-a5c0-cb3715324481\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1716000231, 1716000231),
(8, 'default', '{\"uuid\":\"a9395caa-6c67-424f-ad4f-97e1fe33d93f\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1716000255, 1716000255),
(9, 'default', '{\"uuid\":\"d0724805-5d62-418a-9181-0985ae8570c6\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1716000439, 1716000439),
(10, 'default', '{\"uuid\":\"8b13c436-2664-4cce-b989-638f90c6c98c\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:7;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1716000861, 1716000861),
(11, 'default', '{\"uuid\":\"b247c7f5-f55f-4182-a577-6acc9831cbbe\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1716001248, 1716001248),
(12, 'default', '{\"uuid\":\"85cd1fb0-cbab-4738-a8bd-1ba0cc095139\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:9;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1716003315, 1716003315),
(13, 'default', '{\"uuid\":\"d072468e-7f19-4e42-bb08-2c90c734259e\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:10;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1716003769, 1716003769),
(14, 'default', '{\"uuid\":\"5302146b-51ee-4f00-b1d1-a81b0c322280\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1716005134, 1716005134),
(15, 'default', '{\"uuid\":\"4ff8aa4b-e17c-4aa1-b44f-ebb5f1674e9b\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1716005547, 1716005547),
(16, 'default', '{\"uuid\":\"10cc8821-3b56-490e-91c4-0a300a31ff50\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:8:\\\"eduardo4\\\";s:6:\\\"amount\\\";s:3:\\\"100\\\";}s:2:\\\"id\\\";s:36:\\\"272014a9-0a15-4e7b-9557-29727aaf1aae\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1716008934, 1716008934),
(17, 'default', '{\"uuid\":\"b40b7b19-bf0c-4fb6-8613-b2c5fe3af4a5\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:8:\\\"eduardo4\\\";s:7:\\\"content\\\";s:59:\\\"Fazendo gravação de conteúdos em cima da mesa de sinuca!\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"a94f6356-4bc9-46da-b169-5fbaff092082\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1716008947, 1716008947),
(18, 'default', '{\"uuid\":\"c82abd59-f854-4204-b1ab-a6d32895d692\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:8:\\\"eduardo4\\\";s:7:\\\"content\\\";s:39:\\\"Peladinha em varias sessões de fotos !\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"8b9c30b8-8037-441e-8797-02013e2db8f6\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1716008974, 1716008974),
(19, 'default', '{\"uuid\":\"95ae6cc2-0214-485d-93af-6ea3a24f4c0e\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:8:\\\"gabriel7\\\";s:6:\\\"amount\\\";s:4:\\\"9678\\\";}s:2:\\\"id\\\";s:36:\\\"8af3c849-cd24-4383-bab4-099fa4fec7aa\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1716056634, 1716056634),
(20, 'default', '{\"uuid\":\"06ac5782-4c66-423c-a8ef-2e9fb6b5f40a\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:8:\\\"gabriel7\\\";s:6:\\\"amount\\\";s:4:\\\"3457\\\";}s:2:\\\"id\\\";s:36:\\\"f2c4ee85-a5f2-4b06-85c4-800a1800cccd\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1716056646, 1716056646),
(21, 'default', '{\"uuid\":\"66f86673-8b19-46b9-bc7a-3e9e5eee9f60\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:8:\\\"gabriel7\\\";s:6:\\\"amount\\\";s:4:\\\"3859\\\";}s:2:\\\"id\\\";s:36:\\\"8c277044-f3ee-4c64-9b35-5fb5501aeb72\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1716056847, 1716056847),
(22, 'default', '{\"uuid\":\"c9d86971-c224-4419-af03-3da3c99b7a0c\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:8:\\\"gabriel7\\\";s:6:\\\"amount\\\";s:4:\\\"2349\\\";}s:2:\\\"id\\\";s:36:\\\"ca7749be-e123-44cb-a0b7-c13892dd46ec\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1716056853, 1716056853),
(23, 'default', '{\"uuid\":\"9bd0e460-42e3-49e0-9669-c9f9f8d975f9\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:8:\\\"gabriel7\\\";s:7:\\\"content\\\";s:59:\\\"Fazendo gravação de conteúdos em cima da mesa de sinuca!\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"2cc9afb6-b496-4629-a2e4-a5da6910fdda\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1716059611, 1716059611),
(24, 'default', '{\"uuid\":\"03373806-1f9e-4cd9-a471-c1a722700aba\",\"displayName\":\"App\\\\Notifications\\\\AdminVerificationPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:21:\\\"conta@suggarcont.site\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:42:\\\"App\\\\Notifications\\\\AdminVerificationPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\VerificationRequests\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"ff3070e0-3d75-46c4-bc59-cf5b7490f979\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1716347053, 1716347053),
(25, 'default', '{\"uuid\":\"1a6b7000-ef62-4fe4-ab31-344fac237cdf\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:8:\\\"eduardo5\\\";s:6:\\\"amount\\\";s:4:\\\"9876\\\";}s:2:\\\"id\\\";s:36:\\\"9cb93c64-fb5b-4228-b085-f0c8a0e5ef0e\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1716347525, 1716347525),
(26, 'default', '{\"uuid\":\"afb7b15d-6fa3-43af-98b1-8e9370c102a8\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:8:\\\"eduardo5\\\";s:7:\\\"content\\\";s:59:\\\"Fazendo gravação de conteúdos em cima da mesa de sinuca!\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"fee1a1e3-d80d-4f7e-a449-2fde43e7e45b\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1716347532, 1716347532),
(27, 'default', '{\"uuid\":\"757e04c6-e2c2-4fca-91c5-b0309309fbe8\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:8:\\\"eduardo5\\\";s:7:\\\"content\\\";s:39:\\\"Peladinha em varias sessões de fotos !\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"c264c1b7-c7fa-462f-812b-74d9e2da32a3\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1716347553, 1716347553),
(28, 'default', '{\"uuid\":\"be4031f9-e9f4-4d7e-b1b5-c204db7d32b5\",\"displayName\":\"App\\\\Notifications\\\\AdminWithdrawalPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:21:\\\"conta@suggarcont.site\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:40:\\\"App\\\\Notifications\\\\AdminWithdrawalPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:22:\\\"App\\\\Models\\\\Withdrawals\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"02b48a7b-26ee-4507-a8ab-65510b05c095\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1716347644, 1716347644),
(29, 'default', '{\"uuid\":\"29719720-1b6a-41f0-ab16-96e3cf440474\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:7:\\\"markos8\\\";s:7:\\\"content\\\";s:59:\\\"Fazendo gravação de conteúdos em cima da mesa de sinuca!\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"eac1e19c-1a35-43a5-9499-069d769d6925\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1716348082, 1716348082),
(30, 'default', '{\"uuid\":\"dbc69687-2c3b-4e96-8792-aeff829c7f62\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:7:\\\"markos8\\\";s:6:\\\"amount\\\";s:4:\\\"9730\\\";}s:2:\\\"id\\\";s:36:\\\"54eac77e-e7d1-46b4-a7a8-08e94778e4f4\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1716348130, 1716348130),
(31, 'default', '{\"uuid\":\"90b846b6-e526-4e88-b457-a360647a330f\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:7:\\\"markos8\\\";s:7:\\\"content\\\";s:39:\\\"Peladinha em varias sessões de fotos !\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"5fec8458-8944-43ca-b06a-d528e01d3378\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1716348443, 1716348443),
(32, 'default', '{\"uuid\":\"f61740a8-fc1d-4ce7-bb1a-c132e1daf43e\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:7:\\\"markos8\\\";s:6:\\\"amount\\\";s:4:\\\"9950\\\";}s:2:\\\"id\\\";s:36:\\\"33108ada-a58e-46e8-9627-96463564f7d1\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1716348462, 1716348462),
(33, 'default', '{\"uuid\":\"832cde69-3a1b-473a-a348-fa0fc694b5d1\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:12:\\\"leiaferreira\\\";s:7:\\\"content\\\";s:17:\\\"Chupa meu cuzinho\\\";s:4:\\\"type\\\";s:7:\\\"message\\\";}s:2:\\\"id\\\";s:36:\\\"b201039f-70e3-4c63-aa43-c3f2c9877218\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1716350166, 1716350166),
(34, 'default', '{\"uuid\":\"c3d3c41b-d790-4171-9126-4cb134fb0521\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:13;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1716350304, 1716350304),
(35, 'default', '{\"uuid\":\"c5134aed-db47-4c3c-a454-afe0569d6af5\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1716429650, 1716429650),
(36, 'default', '{\"uuid\":\"4269e891-cbb2-4afa-8aa5-71453c1eb600\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1716429716, 1716429716),
(37, 'default', '{\"uuid\":\"1cedc661-9b81-46fa-8901-010489adf363\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:18;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1716429960, 1716429960),
(38, 'default', '{\"uuid\":\"40bc1f48-44d3-4f9a-8575-61cef54d3a6b\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:19;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1716430072, 1716430072);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(39, 'default', '{\"uuid\":\"75a6ba8a-9ab6-4fea-9b81-5d996e79fb92\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:20;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1716430201, 1716430201),
(40, 'default', '{\"uuid\":\"20f377b8-7ef7-4243-a83b-b4e09a46633c\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:21;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1716430262, 1716430262),
(41, 'default', '{\"uuid\":\"d7aa4c58-511c-4196-b7b9-c1e3ea691f4b\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:22;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1716430429, 1716430429),
(42, 'default', '{\"uuid\":\"c3814642-766f-4227-ad75-d1452d00a7a9\",\"displayName\":\"App\\\\Notifications\\\\AdminWithdrawalPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:21:\\\"conta@suggarcont.site\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:40:\\\"App\\\\Notifications\\\\AdminWithdrawalPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:22:\\\"App\\\\Models\\\\Withdrawals\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"d4ca1876-edc9-4dfe-b844-cd1bc011336d\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1717012990, 1717012990),
(43, 'default', '{\"uuid\":\"cf91d17e-59be-46f6-a0d2-adf56090570e\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"edygard17\\\";s:7:\\\"content\\\";s:59:\\\"Fazendo gravação de conteúdos em cima da mesa de sinuca!\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"423c9e35-57be-4ca0-8622-b694ce5917c8\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1717101310, 1717101310),
(44, 'default', '{\"uuid\":\"92975d13-fdfd-4c7d-8647-a4a26d077e6b\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:9:\\\"edygard17\\\";s:6:\\\"amount\\\";s:2:\\\"20\\\";}s:2:\\\"id\\\";s:36:\\\"4cb81f82-2287-426f-b1a3-5183d033bc24\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1717101783, 1717101783),
(45, 'default', '{\"uuid\":\"d137e5ba-57c3-45fb-b675-22d9c6fcec67\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"edygard17\\\";s:7:\\\"content\\\";s:39:\\\"Peladinha em varias sessões de fotos !\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"076fc6be-11a4-4075-a0e6-2c4e396f6ac4\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1717101820, 1717101820),
(46, 'default', '{\"uuid\":\"859fc2d4-476a-4de4-8c6d-1101eedce919\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"edygard17\\\";s:7:\\\"content\\\";s:41:\\\"Tirei essa foto de baixo do chuveiro😅!\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"50e265bc-efd1-4dee-8950-023a5e82a8cd\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1717101883, 1717101883),
(47, 'default', '{\"uuid\":\"59aa71e0-c7e0-4b8e-a400-f15445deb792\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"edygard17\\\";s:7:\\\"content\\\";s:43:\\\"Deitadinha depois da sessão de gravação!\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"3d92a904-b721-47a4-9dcb-77e61e237863\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1717101922, 1717101922),
(48, 'default', '{\"uuid\":\"dbc0ed75-0e30-45a4-9a1c-4f0b38e3d957\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:23;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717115285, 1717115285),
(49, 'default', '{\"uuid\":\"c3fcd581-9ae0-45cf-81a2-92d65decda3d\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:24;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717117849, 1717117849),
(50, 'default', '{\"uuid\":\"596f9b11-a145-491d-986c-e211257555e7\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:25;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717119802, 1717119802),
(51, 'default', '{\"uuid\":\"0d69f712-30d9-402c-bff0-52eae096ba71\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:26;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717120560, 1717120560),
(52, 'default', '{\"uuid\":\"fc3b5a3f-d4a5-4dcf-86b6-3cc52da53b90\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:27;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717122206, 1717122206),
(53, 'default', '{\"uuid\":\"b3bfd7e5-9225-4735-a381-c992e162c541\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:28;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717125873, 1717125873),
(54, 'default', '{\"uuid\":\"bfde6505-927d-44ae-a2d4-c9019167395f\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:29;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717126231, 1717126231),
(55, 'default', '{\"uuid\":\"5442dbfc-222f-4394-81cd-09e287d93264\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:30;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717132532, 1717132532),
(56, 'default', '{\"uuid\":\"05484e7f-5676-467c-8d1c-e89520910bde\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:31;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717138344, 1717138344),
(57, 'default', '{\"uuid\":\"ac28ff21-970e-45c3-af5f-2211cdac28f8\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:32;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717138452, 1717138452),
(58, 'default', '{\"uuid\":\"e2531098-0519-4a28-8388-b4daf80865a3\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:33;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717138685, 1717138685),
(59, 'default', '{\"uuid\":\"26b24cfb-a6ac-4abb-91a4-d495e3016a53\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:34;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717138730, 1717138730),
(60, 'default', '{\"uuid\":\"a527b517-daf7-4145-acb5-199379b6a9ae\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:35;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717139205, 1717139205),
(61, 'default', '{\"uuid\":\"ba7229f0-1ef3-40d1-ac86-48b252194b7d\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:36;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717139617, 1717139617),
(62, 'default', '{\"uuid\":\"2c4c7971-db2b-4636-8a6b-eeee83923369\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:37;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717199062, 1717199062),
(63, 'default', '{\"uuid\":\"22fc2336-179e-40fb-9f3d-c8e8f5f686ac\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:38;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717204206, 1717204206),
(64, 'default', '{\"uuid\":\"05ec29b1-2598-49da-bca5-dfbfa52a819f\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:39;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717204278, 1717204278),
(65, 'default', '{\"uuid\":\"9b13cedd-24dd-48b1-845b-2f69148a5aa7\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:40;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717204803, 1717204803),
(66, 'default', '{\"uuid\":\"336310d4-77fa-494d-b014-d9623f403da9\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:41;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717205075, 1717205075),
(67, 'default', '{\"uuid\":\"adb317bc-f71f-42eb-b427-ad3be9f58d7c\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:42;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717205943, 1717205943),
(68, 'default', '{\"uuid\":\"2ffdf30d-6701-40f6-81bd-6d7ac43655ed\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:43;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717206033, 1717206033),
(69, 'default', '{\"uuid\":\"1bd18233-32bb-463c-a8e5-6661e79e4218\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:44;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717207841, 1717207841),
(70, 'default', '{\"uuid\":\"5bf7fdb0-535a-4420-aee7-850acc055bf4\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:45;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717207893, 1717207893),
(71, 'default', '{\"uuid\":\"5ebc42ec-55f2-43f3-8e84-01da53e13134\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:46;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717209046, 1717209046),
(72, 'default', '{\"uuid\":\"065063b3-72a4-4e8c-ac1e-0966cf8a4dc8\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:19;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"edygard17\\\";s:7:\\\"content\\\";s:8:\\\"😋😋\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"620d7e35-52b9-4166-82f4-9335c15c0c67\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1717287363, 1717287363),
(73, 'default', '{\"uuid\":\"4273bee7-ac4b-4fc2-bd4f-81bf5aa74a09\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:19;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"edygard17\\\";s:7:\\\"content\\\";s:9:\\\"Oq achou?\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"3158f66e-a5ca-4d4b-ab42-856c92767c2c\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1717287423, 1717287423),
(74, 'default', '{\"uuid\":\"cbfe43b9-fef7-4795-aecd-3dd977570df4\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:47;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717435203, 1717435203),
(75, 'default', '{\"uuid\":\"4c5aa1e4-b95e-4315-98cc-c82bb70b3114\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:48;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717455815, 1717455815);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(76, 'default', '{\"uuid\":\"d320c704-b091-4598-b366-caa2fa69ea55\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:49;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717456686, 1717456686),
(77, 'default', '{\"uuid\":\"e4ec15ee-fe43-4066-8bdb-7123713ca950\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:50;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717456804, 1717456804),
(78, 'default', '{\"uuid\":\"7b3ff4d2-2b63-40ad-90ad-d471d12c38b7\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:51;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717456880, 1717456880),
(79, 'default', '{\"uuid\":\"a13c0fe3-4cc3-485b-bcae-113025213001\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:52;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717457140, 1717457140),
(80, 'default', '{\"uuid\":\"2b38e067-fcd0-4235-a058-f8483d23a168\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:53;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717457460, 1717457460),
(81, 'default', '{\"uuid\":\"6fdca380-492e-499e-9fe8-96796da29216\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:54;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717457596, 1717457596),
(82, 'default', '{\"uuid\":\"f917f7af-6e02-49c3-aa58-b81c52b01b3a\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:55;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717457669, 1717457669),
(83, 'default', '{\"uuid\":\"0cf37a5f-702a-4bc8-86b9-38947638acbf\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:56;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717460792, 1717460792),
(84, 'default', '{\"uuid\":\"4824cc49-be07-4c16-8aff-9fc1a3be5ff0\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:57;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717460899, 1717460899),
(85, 'default', '{\"uuid\":\"e21d586a-d483-47c1-a437-4d7029e4eea8\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:58;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717461247, 1717461247),
(86, 'default', '{\"uuid\":\"44db9dcc-4eb4-4300-9176-48c8675ca9a6\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:59;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717461327, 1717461327),
(87, 'default', '{\"uuid\":\"d3ab7384-d0a3-401d-b696-99682209f07c\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:60;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717461625, 1717461625),
(88, 'default', '{\"uuid\":\"635406ce-121e-4931-8b18-77fc6aa2f8e3\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:61;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717461993, 1717461993),
(89, 'default', '{\"uuid\":\"e3eccfff-612e-46f6-af96-8ad93f79f64a\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:62;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717463042, 1717463042),
(90, 'default', '{\"uuid\":\"9af505c9-bac6-4b1f-86c0-8683472b9225\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:63;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717463080, 1717463080),
(91, 'default', '{\"uuid\":\"e27aca76-c435-4fb2-84e4-ed76a2b6e406\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:64;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717463139, 1717463139),
(92, 'default', '{\"uuid\":\"e43e6d2b-1e1f-4de1-bf84-58e3d522ba91\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:65;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717634061, 1717634061),
(93, 'default', '{\"uuid\":\"31092479-08ca-43ee-b89f-ad7856f0b135\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:66;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717634092, 1717634092),
(94, 'default', '{\"uuid\":\"cd360387-18d1-4f64-a377-a9e898bb259e\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:67;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717634164, 1717634164),
(95, 'default', '{\"uuid\":\"9524b255-2fea-4965-99ed-1bd4737c9e08\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:68;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1717636189, 1717636189),
(96, 'default', '{\"uuid\":\"5b4afdd2-df6d-4571-bb3a-5df749997433\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:19;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:8:\\\"wesley25\\\";s:7:\\\"content\\\";s:8:\\\"😋😋\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"8f44b67e-7445-4b81-b9a9-33b194b7e241\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1718740736, 1718740736),
(97, 'default', '{\"uuid\":\"615a5c94-a6a1-43d3-a016-6d196551af37\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:8:\\\"marcio26\\\";s:6:\\\"amount\\\";s:4:\\\"6520\\\";}s:2:\\\"id\\\";s:36:\\\"85d0e947-3e34-483f-ab1e-0b2ff362289f\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1718740776, 1718740776),
(98, 'default', '{\"uuid\":\"6ffb4a3b-c21c-4e42-8e0e-59be29752adc\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:8:\\\"marcio26\\\";s:6:\\\"amount\\\";s:4:\\\"1256\\\";}s:2:\\\"id\\\";s:36:\\\"5a85a5d7-d9e2-4c65-b463-480802635fee\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1718740788, 1718740788),
(99, 'default', '{\"uuid\":\"b5908aca-6e5e-4509-b601-b85a0c948329\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:8:\\\"marcio26\\\";s:6:\\\"amount\\\";s:4:\\\"1922\\\";}s:2:\\\"id\\\";s:36:\\\"c62d1156-d556-4927-bfb6-63041d7d04d2\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1718740803, 1718740803),
(100, 'default', '{\"uuid\":\"a68226d3-a242-4103-8f5d-6908e7451b97\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:8:\\\"marcio26\\\";s:6:\\\"amount\\\";s:3:\\\"500\\\";}s:2:\\\"id\\\";s:36:\\\"d4740939-4bf6-43eb-b87f-42b9409f8e88\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1718741391, 1718741391),
(101, 'default', '{\"uuid\":\"298bca73-f5cb-442c-bbfd-15e34fa50580\",\"displayName\":\"App\\\\Notifications\\\\AdminVerificationPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:21:\\\"conta@suggarcont.site\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:42:\\\"App\\\\Notifications\\\\AdminVerificationPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\VerificationRequests\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"e6c286e9-b812-4169-9732-18df37d2c0a5\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1719371111, 1719371111),
(102, 'default', '{\"uuid\":\"d0341a4d-c0f3-4e5b-b6f3-7d69a8618834\",\"displayName\":\"App\\\\Notifications\\\\AdminVerificationPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:21:\\\"conta@suggarcont.site\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:42:\\\"App\\\\Notifications\\\\AdminVerificationPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\VerificationRequests\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"96746795-6932-4ac9-9dd3-796fe46aa95d\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1719371130, 1719371130),
(103, 'default', '{\"uuid\":\"9da8e79e-1c9a-4ebe-b7d7-8105f8bcf138\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:69;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719371833, 1719371833),
(104, 'default', '{\"uuid\":\"547187a4-4e3b-422f-b642-2e981d512708\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:70;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719374030, 1719374030),
(105, 'default', '{\"uuid\":\"e54391d3-77e2-4300-bde9-ee1f304b16a6\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:71;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719374153, 1719374153),
(106, 'default', '{\"uuid\":\"8f7cf7d0-d710-4bc5-b699-3ee91e744b7a\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:72;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719375110, 1719375110),
(107, 'default', '{\"uuid\":\"3d1c8b39-f39d-4a5c-9d76-ee7c27f5fe7b\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:73;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719375214, 1719375214),
(108, 'default', '{\"uuid\":\"a66b2931-3b0a-47dd-806b-e175585a9285\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:74;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719375382, 1719375382),
(109, 'default', '{\"uuid\":\"be08cb78-7e7a-405b-8061-a3259d0eeb43\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:75;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719375513, 1719375513),
(110, 'default', '{\"uuid\":\"4e4988ab-4746-43de-9770-4ba4e2659015\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:76;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719376425, 1719376425),
(111, 'default', '{\"uuid\":\"06728065-0baf-46d8-9c31-9624f754f784\",\"displayName\":\"App\\\\Notifications\\\\NewSale\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:19;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\NewSale\\\":2:{s:4:\\\"sale\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:20:\\\"App\\\\Models\\\\Purchases\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"7197c11a-b884-4152-909c-4b1009b1beeb\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1719384198, 1719384198),
(112, 'default', '{\"uuid\":\"bb8feaed-42aa-4a1c-bca5-056fd4253dd4\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:7:\\\"leona12\\\";s:6:\\\"amount\\\";s:3:\\\"150\\\";}s:2:\\\"id\\\";s:36:\\\"61c597f2-86c1-4c08-99ea-6038b9c4db90\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1719387022, 1719387022);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(113, 'default', '{\"uuid\":\"956cbba2-f78c-46d4-9e08-720a7ab2d1b8\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:77;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719440886, 1719440886),
(114, 'default', '{\"uuid\":\"97935a08-d999-4a43-b41b-121c5314adfd\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:78;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719441738, 1719441738),
(115, 'default', '{\"uuid\":\"5e16b626-4b08-4c2d-b7d6-d92dbdeb56e9\",\"displayName\":\"App\\\\Notifications\\\\AdminVerificationPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:21:\\\"conta@suggarcont.site\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:42:\\\"App\\\\Notifications\\\\AdminVerificationPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\VerificationRequests\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"549087bb-beea-4834-a073-c844011198f9\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1719446615, 1719446615),
(116, 'default', '{\"uuid\":\"2e8deae9-f9d5-4352-a11b-18b6b51879d8\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:79;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719450383, 1719450383),
(117, 'default', '{\"uuid\":\"4900a33a-4d73-4384-b9dc-b138e0446f68\",\"displayName\":\"App\\\\Listeners\\\\SubscriptionDisabledListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\SubscriptionDisabledListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\SubscriptionDisabledEvent\\\":2:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:41;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:16:\\\"freeSubscription\\\";s:3:\\\"yes\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719450752, 1719450752),
(118, 'default', '{\"uuid\":\"8a7eb9cd-39bf-49b1-8d73-59ba96f8490a\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:80;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719454867, 1719454867),
(119, 'default', '{\"uuid\":\"6630bb93-3f91-4d3e-90a5-227799e81560\",\"displayName\":\"App\\\\Notifications\\\\AdminVerificationPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:21:\\\"conta@suggarcont.site\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:42:\\\"App\\\\Notifications\\\\AdminVerificationPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\VerificationRequests\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"20289f40-7d72-41ac-baf7-58dcb4213d3a\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1719493083, 1719493083),
(120, 'default', '{\"uuid\":\"be1df1f4-a8b7-4034-a36f-0903e93a88be\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:81;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719518974, 1719518974),
(121, 'default', '{\"uuid\":\"50051e95-d92c-481c-9122-733abcbb74da\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:82;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719519385, 1719519385),
(122, 'default', '{\"uuid\":\"ed756a72-e989-4424-9428-c339bd2016fa\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:83;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719519452, 1719519452),
(123, 'default', '{\"uuid\":\"3ba1cba9-c8a8-4fcd-a22d-4a124a10b2fa\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:84;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719519523, 1719519523),
(124, 'default', '{\"uuid\":\"56108041-0ca5-4b17-a512-fffcc1eaaf62\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:85;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719519599, 1719519599),
(125, 'default', '{\"uuid\":\"9c4dd29e-4ae0-4fea-9a6f-3b1cf946d420\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:86;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719519677, 1719519677),
(126, 'default', '{\"uuid\":\"bae0b6d7-f2c5-443f-a24d-53092d9503b9\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:87;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719519779, 1719519779),
(127, 'default', '{\"uuid\":\"41358ae6-ea73-4a19-bf63-c4748cb225df\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:88;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719519866, 1719519866),
(128, 'default', '{\"uuid\":\"4f6a519a-aca9-42bb-b911-5a2fe9e4cdbb\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:89;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719519972, 1719519972),
(129, 'default', '{\"uuid\":\"fe04aecf-3ae9-4843-aabb-d635325fe5c1\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:90;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719520029, 1719520029),
(130, 'default', '{\"uuid\":\"acf3b9c9-5e5c-4bdf-b14b-666a5269b2e7\",\"displayName\":\"App\\\\Listeners\\\\SubscriptionDisabledListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\SubscriptionDisabledListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\SubscriptionDisabledEvent\\\":2:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:41;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:16:\\\"freeSubscription\\\";s:2:\\\"no\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719540038, 1719540038),
(131, 'default', '{\"uuid\":\"04f1c635-d486-450e-816f-ebb7747a2ece\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:91;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1719540225, 1719540225),
(132, 'default', '{\"uuid\":\"f11804ea-d305-4fd3-9f76-9fd736191583\",\"displayName\":\"App\\\\Notifications\\\\AdminVerificationPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:21:\\\"conta@suggarcont.site\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:42:\\\"App\\\\Notifications\\\\AdminVerificationPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\VerificationRequests\\\";s:2:\\\"id\\\";i:7;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"c3cd76f2-fa99-4868-a668-f595dea8baa0\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1719601752, 1719601752),
(133, 'default', '{\"uuid\":\"9e5bc3d3-1aff-43a6-8465-77231a7d0f9c\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:8:\\\"eduardo4\\\";s:7:\\\"content\\\";s:41:\\\"Tirei essa foto de baixo do chuveiro😅!\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"fb6643ce-ed9f-48dc-b0a3-421a52073dc8\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1720033572, 1720033572),
(134, 'default', '{\"uuid\":\"d296a4c1-9a76-40c6-95f0-ce98b093c5e7\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:8:\\\"eduardo4\\\";s:6:\\\"amount\\\";s:2:\\\"30\\\";}s:2:\\\"id\\\";s:36:\\\"69237190-792b-4f91-9731-39b2af14f135\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1720033662, 1720033662),
(135, 'default', '{\"uuid\":\"83d02524-2d10-4521-8cfd-4df5ff3c6f9c\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:8:\\\"eduardo4\\\";s:7:\\\"content\\\";s:5:\\\"ghgjg\\\";s:4:\\\"type\\\";s:7:\\\"message\\\";}s:2:\\\"id\\\";s:36:\\\"5a805913-5614-4b61-ab34-74ab9986d521\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1720033774, 1720033774),
(136, 'default', '{\"uuid\":\"166b8bba-15d7-4793-8a12-b6d893d0a1be\",\"displayName\":\"App\\\\Notifications\\\\AdminDepositPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:18:\\\"contato@dojobe.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\AdminDepositPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Deposits\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"d1ae7dd8-a0ae-43db-a619-f0b558769141\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1720285238, 1720285238),
(137, 'default', '{\"uuid\":\"825b2902-09a4-44b1-b6fd-9c2568fb79f2\",\"displayName\":\"App\\\\Notifications\\\\AdminDepositPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:18:\\\"contato@dojobe.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\AdminDepositPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Deposits\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"a957f8f6-4fe8-485f-b3e7-000d3449e307\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1720285426, 1720285426),
(138, 'default', '{\"uuid\":\"72dbb9ac-7f28-404e-b167-a4f9887af367\",\"displayName\":\"App\\\\Notifications\\\\AdminDepositPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:18:\\\"contato@dojobe.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\AdminDepositPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Deposits\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"377eab51-7b11-4d50-bd86-c6afb2cff495\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1720288733, 1720288733),
(139, 'default', '{\"uuid\":\"8505652e-4a61-4b6e-b333-a764688332c2\",\"displayName\":\"App\\\\Notifications\\\\AdminDepositPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:18:\\\"contato@dojobe.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\AdminDepositPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Deposits\\\";s:2:\\\"id\\\";i:18;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"c580177b-45d6-42b0-bff8-502c18063b47\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1720288927, 1720288927),
(140, 'default', '{\"uuid\":\"830d0db0-f1f8-428d-be49-949a2a53713d\",\"displayName\":\"App\\\\Notifications\\\\AdminDepositPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:18:\\\"contato@dojobe.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\AdminDepositPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Deposits\\\";s:2:\\\"id\\\";i:19;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"d7354b72-1700-4cc3-b1b6-0abc2ae37fa2\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1720292409, 1720292409),
(141, 'default', '{\"uuid\":\"c4994ce5-c862-4f68-9ada-8e578f7053a9\",\"displayName\":\"App\\\\Notifications\\\\AdminDepositPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:18:\\\"contato@dojobe.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\AdminDepositPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Deposits\\\";s:2:\\\"id\\\";i:20;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"26cba3ab-0048-4794-9cea-796d0db3edb5\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1720294911, 1720294911),
(142, 'default', '{\"uuid\":\"f5f12f9f-55d0-4a95-a4b6-0d6d20761bfd\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:92;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1720842145, 1720842145),
(143, 'default', '{\"uuid\":\"964fbc79-1505-4322-abe1-b0b9f514b5b0\",\"displayName\":\"App\\\\Notifications\\\\AdminWithdrawalPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:18:\\\"contato@dojobe.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:40:\\\"App\\\\Notifications\\\\AdminWithdrawalPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:22:\\\"App\\\\Models\\\\Withdrawals\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"b7303cf3-1892-4235-b607-50b4a339617e\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1728182479, 1728182479),
(144, 'default', '{\"uuid\":\"9b696156-99be-4c5e-b92b-588f26acb006\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:93;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1737018548, 1737018548),
(145, 'default', '{\"uuid\":\"ab0c0acb-b778-4e96-9fd8-3f594f241eb3\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:94;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1737018656, 1737018656),
(146, 'default', '{\"uuid\":\"68a1db66-286c-46b8-8c7f-02ef5b3e3884\",\"displayName\":\"App\\\\Notifications\\\\AdminVerificationPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:18:\\\"contato@dojobe.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:42:\\\"App\\\\Notifications\\\\AdminVerificationPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\VerificationRequests\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"f1817f1a-151e-41b6-9b52-f9a0b0ade7ea\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1738276628, 1738276628),
(147, 'default', '{\"uuid\":\"8d1ab74b-7cf0-43c7-b9c3-9e08b3114a12\",\"displayName\":\"App\\\\Notifications\\\\AdminVerificationPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:18:\\\"contato@dojobe.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:42:\\\"App\\\\Notifications\\\\AdminVerificationPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\VerificationRequests\\\";s:2:\\\"id\\\";i:9;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"b4085d5d-7af5-4d63-8251-1c97cf3367d7\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1738279785, 1738279785),
(148, 'default', '{\"uuid\":\"06a5c7a4-fe3f-4795-bfc9-1623f8d5801f\",\"displayName\":\"App\\\\Listeners\\\\SubscriptionDisabledListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\SubscriptionDisabledListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\SubscriptionDisabledEvent\\\":2:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:62;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:16:\\\"freeSubscription\\\";s:3:\\\"yes\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1738280733, 1738280733);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(149, 'default', '{\"uuid\":\"d77d2d77-1a12-4875-bf4b-9b6b84348c33\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:95;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1738280878, 1738280878),
(150, 'default', '{\"uuid\":\"f2ba486d-98bd-456b-a05e-6061dca2c829\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:96;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1738280926, 1738280926),
(151, 'default', '{\"uuid\":\"4645636d-70ba-4fce-94e7-6db5920821ec\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:97;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1738284726, 1738284726),
(152, 'default', '{\"uuid\":\"4e65a6c2-6642-4cc0-a187-967d81d31acb\",\"displayName\":\"App\\\\Listeners\\\\SubscriptionDisabledListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\SubscriptionDisabledListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\SubscriptionDisabledEvent\\\":2:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:62;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:16:\\\"freeSubscription\\\";s:2:\\\"no\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1738285162, 1738285162),
(153, 'default', '{\"uuid\":\"5c7e147e-ba18-47be-b8f5-c693ec96bb21\",\"displayName\":\"App\\\\Notifications\\\\AdminVerificationPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:18:\\\"contato@dojobe.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:42:\\\"App\\\\Notifications\\\\AdminVerificationPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\VerificationRequests\\\";s:2:\\\"id\\\";i:10;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"d3ea10b5-35aa-49c7-8c02-3df294a9d1d3\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1738629186, 1738629186),
(154, 'default', '{\"uuid\":\"079738f6-ac65-4803-be3e-d34e0beffda4\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:98;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1738629940, 1738629940),
(155, 'default', '{\"uuid\":\"262f3c48-a476-406e-b918-73419ca6a070\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:60;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:13:\\\"brendamartins\\\";s:6:\\\"amount\\\";s:3:\\\"100\\\";}s:2:\\\"id\\\";s:36:\\\"a044b0de-057b-4ecd-ba3c-7c72edeed548\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1738630092, 1738630092),
(156, 'default', '{\"uuid\":\"f8366e92-b932-4007-b4d5-289e814e2476\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:99;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1738633805, 1738633805),
(157, 'default', '{\"uuid\":\"dbacf969-eba7-45b0-97be-67955326d337\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:100;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1738634003, 1738634003),
(158, 'default', '{\"uuid\":\"6cf70442-b5c3-47f8-9396-d90d2f0197b0\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:101;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1738648050, 1738648050),
(159, 'default', '{\"uuid\":\"16527f96-168e-45c4-9831-ae8dc13d0607\",\"displayName\":\"App\\\\Notifications\\\\AdminVerificationPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:18:\\\"contato@dojobe.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:42:\\\"App\\\\Notifications\\\\AdminVerificationPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\VerificationRequests\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"75961a3e-55f9-4e7c-bbe6-14549be371f5\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1738697076, 1738697076),
(160, 'default', '{\"uuid\":\"2e43d0cf-5598-4ff4-866e-d0944eb87911\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:102;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1738697300, 1738697300),
(161, 'default', '{\"uuid\":\"907f39d3-49be-44cd-a18f-11ffeed6c8ac\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:103;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1738697686, 1738697686),
(162, 'default', '{\"uuid\":\"ba1fed3c-8f50-4199-9b14-a4edf99f0dfc\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:104;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1739814732, 1739814732),
(163, 'default', '{\"uuid\":\"ca2a9a49-d183-4b83-8889-896061c11f91\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:105;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1739814863, 1739814863),
(164, 'default', '{\"uuid\":\"a4f25467-9407-4598-b04a-b5750b71025d\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:106;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1739814867, 1739814867),
(165, 'default', '{\"uuid\":\"e05b071c-b93a-4e07-8621-a3b208160ad1\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:107;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1739815284, 1739815284),
(166, 'default', '{\"uuid\":\"124561ac-3c1a-4caf-a4ea-711b667ef909\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:108;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1739822926, 1739822926),
(167, 'default', '{\"uuid\":\"ee874d28-4900-4a55-83ad-f73158a88597\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:109;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1739823209, 1739823209),
(168, 'default', '{\"uuid\":\"34ec4442-eed2-4958-bb1a-1d6fabee1d09\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:110;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1739823389, 1739823389),
(169, 'default', '{\"uuid\":\"03125c82-7333-401f-ad68-e52845a7dbd3\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:111;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1739824655, 1739824655),
(170, 'default', '{\"uuid\":\"20c49207-314f-46df-b187-10bdaf5f13eb\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:114;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1739838640, 1739838640),
(171, 'default', '{\"uuid\":\"03e4e159-10bd-48f3-8358-1939f06fb100\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:115;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1739839270, 1739839270),
(172, 'default', '{\"uuid\":\"6e04023f-1218-4177-ba9c-552b9e91aaee\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:116;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1739839548, 1739839548),
(173, 'default', '{\"uuid\":\"c24f904c-abfc-41a6-915c-2229a4f45c4d\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:117;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1739840433, 1739840433),
(174, 'default', '{\"uuid\":\"b07f941c-fb12-4554-994b-e4b71e5ab25d\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:118;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1739842005, 1739842005),
(175, 'default', '{\"uuid\":\"330e8440-f2aa-4f9b-86f4-f333d505b33b\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:119;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1739842379, 1739842379),
(176, 'default', '{\"uuid\":\"6c857e72-ecce-420a-befc-f62379815670\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:120;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1739842657, 1739842657),
(177, 'default', '{\"uuid\":\"12af2c88-e55c-4ca9-8fff-084938e16286\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:121;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1742945475, 1742945475),
(178, 'default', '{\"uuid\":\"945c50ad-6dfd-4cf6-a315-b1120893b064\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:122;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1742947966, 1742947966),
(179, 'default', '{\"uuid\":\"92cb1675-e3fe-49c5-b076-22e36aca51e4\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:123;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1743019361, 1743019361),
(180, 'default', '{\"uuid\":\"08259df7-eda4-42c4-adce-cc09887cccda\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:8:\\\"wiliam87\\\";s:6:\\\"amount\\\";s:3:\\\"900\\\";}s:2:\\\"id\\\";s:36:\\\"4b21b7f1-11f0-4559-b36d-ded328622fad\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745473748, 1745473748),
(181, 'default', '{\"uuid\":\"ed40f6c9-432c-44bb-9ab6-eee43338fed3\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:8:\\\"wiliam87\\\";s:6:\\\"amount\\\";s:5:\\\"27900\\\";}s:2:\\\"id\\\";s:36:\\\"6436c445-6078-4407-ab3c-84d402ae9826\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745473760, 1745473760),
(182, 'default', '{\"uuid\":\"a22af8ad-b474-4ef4-84cf-86b4b7831d12\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:8:\\\"wiliam87\\\";s:6:\\\"amount\\\";s:4:\\\"1150\\\";}s:2:\\\"id\\\";s:36:\\\"c6391c3e-1dd5-4905-81a9-2c9eee9613a9\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745473776, 1745473776),
(183, 'default', '{\"uuid\":\"d4d9412d-076f-4636-80c1-1e20dd698779\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:34;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:9:\\\"larissa88\\\";s:6:\\\"amount\\\";s:5:\\\"90000\\\";}s:2:\\\"id\\\";s:36:\\\"e70478e0-863b-4b34-84dd-53896fa187aa\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745473935, 1745473935),
(184, 'default', '{\"uuid\":\"3daf1283-cb0a-4be5-886f-4d93e33e4dbc\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:34;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"larissa88\\\";s:7:\\\"content\\\";s:41:\\\"Pra mostrar a marquinha do biquíni. 😏\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"d56a81d2-3bb8-436c-ba75-ee18285b3c84\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745473943, 1745473943),
(185, 'default', '{\"uuid\":\"ea31c73c-f6cd-4c9f-9768-a7b220bbf3c4\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:34;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"larissa88\\\";s:7:\\\"content\\\";s:14:\\\"Peladinha 🤫\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"448e954c-f2c1-4346-b71f-c796a4a1a173\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745473954, 1745473954);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(186, 'default', '{\"uuid\":\"30e1e5c1-8ab7-45d5-8f77-d4f91d566ab2\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:34;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"larissa88\\\";s:7:\\\"content\\\";s:51:\\\"De quatro peladinha.😈\\r\\nAdoro essa posição.🔥\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"092ad4f9-20a1-4344-927f-a2265f7de439\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745473978, 1745473978),
(187, 'default', '{\"uuid\":\"92ebfb91-a416-4cf2-91d0-1fa45c6a12cd\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:34;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"larissa88\\\";s:7:\\\"content\\\";s:77:\\\"Só de calcinha na posição de quatro, para mostrar meu bumbum gigante. 🤫\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"cac7311b-08be-4084-a70f-924927c25f73\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745473987, 1745473987),
(188, 'default', '{\"uuid\":\"3c8f9b6f-8fb1-4c5f-b388-0c02d72d12c2\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:34;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"larissa88\\\";s:7:\\\"content\\\";s:50:\\\"Rostinho de sapeca, mas só o rostinho. ☺️😈\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"ca6c6a29-a4e3-4457-ae4c-4deacc00955a\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745473994, 1745473994),
(189, 'default', '{\"uuid\":\"d3bbc9b2-6ca0-43dc-b7ad-719bbcd0d11f\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:19;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:9:\\\"larissa88\\\";s:6:\\\"amount\\\";s:4:\\\"7900\\\";}s:2:\\\"id\\\";s:36:\\\"0325b367-6d83-4347-9cf3-33e88ac334e0\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745474016, 1745474016),
(190, 'default', '{\"uuid\":\"379887e7-392e-4677-909a-1470cd5c8a1b\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:19;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:9:\\\"larissa88\\\";s:6:\\\"amount\\\";s:3:\\\"777\\\";}s:2:\\\"id\\\";s:36:\\\"04efcf58-887a-43c3-89c9-f5cb21147fab\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745474024, 1745474024),
(191, 'default', '{\"uuid\":\"2ac8faee-78db-42b9-b0e2-11ef8065954e\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:19;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"larissa88\\\";s:7:\\\"content\\\";s:8:\\\"😋😋\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"66e5ee0d-4702-4d4a-92e8-0abe07196dc2\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745474030, 1745474030),
(192, 'default', '{\"uuid\":\"4947fb25-8790-47f9-a51b-a0459a0fa918\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:19;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"larissa88\\\";s:7:\\\"content\\\";s:9:\\\"Oq achou?\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"9a59eacd-c2e5-4238-b1c5-99a99baecff7\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745474043, 1745474043),
(193, 'default', '{\"uuid\":\"44e7b735-9f2f-460d-87a8-02fa821bff5f\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"larissa88\\\";s:7:\\\"content\\\";s:59:\\\"Fazendo gravação de conteúdos em cima da mesa de sinuca!\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"9f9ab847-3d36-4ad1-a92e-64bf68d4970c\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745474076, 1745474076),
(194, 'default', '{\"uuid\":\"9f6d0b14-5cc6-441b-8737-d212da821b4a\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"larissa88\\\";s:7:\\\"content\\\";s:39:\\\"Peladinha em varias sessões de fotos !\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"cae2d0d9-529e-4731-ac42-d7750a249b4a\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745474082, 1745474082),
(195, 'default', '{\"uuid\":\"f4f5e205-1ec5-4103-a10b-0c1eb290ef63\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"larissa88\\\";s:7:\\\"content\\\";s:41:\\\"Tirei essa foto de baixo do chuveiro😅!\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"bfaf9ce7-1f20-4d4f-95d7-8225b326365d\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745474094, 1745474094),
(196, 'default', '{\"uuid\":\"62c6c7d0-50b7-4b5f-b625-25e3397f8287\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"larissa88\\\";s:7:\\\"content\\\";s:29:\\\"Indo andar de jet peladinha !\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"43183e67-1beb-45f1-8b54-3f22adc2cd97\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745474101, 1745474101),
(197, 'default', '{\"uuid\":\"a7a7e000-a0f8-4f31-a9f9-e45f3fffbab5\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"larissa88\\\";s:7:\\\"content\\\";s:32:\\\"Me exibindo antes da gravação!\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"588c7445-6aac-4585-9704-8a43c9e7feb7\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745474108, 1745474108),
(198, 'default', '{\"uuid\":\"f229fd30-3c1b-488a-87a6-0f7b57daa9fc\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"larissa88\\\";s:7:\\\"content\\\";s:43:\\\"Deitadinha depois da sessão de gravação!\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"2a390b4b-1339-416d-ad8a-aff0cf919fb5\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745474117, 1745474117),
(199, 'default', '{\"uuid\":\"cae9f1db-c21c-46dd-8dbb-c1c0b2aec17e\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"larissa88\\\";s:7:\\\"content\\\";s:36:\\\"Essa posição ele entra bem fundo !\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"060b8fce-c2d9-49c8-9d37-f7c1052e312c\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745474126, 1745474126),
(200, 'default', '{\"uuid\":\"615152a0-ca2b-49d3-a39e-0100596e65b4\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:9:\\\"larissa88\\\";s:6:\\\"amount\\\";s:5:\\\"80000\\\";}s:2:\\\"id\\\";s:36:\\\"27ee4fe1-d9dd-4065-9268-51994c8c2114\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745474137, 1745474137),
(201, 'default', '{\"uuid\":\"8246e0b8-77b2-4ff7-bedc-ecefc4b22a83\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:9:\\\"marcelo93\\\";s:6:\\\"amount\\\";s:5:\\\"10000\\\";}s:2:\\\"id\\\";s:36:\\\"ee315d6a-09e2-4b43-b3fe-f1ab65f7df57\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745474329, 1745474329),
(202, 'default', '{\"uuid\":\"f6b2fda3-d1df-4a06-8137-b9d8a5417a29\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"marcelo93\\\";s:7:\\\"content\\\";s:59:\\\"Fazendo gravação de conteúdos em cima da mesa de sinuca!\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"6d88c08d-5172-49c3-a0b6-26f6dd29a4cf\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745474340, 1745474340),
(203, 'default', '{\"uuid\":\"8cecd1dc-2895-4c98-8411-aebb5a33929d\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"marcelo93\\\";s:7:\\\"content\\\";s:39:\\\"Peladinha em varias sessões de fotos !\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"96e65aee-dd23-4e8e-8da8-1c9f1516e320\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745474367, 1745474367),
(204, 'default', '{\"uuid\":\"dabb4aa9-0d53-45be-8053-7def517730c2\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"marcelo93\\\";s:7:\\\"content\\\";s:36:\\\"Essa posição ele entra bem fundo !\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"41948b55-ca0c-4de0-a87a-06283e45ed0c\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745474668, 1745474668),
(205, 'default', '{\"uuid\":\"5d859b1a-f270-4eb6-ac6e-ac7d62179ff6\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"marcelo93\\\";s:7:\\\"content\\\";s:41:\\\"Tirei essa foto de baixo do chuveiro😅!\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"af207b4b-0032-4718-a7b2-9f152096a7f4\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745474676, 1745474676),
(206, 'default', '{\"uuid\":\"f37c2d83-f57b-4658-93e6-09829c8056dc\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"marcelo93\\\";s:7:\\\"content\\\";s:29:\\\"Indo andar de jet peladinha !\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"a51a91ca-4b7b-491c-a144-9ce531fd3152\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745474685, 1745474685),
(207, 'default', '{\"uuid\":\"339979b7-cf17-479f-85ea-b502408996e3\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"marcelo93\\\";s:7:\\\"content\\\";s:32:\\\"Me exibindo antes da gravação!\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"105504ab-0e49-4fc6-8dcb-53fd867a96d5\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745474692, 1745474692),
(208, 'default', '{\"uuid\":\"3316e4f7-669a-4ae8-b045-fc7382a53612\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:9:\\\"marcelo93\\\";s:7:\\\"content\\\";s:43:\\\"Deitadinha depois da sessão de gravação!\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"98fe88be-a6a1-4324-b369-3bddeab4a63f\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745474699, 1745474699),
(209, 'default', '{\"uuid\":\"acb77658-ab41-4161-8086-bd49e9f67516\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:7:\\\"ighor84\\\";s:6:\\\"amount\\\";s:5:\\\"20000\\\";}s:2:\\\"id\\\";s:36:\\\"a84507ca-245f-4ab8-b654-6f5844fec9d2\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745474894, 1745474894),
(210, 'default', '{\"uuid\":\"d9160e00-6512-41cc-9a58-21ce6d0b265c\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:7:\\\"ighor84\\\";s:7:\\\"content\\\";s:39:\\\"Peladinha em varias sessões de fotos !\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"31a1a908-2590-4027-8d24-21986d70f381\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745474940, 1745474940),
(211, 'default', '{\"uuid\":\"503b0b12-d50a-4926-a3d9-445a1a85d254\",\"displayName\":\"App\\\\Notifications\\\\PayPerViewReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\PayPerViewReceived\\\":2:{s:42:\\\"\\u0000App\\\\Notifications\\\\PayPerViewReceived\\u0000data\\\";a:3:{s:5:\\\"buyer\\\";s:11:\\\"giovanny101\\\";s:7:\\\"content\\\";s:59:\\\"Fazendo gravação de conteúdos em cima da mesa de sinuca!\\\";s:4:\\\"type\\\";s:4:\\\"post\\\";}s:2:\\\"id\\\";s:36:\\\"ffb2aed7-97d0-438b-9db5-a98e7c30df4e\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745550740, 1745550740),
(212, 'default', '{\"uuid\":\"95aef50d-cd83-4f01-a1a0-f9dcb5d1aeaa\",\"displayName\":\"App\\\\Notifications\\\\AdminVerificationPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:18:\\\"contato@dojobe.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:42:\\\"App\\\\Notifications\\\\AdminVerificationPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\VerificationRequests\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"9b273ed3-fd12-4f18-8f3b-d7833b33db4e\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1761690115,\"delay\":null}', 0, NULL, 1761690115, 1761690115),
(213, 'default', '{\"uuid\":\"1db765a4-26b5-4a02-85ae-8d336254203b\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:124;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761748015,\"delay\":null}', 0, NULL, 1761748015, 1761748015),
(214, 'default', '{\"uuid\":\"9c6aaed7-d5a2-4ac5-819c-1619f89b2e9a\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:125;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761748248,\"delay\":null}', 0, NULL, 1761748248, 1761748248),
(215, 'default', '{\"uuid\":\"6c51f40d-a45e-4f10-bf50-4915936cec95\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:126;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1763338314,\"delay\":null}', 0, NULL, 1763338314, 1763338314);

-- --------------------------------------------------------

--
-- Estrutura para tabela `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `abbreviation` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `languages`
--

INSERT INTO `languages` (`id`, `name`, `abbreviation`) VALUES
(1, 'English', 'en'),
(2, 'Español', 'es'),
(6, 'Português', 'port');

-- --------------------------------------------------------

--
-- Estrutura para tabela `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `updates_id` int(11) UNSIGNED NOT NULL,
  `status` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '1' COMMENT '0 trash, 1 active',
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `id_usr` (`user_id`,`updates_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `updates_id`, `status`, `date`) VALUES
(1, 3, 10, '0', '2024-05-18 03:54:50'),
(2, 4, 11, '1', '2024-05-18 05:08:57'),
(3, 3, 6, '1', '2024-05-18 17:50:46'),
(4, 3, 5, '1', '2024-05-18 17:50:49'),
(5, 3, 4, '0', '2024-05-18 17:50:51'),
(6, 5, 12, '1', '2024-05-22 03:53:42'),
(8, 17, 34, '1', '2024-05-31 22:02:52'),
(9, 17, 31, '1', '2024-05-31 22:03:15'),
(10, 17, 27, '1', '2024-05-31 22:04:56'),
(11, 19, 37, '1', '2024-05-31 23:45:29'),
(12, 17, 58, '1', '2024-06-04 00:37:23'),
(13, 18, 63, '1', '2024-06-04 01:13:36'),
(14, 18, 62, '1', '2024-06-04 01:13:39'),
(15, 18, 59, '1', '2024-06-04 01:13:42'),
(16, 18, 58, '1', '2024-06-04 01:13:45'),
(17, 18, 57, '1', '2024-06-04 01:13:50'),
(18, 63, 93, '1', '2025-02-01 10:20:36'),
(19, 71, 101, '1', '2025-02-04 16:20:21'),
(20, 73, 78, '1', '2025-02-05 17:53:17'),
(21, 101, 101, '1', '2025-02-22 10:06:17'),
(22, 101, 100, '1', '2025-02-22 10:46:09'),
(23, 101, 99, '1', '2025-02-22 10:46:11'),
(24, 101, 98, '1', '2025-02-22 10:52:53'),
(25, 88, 76, '1', '2025-04-24 05:52:19'),
(26, 88, 75, '1', '2025-04-24 05:52:30'),
(27, 88, 12, '1', '2025-04-24 05:54:28'),
(28, 88, 11, '1', '2025-04-24 05:54:30'),
(29, 88, 10, '1', '2025-04-24 05:54:32'),
(30, 88, 9, '1', '2025-04-24 05:54:33'),
(31, 93, 11, '1', '2025-04-24 05:58:53'),
(32, 93, 12, '1', '2025-04-24 05:58:54'),
(33, 93, 10, '1', '2025-04-24 05:58:55'),
(34, 93, 9, '1', '2025-04-24 05:58:56'),
(35, 93, 8, '1', '2025-04-24 05:59:02'),
(36, 84, 12, '1', '2025-04-24 06:08:25'),
(37, 84, 11, '1', '2025-04-24 06:08:34'),
(38, 84, 10, '1', '2025-04-24 06:08:45'),
(39, 84, 9, '1', '2025-04-24 06:08:51'),
(40, 109, 93, '1', '2025-04-25 02:48:12'),
(41, 1, 124, '1', '2025-11-05 22:40:06'),
(42, 1, 125, '1', '2025-11-05 22:40:08'),
(43, 1, 76, '1', '2025-11-19 22:00:09');

-- --------------------------------------------------------

--
-- Estrutura para tabela `like_reels`
--

DROP TABLE IF EXISTS `like_reels`;
CREATE TABLE IF NOT EXISTS `like_reels` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reels_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `reels_id` (`reels_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `like_reels`
--

INSERT INTO `like_reels` (`id`, `user_id`, `reels_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2025-08-28 00:18:14', '2025-08-28 00:18:14'),
(2, 164, 2, '2025-10-29 09:32:33', '2025-10-29 09:32:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `live_comments`
--

DROP TABLE IF EXISTS `live_comments`;
CREATE TABLE IF NOT EXISTS `live_comments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `live_streamings_id` int(10) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `joined` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `tip` enum('0','1') NOT NULL DEFAULT '0',
  `earnings` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gift_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `live_comments_user_id_index` (`user_id`),
  KEY `live_comments_live_streamings_id_index` (`live_streamings_id`),
  KEY `gift_id` (`gift_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `live_comments`
--

INSERT INTO `live_comments` (`id`, `user_id`, `live_streamings_id`, `comment`, `joined`, `tip`, `earnings`, `created_at`, `updated_at`, `gift_id`) VALUES
(1, 5, 2, 'sdsdf', 0, '0', 0.00, '2024-05-22 00:48:41', '2024-05-22 00:48:41', NULL),
(2, 5, 2, 'dsf', 0, '0', 0.00, '2024-05-22 00:48:43', '2024-05-22 00:48:43', NULL),
(3, 19, 9, '', 1, '0', 0.00, '2024-06-25 23:30:56', '2024-06-25 23:30:56', NULL),
(4, 19, 9, 'asdasdas', 0, '0', 0.00, '2024-06-25 23:31:51', '2024-06-25 23:31:51', NULL),
(5, 19, 9, 'asdasdas', 0, '0', 0.00, '2024-06-25 23:31:53', '2024-06-25 23:31:53', NULL),
(6, 19, 9, 'asdas', 0, '0', 0.00, '2024-06-25 23:31:55', '2024-06-25 23:31:55', NULL),
(7, 19, 9, '🥰', 0, '0', 0.00, '2024-06-25 23:32:04', '2024-06-25 23:32:04', NULL),
(8, 18, 9, 'sadasd', 0, '0', 0.00, '2024-06-25 23:32:28', '2024-06-25 23:32:28', NULL),
(9, 18, 10, '', 1, '0', 0.00, '2024-06-25 23:34:56', '2024-06-25 23:34:56', NULL),
(10, 18, 11, '', 1, '0', 0.00, '2024-06-25 23:36:02', '2024-06-25 23:36:02', NULL),
(11, 19, 11, 'Kdjsknd', 0, '0', 0.00, '2024-06-25 23:36:21', '2024-06-25 23:36:21', NULL),
(12, 19, 11, 'Kabsksj', 0, '0', 0.00, '2024-06-25 23:36:23', '2024-06-25 23:36:23', NULL),
(13, 19, 11, '😅', 0, '0', 0.00, '2024-06-25 23:36:29', '2024-06-25 23:36:29', NULL),
(14, 19, 11, 'Bennygay', 0, '0', 0.00, '2024-06-25 23:36:36', '2024-06-25 23:36:36', NULL),
(15, 3, 16, 'Kkk', 0, '0', 0.00, '2024-06-26 04:37:11', '2024-06-26 04:37:11', NULL),
(16, 1, 18, 'jh', 0, '0', 0.00, '2024-06-26 04:51:56', '2024-06-26 04:51:56', NULL),
(17, 11, 18, '', 1, '0', 0.00, '2024-06-26 04:52:47', '2024-06-26 04:52:47', NULL),
(18, 11, 18, '', 0, '1', 20.00, '2024-06-26 04:52:55', '2024-06-26 04:52:55', NULL),
(19, 3, 19, '', 1, '0', 0.00, '2024-06-29 01:47:06', '2024-06-29 01:47:06', NULL),
(20, 3, 19, '', 0, '1', 5.00, '2024-06-29 01:47:25', '2024-06-29 01:47:25', NULL),
(21, 3, 19, 'gostosa', 0, '0', 0.00, '2024-06-29 01:47:35', '2024-06-29 01:47:35', NULL),
(22, 3, 19, '😍', 0, '0', 0.00, '2024-06-29 01:47:42', '2024-06-29 01:47:42', NULL),
(23, 3, 20, '', 1, '0', 0.00, '2024-06-29 01:50:14', '2024-06-29 01:50:14', NULL),
(24, 3, 21, '', 1, '0', 0.00, '2024-06-29 01:52:35', '2024-06-29 01:52:35', NULL),
(25, 4, 22, '', 1, '0', 0.00, '2024-07-03 16:12:20', '2024-07-03 16:12:20', NULL),
(26, 3, 24, '', 1, '0', 0.00, '2025-02-03 21:49:57', '2025-02-03 21:49:57', NULL),
(27, 3, 24, 'viu bom', 0, '0', 0.00, '2025-02-03 21:50:10', '2025-02-03 21:50:10', NULL),
(28, 3, 24, 'ta me ouvindo?', 0, '0', 0.00, '2025-02-03 21:50:18', '2025-02-03 21:50:18', NULL),
(29, 3, 24, 'pera ai', 0, '0', 0.00, '2025-02-03 21:50:31', '2025-02-03 21:50:31', NULL),
(30, 3, 24, 'to no pc', 0, '0', 0.00, '2025-02-03 21:50:34', '2025-02-03 21:50:34', NULL),
(31, 3, 24, 'por isso', 0, '0', 0.00, '2025-02-03 21:50:38', '2025-02-03 21:50:38', NULL),
(32, 3, 24, 'pode encerrar', 0, '0', 0.00, '2025-02-03 21:51:04', '2025-02-03 21:51:04', NULL),
(33, 3, 24, 'tres pontos', 0, '0', 0.00, '2025-02-03 21:51:17', '2025-02-03 21:51:17', NULL),
(34, 1, 26, 'Oi', 0, '0', 0.00, '2025-04-12 00:55:47', '2025-04-12 00:55:47', NULL),
(35, 1, 26, 'Oi quero', 0, '0', 0.00, '2025-04-12 00:56:23', '2025-04-12 00:56:23', NULL),
(36, 3, 27, 'sadsd', 0, '0', 0.00, '2025-08-25 23:32:39', '2025-08-25 23:32:39', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `live_likes`
--

DROP TABLE IF EXISTS `live_likes`;
CREATE TABLE IF NOT EXISTS `live_likes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `live_streamings_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `live_likes_user_id_index` (`user_id`),
  KEY `live_likes_live_streamings_id_index` (`live_streamings_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `live_likes`
--

INSERT INTO `live_likes` (`id`, `user_id`, `live_streamings_id`, `created_at`, `updated_at`) VALUES
(3, 19, 9, '2024-06-25 23:32:05', '2024-06-25 23:32:05'),
(5, 19, 11, '2024-06-25 23:36:30', '2024-06-25 23:36:30'),
(7, 11, 18, '2024-06-26 04:53:07', '2024-06-26 04:53:07'),
(10, 1, 26, '2025-04-12 00:55:41', '2025-04-12 00:55:41');

-- --------------------------------------------------------

--
-- Estrutura para tabela `live_online_users`
--

DROP TABLE IF EXISTS `live_online_users`;
CREATE TABLE IF NOT EXISTS `live_online_users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `live_streamings_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `live_online_users_user_id_index` (`user_id`),
  KEY `live_online_users_live_streamings_id_index` (`live_streamings_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `live_online_users`
--

INSERT INTO `live_online_users` (`id`, `user_id`, `live_streamings_id`, `created_at`, `updated_at`) VALUES
(1, 19, 9, '2024-06-25 23:30:56', '2024-06-25 23:32:32'),
(2, 18, 10, '2024-06-25 23:34:56', '2024-06-25 23:35:30'),
(3, 18, 11, '2024-06-25 23:36:02', '2024-06-25 23:37:43'),
(4, 11, 18, '2024-06-26 04:52:47', '2024-06-26 04:53:17'),
(5, 3, 19, '2024-06-29 01:47:06', '2024-06-29 01:47:59'),
(6, 3, 20, '2024-06-29 01:50:14', '2024-06-29 01:50:28'),
(7, 3, 21, '2024-06-29 01:52:35', '2024-06-29 01:52:55'),
(8, 4, 22, '2024-07-03 16:12:20', '2024-07-03 16:23:21'),
(9, 3, 24, '2025-02-03 21:49:57', '2025-02-03 21:51:22');

-- --------------------------------------------------------

--
-- Estrutura para tabela `live_streamings`
--

DROP TABLE IF EXISTS `live_streamings`;
CREATE TABLE IF NOT EXISTS `live_streamings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL DEFAULT 'normal',
  `user_id` int(10) UNSIGNED NOT NULL,
  `buyer_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `channel` text NOT NULL,
  `minutes` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `joined_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `availability` char(50) NOT NULL DEFAULT 'all_pay',
  `token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `live_streamings_user_id_index` (`user_id`),
  KEY `type` (`type`),
  KEY `buyer_id` (`buyer_id`),
  KEY `minutes` (`minutes`),
  KEY `joined_at` (`joined_at`),
  KEY `token` (`token`),
  KEY `updated_at` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `live_streamings`
--

INSERT INTO `live_streamings` (`id`, `type`, `user_id`, `buyer_id`, `name`, `channel`, `minutes`, `price`, `status`, `joined_at`, `created_at`, `updated_at`, `ends_at`, `availability`, `token`) VALUES
(1, 'normal', 5, NULL, 'hjj', 'live_w1SDO_5', 0, 32, '1', NULL, '2024-05-22 00:43:23', '2024-05-22 00:43:46', NULL, 'all_pay', NULL),
(2, 'normal', 5, NULL, '23', 'live_Ed8vb_5', 0, 24, '1', NULL, '2024-05-22 00:48:25', '2024-05-22 00:48:47', NULL, 'all_pay', NULL),
(3, 'normal', 5, NULL, 'Hsjs', 'live_Dvpwn_5', 0, 42, '1', NULL, '2024-05-22 00:53:20', '2024-05-22 00:53:37', NULL, 'all_pay', NULL),
(4, 'normal', 3, NULL, 'asdas', 'live_hj8gz_3', 0, 12, '1', NULL, '2024-05-22 23:16:14', '2024-05-22 23:16:27', NULL, 'all_pay', NULL),
(5, 'normal', 3, NULL, '123', 'live_prGYq_3', 0, 5, '1', NULL, '2024-05-22 23:19:01', '2024-05-22 23:19:05', NULL, 'all_pay', NULL),
(6, 'normal', 3, NULL, '23', 'live_o5KgF_3', 0, 0, '1', NULL, '2024-05-22 23:19:15', '2024-05-22 23:19:22', NULL, 'everyone_free', NULL),
(7, 'normal', 5, NULL, 'asdasd', 'live_j2kB5_5', 0, 0, '1', NULL, '2024-06-25 22:58:20', '2024-06-25 22:58:27', NULL, 'everyone_free', NULL),
(8, 'normal', 19, NULL, 'julia', 'live_oYj6X_19', 0, 10, '1', NULL, '2024-06-25 23:16:13', '2024-06-25 23:16:31', NULL, 'all_pay', NULL),
(9, 'normal', 18, NULL, 'asdasd', 'live_INfN9_18', 0, 0, '1', NULL, '2024-06-25 23:28:29', '2024-06-25 23:33:12', NULL, 'everyone_free', NULL),
(10, 'normal', 19, NULL, 'Tes', 'live_4Jzrm_19', 0, 0, '1', NULL, '2024-06-25 23:34:37', '2024-06-25 23:35:31', NULL, 'everyone_free', NULL),
(11, 'normal', 19, NULL, 'Teste', 'live_K7DU8_19', 0, 0, '1', NULL, '2024-06-25 23:35:55', '2024-06-25 23:37:44', NULL, 'everyone_free', NULL),
(12, 'normal', 33, NULL, 'Lindinha', 'live_JRoHG_33', 0, 40, '1', NULL, '2024-06-26 00:13:19', '2024-06-26 00:14:58', NULL, 'all_pay', NULL),
(13, 'normal', 34, NULL, 'Manu Bumbum Gigante', 'live_7iX1J_34', 0, 70, '1', NULL, '2024-06-26 00:26:18', '2024-06-26 00:26:56', NULL, 'all_pay', NULL),
(14, 'normal', 3, NULL, 'Com plug gemendo gostoso', 'live_yhLl5_3', 0, 20, '1', NULL, '2024-06-26 04:35:50', '2024-06-26 04:36:11', NULL, 'all_pay', NULL),
(15, 'normal', 3, NULL, 'Plug anal', 'live_zwmpd_3', 0, 20, '1', NULL, '2024-06-26 04:36:23', '2024-06-26 04:36:49', NULL, 'all_pay', NULL),
(16, 'normal', 3, NULL, 'Uj', 'live_itlEq_3', 0, 8, '1', NULL, '2024-06-26 04:36:58', '2024-06-26 04:37:17', NULL, 'free_paid_subscribers', NULL),
(17, 'normal', 3, NULL, 'Plug', 'live_iUVwy_3', 0, 20, '1', NULL, '2024-06-26 04:38:29', '2024-06-26 04:39:44', NULL, 'all_pay', NULL),
(18, 'normal', 3, NULL, 'Thcv', 'live_2EZvb_3', 0, 6, '1', NULL, '2024-06-26 04:51:10', '2024-06-26 04:53:26', NULL, 'all_pay', NULL),
(19, 'normal', 18, NULL, 'Teste', 'live_oJyDo_18', 0, 30, '1', NULL, '2024-06-29 01:44:56', '2024-06-29 01:47:58', NULL, 'all_pay', NULL),
(20, 'private', 18, 3, 'Live Private', 'live_private_geNd7_18', 10, 0, '1', '2024-06-29 01:50:14', '2024-06-29 01:50:04', '2024-06-29 01:50:29', NULL, 'private', 'HwOMN3L6gocnvxmZDc7BSr5pWCaQOC6CnqLhVvvJ'),
(21, 'private', 18, 3, 'Live Private', 'live_private_MmLXl_18', 10, 0, '1', '2024-06-29 01:52:35', '2024-06-29 01:52:17', '2024-06-29 01:52:55', NULL, 'private', 'i6AiXZKDPXUMtHWkEReyIFUdD3ufbnSWhzBEvY3s'),
(22, 'private', 3, 4, 'Live Private', 'live_private_SJ9eQ_3', 10, 0, '1', '2024-07-03 16:12:20', '2024-07-03 16:12:06', '2024-07-03 16:23:20', NULL, 'private', 'b3M7NaVnbjMDrLMc6JktS3KKYHSpB4T8TSCUOoxX'),
(23, 'normal', 18, NULL, 'Vem todos', 'live_6LrvX_18', 0, 5, '1', NULL, '2025-01-16 06:11:54', '2025-01-16 06:12:16', NULL, 'all_pay', NULL),
(24, 'private', 60, 3, 'Live Private', 'live_private_5EKM3_60', 10, 0, '1', '2025-02-03 21:49:57', '2025-02-03 21:49:42', '2025-02-03 21:51:18', NULL, 'private', 'nPgwM9wEUc8bly6J7gWj4b9GFspeo9Miqok1WEV3'),
(25, 'normal', 60, NULL, 'Testando pra vocês', 'live_sRLsd_60', 0, 0, '1', NULL, '2025-02-09 19:03:11', '2025-02-09 19:03:49', NULL, 'everyone_free', NULL),
(26, 'normal', 18, NULL, '23', 'live_zWjRd_18', 0, 0, '1', NULL, '2025-04-12 00:54:48', '2025-04-12 00:56:41', NULL, 'everyone_free', NULL),
(27, 'normal', 3, NULL, 'sdfs', 'live_O4Apk_3', 0, 23, '1', NULL, '2025-08-25 23:32:23', '2025-08-25 23:32:53', NULL, 'all_pay', NULL),
(28, 'normal', 34, NULL, 'csc', 'live_ebl5H_34', 0, 32, '1', NULL, '2025-09-25 01:56:41', '2025-09-25 01:56:50', NULL, 'free_paid_subscribers', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `live_streaming_private_requests`
--

DROP TABLE IF EXISTS `live_streaming_private_requests`;
CREATE TABLE IF NOT EXISTS `live_streaming_private_requests` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `minutes` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transaction_id` (`transaction_id`),
  KEY `user_id` (`user_id`),
  KEY `creator_id` (`creator_id`),
  KEY `minutes` (`minutes`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `live_streaming_private_requests`
--

INSERT INTO `live_streaming_private_requests` (`id`, `transaction_id`, `user_id`, `creator_id`, `minutes`, `status`, `created_at`, `updated_at`) VALUES
(1, 63, 3, 18, 10, 1, '2024-06-29 01:49:54', '2024-06-29 01:50:04'),
(2, 64, 3, 18, 10, 1, '2024-06-29 01:51:57', '2024-06-29 01:52:17'),
(3, 69, 4, 3, 10, 1, '2024-07-03 16:10:28', '2024-07-03 16:12:06'),
(4, 71, 3, 60, 10, 1, '2025-02-03 21:46:32', '2025-02-03 21:49:42');

-- --------------------------------------------------------

--
-- Estrutura para tabela `login_sessions`
--

DROP TABLE IF EXISTS `login_sessions`;
CREATE TABLE IF NOT EXISTS `login_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(100) NOT NULL,
  `device` varchar(100) DEFAULT NULL,
  `device_type` varchar(100) DEFAULT NULL,
  `browser` varchar(100) DEFAULT NULL,
  `platform` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `login_sessions`
--

INSERT INTO `login_sessions` (`id`, `user_id`, `ip`, `device`, `device_type`, `browser`, `platform`, `country`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', 'WebKit', 'desktop', 'Chrome 123.0.0.0', 'Windows 10.0', NULL, '2024-03-27 20:23:58', '2024-04-06 15:49:33'),
(2, 1, '45.184.70.248', 'WebKit', 'desktop', 'Chrome 125.0.0.0', 'Windows 10.0', NULL, '2024-05-18 00:37:44', '2024-06-05 20:00:19'),
(3, 2, '2804:984:56:3e00:dc5e:f8c5:79ca:82b7', 'WebKit', 'desktop', 'Edge 124.0.0.0', 'Windows 10.0', 'Brazil', '2024-05-18 01:34:38', '2024-05-18 01:34:38'),
(4, 3, '34.95.158.246', 'Macintosh', 'desktop', 'Chrome 123.0.0.0', 'OS X 10_15_7', 'Brazil', '2024-05-18 02:16:52', '2024-05-18 02:16:52'),
(5, 4, '45.184.71.230', 'WebKit', 'desktop', 'Chrome 125.0.0.0', 'Windows 10.0', 'Brazil', '2024-05-18 02:33:11', '2024-05-21 16:30:24'),
(6, 5, '45.184.71.230', 'iPhone', 'phone', 'Safari 17.4.1', 'iOS 17_4_1', 'Brazil', '2024-05-18 01:22:06', '2024-05-22 00:52:33'),
(7, 4, '2804:1b2:10c2:7a77:806e:3000:c239:aa9', 'iPhone', 'phone', 'Chrome 124.0.6367.111', 'iOS 17_4', 'Brazil', '2024-05-18 02:08:30', '2024-05-18 02:08:30'),
(8, 1, '2804:1b2:10c2:7a77:806e:3000:c239:aa9', 'iPhone', 'phone', 'Chrome 124.0.6367.111', 'iOS 17_4', NULL, '2024-05-18 02:11:55', '2024-05-18 02:11:55'),
(9, 5, '2804:1b2:10c2:7a77:806e:3000:c239:aa9', 'iPhone', 'phone', 'Chrome 124.0.6367.111', 'iOS 17_4', 'Brazil', '2024-05-18 02:16:17', '2024-05-18 02:16:17'),
(10, 6, '47.63.255.239', 'iPhone', 'phone', 'Safari 17.4.1', 'iOS 17_4_1', 'Spain', '2024-05-18 10:33:03', '2024-05-18 10:33:03'),
(11, 1, '45.184.71.230', 'Macintosh', 'desktop', 'Chrome 124.0.0.0', 'OS X 10_15_7', NULL, '2024-05-18 14:44:37', '2024-05-23 23:55:49'),
(12, 3, '45.184.71.230', 'Macintosh', 'desktop', 'Chrome 124.0.0.0', 'OS X 10_15_7', 'Brazil', '2024-05-18 14:50:26', '2024-05-22 00:52:08'),
(13, 7, '45.184.71.230', 'Macintosh', 'desktop', 'Chrome 124.0.0.0', 'OS X 10_15_7', 'Brazil', '2024-05-18 14:55:08', '2024-05-18 14:55:08'),
(14, 2, '45.184.71.230', 'WebKit', 'desktop', 'Chrome 125.0.0.0', 'Windows 10.0', 'Brazil', '2024-05-18 15:01:05', '2024-05-18 15:01:05'),
(15, 3, '45.184.70.248', 'WebKit', 'desktop', 'Chrome 125.0.0.0', 'Windows 10.0', 'Brazil', '2024-05-21 15:05:51', '2024-06-05 18:35:00'),
(16, 2, '2804:984:56:a300:7838:db13:1031:6cfb', 'WebKit', 'desktop', 'Edge 125.0.0.0', 'Windows 10.0', NULL, '2024-05-21 20:20:30', '2024-06-05 18:28:50'),
(18, 5, '45.184.71.230', 'Macintosh', 'desktop', 'Safari 16.6', 'OS X 10_15_7', 'Brazil', '2024-05-22 00:03:15', '2024-05-22 00:58:14'),
(19, 1, '45.184.71.230', 'Macintosh', 'desktop', 'Safari 16.6', 'OS X 10_15_7', NULL, '2024-05-22 00:22:37', '2024-05-22 00:59:35'),
(21, 7, '2804:1b2:1081:279e:5c1e:635a:9396:9119', 'iPhone', 'phone', 'Safari 17.3.1', 'iOS 17_3_1', NULL, '2024-05-22 00:59:05', '2024-06-28 00:44:28'),
(24, 11, '45.184.71.230', 'Macintosh', 'desktop', 'Safari 16.6', 'OS X 10_15_7', 'Brazil', '2024-05-22 22:26:51', '2024-05-22 22:26:51'),
(25, 11, '45.184.71.230', 'Macintosh', 'desktop', 'Chrome 124.0.0.0', 'OS X 10_15_7', 'Brazil', '2024-05-23 20:45:16', '2024-05-23 20:45:16'),
(27, 1, '45.184.71.230', 'Nexus', 'phone', 'Chrome 125.0.0.0', 'AndroidOS 6.0', NULL, '2024-05-23 23:55:21', '2024-05-24 00:03:48'),
(28, 2, '2804:984:57:da00:88c:f4f4:cfae:e341', 'WebKit', 'desktop', 'Opera 109.0.0.0', 'Windows 10.0', NULL, '2024-05-24 22:12:59', '2024-05-24 22:12:59'),
(29, 1, '35.198.50.242', 'Macintosh', 'desktop', 'Chrome 125.0.0.0', 'OS X 10_15_7', NULL, '2024-05-25 19:36:11', '2024-06-05 18:29:46'),
(30, 2, '45.184.70.232', 'Macintosh', 'desktop', 'Chrome 125.0.0.0', 'OS X 10_15_7', NULL, '2024-05-25 20:30:11', '2024-05-31 19:15:00'),
(31, 13, '45.184.71.230', 'Macintosh', 'desktop', 'Chrome 125.0.0.0', 'OS X 10_15_7', 'Brazil', '2024-05-25 20:34:16', '2024-05-25 20:34:16'),
(32, 1, '45.184.71.230', 'iPhone', 'phone', 'Safari 17.4.1', 'iOS 17_4_1', NULL, '2024-05-27 19:33:32', '2024-05-27 20:12:29'),
(33, 3, '2804:18:893:a153:400a:a509:8730:e0ee', 'Macintosh', 'desktop', 'Chrome 125.0.0.0', 'OS X 10_15_7', 'Brazil', '2024-05-28 11:00:29', '2024-05-28 11:00:29'),
(34, 14, '2804:984:57:e600:81c8:6d6c:1e2d:5206', 'WebKit', 'desktop', 'Edge 125.0.0.0', 'Windows 10.0', 'Brazil', '2024-05-29 21:01:52', '2024-06-15 16:39:21'),
(35, 1, '2804:7f74:9df:5900:c547:be9e:10ea:fced', 'iPhone', 'phone', 'Chrome 125.0.6422.80', 'iOS 17_4', NULL, '2024-05-30 10:40:24', '2024-05-30 10:40:24'),
(36, 16, '45.184.71.230', 'Macintosh', 'desktop', 'Chrome 125.0.0.0', 'OS X 10_15_7', 'Brazil', '2024-05-30 16:58:51', '2024-05-30 16:58:51'),
(37, 17, '2804:18:110f:bd82:dc92:8b8a:110c:f0f', 'WebKit', 'phone', 'Chrome 125.0.0.0', 'AndroidOS 10', NULL, '2024-05-30 17:01:04', '2024-06-15 19:53:13'),
(38, 17, '45.184.70.248', 'WebKit', 'desktop', 'Chrome 125.0.0.0', 'Windows 10.0', NULL, '2024-05-30 17:02:43', '2024-06-17 16:25:09'),
(39, 18, '35.198.50.242', 'Macintosh', 'desktop', 'Chrome 125.0.0.0', 'OS X 10_15_7', 'Brazil', '2024-05-30 17:58:41', '2024-06-03 14:19:27'),
(41, 7, '45.184.70.232', 'WebKit', 'desktop', 'Opera 109.0.0.0', 'Windows 10.0', NULL, '2024-05-31 02:31:00', '2024-05-31 19:50:31'),
(42, 19, '35.198.50.242', 'Macintosh', 'desktop', 'Chrome 125.0.0.0', 'OS X 10_15_7', 'Brazil', '2024-05-31 03:22:51', '2024-06-04 15:03:54'),
(43, 17, '2804:214:8821:c743:2dfd:88db:93ad:7b1e', 'iPhone', 'phone', 'Safari 16.6', 'iOS 16_7_8', NULL, '2024-06-01 12:29:13', '2024-07-21 23:49:10'),
(44, 17, '45.184.70.248', 'Macintosh', 'desktop', 'Chrome 125.0.0.0', 'OS X 10_15_7', 'Brazil', '2024-06-03 14:18:15', '2024-06-03 14:18:15'),
(45, 18, '2804:389:a1be:e096:a8fa:42f9:527c:7cba', 'iPhone', 'phone', 'Safari 17.4.1', 'iOS 17_4_1', 'Brazil', '2024-06-04 14:52:49', '2024-06-04 14:52:49'),
(46, 19, '2804:389:a1be:e096:a8fa:42f9:527c:7cba', 'iPhone', 'phone', 'Safari 17.4.1', 'iOS 17_4_1', 'Brazil', '2024-06-04 14:53:46', '2024-06-04 14:56:37'),
(47, 19, '2804:214:8151:b354:1:1:2a85:649c', 'WebKit', 'phone', 'Chrome 124.0.0.0', 'AndroidOS 10', 'Brazil', '2024-06-04 15:05:49', '2024-06-04 15:05:49'),
(48, 18, '2804:14c:6583:5f23:dd96:248c:ff0:76e1', 'iPhone', 'phone', 'Safari 17.5', 'iOS 17_5_1', 'Brazil', '2024-06-04 15:23:38', '2024-06-21 19:26:15'),
(49, 20, '191.176.41.130', 'iPhone', 'phone', 'Safari 17.4.1', 'iOS 17_4_1', NULL, '2024-06-05 11:03:18', '2024-06-05 11:03:28'),
(50, 1, '2804:984:57:e600:81c8:6d6c:1e2d:5206', 'WebKit', 'desktop', 'Edge 125.0.0.0', 'Windows 10.0', NULL, '2024-06-05 18:25:24', '2024-06-15 19:07:55'),
(51, 21, '189.6.81.158', 'WebKit', 'phone', 'Chrome 125.0.0.0', 'AndroidOS 10', 'Brazil', '2024-06-06 03:50:23', '2024-06-06 03:50:23'),
(52, 17, '2804:d59:a68c:3a00:4d27:c20:1093:614f', 'iPhone', 'phone', 'Safari 17.4.1', 'iOS 17_4_1', NULL, '2024-06-08 20:42:24', '2024-06-08 20:42:24'),
(53, 17, '2804:389:a2ab:135a:44ce:74fa:dd24:609a', 'iPhone', 'phone', 'Safari 17.5', 'iOS 17_5_1', NULL, '2024-06-09 12:31:46', '2024-06-09 12:31:46'),
(54, 22, '2804:14c:6587:439a:306d:3778:8df8:f35a', 'Macintosh', 'desktop', 'Chrome 125.0.0.0', 'OS X 10_15_7', 'Brazil', '2024-06-13 10:32:46', '2024-06-13 10:32:46'),
(55, 23, '2804:14c:6592:894c:fc6e:713e:9abf:7428', 'WebKit', 'phone', 'Chrome 126.0.0.0', 'AndroidOS 10', 'Brazil', '2024-06-14 14:16:14', '2024-06-14 14:16:14'),
(56, 1, '45.184.70.231', 'WebKit', 'desktop', 'Chrome 126.0.0.0', 'Windows 10.0', NULL, '2024-06-14 16:55:41', '2024-07-26 00:12:33'),
(57, 14, '2804:984:54:4200:f8d6:1cc7:2012:de10', 'WebKit', 'desktop', 'Edge 126.0.0.0', 'Windows 10.0', 'Brazil', '2024-06-17 19:29:14', '2024-06-22 15:20:17'),
(58, 25, '45.184.70.248', 'WebKit', 'desktop', 'Chrome 126.0.0.0', 'Windows 10.0', 'Brazil', '2024-06-18 16:52:16', '2024-06-18 16:52:16'),
(59, 26, '45.184.70.248', 'WebKit', 'desktop', 'Chrome 126.0.0.0', 'Windows 10.0', 'Brazil', '2024-06-18 16:57:23', '2024-06-18 16:57:23'),
(60, 27, '45.184.70.248', 'WebKit', 'desktop', 'Chrome 126.0.0.0', 'Windows 10.0', 'Brazil', '2024-06-18 17:04:57', '2024-06-18 17:04:57'),
(61, 28, '45.184.70.248', 'WebKit', 'desktop', 'Chrome 126.0.0.0', 'Windows 10.0', 'Brazil', '2024-06-18 17:13:03', '2024-06-18 17:13:03'),
(62, 17, '45.184.70.231', 'WebKit', 'desktop', 'Chrome 126.0.0.0', 'Windows 10.0', NULL, '2024-06-19 16:07:27', '2024-07-15 16:43:47'),
(63, 29, '2804:7f74:9bf:d600:1448:790f:3a48:adc8', 'iPhone', 'phone', 'Safari 15.6.6', 'iOS 15_8_2', 'Brazil', '2024-06-24 21:46:23', '2024-06-25 14:21:01'),
(64, 30, '2804:389:a0c1:9121:4b8:1e4c:a80c:b43e', 'iPhone', 'phone', 'Edge ', 'iOS 17_5', 'Brazil', '2024-06-25 15:15:39', '2024-06-25 15:15:39'),
(65, 30, '2804:389:a0c1:9121:4b8:1e4c:a80c:b43e', 'iPhone', 'phone', 'Safari 17.5', 'iOS 17_5_1', 'Brazil', '2024-06-25 15:18:12', '2024-06-26 13:43:34'),
(66, 31, '2804:d59:b93b:aa00:c149:7ec2:8144:2de8', 'iPhone', 'phone', 'Safari 17.5', 'iOS 17_5_1', 'Brazil', '2024-06-25 18:17:07', '2024-06-27 09:13:23'),
(67, 31, '45.184.68.231', 'WebKit', 'desktop', 'Chrome 126.0.0.0', 'Windows 10.0', 'Brazil', '2024-06-25 21:39:02', '2024-06-25 21:46:04'),
(68, 7, '45.184.68.231', 'WebKit', 'desktop', 'Chrome 126.0.0.0', 'Windows 10.0', NULL, '2024-06-25 23:15:31', '2024-06-29 03:37:05'),
(69, 1, '2804:1b2:10c2:8b09:1459:260d:4719:4bee', 'iPhone', 'phone', 'Chrome 126.0.6478.108', 'iOS 17_5', NULL, '2024-06-25 23:33:46', '2024-06-26 13:27:18'),
(70, 33, '45.235.192.3', 'iPhone', 'phone', 'Chrome 126.0.6478.108', 'iOS 16_3', 'Brazil', '2024-06-25 23:36:49', '2024-06-25 23:36:49'),
(71, 34, '2804:14c:6580:41c6:acf4:18f2:985a:59c', 'WebKit', 'phone', 'Chrome 126.0.0.0', 'AndroidOS 10', 'Brazil', '2024-06-25 23:37:50', '2024-06-26 10:10:58'),
(74, 33, '45.235.192.3', 'iPhone', 'phone', 'Safari 16.3', 'iOS 16_3_1', 'Brazil', '2024-06-26 00:22:10', '2024-06-26 00:22:10'),
(75, 1, '2804:18:1100:71b3:8d12:7865:c262:8e', 'iPhone', 'phone', 'Safari 17.5', 'iOS 17_5_1', NULL, '2024-06-26 02:52:19', '2024-07-26 12:14:56'),
(76, 37, '2804:18:1108:b461:6117:7d14:8a39:fa46', 'iPhone', 'phone', 'Safari 16.6', 'iOS 16_7_7', 'Brazil', '2024-06-26 13:20:50', '2024-06-26 13:20:50'),
(77, 38, '2804:1b2:181:2ee:719d:b5d6:8305:348f', 'WebKit', 'phone', 'Chrome 121.0.0.0', 'AndroidOS 10', 'Brazil', '2024-06-26 14:37:25', '2024-06-26 14:37:25'),
(78, 7, '45.184.68.231', 'WebKit', 'desktop', 'Edge 126.0.0.0', 'Windows 10.0', NULL, '2024-06-26 15:32:10', '2024-06-26 15:32:10'),
(79, 39, '2804:14c:6583:62cf:4523:de94:d802:31bc', 'iPhone', 'phone', 'Chrome 126.0.6478.54', 'iOS 17_5', 'Brazil', '2024-06-26 16:26:41', '2024-06-26 16:26:41'),
(80, 1, '2804:984:57:6700:8b7:732f:8b9a:6511', 'WebKit', 'desktop', 'Edge 126.0.0.0', 'Windows 10.0', NULL, '2024-06-26 20:16:27', '2024-07-08 18:05:47'),
(81, 40, '170.84.27.35', 'WebKit', 'phone', 'Chrome 126.0.0.0', 'AndroidOS 10', 'Brazil', '2024-06-26 20:22:02', '2024-06-26 20:22:02'),
(82, 41, '187.84.180.57', 'iPhone', 'phone', 'Safari 16.1', 'iOS 16_1_1', 'Brazil', '2024-06-26 20:48:46', '2024-06-26 20:48:46'),
(83, 43, '2804:d59:9e02:9d00:9c9a:289d:94d2:abac', 'iPhone', 'phone', 'Safari 17.5', 'iOS 17_5_1', 'Brazil', '2024-06-27 05:32:47', '2024-06-27 05:32:47'),
(84, 44, '2a02:26f7:e51c:4000:598a:9cff:f54:91ff', 'iPhone', 'phone', 'Safari 17.5', 'iOS 17_5_1', 'Brazil', '2024-06-27 07:23:12', '2024-06-27 07:23:12'),
(85, 45, '189.6.8.58', 'iPhone', 'phone', 'Chrome 126.0.6478.108', 'iOS 17_5', 'Brazil', '2024-06-27 09:50:31', '2024-06-27 09:50:31'),
(86, 47, '189.126.212.17', 'iPhone', 'phone', 'Chrome 126.0.6478.108', 'iOS 17_5', 'Brazil', '2024-06-28 13:05:44', '2024-06-28 13:05:44'),
(87, 2, '45.184.68.231', 'WebKit', 'desktop', 'Chrome 126.0.0.0', 'Windows 10.0', NULL, '2024-06-29 01:45:20', '2024-06-29 01:45:20'),
(88, 1, '45.184.70.231', 'Macintosh', 'desktop', 'Chrome 126.0.0.0', 'OS X 10_15_7', NULL, '2024-07-03 15:54:10', '2024-07-22 16:45:17'),
(89, 17, '35.198.37.15', 'Macintosh', 'desktop', 'Chrome 123.0.0.0', 'OS X 10_15_7', NULL, '2024-07-04 15:27:07', '2024-07-04 15:27:07'),
(90, 2, '2804:984:55:3600:51e9:94fe:c80:3c0c', 'WebKit', 'desktop', 'Edge 126.0.0.0', 'Windows 10.0', NULL, '2024-07-05 17:01:44', '2024-07-20 12:05:34'),
(91, 49, '2804:18:105:9ed3:1d5a:9b6b:3bb7:2ecf', 'WebKit', 'phone', 'Chrome 126.0.0.0', 'AndroidOS 10', 'Brazil', '2024-07-12 19:47:37', '2024-07-12 19:47:37'),
(92, 50, '2804:18:1108:589b:2923:c58e:b1f4:af8c', 'iPhone', 'phone', 'Safari 17.5', 'iOS 17_5_1', 'Brazil', '2024-07-12 23:17:42', '2024-07-12 23:17:42'),
(93, 1, '45.184.70.251', 'WebKit', 'desktop', 'Chrome 127.0.0.0', 'Windows 10.0', NULL, '2024-07-30 20:41:15', '2024-08-02 19:15:39'),
(94, 2, '2804:984:55:ed00:f082:4727:d745:5e74', 'WebKit', 'desktop', 'Edge 127.0.0.0', 'Windows 10.0', 'Brazil', '2024-08-01 18:45:12', '2024-08-01 18:45:12'),
(95, 51, '131.161.229.143', 'WebKit', 'desktop', 'Chrome 127.0.0.0', 'Windows 10.0', 'Brazil', '2024-08-04 17:17:16', '2024-08-04 17:17:16'),
(96, 1, '45.184.69.250', 'Macintosh', 'desktop', 'Chrome 127.0.0.0', 'OS X 10_15_7', NULL, '2024-08-06 15:14:27', '2024-08-06 15:16:50'),
(97, 7, '2804:1b2:1080:d010:b8f4:c2d5:88a4:b9ff', 'WebKit', 'desktop', 'Chrome 127.0.0.0', 'Windows 10.0', 'Brazil', '2024-08-08 21:41:39', '2024-08-08 21:41:39'),
(98, 2, '187.43.162.92', 'WebKit', 'desktop', 'Chrome 127.0.0.0', 'Windows 10.0', 'Brazil', '2024-08-17 15:43:46', '2024-08-17 15:43:46'),
(99, 52, '201.77.106.4', 'Samsung', 'phone', 'Chrome 110.0.5481.154', 'AndroidOS 13', 'Brazil', '2024-09-03 19:38:09', '2024-09-03 19:38:09'),
(100, 1, '2a09:bac3:aa2:2be::46:e5', 'iPhone', 'phone', 'Safari 17.6', 'iOS 17_6_1', NULL, '2024-09-17 16:39:34', '2024-10-25 16:28:32'),
(101, 17, '2804:214:8824:f3bf:3049:48dc:2a43:4950', 'iPhone', 'phone', 'Safari 17.6', 'iOS 17_6_1', NULL, '2024-09-18 00:42:46', '2024-09-18 00:42:46'),
(102, 1, '45.184.71.244', 'WebKit', 'desktop', 'Chrome 129.0.0.0', 'Windows 10.0', NULL, '2024-09-20 17:17:16', '2024-09-20 17:17:16'),
(103, 54, '2804:1e68:c401:2584:8c86:ff0c:c23a:7b8b', 'WebKit', 'phone', 'Chrome 128.0.0.0', 'AndroidOS 10', 'Brazil', '2024-09-23 04:44:51', '2024-09-23 04:44:51'),
(104, 1, '2804:18:110d:3c77:3040:1f04:41df:b69', 'iPhone', 'phone', 'Chrome 129.0.6668.69', 'iOS 17_6', NULL, '2024-10-05 23:37:26', '2024-10-05 23:37:26'),
(105, 1, '2804:18:1102:415e:a549:8a27:8775:3e97', 'Macintosh', 'desktop', 'Chrome 129.0.0.0', 'OS X 10_15_7', NULL, '2024-10-17 15:06:05', '2024-10-23 21:29:56'),
(106, 1, '2804:1b2:1081:addf:6d93:5138:f7c2:b6d8', 'iPhone', 'phone', 'Chrome 130.0.6723.37', 'iOS 17_6', NULL, '2024-10-25 16:01:51', '2024-10-25 16:01:51'),
(107, 7, '164.41.4.26', 'iPhone', 'phone', 'Safari 17.6', 'iOS 17_6_1', 'Brazil', '2024-10-29 14:23:22', '2024-10-29 14:23:22'),
(108, 1, '2804:1b2:10c0:8bcf:5c14:1ddf:d0fd:7f2c', 'Macintosh', 'desktop', 'Chrome 130.0.0.0', 'OS X 10_15_7', NULL, '2024-10-31 14:38:55', '2024-10-31 22:56:13'),
(109, 1, '2a09:bac2:96b:1c8c::2d8:c8', 'Macintosh', 'desktop', 'Safari 17.6', 'OS X 10_15_7', NULL, '2024-11-15 21:51:10', '2025-02-17 22:52:01'),
(110, 1, '2804:18:89a:17a0:24e2:ba4e:434c:f1c', 'iPhone', 'phone', 'Chrome 130.0.6723.90', 'iOS 17_6', NULL, '2024-11-15 21:53:56', '2024-11-15 22:03:53'),
(111, 1, '2804:1b2:10c0:ccff:553d:1677:bb0c:7942', 'Macintosh', 'desktop', 'Chrome 131.0.0.0', 'OS X 10_15_7', NULL, '2024-12-03 12:09:06', '2025-01-31 16:26:14'),
(112, 56, '2804:7f0:9300:24c1:7958:a471:69e4:2d1e', 'WebKit', 'phone', 'Chrome 131.0.0.0', 'AndroidOS 10', 'Brazil', '2024-12-26 23:28:39', '2024-12-27 22:42:04'),
(113, 57, '2804:8324:11:1800:203a:d9e9:f00e:6152', 'WebKit', 'phone', 'Chrome 131.0.0.0', 'AndroidOS 10', 'Brazil', '2024-12-30 23:56:01', '2024-12-30 23:56:01'),
(114, 58, '45.231.203.247', 'WebKit', 'phone', 'Chrome 131.0.0.0', 'AndroidOS 10', 'Brazil', '2025-01-06 02:45:01', '2025-01-06 02:45:01'),
(115, 1, '2804:14c:65c9:49db:cc94:f859:93a7:4ef8', 'iPhone', 'phone', 'Chrome 131.0.6778.154', 'iOS 17_6_1', NULL, '2025-01-11 22:59:36', '2025-01-16 06:16:00'),
(116, 59, '2804:214:8822:4954:211a:d685:8192:3ef6', 'WebKit', 'phone', 'Chrome 131.0.0.0', 'AndroidOS 10', 'Brazil', '2025-01-15 15:34:12', '2025-02-03 00:13:41'),
(123, 62, '2804:d59:8707:6300:91a9:5b2c:4791:db2c', 'WebKit', 'phone', 'Chrome 132.0.0.0', 'AndroidOS 10', 'Brazil', '2025-01-30 19:55:21', '2025-01-31 13:56:51'),
(124, 63, '2804:214:86bc:3b41:bda6:3e8e:614a:500c', 'WebKit', 'phone', 'Chrome 132.0.0.0', 'AndroidOS 10', 'Brazil', '2025-01-31 12:51:43', '2025-02-06 16:28:22'),
(125, 1, '177.174.213.77', 'iPhone', 'phone', 'Chrome 132.0.6834.100', 'iOS 17_6_1', NULL, '2025-01-31 23:57:48', '2025-02-07 02:43:52'),
(126, 65, '149.78.185.40', 'WebKit', 'phone', 'Chrome 132.0.0.0', 'AndroidOS 10', 'Brazil', '2025-02-02 03:48:52', '2025-02-12 06:06:02'),
(127, 66, '177.22.195.165', 'WebKit', 'desktop', 'Chrome 131.0.0.0', 'Windows 10.0', 'Brazil', '2025-02-03 00:00:07', '2025-02-03 00:00:07'),
(128, 66, '2a02:26f7:e52c:5802:0:4000:0:6', 'iPhone', 'phone', 'Safari 18.0.1', 'iOS 18_0_1', 'Brazil', '2025-02-03 00:01:34', '2025-02-03 00:01:34'),
(130, 1, '2804:1b2:10c0:ccff:a432:5404:9444:7099', 'Macintosh', 'desktop', 'Chrome 132.0.0.0', 'OS X 10_15_7', NULL, '2025-02-03 21:35:50', '2025-02-20 14:04:46'),
(131, 68, '2804:d59:a117:8f00:19a6:1887:462c:90aa', 'iPhone', 'phone', 'Safari 18.1.1', 'iOS 18_1_1', 'Brazil', '2025-02-04 00:49:03', '2025-02-04 00:54:45'),
(132, 68, '2804:d59:a117:8f00:6d84:a9c4:e2fd:e982', 'iPhone', 'phone', 'Mozilla ', 'iOS 18_1_1', 'Brazil', '2025-02-04 00:49:46', '2025-02-04 00:49:46'),
(133, 69, '2a09:bac2:acb:878::d8:10a', 'iPhone', 'phone', 'Safari 18.1.1', 'iOS 18_1_1', 'Brazil', '2025-02-04 01:51:09', '2025-02-04 01:51:09'),
(134, 69, '2804:214:8825:6094:d169:ed1a:97c5:55cf', 'iPhone', 'phone', 'Mozilla ', 'iOS 18_1_1', 'Brazil', '2025-02-04 01:51:27', '2025-02-04 01:51:27'),
(135, 70, '189.6.6.17', 'WebKit', 'phone', 'Chrome 132.0.0.0', 'AndroidOS 10', 'Brazil', '2025-02-04 06:59:46', '2025-02-04 06:59:46'),
(136, 71, '2804:1b2:1081:3016:709d:bed1:e38:57c3', 'iPhone', 'phone', 'Chrome 133.0.6943.33', 'iOS 18_2_1', 'Brazil', '2025-02-04 13:12:32', '2025-02-04 13:12:32'),
(137, 71, '2804:1b2:1081:3016:709d:bed1:e38:57c3', 'iPhone', 'phone', 'Mozilla ', 'iOS 18_2_1', 'Brazil', '2025-02-04 13:25:18', '2025-02-04 13:25:18'),
(138, 72, '2804:389:a3f2:140b:264:e6b1:8e08:d2de', 'WebKit', 'phone', 'Chrome 132.0.0.0', 'AndroidOS 10', 'Brazil', '2025-02-04 19:16:18', '2025-02-04 19:16:18'),
(139, 73, '2804:214:8190:d5bf:1:2:1fc8:61ff', 'WebKit', 'phone', 'Chrome 132.0.0.0', 'AndroidOS 10', 'Brazil', '2025-02-05 14:43:21', '2025-02-05 14:43:21'),
(140, 75, '2804:14c:6591:8c25:32:f778:490c:911b', 'Samsung', 'phone', 'Chrome 106.0.5249.126', 'AndroidOS 10', 'Brazil', '2025-02-05 14:52:22', '2025-02-05 14:52:22'),
(141, 73, '2804:214:8190:d5bf:1:2:1fc8:61ff', 'Samsung', 'phone', 'Chrome 132.0.6834.163', 'AndroidOS 9', 'Brazil', '2025-02-05 15:06:21', '2025-02-05 15:06:21'),
(142, 77, '177.51.60.171', 'WebKit', 'phone', 'Chrome 132.0.0.0', 'AndroidOS 10', 'Brazil', '2025-02-06 01:11:14', '2025-02-06 01:11:14'),
(143, 78, '189.115.244.106', 'WebKit', 'phone', 'Chrome 132.0.0.0', 'AndroidOS 10', 'Brazil', '2025-02-06 14:52:14', '2025-02-06 14:52:14'),
(144, 78, '189.115.244.106', 'WebKit', 'phone', 'Chrome 132.0.6834.163', 'AndroidOS 14', 'Brazil', '2025-02-06 14:53:17', '2025-02-06 14:53:17'),
(145, 79, '186.209.191.154', 'iPhone', 'phone', 'Safari 18.3', 'iOS 18_3', 'Brazil', '2025-02-07 03:20:34', '2025-02-07 03:20:34'),
(146, 1, '177.174.208.153', 'iPhone', 'phone', 'Chrome 133.0.6943.33', 'iOS 17_6_1', NULL, '2025-02-07 18:15:11', '2025-02-11 20:03:34'),
(147, 80, '2804:7f3:ff80:6b44:dcaa:458a:ab21:7522', 'WebKit', 'phone', 'Chrome 132.0.0.0', 'AndroidOS 10', 'Brazil', '2025-02-07 23:03:00', '2025-02-07 23:03:00'),
(148, 81, '2804:14c:658f:a11b:a092:8155:5a9a:248e', 'iPhone', 'phone', 'Safari 18.1.1', 'iOS 18_1_1', 'Brazil', '2025-02-08 04:45:11', '2025-02-08 04:45:11'),
(149, 81, '2804:14c:658f:a11b:a092:8155:5a9a:248e', 'iPhone', 'phone', 'Mozilla ', 'iOS 18_1_1', 'Brazil', '2025-02-08 04:45:56', '2025-02-08 04:45:56'),
(150, 82, '2804:48dc:30f:8201:8135:9be4:6067:9cc1', 'iPhone', 'phone', 'Safari 17.5', 'iOS 17_5_1', 'Brazil', '2025-02-08 09:20:19', '2025-02-08 09:20:19'),
(151, 84, '2804:214:8194:52db:68ef:6f41:4795:53f9', 'iPhone', 'phone', 'Safari 18.3', 'iOS 18_3', 'Brazil', '2025-02-09 03:33:52', '2025-02-09 03:33:52'),
(152, 87, '2804:389:a3fb:6ce0:bcbc:ebce:f9db:9d6f', 'iPhone', 'phone', 'Safari 18.1.1', 'iOS 18_1_1', 'Brazil', '2025-02-09 21:28:53', '2025-02-09 21:28:53'),
(153, 85, '2804:389:a292:cfda:59b4:76d0:70cf:4e65', 'iPhone', 'phone', 'Chrome 133.0.6943.33', 'iOS 18_3_0', 'Brazil', '2025-02-09 22:22:49', '2025-02-11 12:59:37'),
(154, 89, '2804:18:1101:f4b6:75c4:a07d:d463:e48d', 'iPhone', 'phone', 'Safari 604.1', 'iOS 17_6_1', 'Brazil', '2025-02-10 09:10:04', '2025-02-10 09:10:04'),
(155, 91, '2804:214:86b4:5929:e583:f05d:349d:7dce', 'iPhone', 'phone', 'Safari 18.3', 'iOS 18_3', 'Brazil', '2025-02-13 00:20:03', '2025-02-13 00:20:03'),
(156, 91, '2804:214:86b4:5929:d9f:5c5:797b:59a6', 'WebKit', 'desktop', 'Chrome 132.0.0.0', 'Windows 10.0', 'Brazil', '2025-02-13 00:20:19', '2025-02-13 00:20:19'),
(157, 92, '2804:56c:21d7:f100:3957:4037:5e58:8a39', 'WebKit', 'phone', 'Chrome 133.0.0.0', 'AndroidOS 10', 'Brazil', '2025-02-14 03:25:38', '2025-02-14 03:25:38'),
(158, 93, '2804:984:3b2f:ee00:c922:b713:377a:412e', 'iPhone', 'phone', 'Chrome 132.0.6834.100', 'iOS 17_5_1', 'Brazil', '2025-02-14 11:32:59', '2025-02-14 11:32:59'),
(159, 94, '187.60.147.171', 'WebKit', 'phone', 'Chrome 133.0.0.0', 'AndroidOS 10', 'Brazil', '2025-02-14 22:52:21', '2025-02-14 22:52:21'),
(160, 95, '2a09:bac2:676:3cd::61:292', 'iPhone', 'phone', 'Safari 18.2', 'iOS 18_2_1', 'Brazil', '2025-02-15 09:03:19', '2025-02-15 09:03:19'),
(161, 95, '2804:14c:65d3:53bb:d59e:902f:25fc:b0d3', 'iPhone', 'phone', 'Mozilla ', 'iOS 18_2_1', 'Brazil', '2025-02-15 09:07:01', '2025-02-15 09:07:01'),
(164, 1, '2a09:bac3:de9:1c96::2d9:26', 'Macintosh', 'desktop', 'Safari 18.3', 'OS X 10_15_7', NULL, '2025-02-19 18:20:31', '2025-03-20 19:05:30'),
(165, 98, '2804:389:a3da:8076:4d7c:1251:61ee:63f', 'iPhone', 'phone', 'Safari 18.1.1', 'iOS 18_1_1', 'Brazil', '2025-02-19 21:53:30', '2025-02-19 21:53:30'),
(166, 100, '2804:1b2:1142:1abc:1c9e:cf0c:2ab1:381a', 'iPhone', 'phone', 'Safari 18.2', 'iOS 18_2_1', 'Brazil', '2025-02-20 09:18:02', '2025-02-20 09:18:02'),
(167, 100, '2804:1b2:1142:1abc:1c9e:cf0c:2ab1:381a', 'iPhone', 'phone', 'Mozilla ', 'iOS 18_2_1', 'Brazil', '2025-02-20 09:18:23', '2025-02-20 09:18:23'),
(168, 101, '2804:56c:b448:a300:4528:8077:d777:68c9', 'WebKit', 'phone', 'Chrome 133.0.0.0', 'AndroidOS 10', 'Brazil', '2025-02-22 07:05:16', '2025-03-03 03:29:31'),
(170, 1, '2a09:bac3:74a:1773::256:44', 'Macintosh', 'desktop', 'Safari 18.3.1', 'OS X 10_15_7', NULL, '2025-03-21 15:32:56', '2025-04-12 00:55:29'),
(171, 102, '2001:1284:f508:acf9:95f1:6d7b:eccb:b3d3', 'iPhone', 'phone', 'Safari 18.1.1', 'iOS 18_1_1', 'Brazil', '2025-03-26 19:52:25', '2025-03-26 19:52:42'),
(172, 103, '181.191.102.63', 'WebKit', 'phone', 'Chrome 134.0.0.0', 'AndroidOS 10', 'Brazil', '2025-03-27 21:58:33', '2025-03-27 21:58:33'),
(173, 104, '2804:20:28:4304:146a:1381:ff18:4216', 'WebKit', 'phone', 'Chrome 134.0.0.0', 'AndroidOS 10', 'Brazil', '2025-04-03 06:25:56', '2025-04-03 06:25:56'),
(174, 1, '2804:1b2:1140:e52b:e537:1b71:5bb:11c2', 'iPhone', 'phone', 'Chrome 135.0.7049.53', 'iOS 18_3_2', NULL, '2025-04-11 02:23:20', '2025-04-11 02:23:20'),
(175, 105, '2804:18:17b:8f56:1838:2780:ba61:1989', 'WebKit', 'phone', 'Chrome 135.0.0.0', 'AndroidOS 10', 'Brazil', '2025-04-21 09:44:55', '2025-04-21 09:44:55'),
(176, 106, '2803:9810:7077:8210:f6d6:5981:a003:5d42', 'WebKit', 'phone', 'Chrome 135.0.0.0', 'AndroidOS 10', 'Brazil', '2025-04-21 09:54:43', '2025-04-21 09:54:43'),
(177, 107, '146.75.191.51', 'iPhone', 'phone', 'Safari 18.3', 'iOS 18_3_1', 'Brazil', '2025-04-22 20:33:13', '2025-04-22 20:33:13'),
(178, 1, '2804:18:10b:c133:70b5:9638:4df2:e464', 'Macintosh', 'desktop', 'Chrome 135.0.0.0', 'OS X 10_15_7', NULL, '2025-04-23 19:33:31', '2025-04-25 19:36:00'),
(179, 108, '2804:18:891:3049:dcd9:185b:544:cde7', 'iPhone', 'phone', 'Safari 18.3.1', 'iOS 18_3_2', 'Brazil', '2025-04-24 21:16:34', '2025-04-24 21:16:34'),
(180, 1, '2a02:26f7:e502:4000:e000::1b', 'Macintosh', 'desktop', 'Safari 18.4', 'OS X 10_15_7', NULL, '2025-04-24 23:43:45', '2025-04-25 00:20:20'),
(181, 109, '168.181.58.90', 'WebKit', 'phone', 'Chrome 135.0.0.0', 'AndroidOS 10', 'Brazil', '2025-04-24 23:45:12', '2025-04-24 23:45:12'),
(182, 110, '45.228.14.75', 'WebKit', 'phone', 'Chrome 125.0.0.0', 'AndroidOS 10', 'Brazil', '2025-05-01 15:46:03', '2025-05-01 15:46:03'),
(183, 112, '2804:18:703d:abef:ac91:9aff:fef4:e3df', 'WebKit', 'phone', 'Chrome 135.0.0.0', 'AndroidOS 10', 'Brazil', '2025-05-05 11:41:56', '2025-05-05 11:41:56'),
(184, 113, '2804:f14:80ab:5101:5093:afd2:26fe:4c00', '0', 'desktop', 'Firefox 138.0', 'Windows 10.0', 'Brazil', '2025-05-06 15:56:25', '2025-05-14 11:29:47'),
(185, 115, '2804:1b2:ab40:71a5:ec98:f23:1532:94e4', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', 'Brazil', '2025-05-18 14:10:46', '2025-05-18 14:10:46'),
(186, 59, '2804:214:86b6:8685:21ae:2873:f95d:16fa', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', 'Brazil', '2025-05-20 14:09:49', '2025-05-20 14:09:49'),
(187, 116, '179.255.148.96', 'iPhone', 'phone', 'Chrome 136.0.7103.91', 'iOS 16_7_10', 'Brazil', '2025-05-29 14:51:11', '2025-05-29 14:51:11'),
(188, 117, '2804:389:a19c:fe23:f1ac:5ab3:d245:9654', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', 'Brazil', '2025-06-02 18:05:47', '2025-06-02 18:05:47'),
(189, 118, '177.220.176.33', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', 'Brazil', '2025-06-06 12:14:33', '2025-06-06 12:14:33'),
(190, 1, '2804:18:110b:cc2b:7900:19e6:d88a:4e99', 'Macintosh', 'desktop', 'Chrome 137.0.0.0', 'OS X 10_15_7', NULL, '2025-07-03 22:21:04', '2025-07-07 17:54:48'),
(191, 1, '2804:1b2:10c0:deab:fd73:8f99:9bee:c966', 'Macintosh', 'desktop', 'Chrome 139.0.0.0', 'OS X 10_15_7', NULL, '2025-08-25 23:30:28', '2025-09-09 16:11:04'),
(192, 122, '2804:18:110f:8011:cd4e:21a2:750d:fffc', 'Macintosh', 'desktop', 'Chrome 139.0.0.0', 'OS X 10_15_7', 'Brazil', '2025-08-27 17:47:08', '2025-08-27 17:47:08'),
(193, 1, '189.96.226.82', 'iPhone', 'phone', 'Chrome 136.0.7103.56', 'iOS 18_5_0', NULL, '2025-08-28 00:17:05', '2025-09-05 23:51:44'),
(194, 1, '2a02:26f7:e530:4000:5000::27', 'Macintosh', 'desktop', 'Safari 18.5', 'OS X 10_15_7', NULL, '2025-09-05 23:53:51', '2025-09-05 23:53:51'),
(195, 1, '2804:18:1104:2583:f50b:b901:b4:d72', 'iPhone', 'phone', 'Chrome 140.0.7339.101', 'iOS 18_6_2', NULL, '2025-09-07 22:42:27', '2025-09-14 17:26:40'),
(196, 125, '2804:14c:1bb:857b:29e4:1a7f:89bd:8723', 'Macintosh', 'desktop', 'Chrome 133.0.0.0', 'OS X 10_15_7', 'Brazil', '2025-09-09 13:43:57', '2025-09-09 15:13:23'),
(197, 1, '2804:18:110f:7623:981d:c344:eaa3:a637', 'iPhone', 'phone', 'Chrome 140.0.7339.122', 'iOS 26_0_0', NULL, '2025-09-17 21:38:41', '2025-09-17 21:38:41'),
(198, 127, '2804:7f3:ff80:5956:9ca6:d06e:e159:1595', 'WebKit', 'desktop', 'Chrome 140.0.0.0', 'Windows 10.0', 'Brazil', '2025-09-21 20:46:53', '2025-09-21 20:46:53'),
(199, 1, '186.193.9.104', 'Macintosh', 'desktop', 'Chrome 140.0.0.0', 'OS X 10_15_7', NULL, '2025-09-22 15:04:30', '2025-10-02 17:22:24'),
(200, 149, '74.179.70.8', 'WebKit', 'desktop', 'Chrome 130.0.0.0', 'Windows 10.0', 'United States', '2025-10-24 01:06:55', '2025-10-24 01:06:55'),
(201, 150, '72.152.84.184', 'WebKit', 'desktop', 'Chrome 130.0.0.0', 'Windows 10.0', 'United States', '2025-10-24 04:33:57', '2025-10-24 04:33:57'),
(202, 129, '2804:7f0:b103:b57a:4159:2808:5a1:48f3', 'WebKit', 'desktop', 'Chrome 141.0.0.0', 'Windows 10.0', 'Brazil', '2025-10-25 22:20:32', '2025-10-25 22:20:32'),
(203, 157, '142.111.108.196', 'Macintosh', 'desktop', 'Chrome 128.0.0.0', 'OS X 10_15_7', 'United States', '2025-10-27 05:14:15', '2025-10-27 05:14:15'),
(204, 161, '186.235.82.38', 'iPhone', 'phone', 'Safari 26.0.1', 'iOS 18_7', 'Brazil', '2025-10-28 16:54:32', '2025-10-28 16:54:32'),
(205, 1, '2804:984:c2b:4400:28ba:f5b3:339b:77ac', 'Macintosh', 'desktop', 'Chrome 141.0.0.0', 'OS X 10_15_7', NULL, '2025-10-28 16:54:45', '2025-10-29 01:16:39'),
(206, 162, '201.139.87.173', 'WebKit', 'phone', 'Chrome 141.0.0.0', 'AndroidOS 10', 'Brazil', '2025-10-28 19:09:58', '2025-10-29 09:40:23'),
(207, 163, '45.226.242.46', 'WebKit', 'phone', 'Chrome 141.0.0.0', 'AndroidOS 10', 'Brazil', '2025-10-28 19:27:33', '2025-10-28 19:27:33'),
(208, 163, '45.226.242.46', 'Motorola', 'phone', 'Edge ', 'AndroidOS 15', 'Brazil', '2025-10-28 19:27:41', '2025-10-28 19:27:41'),
(209, 164, '2804:10dc:f0a7:e500:191:f81c:c083:f281', 'iPhone', 'phone', 'Chrome 141.0.7390.96', 'iOS 18_6_2', 'Brazil', '2025-10-29 08:51:21', '2025-10-29 08:51:21'),
(210, 1, '2803:9810:4d99:6f10:1c55:df1b:92e3:c0b6', 'Macintosh', 'desktop', 'Chrome 142.0.0.0', 'OS X 10_15_7', NULL, '2025-11-05 19:39:51', '2025-12-02 17:13:09'),
(211, 1, '2a02:26f7:e530:4000:a000::1f', 'Macintosh', 'desktop', 'Safari 26.0.1', 'OS X 10_15_7', NULL, '2025-11-08 18:55:45', '2025-11-08 18:55:45'),
(212, 1, '2804:1b2:1842:987c:71b7:8be6:cc2:50d3', 'iPhone', 'phone', 'Chrome 143.0.7499.108', 'iOS 26_1_0', NULL, '2025-12-16 23:13:12', '2025-12-16 23:13:12'),
(213, 1, '2a09:bac2:b14:290f::417:67', 'Macintosh', 'desktop', 'Safari 26.1', 'OS X 10_15_7', NULL, '2025-12-17 00:19:20', '2025-12-17 00:19:20'),
(214, 169, '177.125.49.100', 'WebKit', 'phone', 'Chrome 143.0.0.0', 'AndroidOS 10', 'Brazil', '2025-12-18 14:10:48', '2025-12-18 14:10:48'),
(215, 1, '2804:3cd0:6:128:ed1e:c140:7aa6:8f95', 'Macintosh', 'desktop', 'Chrome 143.0.0.0', 'OS X 10_15_7', NULL, '2025-12-19 15:23:22', '2026-01-08 22:14:04'),
(216, 170, '45.71.62.156', 'WebKit', 'phone', 'Chrome 143.0.0.0', 'AndroidOS 10', 'Brazil', '2025-12-21 21:28:21', '2025-12-21 21:28:21'),
(217, 170, '45.71.62.156', 'WebKit', 'desktop', 'Chrome 143.0.0.0', 'Windows 10.0', 'Brazil', '2025-12-21 21:29:09', '2025-12-21 21:29:09'),
(218, 171, '131.100.251.2', 'iPhone', 'phone', 'Safari 604.1', 'iOS 18_5_0', 'Brazil', '2025-12-23 14:59:03', '2025-12-23 14:59:03'),
(219, 174, '45.232.197.129', 'WebKit', 'phone', 'Chrome 143.0.0.0', 'AndroidOS 10', 'Brazil', '2026-01-01 17:32:56', '2026-01-01 17:33:39'),
(220, 175, '45.164.240.73', 'WebKit', 'desktop', 'Chrome 143.0.0.0', 'Windows 10.0', 'Brazil', '2026-01-18 17:03:52', '2026-01-18 17:03:52'),
(221, 1, '186.201.219.218', 'Macintosh', 'desktop', 'Chrome 144.0.0.0', 'OS X 10_15_7', NULL, '2026-01-30 03:01:59', '2026-02-26 12:25:47'),
(222, 1, '2a02:26f7:e514:4000:800::31', 'Macintosh', 'desktop', 'Safari 26.2', 'OS X 10_15_7', NULL, '2026-02-07 20:14:35', '2026-02-07 20:14:35'),
(223, 176, '177.155.203.4', 'WebKit', 'phone', 'Chrome 144.0.0.0', 'AndroidOS 10', 'Brazil', '2026-02-16 12:05:53', '2026-02-16 12:05:53'),
(224, 176, '179.113.59.120', 'WebKit', 'phone', 'Chrome 145.0.0.0', 'AndroidOS 10', 'Brazil', '2026-02-22 10:56:28', '2026-02-22 10:56:28'),
(225, 177, '2804:868:d043:ca7e:1ef:49d3:f78a:7c9f', 'WebKit', 'phone', 'Chrome 145.0.0.0', 'AndroidOS 10', 'Brazil', '2026-02-25 11:34:03', '2026-02-25 11:34:03'),
(226, 1, '2804:18:168:5af3:2916:49df:be39:e35b', 'Macintosh', 'desktop', 'Chrome 145.0.0.0', 'OS X 10_15_7', NULL, '2026-03-02 04:50:17', '2026-03-06 17:56:56'),
(227, 178, '2804:d6c:fff1:6a30:6881:3279:3153:a9f3', 'WebKit', 'phone', 'Chrome 145.0.0.0', 'AndroidOS 10', 'Brazil', '2026-03-03 18:43:05', '2026-03-03 18:43:05');

-- --------------------------------------------------------

--
-- Estrutura para tabela `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `updates_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `width` varchar(5) DEFAULT NULL,
  `height` varchar(5) DEFAULT NULL,
  `img_type` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `encoded` enum('yes','no') NOT NULL DEFAULT 'no',
  `video_poster` varchar(255) DEFAULT NULL,
  `duration_video` varchar(50) DEFAULT NULL,
  `quality_video` varchar(20) DEFAULT NULL,
  `video_embed` varchar(200) NOT NULL,
  `music` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_size` varchar(255) NOT NULL,
  `bytes` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `status` enum('active','pending') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `job_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_updates_id_index` (`updates_id`),
  KEY `media_user_id_index` (`user_id`),
  KEY `media_type_index` (`type`),
  KEY `media_token_index` (`token`),
  KEY `media_encoded_index` (`encoded`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `media`
--

INSERT INTO `media` (`id`, `updates_id`, `user_id`, `type`, `image`, `width`, `height`, `img_type`, `video`, `encoded`, `video_poster`, `duration_video`, `quality_video`, `video_embed`, `music`, `file`, `file_name`, `file_size`, `bytes`, `mime`, `token`, `status`, `created_at`, `updated_at`, `job_id`) VALUES
(1, 2, 3, 'image', '36648131e6579f1715999518lxyj71oojkejzroc9bnm.jpg', '733', '1280', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'V9bDm0adOX6Wb3JK0szXif3Jd7V63h1eJq8U5JP7nG6pYaBdDWz4Xd6shdDOrCCG3BIHpynEcBAZjXqJxFAmXCtqrbQ4STLRKvNibJaZUESj4rz74UXNRBn7n03dpDTz6vH0KCfITwG7S5weHu4mG36648131e71d781715999518', 'active', '2024-05-18 02:31:58', '2024-05-18 02:33:39', NULL),
(2, 3, 3, 'image', '36648156164e4f1716000097l9mbiq4plyiwmpttsedg.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'lEBMfw5aLZsffTYIPgVtYH0XVAGN0qdwEbLU4CQHmQMhBmPNRFXhdZvdOF6daRpQUrESG6yZzZ4NsYD8Ygxrf7NXtIddeetaPtMYtFMeKmMXAhjpJigt3KGRgtJ95TeGQyhjoVb4wJPI8iNaRNIXZP66481561ec60f1716000097', 'active', '2024-05-18 02:41:38', '2024-05-18 02:42:10', NULL),
(3, 4, 3, 'image', '3664815d42541b1716000212ithypiqffo2jicranjog.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'wM7k35Fcl4fVnWon6fRUMEa0EcHm0PPeYO1a1KY940r0aigMCBaqZh6w60Dg0vv41EdaIa2RcTeFGLgB4q8MTvqvU0rmFIvAACdWr5p4nUREg0602ZdbKJrrsZtXtCByHqQYUVJyBiuvESlMW2fckJ664815d4bf68f1716000212', 'active', '2024-05-18 02:43:33', '2024-05-18 02:43:51', NULL),
(4, 5, 3, 'image', '3664815f27a9431716000242gpwr1tnclu1ikbyw26kj.jpg', '3024', '3912', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, '0uzDvhELqkdV1UVMSUwdLezZwtNXjLIKzK8dYckxNLpBYddbOshb2kNooOxzuz3E9PcYyN7XpTTlINM2aOfiJi3Z6kucWq6qoxLWm2SjHoOmLvrQe99XzXQLnKXSYAOUMVhEGUKq57JtA6X9TXWvuo664815f32653a1716000243', 'active', '2024-05-18 02:44:04', '2024-05-18 02:44:15', NULL),
(5, 6, 3, 'image', '3664816106b47e17160002724bfe9qh6idiandm2fcgo.jpg', '2316', '3088', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'AnKZDiAz7dxa9A2iy9PlQ2Gajt4DoTqA9snyrdTt3Tpf6YBCqEuQKPnEbMksTrInMwFFPjAfbxbHq6u7TPyafuWnBtRvsrk2ZIHFu3YanilYzNZgPnD54DGCaCrrWvzHZ7GyGbcIYvwo2AHXqsJjqV66481610c4b0d1716000272', 'active', '2024-05-18 02:44:33', '2024-05-18 02:47:19', NULL),
(6, 7, 3, 'image', '366481839aaaae171600082507itbemnrabwefhoxfb4.jpg', '733', '1280', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, '05PhJGQPMCtHQrxgBJp5n3ukiBBl3cIhyqZucoR6JdIHtSRQunylNCshnK8KRqh9GkR7fessask7djAMkt8kpeh2kR4bdmJvroFzn77IUxQaTURoq7yNSvlPIYfsXUV5vJnqkrdX4kZnJLHWy4Be8C66481839b6d281716000825', 'active', '2024-05-18 02:53:45', '2024-05-18 02:54:21', NULL),
(7, 7, 3, 'image', '36648183ee61c41716000830f32irck3gpquliq97mx1.jpg', '2316', '3088', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'YmmXKMcnCUZZue7v4P4QwethaCpGNXMRt0J7SLNmMj50DYRvhr4grQ3kQL8POttRApPy3PSrbN8vPw5zfTnhD4w5fuKuKmK261eDlrylMOv1LRgDYjy9igWbkCGY44xkmnLZXj9nzfv42K4XgAdguw6648183f453611716000831', 'active', '2024-05-18 02:53:52', '2024-05-18 02:54:21', NULL),
(8, 7, 3, 'image', '366481843d100e1716000835vbg8dkjigqnfmzoetdrj.jpg', '2268', '3024', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, '2jI261vbUhzIDy23gXyQ4Urxox0ivgbYUYFg3nqXqEicRMkZxxv5W6u80OlNxaijrgGLsU567HfMZR8IFR4rEp54rvA3rirJJC2umLEvF9q649YAqq70CwISAgMom37aX7xU5tJyDLICgggaVr1AVe66481844493aa1716000836', 'active', '2024-05-18 02:53:57', '2024-05-18 02:54:21', NULL),
(9, 7, 3, 'image', '366481847c9fb8171600083911qufxifyop78gpxe67c.jpg', '2316', '3088', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'QWtbOVFSJhHGFQqtMAstf5KobVTZ5ka1GteWVxJFDenDfjNCmvMIwbqGHZfV5q48jf98LQdWKwLTG65YEgsSjHm3nxFC71GrTOmiHcwjcSxRm75FLQA10QnKpADcme9kcuvISV4ZsBBThViPtIXFu966481848321831716000840', 'active', '2024-05-18 02:54:00', '2024-05-18 02:54:21', NULL),
(10, 7, 3, 'image', '36648184c62f281716000844dgx4v3yjxsz4yzkewohp.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'tHhzFPOK8XLbb810SgHCfLfg8XayTPY9N6l0vk8FJohaOATZlepm1YlUY9aklQFsy7fyTzRU75mfXOVLNB6FmbXqqzAqXIPZx95tiALUKD1HWtgJdSReJtxeJoRFEm4JhN7HBKUZSVEH0LoId3hjv96648184cec4fc1716000844', 'active', '2024-05-18 02:54:05', '2024-05-18 02:54:21', NULL),
(11, 8, 3, 'image', '3664819bf11e411716001215gkscrptaw4g7ktkr7fhc.jpg', '2268', '2879', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'InQYTg6V3kafvPv21IVXR7lg2MPF9UFqwzdxp9p4ZwsaL2UbDmYb8rmsr2zaaQAq3yrEb5tNkXE21tJmb95qmLPkBOde2BBKcjUySL5hzyD5qRRmtrW5hwXtM76jv6PrXXokj9seqA1vV0QeW8lt63664819bf6bd5a1716001215', 'active', '2024-05-18 03:00:16', '2024-05-18 03:00:48', NULL),
(12, 10, 3, 'image', '3664823250f5e517160036212q8ty8ygywu4big0zg8t.jpg', '1080', '1080', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'xZBDkNGKd8I2pEEW0HSFZbcGAIeSo7hkBiVFehwZwK7yAaZmoYOKlqy8DxdbQpU3cZYdhVTtSQVXfYRrSb6XIfeMxcsD50fhEvbVOLPXjS0RSFkHMyi7mbDpMV1ZCWVnIJ3GQFDPsCVBIThx9iDaRi664823252010e1716003621', 'active', '2024-05-18 00:40:21', '2024-05-18 00:42:49', NULL),
(13, 10, 3, 'image', '3664823a826b6a1716003752fhr0tambjs1dsexnwuxg.jpg', '1080', '1920', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'U5kz5JX3ZyXMQccaEwF8sDcejoXwxhAHj2yY3C1kvA9egwVA9cvkaoLM2GPkaeZ3LBAOtfrGEJLSpus9rsHcXxvjrvd5Joa7kqeYAp8dGD6RprgCQkbl4qJ0vh4L2EhiG45AvDvb6KIKIohCcw8uD7664823a83e0471716003752', 'active', '2024-05-18 00:42:32', '2024-05-18 00:42:49', NULL),
(14, 11, 3, 'image', '3664828e53d2f81716005093ym4powgp8x51ibcl2o8b.jpg', '640', '800', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'Jfjpev505pseAkCirR9n1B7GshV8Bkn1JHdptSDztF4D3hINJdsnW7fbsRmFVEN5sfqvgsNzWVoladPwYcO93ht8d90KOzlaIFQGWyMW7tb7cBJ3OxK2CnCem94huQpmWTPS9xneOJxtmMjkevAEg5664828e5468e21716005093', 'active', '2024-05-18 01:04:53', '2024-05-18 01:05:34', NULL),
(15, 12, 3, 'image', '366482a9670a011716005526gsgam2sd3i1gpgd47qxv.jpg', '1080', '1345', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'Rgp5GCFxlLlSa1OAGAhnpHWb3GFkAc8BKkH4PcwuUn9ZUf2ehdP2BHqHkB0OfiJ4oImKDs3Rpd4aumHVmGGetxrz8sFWDHiuwa4z1FXcvDbCspJ0xmYheOGRgzu5v3ydGU6fx1JnFd2jlp54c06YeC66482a9684b541716005526', 'active', '2024-05-18 01:12:06', '2024-05-18 01:12:27', NULL),
(24, 23, 18, 'image', '18665918d8a76da1717115096lbwvbaikvhnb03hiaebs.jpg', '1536', '2048', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'QhRfwNkzqFgmikyLY62BQrzCllRzYIGu1F7gNn2FoaeUZ3aHuuhlTuUFOCytVzcAZRHZ0QTaUCRjLVRGFBDHCCjiNlf8yP57yLpE1wWDF2Ka0bnRhQ7U2EtUWRyLg5RezfLb40lURBkhk1c8MnzJcR665918d8c95651717115096', 'active', '2024-05-30 21:24:57', '2024-05-30 21:28:05', NULL),
(26, 25, 18, 'image', '1866592ae7be0c41717119719mhaxxkn7eujsp1gl2psn.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, '1rOEAU6wU8xXX5AzkF616HI4LaWSVlBQcws9VFxae0l1Bom6Nx4vVgHh4d6mZHfXl6wCpdRYufeVHIkbmihJn2ldcxfKT39lCrr1tqjKGF7NBvkMhHYOYOxmsZtqOboPtunI6OLjN9oREG5Cofx12c66592ae85535b1717119720', 'active', '2024-05-30 22:42:01', '2024-05-30 22:43:22', NULL),
(27, 26, 18, 'image', '1866592d2661aa21717120294qb3ir9yxcuivdwkxjwu7.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'LVdkV3q8RgsGpyJG2RQcOOcNitqbe7esU5WT7j8A372niA7UdKa3l5NLeZcQNiFGRm19IhnhEsyQHNsrLdCuFWOrjpAts3r78xkJ3wzsFZmMryKj8DDitnV7xRTKnioo0orHQkEQXvrtcKXuSywAL766592d2703a701717120295', 'active', '2024-05-30 22:51:35', '2024-05-30 22:56:00', NULL),
(28, 27, 18, 'image', '18665934520e7df17171221308p5xew4ma3aptsoofhmo.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'CRzM8hLWs8acckgbbGrToxGemOIKanOAo5Fvhf9DV6TgOz8imV0RjBzjOXJJ9aN46KOA8O7zdqczRwi5XNt4b36ilYPxkOLMVEUEcNjlyJjnr6Qcl8WcVH6lmykHrnRf6Rb4fTnOxkZ9PRWcC8n2T2665934529c77f1717122130', 'active', '2024-05-30 23:22:11', '2024-05-30 23:23:26', NULL),
(29, 28, 18, 'image', '186659428e48685171712577404kzboyiuux84jxekzqf.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'OclK7xogxNpNuiRnoMneroO4KwTUZK2C45APYEkKOMpp371C4bdXE2CndE51y36v5wxDFgKGCS6ZankN4I8onn94fEyNQ4gSkU4cZifIyYRcc7q01NSJohS3m9KhPR39qnoCr2k6BwW0pFDMcccjJE6659428ed0c861717125774', 'active', '2024-05-31 00:22:55', '2024-05-31 00:24:33', NULL),
(31, 30, 18, 'image', '1866595c79169ee1717132409nmywodnrcv08few52hgu.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'P0uAhwNUK5zROk2H8m9s2noMX05irjnIhMCxdJcf7zKVdPl2Ring9RZc8u33m4fl4qgFFnhR7UFfXPo1W1LaCLEao9NyFtr5MOSwgxxaANxz7R0qoEat7TNGtyxQKvwQR26kQPkRvqQv00UjbOaaBe66595c799ebf71717132409', 'active', '2024-05-31 02:13:30', '2024-05-31 02:15:32', NULL),
(32, 31, 19, 'image', '196659738a7fdab1717138314h3x6qrns8xv5ezvke96l.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'ATE2p9hMG4vS65LR5uWz8gNnFsuOBmUCMm9Ikc4zU8Bc5nCLZQbTsUNBe4jCDwbmpVY5HAesTxt8zWtIpLoj47inDjUBqIqtOP2hQ06imCYIZDZzUUz0cIQVyl9frSgxSHAW2p6t2j0C2EreF8ej1G6659738b02a5f1717138315', 'active', '2024-05-31 03:51:55', '2024-05-31 03:52:24', NULL),
(35, 34, 19, 'image', '19665975239ca531717138723lqmam95ibetaqcppivnn.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, '5qgx8FLHMSO7QsZceom2mGdmo4HPp50sia1QHicoEdtoxZFciQQkoUwrWnDQGkE1a3cVBm5SoFlr8NIC7xVlqdg1XTSmZvX3eLUex922Im8zdpnWEbn5EQdYv1tFGeT9PZ1N8qB5Cs17bV8ClpJA6a665975242ba021717138724', 'active', '2024-05-31 03:58:45', '2024-05-31 03:58:50', NULL),
(36, 35, 19, 'image', '19665976f0266951717139184y3ikuc4vyc7pbw6xfsje.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'FK2XhdagoMXa1xj7suYhPACnVSOQARX9wzMglbgx6BbS37uMSiKSURkoqugQlkmTlxLzj3ZFyDWyCgFCqQve9fvgXPTFrnLtHqCDPAFxd4t9xce4wQjvncfv0CpCaw0c7e4LcSFCdrqK47pibBRNOZ665976f0976dd1717139184', 'active', '2024-05-31 04:06:25', '2024-05-31 04:06:45', NULL),
(42, 0, 19, 'image', '19665a5ff9656da1717198841w1lhg04zqfsmkwemyrxs.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 's1Adey9Cw7G6eUBcjcSfX2vRMCqmASnEDxtoNWeGY6XZK9c6iWFq6jfhptFhoBZvMt8dXb8TKlltaQk9Keuy5tgKrfyuL8wrjCSRoZP0hXlOmMzhBKq9gsD2q9KkmkKbsISS9ACP2SNm5FhSWAlrlt665a5ff9dfcdf1717198841', 'pending', '2024-05-31 20:40:42', '2024-05-31 20:40:42', NULL),
(44, 37, 19, 'image', '19665a6069c518d17171989531gkiy8fh9e9qbs4rwvaz.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'n3sZJb06OR8MTvUWeBTyeh2nva7QbKV13GPhDXYJ9X34ODM3dNxghumk0hDYHJwmEcug66mF9JVo3WH2cJcyS9t5TdKRHp56ToPbL5rIDQSpdAmOpc6rypznvqlOihnCIfxcRrCokoBFRlWToAwjh8665a606a4ef071717198954', 'active', '2024-05-31 20:42:35', '2024-05-31 20:44:22', NULL),
(47, 38, 19, 'image', '19665a73fd061f11717203965n6c8p0bkgojp21403s5o.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'IWarNWiraehFSGECNzcWa16GjmZ3YUsEHysEVQQfihHkC7rqUnFWpSmsqpc3nBA0SXpc8s49QuAp0es5FFoGTnV8aU0Kl3AMDdSOpsKFTbsenPgU4yO3ZwnmcqAk3eW6botNWlOXDTVx3WnpALqabC665a73fd8ac231717203965', 'active', '2024-05-31 22:06:06', '2024-05-31 22:10:06', NULL),
(48, 39, 19, 'image', '19665a750ac5e3a1717204234wwo74wepdymoudb8kxg4.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'v98KRGHfKUTzbhDtECh2D9yCcfSlozHyJXqtiQSJA70NQI4llukZO8B88ojujvnJwbN9NIT0GTENPWQGgTRyJR7WT3mPgRCRxi7jKcGu8LM9T7EQD1T2SGdrlXxe0mwjJrWq4rqC7saExOzCPWx3GX665a750b478a21717204235', 'active', '2024-05-31 22:10:36', '2024-05-31 22:11:18', NULL),
(51, 40, 19, 'image', '19665a75b0ad5d01717204400z6twgkkaduhae6giaymx.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'WxGQrHWNzqKvsjq6XteoOLjUWt312Kb7hMTMtT5M3XLYxhWMlWSz7LDhBZQ3YWN56vCLHnSrBnRdNFgCnDTLrdlE6huVNlJcHYVZ5RDCeV2G0V6tuJC0uruI2Myjm7xFluJFRYgglS08NZ5LZrhBr0665a75b12e8eb1717204401', 'active', '2024-05-31 22:13:22', '2024-05-31 22:20:03', NULL),
(53, 42, 19, 'image', '19665a7903f3c281717205251ljn9rmgdedexcyzsafvf.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'BXwHreoecvb0xYvNojQtAh9JEeZoXixbPXvoiJkUheywqzZftwZmXnC8afhvCglhDwKIwZZSFwpLxx6WRUSryfQar0LhnRk7XTNOIC9eZpPxhz8eIQleqGARj0j8IZUuaQmTcXTo3CjVothaU3iUb2665a790480c061717205252', 'active', '2024-05-31 22:27:33', '2024-05-31 22:39:03', NULL),
(54, 43, 19, 'image', '19665a7bdb6b9021717205979aeq6fbav06rbgemb5wpa.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'U95qDGDgVUeKuh9my5ANKKERylsaeojRCfvCOWhuN8WBkADAKAf88TA13ZzDutOxnXSrz6MdXAkal7X6lMvuToZgtenBm5DmvVJYvrSIm2R9DYgzx22DfvfLvogjhGrSIJikXzeAcaGwtA0hJB8XyH665a7bdc0d2611717205980', 'active', '2024-05-31 22:39:40', '2024-05-31 22:40:33', NULL),
(57, 44, 19, 'image', '19665a7c8704c551717206151fvovofprrsmmmo7ce8jk.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'GLPIYqzX3XgTCIMQ28nzz3zb1DB9AZIQPnB9I8A9sibCZ2pxt21LKPOxxadzmoMI5p0QkDMsmi9uGv0uQG1jddk5VkkRLnUVbePA2l3fIsAkoNitjsMPfcCgUzHVkwGlaThl3nWqazmqfbZjA0g0OU665a7c87805b61717206151', 'active', '2024-05-31 22:42:32', '2024-05-31 23:10:41', NULL),
(58, 45, 19, 'image', '19665a833e9d0cd1717207870sy5gp8cde2tmzgoxubj6.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, '3UUCbaxH7sRnlLD6Rl2n6KA6s1MKL1hcMPbU91bQSCIcE0aejtTmXCEUuPm89QSdlGf0DZKRjCKGAPp88OHKaUuUc2Kz3yGlwDpGRQKxf5VHgiCYEWj0Ucjuw1ezkpnZt5Tqk28Lu5kN4TAovSfSRX665a833f2c6e41717207871', 'active', '2024-05-31 23:11:12', '2024-05-31 23:11:33', NULL),
(68, 46, 19, 'image', '19665a879a61a821717208986pd1qf2g0co1axzepewcb.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'd8l4pCB0wcIFW3AYZpVDCO5D22pGMylv7fyPDUeyeMPWsP9A9rqeBQMMEf30kcVvkx8rCRkXwrYwZxJ7zfJkwxqqr4c6jED3UEOF5PRNadMfTDODm6zMh0Xp7julsu0etnylnWZdgIG3ZWrs2ZHKyQ665a879aef6051717208986', 'active', '2024-05-31 23:29:47', '2024-05-31 23:30:46', NULL),
(74, 48, 18, 'image', '18665e4bb171e941717455793bcymfhrcdeqdxoj6ygvs.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'OSb337kKhG7jzRWXkz8Rc0YlfqUpUXLXB1CUSsTqT1N4cemBNWxhXByJ7Wq0IBf3QJRvuwoTbTvAxeXsj1MOrGTmPkuw95UYwPucduhGUCQzamZBVjBUOi3uNSKA32zRoBMbs8mXOI1zFh9awMZGPF665e4bb1eccf11717455793', 'active', '2024-06-03 20:03:14', '2024-06-03 20:03:35', NULL),
(75, 49, 18, 'image', '18665e4f140f1f11717456660jnu0dt6xatkoqx6310dx.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'ZpCvSJHCmLnWqloxE1U3JXxkXqiiJm1pr4XPEqBq4fJ8ZFmaM7uPsqKylgzQ2ZegrgdD2s8012u0NAS2OZVPwDqr9LMqIiItM2bchGsXmi5qPNmJniwsGyBUfKxye37wZgsboziq1UYSB01edzpk7R665e4f148d3811717456660', 'active', '2024-06-03 20:17:41', '2024-06-03 20:18:06', NULL),
(76, 50, 18, 'image', '18665e4f85e9be81717456773kqymxeeidt83ydd80hwu.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'eTYB33RfqnNLvDwt6IpZowowLZZYClEf8I7ZnYOEkafMGgtAEXZl7ujCPAacLs61Gj6WMKPneyfzPj52XcKViZ7l7djTmb08SZmZVHRl546I4MduR68EcsfCrkCsOwF8etnHYNPU5TJRBxXhec3uBF665e4f866b6731717456774', 'active', '2024-06-03 20:19:35', '2024-06-03 20:20:04', NULL),
(77, 51, 18, 'image', '18665e4fcb9eeb61717456843vgebecurxeichbanrvyc.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'zI6QJTyPsJQGiYxf8CirYksAc6GXU6TiukHXkCybYegwjXvPNfdkZ5qiEY3U3bp6QCSI3NXZ6B5I8djg9Ir7CHi94PKMYRlgjcoFWKZon0ff0YqyjoxZQzDzx0JxY1aGmgvZsc3T0TY0y6HPBPi0NZ665e4fcc3bf411717456844', 'active', '2024-06-03 20:20:45', '2024-06-03 20:21:20', NULL),
(78, 52, 18, 'image', '18665e50eb46e3f1717457131e08geecrghyxrbspd2fz.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'UZDti1p281o2erUWCMGzekOEmg6QU6OMMxCBAWipKgoDtUChdOTxjPVKWz9Jo2Prm0tiQhxqbDRYcDd8QPnUmDaJK6d7ns1aKjyTFkIvbpm6lV3ThCkmKflTrL8DgYLz6MjHUsNvwN9on7rDxQ9VXi665e50ebc21c71717457131', 'active', '2024-06-03 20:25:32', '2024-06-03 20:25:40', NULL),
(79, 53, 18, 'image', '18665e5223aa03717174574439l3tyeiugswm9jtnpe2z.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'RT6zfK4PBqyHAGHbeOri7QLebjgJMYogfxasZlqIuowVCzFSnAYQkR7DPf5Y2nGD2EAh2UfBBHsCxeNUS4QxjwAAyVcLHrWy0gsV3N4p5TG0XUU29kGomKc5jF7QwaUUg8PE6P7lyvQ5GgNve4rWHI665e5224284a81717457444', 'active', '2024-06-03 20:30:45', '2024-06-03 20:31:00', NULL),
(80, 54, 18, 'image', '18665e52ab096481717457579usgmfiug5fh4ud6melrn.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'Qr4bTWJAchEWBHHWusjUO4pkPMJp5KLAgPqWucGInBBGIjV48Jfcyl92kmaSv5imTJ3XFvsmuDYARcKhDSI1znPXLgEAc26ZNcHE0Jd1kI7wZVRDAipJOSVdXW3Y0znz6UiBAYFVGZjSAQkQZPTt8H665e52ab886ae1717457579', 'active', '2024-06-03 20:33:00', '2024-06-03 20:33:16', NULL),
(81, 55, 18, 'image', '18665e52fb4d8241717457659ebmryhvgriuat1wu8exb.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, '25coHSOhvUh1kSjcgFbnysay0hIs4slZhZjLl6FyrhlbJ1YAwZX8t9zZEAZrxYPEoNLi3YxPVlMXz5H7ujmwCQRKiTV0k3IiMahacQ63bmWJTGAagMIc4ix9fvnezNrOGypdEpWkEMaGo2vTSzEFTl665e52fbcacd61717457659', 'active', '2024-06-03 20:34:20', '2024-06-03 20:34:29', NULL),
(82, 56, 18, 'image', '18665e5f2e656091717460782nkgsj1vufciadwyyodd7.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'uMVdrXIeTYOcUNiyZXpE1mEsuTkN8RLnImk05xnEaPCUBQ0w96ysgpObP5XoNvn1vCfOuXDZkKrlQEDTByQ1c87fMqaQgJyfjK4qivBEHiYUzRLmGYtTry4EinAgrLLaiEFs3opJJ5cmaSvg3e7Ytj665e5f2ef359b1717460782', 'active', '2024-06-03 21:26:24', '2024-06-03 21:26:32', NULL),
(83, 57, 18, 'image', '18665e5f9de87f01717460893cf45pdcdrnbq37nzqdon.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'ZlpfyqFD4oc7kJONWlGeXh7wnNm62LOCulTm4EOE6aLncjfdcbAvUXfNuhNdZi1btcog8ZK1Q5rfRHprxsX8uLpGhpLMKmPZWvFdlk9lAKO6Ig7Yj3N2SCOtixepei3glUi0DeHtjt37gGxllRwXSc665e5f9e6f1991717460894', 'active', '2024-06-03 21:28:15', '2024-06-03 21:28:19', NULL),
(84, 58, 18, 'image', '18665e60ab8f8c91717461163ekfisqusogwgtblmmxf6.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'rUdxmEamhUueGyyP8sHnbXDbO81bspJv0t9Eg1OK6Uqga8mMPgswJJd17e4QRH8sLkFK0FDqSVGBtQeUrtsOLJBV5mvAe6d1xNfwMJI5VRgjvzY7tTma0t8poMDdZDFor0ucrhmLWsKKqIJfwo2F4X665e60ac16c511717461164', 'active', '2024-06-03 21:32:45', '2024-06-03 21:34:07', NULL),
(85, 59, 18, 'image', '18665e61495265e1717461321qk14u9cloputb9nvbqew.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'NGQMuyvZhSREc7wYFDclSZyPD1qNmuR2dMQwf1y6bevitnFSh1mL57lbgpkSWfyIqZUbQZggWxFE5t4uS7FjCh7wN1lc2WJqY6SyxZZ4PTusCFtWeKJjUNOok2xU7z9jTFcW6opUhfKxKxZrfE3YGh665e6149e75b61717461321', 'active', '2024-06-03 21:35:22', '2024-06-03 21:35:27', NULL),
(87, 60, 19, 'image', '19665e6271d2a2e1717461617qa6qgwvoamiqkya5klm3.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'DCaw9kXf3s95YOHK2pfJTHV4UztDeRVjXnuOdEUExDImeYWKHt2Zp01hBWoH2U7fOUdgmAUcjSfjM81oRSz8gPbxUr6awwVXDwvpXDYkTPOUpocax0HwHg87RgRVgK5xH39PaP0hXePlZLvkGFJeza665e627267fbb1717461618', 'active', '2024-06-03 21:40:19', '2024-06-03 21:40:25', NULL),
(88, 61, 19, 'image', '19665e63dbecadb1717461979t51nffzgcteulm3caa7k.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'aiFivS9mc44YttYY3On2831gJzcgzLC40xmP9AEqXd7cTUQg7FBi8bGrDjCVVB2ysOhNbE8NPO8T0CgsJyfASoWu4wS8B5EyZirw1QFqk487E1ah4H1rU2eLeQsVhKYZk5tEiE8Z4NpajCmAt3oQSA665e63dc826981717461980', 'active', '2024-06-03 21:46:21', '2024-06-03 21:46:33', NULL),
(92, 62, 18, 'image', '18665e67f722db11717463031ehbbd0psqt63xysjqmih.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, '9TTykgyAKOYOz9UhLjAvTzBdu7PxfIgBfTaOhqbX2KhwcQ50iG4HuPHKpd8vrqj514RHdylKJevPInlUP04Wwv08DtFHDsN2RNscp2g2C0sdHWybiJHOpV6i80zjD7ZghsQb4UuMwFRaGlzxP1Xs5a665e67f7965441717463031', 'active', '2024-06-03 22:03:52', '2024-06-03 22:04:02', NULL),
(93, 63, 18, 'image', '18665e681dc5e591717463069cq2afrqhg96qwmedflnk.jpg', '2912', '3883', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'c7cZEVB3vDPjffzQZMXcHrCrNOAPucgGb4ZphwJF59TVmgopV82eE1gAJfXhmCxG6X8Wa4r4qK55IdsrodsnLGshTFqj4s6SpUDkLxT047SrssgNO5odMtbif5rqfIlfxOEY4cBlaScGc2Gu3AfUk3665e681e40aef1717463070', 'active', '2024-06-03 22:04:31', '2024-06-03 22:04:40', NULL),
(94, 64, 18, 'image', '18665e685cb08981717463132kmvnvsc3czw3vbtmhire.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'XVyq6gI0I01XOEspIEGHRQIIkeahDGc4vK7IzqqZOcgegiczLSBsPNJrKRhBeE6XcHMuT0dpItlrhSogoJVEQhvcDcoS8lU1nLrAfu8bqhLOth34i9stWJWoyEW3fovnNlmsPMzfxT2rLbSPaH6mJA665e685d370581717463133', 'active', '2024-06-03 22:05:34', '2024-06-03 22:05:39', NULL),
(100, 65, 18, 'image', '18666103f5874b51717634037ysjoc34lgochoolcwjxd.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'IY8ZtYU16WihiJo47Z13A72hfltShocP66GdXyx43OzFxGyBbt6EcB2Qy2WD0BXdbiVz9Zls8Rf7EAD7LxVMH0Vz89iQWdFGOyxz0mRoFFqzct2DZnH4mnxz6MKzeYTNtgR0k61zGF3tmx6JPD5i8g666103f603c721717634038', 'active', '2024-06-05 21:33:58', '2024-06-05 21:34:21', NULL),
(102, 66, 18, 'image', '186661041fb75331717634079ujudgd05odgtjbdbrzdw.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'Y6VTwvzwf8rKpbLOtHpkiJJqpxqNi0u2au9Q6QbWH0Daq80bIDtx5sPkUUOvR0cGn4HPb9LVrsZOwJ03HAUFB5hlsqQidCrSot0tHEGFCtwd1M4SWgBtR8zi3LJMOGSGW7lP2lCBQE96DOVmzqk1BA666104203a6ff1717634080', 'active', '2024-06-05 21:34:41', '2024-06-05 21:34:52', NULL),
(105, 67, 18, 'image', '1866610468255791717634152fmcjwvubokfvmdkzrbpg.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'Dvc854TCWazN9B7IBWObDSmG3aJwDqrQC1nblHgIOiIkdjTOgYM9fTxWjDeyrTu9xdsBG4KQLeHrN42wWn7kOsefxBxPbCGzVOBVer94GZlm5xAAjjSsPZCKVoevM8JAJBtCstSpQQoXpDSWMdfkGn6661046896c3a1717634152', 'active', '2024-06-05 21:35:53', '2024-06-05 21:36:04', NULL),
(114, 68, 18, 'image', '1866610c4d902e41717636173dt7uelhqhuiugv9y3fik.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'YYSxCOEjOzTeNhY1HTWdDMM8vcEaHaZqsWMghnVrpJGrxTaLOPwvG6kyoBcXGV2u40mx5MXEW2dfCnQOEZ1aBoSEFKf0858gUxnQHvGnnlBQ1mRwfuCheQeMpINyvJHT6wcBBj7WfO7X5sArALfPJb66610c4e10d411717636174', 'active', '2024-06-05 22:09:34', '2024-06-05 22:09:49', NULL),
(115, 0, 33, 'image', '33667b870fc27ab1719371535nzvnamjrqwd0yojxpvr6.jpeg', '750', '1333', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'IxeUbAWi76z92fpGFmOVAWmU4AXaplHZDsrani9reqfk5VxKi8ZTfUdEo8GI3yFqtn15p77YgIoj5i1BfRNdboE6SxwPmX6XBefhMWGQ6JVaGtPvGqtYBbSj3IlgXmUPu1Fe0ARCtiLMborsWh8elG667b871005f9c1719371536', 'pending', '2024-06-26 00:12:16', '2024-06-26 00:12:16', NULL),
(116, 0, 34, 'image', '34667b874dd776d1719371597pvjrcgiv1p1ydcqajbet.jpg', '4160', '6240', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'TXCZhp1Mvq4i2j6Bs9RgaWcmemDUTUf6HzM6AxCtnpTgjKpvqNTIoe2bDPHzQR8CfMEJARPCQnkboZ2ObzPqu02IvbipC8aozZkzEhcrMCWDg0VNXCgzk04z1FxQaHLyElXfY987YfzZ2yt9mFtUCj667b87536a2561719371603', 'pending', '2024-06-26 00:13:24', '2024-06-26 00:13:24', NULL),
(117, 69, 33, 'image', '33667b881aeb2821719371802oyzsdxopq46szou5hioe.jpeg', '750', '1333', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'GwN2pngUtRV4TdH8PiQQwAyOChnHNQGWAM8t2TXWMgOS666THrdz3GmAav8IBgZ7zoF7wHZfEjc9sKCox4F5xpaayYsCBFLsqTweadc9pqAQCbHyHJMQedOAmExguyIbGFEjge2bUPGl01BOa8t5CF667b881b31d871719371803', 'active', '2024-06-26 00:16:43', '2024-06-26 00:17:13', NULL),
(118, 0, 34, 'image', '34667b8a30efa951719372336xew6lfhbnsapzm2gi92l.jpg', '4160', '6240', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'yzyZnq3Hi2EwSvFAH93TcjDOmRfazA9Q3Djh8Pcjyn21LUPBwDlf6Xb7meSuoWP36i0kkKHubOT62EmwGgTQSUvxcD6kAWtB2pN47oxU8ZXJESRoNgv5bOCDoecLWg7VQmuc7nzkqvyXKa4Rt7b7Xk667b8a36559021719372342', 'pending', '2024-06-26 00:25:43', '2024-06-26 00:25:43', NULL),
(119, 0, 34, 'image', '34667b8adfc08e21719372511egq8iwuejmkxpwymwjdk.jpg', '1600', '1293', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'hAbn9EBJWvBGhXKHGJDJq3gxZIsj39Pyh0PDvnOa4hG32pu9ttNPHZvhKn2HM0x0QEzgjaTDPfr1TM7pardMlYrjgKdqq6p8BzGDVXLS970SgE2rIYTdsuJo69C2yzCUkCvsre2SEtZ1hiqIdrX3mM667b8adfd51a61719372511', 'pending', '2024-06-26 00:28:32', '2024-06-26 00:28:32', NULL),
(126, 71, 34, 'image', '34667b9102801e01719374082hx8rz4jfei7kobgqmpbu.jpg', '4160', '6240', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'E8xAjwP4Jz7WJSt2womFHjTGm8R7UCre3kJZlefsMlm1cSavU4kWglRBVJBSJt27cnEIfkbuWv25Rezj1PVE4EIvCsP6rxKrQEnmyfERqP5FdbICJ2NespIrT4ksAZqq5wiJbdK9nReqh5Dl03sZGv667b91082e9091719374088', 'active', '2024-06-26 00:54:49', '2024-06-26 00:55:53', NULL),
(127, 71, 34, 'image', '34667b91115a66f17193740974uy3kogr4fw4hypi6r6r.jpg', '4160', '6240', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'WAJXWDN5uvMVljqzmU07tM1Bxzn6HA54pjOiiisF4HvtqNECIIMDElyscBjtriSdptB2FoVPLXt8kBBY0fYxvHrAgB1amTZqyN4qymbscAXE0RacYrYkkNMCWx1bTYkr7h4cEzYMFJV80Bx1PMDt98667b9116aac8a1719374102', 'active', '2024-06-26 00:55:03', '2024-06-26 00:55:53', NULL),
(129, 72, 34, 'image', '34667b94bcec7de1719375036jpopxntqjxinknux2uxp.jpg', '4160', '6240', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'OIwALnvWr38BHRNh2zsg4kqmb52UhPK3gki2qMqrJRMvaXFleNI3V5QX1TnIAV1F9Kcl1kmyjhBIctboOb3asC14mh6crUAwkAUQJHjhGQtJRZBUMzspaXt1EFZE97xF8YfgYbANGlnoUVGlOx6KeW667b94c247fc51719375042', 'active', '2024-06-26 01:10:43', '2024-06-26 01:11:50', NULL),
(130, 73, 34, 'image', '34667b95390e1431719375161kqo1ncwpgueypz78opto.jpg', '1600', '1159', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'lEChXseGtzHbgZ9XvdGYE3pKA89gaLQKf0DbTPoIfJlghsuwU133CzPLcFb2lcL7ITZO0nnjoKhUS27mifmunvqOB5JeWLblFdWCXrKzrwOAqBAo8OH0FZRcTL77W84T8BZuNzbx5tfbrlyZwrRTo6667b95391fc1c1719375161', 'active', '2024-06-26 01:12:41', '2024-06-26 01:13:34', NULL),
(131, 74, 34, 'image', '34667b95d0ac0aa17193753121colbs5p5cp130xdxseg.jpg', '1600', '1066', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'YBe3x39gx9unqAPLuv1rqZSIS6HeDamV4ufyQZWNxfFtEBqptav4q98Z6bZVniOuMkcuPHf6nnznkrMsusvg4QubvGP7R5t6HRYkxRh0bOuzxCEflzvXu0E3RgYyKsDxMFnV9PbK8zvBvgCDGyGSqj667b95d0c53af1719375312', 'active', '2024-06-26 01:15:12', '2024-06-26 01:16:22', NULL),
(132, 75, 34, 'image', '34667b965c1608217193754520dtj60dvnepuqw6yvlmq.jpg', '1600', '1293', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'p4D2xkeg3qrQjL3ACO0RyL7zkXHJayR9bBKZ1rD4c2cVhg2TaHAhTqMZSZ4ko4I4VuVJhZTUGf8zDI9prd8WQqo6NHzP4mQwVOxMy4IDLVauLlTwIpPKXlheQHV1ZpQIMEfH4F1K5TwhfP2i7Vskiz667b965c2868d1719375452', 'active', '2024-06-26 01:17:32', '2024-06-26 01:18:33', NULL),
(133, 76, 34, 'image', '34667b9a00c16411719376384k6d67e8eti5cwexbowya.png', '720', '572', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, '0h2xaBUuz0NzF5QtMbN0NhIHZqBn8qj1X8VRpN7RYTJ1M7qTUHkjDVm0tovwIM6hbpU9oLOZ35yGIRnrQblvCoR9Dy94KFSOU9SsFg4c9PmtnnLRxwcAoYqQDSQc49nUcEi2rQ05FQWYGUbgluoi02667b9a00c8c0c1719376384', 'active', '2024-06-26 01:33:05', '2024-06-26 01:33:45', NULL),
(134, 0, 34, 'video', '', NULL, NULL, '', '34667b9aedc8b9a1719376621hbxyh2glappn46ggxmcy.mp4', 'no', '', NULL, NULL, '', '', '', '', '', NULL, NULL, 'ER3uAWJP3r5mcldMMRQdOh7ms2O6GsdCgTUIrIqeDOF0a1Cw95XwsLPALoc8HTfnECAer6cFPO0IBoGUuMgdjNhWctaXKJ5jXIwM38Ysf9YDCxzJMNy5H3WZgMMcP8hRYQ6TvuM1npebunGULAPnvR667b9aedc97101719376621', 'pending', '2024-06-26 01:37:01', '2024-06-26 01:37:01', NULL),
(135, 0, 34, 'music', '', NULL, NULL, '', '', 'no', NULL, NULL, NULL, '', '34667c6686daabc1719428742nzcsnbegmbp7l2r0xcaj.mp3', '', '', '', NULL, NULL, 'uNjfSckPiywFA40gD1ch3Zes2t0lPWTmKGRwUd8oU9apMqkZtbwKoer3dCWFL12vFeRybCQFnnMSZqc78m6JD3qJCP8GCp4gK0e3c7hTZ64dvQ9Lc8yEMx8qKPDI9g29YM12B8iUjONcaeGDw4SoUN667c6686daefd1719428742', 'pending', '2024-06-26 16:05:42', '2024-06-26 16:05:42', NULL),
(136, 77, 18, 'image', '18667c95e4847f817194408689kxsyvporafpsrg40p6k.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'uhndCFXvoRkUNExpGnkxTK7GmGeq9RxnHMoz2jEY6rg0Tu1F1ED4HeFBEGBra4JNAHz8Xbxxe6rspT8TcSIeiqGi73XQV0NutBU08KaLGnZ8RKlYnsF6GbcKYvOM9jzK31jkZZQ55HUKtrufj93BGv667c95e503c661719440869', 'active', '2024-06-26 19:27:49', '2024-06-26 19:28:06', NULL),
(137, 78, 18, 'image', '18667c97a9aff491719441321xwevxklxe89mmxcy57lm.jpg', '3024', '4032', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'gvMbFLtoJhcnRYdcZwMypTzn8CzHxSjUTzAfSaQLwscS5U76mv5DW0mnzQDCnuaitIH33QkAgTopvOA5xr2vT8Z1LQHNDKdmRHjn2A46K85zrkygYKu3dmDDfe5wZqsjTKTJZqu0f7EYKVBDD6OoiS667c97ac13a0d1719441324', 'active', '2024-06-26 19:35:24', '2024-06-26 19:42:18', NULL),
(138, 79, 41, 'image', '41667cbb0670da21719450374mv1xhxqbw2vssvbedqbt.jpeg', '2320', '3088', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'MHYAI6hilC83wXXRXPtPRQom1OpyrO8tD7wQ9NXaSEWNviQVaU0SuYKuG6ZSHgiLkcwIvbd6akbTD2iqyADASv3N7Zx1fYHJ0qHgxGKWIR2xg4aX351im5Hop2K7yjK0WzPXvk2xsjfRcCAHtcmuxj667cbb080d88a1719450376', 'active', '2024-06-26 22:06:16', '2024-06-26 22:06:23', NULL),
(139, 80, 31, 'image', '31667ccc7e7f9c11719454846wzmfljuv0s34bhhxdqxq.jpeg', '718', '1110', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'wjhUeCAz2OK6j7XM6paV8XMGXCd3Ko4MAs4i0HWNNTyrNv4uSwb4VZ6LGFOfV2TMEcU0EMAAncxFa67fJyDoWIuXYLmOzjtBna0wwEj2mlIhhj3k8FvvUNsrfjRvhuAgd5g4JFTVvXmAy5YxhI4JTw667ccc7ea95a81719454846', 'active', '2024-06-26 23:20:46', '2024-06-26 23:21:07', NULL),
(140, 81, 31, 'image', '31667dc6f494e5d1719518964u0gem4pgwmbcguem0oyo.jpeg', '615', '612', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, '2DgcEZX560JrC8z8cO5QGVSn9bJpHYVccqxiuWK7TskgZgombzYvKtMtIKkobMgITC9S2GdzxLhqp9ciiqui65s5CEH7eGnhYXHzYnuUfUdgmgC446X5SeRA42Sw9JnXO3RDGmj0ee5Ad9V6DifT1l667dc6f4a8f231719518964', 'active', '2024-06-27 17:09:24', '2024-06-27 17:09:34', NULL),
(141, 82, 31, 'image', '31667dc873df8f11719519347eang8vhoa0y5vjdxdpzr.jpeg', '720', '961', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'JFuUnjSGODxH70Vw7uEMxrWvnGjTBiZOnvu0lTz7KD7caYDqjzKC09Zzt65oSWtORhBw3d3FS6wN5mMgpncQLqwnS79WGoGc5JU6mn4ut8kes9OfrTsXMgZSlJH1TexH9Rf1PjBGxHQjz2fGfDmfhw667dc8740e75a1719519348', 'active', '2024-06-27 17:15:48', '2024-06-27 17:16:25', NULL),
(142, 83, 31, 'image', '31667dc8b2b09601719519410srov7800qpaprx0yaxpy.jpeg', '599', '879', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'kV9SwY9ND1VA86XUXvxMKrlDwZn3dAnRYqaTLvs8ZGb81Mw80ThKx5j97npNsyK1KKy54ssLaxIXSHa3z2HQBSJmJhjxLjnQOkVKT6eJ7zNROveDJ2YdXTPeitChuYgcHcwqFaoYnpKMJx2iqxcq59667dc8b2cc42e1719519410', 'active', '2024-06-27 17:16:50', '2024-06-27 17:17:32', NULL),
(143, 84, 31, 'image', '31667dc908a9500171951949659dohchbclipxmytqsbe.jpeg', '580', '570', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'G91MUmqyZxkXeBFnLfz1CDHzAsqqTOK9GjJpe9eS6xZQcfS2edBjptEfYlFSGD8Gt2F9eIokLG3ctfLW6CeeBVj4gBEvM3nk8DJij1cG4UACVhwDEb9f08yP4NqSwYB0ixCikqw8QmQY6HgKlqbcTd667dc908ba1081719519496', 'active', '2024-06-27 17:18:16', '2024-06-27 17:18:43', NULL),
(144, 85, 31, 'image', '31667dc9562200217195195747vdxowot8o7220utuoho.jpeg', '569', '881', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'US2qNiUneJHe1xs7gCBxb8Smk68z8H3KIX6hmwJ5EUyKqCxhm27T61uSLYTZigLWHN0IuxRDbOF3vEsTdPpSDDCuweKyvFYx2WsDAvQ41IhnqIPM5aEW0ilLWAZNZJ3s8fLNhUXqH2VSI9uUK9NgNg667dc9563bf5d1719519574', 'active', '2024-06-27 17:19:34', '2024-06-27 17:19:59', NULL),
(145, 86, 31, 'image', '31667dc9acbf96c1719519660srdzacwtar5fcepnh2xq.jpeg', '581', '899', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'xb60PPjDwYW0iyGMbw2cqBxT8Xhfhz73N1WQz3PguV3Uyr7vfF6QnQf4rfpLKaFp3gehc387BivSwQoeazWw6XNNJlyaIAMz02WOTxpLYC3DkQ0PamdAutAPIJbWWdxXEauVAx0ApOfUWYhGtBQrHP667dc9ace87dd1719519660', 'active', '2024-06-27 17:21:01', '2024-06-27 17:21:17', NULL),
(147, 0, 31, 'image', '31667dca48425d517195198166cwawubqlbu0c0mfaouz.jpeg', '720', '1520', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'mMGqQet92T61tR5Nfon3IwmzPWiQw897z3MHJ47tUF02A0Jfh5CRjMQoZbavWNmInpMSyFiio3rcxLFIGGYFQWwja1td8SfSJPksklkWRh2Y4XltqMifpXOu0aShC2DHYZ4lQo4bXyknlM4veNKWk0667dca487596c1719519816', 'pending', '2024-06-27 17:23:36', '2024-06-27 17:23:36', NULL),
(148, 88, 31, 'image', '31667dca6a99478171951985073dpxca5mktfdirivdvv.jpeg', '612', '662', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'T5Br3X8TPHnOik9TjCWuVsTxXMmBM1XxwWzdBqYvhRs2CvJSr9bB7LRq9sSo0NJzzEABVmzGCNkVlvgqUB5XNTNovdqwhKNITZF5gGLC50c38CEYCCpjb948SImB9WSwAC2utbef5xOK2b1MaGw5Qf667dca6aae0381719519850', 'active', '2024-06-27 17:24:10', '2024-06-27 17:24:26', NULL),
(149, 89, 31, 'image', '31667dcacf9a53b1719519951p3v1arthn659jyqzkm5u.jpeg', '592', '757', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'oItejwpJYxCEQC4Uw533ZIJeqBDCSxnKk8lWXDq6PeYV2JJ153leSCPcPDHWolEdFX84ew0qrOvEGH4KcFyR7YLSgIdZgNHEoZqlegvRYaPz5WvGDNlZKEbGx3xmNVwx3adZxrfRsiF73QAbjGBO0y667dcacfb804f1719519951', 'active', '2024-06-27 17:25:51', '2024-06-27 17:26:12', NULL),
(150, 90, 31, 'image', '31667dcb0ff36931719520015yrnifyyguvur2r1p09wv.jpeg', '609', '658', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'zL1wGaXV4JNlwL0QJIbd5zVTXa5wHrqYUY9692kTIdI5s7dNRFqHQMONpMKMHLG9FTrktFC3NLsnATYzVcmrwN1yNcef4qbrWLCjY70cKjVohV2bMxABxeKsXalsQfzHBJAt8omNlwIHOPqzuEMwkU667dcb101bf0f1719520016', 'active', '2024-06-27 17:26:56', '2024-06-27 17:27:09', NULL),
(151, 91, 41, 'video', '', NULL, NULL, '', 'converted-p4V9nlc2e4bf7YJ8AQhb667e19ffe4a731719540223.mp4', 'yes', 'poster-1QI1JIiKWLyt8htLdVs4667e19909aa591719540112.jpg', '00:03', NULL, '', '', '', '', '', NULL, NULL, 'f26ZB2nIkBNsBbtHSRj8SU4lVqWwHX89NkZAlhd9S3u7lDt1sqXNMrhO1UPXu1enpH0PFxnIeJSLSWzucd3J6v1zyFaf8uI1zPyFG0WFl2OFNHWrpeCHQ7PlQ4f87uVK0CG7NyE52a8VuXOazkKVVv667e195e940621719540062', 'active', '2024-06-27 23:01:02', '2024-06-27 23:03:45', 'OUkj5mMYJEP4pk'),
(152, 0, 34, 'image', '346691f7bbb1e1c1720842171k54seyjb81omqumugoor.jpg', '3840', '5749', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'udUp2RgM3N5Xg63aY6ZbeSG6RVJADRMFEslNW17XWW6qn4FAzHdf5uz0bOtWmAwiG3U5F4zWEg1JlobOMdI2ZEt2G20wIO3VjPo7WwlM9cQnb1VoL37OEIaZawEcmazN2M9KHiW0uBGPidwe9mPCcy6691f7bc944f31720842172', 'pending', '2024-07-13 00:42:53', '2024-07-13 00:42:53', NULL),
(153, 93, 18, 'video', '', NULL, NULL, '', 'converted-b4QmzwWIJG0b9C5hdAgT6788ccb29295f1737018546.mp4', 'yes', 'poster-8TpZitjtYw6A9zxCPfMY6788ccabb8dfc1737018539.jpg', '00:04', NULL, '', '', '', '', '', NULL, NULL, 'VRxl933k5dMzjIYfXJGnNiHERaUHC0B0VJmJLSvib6r0rd1f9lW8rBoU0qR0oheZhKyB2tOX2FLTryteFnMikRdxziUDHd1FVLdfa9FNi0awkpJoVh50VYgHKNPqXuEoIDQZSvG1ocE4c15pTinjNZ6788cc9a18f8c1737018522', 'active', '2025-01-16 06:08:42', '2025-01-16 06:09:08', 'rX3PVbXyrLdX25'),
(154, 94, 18, 'image', '186788ccffc18211737018623c7xdyplxauw91olw31ku.jpeg', '2905', '3873', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'lQve9F4YWZy4R0GZMypWioDdFi7PbXSEjwo8ONlNAk8TgLxvddOQqf7KdaaCuvaKhBuInWxriksDevC4IHCMq9sMIAjAngivBvTvqWkbNjKBGKm4TxeJOkCj0CjaalZeJryVS5ewfbymz6LVo7NVqv6788cd004b9011737018624', 'active', '2025-01-16 06:10:25', '2025-01-16 06:10:56', NULL),
(155, 0, 61, 'video', '', NULL, NULL, '', '61679c0339396441738277689z335t0obarhurengjhld.mov', 'no', '', NULL, NULL, '', '', '', '', '', NULL, NULL, '02TSCRnpFcy4C8YUgNY4cXvJUFbh2c1bW7I32dpWfNvutVQMLU56xAHEoKls7ON0PqirFOU297iB2a4iJ3lfKVVg4tcbWR0gFAomTwnEBxms8ENbhNN32uqiUOxzHSjJQnc9KSpQgKMZCVp6lRDvYt679c03393e56c1738277689', 'pending', '2025-01-30 19:54:49', '2025-01-30 19:54:49', NULL),
(157, 0, 62, 'video', '', NULL, NULL, '', '62679c0ebb2b0761738280635e7z7pn0u6ahp7kj87jpg.mp4', 'no', '', NULL, NULL, '', '', '', '', '', NULL, NULL, 'UScOdHfXQyemEjA3tfeXzT3dsWayMwZsURYqbZc1oFfe6tvXmrU4EqPbL0AlXf9s1TZj4pLODkwFXcHMCXuk2KcFziYz0xy52bvBNCJo64HvnGfH9FKbUWwmx9jOmgQ3MdU6bH2YbN1L7w3nQt5ruL679c0ebb2b91c1738280635', 'pending', '2025-01-30 20:43:55', '2025-01-30 20:43:55', NULL),
(158, 0, 62, 'video', '', NULL, NULL, '', '62679c0efcbf0a61738280700uatdblves0dmgitftcxm.mp4', 'no', '', NULL, NULL, '', '', '', '', '', NULL, NULL, 'j0uAoggSpts3rHKypOO0W10hgXPTCVPFWAMO1iIKcBAK79Di7p06iVg5E5QEvc8bA0msYuT3IWNfS3yN1UXj2J8b4NGkpJS0b4529rDz7Hi1fn87WiA3FOJ3La2aq6oDGbWEQJKBMcg2RfZgqeJNUo679c0efcc0faf1738280700', 'pending', '2025-01-30 20:45:00', '2025-01-30 20:45:00', NULL),
(159, 95, 62, 'video', '', NULL, NULL, '', 'converted-eq7Z2pQ0YTV3oMDo6jRi679c0faca79bb1738280876.mp4', 'yes', 'poster-n1fYZmT9a4dLZy0M0vhe679c0fa75f28a1738280871.jpg', '00:11', NULL, '', '', '', '', '', NULL, NULL, 'j1ZaAcwOSTRBJWCguKZJSFL6K7pOZa3ukTilf1WFbsJ71j9QCvfyJuGZ6HZ5eN1FoOIADozTMtRTSueyHiOvY6Zwfcjj1FRFycVxRVrPQy0aGyOht3AudFnahdwzwJdIRQYqgn4Kn6w9rWI5yKAGaf679c0f7995db31738280825', 'active', '2025-01-30 20:47:05', '2025-01-30 20:47:58', 'omr8fVmeuKjm6l'),
(160, 96, 62, 'video', '', NULL, NULL, '', 'converted-By44vdXQhDP06ncKbpgf679c0fdcb6baf1738280924.mp4', 'yes', 'poster-oHMtBMABQle8t84nZnwz679c0fd65f06f1738280918.jpg', '00:20', NULL, '', '', '', '', '', NULL, NULL, 'rQHjDRaeeMnATrGR4sIU9gH2IMm47aAPSPZYsPem5ITrKTB48suQ9G1ksYySNebTZ1ppC4GfVdStu5hxV7llCJZDkuSpGdj87vLuy14sIGQhtFwSrzNRc2FwP26ARR8UhJk0rrq3bT3pCJhE7dBhXH679c0fbf720721738280895', 'active', '2025-01-30 20:48:15', '2025-01-30 20:48:46', 'gWUf7yL1GRdZQJ'),
(161, 0, 61, 'video', '', NULL, NULL, '', '61679c1d260e0791738284326blc2megrzfayniijuqnj.mov', 'no', '', NULL, NULL, '', '', '', '', '', NULL, NULL, 'AuIh2rPpW4OSSKaC7xsI5IKL1uxwl9XHVPa5BmaKG01gtlaYN6g7lEOl3b7jprsgSzgcjVBi0HYN68r92pf1n7IgUs1qjUVrCwah400mWgyYMzKBia2gPwWM51hxw0CICUnzQhzJX3a8jU88VpdsS3679c1d2615ec51738284326', 'pending', '2025-01-30 21:45:26', '2025-01-30 21:45:26', NULL),
(221, 0, 162, 'image', '162690223e768fef17617479432tyyoqhmatyucdl1vv7f.jpg', '1920', '1280', '', '', 'no', NULL, NULL, NULL, '', '', '', 'AirBrush_20200723011112.jpg', '', '301451', 'image/jpeg', '55RO2toNbeM6acZiLQLw4griSlbBurdBUUsyxF3E92FyD4osZgVPhSMAkRaXDJ4xJzQl0iO4uoNTvJ7wj2f9LEfPAOvXy6t9NZCOlHkVXULHz3l7rwh6znP7Jf7kwtnuQTlEWY6Cu2aDDN2G4iTRjx690223e79a63e1761747943', 'pending', '2025-10-29 11:25:43', '2025-10-29 11:25:43', NULL),
(222, 124, 162, 'image', '1626902241fddc341761747999boqjuuq4h7cpi8itbdn3.jpg', '1920', '1280', '', '', 'no', NULL, NULL, NULL, '', '', '', 'AirBrush_20200723011112.jpg', '', '301451', 'image/jpeg', '6ampMjgmviMhbfmNeAu09W0UEyhNwzOFSu2ZHIbp6d27YyjxNm4uoBvOJfakrqIDWstxVQhrSp32Zcb8h6mRUTcOcPMKWxSh3lNOIQVqoQcDMCyCP8oGm7UCtriIob8u07dbceNGMUGTeScYLrj3u5690224201b2041761748000', 'active', '2025-10-29 11:26:40', '2025-10-29 11:26:55', NULL),
(223, 125, 162, 'image', '16269022506ac97c17617482302tnkac1v0n7whwfryzed.jpg', '1920', '1280', '', '', 'no', NULL, NULL, NULL, '', '', '', 'AirBrush_20200723011731.jpg', '', '281285', 'image/jpeg', 'GNaAAV64tLm2T3bcMiSXSZT8Rpbc4drkBC3QoJsKQ0nRqaPA1CB90vtHajYA1qpJ2fBVLO95BXnI0pyHoJbx2yKEwoPqaWU38aHzgbXnt1cxJO7FjBaiG8rYSgHVtmg6fgWSPQeZfmsWLry7dC5EB169022506d96691761748230', 'active', '2025-10-29 11:30:31', '2025-10-29 11:30:48', NULL),
(224, 126, 162, 'image', '162691a683cd12221763338300ldaritd5gllrw9sgxist.jpg', '960', '1280', '', '', 'no', NULL, NULL, NULL, '', '', '', 'AirBrush_20251116104609.jpg', '', '838888', 'image/jpeg', 'MWYTDdCBLvh1jlSgDmp5SSOqGBvf950Pc5meGJVJh0AUhonSoIrXkOAowgIHgD3dj5eetOqq6sXm7swg4KSlFDBzc4B647HWbZdn4wgaFKL3AdXvUMx7ULWsXp7AS31u9IrePQTVUrUFgHKrPBifbX691a683cdaac31763338300', 'active', '2025-11-16 21:11:40', '2025-11-16 21:11:54', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `media_messages`
--

DROP TABLE IF EXISTS `media_messages`;
CREATE TABLE IF NOT EXISTS `media_messages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `messages_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL,
  `file` varchar(255) NOT NULL,
  `width` varchar(5) DEFAULT NULL,
  `height` varchar(5) DEFAULT NULL,
  `video_poster` varchar(255) DEFAULT NULL,
  `duration_video` varchar(50) DEFAULT NULL,
  `quality_video` varchar(20) DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_size` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `status` enum('active','pending') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `encoded` enum('yes','no') NOT NULL DEFAULT 'no',
  `job_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_messages_messages_id_index` (`messages_id`),
  KEY `media_messages_type_index` (`type`),
  KEY `media_messages_token_index` (`token`),
  KEY `media_messages_encoded_index` (`encoded`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `media_messages`
--

INSERT INTO `media_messages` (`id`, `messages_id`, `type`, `file`, `width`, `height`, `video_poster`, `duration_video`, `quality_video`, `file_name`, `file_size`, `token`, `status`, `created_at`, `updated_at`, `encoded`, `job_id`) VALUES
(1, 10, 'image', '3664d6c94aee9c1716350100tzzk8guweeeicltu7xer.png', '828', '1792', NULL, NULL, NULL, '', '', '9bnC3K678a7U0TRySbd0sp8AQiidDXc9uvJuxTyAsKIjWHBlgBD3vPIZHcI9DDpW6BAOT8K0OJ5eKxWVjfZzCcg1aB7gnm6Wg1FwwxPsMAvJh1klFJCkn6uKfNDXyWF8b6YyCoJOfJJ9VtH8xHW9UD664d6c94ce2d71716350100', 'active', '2024-05-22 00:55:01', '2024-05-22 00:55:10', 'no', NULL),
(2, 14, 'video', 'converted-Lt1itLuTdI0izksYXCfy6659599fa73bf1717131679.mp4', NULL, NULL, 'poster-Mh70a8LcblmqHOATqTig6659599c38b711717131676.jpg', '00:02', 'FHD', '', '', 'sjATME9JEiFTUUxPHAkef1SJ6ydWl67chShwBeIxcgk5DEl4PjQtoSLfYvD86B7NNxowSRm1XrUBYjplsCZxut210LIGdaVvpEoPRocG2hJrKvP1D7HJez40DZS1dpYiUeGIzfJUkhkrH5OEs5lTq5665958f8662051717131512', 'active', '2024-05-31 02:05:52', '2024-05-31 02:05:52', 'yes', 'MmjZ5ByvNOZTvx'),
(3, 16, 'video', 'converted-Lt1itLuTdI0izksYXCfy6659599fa73bf1717131679.mp4', NULL, NULL, 'poster-Mh70a8LcblmqHOATqTig6659599c38b711717131676.jpg', '00:02', 'FHD', '', '', 'sjATME9JEiFTUUxPHAkef1SJ6ydWl67chShwBeIxcgk5DEl4PjQtoSLfYvD86B7NNxowSRm1XrUBYjplsCZxut210LIGdaVvpEoPRocG2hJrKvP1D7HJez40DZS1dpYiUeGIzfJUkhkrH5OEs5lTq5665958f8662051717131512', 'active', '2024-05-31 02:31:32', '2024-05-31 02:31:32', 'yes', 'MmjZ5ByvNOZTvx'),
(4, 18, 'video', 'converted-Lt1itLuTdI0izksYXCfy6659599fa73bf1717131679.mp4', NULL, NULL, 'poster-Mh70a8LcblmqHOATqTig6659599c38b711717131676.jpg', '00:02', 'FHD', '', '', 'sjATME9JEiFTUUxPHAkef1SJ6ydWl67chShwBeIxcgk5DEl4PjQtoSLfYvD86B7NNxowSRm1XrUBYjplsCZxut210LIGdaVvpEoPRocG2hJrKvP1D7HJez40DZS1dpYiUeGIzfJUkhkrH5OEs5lTq5665958f8662051717131512', 'active', '2024-06-18 16:58:22', '2024-06-18 16:58:22', 'yes', 'MmjZ5ByvNOZTvx'),
(6, 0, 'image', '5667c969c261101719441052qgdjq2yk1i4ofhpwshgt.jpeg', '2268', '4032', NULL, NULL, NULL, '', '', 'BTsUWiX4AdeEAAMGEiDCJQrlbH5MI5aTgxa20IcpA5o8g9XSjN9urAkdWm4YibP8hmSxkj0GSJ3fSpp2HVzXLcAqMXmP2cL3o0j6fnkyvChrlyW0uvxKvvkESwxZuxCukUA8bJmfYLdTCrauCKFeIB667c969dd3f121719441053', 'pending', '2024-06-26 19:30:54', '2024-06-26 19:30:54', 'no', NULL),
(7, 28, 'video', 'converted-Lt1itLuTdI0izksYXCfy6659599fa73bf1717131679.mp4', NULL, NULL, 'poster-Mh70a8LcblmqHOATqTig6659599c38b711717131676.jpg', '00:02', 'FHD', '', '', 'sjATME9JEiFTUUxPHAkef1SJ6ydWl67chShwBeIxcgk5DEl4PjQtoSLfYvD86B7NNxowSRm1XrUBYjplsCZxut210LIGdaVvpEoPRocG2hJrKvP1D7HJez40DZS1dpYiUeGIzfJUkhkrH5OEs5lTq5665958f8662051717131512', 'active', '2024-06-29 01:48:25', '2024-06-29 01:48:25', 'yes', 'MmjZ5ByvNOZTvx'),
(8, 0, 'video', '46685a151b98a217200336175dy7riapbjmmuj4438ll.mp4', NULL, NULL, '', NULL, NULL, '', '', 'A0z2PIlHBI1yYAtiSwrbNki3Gufl3APTfE0Q0rC0X7jiDmoKVizmu87aSw85Fc3woMmz03MsebttMJUv1iUeTOjbY4AhCZKVIv5oBaBrW1ixaqSSKpZVkM2zTJYFILgE7y9ru1INN5U1vneOlxolyl6685a151baa571720033617', 'pending', '2024-07-03 16:06:57', '2024-07-03 16:06:57', 'no', NULL),
(9, 34, 'image', '36685a19778fbb1720033687hgzmr8lhqlnbsffit2rr.jpg', '740', '837', NULL, NULL, NULL, '', '', 'EIjuzwxlJ3Kf1H8dXBVjdQX2IxGiPYf0oRQUHsRDVwEyzHI7UnUcFN1D3vwoAIwlHfRdowxTMYAnNsCJNyyhuLcMxN4WxKtzvGEl8VgnqAOSIyt95hPADvWY03VHql6prDe8lCh5P5BHFngfomf0836685a197827c51720033687', 'active', '2024-07-03 16:08:07', '2024-07-03 16:08:15', 'no', NULL),
(10, 53, 'video', 'converted-Lt1itLuTdI0izksYXCfy6659599fa73bf1717131679.mp4', NULL, NULL, 'poster-Mh70a8LcblmqHOATqTig6659599c38b711717131676.jpg', '00:02', 'FHD', '', '', 'sjATME9JEiFTUUxPHAkef1SJ6ydWl67chShwBeIxcgk5DEl4PjQtoSLfYvD86B7NNxowSRm1XrUBYjplsCZxut210LIGdaVvpEoPRocG2hJrKvP1D7HJez40DZS1dpYiUeGIzfJUkhkrH5OEs5lTq5665958f8662051717131512', 'active', '2025-04-24 15:41:07', '2025-04-24 15:41:07', 'yes', 'MmjZ5ByvNOZTvx');

-- --------------------------------------------------------

--
-- Estrutura para tabela `media_products`
--

DROP TABLE IF EXISTS `media_products`;
CREATE TABLE IF NOT EXISTS `media_products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `products_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_products_products_id_index` (`products_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `media_products`
--

INSERT INTO `media_products` (`id`, `products_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, '19667bb76c7aec317193839160k15t6hymugatpeleoen.jpg', '2024-06-26 03:39:10', '2024-06-26 03:39:10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `media_reels`
--

DROP TABLE IF EXISTS `media_reels`;
CREATE TABLE IF NOT EXISTS `media_reels` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reels_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `video_poster` varchar(255) DEFAULT NULL,
  `duration_video` varchar(255) DEFAULT NULL,
  `job_id` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reels_id` (`reels_id`),
  KEY `name` (`name`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `media_reels`
--

INSERT INTO `media_reels` (`id`, `reels_id`, `name`, `video_poster`, `duration_video`, `job_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 'converted-RcQWesNUgqPdxIq13dUt68afc9be1de751756350910.mp4', NULL, '00:06', 'XLvuDoLJKHsAdG', 1, '2025-08-28 00:14:25', '2025-08-28 00:15:12'),
(3, 3, 'converted-e935jWWQ8C1ztDqFs0Kb68afc9fb8568c1756350971.mp4', NULL, '00:05', '7WfQKXFPLal7NH', 1, '2025-08-28 00:15:42', '2025-08-28 00:16:13'),
(4, 4, 'converted-TdsKgXlAGecNU33ZjNtB68afca16586b81756350998.mp4', NULL, '00:05', '3ChkCa3mS3gigL', 1, '2025-08-28 00:16:02', '2025-08-28 00:16:39');

-- --------------------------------------------------------

--
-- Estrutura para tabela `media_stories`
--

DROP TABLE IF EXISTS `media_stories`;
CREATE TABLE IF NOT EXISTS `media_stories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `stories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `video_length` varchar(20) DEFAULT NULL,
  `video_poster` varchar(100) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `font_color` varchar(50) NOT NULL DEFAULT '#ffffff',
  `font` varchar(50) NOT NULL DEFAULT 'Arial',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `job_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_stories_stories_id_index` (`stories_id`),
  KEY `media_stories_name_index` (`name`),
  KEY `media_stories_type_index` (`type`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `media_stories`
--

INSERT INTO `media_stories` (`id`, `stories_id`, `name`, `type`, `video_length`, `video_poster`, `text`, `font_color`, `font`, `status`, `created_at`, `updated_at`, `job_id`) VALUES
(1, 1, '36648265725a1c171600443998rnhzueivkpzvdh5bfo.jpg', 'photo', '', '', NULL, '#ffffff', 'Arial', 1, '2024-05-18 00:53:59', '2024-05-18 00:54:00', NULL),
(3, 2, 'converted-EXf4K9Y1VsrHNkcqOdTL66594aad744a91717127853.mp4', 'video', '2', 'poster-GMNhy0mSj9WmX4mnvlo566594aa94e3ab1717127849.jpg', NULL, '#ffffff', 'Arial', 1, '2024-05-31 00:56:38', '2024-05-31 00:57:34', 'UQJfOrtoXe8cmI'),
(4, 3, '34667b96b37cdca1719375539cgdxgjvsljcq8tkk6wuf.jpg', 'photo', '', '', NULL, '#ffffff', 'Arial', 1, '2024-06-26 01:18:59', '2024-06-26 01:19:25', NULL),
(6, 0, '61679c02d1c7a1a1738277585ueci0jtpio7jyscpdtqw.jpeg', 'photo', '', '', NULL, '#ffffff', 'Arial', 0, '2025-01-30 19:53:09', '2025-01-30 19:53:09', NULL),
(8, 5, 'converted-voHFVhRaT30tFmbmLhBi6902250aee8ec1761748234.mp4', 'video', '6', '', NULL, '#ffffff', 'Arial', 1, '2025-10-29 11:27:49', '2025-10-29 11:30:36', 'A2jPMXRTFONB5v'),
(9, 6, '16269173d8c7d4c01763130764imb4ux2ni3maeabomdtv.jpg', 'photo', '', '', NULL, '#ffffff', 'Arial', 1, '2025-11-14 11:32:45', '2025-11-14 11:32:48', NULL),
(10, 7, 'converted-4bIafeP06A6f0wgkg4nY691a6891596de1763338385.mp4', 'video', '6', '', NULL, '#ffffff', 'Arial', 1, '2025-11-16 21:12:46', '2025-11-16 21:13:07', 'k0iV7ETyKtSpUC');

-- --------------------------------------------------------

--
-- Estrutura para tabela `media_welcome_messages`
--

DROP TABLE IF EXISTS `media_welcome_messages`;
CREATE TABLE IF NOT EXISTS `media_welcome_messages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL,
  `file` varchar(255) NOT NULL,
  `width` varchar(5) DEFAULT NULL,
  `height` varchar(5) DEFAULT NULL,
  `video_poster` varchar(255) DEFAULT NULL,
  `duration_video` varchar(50) DEFAULT NULL,
  `quality_video` varchar(20) DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_size` varchar(255) NOT NULL,
  `file_size_bytes` varchar(255) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `encoded` enum('yes','no') NOT NULL DEFAULT 'no',
  `token` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `job_id` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_welcome_messages_creator_id_index` (`creator_id`),
  KEY `media_welcome_messages_type_index` (`type`),
  KEY `media_welcome_messages_encoded_index` (`encoded`),
  KEY `media_welcome_messages_token_index` (`token`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `media_welcome_messages`
--

INSERT INTO `media_welcome_messages` (`id`, `creator_id`, `type`, `file`, `width`, `height`, `video_poster`, `duration_video`, `quality_video`, `file_name`, `file_size`, `file_size_bytes`, `mime_type`, `encoded`, `token`, `status`, `job_id`, `created_at`, `updated_at`) VALUES
(1, 18, 'video', 'converted-Lt1itLuTdI0izksYXCfy6659599fa73bf1717131679.mp4', NULL, NULL, 'poster-Mh70a8LcblmqHOATqTig6659599c38b711717131676.jpg', '00:02', 'FHD', '', '', '4304084', 'video/quicktime', 'yes', 'sjATME9JEiFTUUxPHAkef1SJ6ydWl67chShwBeIxcgk5DEl4PjQtoSLfYvD86B7NNxowSRm1XrUBYjplsCZxut210LIGdaVvpEoPRocG2hJrKvP1D7HJez40DZS1dpYiUeGIzfJUkhkrH5OEs5lTq5665958f8662051717131512', 'active', 'MmjZ5ByvNOZTvx', '2024-05-31 01:58:32', '2024-05-31 02:01:21'),
(2, 31, 'image', '31667dcc5b247641719520347bhsicvs1fh5s3uvlz8qw.jpeg', '569', '881', NULL, NULL, NULL, '', '', '70978', 'image/jpeg', 'no', 'LshLlPp2nvOp3uWX2JWJxPeTFSqxlc805EWe1DJg2UHK4VxQFyFX0iH1vwD0YAENx0e6p04nibPoYNnQmngn1FBepjQUM4r4WfeRavOtFvlI396Spkz1NMuJ85tWQJ8Zij9DdhOKhDLx7CupROlN69667dcc5b439da1719520347', 'active', NULL, '2024-06-27 17:32:27', '2024-06-27 17:32:27'),
(3, 162, 'image', '16269022340756361761747776vkk1rm3l4gv9fm80hkvd.jpg', '3072', '4608', NULL, NULL, NULL, '', '', '1782771', 'image/jpeg', 'no', 'HwxYb3IkSvDPu5KQduiRd0ODvYdFOSKJmvLZYB0vgfmpBsSlnwzfarGNouStGofOS63uuwa3MfYmYuZOr30lzArNUmyCtUzPAFNp7f4ac4JjHI3q7lWCnAdA0qXXYzqb9FF2p1D4RO1saeuTbK3q0K69022341937cb1761747777', 'active', NULL, '2025-10-29 11:22:58', '2025-10-29 11:22:58');

-- --------------------------------------------------------

--
-- Estrutura para tabela `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `conversations_id` int(11) UNSIGNED NOT NULL,
  `from_user_id` int(10) UNSIGNED NOT NULL,
  `to_user_id` int(10) UNSIGNED NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach_file` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('new','readed') NOT NULL DEFAULT 'new',
  `remove_from` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Delete, 1 Active',
  `file` varchar(150) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `format` varchar(10) NOT NULL,
  `size` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `tip` enum('yes','no') NOT NULL DEFAULT 'no',
  `tip_amount` int(10) UNSIGNED NOT NULL,
  `mode` enum('active','pending') NOT NULL DEFAULT 'active',
  `gift_id` int(10) UNSIGNED DEFAULT NULL,
  `gift_amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `remove_from` (`remove_from`),
  KEY `conversation_id` (`conversations_id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  KEY `status` (`status`),
  KEY `mode` (`mode`),
  KEY `gift_id` (`gift_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `messages`
--

INSERT INTO `messages` (`id`, `conversations_id`, `from_user_id`, `to_user_id`, `message`, `attach_file`, `created_at`, `updated_at`, `status`, `remove_from`, `file`, `original_name`, `format`, `size`, `price`, `tip`, `tip_amount`, `mode`, `gift_id`, `gift_amount`) VALUES
(1, 0, 5, 3, 'oi', '', '2024-05-22 00:49:08', '2024-05-22 00:49:08', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(2, 0, 5, 3, 'l', '', '2024-05-22 00:49:24', '2024-05-22 00:49:24', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(3, 0, 3, 5, 'ada', '', '2024-05-22 00:50:31', '2024-05-22 00:50:31', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(4, 0, 3, 5, 'asdaasd', '', '2024-05-22 00:51:27', '2024-05-22 00:51:27', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(5, 0, 5, 3, 'Jsjsns', '', '2024-05-22 00:54:12', '2024-05-22 00:54:12', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(6, 0, 5, 3, 'GE gicc', '', '2024-05-22 00:54:23', '2024-05-22 00:54:24', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(7, 0, 3, 5, 'gdfgdf', '', '2024-05-22 00:54:28', '2024-05-22 00:54:29', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(8, 0, 3, 5, 'sfrdrger', '', '2024-05-22 00:54:34', '2024-05-22 00:54:35', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(9, 0, 3, 5, '', '', '2024-05-22 00:54:46', '2024-05-22 00:54:47', 'readed', '1', '', '', '', '', 0.00, 'yes', 70, 'active', NULL, 0.00),
(10, 0, 3, 5, 'Chupa meu cuzinho', '', '2024-05-22 00:55:10', '2024-05-22 00:55:10', 'readed', '1', '', '', '', '', 90.00, 'no', 0, 'active', NULL, 0.00),
(11, 0, 3, 5, 'asdasdasd', '', '2024-05-22 16:57:18', '2024-05-22 16:57:18', 'readed', '1', '', '', '', '', 123.00, 'no', 0, 'active', NULL, 0.00),
(13, 0, 17, 3, '', '', '2024-05-30 17:43:03', '2024-05-30 17:43:03', 'readed', '1', '', '', '', '', 0.00, 'yes', 20, 'active', NULL, 0.00),
(14, 0, 18, 17, 'Estou muito feliz que você assinou a minha pagina, pra você o melhor presente...', '', '2024-05-31 02:05:52', '2024-05-31 02:05:52', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(15, 0, 17, 18, 'que Delicia', '', '2024-05-31 02:06:36', '2024-05-31 02:06:36', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(16, 0, 18, 7, 'Estou muito feliz que você assinou a minha pagina, pra você o melhor presente...', '', '2024-05-31 02:31:32', '2024-05-31 02:31:32', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(17, 0, 17, 18, '', '', '2024-05-31 19:04:42', '2024-05-31 19:04:42', 'readed', '1', '', '', '', '', 0.00, 'yes', 840, 'active', NULL, 0.00),
(18, 0, 18, 25, 'Estou muito feliz que você assinou a minha pagina, pra você o melhor presente...', '', '2024-06-18 16:58:22', '2024-06-18 16:58:22', 'new', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(19, 0, 26, 3, 'Oi meu bem', '', '2024-06-18 17:10:07', '2024-06-18 17:10:07', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(20, 0, 28, 5, 'Oi gatinha\r\nBoa tarde', '', '2024-06-18 17:44:59', '2024-06-18 17:44:59', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(21, 0, 3, 26, 'Oi amor', '', '2024-06-26 04:21:08', '2024-06-26 04:21:08', 'new', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(28, 0, 18, 3, 'Estou muito feliz que você assinou a minha pagina, pra você o melhor presente...', '', '2024-06-29 01:48:25', '2024-06-29 01:48:25', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(29, 0, 18, 3, 'Participe da transmissão privada ao vivo a partir deste link https://dojobe.com/live/private/HwOMN3L6gocnvxmZDc7BSr5pWCaQOC6CnqLhVvvJ', '', '2024-06-29 01:50:04', '2024-06-29 01:50:04', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(30, 0, 18, 3, 'Participe da transmissão privada ao vivo a partir deste link https://dojobe.com/live/private/i6AiXZKDPXUMtHWkEReyIFUdD3ufbnSWhzBEvY3s', '', '2024-06-29 01:52:17', '2024-06-29 01:52:17', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(31, 0, 4, 3, 'oi', '', '2024-07-03 16:06:24', '2024-07-03 16:06:24', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(32, 0, 3, 4, 'tudo bem', '', '2024-07-03 16:06:35', '2024-07-03 16:06:36', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(33, 0, 4, 3, '', '', '2024-07-03 16:07:42', '2024-07-03 16:07:43', 'readed', '1', '', '', '', '', 0.00, 'yes', 30, 'active', NULL, 0.00),
(34, 0, 3, 4, 'ghgjg', '', '2024-07-03 16:08:15', '2024-07-03 16:08:17', 'readed', '1', '', '', '', '', 20.00, 'no', 0, 'active', NULL, 0.00),
(35, 0, 3, 4, 'Participe da transmissão privada ao vivo a partir deste link https://dojobe.com/live/private/b3M7NaVnbjMDrLMc6JktS3KKYHSpB4T8TSCUOoxX', '', '2024-07-03 16:12:06', '2024-07-03 16:12:06', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(36, 0, 1, 18, 'oi', '', '2025-01-06 16:43:13', '2025-01-06 16:43:13', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(53, 0, 18, 95, 'Estou muito feliz que você assinou a minha pagina, pra você o melhor presente...', '', '2025-04-24 15:41:07', '2025-04-24 15:41:07', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `destination` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `target` int(10) UNSIGNED NOT NULL,
  `type` int(10) UNSIGNED NOT NULL COMMENT '1 Subscribed, 2  Like, 3 reply, 4 Like Comment',
  `status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0 unseen, 1 seen',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `context` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `destination` (`destination`),
  KEY `author` (`author`),
  KEY `target` (`target`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `notifications`
--

INSERT INTO `notifications` (`id`, `destination`, `author`, `target`, `type`, `status`, `created_at`, `context`) VALUES
(1, 3, 3, 3, 18, '1', '2024-05-18 02:27:40', NULL),
(2, 3, 4, 3, 7, '1', '2024-05-18 02:42:18', NULL),
(3, 3, 4, 2, 7, '1', '2024-05-18 02:42:42', NULL),
(4, 3, 4, 3, 1, '1', '2024-05-18 02:42:54', NULL),
(5, 3, 4, 4, 5, '1', '2024-05-18 02:08:54', NULL),
(6, 3, 4, 11, 2, '1', '2024-05-18 02:08:57', NULL),
(7, 3, 4, 8, 7, '1', '2024-05-18 02:09:07', NULL),
(8, 3, 4, 7, 7, '1', '2024-05-18 02:09:34', NULL),
(9, 3, 7, 7, 5, '1', '2024-05-18 15:23:54', NULL),
(10, 3, 7, 7, 5, '1', '2024-05-18 15:24:06', NULL),
(11, 3, 7, 7, 5, '1', '2024-05-18 15:27:27', NULL),
(12, 3, 7, 7, 5, '1', '2024-05-18 15:27:33', NULL),
(13, 3, 7, 3, 1, '1', '2024-05-18 16:13:12', NULL),
(14, 3, 7, 8, 7, '1', '2024-05-18 16:13:31', NULL),
(15, 3, 5, 3, 1, '1', '2024-05-22 00:11:48', NULL),
(16, 3, 5, 5, 5, '1', '2024-05-22 00:12:05', NULL),
(17, 3, 5, 8, 7, '1', '2024-05-22 00:12:12', NULL),
(18, 3, 5, 7, 7, '1', '2024-05-22 00:12:33', NULL),
(22, 5, 5, 5, 18, '1', '2024-05-22 00:22:57', NULL),
(25, 3, 5, 12, 2, '1', '2024-05-22 00:53:42', NULL),
(26, 3, 5, 10, 6, '1', '2024-05-22 00:56:06', NULL),
(34, 4, 3, 4, 14, '1', '2024-05-22 23:16:14', NULL),
(35, 7, 3, 4, 14, '1', '2024-05-22 23:16:14', NULL),
(36, 5, 3, 4, 14, '1', '2024-05-22 23:16:14', NULL),
(38, 4, 3, 5, 14, '1', '2024-05-22 23:19:01', NULL),
(39, 7, 3, 5, 14, '1', '2024-05-22 23:19:01', NULL),
(40, 5, 3, 5, 14, '1', '2024-05-22 23:19:01', NULL),
(42, 4, 3, 6, 14, '1', '2024-05-22 23:19:15', NULL),
(43, 7, 3, 6, 14, '1', '2024-05-22 23:19:15', NULL),
(44, 5, 3, 6, 14, '1', '2024-05-22 23:19:15', NULL),
(46, 3, 17, 8, 7, '1', '2024-05-30 17:35:10', NULL),
(47, 3, 17, 3, 1, '1', '2024-05-30 17:36:16', NULL),
(48, 3, 17, 17, 5, '1', '2024-05-30 17:43:03', NULL),
(49, 3, 17, 7, 7, '1', '2024-05-30 17:43:40', NULL),
(50, 3, 17, 6, 7, '1', '2024-05-30 17:44:43', NULL),
(51, 3, 17, 3, 7, '1', '2024-05-30 17:45:22', NULL),
(52, 18, 18, 0, 17, '1', '2024-05-31 00:57:34', NULL),
(54, 18, 18, 1, 24, '1', '2024-05-31 02:01:21', NULL),
(55, 18, 17, 18, 1, '1', '2024-05-31 02:05:52', NULL),
(56, 18, 7, 18, 1, '1', '2024-05-31 02:31:32', NULL),
(57, 19, 7, 19, 1, '1', '2024-05-31 04:00:26', NULL),
(58, 19, 17, 19, 1, '1', '2024-05-31 17:53:26', NULL),
(59, 19, 17, 34, 2, '1', '2024-05-31 19:02:52', NULL),
(60, 19, 17, 34, 3, '1', '2024-05-31 19:02:59', NULL),
(61, 19, 17, 31, 2, '1', '2024-05-31 19:03:15', NULL),
(62, 19, 17, 31, 3, '1', '2024-05-31 19:03:30', NULL),
(63, 19, 17, 31, 3, '1', '2024-05-31 19:03:40', NULL),
(64, 18, 17, 17, 5, '1', '2024-05-31 19:04:42', NULL),
(65, 18, 17, 27, 2, '1', '2024-05-31 19:04:56', NULL),
(66, 19, 17, 46, 7, '1', '2024-06-01 21:16:03', NULL),
(67, 19, 17, 37, 7, '1', '2024-06-01 21:17:03', NULL),
(68, 18, 17, 58, 2, '1', '2024-06-03 21:37:23', NULL),
(69, 3, 25, 3, 1, '1', '2024-06-18 16:58:00', NULL),
(70, 18, 25, 18, 1, '1', '2024-06-18 16:58:22', NULL),
(71, 19, 25, 19, 1, '1', '2024-06-18 16:58:49', NULL),
(72, 19, 25, 46, 7, '1', '2024-06-18 16:58:56', NULL),
(73, 3, 26, 3, 1, '1', '2024-06-18 16:59:14', NULL),
(74, 3, 26, 3, 1, '1', '2024-06-18 16:59:17', NULL),
(75, 3, 26, 26, 5, '1', '2024-06-18 16:59:36', NULL),
(76, 3, 26, 26, 5, '1', '2024-06-18 16:59:48', NULL),
(77, 3, 26, 26, 5, '1', '2024-06-18 17:00:03', NULL),
(78, 3, 26, 26, 5, '1', '2024-06-18 17:09:51', NULL),
(79, 17, 5, 7, 14, '1', '2024-06-25 22:58:20', NULL),
(80, 17, 5, 7, 14, '1', '2024-06-25 22:58:20', NULL),
(81, 25, 5, 7, 14, '0', '2024-06-25 22:58:20', NULL),
(82, 28, 5, 7, 14, '0', '2024-06-25 22:58:20', NULL),
(83, 7, 19, 8, 14, '1', '2024-06-25 23:16:13', NULL),
(84, 17, 19, 8, 14, '1', '2024-06-25 23:16:13', NULL),
(85, 25, 19, 8, 14, '0', '2024-06-25 23:16:13', NULL),
(86, 17, 18, 9, 14, '1', '2024-06-25 23:28:29', NULL),
(87, 7, 18, 9, 14, '1', '2024-06-25 23:28:29', NULL),
(88, 25, 18, 9, 14, '0', '2024-06-25 23:28:29', NULL),
(89, 7, 19, 10, 14, '1', '2024-06-25 23:34:37', NULL),
(90, 17, 19, 10, 14, '1', '2024-06-25 23:34:37', NULL),
(91, 25, 19, 10, 14, '0', '2024-06-25 23:34:37', NULL),
(92, 7, 19, 11, 14, '1', '2024-06-25 23:35:55', NULL),
(93, 17, 19, 11, 14, '1', '2024-06-25 23:35:55', NULL),
(94, 25, 19, 11, 14, '0', '2024-06-25 23:35:55', NULL),
(95, 33, 33, 33, 18, '1', '2024-06-26 00:05:47', NULL),
(96, 34, 34, 34, 18, '1', '2024-06-26 00:06:13', NULL),
(100, 17, 3, 14, 14, '1', '2024-06-26 04:35:50', NULL),
(101, 25, 3, 14, 14, '0', '2024-06-26 04:35:50', NULL),
(102, 26, 3, 14, 14, '0', '2024-06-26 04:35:50', NULL),
(104, 17, 3, 15, 14, '1', '2024-06-26 04:36:23', NULL),
(105, 25, 3, 15, 14, '0', '2024-06-26 04:36:23', NULL),
(106, 26, 3, 15, 14, '0', '2024-06-26 04:36:23', NULL),
(108, 17, 3, 16, 14, '1', '2024-06-26 04:36:58', NULL),
(109, 25, 3, 16, 14, '0', '2024-06-26 04:36:58', NULL),
(110, 26, 3, 16, 14, '0', '2024-06-26 04:36:58', NULL),
(112, 17, 3, 17, 14, '1', '2024-06-26 04:38:29', NULL),
(113, 25, 3, 17, 14, '0', '2024-06-26 04:38:29', NULL),
(114, 26, 3, 17, 14, '0', '2024-06-26 04:38:29', NULL),
(116, 17, 3, 18, 14, '1', '2024-06-26 04:51:10', NULL),
(117, 25, 3, 18, 14, '0', '2024-06-26 04:51:10', NULL),
(118, 26, 3, 18, 14, '0', '2024-06-26 04:51:10', NULL),
(120, 41, 41, 41, 18, '1', '2024-06-26 21:51:25', NULL),
(121, 41, 44, 41, 1, '1', '2024-06-27 07:23:34', NULL),
(122, 45, 45, 45, 18, '0', '2024-06-27 10:04:25', NULL),
(123, 41, 41, 91, 9, '1', '2024-06-27 23:03:45', NULL),
(124, 17, 18, 19, 14, '1', '2024-06-29 01:44:56', NULL),
(125, 7, 18, 19, 14, '1', '2024-06-29 01:44:56', NULL),
(126, 25, 18, 19, 14, '0', '2024-06-29 01:44:56', NULL),
(127, 18, 3, 18, 1, '1', '2024-06-29 01:48:25', NULL),
(128, 18, 3, 0, 23, '1', '2024-06-29 01:49:54', NULL),
(129, 18, 3, 0, 23, '1', '2024-06-29 01:51:57', NULL),
(130, 3, 4, 3, 1, '1', '2024-07-03 16:05:50', NULL),
(131, 3, 4, 6, 7, '1', '2024-07-03 16:06:12', NULL),
(132, 3, 4, 4, 5, '1', '2024-07-03 16:07:42', NULL),
(133, 3, 4, 34, 6, '1', '2024-07-03 16:09:34', NULL),
(134, 3, 4, 0, 23, '1', '2024-07-03 16:10:28', NULL),
(135, 18, 18, 93, 9, '1', '2025-01-16 06:09:08', NULL),
(137, 62, 62, 62, 18, '1', '2025-01-30 20:41:40', NULL),
(138, 62, 62, 95, 9, '1', '2025-01-30 20:47:58', NULL),
(139, 62, 62, 96, 9, '1', '2025-01-30 20:48:46', NULL),
(141, 18, 63, 93, 2, '0', '2025-02-01 07:20:36', NULL),
(151, 71, 71, 71, 18, '1', '2025-02-04 16:26:21', NULL),
(153, 18, 73, 78, 2, '0', '2025-02-05 14:53:17', NULL),
(155, 37, 37, 37, 19, '0', '2025-02-14 00:55:40', NULL),
(173, 59, 59, 121, 20, '1', '2025-03-25 20:31:15', NULL),
(175, 3, 87, 3, 1, '1', '2025-04-24 02:48:56', NULL),
(177, 3, 87, 87, 5, '1', '2025-04-24 02:49:08', NULL),
(179, 3, 87, 87, 5, '1', '2025-04-24 02:49:20', NULL),
(181, 3, 87, 87, 5, '1', '2025-04-24 02:49:36', NULL),
(182, 34, 88, 34, 1, '1', '2025-04-24 02:52:05', NULL),
(183, 34, 88, 88, 5, '1', '2025-04-24 02:52:15', NULL),
(184, 34, 88, 76, 2, '1', '2025-04-24 02:52:19', NULL),
(185, 34, 88, 75, 7, '1', '2025-04-24 02:52:23', NULL),
(186, 34, 88, 75, 2, '1', '2025-04-24 02:52:30', NULL),
(187, 34, 88, 74, 7, '1', '2025-04-24 02:52:34', NULL),
(188, 34, 88, 73, 7, '1', '2025-04-24 02:52:58', NULL),
(189, 34, 88, 72, 7, '1', '2025-04-24 02:53:07', NULL),
(190, 34, 88, 71, 7, '1', '2025-04-24 02:53:14', NULL),
(191, 19, 88, 19, 1, '0', '2025-04-24 02:53:26', NULL),
(192, 19, 88, 88, 5, '0', '2025-04-24 02:53:36', NULL),
(193, 19, 88, 88, 5, '0', '2025-04-24 02:53:44', NULL),
(194, 19, 88, 46, 7, '0', '2025-04-24 02:53:50', NULL),
(195, 19, 88, 37, 7, '0', '2025-04-24 02:54:03', NULL),
(196, 3, 88, 3, 1, '1', '2025-04-24 02:54:23', NULL),
(197, 3, 88, 12, 2, '1', '2025-04-24 02:54:28', NULL),
(198, 3, 88, 11, 2, '1', '2025-04-24 02:54:30', NULL),
(199, 3, 88, 10, 2, '1', '2025-04-24 02:54:32', NULL),
(200, 3, 88, 9, 2, '1', '2025-04-24 02:54:33', NULL),
(201, 3, 88, 8, 7, '1', '2025-04-24 02:54:36', NULL),
(202, 3, 88, 7, 7, '1', '2025-04-24 02:54:42', NULL),
(203, 3, 88, 6, 7, '1', '2025-04-24 02:54:54', NULL),
(204, 3, 88, 5, 7, '1', '2025-04-24 02:55:01', NULL),
(205, 3, 88, 4, 7, '1', '2025-04-24 02:55:08', NULL),
(206, 3, 88, 3, 7, '1', '2025-04-24 02:55:17', NULL),
(207, 3, 88, 2, 7, '1', '2025-04-24 02:55:26', NULL),
(208, 3, 88, 88, 5, '1', '2025-04-24 02:55:37', NULL),
(210, 3, 93, 3, 1, '1', '2025-04-24 02:58:40', NULL),
(212, 3, 93, 93, 5, '1', '2025-04-24 02:58:49', NULL),
(213, 3, 93, 11, 2, '1', '2025-04-24 02:58:53', NULL),
(214, 3, 93, 12, 2, '1', '2025-04-24 02:58:54', NULL),
(215, 3, 93, 10, 2, '1', '2025-04-24 02:58:55', NULL),
(216, 3, 93, 9, 2, '1', '2025-04-24 02:58:56', NULL),
(218, 3, 93, 8, 7, '1', '2025-04-24 02:59:00', NULL),
(219, 3, 93, 8, 2, '1', '2025-04-24 02:59:02', NULL),
(220, 3, 93, 8, 3, '1', '2025-04-24 02:59:17', NULL),
(222, 3, 93, 7, 7, '1', '2025-04-24 02:59:27', NULL),
(224, 3, 93, 2, 7, '1', '2025-04-24 03:04:28', NULL),
(225, 3, 93, 6, 7, '1', '2025-04-24 03:04:36', NULL),
(226, 3, 93, 5, 7, '1', '2025-04-24 03:04:45', NULL),
(227, 3, 93, 4, 7, '1', '2025-04-24 03:04:52', NULL),
(228, 3, 93, 3, 7, '1', '2025-04-24 03:04:59', NULL),
(230, 3, 84, 3, 1, '1', '2025-04-24 03:07:56', NULL),
(232, 3, 84, 84, 5, '1', '2025-04-24 03:08:14', NULL),
(233, 3, 84, 12, 2, '1', '2025-04-24 03:08:25', NULL),
(234, 3, 84, 12, 3, '1', '2025-04-24 03:08:30', NULL),
(235, 3, 84, 11, 2, '1', '2025-04-24 03:08:34', NULL),
(236, 3, 84, 11, 3, '1', '2025-04-24 03:08:42', NULL),
(237, 3, 84, 10, 2, '1', '2025-04-24 03:08:45', NULL),
(238, 3, 84, 10, 3, '1', '2025-04-24 03:08:49', NULL),
(239, 3, 84, 9, 2, '1', '2025-04-24 03:08:51', NULL),
(241, 3, 84, 7, 7, '1', '2025-04-24 03:09:00', NULL),
(242, 18, 95, 18, 1, '0', '2025-04-24 15:41:07', NULL),
(243, 18, 95, 54, 7, '0', '2025-04-24 15:42:00', NULL),
(244, 18, 95, 51, 7, '0', '2025-04-24 15:42:14', NULL),
(245, 18, 95, 48, 7, '0', '2025-04-24 15:42:32', NULL),
(246, 18, 109, 93, 2, '0', '2025-04-24 23:48:12', NULL),
(247, 3, 101, 3, 1, '1', '2025-04-25 00:11:55', NULL),
(248, 3, 101, 8, 7, '1', '2025-04-25 00:12:20', NULL),
(249, 26, 3, 27, 14, '0', '2025-08-25 23:32:23', NULL),
(250, 88, 3, 27, 14, '0', '2025-08-25 23:32:23', NULL),
(251, 93, 3, 27, 14, '0', '2025-08-25 23:32:23', NULL),
(252, 84, 3, 27, 14, '0', '2025-08-25 23:32:23', NULL),
(254, 122, 122, 2, 27, '1', '2025-08-28 00:15:12', NULL),
(255, 122, 122, 3, 27, '1', '2025-08-28 00:16:13', NULL),
(256, 122, 122, 4, 27, '1', '2025-08-28 00:16:39', NULL),
(257, 122, 1, 2, 29, '1', '2025-08-28 00:18:14', NULL),
(258, 162, 162, 162, 18, '1', '2025-10-28 21:30:24', NULL),
(259, 122, 164, 2, 29, '0', '2025-10-29 09:32:33', NULL),
(260, 162, 162, 0, 17, '1', '2025-10-29 11:30:36', NULL),
(261, 162, 1, 124, 2, '1', '2025-11-05 19:40:06', NULL),
(262, 162, 1, 125, 2, '1', '2025-11-05 19:40:08', NULL),
(263, 162, 162, 0, 17, '1', '2025-11-16 21:13:07', NULL),
(264, 34, 1, 76, 2, '0', '2025-11-19 19:00:09', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `content` mediumtext DEFAULT NULL,
  `slug` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `lang` char(10) NOT NULL DEFAULT 'es',
  `access` varchar(50) NOT NULL DEFAULT 'all',
  PRIMARY KEY (`id`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `slug`, `description`, `keywords`, `lang`, `access`) VALUES
(2, 'Termos e Condições', '<p><strong>Termos e Condi&ccedil;&otilde;es do Dojobe</strong></p>\r\n\r\n<p>Estes Termos e Condi&ccedil;&otilde;es (&quot;Termos&quot;) regem o uso da plataforma&nbsp;<strong>Dojobe&nbsp;</strong>(&quot;Plataforma&quot;), operada pela <strong>Dojobe</strong>. Ao acessar ou usar a Plataforma, voc&ecirc; concorda com estes Termos. Leia-os atentamente antes de prosseguir. Se voc&ecirc; n&atilde;o concorda com estes Termos, n&atilde;o utilize a Plataforma.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Descri&ccedil;&atilde;o do Servi&ccedil;o</strong>&nbsp;A Plataforma&nbsp;<strong>Dojobe&nbsp;</strong>&nbsp;&eacute; uma plataforma online que facilita a cria&ccedil;&atilde;o, compartilhamento e consumo de conte&uacute;do adulto, incluindo, mas n&atilde;o se limitando a fotos, v&iacute;deos, &aacute;udios e mensagens privadas. Al&eacute;m disso, a Plataforma fornece um servi&ccedil;o de intermedi&aacute;rio de pagamento para transa&ccedil;&otilde;es entre criadores de conte&uacute;do e assinantes.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Responsabilidade pelo Conte&uacute;do</strong>&nbsp;Voc&ecirc; reconhece e concorda que todo o conte&uacute;do postado na Plataforma, incluindo, mas n&atilde;o se limitando a fotos, v&iacute;deos, &aacute;udios e mensagens, &eacute; de total responsabilidade da modelo/criador de conte&uacute;do. A&nbsp;<strong>Dojobe&nbsp;</strong>n&atilde;o monitora ou controla o conte&uacute;do postado na Plataforma e n&atilde;o &eacute; respons&aacute;vel por qualquer conte&uacute;do impr&oacute;prio, ilegal ou ofensivo.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Intermedia&ccedil;&atilde;o de Pagamentos</strong>&nbsp;O principal servi&ccedil;o oferecido pela&nbsp;<strong>Dojobe&nbsp;</strong>&eacute; a intermedia&ccedil;&atilde;o de pagamentos entre criadores de conte&uacute;do e assinantes. Ao utilizar este servi&ccedil;o, voc&ecirc; concorda em pagar as taxas aplic&aacute;veis e em fornecer informa&ccedil;&otilde;es de pagamento precisas e atualizadas.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Uso Adequado da Plataforma</strong>&nbsp;Ao utilizar a Plataforma, voc&ecirc; concorda em n&atilde;o:</p>\r\n\r\n	<ul>\r\n		<li>Publicar conte&uacute;do ilegal, obsceno, difamat&oacute;rio, calunioso, amea&ccedil;ador, abusivo, ofensivo, prejudicial, pornogr&aacute;fico ou de outra forma question&aacute;vel;</li>\r\n		<li>Violar direitos de propriedade intelectual de terceiros;</li>\r\n		<li>Fazer-se passar por outra pessoa ou fornecer informa&ccedil;&otilde;es falsas;</li>\r\n		<li>Tentar obter acesso n&atilde;o autorizado &agrave; Plataforma ou a contas de outros usu&aacute;rios;</li>\r\n		<li>Interferir ou interromper a opera&ccedil;&atilde;o da Plataforma.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Propriedade Intelectual</strong>&nbsp;Todos os direitos de propriedade intelectual relacionados &agrave; Plataforma e ao seu conte&uacute;do, incluindo, mas n&atilde;o se limitando a direitos autorais, marcas registradas e patentes, s&atilde;o de propriedade da&nbsp;<strong>Dojobe&nbsp;</strong>ou de seus licenciantes. Nenhum direito de propriedade intelectual &eacute; transferido para voc&ecirc;.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Limita&ccedil;&atilde;o de Responsabilidade</strong>&nbsp;Em nenhuma circunst&acirc;ncia a&nbsp;<strong>Dojobe&nbsp;</strong>ser&aacute; respons&aacute;vel por quaisquer danos indiretos, incidentais, especiais, consequenciais ou punitivos, incluindo, mas n&atilde;o se limitando a lucros cessantes, perda de receita, perda de dados ou interrup&ccedil;&atilde;o de neg&oacute;cios, decorrentes ou relacionados ao uso ou impossibilidade de uso da Plataforma.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Rescis&atilde;o</strong>&nbsp;Reservamos o direito de rescindir ou suspender sua conta e acesso &agrave; Plataforma imediatamente, sem aviso pr&eacute;vio ou responsabilidade, por qualquer motivo, incluindo, sem limita&ccedil;&atilde;o, se voc&ecirc; violar estes Termos.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Disposi&ccedil;&otilde;es Gerais</strong>&nbsp;Estes Termos constituem o acordo completo entre voc&ecirc; e a&nbsp;<strong>Dojobe&nbsp;</strong>em rela&ccedil;&atilde;o ao uso da Plataforma e substituem todos os acordos anteriores ou contempor&acirc;neos. Estes Termos s&atilde;o regidos e interpretados de acordo com as leis do Brasil. Qualquer disputa decorrente ou relacionada a estes Termos ser&aacute; submetida &agrave; jurisdi&ccedil;&atilde;o exclusiva dos tribunais.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Ao utilizar a Plataforma, voc&ecirc; concorda com estes Termos. Se voc&ecirc; n&atilde;o concordar com estes Termos, n&atilde;o utilize a Plataforma. Se tiver alguma d&uacute;vida sobre estes Termos, entre em contato conosco.</p>', 'termos', 'Termos e Condições do Dojobe', 'termos, temos e condicoes', 'port', 'all'),
(3, 'Políticas de Privacidade', '<p><strong>Pol&iacute;tica de Privacidade - Dojobe&nbsp;</strong></p>\r\n\r\n<p>Esta Pol&iacute;tica de Privacidade descreve como a <strong>Dojobe</strong>&nbsp;(&quot;n&oacute;s&quot;, &quot;nosso&quot;, &quot;Plataforma&quot;) coleta, usa e compartilha informa&ccedil;&otilde;es pessoais quando voc&ecirc; utiliza nossa plataforma. Ao utilizar a Plataforma, voc&ecirc; concorda com a coleta e uso de informa&ccedil;&otilde;es de acordo com esta pol&iacute;tica.</p>\r\n\r\n<p><strong>Informa&ccedil;&otilde;es que Coletamos:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Informa&ccedil;&otilde;es de Registro:</strong>&nbsp;Quando voc&ecirc; cria uma conta em nossa plataforma, podemos coletar informa&ccedil;&otilde;es como seu nome, endere&ccedil;o de e-mail, data de nascimento e senha.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Informa&ccedil;&otilde;es de Pagamento:</strong>&nbsp;Se voc&ecirc; utilizar servi&ccedil;os pagos em nossa plataforma, podemos coletar informa&ccedil;&otilde;es de pagamento, como n&uacute;mero do cart&atilde;o de cr&eacute;dito e informa&ccedil;&otilde;es de faturamento.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Conte&uacute;do do Usu&aacute;rio:</strong>&nbsp;Quando voc&ecirc; cria e compartilha conte&uacute;do em nossa plataforma, podemos coletar esse conte&uacute;do, incluindo fotos, v&iacute;deos, mensagens e outras informa&ccedil;&otilde;es que voc&ecirc; escolher compartilhar.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Informa&ccedil;&otilde;es de Uso:</strong>&nbsp;Coletamos informa&ccedil;&otilde;es sobre como voc&ecirc; utiliza nossa plataforma, incluindo suas intera&ccedil;&otilde;es com o conte&uacute;do, os recursos que voc&ecirc; utiliza e os dispositivos que voc&ecirc; utiliza para acessar a plataforma.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Informa&ccedil;&otilde;es de Localiza&ccedil;&atilde;o:</strong>&nbsp;Podemos coletar informa&ccedil;&otilde;es sobre sua localiza&ccedil;&atilde;o quando voc&ecirc; utiliza determinados recursos da plataforma, se voc&ecirc; nos fornecer permiss&atilde;o para faz&ecirc;-lo.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Como Utilizamos as Informa&ccedil;&otilde;es:</strong></p>\r\n\r\n<p>Utilizamos as informa&ccedil;&otilde;es coletadas para:</p>\r\n\r\n<ul>\r\n	<li>Fornecer, manter e melhorar nossos servi&ccedil;os;</li>\r\n	<li>Personalizar a sua experi&ecirc;ncia na plataforma;</li>\r\n	<li>Processar transa&ccedil;&otilde;es e pagamentos;</li>\r\n	<li>Comunicar-nos com voc&ecirc;, incluindo o envio de informa&ccedil;&otilde;es sobre a plataforma, atualiza&ccedil;&otilde;es e ofertas promocionais;</li>\r\n	<li>Cumprir obriga&ccedil;&otilde;es legais e proteger nossos direitos e propriedade.</li>\r\n</ul>\r\n\r\n<p><strong>Compartilhamento de Informa&ccedil;&otilde;es:</strong></p>\r\n\r\n<p>Podemos compartilhar informa&ccedil;&otilde;es pessoais com:</p>\r\n\r\n<ul>\r\n	<li>Prestadores de servi&ccedil;os terceirizados que nos ajudam a fornecer, manter e melhorar nossos servi&ccedil;os;</li>\r\n	<li>Autoridades governamentais, se necess&aacute;rio para cumprir obriga&ccedil;&otilde;es legais;</li>\r\n	<li>Terceiros em conex&atilde;o com uma fus&atilde;o, aquisi&ccedil;&atilde;o ou venda de ativos da empresa, sujeito a obriga&ccedil;&otilde;es de confidencialidade.</li>\r\n</ul>\r\n\r\n<p><strong>Suas Escolhas:</strong></p>\r\n\r\n<p>Voc&ecirc; pode optar por n&atilde;o fornecer determinadas informa&ccedil;&otilde;es, mas isso pode afetar sua capacidade de utilizar alguns recursos da plataforma. Voc&ecirc; tamb&eacute;m pode revisar e atualizar suas informa&ccedil;&otilde;es de conta a qualquer momento.</p>\r\n\r\n<p><strong>Seguran&ccedil;a:</strong></p>\r\n\r\n<p>Tomamos medidas para proteger suas informa&ccedil;&otilde;es pessoais contra acesso n&atilde;o autorizado, altera&ccedil;&atilde;o, divulga&ccedil;&atilde;o ou destrui&ccedil;&atilde;o. No entanto, nenhum m&eacute;todo de transmiss&atilde;o pela internet ou armazenamento eletr&ocirc;nico &eacute; 100% seguro.</p>\r\n\r\n<p><strong>Menores de Idade:</strong></p>\r\n\r\n<p>Nossa plataforma n&atilde;o &eacute; destinada a menores de 18 anos, e n&atilde;o coletamos intencionalmente informa&ccedil;&otilde;es pessoais de menores de idade. Se tomarmos conhecimento de que coletamos informa&ccedil;&otilde;es de um menor de idade, tomaremos medidas para excluir essas informa&ccedil;&otilde;es o mais r&aacute;pido poss&iacute;vel.</p>\r\n\r\n<p><strong>Altera&ccedil;&otilde;es nesta Pol&iacute;tica:</strong></p>\r\n\r\n<p>Podemos atualizar esta Pol&iacute;tica de Privacidade periodicamente. Notificaremos voc&ecirc; sobre altera&ccedil;&otilde;es significativas enviando um aviso para o endere&ccedil;o de e-mail associado &agrave; sua conta ou publicando um aviso em destaque em nossa plataforma.</p>\r\n\r\n<p>Se tiver d&uacute;vidas sobre esta Pol&iacute;tica de Privacidade, entre em contato conosco atrav&eacute;s dos dados de contato fornecidos em nossa plataforma.</p>', 'privacidade', '', 'privacidade, políticas de privacidade', 'port', 'all'),
(8, 'Politicas de Coprodução e Agenciamento', '<p><strong>Pol&iacute;tica de Agenciamento e Coprodu&ccedil;&atilde;o</strong></p>\r\n\r\n<p>Bem-vindo &agrave; nossa plataforma! Agradecemos por confiar em nossos servi&ccedil;os e por fazer parte da nossa comunidade de criadores de conte&uacute;do. Esta p&aacute;gina explica detalhadamente nossa pol&iacute;tica de agenciamento e coprodu&ccedil;&atilde;o. Recomendamos que leia atentamente todas as informa&ccedil;&otilde;es a seguir.</p>\r\n\r\n<h3>1. Introdu&ccedil;&atilde;o</h3>\r\n\r\n<p>Nossa plataforma tem como objetivo fornecer um espa&ccedil;o onde criadores de conte&uacute;do possam publicar, vender e gerenciar seus conte&uacute;dos, como fotos e v&iacute;deos. Para isso, oferecemos servi&ccedil;os de agenciamento e coprodu&ccedil;&atilde;o para maximizar os benef&iacute;cios tanto para os criadores quanto para a nossa plataforma.</p>\r\n\r\n<h3>2. Taxa de Intermedia&ccedil;&atilde;o</h3>\r\n\r\n<p>Para sustentar nossas opera&ccedil;&otilde;es e continuar a desenvolver melhorias na plataforma, cobramos uma taxa de intermedia&ccedil;&atilde;o de pagamento de 6%. Esta taxa &eacute; deduzida automaticamente de cada transa&ccedil;&atilde;o realizada na plataforma e &eacute; utilizada para cobrir impostos na fonte e outros custos operacionais.</p>\r\n\r\n<h3>3. Modelo de Coprodu&ccedil;&atilde;o</h3>\r\n\r\n<p>Entendemos que cada criador de conte&uacute;do tem necessidades e objetivos &uacute;nicos. Por isso, adotamos um modelo de coprodu&ccedil;&atilde;o flex&iacute;vel e personalizado. A coprodu&ccedil;&atilde;o envolve a colabora&ccedil;&atilde;o entre a nossa equipe e os criadores de conte&uacute;do para criar, promover e distribuir conte&uacute;dos de alta qualidade.</p>\r\n\r\n<h3>4. Processo de Coprodu&ccedil;&atilde;o</h3>\r\n\r\n<p>Para iniciar uma parceria de coprodu&ccedil;&atilde;o, seguimos os seguintes passos:</p>\r\na. Reuni&atilde;o Inicial\r\n\r\n<p>Uma reuni&atilde;o ser&aacute; agendada para entender o cen&aacute;rio espec&iacute;fico de cada criador de conte&uacute;do. Durante esta reuni&atilde;o, discutiremos os seguintes pontos:</p>\r\n\r\n<ul>\r\n	<li>Objetivos e expectativas do criador.</li>\r\n	<li>Tipo de conte&uacute;do produzido.</li>\r\n	<li>Estrat&eacute;gias de promo&ccedil;&atilde;o e distribui&ccedil;&atilde;o.</li>\r\n	<li>Necessidades espec&iacute;ficas de suporte e recursos.</li>\r\n</ul>\r\nb. Planejamento e Proposta\r\n\r\n<p>Com base nas informa&ccedil;&otilde;es obtidas na reuni&atilde;o inicial, nossa equipe desenvolver&aacute; um plano de coprodu&ccedil;&atilde;o detalhado, que incluir&aacute;:</p>\r\n\r\n<ul>\r\n	<li>Estrutura de custos e divis&atilde;o de receitas.</li>\r\n	<li>Prazos e cronogramas de produ&ccedil;&atilde;o.</li>\r\n	<li>Recursos e suportes oferecidos pela plataforma.</li>\r\n</ul>\r\nc. Acordo de Coprodu&ccedil;&atilde;o\r\n\r\n<p>Ap&oacute;s a revis&atilde;o e aprova&ccedil;&atilde;o do plano de coprodu&ccedil;&atilde;o, um acordo formal ser&aacute; elaborado, especificando todos os termos e condi&ccedil;&otilde;es da parceria. Este acordo deve ser assinado por ambas as partes antes do in&iacute;cio da coprodu&ccedil;&atilde;o.</p>\r\n\r\n<h3>5. Direitos e Responsabilidades</h3>\r\na. Direitos dos Criadores\r\n\r\n<ul>\r\n	<li>Manter a propriedade intelectual de seus conte&uacute;dos.</li>\r\n	<li>Receber suporte t&eacute;cnico e promocional conforme acordado.</li>\r\n	<li>Receber sua parte das receitas conforme os termos do acordo de coprodu&ccedil;&atilde;o.</li>\r\n</ul>\r\nb. Responsabilidades dos Criadores\r\n\r\n<ul>\r\n	<li>Produzir conte&uacute;dos de alta qualidade dentro dos prazos estabelecidos.</li>\r\n	<li>Colaborar ativamente com a nossa equipe durante o processo de coprodu&ccedil;&atilde;o.</li>\r\n	<li>Cumprir todas as pol&iacute;ticas e diretrizes da plataforma.</li>\r\n</ul>\r\nc. Direitos da Plataforma\r\n\r\n<ul>\r\n	<li>Cobrar a taxa de intermedia&ccedil;&atilde;o de pagamento de 6%.</li>\r\n	<li>Oferecer suporte e recursos conforme detalhado no acordo de coprodu&ccedil;&atilde;o.</li>\r\n	<li>Promover e distribuir os conte&uacute;dos coproduzidos de acordo com as estrat&eacute;gias acordadas.</li>\r\n</ul>\r\nd. Responsabilidades da Plataforma\r\n\r\n<ul>\r\n	<li>Fornecer uma plataforma segura e eficiente para a publica&ccedil;&atilde;o e venda de conte&uacute;dos.</li>\r\n	<li>Respeitar a propriedade intelectual dos criadores.</li>\r\n	<li>Oferecer suporte cont&iacute;nuo e comunicar qualquer altera&ccedil;&atilde;o relevante no acordo de coprodu&ccedil;&atilde;o.</li>\r\n</ul>\r\n\r\n<h3>6. Revis&otilde;es e Altera&ccedil;&otilde;es</h3>\r\n\r\n<p>Esta pol&iacute;tica pode ser revisada e atualizada periodicamente para refletir mudan&ccedil;as na legisla&ccedil;&atilde;o, nas nossas opera&ccedil;&otilde;es ou nas necessidades da nossa comunidade. Notificaremos os criadores de conte&uacute;do sobre quaisquer altera&ccedil;&otilde;es significativas nesta pol&iacute;tica.</p>\r\n\r\n<h3>7. Contato</h3>\r\n\r\n<p>Se voc&ecirc; tiver d&uacute;vidas ou precisar de mais informa&ccedil;&otilde;es sobre nossa pol&iacute;tica de agenciamento e coprodu&ccedil;&atilde;o, entre em contato conosco atrav&eacute;s do [e-mail de suporte] ou do [formul&aacute;rio de contato] dispon&iacute;vel na plataforma.</p>\r\n\r\n<h3>8. Conclus&atilde;o</h3>\r\n\r\n<p>Estamos comprometidos em fornecer um ambiente colaborativo e justo para todos os criadores de conte&uacute;do. Agradecemos sua confian&ccedil;a e estamos ansiosos para trabalhar juntos para alcan&ccedil;ar grandes resultados.</p>\r\n&nbsp;\r\n\r\n<p>Ao utilizar nossos servi&ccedil;os, voc&ecirc; concorda com os termos descritos nesta pol&iacute;tica. Agradecemos por fazer parte da nossa comunidade e por contribuir com seu talento e criatividade.</p>', 'coproducao', 'Politicas de Coprodução e Agenciamento', 'coprodução, agenciamento, coproduzir', 'port', 'all'),
(9, 'Política de cookies', '<p><strong>Pol&iacute;tica de Cookies - Dojobe&nbsp;</strong></p>\r\n\r\n<p>Esta Pol&iacute;tica de Cookies descreve como a&nbsp;<strong>Dojobe&nbsp;</strong>&nbsp;(&quot;n&oacute;s&quot;, &quot;nosso&quot;, &quot;Plataforma&quot;) utiliza cookies e tecnologias semelhantes quando voc&ecirc; acessa ou utiliza nossa plataforma. Leia esta pol&iacute;tica cuidadosamente para entender como utilizamos cookies e como voc&ecirc; pode controlar o uso deles.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>O que s&atilde;o Cookies?</strong>&nbsp;Cookies s&atilde;o pequenos arquivos de texto que s&atilde;o armazenados no seu dispositivo quando voc&ecirc; acessa nossa plataforma. Eles s&atilde;o amplamente utilizados para fazer com que os sites funcionem de forma mais eficiente, bem como para fornecer informa&ccedil;&otilde;es aos propriet&aacute;rios do site.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tipos de Cookies Utilizados:</strong></p>\r\n\r\n	<ul>\r\n		<li><strong>Cookies Necess&aacute;rios:</strong>&nbsp;Esses cookies s&atilde;o essenciais para o funcionamento da nossa plataforma e nos permitem fornecer os servi&ccedil;os que voc&ecirc; solicitou. Eles incluem, por exemplo, cookies que permitem que voc&ecirc; fa&ccedil;a login em &aacute;reas seguras da nossa plataforma.</li>\r\n		<li><strong>Cookies de Desempenho:</strong>&nbsp;Esses cookies nos ajudam a entender como os visitantes interagem com nossa plataforma, fornecendo informa&ccedil;&otilde;es sobre &aacute;reas visitadas, tempo gasto em cada p&aacute;gina e outros dados anal&iacute;ticos. Isso nos permite melhorar o funcionamento da plataforma.</li>\r\n		<li><strong>Cookies de Funcionalidade:</strong>&nbsp;Esses cookies s&atilde;o usados para reconhec&ecirc;-lo quando voc&ecirc; retorna &agrave; nossa plataforma e nos permite personalizar o conte&uacute;do para voc&ecirc;, lembrando suas prefer&ecirc;ncias (por exemplo, idioma ou regi&atilde;o).</li>\r\n		<li><strong>Cookies de Publicidade:</strong>&nbsp;Esses cookies s&atilde;o utilizados para direcionar publicidade relevante para voc&ecirc; com base nos seus interesses, bem como para medir a efic&aacute;cia das campanhas publicit&aacute;rias.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Controle de Cookies:</strong>&nbsp;Voc&ecirc; pode controlar e/ou excluir cookies conforme desejar. Voc&ecirc; pode excluir todos os cookies j&aacute; armazenados no seu dispositivo e configurar a maioria dos navegadores para evitar que os cookies sejam armazenados. No entanto, se voc&ecirc; optar por bloquear os cookies, talvez n&atilde;o consiga acessar determinadas partes da nossa plataforma ou utilizar alguns de seus recursos.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Altera&ccedil;&otilde;es na Pol&iacute;tica de Cookies:</strong>&nbsp;Reservamo-nos o direito de atualizar esta Pol&iacute;tica de Cookies periodicamente para refletir mudan&ccedil;as em nossas pr&aacute;ticas de cookies. Recomendamos que voc&ecirc; revise esta pol&iacute;tica regularmente para se manter informado sobre como estamos usando cookies.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Contato:</strong>&nbsp;Se voc&ecirc; tiver d&uacute;vidas sobre nossa Pol&iacute;tica de Cookies ou sobre o uso de cookies em nossa plataforma, entre em contato conosco atrav&eacute;s dos dados de contato fornecidos na plataforma.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Ao continuar a utilizar nossa plataforma, voc&ecirc; concorda com o uso de cookies de acordo com esta Pol&iacute;tica de Cookies. Se voc&ecirc; n&atilde;o concordar com o uso de cookies, por favor, n&atilde;o continue a utilizar nossa plataforma.</p>', 'cookies', 'Política de cookies da Dojobe', 'cookies,', 'port', 'all');

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `token` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `id_hash` (`token`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `password_resets`
--

INSERT INTO `password_resets` (`id`, `token`, `email`, `created_at`) VALUES
(9, '$2y$10$iTcT2aBYHAMiCUl1S/HDtuz19bP2GpBtNY5e/2JlBpGIb5llpsTYW', 'urukehehoyi964@gmail.com', '2025-10-21 03:33:33'),
(10, '$2y$10$x6zT2cSE1P5cL0qGEdBqDulaph9s1iACU7dw8hMPAozBjhnVj3Sqm', 'rachelduffy@optonline.net', '2025-10-21 15:29:56'),
(11, '$2y$10$3C32IwVBTTjWTz80vBe4ROyCdPA2mmb7vvyX4iKKOVm4oTQiFISoC', 'adamsshan30@msn.com', '2025-10-22 04:04:36'),
(12, '$2y$10$tKKY04QUB916CjchwcGT9uKgbQXPF4Cvpys0gw8Pcr4NqHFTor9v.', 'min@freedomorthodontics.com', '2025-10-23 08:19:00'),
(13, '$2y$10$w6BwW89yXqQZp9IcBvCSyO0lSMZaPLuP/JgLAUAPLkJhAAVCPGSEm', 'jcrowe911@gmail.com', '2025-10-23 14:27:31'),
(14, '$2y$10$bTnsQyC6l.4YrwxG7UZzCuSyNzxbie0bCjymioRr2FfTlTqmhRK9y', 'ben.houseman@gmail.com', '2025-10-23 16:06:49'),
(15, '$2y$10$Ix3BR4h64fhBTQGPfOrSH.esM2j9MQx83Hj2hRBBnunHOF55k0Pn.', 'jessicazuberek@gmail.com', '2025-10-23 21:35:26'),
(16, '$2y$10$c4.aQ.V0wRkOIGm/1R9IHuannuh3NFYnfUbknrTK.kI7joBfykyIC', 'salesinfo@lswrep.com', '2025-10-24 01:06:38'),
(17, '$2y$10$xHusiy91HvfLB31ouCJATOgiN30.tk1XahZFaFPrj62XklhF/Dq4m', 'mikevedder@kustomkey.com', '2025-10-24 06:27:37'),
(18, '$2y$10$AOvs/J.HUJGK.L/mXjxXWelPPfsimSMsb55Rnknj87adkVU6dM4/2', 'mstangcobralover@hotmail.com', '2025-10-24 18:52:01'),
(19, '$2y$10$16fZR.1SsL9jZB7ENlj2.u/YRdkjjmmgMNMadq.hL6QWaqY9hffvm', 'tlisenby@ctia.org', '2025-10-25 14:14:23'),
(20, '$2y$10$cCF9NoF41khXFq6/wtr1PeGHjWKQn.9t2l/T7pJRhr1/wd6RdJtGG', 'rishabhss.saini@gmail.com', '2025-10-27 10:07:24');

-- --------------------------------------------------------

--
-- Estrutura para tabela `payment_gateways`
--

DROP TABLE IF EXISTS `payment_gateways`;
CREATE TABLE IF NOT EXISTS `payment_gateways` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` enum('1','0') NOT NULL DEFAULT '1',
  `sandbox` enum('true','false') NOT NULL DEFAULT 'true',
  `fee` decimal(3,1) NOT NULL,
  `fee_cents` decimal(6,2) NOT NULL,
  `email` varchar(80) NOT NULL,
  `token` varchar(200) NOT NULL,
  `key` varchar(255) NOT NULL,
  `key_secret` varchar(255) NOT NULL,
  `bank_info` text NOT NULL,
  `recurrent` enum('yes','no') NOT NULL,
  `logo` varchar(50) NOT NULL,
  `webhook_secret` varchar(255) NOT NULL,
  `subscription` enum('yes','no') NOT NULL DEFAULT 'yes',
  `ccbill_accnum` varchar(200) NOT NULL,
  `ccbill_subacc` varchar(200) NOT NULL,
  `ccbill_flexid` varchar(200) NOT NULL,
  `ccbill_salt` varchar(200) NOT NULL,
  `ccbill_subacc_subscriptions` varchar(200) NOT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `project_secret` varchar(255) DEFAULT NULL,
  `ccbill_datalink_username` varchar(255) DEFAULT NULL,
  `ccbill_datalink_password` varchar(255) DEFAULT NULL,
  `ccbill_skip_subaccount_cancellations` tinyint(1) NOT NULL DEFAULT 0,
  `allow_payments_alipay` tinyint(1) NOT NULL DEFAULT 0,
  `crypto_currency` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `name`, `type`, `enabled`, `sandbox`, `fee`, `fee_cents`, `email`, `token`, `key`, `key_secret`, `bank_info`, `recurrent`, `logo`, `webhook_secret`, `subscription`, `ccbill_accnum`, `ccbill_subacc`, `ccbill_flexid`, `ccbill_salt`, `ccbill_subacc_subscriptions`, `project_id`, `project_secret`, `ccbill_datalink_username`, `ccbill_datalink_password`, `ccbill_skip_subaccount_cancellations`, `allow_payments_alipay`, `crypto_currency`) VALUES
(1, 'PayPal', 'normal', '0', 'false', 5.4, 0.30, '', '02bGGfD9bHevK3eJN06CdDvFSTXsTrTG44yGdAONeN1R37jqnLY1PuNF0mJRoFnsEygyf28yePSCA1eR0alQk4BX89kGG9Rlha2D2KX55TpDFNR5o774OshrkHSZLOFo2fAhHzcWKnwsYDFKgwuaRg', '', '', '', 'yes', 'paypal.png', '', 'yes', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(2, 'Stripe', 'card', '1', 'false', 2.9, 0.30, '', 'asfQSGRvYzS1P0X745krAAyHeU7ZbTpHbYKnxI2abQsBUi48EpeAu5lFAU2iBmsUWO5tpgAn9zzussI4Cce5ZcANIAmfBz0bNR9g3UfR4cserhkJwZwPsETiXiZuCixXVDHhCItuXTPXXSA6KITEoT', 'pk_live_51PZMp4J1uoiR7IYXjeUBWLgvuPDr6iaBrNZCocR36BXUaEkvVMfU68aO1F35RDJIqfWxmScdyvYb5DnOUF4HbR2x00PAuJnqxn', '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', '', 'yes', 'stripe.png', 'whsec_BPEU18oM7gaC7p0nqIOAJ4tg475gNdA5', 'yes', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(3, 'Bank', 'bank', '0', 'false', 0.0, 0.00, '', 'MUXRUWEuhBulbgDGUS4PbTCCjlUGr4VcGb59RU2rRWtgCHstntxq2eOeeDvIHKUwxj5z2njJ6DUGfmt0PzFnEWuspasmCserf705dJeQcVttZtHugTlBMlzt0Uf6K4DjVmGVtyZuPzXakjrFGVLYRd', '', '', '', 'no', '', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(4, 'CCBill', 'card', '0', 'false', 0.0, 0.00, '', 'zYYFZRjTfypGTPg0TCgWK8SKdLjGEMuNGMYedjl1D0hgmSPDS0UUduCNqkYL609NWH6ru6qdaBGFIzxeL85HwEtIOBfEQRC16qIQZ1zkTM1wbcC4fe2Wxpom6g8zmoOR1ppFN6MbPFHUJQur434Nzg', '', '', '', 'yes', '', '', 'yes', '', '', '', '', '', NULL, NULL, '', '', 0, 0, NULL),
(5, 'Paystack', 'card', '0', 'false', 0.0, 0.00, '', '4w2JnfBSvoZKLiVRzHRWu3pzkgsFslVZBn8Z4mmwzVJ5KVfiFZN9kTgfFEVu90E1wPN8TnaXhtmYKwkzZ0p6HGUo1S5yVXisVxlD2PIOcm6v096akLbMAgjxiXCdFlCALkZXqi4pfrwxpYd7BGFk8c', '', '', '', 'yes', '', '', 'yes', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(6, 'Coinpayments', 'normal', '0', 'false', 0.0, 0.00, '', 'nzfADI4PgRHRn8m3r7UrR0arnfT9u1rDOQL5SKGbqPjDOZGDZA35NX3y0lQBAdmIyGVS58Rr9OtebfpGNpiXROq1G1DJNqq6xoD04fLKWTaAS2Xh3CZvECa1OfH5cchJ2P6kEl167Caax2XyAwwjGl', '', '', '', 'no', 'coinpayments.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(7, 'Mercadopago', 'normal', '0', 'false', 0.0, 0.90, '', 'UmqNKk1EzDyjGgJxAswkhzL8bSdHusZh8RxF4hqzCEf52qdMOAMzMCchsKrLZgPcuTry6AZLLG7DUGwlpXVVpv1CajJbiV3j4EvPqbbIkBCoOptrDWZY1nRJhMc39v6NDOKFo9TjHQdnwU5pZSSReW', '', 'APP_USR-3182311960413396-070817-42ff636c8401078a3fe7a077c95e305e-1738088847', '', 'yes', 'mercadopago.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(8, 'Flutterwave', 'normal', '0', 'false', 0.0, 0.00, '', 'jMF4RWTW14dfJxlusZ22jGeCLdc8i3416CNiw2ny4l8kGBILQDTrhLtCsDxmb1MfBQA6xGh5BhQBrOXCUBB8lQMZrCaJQykG3Nxbv0ADFUSJiNewq7kbSkxyR3rCbbVjhBYMtWt6dpJTB78CafpA6T', '', '', '', 'no', 'flutterwave.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(9, 'Mollie', 'normal', '0', 'false', 0.0, 0.00, '', 'EqvhQZimw0L3zWQ35AV93iDOqgQnkXV9cqLnIvgsnz2zRLpjeZUv5JnC3QzTjtctYuVmzuo06N31tLCRPFJNkomdh7Rhk2zxe68GzgWsL1hc6YEM5V5W6JVnqwQfAzNGZkY6ZRFKmZCMbFQXOF3WkR', '', '', '', 'no', 'mollie.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(10, 'Razorpay', 'normal', '0', 'false', 0.0, 0.00, '', 'PsNqGq2rlLjo4AaTTsJpxshttwFFrLXjaKcwwQeG2r8aekDoETl9OG1cqND9PluycCfXazyzUiLo7ZFWs2tBWYwOpGcM8i5ID93Kr7Y6l79XrBcST56QONVpEcAuLRs36Z2t1Q1MBlR315c6vSpAFX', '', '', '', 'no', 'razorpay.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(11, 'Coinbase', 'normal', '0', 'true', 0.0, 0.00, '', 'sjuRSAj4VdjaBx2bcdXgDbvTdpiHJF40CNsX5vqw4VaaaohvDS48Oc30N6DAxIxChfd2qWQ99q6e11E90OOKwmo0RbXUv3fdpPksWMvJUkm8i7F5ajbsy0LbjqyidUBqJP0BG6H3NkidnbhtfcDF45', '', '', '', 'no', 'coinbase.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(12, 'NowPayments', 'normal', '0', 'false', 0.0, 0.00, '', '4DPdFIbqqPqI8XjseCCV1RRVwVuuQx6WtYdHIkMDtxgUKCQaS9Mqww4WUwa6fIxn7NN9ediLstZyIYQQIIt9l6rUANRSzrUVt86J5FopCkZHvysC8CMRBS3LOnKDbNHiUmVh91CkmvjiwCrFApfrtH', '', '', '', 'no', 'nowpayments.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(13, 'Cardinity', 'card', '0', 'false', 0.0, 0.00, '', '0DBObWPPA7adVNLvhRC1YwZBANmK4i0PBREfPzyuG0IdJn1qP0X5jkIPsMNCAXh3plFI8IRXm0onNNjPPWnCqoOP89ZCG3ycIYLwX9x6kxYBW8vci5BGFgCG3BTGI7ytEkLnxz9BuJV1N9XfhDexPd', '', '', '', 'yes', '', '', 'yes', '', '', '', '', '', '', '', NULL, NULL, 0, 0, NULL),
(14, 'Binance', 'normal', '0', 'true', 0.0, 0.00, '', 'WZ4ioje1ilYBfbPFAtSi9LqwoMhm46vZWfVlnhYEfEdc6Uok1j1zRCwvqfzBmlL7EEoao1JUTIV2okfS6rvZ6ZjdCTXaFEesCmrPJlY4jWiSSJqs5x1MpJLt5vL1MU5Ekc3sNjlb8i1oyh1WRec0j4', '', '', '', 'no', 'binance.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(15, 'OpenPix', 'normal', '1', 'false', 0.0, 0.80, '', 'dS8eq1AlWHRWyOtuNVHTZZgdnm1RETPXu9ubP3ajKvIpwSqAhMvrVGFKoSArK8iMxJOTmRiGE6KvYsZaGI8Xt8wUG1jmQpjt67VT5ib3Yln6omDj96TfYUhzeSQj0X8XDjwXgaVa4zzouV2O19mSu9', 'Q2xpZW50X0lkX2IzMDkwYmYyLTA1ZTAtNDViZi1iZjk3LTQxMTkyNWI3MzZmMzpDbGllbnRfU2VjcmV0X3Z5TjJpdkI5OG1vdWFBWWMxbVJrZDM4L0ppeTUyVE5HOUJ2bVN5TEp5OFk9', '', '', 'no', 'openpix.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(16, 'Atlos', 'normal', '0', 'true', 0.0, 0.00, '', 'eeLFrTce9BF5cAr9et4w7t9hxVsIsTBJJ3wdE1UdJYsfWoAJcuazGoMQnB9toBt2sKKRUOvyRGIvBhQ9ZSmK129EPAOS1lhePeG2QLDVRfL3VqkFxNpntAcVbtpViDgWgh0o1lakA1yDCMWSULy6Xx', '', '', '', 'no', 'atlos.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pay_per_views`
--

DROP TABLE IF EXISTS `pay_per_views`;
CREATE TABLE IF NOT EXISTS `pay_per_views` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `updates_id` int(10) UNSIGNED NOT NULL,
  `messages_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pay_per_views_user_id_index` (`user_id`),
  KEY `pay_per_views_updates_id_index` (`updates_id`),
  KEY `pay_per_views_messages_id_index` (`messages_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `pay_per_views`
--

INSERT INTO `pay_per_views` (`id`, `user_id`, `updates_id`, `messages_id`, `created_at`, `updated_at`) VALUES
(1, 4, 3, 0, '2024-05-18 02:42:18', '2024-05-18 02:42:18'),
(2, 4, 2, 0, '2024-05-18 02:42:42', '2024-05-18 02:42:42'),
(3, 4, 8, 0, '2024-05-18 02:09:07', '2024-05-18 02:09:07'),
(4, 4, 7, 0, '2024-05-18 02:09:34', '2024-05-18 02:09:34'),
(5, 7, 8, 0, '2024-05-18 16:13:31', '2024-05-18 16:13:31'),
(6, 5, 8, 0, '2024-05-22 00:12:12', '2024-05-22 00:12:12'),
(7, 5, 7, 0, '2024-05-22 00:12:33', '2024-05-22 00:12:33'),
(8, 8, 8, 0, '2024-05-22 00:21:22', '2024-05-22 00:21:22'),
(9, 8, 7, 0, '2024-05-22 00:27:23', '2024-05-22 00:27:23'),
(10, 5, 0, 10, '2024-05-22 00:56:06', '2024-05-22 00:56:06'),
(11, 17, 8, 0, '2024-05-30 17:35:10', '2024-05-30 17:35:10'),
(12, 17, 7, 0, '2024-05-30 17:43:40', '2024-05-30 17:43:40'),
(13, 17, 6, 0, '2024-05-30 17:44:43', '2024-05-30 17:44:43'),
(14, 17, 3, 0, '2024-05-30 17:45:22', '2024-05-30 17:45:22'),
(15, 17, 46, 0, '2024-06-01 21:16:03', '2024-06-01 21:16:03'),
(16, 17, 37, 0, '2024-06-01 21:17:03', '2024-06-01 21:17:03'),
(17, 25, 46, 0, '2024-06-18 16:58:56', '2024-06-18 16:58:56'),
(18, 4, 6, 0, '2024-07-03 16:06:12', '2024-07-03 16:06:12'),
(19, 4, 0, 34, '2024-07-03 16:09:34', '2024-07-03 16:09:34'),
(20, 88, 75, 0, '2025-04-24 02:52:23', '2025-04-24 02:52:23'),
(21, 88, 74, 0, '2025-04-24 02:52:34', '2025-04-24 02:52:34'),
(22, 88, 73, 0, '2025-04-24 02:52:58', '2025-04-24 02:52:58'),
(23, 88, 72, 0, '2025-04-24 02:53:07', '2025-04-24 02:53:07'),
(24, 88, 71, 0, '2025-04-24 02:53:14', '2025-04-24 02:53:14'),
(25, 88, 46, 0, '2025-04-24 02:53:50', '2025-04-24 02:53:50'),
(26, 88, 37, 0, '2025-04-24 02:54:03', '2025-04-24 02:54:03'),
(27, 88, 8, 0, '2025-04-24 02:54:36', '2025-04-24 02:54:36'),
(28, 88, 7, 0, '2025-04-24 02:54:42', '2025-04-24 02:54:42'),
(29, 88, 6, 0, '2025-04-24 02:54:54', '2025-04-24 02:54:54'),
(30, 88, 5, 0, '2025-04-24 02:55:01', '2025-04-24 02:55:01'),
(31, 88, 4, 0, '2025-04-24 02:55:08', '2025-04-24 02:55:08'),
(32, 88, 3, 0, '2025-04-24 02:55:17', '2025-04-24 02:55:17'),
(33, 88, 2, 0, '2025-04-24 02:55:26', '2025-04-24 02:55:26'),
(34, 93, 8, 0, '2025-04-24 02:59:00', '2025-04-24 02:59:00'),
(35, 93, 7, 0, '2025-04-24 02:59:27', '2025-04-24 02:59:27'),
(36, 93, 2, 0, '2025-04-24 03:04:28', '2025-04-24 03:04:28'),
(37, 93, 6, 0, '2025-04-24 03:04:36', '2025-04-24 03:04:36'),
(38, 93, 5, 0, '2025-04-24 03:04:45', '2025-04-24 03:04:45'),
(39, 93, 4, 0, '2025-04-24 03:04:52', '2025-04-24 03:04:52'),
(40, 93, 3, 0, '2025-04-24 03:04:59', '2025-04-24 03:04:59'),
(41, 84, 7, 0, '2025-04-24 03:09:00', '2025-04-24 03:09:00'),
(42, 95, 54, 0, '2025-04-24 15:42:00', '2025-04-24 15:42:00'),
(43, 95, 51, 0, '2025-04-24 15:42:14', '2025-04-24 15:42:14'),
(44, 95, 48, 0, '2025-04-24 15:42:32', '2025-04-24 15:42:32'),
(45, 101, 8, 0, '2025-04-25 00:12:19', '2025-04-25 00:12:19');

-- --------------------------------------------------------

--
-- Estrutura para tabela `plans`
--

DROP TABLE IF EXISTS `plans`;
CREATE TABLE IF NOT EXISTS `plans` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `interval` varchar(100) NOT NULL,
  `paystack` varchar(150) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plans_name_unique` (`name`),
  KEY `plans_user_id_index` (`user_id`),
  KEY `plans_paystack_index` (`paystack`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `plans`
--

INSERT INTO `plans` (`id`, `user_id`, `name`, `price`, `interval`, `paystack`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'user_3_weekly', 20.00, 'weekly', '', '1', '2024-05-18 02:40:05', '2024-05-18 02:40:05'),
(2, 3, 'user_3', 50.00, 'monthly', '', '1', '2024-05-18 02:40:05', '2024-05-18 02:40:05'),
(3, 3, 'user_3_quarterly', 130.00, 'quarterly', '', '1', '2024-05-18 02:40:05', '2024-05-18 02:40:05'),
(4, 3, 'user_3_biannually', 200.00, 'biannually', '', '1', '2024-05-18 02:40:05', '2024-05-18 02:40:05'),
(5, 3, 'user_3_yearly', 25000.00, 'yearly', '', '1', '2024-05-18 02:40:05', '2025-04-24 03:06:33'),
(6, 5, 'user_5_weekly', 9.00, 'weekly', '', '1', '2024-05-22 00:43:01', '2024-06-25 23:42:31'),
(7, 5, 'user_5', 23.00, 'monthly', '', '1', '2024-05-22 00:43:01', '2024-06-25 23:42:31'),
(8, 5, 'user_5_quarterly', 50.00, 'quarterly', '', '1', '2024-05-22 00:43:01', '2024-06-25 23:42:31'),
(9, 5, 'user_5_biannually', 70.00, 'biannually', '', '1', '2024-05-22 00:43:01', '2024-06-25 23:42:31'),
(10, 5, 'user_5_yearly', 120.00, 'yearly', '', '1', '2024-05-22 00:43:01', '2024-06-25 23:42:31'),
(11, 18, 'user_18', 50.00, 'monthly', '', '1', '2024-05-30 20:24:16', '2024-05-30 20:24:16'),
(12, 18, 'user_18_quarterly', 130.00, 'quarterly', '', '0', '2024-05-30 20:24:16', '2024-05-30 20:24:16'),
(13, 18, 'user_18_biannually', 250.00, 'biannually', '', '0', '2024-05-30 20:24:16', '2024-05-30 20:24:16'),
(14, 18, 'user_18_yearly', 500.00, 'yearly', '', '1', '2024-05-30 20:24:16', '2024-05-30 20:24:16'),
(15, 19, 'user_19', 50.00, 'monthly', '', '1', '2024-05-31 03:50:16', '2024-05-31 03:50:16'),
(16, 19, 'user_19_yearly', 500.00, 'yearly', '', '1', '2024-05-31 03:50:16', '2024-05-31 03:50:16'),
(17, 34, 'user_34_weekly', 50.00, 'weekly', '', '0', '2024-06-26 01:26:07', '2024-06-26 01:26:07'),
(18, 34, 'user_34', 80.00, 'monthly', '', '1', '2024-06-26 01:26:07', '2024-06-26 01:26:07'),
(19, 34, 'user_34_quarterly', 200.00, 'quarterly', '', '0', '2024-06-26 01:26:07', '2024-06-26 01:26:07'),
(20, 34, 'user_34_biannually', 450.00, 'biannually', '', '0', '2024-06-26 01:26:07', '2024-06-26 01:26:07'),
(21, 34, 'user_34_yearly', 700.00, 'yearly', '', '0', '2024-06-26 01:26:07', '2024-06-26 01:26:07'),
(22, 31, 'user_31_weekly', 50.00, 'weekly', '', '0', '2024-06-26 23:19:31', '2024-06-26 23:19:31'),
(23, 31, 'user_31', 75.00, 'monthly', '', '1', '2024-06-26 23:19:31', '2024-06-26 23:19:31'),
(24, 41, 'user_41', 150.00, 'monthly', '', '1', '2024-06-27 07:23:31', '2024-06-27 23:00:38'),
(25, 41, 'user_41_weekly', 50.00, 'weekly', '', '1', '2024-06-27 23:00:38', '2024-06-27 23:00:38'),
(26, 41, 'user_41_quarterly', 200.00, 'quarterly', '', '1', '2024-06-27 23:00:38', '2024-06-27 23:00:38'),
(27, 41, 'user_41_biannually', 250.00, 'biannually', '', '1', '2024-06-27 23:00:38', '2024-06-27 23:00:38'),
(28, 41, 'user_41_yearly', 700.00, 'yearly', '', '1', '2024-06-27 23:00:38', '2024-06-27 23:00:38'),
(29, 61, 'user_61_weekly', 30.00, 'weekly', '', '1', '2025-01-30 21:47:40', '2025-01-30 21:47:40'),
(30, 61, 'user_61', 60.00, 'monthly', '', '1', '2025-01-30 21:47:40', '2025-01-30 21:47:40'),
(31, 61, 'user_61_quarterly', 90.00, 'quarterly', '', '1', '2025-01-30 21:47:40', '2025-01-30 21:47:40'),
(32, 61, 'user_61_biannually', 180.00, 'biannually', '', '1', '2025-01-30 21:47:40', '2025-01-30 21:47:40'),
(33, 61, 'user_61_yearly', 360.00, 'yearly', '', '1', '2025-01-30 21:47:40', '2025-01-30 21:47:40'),
(34, 62, 'user_62_weekly', 30.00, 'weekly', '', '1', '2025-01-30 21:59:22', '2025-01-30 22:01:14'),
(35, 62, 'user_62', 60.00, 'monthly', '', '1', '2025-01-30 21:59:22', '2025-01-30 21:59:22'),
(36, 62, 'user_62_quarterly', 90.00, 'quarterly', '', '1', '2025-01-30 21:59:22', '2025-01-30 22:01:14'),
(37, 62, 'user_62_biannually', 180.00, 'biannually', '', '1', '2025-01-30 21:59:22', '2025-01-30 22:01:14'),
(38, 62, 'user_62_yearly', 200.00, 'yearly', '', '1', '2025-01-30 21:59:22', '2025-01-30 22:01:14'),
(39, 60, 'user_60_weekly', 15.00, 'weekly', '', '1', '2025-02-03 21:42:26', '2025-02-17 22:49:32'),
(40, 60, 'user_60', 50.00, 'monthly', '', '1', '2025-02-03 21:42:26', '2025-02-17 22:49:32'),
(41, 60, 'user_60_quarterly', 150.00, 'quarterly', '', '1', '2025-02-03 21:42:26', '2025-02-17 22:49:32'),
(42, 60, 'user_60_biannually', 200.00, 'biannually', '', '1', '2025-02-03 21:42:26', '2025-02-17 22:49:32'),
(43, 60, 'user_60_yearly', 300.00, 'yearly', '', '1', '2025-02-03 21:42:26', '2025-02-17 22:49:32'),
(44, 71, 'user_71_weekly', 25.00, 'weekly', '', '0', '2025-02-04 16:29:19', '2025-02-04 16:29:19'),
(45, 71, 'user_71', 35.00, 'monthly', '', '1', '2025-02-04 16:29:19', '2025-02-04 16:29:19'),
(46, 71, 'user_71_quarterly', 50.00, 'quarterly', '', '0', '2025-02-04 16:29:19', '2025-02-04 16:29:19'),
(47, 71, 'user_71_biannually', 60.00, 'biannually', '', '0', '2025-02-04 16:29:19', '2025-02-04 16:29:19'),
(48, 71, 'user_71_yearly', 70.00, 'yearly', '', '0', '2025-02-04 16:29:19', '2025-02-04 16:29:19'),
(49, 59, 'user_59_weekly', 39.00, 'weekly', '', '0', '2025-03-25 21:23:38', '2025-03-25 21:23:38'),
(50, 59, 'user_59', 59.00, 'monthly', '', '1', '2025-03-25 21:23:38', '2025-03-25 21:23:38'),
(51, 59, 'user_59_quarterly', 149.00, 'quarterly', '', '0', '2025-03-25 21:23:38', '2025-03-25 21:23:38'),
(52, 162, 'plan_user_162_weekly', 9.99, 'weekly', '', '1', '2025-10-29 09:43:03', '2025-10-29 09:43:03'),
(53, 162, 'plan_user_162', 19.90, 'monthly', '', '1', '2025-10-29 09:43:03', '2025-10-29 09:43:03'),
(54, 162, 'plan_user_162_quarterly', 59.90, 'quarterly', '', '1', '2025-10-29 09:43:03', '2025-10-29 09:43:03'),
(55, 162, 'plan_user_162_biannually', 110.00, 'biannually', '', '1', '2025-10-29 09:43:03', '2025-10-29 09:43:03'),
(56, 162, 'plan_user_162_yearly', 200.00, 'yearly', '', '1', '2025-10-29 09:43:03', '2025-10-29 09:43:03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` char(20) NOT NULL DEFAULT 'digital',
  `price` decimal(10,2) NOT NULL,
  `delivery_time` int(10) UNSIGNED NOT NULL,
  `country_free_shipping` char(20) NOT NULL,
  `tags` text NOT NULL,
  `description` text NOT NULL,
  `file` varchar(255) NOT NULL,
  `mime` varchar(50) DEFAULT NULL,
  `extension` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_fee` decimal(10,2) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `box_contents` varchar(200) NOT NULL,
  `category` varchar(20) DEFAULT NULL,
  `downloads` int(10) UNSIGNED NOT NULL,
  `external_link` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `purchases`
--

DROP TABLE IF EXISTS `purchases`;
CREATE TABLE IF NOT EXISTS `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `transactions_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `delivery_status` varchar(50) NOT NULL DEFAULT 'delivered',
  `description_custom_content` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchases_transactions_id_index` (`transactions_id`),
  KEY `purchases_user_id_index` (`user_id`),
  KEY `purchases_products_id_index` (`products_id`),
  KEY `expired_at` (`expired_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `reels`
--

DROP TABLE IF EXISTS `reels`;
CREATE TABLE IF NOT EXISTS `reels` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `likes` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(255) NOT NULL DEFAULT 'private',
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `type` (`type`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `reels`
--

INSERT INTO `reels` (`id`, `user_id`, `title`, `views`, `likes`, `comments_count`, `type`, `status`, `created_at`, `updated_at`) VALUES
(2, 122, '', 10, 2, 0, 'public', 'active', '2025-08-28 00:15:12', '2026-03-03 18:46:27'),
(3, 122, '', 7, 0, 0, 'public', 'active', '2025-08-28 00:16:13', '2026-03-03 18:46:21'),
(4, 122, '', 6, 0, 0, 'public', 'active', '2025-08-28 00:16:39', '2026-03-03 18:46:09');

-- --------------------------------------------------------

--
-- Estrutura para tabela `reel_replies`
--

DROP TABLE IF EXISTS `reel_replies`;
CREATE TABLE IF NOT EXISTS `reel_replies` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reels_id` bigint(20) UNSIGNED NOT NULL,
  `comment_reels_id` bigint(20) UNSIGNED NOT NULL,
  `reply` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `reels_id` (`reels_id`),
  KEY `comment_reels_id` (`comment_reels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `referrals`
--

DROP TABLE IF EXISTS `referrals`;
CREATE TABLE IF NOT EXISTS `referrals` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `referred_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `referrals_user_id_index` (`user_id`),
  KEY `referrals_referred_by_index` (`referred_by`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `referrals`
--

INSERT INTO `referrals` (`id`, `user_id`, `referred_by`, `created_at`, `updated_at`) VALUES
(1, 33, 31, '2024-06-25 23:36:25', '2024-06-25 23:36:25'),
(2, 34, 31, '2024-06-25 23:37:38', '2024-06-25 23:37:38'),
(3, 37, 30, '2024-06-26 13:20:50', '2024-06-26 13:20:50'),
(4, 39, 31, '2024-06-26 16:26:24', '2024-06-26 16:26:24'),
(5, 40, 31, '2024-06-26 20:22:02', '2024-06-26 20:22:02'),
(6, 41, 31, '2024-06-26 20:48:46', '2024-06-26 20:48:46'),
(7, 43, 31, '2024-06-27 05:32:47', '2024-06-27 05:32:47'),
(8, 45, 31, '2024-06-27 09:50:31', '2024-06-27 09:50:31'),
(9, 46, 31, '2024-06-27 19:09:22', '2024-06-27 19:09:22'),
(10, 47, 31, '2024-06-28 13:05:10', '2024-06-28 13:05:10'),
(11, 61, 59, '2025-01-30 19:08:05', '2025-01-30 19:08:05'),
(12, 62, 61, '2025-01-30 19:54:48', '2025-01-30 19:54:48'),
(13, 63, 59, '2025-01-31 12:50:50', '2025-01-31 12:50:50'),
(14, 64, 59, '2025-02-02 03:47:57', '2025-02-02 03:47:57'),
(15, 65, 59, '2025-02-02 03:48:13', '2025-02-02 03:48:13'),
(16, 66, 59, '2025-02-02 23:59:46', '2025-02-02 23:59:46'),
(17, 78, 60, '2025-02-06 14:51:52', '2025-02-06 14:51:52'),
(18, 79, 60, '2025-02-07 03:19:28', '2025-02-07 03:19:28'),
(19, 81, 60, '2025-02-08 04:44:37', '2025-02-08 04:44:37'),
(20, 84, 60, '2025-02-09 03:33:22', '2025-02-09 03:33:22'),
(21, 86, 60, '2025-02-09 21:28:05', '2025-02-09 21:28:05'),
(22, 87, 60, '2025-02-09 21:28:41', '2025-02-09 21:28:41'),
(23, 92, 60, '2025-02-14 03:25:04', '2025-02-14 03:25:04'),
(24, 93, 60, '2025-02-14 11:32:36', '2025-02-14 11:32:36'),
(25, 94, 60, '2025-02-14 22:52:05', '2025-02-14 22:52:05'),
(26, 98, 60, '2025-02-19 21:48:56', '2025-02-19 21:48:56'),
(27, 99, 60, '2025-02-20 09:14:54', '2025-02-20 09:14:54'),
(28, 100, 60, '2025-02-20 09:17:48', '2025-02-20 09:17:48'),
(29, 102, 59, '2025-03-26 19:51:25', '2025-03-26 19:51:25'),
(30, 104, 59, '2025-04-03 06:25:29', '2025-04-03 06:25:29'),
(31, 113, 59, '2025-05-06 15:56:09', '2025-05-06 15:56:09'),
(32, 116, 59, '2025-05-29 14:50:34', '2025-05-29 14:50:34'),
(33, 162, 161, '2025-10-28 19:07:02', '2025-10-28 19:07:02'),
(34, 164, 161, '2025-10-29 08:49:51', '2025-10-29 08:49:51'),
(35, 168, 59, '2025-11-25 07:56:43', '2025-11-25 07:56:43'),
(36, 171, 59, '2025-12-23 14:58:45', '2025-12-23 14:58:45'),
(37, 175, 59, '2026-01-18 17:03:39', '2026-01-18 17:03:39');

-- --------------------------------------------------------

--
-- Estrutura para tabela `referral_transactions`
--

DROP TABLE IF EXISTS `referral_transactions`;
CREATE TABLE IF NOT EXISTS `referral_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `transactions_id` int(10) UNSIGNED DEFAULT NULL,
  `referrals_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `referred_by` int(10) UNSIGNED NOT NULL,
  `earnings` double(10,2) NOT NULL,
  `type` char(25) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `referral_transactions_referrals_id_index` (`referrals_id`),
  KEY `referral_transactions_user_id_index` (`user_id`),
  KEY `referral_transactions_referred_by_index` (`referred_by`),
  KEY `referral_transactions_transactions_id_index` (`transactions_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `referral_transactions`
--

INSERT INTO `referral_transactions` (`id`, `transactions_id`, `referrals_id`, `user_id`, `referred_by`, `earnings`, `type`, `created_at`, `updated_at`) VALUES
(1, 74, 22, 87, 60, 0.37, 'subscription', '2025-04-24 02:48:53', '2025-04-24 02:48:53'),
(2, 75, 22, 87, 60, 6.75, 'tip', '2025-04-24 02:49:08', '2025-04-24 02:49:08'),
(3, 76, 22, 87, 60, 209.25, 'tip', '2025-04-24 02:49:20', '2025-04-24 02:49:20'),
(4, 77, 22, 87, 60, 8.62, 'tip', '2025-04-24 02:49:36', '2025-04-24 02:49:36'),
(5, 99, 24, 93, 60, 1.87, 'subscription', '2025-04-24 02:58:38', '2025-04-24 02:58:38'),
(6, 100, 24, 93, 60, 75.00, 'tip', '2025-04-24 02:58:49', '2025-04-24 02:58:49'),
(7, 101, 24, 93, 60, 0.15, 'ppv', '2025-04-24 02:59:00', '2025-04-24 02:59:00'),
(8, 102, 24, 93, 60, 0.37, 'ppv', '2025-04-24 02:59:27', '2025-04-24 02:59:27'),
(9, 103, 24, 93, 60, 65.92, 'ppv', '2025-04-24 03:04:28', '2025-04-24 03:04:28'),
(10, 108, 20, 84, 60, 187.50, 'subscription', '2025-04-24 03:07:54', '2025-04-24 03:07:54'),
(11, 109, 20, 84, 60, 150.00, 'tip', '2025-04-24 03:08:14', '2025-04-24 03:08:14'),
(12, 110, 20, 84, 60, 37.50, 'ppv', '2025-04-24 03:09:00', '2025-04-24 03:09:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `replies`
--

DROP TABLE IF EXISTS `replies`;
CREATE TABLE IF NOT EXISTS `replies` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `updates_id` bigint(20) UNSIGNED NOT NULL,
  `comments_id` bigint(20) UNSIGNED NOT NULL,
  `reply` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sticker` text DEFAULT NULL,
  `gif_image` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `replies_user_id_index` (`user_id`),
  KEY `replies_updates_id_index` (`updates_id`),
  KEY `replies_comments_id_index` (`comments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `reports`
--

DROP TABLE IF EXISTS `reports`;
CREATE TABLE IF NOT EXISTS `reports` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `report_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user` (`user_id`,`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `reserved`
--

DROP TABLE IF EXISTS `reserved`;
CREATE TABLE IF NOT EXISTS `reserved` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `editable` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `reserved`
--

INSERT INTO `reserved` (`id`, `name`, `editable`) VALUES
(1, 'fuck', 0),
(2, 'app', 0),
(3, 'public', 0),
(4, 'vendor', 0),
(5, 'xxx', 0),
(6, 'porn', 0),
(7, 'sex', 0),
(8, 'tags', 0),
(9, 'goods', 0),
(11, 'jobs', 0),
(12, 'projects', 0),
(13, 'messages', 0),
(14, 'account', 0),
(15, 'popular', 0),
(16, 'latest', 0),
(17, 'search', 0),
(19, 'notifications', 0),
(20, 'login', 0),
(21, 'join', 0),
(23, 'register', 0),
(24, 'upgrade', 0),
(25, 'contact', 0),
(26, 'signup', 0),
(27, 'members', 0),
(28, 'upload', 0),
(29, 'comment', 0),
(30, 'bootstrap', 0),
(31, 'api', 0),
(32, 'creators', 0),
(33, 'logout', 0),
(34, 'categories', 0),
(35, 'featured', 0),
(36, 'collections', 0),
(37, 'dashboard', 0),
(38, 'tests', 0),
(39, 'routes', 0),
(40, 'resources', 0),
(41, 'database', 0),
(42, 'config', 0),
(44, 'storage', 0),
(45, 'core', 0),
(46, 'cpanel', 0),
(47, 'blog', 0),
(48, 'offline', 0),
(49, 'artisan', 0),
(50, 'explore', 0),
(51, 'shop', 0),
(52, 'home', 0),
(53, 'lang', 0),
(54, 'reels', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `restrictions`
--

DROP TABLE IF EXISTS `restrictions`;
CREATE TABLE IF NOT EXISTS `restrictions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_restricted` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `restrictions_user_id_index` (`user_id`),
  KEY `restrictions_user_restricted_index` (`user_restricted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `restrictions`
--

INSERT INTO `restrictions` (`id`, `user_id`, `user_restricted`, `created_at`, `updated_at`) VALUES
(1, 1, 34, '2024-06-26 05:24:40', '2024-06-26 05:24:40');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `shop_categories`
--

DROP TABLE IF EXISTS `shop_categories`;
CREATE TABLE IF NOT EXISTS `shop_categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_categories_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `shop_categories`
--

INSERT INTO `shop_categories` (`id`, `name`, `slug`) VALUES
(1, 'Físico', 'fisico'),
(2, 'Digital', 'digital'),
(3, 'Serviço', 'servico');

-- --------------------------------------------------------

--
-- Estrutura para tabela `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `countries_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` char(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `states_countries_id_index` (`countries_id`),
  KEY `name` (`name`),
  KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `states`
--

INSERT INTO `states` (`id`, `countries_id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 32, 'Acre', 'AC', '2024-05-22 22:40:13', '2024-05-22 22:40:13'),
(2, 32, 'Alagoas', 'AL', '2024-05-22 22:40:29', '2024-05-22 22:42:42'),
(3, 32, 'Amapá', 'AP', '2024-05-22 22:40:37', '2024-05-22 22:42:48'),
(4, 32, 'Amazonas', 'AM', '2024-05-22 22:43:05', '2024-05-22 22:43:05'),
(5, 32, 'Tocantins', 'TO', '2024-05-22 22:43:20', '2024-05-22 22:43:20'),
(6, 32, 'Bahia', 'BA', '2024-05-22 22:43:21', '2024-05-22 22:43:21'),
(7, 32, 'Ceará', 'CE', '2024-05-22 22:43:35', '2024-05-22 22:43:35'),
(8, 32, 'Sergipe', 'SE', '2024-05-22 22:43:45', '2024-05-22 22:43:54'),
(9, 32, 'Distrito Federal', 'DF', '2024-05-22 22:43:50', '2024-05-22 22:43:50'),
(10, 32, 'Espírito Santo', 'ES', '2024-05-22 22:44:08', '2024-05-22 22:44:08'),
(11, 32, 'São Paulo', 'SP', '2024-05-22 22:44:10', '2024-05-22 22:44:10'),
(12, 32, 'Goiás', 'GO', '2024-05-22 22:44:38', '2024-05-22 22:44:38'),
(13, 32, 'Maranhão', 'MA', '2024-05-22 22:44:49', '2024-05-22 22:44:49'),
(14, 32, 'Santa Catarina', 'SC', '2024-05-22 22:44:56', '2024-05-22 22:44:56'),
(15, 32, 'Mato Grosso', 'MT', '2024-05-22 22:45:02', '2024-05-22 22:45:02'),
(16, 32, 'Mato Grosso do Sul', 'MS', '2024-05-22 22:45:14', '2024-05-22 22:45:14'),
(17, 32, 'Minas Gerais', 'MG', '2024-05-22 22:45:23', '2024-05-22 22:45:23'),
(18, 32, 'Pará', 'PA', '2024-05-22 22:45:37', '2024-05-22 22:45:37'),
(19, 32, 'Paraíba', 'PB', '2024-05-22 22:45:48', '2024-05-22 22:45:48'),
(20, 32, 'Paraná', 'PR', '2024-05-22 22:45:59', '2024-05-22 22:45:59'),
(21, 32, 'Pernambuco', 'PE', '2024-05-22 22:46:09', '2024-05-22 22:46:09'),
(22, 32, 'Piauí', 'PI', '2024-05-22 22:46:18', '2024-05-22 22:46:18'),
(23, 32, 'Rio de Janeiro', 'RJ', '2024-05-22 22:46:36', '2024-05-22 22:46:36'),
(24, 32, 'Rio Grande do Norte', 'RN', '2024-05-22 22:47:00', '2024-05-22 22:47:00'),
(25, 32, 'Rio Grande do Sul', 'RS', '2024-05-22 22:47:11', '2024-05-22 22:47:11'),
(26, 32, 'Rondônia', 'RO', '2024-05-22 22:47:22', '2024-05-22 22:47:22'),
(27, 32, 'Roraima', 'RR', '2024-05-22 22:47:33', '2024-05-22 22:47:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `stickers`
--

DROP TABLE IF EXISTS `stickers`;
CREATE TABLE IF NOT EXISTS `stickers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `stickers`
--

INSERT INTO `stickers` (`id`, `url`, `created_at`, `updated_at`) VALUES
(1, 'https://media3.giphy.com/media/hVlZnRT6QW1DeYj6We/200w.gif', '2025-08-26 22:08:21', '2025-08-26 22:08:21'),
(2, 'https://media0.giphy.com/media/McVAzihiFCpV5N5HZE/200w.gif', '2025-08-26 22:08:21', '2025-08-26 22:08:21'),
(3, 'https://media4.giphy.com/media/lRXY41yFFi9RfNXyPN/200w.gif', '2025-08-26 22:08:21', '2025-08-26 22:08:21'),
(4, 'https://media0.giphy.com/media/L3X2BTnSL6kGpPmJtr/200w.gif', '2025-08-26 22:08:21', '2025-08-26 22:08:21'),
(5, 'https://media2.giphy.com/media/SpnN24fEeWGLPlhs8b/200w.gif', '2025-08-26 22:08:21', '2025-08-26 22:08:21'),
(6, 'https://media1.giphy.com/media/J2awouDsf23R2vo2p5/200w.gif', '2025-08-26 22:08:21', '2025-08-26 22:08:21'),
(7, 'https://media2.giphy.com/media/S3nZ8V9uemShxiWX8g/200w.gif', '2025-08-26 22:08:21', '2025-08-26 22:08:21'),
(8, 'https://media1.giphy.com/media/YondZW6AMjgTEHevF0/200w.gif', '2025-08-26 22:08:21', '2025-08-26 22:08:21'),
(9, 'https://media4.giphy.com/media/dalJ0CpF7hwmN1nZXe/200w.gif', '2025-08-26 22:08:21', '2025-08-26 22:08:21'),
(10, 'https://media2.giphy.com/media/Ss0X9wziu1NHEPXe5c/200w.gif', '2025-08-26 22:08:21', '2025-08-26 22:08:21'),
(11, 'https://media3.giphy.com/media/h86PVmFNq6f2l3gMWI/200w.gif', '2025-08-26 22:08:21', '2025-08-26 22:08:21'),
(12, 'https://media0.giphy.com/media/h4OGa0npayrJX2NRPT/200w.gif', '2025-08-26 22:08:21', '2025-08-26 22:08:21'),
(13, 'https://media3.giphy.com/media/h2TL9kJUgFoaeuEVR9/200w.gif', '2025-08-26 22:08:21', '2025-08-26 22:08:21'),
(14, 'https://media2.giphy.com/media/USUIWSteF8DJoc5Snd/200w.gif', '2025-08-26 22:08:21', '2025-08-26 22:08:21'),
(15, 'https://media2.giphy.com/media/ehC4SqtNcEeLAiu66w/200w.gif', '2025-08-26 22:08:21', '2025-08-26 22:08:21'),
(16, 'https://media1.giphy.com/media/YNDLZBTq8hGPDJkmYo/200w.gif', '2025-08-26 22:08:21', '2025-08-26 22:08:21'),
(17, 'https://media3.giphy.com/media/RlktKWfBX1RAwSTPxz/200w.gif', '2025-08-26 22:08:21', '2025-08-26 22:08:21'),
(18, 'https://media1.giphy.com/media/4tSHBpzJw7R3rrKUeo/200w.gif', '2025-08-26 22:08:21', '2025-08-26 22:08:21'),
(19, 'https://media4.giphy.com/media/QBSPma5jP9ReSAdxKw/200w.gif', '2025-08-26 22:08:21', '2025-08-26 22:08:21'),
(20, 'https://media2.giphy.com/media/LOnt6uqjD9OexmQJRB/200w.gif', '2025-08-26 22:08:21', '2025-08-26 22:08:21');

-- --------------------------------------------------------

--
-- Estrutura para tabela `stories`
--

DROP TABLE IF EXISTS `stories`;
CREATE TABLE IF NOT EXISTS `stories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stories_user_id_index` (`user_id`),
  KEY `stories_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `stories`
--

INSERT INTO `stories` (`id`, `user_id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, '', 'active', '2024-05-18 00:54:00', '2024-05-18 00:54:00'),
(2, 18, 'Temos novidades BBs...', 'active', '2024-05-31 00:57:34', '2024-05-31 00:57:34'),
(3, 34, 'Ensaio sensual 🤫😈', 'active', '2024-06-26 01:19:25', '2024-06-26 01:19:25'),
(5, 162, '😋', 'active', '2025-10-29 11:30:36', '2025-10-29 11:30:36'),
(6, 162, '', 'active', '2025-11-14 11:32:48', '2025-11-14 11:32:48'),
(7, 162, '', 'active', '2025-11-16 21:13:07', '2025-11-16 21:13:07');

-- --------------------------------------------------------

--
-- Estrutura para tabela `story_backgrounds`
--

DROP TABLE IF EXISTS `story_backgrounds`;
CREATE TABLE IF NOT EXISTS `story_backgrounds` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `story_backgrounds_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `story_backgrounds`
--

INSERT INTO `story_backgrounds` (`id`, `name`) VALUES
(1, '01.jpg'),
(2, '02.png'),
(3, '03.jpg'),
(4, '04.jpg'),
(5, '05.jpg'),
(6, '06.png'),
(7, '07.jpg'),
(8, '08.png'),
(9, '09.jpg'),
(10, '10.png'),
(11, '11.jpg'),
(12, '12.jpg'),
(13, '13.jpg'),
(14, '14.jpg'),
(15, '15.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `story_fonts`
--

DROP TABLE IF EXISTS `story_fonts`;
CREATE TABLE IF NOT EXISTS `story_fonts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `story_views`
--

DROP TABLE IF EXISTS `story_views`;
CREATE TABLE IF NOT EXISTS `story_views` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `media_stories_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `story_views_user_id_index` (`user_id`),
  KEY `story_views_media_stories_id_index` (`media_stories_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `story_views`
--

INSERT INTO `story_views` (`id`, `user_id`, `media_stories_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, '2024-05-18 02:08:39', '2024-05-18 02:08:39'),
(2, 7, 3, '2024-05-31 19:26:02', '2024-05-31 19:26:02');

-- --------------------------------------------------------

--
-- Estrutura para tabela `stripe_state_tokens`
--

DROP TABLE IF EXISTS `stripe_state_tokens`;
CREATE TABLE IF NOT EXISTS `stripe_state_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `creator_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `stripe_id` varchar(255) NOT NULL,
  `stripe_status` varchar(255) NOT NULL,
  `stripe_price` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_payment` varchar(255) DEFAULT NULL,
  `free` enum('yes','no') NOT NULL DEFAULT 'no',
  `subscription_id` varchar(50) NOT NULL,
  `cancelled` enum('yes','no') NOT NULL DEFAULT 'no',
  `rebill_wallet` enum('on','off') NOT NULL DEFAULT 'off',
  `interval` varchar(100) NOT NULL DEFAULT 'monthly',
  `taxes` text DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `cofTransactionId` varchar(255) DEFAULT NULL,
  `merchantIdentifier` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `last_payment` (`last_payment`(191)),
  KEY `payment_id` (`payment_id`),
  KEY `user_id` (`user_id`),
  KEY `stripe_status` (`stripe_status`),
  KEY `stripe_id` (`stripe_id`),
  KEY `stripe_price` (`stripe_price`),
  KEY `free` (`free`),
  KEY `creator_id` (`creator_id`),
  KEY `rebill_wallet` (`rebill_wallet`),
  KEY `cancelled` (`cancelled`),
  KEY `gateway` (`gateway`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `creator_id`, `user_id`, `type`, `stripe_id`, `stripe_status`, `stripe_price`, `quantity`, `trial_ends_at`, `ends_at`, `created_at`, `updated_at`, `last_payment`, `free`, `subscription_id`, `cancelled`, `rebill_wallet`, `interval`, `taxes`, `payment_id`, `gateway`, `cofTransactionId`, `merchantIdentifier`) VALUES
(1, 3, 4, '', '', '', 'user_3', NULL, NULL, '2024-06-18 02:42:54', '2024-05-18 02:42:54', '2024-05-18 02:42:54', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(2, 3, 7, '', '', '', 'user_3', NULL, NULL, '2024-06-18 16:13:10', '2024-05-18 16:13:10', '2024-05-18 16:13:10', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(3, 3, 5, '', '', '', 'user_3', NULL, NULL, '2024-06-22 00:11:45', '2024-05-22 00:11:45', '2024-05-22 00:11:45', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(5, 3, 17, '', '', '', 'user_3', NULL, NULL, '2024-06-30 17:36:13', '2024-05-30 17:36:13', '2024-05-30 17:36:13', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(6, 5, 17, '', '', '', 'user_5', NULL, NULL, '2024-06-30 17:37:11', '2024-05-30 17:37:11', '2024-05-30 17:37:11', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(7, 5, 17, '', '', '', 'user_5', NULL, NULL, '2024-06-30 17:37:26', '2024-05-30 17:37:26', '2024-05-30 17:37:26', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(9, 18, 17, '', '', '', 'user_18', NULL, NULL, '2024-07-01 02:05:49', '2024-05-31 02:05:49', '2024-05-31 02:05:49', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(10, 18, 7, '', '', '', 'user_18', NULL, NULL, '2024-07-01 02:31:30', '2024-05-31 02:31:30', '2024-05-31 02:31:30', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(11, 19, 7, '', '', '', 'user_19', NULL, NULL, '2024-07-01 04:00:23', '2024-05-31 04:00:23', '2024-05-31 04:00:23', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(12, 19, 17, '', '', '', 'user_19', NULL, NULL, '2024-07-01 17:53:23', '2024-05-31 17:53:23', '2024-05-31 17:53:23', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(13, 3, 25, '', '', '', 'user_3', NULL, NULL, '2024-07-18 16:57:58', '2024-06-18 16:57:58', '2024-06-18 16:57:58', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(14, 5, 25, '', '', '', 'user_5', NULL, NULL, '2024-07-18 16:58:12', '2024-06-18 16:58:12', '2024-06-18 16:58:12', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(15, 18, 25, '', '', '', 'user_18', NULL, NULL, '2024-07-18 16:58:22', '2024-06-18 16:58:22', '2024-06-18 16:58:22', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(16, 19, 25, '', '', '', 'user_19', NULL, NULL, '2024-07-18 16:58:46', '2024-06-18 16:58:46', '2024-06-18 16:58:46', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(17, 3, 26, '', '', '', 'user_3', NULL, NULL, '2024-07-18 16:59:04', '2024-06-18 16:59:04', '2024-06-18 16:59:17', NULL, 'no', '', 'yes', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(18, 3, 26, '', '', '', 'user_3_yearly', NULL, NULL, '2029-06-18 16:59:14', '2024-06-18 16:59:14', '2024-06-18 16:59:14', NULL, 'no', '', 'no', 'on', 'yearly', '', NULL, NULL, NULL, NULL),
(19, 5, 28, '', '', '', 'user_5', NULL, NULL, '2024-07-18 17:44:36', '2024-06-18 17:44:36', '2024-06-18 17:44:36', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(21, 5, 3, '', '', '', 'user_5', NULL, NULL, '2024-07-26 04:50:03', '2024-06-26 04:50:03', '2024-06-26 04:50:03', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(22, 41, 44, '', '', '', 'user_41', NULL, NULL, NULL, '2024-06-27 07:23:31', '2024-06-27 07:23:31', NULL, 'yes', '', 'no', 'off', 'monthly', NULL, NULL, NULL, NULL, NULL),
(23, 18, 3, '', '', '', 'user_18', NULL, NULL, '2024-07-29 01:48:25', '2024-06-29 01:48:25', '2024-06-29 01:48:25', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(24, 3, 4, '', '', '', 'user_3', NULL, NULL, '2024-08-03 16:05:47', '2024-07-03 16:05:47', '2024-07-03 16:05:47', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(28, 60, 101, '', '', '', 'user_60_weekly', NULL, NULL, '2025-03-01 07:20:40', '2025-02-22 07:20:40', '2025-02-22 07:20:40', NULL, 'no', '', 'no', 'on', 'weekly', '', NULL, NULL, NULL, NULL),
(29, 3, 87, '', '', '', 'user_3', NULL, NULL, '2025-05-24 02:48:53', '2025-04-24 02:48:53', '2025-04-24 02:48:53', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(30, 34, 88, '', '', '', 'user_34', NULL, NULL, '2025-05-24 02:52:02', '2025-04-24 02:52:02', '2025-04-24 02:52:02', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(31, 19, 88, '', '', '', 'user_19', NULL, NULL, '2025-05-24 02:53:23', '2025-04-24 02:53:23', '2025-04-24 02:53:23', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(32, 3, 88, '', '', '', 'user_3_yearly', NULL, NULL, '2030-04-24 02:54:21', '2025-04-24 02:54:21', '2025-04-24 02:54:21', NULL, 'no', '', 'no', 'on', 'yearly', '', NULL, NULL, NULL, NULL),
(33, 3, 93, '', '', '', 'user_3_yearly', NULL, NULL, '2030-04-24 02:58:38', '2025-04-24 02:58:38', '2025-04-24 02:58:38', NULL, 'no', '', 'no', 'on', 'yearly', '', NULL, NULL, NULL, NULL),
(34, 3, 84, '', '', '', 'user_3_yearly', NULL, NULL, '2030-04-24 03:07:54', '2025-04-24 03:07:54', '2025-04-24 03:07:54', NULL, 'no', '', 'no', 'on', 'yearly', '', NULL, NULL, NULL, NULL),
(35, 18, 95, '', '', '', 'user_18', NULL, NULL, '2025-05-24 15:41:07', '2025-04-24 15:41:07', '2025-04-24 15:41:07', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(36, 3, 101, '', '', '', 'user_3', NULL, NULL, '2025-05-25 00:11:53', '2025-04-25 00:11:53', '2025-04-25 00:11:53', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL),
(37, 5, 3, '', '', '', 'user_5', NULL, NULL, '2025-09-26 22:55:53', '2025-08-26 22:55:53', '2025-08-26 22:55:53', NULL, 'no', '', 'no', 'on', 'monthly', '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `subscription_deleteds`
--

DROP TABLE IF EXISTS `subscription_deleteds`;
CREATE TABLE IF NOT EXISTS `subscription_deleteds` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `creator_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subscription_deleteds_creator_id_index` (`creator_id`),
  KEY `subscription_deleteds_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `subscription_items`
--

DROP TABLE IF EXISTS `subscription_items`;
CREATE TABLE IF NOT EXISTS `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(255) NOT NULL,
  `stripe_product` varchar(255) DEFAULT NULL,
  `stripe_price` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscription_id` (`subscription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tax_rates`
--

DROP TABLE IF EXISTS `tax_rates`;
CREATE TABLE IF NOT EXISTS `tax_rates` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1,
  `percentage` decimal(5,2) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `iso_state` char(10) DEFAULT NULL,
  `stripe_id` varchar(100) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tax_rates`
--

INSERT INTO `tax_rates` (`id`, `name`, `type`, `percentage`, `country`, `state`, `iso_state`, `stripe_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'DF', 1, 5.00, 'BR', 'Distrito Federal', 'DF', NULL, '', '2024-05-22 23:18:22', '2024-05-22 23:18:34');

-- --------------------------------------------------------

--
-- Estrutura para tabela `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `txn_id` varchar(250) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subscriptions_id` int(10) UNSIGNED NOT NULL,
  `subscribed` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `earning_net_user` decimal(10,2) NOT NULL,
  `earning_net_admin` decimal(10,2) NOT NULL,
  `payment_gateway` varchar(100) NOT NULL,
  `approved` varchar(50) NOT NULL DEFAULT '1' COMMENT '0 Pending, 1 Success, 2 Canceled',
  `amount` float NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'subscription',
  `percentage_applied` varchar(50) NOT NULL,
  `referred_commission` int(10) UNSIGNED NOT NULL,
  `taxes` text DEFAULT NULL,
  `direct_payment` tinyint(1) NOT NULL DEFAULT 0,
  `gift_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `subscriber` (`subscriptions_id`),
  KEY `subscribed` (`subscribed`),
  KEY `earning_net_user` (`earning_net_user`),
  KEY `earning_net_admin` (`earning_net_admin`),
  KEY `created_at` (`created_at`),
  KEY `amount` (`amount`),
  KEY `approved` (`approved`),
  KEY `gift_id` (`gift_id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `transactions`
--

INSERT INTO `transactions` (`id`, `txn_id`, `user_id`, `subscriptions_id`, `subscribed`, `created_at`, `earning_net_user`, `earning_net_admin`, `payment_gateway`, `approved`, `amount`, `type`, `percentage_applied`, `referred_commission`, `taxes`, `direct_payment`, `gift_id`) VALUES
(1, 'ppv_W8SCIptuqYBxf8pCSBDwi8sM2', 4, 0, 3, '2024-05-18 02:42:18', 6.50, 3.50, 'Wallet', '1', 10, 'ppv', '35%', 0, '', 0, NULL),
(2, 'ppv_kOHILHaxM1fOhIwjowjQhE09c', 4, 0, 3, '2024-05-18 02:42:42', 6.50, 3.50, 'Wallet', '1', 10, 'ppv', '35%', 0, '', 0, NULL),
(3, 'subw_9F3dGuiuDZbtPwGQKfrrp3GXl', 4, 1, 3, '2024-05-18 02:42:54', 32.50, 17.50, 'Wallet', '1', 50, 'subscription', '35%', 0, '', 0, NULL),
(4, 'w_ZaQZlJaASjP2wgNSmAiClicGK', 4, 0, 3, '2024-05-18 02:08:54', 65.00, 35.00, 'Wallet', '1', 100, 'tip', '35%', 0, '', 0, NULL),
(5, 'ppv_7VCSh9ElT2WlQ9hdM90GHtG12', 4, 0, 3, '2024-05-18 02:09:07', 13.00, 7.00, 'Wallet', '1', 20, 'ppv', '35%', 0, '', 0, NULL),
(6, 'ppv_xbo9hIAW1VtHJ3ItjfWrZYMDq', 4, 0, 3, '2024-05-18 02:09:34', 32.50, 17.50, 'Wallet', '1', 50, 'ppv', '35%', 0, '', 0, NULL),
(7, 'w_RNgbSM0sP2UsrxKO8KYVhyZtA', 7, 0, 3, '2024-05-18 15:23:54', 6290.70, 3387.30, 'Wallet', '1', 9678, 'tip', '35%', 0, '', 0, NULL),
(8, 'w_8WFNXcpb0DEAymVGtATLKd2J4', 7, 0, 3, '2024-05-18 15:24:06', 2247.05, 1209.95, 'Wallet', '1', 3457, 'tip', '35%', 0, '', 0, NULL),
(9, 'w_JNGwXSZhQkx4VTYK8X5XyaXoa', 7, 0, 3, '2024-05-18 15:27:27', 2508.35, 1350.65, 'Wallet', '1', 3859, 'tip', '35%', 0, '', 0, NULL),
(10, 'w_Mk7SqofqoNXyq0cidOhLOYjRV', 7, 0, 3, '2024-05-18 15:27:33', 1526.85, 822.15, 'Wallet', '1', 2349, 'tip', '35%', 0, '', 0, NULL),
(11, 'subw_zV38Bq7tNeotFtZ0XU4dSJrwF', 7, 2, 3, '2024-05-18 16:13:10', 32.50, 17.50, 'Wallet', '1', 50, 'subscription', '35%', 0, '', 0, NULL),
(12, 'ppv_VjUsOjSGA0JvdDatRy01NRsde', 7, 0, 3, '2024-05-18 16:13:31', 13.00, 7.00, 'Wallet', '1', 20, 'ppv', '35%', 0, '', 0, NULL),
(13, 'subw_SMA9Q7ydeIDm1x4tt0Cfdd8iM', 5, 3, 3, '2024-05-22 00:11:45', 32.50, 17.50, 'Wallet', '1', 50, 'subscription', '35%', 0, '', 0, NULL),
(14, 'w_y3pjBRCGgY1pV5ApMljItCxnK', 5, 0, 3, '2024-05-22 00:12:05', 6419.40, 3456.60, 'Wallet', '1', 9876, 'tip', '35%', 0, '', 0, NULL),
(15, 'ppv_YfSAc6VMzT8oajI1AX7w3Kxte', 5, 0, 3, '2024-05-22 00:12:12', 13.00, 7.00, 'Wallet', '1', 20, 'ppv', '35%', 0, '', 0, NULL),
(16, 'ppv_9RbDX2EsshPtN7HjXRCDZdYR8', 5, 0, 3, '2024-05-22 00:12:33', 32.50, 17.50, 'Wallet', '1', 50, 'ppv', '35%', 0, '', 0, NULL),
(17, 'subw_QuHiEJEXxAj1Oa4QRjvIPsBbU', 8, 4, 3, '2024-05-22 00:21:06', 162.50, 87.50, 'Wallet', '1', 250, 'subscription', '35%', 0, '', 0, NULL),
(18, 'ppv_FerNwWLWh4nutIH7TAPCfgkJp', 8, 0, 3, '2024-05-22 00:21:22', 13.00, 7.00, 'Wallet', '1', 20, 'ppv', '35%', 0, '', 0, NULL),
(19, 'w_89yAZVjXJdD9tcXXVYtMir0ea', 8, 0, 3, '2024-05-22 00:22:10', 6324.50, 3405.50, 'Wallet', '1', 9730, 'tip', '35%', 0, '', 0, NULL),
(20, 'ppv_tOaKFXhDfqE20ylZdER69fxyv', 8, 0, 3, '2024-05-22 00:27:23', 32.50, 17.50, 'Wallet', '1', 50, 'ppv', '35%', 0, '', 0, NULL),
(21, 'w_bwAn2oXdv3b21LFwnvBVm5avA', 8, 0, 3, '2024-05-22 00:27:42', 6467.50, 3482.50, 'Wallet', '1', 9950, 'tip', '35%', 0, '', 0, NULL),
(22, 'w_X2gsTYMEdCjlkNrH3fZut5cms', 3, 0, 5, '2024-05-22 00:54:46', 45.50, 24.50, 'Wallet', '1', 70, 'tip', '35%', 0, '', 0, NULL),
(23, 'ppv_qnhk6AvtXanRiFRCnUpUzFcWm', 5, 0, 3, '2024-05-22 00:56:06', 58.50, 31.50, 'Wallet', '1', 90, 'ppv', '35%', 0, '', 0, NULL),
(24, 'ppv_B6GBksBEuMAaac9yecmaDidgn', 17, 0, 3, '2024-05-30 17:35:10', 14.00, 6.00, 'Wallet', '1', 20, 'ppv', '30%', 0, '', 0, NULL),
(25, 'subw_7b44nB6P735qezEvGRokxaCkt', 17, 5, 3, '2024-05-30 17:36:13', 35.00, 15.00, 'Wallet', '1', 50, 'subscription', '30%', 0, '', 0, NULL),
(26, 'subw_XEWWAozz5B8EaZvshLoaWKiVX', 17, 6, 5, '2024-05-30 17:37:11', 690.90, 296.10, 'Wallet', '1', 987, 'subscription', '30%', 0, '', 0, NULL),
(27, 'subw_62bE22YC1RE7UtkcGW7t4ccgv', 17, 7, 5, '2024-05-30 17:37:26', 690.90, 296.10, 'Wallet', '1', 987, 'subscription', '30%', 0, '', 0, NULL),
(28, 'w_LsclYkHKNWCX2oHi7oDC8Ckei', 17, 0, 5, '2024-05-30 17:37:45', 40.60, 17.40, 'Wallet', '1', 58, 'tip', '30%', 0, '', 0, NULL),
(29, 'w_q3FMl4vIlWcHZVELDq3h59a1w', 17, 0, 3, '2024-05-30 17:43:03', 14.00, 6.00, 'Wallet', '1', 20, 'tip', '30%', 0, '', 0, NULL),
(30, 'ppv_YeOyGgTBy0sKmG74PutXLhnft', 17, 0, 3, '2024-05-30 17:43:40', 35.00, 15.00, 'Wallet', '1', 50, 'ppv', '30%', 0, '', 0, NULL),
(31, 'ppv_2TyOl2sgwlZ2VvEr9EmQPV5AE', 17, 0, 3, '2024-05-30 17:44:43', 7.00, 3.00, 'Wallet', '1', 10, 'ppv', '30%', 0, '', 0, NULL),
(32, 'ppv_IDnGU1b68qQIR0sYhZBpEe2PM', 17, 0, 3, '2024-05-30 17:45:22', 7.00, 3.00, 'Wallet', '1', 10, 'ppv', '30%', 0, '', 0, NULL),
(33, 'subw_HF6akKUS2b7miRRhUfVwJwbGg', 8, 8, 18, '2024-05-31 01:22:27', 35.00, 15.00, 'Wallet', '1', 50, 'subscription', '30%', 0, '', 0, NULL),
(34, 'subw_kgK85iAR5Kj6lvsrCxp7LkK3m', 17, 9, 18, '2024-05-31 02:05:49', 35.00, 15.00, 'Wallet', '1', 50, 'subscription', '30%', 0, '', 0, NULL),
(35, 'subw_4pBR5SdJuLZD76Sfq9lCRWw56', 7, 10, 18, '2024-05-31 02:31:30', 35.00, 15.00, 'Wallet', '1', 50, 'subscription', '30%', 0, '', 0, NULL),
(36, 'subw_GpnHreRspoxKJRkP6vnWxXwB8', 7, 11, 19, '2024-05-31 04:00:23', 35.00, 15.00, 'Wallet', '1', 50, 'subscription', '30%', 0, '', 0, NULL),
(37, 'subw_rC6bm8htVSvFgJP4232c5ksxR', 17, 12, 19, '2024-05-31 17:53:23', 35.00, 15.00, 'Wallet', '1', 50, 'subscription', '30%', 0, '', 0, NULL),
(38, 'w_9TGc8lX0AlDXBzidyfiiPklTP', 17, 0, 18, '2024-05-31 19:04:42', 588.00, 252.00, 'Wallet', '1', 840, 'tip', '30%', 0, '', 0, NULL),
(39, 'ppv_luEvjKKcf3GVGZmelkxhJaV2n', 17, 0, 19, '2024-06-01 21:16:03', 14.00, 6.00, 'Wallet', '1', 20, 'ppv', '30%', 0, '', 0, NULL),
(40, 'ppv_lEnRBdLwLv9nSNFi1Nndy3lBc', 17, 0, 19, '2024-06-01 21:17:03', 14.00, 6.00, 'Wallet', '1', 20, 'ppv', '30%', 0, '', 0, NULL),
(41, 'subw_o6DIwvfgn00Oav0f6BbpDC37z', 25, 13, 3, '2024-06-18 16:57:58', 35.00, 15.00, 'Wallet', '1', 50, 'subscription', '30%', 0, '', 0, NULL),
(42, 'subw_IyWncs8MzFqSRZ7ctmVgZ2SQl', 25, 14, 5, '2024-06-18 16:58:12', 690.90, 296.10, 'Wallet', '1', 987, 'subscription', '30%', 0, '', 0, NULL),
(43, 'subw_revSpEB7vCLqWHNCadUPjuQSE', 25, 15, 18, '2024-06-18 16:58:22', 35.00, 15.00, 'Wallet', '1', 50, 'subscription', '30%', 0, '', 0, NULL),
(44, 'subw_b2EzclVmzzE3Y0TRjEismAuhM', 25, 16, 19, '2024-06-18 16:58:46', 35.00, 15.00, 'Wallet', '1', 50, 'subscription', '30%', 0, '', 0, NULL),
(45, 'ppv_xTYcz1V6Ncsq9qpgCMwwo5UIn', 25, 0, 19, '2024-06-18 16:58:56', 14.00, 6.00, 'Wallet', '1', 20, 'ppv', '30%', 0, '', 0, NULL),
(46, 'subw_HxrEexgebgFYYRb2nQJFKfg5x', 26, 17, 3, '2024-06-18 16:59:04', 35.00, 15.00, 'Wallet', '1', 50, 'subscription', '30%', 0, '', 0, NULL),
(47, 'subw_8fri0kf5u3g9sxxOSJSh1b7H3', 26, 18, 3, '2024-06-18 16:59:14', 175.00, 75.00, 'Wallet', '1', 250, 'subscription', '30%', 0, '', 0, NULL),
(48, 'w_cKEXaHNjINEF7qCTVUrXvBVnN', 26, 0, 3, '2024-06-18 16:59:36', 4564.00, 1956.00, 'Wallet', '1', 6520, 'tip', '30%', 0, '', 0, NULL),
(49, 'w_t2ETkM1FmwX4OGOqn4gkotJpW', 26, 0, 3, '2024-06-18 16:59:48', 879.20, 376.80, 'Wallet', '1', 1256, 'tip', '30%', 0, '', 0, NULL),
(50, 'w_HMaTFRdsEQm1tTD1ic0cd675Y', 26, 0, 3, '2024-06-18 17:00:03', 1345.40, 576.60, 'Wallet', '1', 1922, 'tip', '30%', 0, '', 0, NULL),
(51, 'w_gTq7K1vIggl4W46sgVu85WmzZ', 26, 0, 3, '2024-06-18 17:09:51', 350.00, 150.00, 'Wallet', '1', 500, 'tip', '30%', 0, '', 0, NULL),
(52, 'subw_GFqtAKPbCdHhpnFuJsB2I7s0q', 28, 19, 5, '2024-06-18 17:44:36', 690.90, 296.10, 'Wallet', '1', 987, 'subscription', '30%', 0, '', 0, NULL),
(53, 'w_9X6m5ahCwSpYkiogsjjHJ505P', 28, 0, 5, '2024-06-18 17:44:46', 5994.80, 2569.20, 'Wallet', '1', 8564, 'tip', '30%', 0, '', 0, NULL),
(54, 'purchase_SGp79Ng41n439V2UOjvyGoaSe', 5, 0, 19, '2024-06-26 03:43:18', 10.00, 10.00, 'Wallet', '1', 20, 'purchase', '50%', 0, '', 0, NULL),
(55, 'subw_ZOiXh7zvpKP73ousFfeezYz0i', 12, 20, 3, '2024-06-26 04:25:55', 25.00, 25.00, 'Wallet', '1', 50, 'subscription', '50%', 0, '', 0, NULL),
(56, 'w_AqamLmNDG27OijgsKUUw5GxLb', 12, 0, 3, '2024-06-26 04:30:22', 75.00, 75.00, 'Wallet', '1', 150, 'tip', '50%', 0, '', 0, NULL),
(57, 'subw_pjmAgsT1mCGSbbORT15molNfw', 3, 21, 5, '2024-06-26 04:50:03', 11.50, 11.50, 'Wallet', '1', 23, 'subscription', '50%', 0, '', 0, NULL),
(58, 'live_gOoP8F0Z3dCHd6wJM03cEqpaO', 11, 0, 3, '2024-06-26 04:52:47', 3.00, 3.00, 'Wallet', '1', 6, 'live', '50%', 0, '', 0, NULL),
(59, 'w_8nrJIor2cEAdIOGmFRlIkj4Rb', 11, 0, 3, '2024-06-26 04:52:55', 10.00, 10.00, 'Wallet', '1', 20, 'tip', '50%', 0, '', 0, NULL),
(60, 'live_ZKMkYezQbo02ewplgDE6cApXb', 3, 0, 18, '2024-06-29 01:47:06', 15.00, 15.00, 'Wallet', '1', 30, 'live', '50%', 0, '', 0, NULL),
(61, 'w_tqGWvQZ8WSAzZwqfI064Af2N6', 3, 0, 18, '2024-06-29 01:47:25', 2.50, 2.50, 'Wallet', '1', 5, 'tip', '50%', 0, '', 0, NULL),
(62, 'subw_UilEz85IEZfLmLdkSALEEPVzZ', 3, 23, 18, '2024-06-29 01:48:25', 25.00, 25.00, 'Wallet', '1', 50, 'subscription', '50%', 0, '', 0, NULL),
(63, 'private_live_Gvr3bBm8xefPx9o6IKlMIpplR', 3, 0, 18, '2024-06-29 01:49:54', 45.00, 45.00, 'Wallet', '1', 90, 'live_streaming_private', '50%', 0, '', 0, NULL),
(64, 'private_live_Eboawi9zPLPwx5plsXKmkP93H', 3, 0, 18, '2024-06-29 01:51:57', 45.00, 45.00, 'Wallet', '1', 90, 'live_streaming_private', '50%', 0, '', 0, NULL),
(65, 'subw_RhHfiXNdCzW8nlWejLjO2dFOg', 4, 24, 3, '2024-07-03 16:05:47', 25.00, 25.00, 'Wallet', '1', 50, 'subscription', '50%', 0, '', 0, NULL),
(66, 'ppv_9h7P2vKVfT9HPY91wl39dGU80', 4, 0, 3, '2024-07-03 16:06:12', 5.00, 5.00, 'Wallet', '1', 10, 'ppv', '50%', 0, '', 0, NULL),
(67, 'w_LHA7vAZcbCxFqDx4jkgcvZjYg', 4, 0, 3, '2024-07-03 16:07:42', 15.00, 15.00, 'Wallet', '1', 30, 'tip', '50%', 0, '', 0, NULL),
(68, 'ppv_oWYQ7flY5joRP2lcrqt3nG7Id', 4, 0, 3, '2024-07-03 16:09:34', 10.00, 10.00, 'Wallet', '1', 20, 'ppv', '50%', 0, '', 0, NULL),
(69, 'private_live_ZrhDLiOZv6ULN16nXlscgkIeG', 4, 0, 3, '2024-07-03 16:10:28', 50.00, 50.00, 'Wallet', '1', 100, 'live_streaming_private', '50%', 0, '', 0, NULL),
(70, 'subw_DvrJBTv9LXB7fCBfZ3NVONEVV', 3, 25, 60, '2025-02-03 21:46:17', 85.00, 15.00, 'Wallet', '1', 100, 'subscription', '15%', 0, '', 0, NULL),
(71, 'private_live_MnFD7QtdkTtbxts6P8G9LImKa', 3, 0, 60, '2025-02-03 21:46:32', 85.00, 15.00, 'Wallet', '1', 100, 'live_streaming_private', '15%', 0, '', 0, NULL),
(72, 'w_ida5xLl5SC0K1cfPC3JbPjfVF', 3, 0, 60, '2025-02-03 21:48:12', 85.00, 15.00, 'Wallet', '1', 100, 'tip', '15%', 0, '', 0, NULL),
(73, 'subw_wYteqaRjwNNiUKTBdoe9iKjRs', 101, 28, 60, '2025-02-22 07:20:40', 12.75, 2.25, 'Wallet', '1', 15, 'subscription', '15%', 0, '', 0, NULL),
(74, 'subw_21e50WqvH0atGiwjjkJUAoYKJ', 87, 29, 3, '2025-04-24 02:48:53', 42.50, 7.12, 'Wallet', '1', 50, 'subscription', '15%', 1, '', 0, NULL),
(75, 'w_znU0qtDKkS2FMPPO2tMuaMM7e', 87, 0, 3, '2025-04-24 02:49:08', 765.00, 128.25, 'Wallet', '1', 900, 'tip', '15%', 1, '', 0, NULL),
(76, 'w_TZhIrV7yi6I00wuRZzWPrxXsa', 87, 0, 3, '2025-04-24 02:49:20', 23715.00, 3975.75, 'Wallet', '1', 27900, 'tip', '15%', 1, '', 0, NULL),
(77, 'w_2UPTzqdyr0W7gFx6HmJnqztyr', 87, 0, 3, '2025-04-24 02:49:36', 977.50, 163.87, 'Wallet', '1', 1150, 'tip', '15%', 1, '', 0, NULL),
(78, 'subw_uAu9zKxyGOf1XFnYCKMLhOfCC', 88, 30, 34, '2025-04-24 02:52:02', 68.00, 12.00, 'Wallet', '1', 80, 'subscription', '15%', 0, '', 0, NULL),
(79, 'w_0ted4alYdOI8WZ7ypOEJUii8u', 88, 0, 34, '2025-04-24 02:52:15', 76500.00, 13500.00, 'Wallet', '1', 90000, 'tip', '15%', 0, '', 0, NULL),
(80, 'ppv_bGnqoqhrLnmrGtbBuPaCOwJsf', 88, 0, 34, '2025-04-24 02:52:23', 59.50, 10.50, 'Wallet', '1', 70, 'ppv', '15%', 0, '', 0, NULL),
(81, 'ppv_9bDXNNHaofgi0aOcMzyZH26SY', 88, 0, 34, '2025-04-24 02:52:34', 59.50, 10.50, 'Wallet', '1', 70, 'ppv', '15%', 0, '', 0, NULL),
(82, 'ppv_YvoqtPC8ExgkgpvZsDdX5z8mH', 88, 0, 34, '2025-04-24 02:52:58', 59.50, 10.50, 'Wallet', '1', 70, 'ppv', '15%', 0, '', 0, NULL),
(83, 'ppv_5IWlugoxbcdrI8J7nTI0PjAVw', 88, 0, 34, '2025-04-24 02:53:07', 59.50, 10.50, 'Wallet', '1', 70, 'ppv', '15%', 0, '', 0, NULL),
(84, 'ppv_O2W05baxbJdXepBZvGWpwiwM0', 88, 0, 34, '2025-04-24 02:53:14', 59.50, 10.50, 'Wallet', '1', 70, 'ppv', '15%', 0, '', 0, NULL),
(85, 'subw_gdxK41oVZhfNVFapWFGZ8mn22', 88, 31, 19, '2025-04-24 02:53:23', 42.50, 7.50, 'Wallet', '1', 50, 'subscription', '15%', 0, '', 0, NULL),
(86, 'w_bgwV3QMl1CqwMINdbK5mB8bwd', 88, 0, 19, '2025-04-24 02:53:36', 6715.00, 1185.00, 'Wallet', '1', 7900, 'tip', '15%', 0, '', 0, NULL),
(87, 'w_zZ2yuR3NOmGMJ1n2x30NS3hwu', 88, 0, 19, '2025-04-24 02:53:44', 660.45, 116.55, 'Wallet', '1', 777, 'tip', '15%', 0, '', 0, NULL),
(88, 'ppv_fI9cmFdtyBGJOWC5alTxZUUlR', 88, 0, 19, '2025-04-24 02:53:50', 17.00, 3.00, 'Wallet', '1', 20, 'ppv', '15%', 0, '', 0, NULL),
(89, 'ppv_5XvpQRhitvVsHbrpfzi3wq3tE', 88, 0, 19, '2025-04-24 02:54:03', 17.00, 3.00, 'Wallet', '1', 20, 'ppv', '15%', 0, '', 0, NULL),
(90, 'subw_A63NlkFatTOLk0kFMrzLjhVD2', 88, 32, 3, '2025-04-24 02:54:21', 212.50, 37.50, 'Wallet', '1', 250, 'subscription', '15%', 0, '', 0, NULL),
(91, 'ppv_KKNIJhPnhryw0NATP3RSYlMqn', 88, 0, 3, '2025-04-24 02:54:36', 17.00, 3.00, 'Wallet', '1', 20, 'ppv', '15%', 0, '', 0, NULL),
(92, 'ppv_cqJ6XEcmiRBkN3KcIKC5QrlIe', 88, 0, 3, '2025-04-24 02:54:42', 42.50, 7.50, 'Wallet', '1', 50, 'ppv', '15%', 0, '', 0, NULL),
(93, 'ppv_DZEnpqvlwDwMA9mSejQuh729c', 88, 0, 3, '2025-04-24 02:54:54', 8.50, 1.50, 'Wallet', '1', 10, 'ppv', '15%', 0, '', 0, NULL),
(94, 'ppv_FpIGcIPd8Od1X4bWkJ19ocTOl', 88, 0, 3, '2025-04-24 02:55:01', 8.50, 1.50, 'Wallet', '1', 10, 'ppv', '15%', 0, '', 0, NULL),
(95, 'ppv_VLr6co9Mrk1DlomjD0Zbh8Prp', 88, 0, 3, '2025-04-24 02:55:08', 8.50, 1.50, 'Wallet', '1', 10, 'ppv', '15%', 0, '', 0, NULL),
(96, 'ppv_U5eTWemgAu8URrHXgwBtaBxes', 88, 0, 3, '2025-04-24 02:55:17', 8.50, 1.50, 'Wallet', '1', 10, 'ppv', '15%', 0, '', 0, NULL),
(97, 'ppv_CXDSrPYTaiFKrNKDgkm098s4E', 88, 0, 3, '2025-04-24 02:55:26', 8.50, 1.50, 'Wallet', '1', 10, 'ppv', '15%', 0, '', 0, NULL),
(98, 'w_rLG3S3XJBq53JL1Ip9m6GWRZr', 88, 0, 3, '2025-04-24 02:55:37', 68000.00, 12000.00, 'Wallet', '1', 80000, 'tip', '15%', 0, '', 0, NULL),
(99, 'subw_IdG6qaWqxnSkSZSK4izUU1J69', 93, 33, 3, '2025-04-24 02:58:38', 212.50, 35.62, 'Wallet', '1', 250, 'subscription', '15%', 1, '', 0, NULL),
(100, 'w_1XBf7dUsIxqcHiAf0KkyzdlV4', 93, 0, 3, '2025-04-24 02:58:49', 8500.00, 1425.00, 'Wallet', '1', 10000, 'tip', '15%', 1, '', 0, NULL),
(101, 'ppv_Bp7f4F7Cq8bTueKSXQcVSV09S', 93, 0, 3, '2025-04-24 02:59:00', 17.00, 2.85, 'Wallet', '1', 20, 'ppv', '15%', 1, '', 0, NULL),
(102, 'ppv_zjYB8B61Wown4i3i3Sg1LbssG', 93, 0, 3, '2025-04-24 02:59:27', 42.50, 7.12, 'Wallet', '1', 50, 'ppv', '15%', 1, '', 0, NULL),
(103, 'ppv_rUfKLOO1Og6zegXm0ANwpJVOM', 93, 0, 3, '2025-04-24 03:04:28', 7471.50, 1252.57, 'Wallet', '1', 8790, 'ppv', '15%', 1, '', 0, NULL),
(104, 'ppv_i1BGSvDj5qZ6A2pp8xU6tzLw8', 93, 0, 3, '2025-04-24 03:04:36', 850.00, 150.00, 'Wallet', '1', 1000, 'ppv', '15%', 0, '', 0, NULL),
(105, 'ppv_2LsAIeHtK4U4CsFBQTyFM0Xsl', 93, 0, 3, '2025-04-24 03:04:45', 8500.00, 1500.00, 'Wallet', '1', 10000, 'ppv', '15%', 0, '', 0, NULL),
(106, 'ppv_vzRw0NAu3gQjS4r2u6JkW7If6', 93, 0, 3, '2025-04-24 03:04:52', 8.50, 1.50, 'Wallet', '1', 10, 'ppv', '15%', 0, '', 0, NULL),
(107, 'ppv_kv0Df3Ty9Jm1cYKpYsBfF6zR0', 93, 0, 3, '2025-04-24 03:04:59', 1521.50, 268.50, 'Wallet', '1', 1790, 'ppv', '15%', 0, '', 0, NULL),
(108, 'subw_Ldp4nqCWrvSnxppDJ3nPqa9Q6', 84, 34, 3, '2025-04-24 03:07:54', 21250.00, 3562.50, 'Wallet', '1', 25000, 'subscription', '15%', 1, '', 0, NULL),
(109, 'w_ofDDkCnLg4UqiD6WkOagtWWcR', 84, 0, 3, '2025-04-24 03:08:14', 17000.00, 2850.00, 'Wallet', '1', 20000, 'tip', '15%', 1, '', 0, NULL),
(110, 'ppv_twWmfJxaYXLDUMBGdou7zTnTT', 84, 0, 3, '2025-04-24 03:09:00', 4250.00, 712.50, 'Wallet', '1', 5000, 'ppv', '15%', 1, '', 0, NULL),
(111, 'subw_n9MdKloqhlMZKAaxrIoLpRoUj', 95, 35, 18, '2025-04-24 15:41:07', 42.50, 7.50, 'Wallet', '1', 50, 'subscription', '15%', 0, '', 0, NULL),
(112, 'ppv_TAfUJXuIlUAHszNZPvfc1NMF6', 95, 0, 18, '2025-04-24 15:42:00', 17.00, 3.00, 'Wallet', '1', 20, 'ppv', '15%', 0, '', 0, NULL),
(113, 'ppv_SMu8hP3qA2HVh1BJqWeJlJYum', 95, 0, 18, '2025-04-24 15:42:14', 21.25, 3.75, 'Wallet', '1', 25, 'ppv', '15%', 0, '', 0, NULL),
(114, 'ppv_nMVhFSfhBJkTTL06KYjoKbd2u', 95, 0, 18, '2025-04-24 15:42:32', 17.00, 3.00, 'Wallet', '1', 20, 'ppv', '15%', 0, '', 0, NULL),
(115, 'subw_0nAiOJFnuVh3utJksIoOcOh6Q', 101, 36, 3, '2025-04-25 00:11:53', 42.50, 7.50, 'Wallet', '1', 50, 'subscription', '15%', 0, '', 0, NULL),
(116, 'ppv_jt0UeUrxdififYlrrmBhcmXrY', 101, 0, 3, '2025-04-25 00:12:19', 17.00, 3.00, 'Wallet', '1', 20, 'ppv', '15%', 0, '', 0, NULL),
(117, 'subw_Ht7YyORjaGfF9tcTnc1mxYlLy', 3, 37, 5, '2025-08-26 22:55:53', 19.55, 3.45, 'Wallet', '1', 23, 'subscription', '15%', 0, '', 0, NULL),
(118, 'w_LBTvPH09O8Air0H4sYsFaJP5Z', 122, 0, 5, '2025-09-09 16:10:53', 4.25, 0.75, 'Wallet', '1', 5, 'tip', '15%', 0, '', 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `two_factor_codes`
--

DROP TABLE IF EXISTS `two_factor_codes`;
CREATE TABLE IF NOT EXISTS `two_factor_codes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(25) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `updates`
--

DROP TABLE IF EXISTS `updates`;
CREATE TABLE IF NOT EXISTS `updates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `token_id` varchar(255) NOT NULL,
  `locked` enum('yes','no') NOT NULL DEFAULT 'no',
  `fixed_post` enum('0','1') NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL,
  `status` char(20) NOT NULL DEFAULT 'active',
  `video_views` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(200) DEFAULT NULL,
  `scheduled_date` timestamp NULL DEFAULT NULL,
  `schedule` tinyint(1) NOT NULL DEFAULT 0,
  `editing` tinyint(1) NOT NULL DEFAULT 0,
  `can_media_edit` tinyint(1) NOT NULL DEFAULT 0,
  `likes_extras` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_id` (`token_id`),
  KEY `video_views` (`video_views`),
  KEY `status` (`status`),
  KEY `user_id` (`user_id`),
  KEY `can_media_edit` (`can_media_edit`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `updates`
--

INSERT INTO `updates` (`id`, `title`, `description`, `user_id`, `date`, `token_id`, `locked`, `fixed_post`, `price`, `status`, `video_views`, `ip`, `scheduled_date`, `schedule`, `editing`, `can_media_edit`, `likes_extras`) VALUES
(1, '', 'oiiii boa noite 🥰', 3, '2024-05-18 02:30:51', 'k9xqye4gDEl8AfkKyOPeScJ6FD0W04Fv5IPQxXIEmwD6B11Ugffe1Mv9mto333BQLnlIuhkgsNhFFEEelglenuuGVmJw5bVJLOEKSKG3GPLcgrylc0fKkcu5TW0V6Ijd2Qvu1ZHBOLiyw5sUbqr0e9', 'yes', '0', 0.00, 'active', 0, '34.95.158.246', '0000-00-00 00:00:00', 0, 0, 0, 0),
(2, NULL, 'Essa posição ele entra bem fundo !', 3, '2024-05-18 02:33:39', 'hTyRqv4DDnfJ8AEBQC6VCXIIxfHiqBWVadK9IJuqi0w8LXGfPc1v0OegJfkMX8B5a2SP6wLCOrWzfj8Mgs8mnRkAdhkdBZFaRnw77NZmgNfeWaI70jsFIv8Tei4Jgo7NbclHDwAEwso6HUv8K9mwaq', 'yes', '0', 8790.00, 'active', 0, '34.95.158.246', '0000-00-00 00:00:00', 0, 0, 0, 0),
(3, NULL, 'Deitadinha depois da sessão de gravação!', 3, '2024-05-18 02:42:10', '95dTfZN2mEzGfifeka3XPA3drXc8nUJVcvBwqCkDXTdSWpfSMQK7gpSGf3QUeKAaAYjublIgK4JU74hvjWQ23PoisCYLrx6Rr2MhzbhqMfj7SNnFOSebbiZTZc6Ldl5PiD6WN9O0nR0RCT6ggOydFB', 'yes', '0', 1790.00, 'active', 0, '34.95.158.246', '0000-00-00 00:00:00', 0, 0, 0, 0),
(4, NULL, 'Me exibindo antes da gravação!', 3, '2024-05-18 02:43:51', 'pCbujNleIYvZINOl7WEbS6ZayTsv9JyJb91uefUji18ADJWGr9tZk78tQ1JLA87zAkezqBNdPl7f3UZyr9QIZg4R9MNrn9WDNonly3h8jwW644XLKBEIQJsBcxbTPFfuorx504ySpFXzcpha1OfYgo', 'yes', '0', 10.00, 'active', 0, '34.95.158.246', '0000-00-00 00:00:00', 0, 0, 0, 0),
(5, NULL, 'Indo andar de jet peladinha !', 3, '2024-05-18 02:44:15', 'OBAAqC5kIKvRb6S10tENg7lebseVwpWOJkdo8F6OWCj5qQL7syFdFFGxbpeDDAIrjGA3SMTZNzjxtj5OvAElw11Aur6My9eeIxxGrk6Dq5mW5vSWAvf8eu6ymkkbfUL8BdbqU6MWZDW1SsAu4dRgCD', 'yes', '0', 10000.00, 'active', 0, '34.95.158.246', '0000-00-00 00:00:00', 0, 0, 0, 0),
(6, NULL, 'Tirei essa foto de baixo do chuveiro😅!', 3, '2024-05-18 02:47:19', 'IJlE9wHY76FVZ48R7IzVEHWRtQXgaXIYxrqBBpwxityvoa2MboImC8j4OP6xZ3NA2ws1xG6GaRsEM1ebv5KLuyXnoVtd9bYyoRHcQ7PpU8i2hGZfPhLG3LcG9IlTKx1QrfjOZdlsQR9ygWzMzltwdA', 'yes', '0', 1000.00, 'active', 0, '34.95.158.246', '0000-00-00 00:00:00', 0, 0, 0, 0),
(7, NULL, 'Peladinha em varias sessões de fotos !', 3, '2024-05-18 02:54:21', 'AokvyT9rJTXzmcMXzbSZdNozkEQ6OPv0Xg8nql7Oxs6sngfxLKKJW4tfy8QZ0HKsnkpW9VWAyCjVk6J1BNF38izEf7pxRBizzQxbNaiFIcnjhGw1rSR42pjBwxz9InouSMQRcG7QUwom4zvSpI3qr5', 'yes', '0', 5000.00, 'active', 0, '34.95.158.246', '0000-00-00 00:00:00', 0, 0, 0, 0),
(8, NULL, 'Fazendo gravação de conteúdos em cima da mesa de sinuca!', 3, '2024-05-18 03:00:48', 'QiarGlh8RPxl5o2g3pMVL4I4fPAjBhfrnr4EcRFUxdMK3H3mmnN12vMu9eqvuTOj5NsCA7xyhiVruJan5TmTtB2zU2z8ICsGDVWB4ocTwtHWRMU4rKpykDvAfiLukQrEYzagoV4biI19zz9gwWo2tG', 'yes', '0', 20.00, 'active', 0, '34.95.158.246', '0000-00-00 00:00:00', 0, 0, 0, 0),
(9, '', 'Mais tarde vou soltar um videozinho com minha amiga e um amigo fizemos uma brincadeira bem legal!', 3, '2024-05-18 00:35:15', 'IGvnaKSWydOEnDbzbdXb7NKt3JXho1pJo7bKaOBewC5oBgu7tgchRN2Iq38mwPNZooPIxjueuZbrtFmYIAdhS41Axz1buHkS8UhCEUbvv1wBSYM9xH1C6Nhy8fF95uzTgdSdN9ZiT3punQaAnY5OEB', 'yes', '0', 0.00, 'active', 0, '34.95.158.246', '0000-00-00 00:00:00', 0, 0, 0, 0),
(10, NULL, 'atualizando o fedd!', 3, '2024-05-18 00:42:49', 'as4VlZhZAJmwwM9S4rlGFDIeUHlwF0sb7R78jEhG2TySBuIvhxhSrntK2MmQ1t3wjzbVt5LsijAKor1CpKg0RZx2sj9L29bhZMJHIbECaRZfhTp54JIR6MhCNR4Q1OJQd0hMWWQQfww6G8Wo8eeydw', 'yes', '0', 0.00, 'active', 0, '34.95.158.246', '0000-00-00 00:00:00', 0, 0, 0, 0),
(11, NULL, 'TBT de Guarujá!', 3, '2024-05-18 01:05:34', 'foFBlpb9LmGEOVGcMJFumCOY7B19e3OO5WreY8gTp2OjZL88b6P10QCXdhp68a117L8nLWyKI5hAQjHakKulY3CvdLCOObhE4tUT0xzDjEr0j1xixulrGQx1EthK7Nwbrw0wbwyL4bWtsx5sfFMtNx', 'yes', '0', 0.00, 'active', 0, '34.95.158.246', '0000-00-00 00:00:00', 0, 0, 0, 0),
(12, NULL, 'Ainda dessa viagem maravilhosa!', 3, '2024-05-18 01:12:27', 'nHX3zWwVJewA1tfyveH6Nr9jo02iZEIBLOZca2YppyOC5Dgpzz6p5MtmLghcxwoDQMssdkEGarJUfQveeI9G4tWcAkRjQmfLxrvqzaN0SffKAQM5XwsyZ5uUpk5n7ExGqK46i7vq2PbhBwglVVnOVc', 'yes', '0', 0.00, 'active', 0, '34.95.158.246', '0000-00-00 00:00:00', 0, 0, 0, 0),
(13, '', '😂', 5, '2024-05-22 00:58:24', 'cCCyMY3ibEexZDvriYWGfIkjTNlrG0JXpsmLH88VAmM7Z0kq7oetWhUAveLi6CcAG92LuNT1I6Z6rOOfLNC8I34aA6q0Vdjbt0Wpet7RHJFA2D4kQMp6fZybUTuB4EQTD2pwhh17uQTPE5dfMhDYRN', 'yes', '0', 0.00, 'active', 0, '45.184.71.230', '0000-00-00 00:00:00', 0, 0, 0, 0),
(23, NULL, 'No meu dia mais discreta😇', 18, '2024-05-30 21:28:05', '15obMeKtlCnABmzeLJghFxG2XfokIWvUXQGakUOI4nUmjqY0DGNMkRbo3yH5G8TDrw1TI5EUcWeXhS525mo7vvNntYNbBdLsdY1UPM2vLehvMjpLya7ej4UD6bY1dVQg8EtNuhW75j84OGc1uXzE6G', 'yes', '0', 0.00, 'active', 0, '35.198.50.242', '0000-00-00 00:00:00', 0, 0, 0, 0),
(25, NULL, '😈', 18, '2024-05-30 22:43:22', 'DPd5s2tCodq7bSbMQ5Nn8UJzMn0agmPv70BmvAvGTGSs4FyPAxCIva3xlpqGGp3p92yPnP3cMTcpRSMxYJxhHybGcv5pJTOyqFCfpaCqIwFiDYidJiQpJBroUT8boamveyxTvAXqAsDByRr1eeUEcd', 'yes', '0', 0.00, 'active', 0, '35.198.50.242', '0000-00-00 00:00:00', 0, 0, 0, 0),
(26, NULL, '🤤', 18, '2024-05-30 22:56:00', 'lBzBd5BBe9TyPLBkPhw3I0IXvay1IPFRzwB9xy8tOaV5lxgcgCWCUh3VLJiOfiKF9uWa6lq7jpt1Z6HSR6gJq0vcpNXUrfoxucsiO6EUOZW5jGl9PRIHt9EUQqA5sgIHmRDxmhTs1tkCLLlFiCnKBg', 'yes', '0', 0.00, 'active', 0, '35.198.50.242', '0000-00-00 00:00:00', 0, 0, 0, 0),
(27, NULL, 'Vem brincar comigo bb😜', 18, '2024-05-30 23:23:26', 'iSRpCvnPtCLyd6u0Kt5M9fLemgZGeO6iSBebJ3Xp8LX94cyuoiHSEzPz2bOchLWdUMB75LhZidwqfQtXLiCsK3yBU5AG5cuzuPfi3TD8Virdc3n4MtYUp26vNFYc1eH1rfAHJVs3zPRsbVbZVMZhPu', 'yes', '0', 0.00, 'active', 0, '35.198.50.242', '0000-00-00 00:00:00', 0, 0, 0, 0),
(28, NULL, 'Vamos brindar😈', 18, '2024-05-31 00:24:33', '5Qsh0YkWKfSCokOddn4sKqACLa2UAd9y0C9UZKUdzFlduRupI9gpej6Mk7rOznv2V3jsjNQTLXASxU7tftplwbVpY4rAoeS319s2h9ejDYNSIGeI27QvhwlbWXmCDTeaGZyGm2fsP8Bxw4oSJXwPzy', 'yes', '0', 0.00, 'active', 0, '35.198.50.242', '0000-00-00 00:00:00', 0, 0, 0, 0),
(30, NULL, 'Essa banheira ta grande demais pra uma só😈', 18, '2024-05-31 02:15:32', 'Dgg24NHhTPQWJ1GnVIqywfrsarBFl795DmDKytgUVUb8JvYak2xs5QBtE6BY30XkceNhgEo3tRMwrijCgk7nZoXH30jy1QXrbFBMeO4DfbKd0PoxM721dnCJ08hE3n1qVeZVaKDze2ElfeuAJg3I9y', 'yes', '0', 0.00, 'active', 0, '35.198.50.242', '0000-00-00 00:00:00', 0, 0, 0, 0),
(31, NULL, 'Eu sei que você gosta😋', 19, '2024-05-31 03:52:24', 'tG7ZujJjy350dQXJOFILDvUUtTotFJbVgQxsGMIdQt2f7aX1Q9G7xGRltRtWZnYZ6s9G6rHBo72B0KQb5JLzjEXg1Yk7zi31kSrBmRwLUTQIRh5DuJYDjdLOCIGeIxbrRFNg99ArU1ZWDhuXVIrmZQ', 'yes', '0', 0.00, 'active', 0, '35.198.50.242', '0000-00-00 00:00:00', 0, 0, 0, 0),
(34, NULL, 'qual é o seu maior desejo agora😈', 19, '2024-05-31 03:58:50', 'xqEQp5Cl0xmpRopqDrX6FwGpxu2gIUhtSt15HQhIOW32c9UeDANDepvrSldJjItQDpOqpRKsNo0IETc0ngBVArzM4seMy8PDGtKsibO8mTANd9ql7omRi8xvHZ9OBlNEKZBX70n5pzXfWzwkNvPiqE', 'yes', '0', 0.00, 'active', 0, '35.198.50.242', '0000-00-00 00:00:00', 0, 0, 0, 0),
(35, NULL, 'Vamos se divertir😜', 19, '2024-05-31 04:06:45', '4lPZkdcMfPeuHbUXwJ8Wz3JOVdiJNCqUsqOcIYlf4BlTuJHbo68PKDap7u3Wx6vWqJ5aIxYo954pP2IgypsEn7hhYCR3ihf6oCd4eVKIMkMeFXm1Af5uT9x4Z1tD7lJ6Qa3A4bByYi0eZtW97PfgMw', 'yes', '0', 0.00, 'active', 0, '35.198.50.242', '0000-00-00 00:00:00', 0, 0, 0, 0),
(37, NULL, 'Oq achou?', 19, '2024-05-31 20:44:22', 'NtkDtE4VnBWWVxNMs74vIFLhD2riJzkYOvPWfOz6oWCufdxacmEda7jKv4cI3iaeQHHYh6E8XIFG67Ul9tK0NPXN9gLyzzVmOtmE92JUt2NTz4Lpf0X4PlhIAOJtFHUUh5Y1wYJMFiPmxuWEc76zHS', 'yes', '0', 20.00, 'active', 0, '45.184.70.232', '0000-00-00 00:00:00', 0, 0, 0, 0),
(38, NULL, 'A sensualidade não precisa de volume, mas sim de atitude.', 19, '2024-05-31 22:10:06', 'XNxJkrTobpDaPIqa1rEP61R6rSYhiJfW2GWRv51NndmSB7p4qQ6Cp4YiFE4UYZVPoxXuep86AHcEyWGFm5o1yuzD2IPqai4ujh9KptN2kxnRUXVOT3NB2IZYDUCC3I38bhZDOAhipoMNpvCiBGyRFC', 'yes', '0', 0.00, 'active', 0, '45.184.70.232', '0000-00-00 00:00:00', 0, 0, 0, 0),
(39, NULL, 'Autoconfiança é o meu acessório mais sensual.', 19, '2024-05-31 22:11:18', 'epe2voBBM3Df8IPZpBjWe0dHUxuaZfMe5uYDWtAT3ycqtbZr1TDW5VS39rx60ibHlFbwxxzqMU2IGQIWJxnGc4tPHarTmRzIf33iV787RBtcbI705wMY5ZnZj6oWKpT3WK1oRMGx7mnIyWQDUr6HOF', 'yes', '0', 0.00, 'active', 0, '45.184.70.232', '0000-00-00 00:00:00', 0, 0, 0, 0),
(40, NULL, 'Sorrindo para os problemas e mostrando minha sensualidade.', 19, '2024-05-31 22:20:03', '9VuJPD5jH374yw3zN7K9PzMAGEuiteAMUXFCYmy7ldLQv4USBNhtciNkrGR6n9dmJdU0WVWyvRsxGpjT3DergsEvw9olY4xLSY3qV8QK36khaIUmKK6d5i3VXTFKO7gMZovhAuQiYiEZGm6IJHocRX', 'yes', '0', 0.00, 'active', 0, '45.184.70.232', '0000-00-00 00:00:00', 0, 0, 0, 0),
(42, NULL, 'Provoque sua imaginação. O que você vê é apenas o começo.', 19, '2024-05-31 22:39:03', '7eNpjAhV3Xr8cq7o9RCl13WehGkgFBttp9FMt3afOwkl2GNcOl8U7fKX6mXwleC8fbvyY5OUso00hriT3cDlXqwXMmqE7zTDi9TkMpayzaEJRmFl9OyhRqnl5LnBc0KEfsWT7I3z8K1QVvHsiZdNEj', 'yes', '0', 0.00, 'active', 0, '45.184.70.232', '0000-00-00 00:00:00', 0, 0, 0, 0),
(43, NULL, 'Nem tudo que você vê é o que você tem.', 19, '2024-05-31 22:40:33', 'aShcWWDeHFl2gICwCIjvSI8iLbycDRrdavP96Awx2SN2sZqKh8IsuETrKb8zUb2jl6BNzZwoSDho1xIt4uQKu5bPeOI7PYQYNADlcxDp4Kk4kQXLSBMTbSNEdAW1ZI086Gvcr2f2CtMjs6UOBxh3MN', 'yes', '0', 0.00, 'active', 0, '45.184.70.232', '0000-00-00 00:00:00', 0, 0, 0, 0),
(44, NULL, '😜', 19, '2024-05-31 23:10:41', 'iCJ2OAQkjBNnwmStSITrQPitzgMU6Y1yy8TdOPLHH2lUSM06csCpurFCDltiMCjjWLObjnFKBIXSUjyDWcHGgSoOCjnspsM2HNQByZ73BMTh6xawyZoFdJWftNBpXqZt8S5o0ebwNnfqMBsUGg9as9', 'yes', '0', 0.00, 'active', 0, '45.184.70.232', '0000-00-00 00:00:00', 0, 0, 0, 0),
(45, NULL, '🤩', 19, '2024-05-31 23:11:33', 'r9ZpiLhwAI2K35TNqU8nvIl0Z53r7cVQSXywHj8CrqxFQopxSt2oFYLLZS2BoobTDmJ9loXPP4h5MlHzwiPIXD6fvVw3waiO4OBeDcK4God5CjUgNCPQhN4oZ3ea3Gf0iLZxmIehCDXX7WfKSljLR4', 'yes', '0', 0.00, 'active', 0, '45.184.70.232', '0000-00-00 00:00:00', 0, 0, 0, 0),
(46, NULL, '😋😋', 19, '2024-05-31 23:30:46', 'D31zfEiTbVpckcPzGXxJ1lQPUdZZicm1EhtKsyHZoDzGdV7VcGXl83vVkD9yWonVXlPKyR6oo48xJWcZQ7iSIsURRX5KOnqp7KaKdToAfQK7k3O6Y17ltm0uBrRlCnjThZJpUmmHhokg8gRS6DUJAM', 'yes', '0', 20.00, 'active', 0, '45.184.70.232', '0000-00-00 00:00:00', 0, 0, 0, 0),
(48, NULL, '😜😚', 18, '2024-06-03 20:03:35', '7bcRn0pJwltTacbTXKxMErMLuyO8HWhcjTzYkJhjlnt2lj0FnpXglU7JRfsdsTHtXiNyui6nYj6xFn5oxOn7riUuADQlWAQQVueiPyTMAkvgRiStVgk8t49wTGGkKYEA0SpfjvDJu0T6hSCHBIWzjb', 'yes', '0', 20.00, 'active', 0, '45.184.70.248', '0000-00-00 00:00:00', 0, 0, 0, 0),
(49, NULL, '😍😜', 18, '2024-06-03 20:18:06', 'eU24QlKLfMjCKw8mUchbvSTC3hHnlMcr7Ex7uewObJMW0ga5Kb4e8wC6esIcWwOOxwOs5qnjSdnrlTRc57cqUKnaTdzYzw6pXc4fgEwZObikzCfWXYPiNQz6nwNtQkENnuGNBDsQV3pwB3RRhow1lQ', 'yes', '0', 0.00, 'active', 0, '45.184.70.248', '0000-00-00 00:00:00', 0, 0, 0, 0),
(50, NULL, '🤨', 18, '2024-06-03 20:20:03', 'QQvCLTHiiLhJxTL9B2TV8MsVXNseBiJPX3dBneuocPz2VgZUXSGNiHUcQMgv8pIEgcPAkq14jP0zPHxxb1y6pj4NZAoVkwCmK2MxuHyNhXItt62DWcJ23ZhxZZgIgRksNYbgPs2PGGlrfFhIAXFaVE', 'yes', '0', 0.00, 'active', 0, '45.184.70.248', '0000-00-00 00:00:00', 0, 0, 0, 0),
(51, NULL, '😉', 18, '2024-06-03 20:21:20', '3HCZAHcJY2t8K4v3LqzU08ffeboXp5HL0HbAZtzfcenv66QHWNhXkDnaQg7jBpNG7PVwAqP8XsQ6qs0FQHe868EkCECtggMHc0sNpfaq2qPYP7LpzRHdigtkMLenWwBSDRtNjTkKpxioZXxWbzmkE7', 'yes', '0', 25.00, 'active', 0, '45.184.70.248', '0000-00-00 00:00:00', 0, 0, 0, 0),
(52, NULL, '😛', 18, '2024-06-03 20:25:40', 'ESsPfPA9r9Free5SKZGDO8ouGhpr8bzo9Ewa3hfjATZnYgsDAzA2CsSrNM9t302yQQTi10FhtRFagJbdGdJ8QifLMmyzhcEFsswqa2n7K6oT0rdOZFXcjag2NdqCVEcDa0eDnZKGJGab0W1FNCPpmi', 'yes', '0', 0.00, 'active', 0, '45.184.70.248', '0000-00-00 00:00:00', 0, 0, 0, 0),
(53, NULL, '😏😏', 18, '2024-06-03 20:31:00', 'f1Bw4S2lLt67llAArhlTGoFz2t5CrtPFTGmWqRPI4iORodvYc8LVa56rsp0trI4VZyOXpJowJ4GTgAOg7zdd7DuS6vzczMsOYlLuRqF7FY9EvVWPx1FL8Qq01FIRFuif0hnUeRN8fOtGnQLudrUzDy', 'yes', '0', 0.00, 'active', 0, '45.184.70.248', '0000-00-00 00:00:00', 0, 0, 0, 0),
(54, NULL, '🥳', 18, '2024-06-03 20:33:16', '8oK8bV3BtHNio0G6atX2x2mfZY9wQqk1fIBUnlaqsmKH5fZq3OTNd3ctQv5bh6v4NceV5yim7JnydCoSGci2upUIlFZv96NgefsgfJTqXa8J5XB0UwV26Xu8Dpx5cjecStsye4cnakjBH19ALXP7Xl', 'yes', '0', 20.00, 'active', 0, '45.184.70.248', '0000-00-00 00:00:00', 0, 0, 0, 0),
(55, NULL, '😏', 18, '2024-06-03 20:34:29', '1RzwW5V59QOfsKJr2yASunPJbVvuh67ajDaySFN56teEoiTQli4un5t2q3BohqX88YmfQCvZkqa5wP6HnmThuQrbB5yPNySFDg6ntNA44fKw2prRWl6WvqkOh4kclGkMM9UXex4pHh1J6cTBLcp3SE', 'yes', '0', 0.00, 'active', 0, '45.184.70.248', '0000-00-00 00:00:00', 0, 0, 0, 0),
(56, NULL, '🤑', 18, '2024-06-03 21:26:32', 'WSvzSh8KymSLp2WyDN7Dg28N7jky9IwJdaxMSGzpYiaNV5YiP71dk789m6UHcIniNvvmJBQFpKXblGDFkTTj8qSJ3EXdeJ36sWiV2t6igu8NAcUrEJWdvAT8lxKBFbHQRWV8NDMPDciPtBDgKw7Xdv', 'yes', '0', 0.00, 'active', 0, '45.184.70.248', '0000-00-00 00:00:00', 0, 0, 0, 0),
(57, NULL, '😊', 18, '2024-06-03 21:28:19', 'eyuSuUN9kE0l5F5AOej23vYu64Kwlmu06Ws6z5JYi5BQV2wSILPOwPgC0okMMaDJ2YQHNsQJslHj738AGXPSgvDRZOGETcXxBBLviyhCfmVJfwqsrYPDCx08EeYHpOPniNorD4Sb4KlCd2aleajvWu', 'yes', '0', 0.00, 'active', 0, '45.184.70.248', '0000-00-00 00:00:00', 0, 0, 0, 0),
(58, NULL, '🥵', 18, '2024-06-03 21:34:07', '0et3qIKwbroUBFki6KDYQl7a2Pzyyp8PCUPmsMr78z0bOERLz5gfYn2vlrb9vmpG4APGkMVFnHBbLY1SXDW0LqHxYQMndJ8WIweBb8AgCtCJj10tdFpVHC1N8T83rZH5m7XHhyp1EGtBN62iaqug3K', 'yes', '0', 0.00, 'active', 0, '45.184.70.248', '0000-00-00 00:00:00', 0, 0, 0, 0),
(59, NULL, '😌', 18, '2024-06-03 21:35:27', 'XVpKdludZPopjkg7cyqQ2zbXMchVpdIajWLclnr4aPBo9decWpfZfEaYwF7RjQJ8dSUnnDjoyF6J1CcgrXfC7cGX875HPPYazKQH3WcECEzZFXYvYGuBWzkKHu9MDck92xxlaCudMhomOhsKHt9Lpz', 'yes', '0', 0.00, 'active', 0, '45.184.70.248', '0000-00-00 00:00:00', 0, 0, 0, 0),
(60, NULL, '😉', 19, '2024-06-03 21:40:25', 'AFviGYaKPSYlIFEJL8nzgB0dhmQvszMAR0sSuBVJLRk0p3K1auwCrYsVM01izhD73PfNv5eih4XVu9ntSFAsyro68IK8m0zAGQmgcO4UvqCuEcMyeIfr6Krvn6oXnvdvhaeMdNoUMc16HMFMoatPJZ', 'yes', '0', 0.00, 'active', 0, '45.184.70.248', '0000-00-00 00:00:00', 0, 0, 0, 0),
(61, NULL, '😇', 19, '2024-06-03 21:46:33', 'NBABW3Y2DWOYMus4wQzyGR16HaHz4lR1ovnJQv40GuRJ0G2cnHW1hmcyjeyHbdwwuk3YvQMLY8020UFMzOHc4RPxLh5fnt7qqXPdkxF7XgcwDMB0YHkD8xbsWwZOOy5ZqsPRmLOUdI9oPVUTmbFglV', 'yes', '0', 0.00, 'active', 0, '45.184.70.248', '0000-00-00 00:00:00', 0, 0, 0, 0),
(62, NULL, '😁', 18, '2024-06-03 22:04:02', 'c9N1BWjC6l7ns7nUVwlQyoZyCIUZNQu5WiX1gaRe5mL5XqbCp8lsJzmfVlndFigtBknSaD0XoTCpVEnKgGF2Ws5qnTrMJUtDhy31hPPtbXM72lSQ3G38OMd6Ji9BqYI2ACHjP90z7ZOturRgfea6w6', 'yes', '0', 0.00, 'active', 0, '45.184.70.248', '0000-00-00 00:00:00', 0, 0, 0, 0),
(63, NULL, '🙃', 18, '2024-06-03 22:04:40', '3osYIhOGqhTBUxXDVzc2tRBebjYwqDeXGCkApd9WvHNXUqLO6v5FhKk2nuNwyXbPx1nm5EOQLO5x3d4RXkxWE4WaRIbnHwPNxTL6kS01kfZuXQIwSvhDm7VLBTRV9f3nSlMiZBFB1Hel0SFQgPYu4s', 'yes', '0', 0.00, 'active', 0, '45.184.70.248', '0000-00-00 00:00:00', 0, 0, 0, 0),
(64, NULL, '😌', 18, '2024-06-03 22:05:39', 'HQ2RpX7a083bgi3nLRLn431hppLEVlJJ1jmTinOJjHjiAqW1tZhszTQOdUdNPeihzv9Mub6DN33Bv5q8wYzXAEypyua5ZOyW7u8KG1oPBxLQ2Z3h8qZwmjfXRuBPy6BwQl539vRqAFRdO3iCbDEJ0V', 'yes', '0', 0.00, 'active', 0, '45.184.70.248', '0000-00-00 00:00:00', 0, 0, 0, 0),
(65, NULL, '😝', 18, '2024-06-05 21:34:21', 'OVhyCgbaR3yOixv28DRFEGji7CxWt6uDrgee0EaFo4urLvZUh3rdlbNTLWHMwwTN2NB84Ul07YR3Jn0YaOUO3jaicijIhLe0H1WztxiRnpPWCH2sJ6e50fdMs0dkuEogJl7415kvkJdvzifW8FlrUN', 'yes', '0', 0.00, 'active', 0, '45.184.70.248', '0000-00-00 00:00:00', 0, 0, 0, 0),
(66, NULL, '👀', 18, '2024-06-05 21:34:52', 'H82rFbyC5it5EM9CkF3NaRbv4esVzgvlZQ3Kugy8xrhD5NEgeeaDfyTAZz23XUoy9eegltGjFKJzvijlz77nPRNbL94QHc9JM4fyzz7zz8Ecpa6BFQnAZ3PUElMDQ2jsLQXnL6pi73eycDoPJTPZBL', 'yes', '0', 0.00, 'active', 0, '45.184.70.248', '0000-00-00 00:00:00', 0, 0, 0, 0),
(67, NULL, '👅', 18, '2024-06-05 21:36:04', 'IrXinHI7tLDhN3XytEQUiT6WEpRd7wfqi2nWSF8sFdyOU6Qs4LiuAxQ8nkkxDveotMQ3NxjVqHLb1ddG1LTonlxjaKdVHc7huPFNrPSMEwrskqHrX4I4q8SpHpHKZPA620IcbOJjtbS5xoJ8DGP4zS', 'yes', '0', 0.00, 'active', 0, '45.184.70.248', '0000-00-00 00:00:00', 0, 0, 0, 0),
(68, NULL, '😄', 18, '2024-06-05 22:09:49', 'vuXd231AQWLUHEy14i5TZkJfZv4e7tKhh0EZX13kS3zm1xqtG5BcmjPmE1Pzi2aYKjHLiHbft4lYGKvkZ8duhg8hRlymar7GuMcVvRzqwfDQJpJ5saCHKtCh9gkZgSLpXMHbVLqAP7IMXJGDdpJVPA', 'yes', '0', 0.00, 'active', 0, '45.184.70.248', '0000-00-00 00:00:00', 0, 0, 0, 0),
(69, NULL, 'Sem efeitinho🥵', 33, '2024-06-26 00:17:13', 'e58SyW0IjkrQ1OHGrkNRc8tn70N1Wc4r6ZLyPv6Hzy88VQ3VbkR9rMtaY0LWS2mDOWG1Oj4ogAsJB7nLQpGSCtDOVuRF6VqSCKRP1tlEvOq0VQmKgSmHJ7cBIxzx4OrUsDRrKfADcLVN9pBmwydFR7', 'yes', '0', 30.00, 'active', 0, '45.235.192.3', '0000-00-00 00:00:00', 0, 0, 0, 0),
(71, NULL, 'Rostinho de sapeca, mas só o rostinho. ☺️😈', 34, '2024-06-26 00:55:53', 'yhnAUx8JSqmJhfnjz35P6JcUVW7mxCGNFpzgdhGpO6oEL45VGyNJ3DYRjM3w94BbqSsnfUGtVvB2AjOdcFdrzOsWPYszwSlo3uu6j3o6iBu7FsZvNFiNx8Y090axq4vXcLEtJw9zJcxWBcFdP4iKJn', 'yes', '0', 70.00, 'active', 0, '2804:14c:6580:41c6:acf4:18f2:985a:59c', '0000-00-00 00:00:00', 0, 0, 0, 0),
(72, NULL, 'Só de calcinha na posição de quatro, para mostrar meu bumbum gigante. 🤫', 34, '2024-06-26 01:11:50', 's3KV5y4WgIlILyK5MtXCDW2REvjej7w2JupoERRczqGiIO1Lcbi5L3Iw7WBe6htMGjs1KMKZkIIJt7G0RAfWv6nVFIXOrmQI3eHfYP4zqGdtMIlXGDD83Lr9vDTXZEYFebHC7sEHvVDHBBHKBVHeDg', 'yes', '0', 70.00, 'active', 0, '2804:14c:6580:41c6:acf4:18f2:985a:59c', '0000-00-00 00:00:00', 0, 0, 0, 0),
(73, NULL, 'De quatro peladinha.😈\r\nAdoro essa posição.🔥', 34, '2024-06-26 01:13:34', '7AsWi452SoIWNsI6nHP0Xw2qbccUtxcHZhugNzs2lLtD8ToO3dBzXFmADp3a7pMAoxuw1EKxmVGCC4BZLJ3K14KmwrPBcVS864hcqO6995sp7uMCFThSWd5xdt51jRsQYyqeEn6hihuna3VYEE9KES', 'yes', '0', 70.00, 'active', 0, '2804:14c:6580:41c6:acf4:18f2:985a:59c', '0000-00-00 00:00:00', 0, 0, 0, 0),
(74, NULL, 'Peladinha 🤫', 34, '2024-06-26 01:16:22', '7qa7q9acB4WzfWCQr0RZYYaiYiCfBRyffGvNMNG2s5GsxQhfjVNoFI5rYje6duf4rFnJ1lR1426UsSEE43IU4CyMvNLl9wL7JM6r3VlD5eqj77vSX50mtPzJdfPDA6kc1AOtr2BsuKDoP53UYmAgVB', 'yes', '0', 70.00, 'active', 0, '2804:14c:6580:41c6:acf4:18f2:985a:59c', '0000-00-00 00:00:00', 0, 0, 0, 0),
(75, NULL, 'Pra mostrar a marquinha do biquíni. 😏', 34, '2024-06-26 01:18:33', 'saPFQJL4ZX2WI72sVJI9bMH2IfDvPjsPj6ZmPr57HFDXRzmKPN3Jvbqvufo7Rd2BusnpnKvZBWL0EYiLt0BfOCxRWofqhdHt5OttbafbaoCz5EdySDE67WMFoNsds3uwtScPRhx8ASyyuFPZy0GbDj', 'yes', '0', 70.00, 'active', 0, '2804:14c:6580:41c6:acf4:18f2:985a:59c', '0000-00-00 00:00:00', 0, 0, 0, 0),
(76, NULL, 'O tamanho dessa raba. 🥵', 34, '2024-06-26 01:33:45', '8quSGvW1j7Z2AZc6fcJEMsUU2sDwV4dInVRDmmxTF0zsNbwGoYimA8AI3JYauBkNZDGLF6Aftc6EO4joylDgky5oGIh3Ew3N26EchMLDlNbk8TWh7UlgAmQneNb8CGyLlZRL2AGM6myjGrTmyO4EcF', 'yes', '0', 0.00, 'active', 0, '2804:14c:6580:41c6:acf4:18f2:985a:59c', '0000-00-00 00:00:00', 0, 0, 0, 0),
(77, NULL, 'Boa noite amores!', 18, '2024-06-26 19:28:06', 'uyA8iIX19fPAK70E92BIVCRSV5PrkbCvZeVVxOlxHNwNf0Lh6caZOT6trnxIFmiabv7zXQzgt8tNtev2PpGcq4xkZXzqcxQ8i3BEISjUUVAc4tzQtpwzRIKuqFPeDhgDD4m9ojJWvrAub5tfGI5KJj', 'no', '0', 0.00, 'active', 0, '45.184.68.231', '0000-00-00 00:00:00', 0, 0, 0, 0),
(78, NULL, 'Atualizando o feed pra vocês meus amores!', 18, '2024-06-26 19:42:18', '4btGFtORWQb1f1xM1sAlkeIeelsayPu9qj8JoopmpPLIlhTCZMO4OxXtaxAmNQVZWAOZmyr1n7ugXQawDsIM3HMkrlQvD5fKXO5U2Yt9XZQFaxWxUGJmkIYiG31gpqQtbCTtO4IQtT3KFPDmir1rFd', 'no', '0', 0.00, 'active', 0, '45.184.68.231', '0000-00-00 00:00:00', 0, 0, 0, 0),
(79, NULL, 'Olá amores!💖', 41, '2024-06-26 22:06:23', '6QdkF6d3kzstnms637KMVkLlLwCVcFa5Hkn0hxfg0mrJ4h5RaiES6w1Z15bHUbquIpcn7iMt5zNHNdVPwxUyCcO43QhczbYBV92GtbKPHDpslElVbbPvQJBciSiAgsaEKVUqxtOkKvHjVBbjQl0Av1', 'yes', '0', 0.00, 'active', 0, '187.84.180.57', '0000-00-00 00:00:00', 0, 0, 0, 0),
(80, NULL, 'Quero te conhecer … vamos?', 31, '2024-06-26 23:21:07', 'K1YapC9KKUlDzO7tgiJiEmkBXTjt8hX7W26hLDnToitwJRGWBbABeFV8kU7g3ET9S04Q5WroxZPE5AvyfGXBJPArbQVkirVWSxdAwJG20l3nys4rZiV0lDEt70gU5HfqYgkTjV9xwhW4dv2aeAuUun', 'yes', '0', 50.00, 'active', 0, '2804:d59:b93b:aa00:c149:7ec2:8144:2de8', '0000-00-00 00:00:00', 0, 0, 0, 0),
(81, NULL, 'Amor, vamos deixar nossos sentidos nos guiar e ver onde isso nos leva? 😜', 31, '2024-06-27 17:09:34', '5Rta8uEQYhMxVyKpRLPPUqCRytrRwWscIgq2rYiL2oJjkB7MvNuhletEb7JPgAhm15FzK06g2nuuyUnLbBhewiyqeaBYBI4HKJcmQn5TQoEru2oF8p8H7vC9eQS2mLPmH3NqLYQnkkfKHozE07ieNc', 'yes', '0', 50.00, 'active', 0, '2804:d59:b93b:aa00:5d7d:6e18:b1d3:7db5', '0000-00-00 00:00:00', 0, 0, 0, 0),
(82, NULL, 'Só vem… 🔥', 31, '2024-06-27 17:16:25', 'm2Fz43if5s9TpHs5qG80Uv1sIyfuZElS3tIJTx6I1CNzl8KPcO7cTbAwGNcLIIttIaUwbBgZNsodQ2vWIZfp1PPobxDZUos9eil3vXqrD9rEMAMqchbZC1igjEfTDc55Dmf4kn4eMf5nTwMYYpFP4Y', 'yes', '0', 70.00, 'active', 0, '2804:d59:b93b:aa00:5d7d:6e18:b1d3:7db5', '0000-00-00 00:00:00', 0, 0, 0, 0),
(83, NULL, 'Esperando … 😈', 31, '2024-06-27 17:17:32', 'QriySOjUiChHGb63MR7PZiaKmDOZFuoofjU9KurY5OqLjMXGM96xAsA7qzD6hsQgeq723hJgalEqd1YS01SE5EIdQWPMigZc6ZHS4bf8yVgKe80H8Q75gTBxHa3ZXI6sDRD9ZEjPRxtgoNzYWbUsMh', 'yes', '0', 70.00, 'active', 0, '2804:d59:b93b:aa00:5d7d:6e18:b1d3:7db5', '0000-00-00 00:00:00', 0, 0, 0, 0),
(84, NULL, 'Hot Hot Hot 🔥', 31, '2024-06-27 17:18:43', 'ygmMjOJ4cs97Tl4p5HtdnCjewEa6JbfWAdb4TYYZUP6RcUxVNfMQ6sPTifNn3LhfdXkADzCRPkeldCZxOgYHF1OLEo0VE88RNFn4AxPVmBICaAsI0eKmVY3leNK4zDZlPS34Q2LBnLeiH71uZRGTKu', 'yes', '0', 70.00, 'active', 0, '2804:d59:b93b:aa00:5d7d:6e18:b1d3:7db5', '0000-00-00 00:00:00', 0, 0, 0, 0),
(85, NULL, 'Só vem meu bem 😜', 31, '2024-06-27 17:19:59', 'a1bBcOl7NOhKVsuDluNOiDrfQTDaOu3vd75Fu5xYx146rQ6BiIJRtlI8OMLugVbnJ3dxESTfX0E38d4oHxvb5bsSOaXJvubMQI78v6G3vz6IChSOMkZtoxJ8MzrNMXngOlgbd9ICEwouksCKhEhGVC', 'yes', '0', 50.00, 'active', 0, '2804:d59:b93b:aa00:5d7d:6e18:b1d3:7db5', '0000-00-00 00:00:00', 0, 0, 0, 0),
(86, NULL, '🔥🔥🔥', 31, '2024-06-27 17:21:17', 'LTr1FDOGm32qT618JN4WvPh3gA2VNN6ujNaUzu7m2RfrAqCvPwqTnLWxXsiIfBT8yRXu3pnTQmmpUAfZRnslPkIYkxQzNtD89cg4FOUsT9wnuH4Ak0iUJtSNuXGHSS1aZMgBW6SQm7ZDXExOZaz0UB', 'yes', '0', 50.00, 'active', 0, '2804:d59:b93b:aa00:5d7d:6e18:b1d3:7db5', '0000-00-00 00:00:00', 0, 0, 0, 0),
(88, NULL, 'Go Go Go 🔥🔥🔥', 31, '2024-06-27 17:24:26', 'HWmvv9oqW0nRg2dOO1XFr3DH0ZLoOOLhHT0Ft2PRbZlb1CkRHnhZuyhhbEwmiBkRsBxIhkjfibtOfnpFRgPVwu08KrQ1YzuegqcFZPtkREJTRdsn1yXZb3L6qMscnLLBZBq52pUsGHVfNc7ILDD47v', 'yes', '0', 50.00, 'active', 0, '2804:d59:b93b:aa00:5d7d:6e18:b1d3:7db5', '0000-00-00 00:00:00', 0, 0, 0, 0),
(89, NULL, 'Só vem meu bem 😈🔥', 31, '2024-06-27 17:26:12', 'sFqfFIGlz2A2PazMaCbAvNc1TAm8FiZzBgGw1THvoflQ8pjbkcKJJ1rjX2yUPfN6e1QD7shvhxKxkcYZpG8DPhZq8KDrc6xxnFqosEwhvTgANl5SPof9B2GtfxtcAxnaYTew6PvKNKEj9zo6Lmg85A', 'yes', '0', 70.00, 'active', 0, '2804:d59:b93b:aa00:5d7d:6e18:b1d3:7db5', '0000-00-00 00:00:00', 0, 0, 0, 0),
(90, NULL, '🔥🔥🔥', 31, '2024-06-27 17:27:09', 'jShgCNVvE90965tFldJALAtrzEBypTyI1tIWfRPSrZ9d51dHAcpVMx6M76PQGm9LQ5jbzxmrvCMFwIiMasY6zuRvxTGYE5kz3oPTXlrjuINvUqfP8uq3x7lEgECVBrBhWgBsuIteKkGBtfzTmeUZBZ', 'yes', '0', 70.00, 'active', 0, '2804:d59:b93b:aa00:5d7d:6e18:b1d3:7db5', '0000-00-00 00:00:00', 0, 0, 0, 0),
(91, NULL, 'Olá meus babys! ✨ Meu look de hoje, rsrs. Espero que gostem! \r\n\r\nEstou preparando conteúdos para a semana.', 41, '2024-06-27 23:03:45', 'YOqVbVmgilmvG67CsDllUjIxUkrICBEaGKO5gj3f0SALiLQyKfTyYcSWszxojXb8WDpLBGaV62zpd21IzHCiTGyPb4IMQ5DvIfrTfFUVFHdMoxJAmCzm41OKNF9MB5xfnksbdeskmeifdPObTRCglu', 'yes', '0', 0.00, 'active', 3, '187.84.180.57', '0000-00-00 00:00:00', 0, 0, 0, 0),
(93, NULL, 'Ops, caiu sem querer 🫢🍑', 18, '2025-01-16 06:09:08', 'N2D3obKLfsydIAGjfsWGAAkNZg2xIz5fhfwzndRoaH5bLGfGHvjfNX9Essu1puxZFUij858R7LGxz7dpp6dvJiXSyRmh1TQyu7VASjbVZOFBxT7KL99xg6MsfCkM53KBgDa73oUclA6QTFKZsCeMDb', 'no', '0', 0.00, 'active', 201, '2804:14c:65c9:49db:cc94:f859:93a7:4ef8', '0000-00-00 00:00:00', 0, 0, 0, 0),
(94, NULL, 'O que você faria com esses peitos?', 18, '2025-01-16 06:10:56', 'CRvdw2s0XiVnwWCABgeqERU2XzBeTlSIvwCnT3ErR6DsvoNvPZlMWp47JGtlwB2ddVpjnIdAmXuo1eQRUjyYy06HfTB09SjLEayDbqWaJMRgIgYswkAFQtfVPNBVQUWf8mm2zIinGRAShnTDQ7AW7p', 'yes', '0', 0.00, 'active', 0, '2804:14c:65c9:49db:cc94:f859:93a7:4ef8', '0000-00-00 00:00:00', 0, 0, 0, 0),
(95, NULL, 'Um banhozinho🔥🤭', 62, '2025-01-30 20:47:58', 'BFI4ZbOvds53MP6dec5Nf8ndrXot5NHKwuwme2SH9HIF3X80tZV3JWg3oLxCtC6ZwcYUC0rrTUGQpyPBEHZS0g9vELC9CdDbmKzh7BNtEDv8x3krKdxbj8XfMNrVRKw8oHxIzcSSJpBCS6KI6bZNar', 'yes', '0', 30.00, 'active', 2, '2804:d59:8707:6300:2d78:ae08:91e6:553d', '0000-00-00 00:00:00', 0, 0, 0, 0),
(96, NULL, '🤤🤭🔥', 62, '2025-01-30 20:48:46', '9UQswpIwEfU4WDN2kmRxkKttVzLeumvgBbx3pcd3RgZ34RArhVDP6GcNQyA2G5gRu0RP0dKqJoJhIFfVkjNVdGuxBdh6g0GVm0a4H0iq0vwaRjHFzd4BOQ6jwEyXVDth3E64x3bXmvTf3jBaMzQPoy', 'yes', '0', 30.00, 'active', 2, '2804:d59:8707:6300:2d78:ae08:91e6:553d', '0000-00-00 00:00:00', 0, 0, 0, 0),
(124, NULL, 'Seja bem vindo 😋', 162, '2025-10-29 11:26:55', '1Gg8YVIGAoDKtmKojoVpt1tEcjlt7nIqLPRkNrSBqsUtSGB9DCtJpmcUR3Ub1MA4FZKPhf1llFDHbXy7QpcHIGd6Eq7UdvJx9FTUFqcpy1D7m8ZRD9tsUyXv2LqTw9TYtyp7j8QnYzOb8UPaca5lAw', 'yes', '0', 0.00, 'active', 0, '201.139.87.173', '0000-00-00 00:00:00', 0, 0, 1, 0),
(125, NULL, 'Vem deitar comigo 😋', 162, '2025-10-29 11:30:48', 'gH7MAsnlJgisuNAc4QYslnDHKA7q2PzbeuJhQjqxBrERv0ttHizE3X3us99YEpCAYqtRKhUWnwSZkclQzyUJ3zRonkPVAczntAna9XG21z8CgmZfJIWxCbN9nzOThAF8Ng5tKxtaw2Jk8TWzQs04yf', 'yes', '0', 0.00, 'active', 0, '201.139.87.173', '0000-00-00 00:00:00', 0, 0, 1, 0),
(126, NULL, '☀️', 162, '2025-11-16 21:11:54', 'h0Gw9kb0TYrUlQwk7V9aCUapgHGz5b75qUwYeeBQ1sP980phnvZFYuy9oqDWGR9Eke7MFZ1S3oZxFVndH3fM43Fu77Fuxeid4OC6u1HpHWkIfNol4bP0sTWuqfqnyyAb1UdFmQOKtFdKHlk0LnkOiR', 'yes', '0', 0.00, 'active', 0, '201.139.87.173', '0000-00-00 00:00:00', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `username` varchar(50) NOT NULL,
  `countries_id` char(25) NOT NULL,
  `password` char(60) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `avatar` varchar(70) NOT NULL,
  `cover` varchar(70) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'active',
  `role` enum('normal','admin') NOT NULL DEFAULT 'normal',
  `permission` enum('all','none') NOT NULL DEFAULT 'none',
  `remember_token` varchar(100) NOT NULL,
  `token` varchar(80) NOT NULL,
  `confirmation_code` varchar(125) NOT NULL,
  `paypal_account` varchar(200) NOT NULL,
  `payment_gateway` varchar(50) NOT NULL,
  `bank` mediumtext NOT NULL,
  `featured` enum('yes','no') NOT NULL DEFAULT 'no',
  `featured_date` timestamp NULL DEFAULT NULL,
  `about` varchar(200) NOT NULL,
  `story` text NOT NULL,
  `profession` varchar(200) NOT NULL,
  `oauth_uid` varchar(255) NOT NULL,
  `oauth_provider` varchar(255) NOT NULL,
  `categories_id` varchar(255) NOT NULL,
  `website` varchar(200) NOT NULL,
  `stripe_id` varchar(255) DEFAULT NULL,
  `pm_type` varchar(255) DEFAULT NULL,
  `pm_last_four` varchar(4) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `verified_id` enum('yes','no','reject') DEFAULT 'no',
  `address` varchar(200) NOT NULL,
  `city` varchar(150) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `pinterest` varchar(200) NOT NULL,
  `github` varchar(200) NOT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `email_new_subscriber` enum('yes','no') NOT NULL DEFAULT 'yes',
  `plan` varchar(255) NOT NULL,
  `notify_new_subscriber` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_liked_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_commented_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `company` varchar(50) NOT NULL,
  `post_locked` enum('yes','no') NOT NULL DEFAULT 'yes',
  `ip` varchar(40) NOT NULL,
  `dark_mode` enum('on','off') NOT NULL DEFAULT 'off',
  `gender` varchar(50) NOT NULL,
  `birthdate` varchar(30) NOT NULL,
  `allow_download_files` enum('no','yes') NOT NULL DEFAULT 'no',
  `language` varchar(10) NOT NULL,
  `free_subscription` enum('yes','no') NOT NULL DEFAULT 'no',
  `wallet` decimal(10,2) NOT NULL,
  `tiktok` varchar(200) NOT NULL,
  `snapchat` varchar(200) NOT NULL,
  `paystack_plan` varchar(100) NOT NULL,
  `paystack_authorization_code` varchar(100) NOT NULL,
  `paystack_last4` int(10) UNSIGNED NOT NULL,
  `paystack_exp` varchar(50) NOT NULL,
  `paystack_card_brand` varchar(25) NOT NULL,
  `notify_new_tip` enum('yes','no') NOT NULL DEFAULT 'yes',
  `hide_profile` enum('yes','no') NOT NULL DEFAULT 'no',
  `hide_last_seen` enum('yes','no') NOT NULL DEFAULT 'no',
  `last_login` varchar(250) NOT NULL,
  `hide_count_subscribers` enum('yes','no') NOT NULL DEFAULT 'no',
  `hide_my_country` enum('yes','no') NOT NULL DEFAULT 'no',
  `show_my_birthdate` enum('yes','no') NOT NULL DEFAULT 'no',
  `notify_new_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_email_new_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `custom_fee` int(10) UNSIGNED NOT NULL,
  `hide_name` enum('yes','no') NOT NULL DEFAULT 'no',
  `birthdate_changed` enum('yes','no') NOT NULL DEFAULT 'no',
  `email_new_tip` enum('yes','no') NOT NULL DEFAULT 'yes',
  `email_new_ppv` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_new_ppv` enum('yes','no') NOT NULL DEFAULT 'yes',
  `active_status_online` enum('yes','no') NOT NULL DEFAULT 'yes',
  `payoneer_account` varchar(200) NOT NULL,
  `zelle_account` varchar(200) NOT NULL,
  `notify_liked_comment` enum('yes','no') NOT NULL DEFAULT 'yes',
  `permissions` mediumtext NOT NULL,
  `blocked_countries` mediumtext NOT NULL,
  `two_factor_auth` enum('yes','no') NOT NULL DEFAULT 'no',
  `notify_live_streaming` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_mentions` enum('yes','no') NOT NULL DEFAULT 'yes',
  `stripe_connect_id` varchar(255) DEFAULT NULL,
  `completed_stripe_onboarding` tinyint(1) NOT NULL DEFAULT 0,
  `device_token` varchar(255) DEFAULT NULL,
  `telegram` varchar(200) NOT NULL,
  `vk` varchar(200) NOT NULL,
  `twitch` varchar(200) NOT NULL,
  `discord` varchar(200) NOT NULL,
  `reddit` varchar(200) NOT NULL,
  `spotify` varchar(200) NOT NULL,
  `posts_privacy` tinyint(1) NOT NULL DEFAULT 1,
  `document_id` varchar(100) NOT NULL,
  `crypto_wallet` varchar(255) NOT NULL,
  `threads` varchar(200) NOT NULL,
  `allow_live_streaming_private` enum('on','off') NOT NULL DEFAULT 'off',
  `price_live_streaming_private` decimal(10,2) DEFAULT NULL,
  `allow_dm` tinyint(1) NOT NULL DEFAULT 1,
  `welcome_message_new_subs` text NOT NULL,
  `send_welcome_message` tinyint(1) NOT NULL DEFAULT 0,
  `price_welcome_message` decimal(10,2) DEFAULT NULL,
  `alias_mp` varchar(100) NOT NULL,
  `cvu` varchar(100) NOT NULL,
  `kick` varchar(200) NOT NULL,
  `email_new_message` tinyint(1) NOT NULL DEFAULT 1,
  `allow_comments` tinyint(1) NOT NULL DEFAULT 1,
  `custom_profit_referral` int(10) UNSIGNED NOT NULL,
  `price_video_call` decimal(10,2) DEFAULT NULL,
  `video_call_duration` int(10) UNSIGNED DEFAULT NULL,
  `notify_commented_reel` tinyint(1) NOT NULL DEFAULT 1,
  `notify_liked_reel` tinyint(1) NOT NULL DEFAULT 1,
  `price_audio_call` decimal(10,2) DEFAULT NULL,
  `audio_call_duration` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `role` (`role`),
  KEY `permission` (`permission`),
  KEY `categories_id` (`categories_id`),
  KEY `stripe_id` (`stripe_id`(191)),
  KEY `users_blocked_countries_index` (`blocked_countries`(768)),
  KEY `username` (`username`),
  KEY `status` (`status`),
  KEY `permissions` (`permissions`(768)),
  KEY `countries_id` (`countries_id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `countries_id`, `password`, `email`, `date`, `avatar`, `cover`, `status`, `role`, `permission`, `remember_token`, `token`, `confirmation_code`, `paypal_account`, `payment_gateway`, `bank`, `featured`, `featured_date`, `about`, `story`, `profession`, `oauth_uid`, `oauth_provider`, `categories_id`, `website`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`, `price`, `balance`, `verified_id`, `address`, `city`, `zip`, `facebook`, `twitter`, `instagram`, `youtube`, `pinterest`, `github`, `last_seen`, `email_new_subscriber`, `plan`, `notify_new_subscriber`, `notify_liked_post`, `notify_commented_post`, `company`, `post_locked`, `ip`, `dark_mode`, `gender`, `birthdate`, `allow_download_files`, `language`, `free_subscription`, `wallet`, `tiktok`, `snapchat`, `paystack_plan`, `paystack_authorization_code`, `paystack_last4`, `paystack_exp`, `paystack_card_brand`, `notify_new_tip`, `hide_profile`, `hide_last_seen`, `last_login`, `hide_count_subscribers`, `hide_my_country`, `show_my_birthdate`, `notify_new_post`, `notify_email_new_post`, `custom_fee`, `hide_name`, `birthdate_changed`, `email_new_tip`, `email_new_ppv`, `notify_new_ppv`, `active_status_online`, `payoneer_account`, `zelle_account`, `notify_liked_comment`, `permissions`, `blocked_countries`, `two_factor_auth`, `notify_live_streaming`, `notify_mentions`, `stripe_connect_id`, `completed_stripe_onboarding`, `device_token`, `telegram`, `vk`, `twitch`, `discord`, `reddit`, `spotify`, `posts_privacy`, `document_id`, `crypto_wallet`, `threads`, `allow_live_streaming_private`, `price_live_streaming_private`, `allow_dm`, `welcome_message_new_subs`, `send_welcome_message`, `price_welcome_message`, `alias_mp`, `cvu`, `kick`, `email_new_message`, `allow_comments`, `custom_profit_referral`, `price_video_call`, `video_call_duration`, `notify_commented_reel`, `notify_liked_reel`, `price_audio_call`, `audio_call_duration`) VALUES
(1, 'Dojobe', 'oadminpirocudo1', '32', '$2y$10$2Bp1tEE/BAPoBkeHDadsr.EZnAS45nET2eMS39p9dtT7vGy8eABNG', 'contato.vestese@gmail.com', '2025-07-03 22:20:33', 'default-1719637495.png', '', 'active', 'admin', 'all', 'aR5xyZuQFHm6o10oHKC6MbG4G9bO0BYGeGLfPIJHiyui6uZgjchFO1lBxo6S', 'Wy4VkAl2dxHb9WHoXjTowSGPXFPnEQHca6RBe2yeqqmRafs0hSbCEobhNkZZAbCDIru60ceLzAAOI3fj', '', 'marcos@gmail.com', 'Bank', '05478733212', 'yes', '2019-02-21 03:25:00', '', 'Já fez seu Job hoje? Se não, já vem aqui aprender como aumentar suas vendas com conteúdos exclusivos 🫦', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', '', '', '', '', '', 'https://www.instagram.com/soudojobe', '', '', '', '2026-03-06 17:56:58', 'yes', 'user_1', 'yes', 'yes', 'yes', '', 'yes', '', 'off', '', '02/09/2000', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'no', 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', 'full_access', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, 'Seja bem vindo(a) à Dojobe! Aqui seu trabalho é satisfazer cada assinante novo rsrs. Tem interesse em ser acessorado(a) por nós? Responde essa mensagem com seu WhatsApp que entraremos em contato!', 0, 0.00, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(2, 'Kayo Rocha', 'kayo2', '32', '$2y$10$tzjIXHUct5a./IyvaKno7OEPrC5661RB2Js4dUAUGjWNDFoP/tjuS', 'kayorocha22@gmail.com', '2024-05-18 01:34:38', 'default-1719637495.png', '', 'active', 'admin', 'all', '19cDxrjZRzfeWLFAKvNysswEsouhPfkoMU1IjMQr6bcJWUGVn52ddQ6AqJcj', 'P8CaQZHUpRN5JalDfNKjdE6PjbGJAGhc9VNIAczsh4WUtgxX2STbREGkQuy3XuILr0h0BGvZiWA', '', '', '', '', 'yes', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', '', '', '', '', '', '', '', '', '', '2024-08-17 15:58:39', 'yes', 'user_2', 'yes', 'yes', 'yes', '', 'yes', '2804:984:56:3e00:dc5e:f8c5:79ca:82b7', 'off', '', '10/31/2002', 'no', 'port', 'no', 100.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(3, 'Brenda', 'brendamartins', '32', '$2y$10$GzIJLt0TVgf7aAg5rzaHkeCV2reoj1EDEymhZtdhnWVyEcm7fzrbS', 'pics.brendamartins@gmail.com', '2024-05-18 02:16:52', 'brendamartins-31715998718ddoxz54lcj.jpg', 'brendamartins-317159992050z7qbee8pz.jpg', 'active', 'normal', 'none', 'CCPydb5utu9t3JGdZ0mW1Joh5I2kgKy4NgD1CwVLfwtAqHGr2QMBQn8kFJLw', 'elCZ4Qw51hUBOlg0v6pZuIndwb3O1oOwfFAs6Ny5tznhcTT8U9CrkVdNHn99j2Fn8EOlk7lnI8y', '', '', 'Bank', '619961382220000000000000', 'no', NULL, '', 'Seja bem vindo, ao meu mundo secreto!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 354541.45, 'yes', 'fghfgj', 'ghfhgf', '1432542', '', '', '', '', '', '', '2025-08-26 22:56:57', 'yes', 'user_3', 'yes', 'yes', 'yes', '', 'yes', '34.95.158.246', 'on', 'female', '11/22/2001', 'no', 'port', 'no', 12226.05, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'on', 10.00, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(4, 'Eduardo', 'eduardo4', '32', '$2y$10$vvfBdknW868YvVaQcPvh4O/EEjDVGZYCcJzzFwO.zr8qRnlruFR7y', 'dudusmelos@gmail.com', '2024-05-18 02:33:11', 'eduardo4-41720033334amz7rnjlm7.jpg', 'eduardo4-41720033339fqcpdfjk6s.jpg', 'active', 'normal', 'none', '4t1JdNkBFP2LY8oJujV7uIcPz3CX2lGU93KbUIgOy6xRrKtTDDOv2Lx8L7AY', 'Kaistvot3pd1bFPecyQiZOD0vW9gfF4XhsO5cRLUaVlA6ZcwQpsMP9sBQliUa2I4trFjgqQXNF1', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-07-03 18:10:52', 'yes', 'user_4', 'yes', 'yes', 'yes', '', 'yes', '45.184.71.230', 'on', '', '02/08/2000', 'no', 'port', 'no', 1050.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(5, 'Leia Ferreira', 'leiaferreira', '32', '$2y$10$c27kAxI6Q9/QAdG3vK/j1.CQ6utxUsrYuvU5EPLzYOzOReGOCBABu', 'indices-tapioca.0r@icloud.com', '2024-05-18 01:22:06', 'eduardo5-51716009487oifpj6pey8.png', 'leiaferreira-51719366993ysqgnjcydk.jpg', 'active', 'normal', 'none', 'ExocTTuCBkCciyuOYrcMKt6LO3TuQ61h1XRQ7YwQceLtzYLAzga6HKM1gQ5S', 'zvNl54HC1qpnvG4H67X68RLAlpgJatwa0RUgseqnq6Nm2yeKCJDQq06AO6u1lMNV70gta4DWomq', '', '', '', '', 'no', NULL, '', 'Sou uma menina magrinha peituda e da cintura fina, faço um boquete bem babado me exibindo pra camera e amo receber no cuzinho. Você pode ver tudo isso assinando meus conteúdos aqui', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 8879.80, 'yes', 'Marrocos', 'Marrcoso', '21123342', '', '', '', '', '', '', '2024-07-03 15:59:51', 'no', 'user_5', 'no', 'no', 'no', '', 'yes', '45.184.71.230', 'on', 'female', '02/17/2000', 'no', 'port', 'no', 9894.00, '', '', '', '', 0, '', '', 'no', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'no', 'no', 'no', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(6, 'Gabriel Melo', 'gabriel6', '199', '$2y$10$.7fbnBSTr4TOqj2K9ide/eCAxQY3TSPZTtONi/HxTAv8Q2ReY7SE2', 'contato.gxbrielsz@gmail.com', '2024-05-18 10:32:29', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'bQUBhBCGtpCugsp3YNhY07CGBZgu0u4lh0aNWjdBNh1iDejTEAL7fJtbNVSTDA2T6uJNS0tFfmP', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-05-23 23:55:09', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '47.63.255.239', 'off', '', '', 'no', 'pt-br', 'no', 51.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(7, 'Gabriel', 'gabriel7', '32', '$2y$10$KUM5y3RkNdof6xDpmefJH.Sgpy0i8Sw2f/paAt6bkL5yfcUi80OMi', 'gabrielcod321@gmail.com', '2024-05-18 14:54:07', 'default-1719637495.png', '', 'active', 'normal', 'none', 'cCVqT9GysIVEDDs1GrEiJB9Y1tirJoL6eCd7QwkziaubwiuUdkAF3KJsojgd', '8AeF2Vsi93OChRsTY94RvXfjBOvnbWwVLHd0UX4PQqFeOXK5htnKIS6COE4DLp6dnhQvje5SuCy', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', '', '', '', '', '', '', '', '', '', '2024-10-29 14:24:07', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '45.184.71.230', 'on', '', '', 'no', 'pt-br', 'no', 5919.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(11, 'Amanda Brito', 'amanda11', '32', '$2y$10$Co9H0ZdwudKRDRPcZNGSH.OZ2raqOnEDPWeOjtw9ZQKS3n5Ho950W', 'misecat450@mcatag.com', '2024-05-22 22:26:15', 'amanda11-111716850184cfdxgmjufl.jpg', 'amanda11-111716851239hxvp5hi2lf.jpg', 'active', 'normal', 'none', '', 'Cty0CvUgqERX0F8dRrOnmXpS2KUqC48VFHgl7CbVUpjVLEmVT4mQKpIQVGTbecH1DjR3ARfFaeA', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', 'Criadora de conteudo', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 54348.92, 'yes', 'quadra', '', '73015120', '', '', '', '', '', '', '2024-06-26 04:55:03', 'yes', 'user_11', 'yes', 'yes', 'yes', 'LTDA Brito', 'yes', '45.184.71.230', 'off', 'female', '11/22/2002', 'no', 'port', 'no', 869.90, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(13, 'jorgin camargo', 'jorgin13', '32', '$2y$10$GGb0ibkTCijW8wEvjyU0M.YbOmX1aY..BCFs.Zc31vVbm8lSx6gWi', 'migiw85911@neixos.com', '2024-05-25 20:33:17', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'YAqMCM94klM3rAd65ASFGTsM4J3YDsfAJFDUZThtJRpQNcXFLM81JTSNth4fCPQfiNvT5UpFzoj', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-05-25 21:48:01', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '45.184.71.230', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(14, 'Jorge', 'jorge14', '32', '$2y$10$6RLKNVIUrRTxImjWPwxgTeQWFCNwRAx1g4D3XgSPUNkjCbzuYEXxe', 'hagixa2664@crodity.com', '2024-05-29 21:01:42', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'TUUEezTyUsDUisQQ2vx2TFXYoUrtUwq7IiwNEmTmNYbq2f1RyYjy0TONs7SFbNmtVNJiBcGxts0', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-06-22 18:49:03', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:984:57:d800:303c:f9ad:b09a:f202', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(16, 'fobano', 'fobano16', '32', '$2y$10$CceGwLDbgzdPHDTM0vAtyeKPOnPnqyQFGMVTL5GKCRTzNm.FKyXJW', 'fobano6433@avastu.com', '2024-05-30 16:58:31', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'rJziYJfeOwRH1dsww2K8iU9b0skSDDpmSCAWPUpzDWozsBxIxzWovVbDI1vHbNEn7cVOM9bap2l', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-05-30 17:19:42', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '45.184.71.230', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(17, 'edygard', 'edygard17', '32', '$2y$10$7JYa33A233OQVIQSpRTfAOwnrvdtLCpIA27jNnM7Es4Hf0hestIze', 'eduardo.aoliveira15@gmail.com', '2024-05-30 17:00:08', 'default-1719637495.png', '', 'active', 'admin', 'all', 'WtFEdhXwUiknP7bv0z62Tdp9bUXLc8JAU2Fo3tBfkSe8kDro5cos0F11Wetn', 'kZaavD3MlKAsxF7jdCfaddjXALZ2i4ZSGPqjMXx3ji9zLwTqfhWTqWAfT4P1EqWyOz0Ep5Ml6ur', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 98560.36, 'yes', '', '', '', '', '', '', '', '', '', '2024-11-01 23:01:01', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:389:a2a4:56bc:bc02:58bc:e951:bcae', 'on', '', '', 'no', 'port', 'no', 12828.56, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', 'dashboard,general_settings,announcements,email,stories,comments_replies,messages,storage,theme,custom_css_js,posts,subscriptions,transactions,deposits,members,advertising,referrals,categories,reports,withdrawals,verification_requests,pages,blog,profiles_social,social_login', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(18, 'Aurora Castellani', 'aurora18', '32', '$2y$10$s5KfysrRApUejXz9KmNzvu9V7xu.HnXXfXsLM3p0s/sGjJ2j8EP7O', 'castellaniaurora24@gmail.com', '2024-05-30 17:58:30', 'aurora18-181737018873amfweqhpxm.jpeg', 'aurora18-181737018857otwcmqdr1d.jpeg', 'active', 'normal', 'none', 'y2xbK8FDKbgP6LFgsWGBAFqywIAerx69S9G5MuOiJ8P1Fh5zCEVpzkk6lcS8', 'SiMxujlQ8QFrkQ12IaUSECx4OPgRLowAaw5Qz07T8wE4exmZnXzXtphXlwRMkXvFUORt5Yui3se', '', '', '', '', 'yes', '2024-06-26 04:55:42', '', 'Gostosa programa completo 100$', '', '', '', '7,2,4', '', NULL, NULL, NULL, NULL, 0.00, 958.25, 'yes', '', '', '', '', '', '', '', '', '', '2025-09-25 02:34:59', 'no', 'user_18', 'yes', 'yes', 'yes', '', '', '35.198.50.242', 'off', 'female', '11/01/2000', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'no', 0, 'yes', 'yes', 'no', 'no', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'on', 9.00, 1, 'Estou muito feliz que você assinou a minha pagina, pra você o melhor presente...', 1, 0.00, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(19, 'Julia Otani', 'julia19', '32', '$2y$10$1hBSnvszKxHy.r/Pkv/W9eeSerjPcLKGJz5rTM3AMM.FzLMoF1hfG', 'otanijulia24@gmail.com', '2024-05-31 03:22:39', 'julia19-191737019594jreb5emkt6.jpeg', 'julia19-191737019262ewmmsrlapf.jpeg', 'active', 'normal', 'none', '', 'muboxSCzoX0M1aZFd4oDDcCkQDMihNdl38fgwDTcPy9PgKJMJMyguVeQL7oko74tcTaj3UMa7H1', '', '', '', '', 'no', NULL, '', 'oii queridos, sou uma ninfetinha com o poder de alegrar o seu dia, seios naturais e bundinha perfeitinha, estou pronta para realizar todos os seus fetishes e desejos, você não vai se arrepender...', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 7608.95, 'yes', '', '', '', '', '', '', '', '', '', '2025-01-16 06:27:21', 'yes', 'user_19', 'yes', 'yes', 'yes', '', 'yes', '35.198.50.242', 'off', 'female', '10/01/2000', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(20, 'Danilo Santana', 'danilo20', '', '$2y$10$YbFl2vIT372CYY4GnF8Ylergi3.8wySJJYsDZEvaTsCe5cca/x/NS', 'daniloamarallimafjv@gmail.com', '2024-06-05 11:02:48', 'default-1719637495.png', '', 'active', 'normal', 'none', '7HpModgxmrGx7pru5X8zQgOp9l9LH75YMiZJnEM0ZyQnVr8MqnaZ17HbuA6M', 'XdtzrNsMBqPHwrmWQmFWEMn3KUZgpWKCrgcbsAbnqQZJLEAlmsgTxDNCsRoBgH01noPIlAC8gv0', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-06-05 11:12:20', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '191.176.41.130', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(21, 'ROGERIO KOBAYASHI TANAMATIS', 'rogerio21', '32', '$2y$10$BJ2WKc9/MYURFDHeVBuLkeitgtODnRoVA5Ct92WfDPJFkCLusTnwO', 'rogeriokt@gmail.com', '2024-06-06 03:49:44', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'V33hEme7jb0zOMPJZogSN6duqiLkO7PPuflYBLz6krrj4pdoZpNnqmUuQ5TCgrcJWbZb9zJT3I5', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-06-06 03:51:11', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '189.6.81.158', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(22, 'Gabriel', 'gabriel22', '32', '$2y$10$TDFB2X08FsDrsOG21qNgheK8Zv4FVlRWC3S2c2kq7UyfAb/GyxERW', 'biel_2296@hotmail.com', '2024-06-13 10:31:52', 'default-1719637495.png', '', 'active', 'normal', 'none', '', '1lZLfXzYHPSQvvnc8Vk8u2mzhY2PiPBHd4kO4ZnMYCCGNwqWhpZ7W0BVFBVwVK83IoFdJ68dBYN', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-06-13 10:33:24', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:14c:6587:439a:306d:3778:8df8:f35a', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(23, 'Rodrigo Pereira Rezende', 'rodrigo23', '32', '$2y$10$zG0hLdgh4iP5CbhKQqC3tOrDV2yFws5TXGVaZdJNtU.hIJ5FrtOau', 'emersonrezendepqd@gmail.com', '2024-06-14 14:15:47', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'H5gmnyQqVyKNL4ei7rkqdaKNk2bJTqUnmdQGk8p7xerVYWxQPjKAN2b8j4QbHhzaaf13rEVO9St', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-07-08 18:33:27', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:14c:6592:894c:fc6e:713e:9abf:7428', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(25, 'Wesley Pereira Silva', 'wesley25', '32', '$2y$10$QB9zv2SbtvNad6yNfWUht.GxH76wJHGNNXM53vFyP/L2t7MJWR7pq', 'weked17193@dalebig.com', '2024-06-18 16:52:02', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'SZfxZKPMccIZUs7hcE0hkLEQIXqpp1dJ0FyiWlQVHwr08TuU5wWy65R1tTPH3WTk5ghW3nd1snF', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-06-18 17:04:14', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '45.184.70.248', 'off', '', '', 'no', 'port', 'no', 8593.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(26, 'Marcio Maranhão', 'marcio26', '32', '$2y$10$sW7fdbZZB11v1lEK4yqrgeAPe.JgKleDxtpmcJhrltBlZ1Pvl9lqy', 'kakowat349@dovinou.com', '2024-06-18 16:56:42', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'Se1WJTHe8QX2WlTaBaFGZhkcuKY4G7amMRyLWcU15yW12w6Sbuvp2Lmre1z3TjUPRLwE8L50dcY', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-06-18 18:44:15', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '45.184.70.248', 'off', '', '', 'no', 'port', 'no', 9500.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(27, 'Nilton Sampaio Pereira', 'nilton27', '32', '$2y$10$RAQUzEwDiZ6t0JZh4l1aLepHZgKdA3XFMSSLrUA49YRku2VFlg14W', 'dikah65522@dalebig.com', '2024-06-18 17:04:46', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'u2beGHcGoTOM3ARpQEUBVehkcNOIN3yjmkyDtDfXirqSFMnfFnPbgd2i9NJHQFUnT7zQpPd04Lw', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-06-26 05:07:11', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '45.184.70.248', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(28, 'Kaye Matos', 'kaye28', '32', '$2y$10$TBPYIPCmuvAPtc2XLXTf7u6eSlmT/T7WJ6iolOvH4RIGrRzmV7d/i', 'kayefe4072@dalebig.com', '2024-06-18 17:12:34', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'zUj98OdcYBz1mxDQMejjCrgcJrTACHOU2QcoNImJIniTSlwqz8mor8Br1KiDeAOWXLMIsHfM1WN', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-06-18 18:44:15', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '45.184.70.248', 'off', '', '', 'no', 'port', 'no', 449.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(29, 'Ebert', 'ebert29', '32', '$2y$10$AWmNs53Khh0nvLYQYQXVUul/OQtUbxILZYn10OGdltdHLilPTBajm', 'e3888426@gmail.com', '2024-06-24 21:46:03', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'EL1FkDkzdLtrWfezcT3zezbreGhRFnQqGzoj2UHQ6ffUQBwaklF6xH2T3jSiiojnluZJZkhqKtE', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-06-26 02:53:55', 'yes', 'user_29', 'yes', 'yes', 'yes', '', 'yes', '2804:389:a1ae:48d6:f87e:f88a:b38e:59e6', 'off', 'metrosexual', '01/01/1985', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(30, 'Rafael Arlink', 'rafael30', '32', '$2y$10$aE09hSnhmfgB6LdRo6rNcOSgO06Q30qvWbKvqTlrS5V19YryZY2fK', 'rafaelcorretor18@hotmail.com', '2024-06-25 15:12:40', 'rafael30-301719339693evz5hkkedn.jpeg', 'rafael30-301719339780gun2s9hmvc.jpeg', 'active', 'normal', 'none', '3fo327ntEemSamDcxioYi6Oud14pqHM0QJm5G5BKT3fxnPJq1SJjFT3nO92l', 'wHehVXMZiuhEuu2JTUmdUQRvEsdtTLgujDdtjIS2J8aowgSk19M2WbeE37u8j9h82qoiXVtHuyz', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', 'Corretor Imobiliário', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', '', '', '', '', '', '', '', '', '', '2024-06-26 21:54:36', 'yes', 'user_30', 'yes', 'yes', 'yes', '', 'yes', '2804:389:a0c1:9121:4b8:1e4c:a80c:b43e', 'off', 'male', '06/04/1999', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(31, 'Andréia Bruna', 'Bruna', '32', '$2y$10$YGmSZyng8JFilJONy7eRFO93A.drsx7HPzhFrZKh0jdDGJwezAlsO', 'andreiabruna@suggarcont.site', '2024-06-25 18:00:17', 'bruna-311719606693efhs3re0fw.jpeg', 'bruna-311719606550f4l8p8fdyk.jpeg', 'active', 'normal', 'none', 'D1CEvJX26yi5e7WaWl228DJdV2VziLO6irypSb3RwCNrDZUtMWJjOdhz8Qat', 'BVmDi6FlAD9JLVu2yKUYq8EcnkIZdSYwYe3DnzjWprWQF7WX2NBgILu5aHjKlpN8VCUXfseKqru', 'F4wj62St20YmFMeKp59U8UNtJTgt3l1OT79rsI2S0CySUW4nRg9R7QVEcFOQuTcSCaLxbxKjmpsbHCZiEoNlbMURYi9KolbOhVnw', '', 'Bank', 'Agência 2269\r\nConta corrente 010 389 76-9\r\nCPF 009 461 971-99\r\nSantander', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, não hesite em me procurar e vamos viver momentos inesquecíveis 🔥🍑🍒', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', '', '', '', '', '', '', '', '', '', '2024-06-28 20:37:43', 'yes', 'user_31', 'yes', 'yes', 'yes', '', 'yes', '45.184.68.231', 'on', '', '06/14/2001', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', 'BR', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 0, '', '', '', 'on', 20.00, 1, 'Amorzinho, vamos deixar nossos sentidos nos guiar e ver onde isso nos leva? Vamos? 🔥🍑', 1, 25.00, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(33, 'Menininha', 'Menininha20', '32', '$2y$10$.LxZtiDmE3JZxjDDZ54kDOJHkDJgc5mkHvLtm.34WF/e7fcVrvPqS', 'eurutinha2000@gmail.com', '2024-06-25 23:36:25', 'menininha20-331719369659txzbccmero.jpeg', 'menininha20-331719370140yz782xl8g8.jpg', 'active', 'normal', 'none', 'drkFPDZeiGH4pEzBMHgOMXSOtsUl9b3nbBrHUVO3nbMxum5qOE6f5YgB0AYY', 'o38gFo0G2xmEltyvCFAWdd5AchqScRa0zHOYkAyFVnda6ALCc9ktVTnS4prYcR9Yb7BnoFayae1', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', 'Sp 147,1', 'São Paulo', '', '', '', '', '', '', '', '2024-06-26 15:07:50', 'yes', 'user_33', 'yes', 'yes', 'yes', '', 'yes', '45.235.192.3', 'on', 'female', '08/11/2000', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(34, 'Manu Bumbum Gigante', 'Manu34', '32', '$2y$10$vEljWdyw6FrHqBHc.f6I2.fdqYQpEufPXvlyFXmNoql8hnvJyfhdi', 'manuvelaske@gmail.com', '2024-06-25 23:37:38', 'manu34-341719370108fptp6xoddu.png', 'manu34-341719370377gq3ga3wexg.jpg', 'active', 'normal', 'none', '9IpL8OYoax0Df0522DvO8ISKjEdBRiIMoElmV6tp9OnFfMR110YDjxdLAnJO', '1fGVHUWnlv7UVysQMOWvJ0OUQL0e1oRuSNdKrFVy8ASP0dHdgF3Dcq62WgbrzE24TJO5nvvZ7dI', '', '', 'Bank', 'Agência 0001 - Conta corrente 26353708-3\r\nBanco 0260 Nu Pagamentos S.A \r\nCPF: 05660089127', 'yes', '2024-06-29 00:32:52', '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', 'Esteticista', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 76865.50, 'yes', 'Quadra QMSW 4 Lote 06 Apto 22', 'Sudoeste', '', '', '', '', '', '', '', '2025-09-25 02:32:25', 'yes', 'user_34', 'yes', 'yes', 'yes', '', 'yes', '2804:14c:6580:41c6:acf4:18f2:985a:59c', 'off', 'female', '01/24/2005', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(37, 'angelica Yasmine Juriti Inácio', 'Janaynna', '32', '', 'angelicayasmin6@gmail.com', '2024-06-26 13:20:50', 'janaynna-371719597190ex4tmyniuz.jpeg', 'janaynna-371719596944g6lnxikxkn.jpeg', 'active', 'normal', 'none', '', 'gaAYVfHB8HVVa28H4zLUYXXo8plSFAKb3Zqt5uDFVaQ0IPjQtfEnDdB2y9EjhmdDOCXqbqf7D1O', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', 'Acompanhante', '111581745657013954993', 'google', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'reject', 'Brasilia', 'Sambaia', '', '', '', '', '', '', '', '2024-06-28 22:11:06', 'yes', 'user_37', 'yes', 'yes', 'yes', '', 'yes', '2804:18:1108:b461:6117:7d14:8a39:fa46', 'on', 'bisexual', '10/31/2005', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(38, 'Jonh K Oliveira Souza', 'jonh38', '32', '', 'johnkellyrock@gmail.com', '2024-06-26 14:37:25', '1719423444116298809288822641241.jpg', '', 'active', 'normal', 'none', '', 'HYHrczTrrgVsW1YCMXTspKresI5oxvgRLB9mZsMCP2wa6CIz7pOhgWsPnrT0hKFl7tWHUgOibSH', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '116298809288822641241', 'google', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-06-26 14:39:03', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:1b2:181:2ee:719d:b5d6:8305:348f', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(39, 'Valéria Estefani Melo da Silva', 'valeria39', '32', '$2y$10$.zZeCjHmR0jyuej.FFuA4emiOqAXJy0VC4nah.ipT6VS7IuqFeeLe', 'valeriastefany99@gmail.com', '2024-06-26 16:26:24', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'hq3EaJv1sdhRweFmi2Q3pGmLbxtfa3lSoPQhRAhbLv35H53iqwubU50b7BCqZbuSFWNINzEkuZy', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-06-26 17:43:14', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:14c:6583:62cf:4523:de94:d802:31bc', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(40, 'Camila Amaral', 'camila40', '32', '', 'camilamaralcbn@gmail.com', '2024-06-26 20:22:02', '1719444122116720212350966197838.jpg', '', 'active', 'normal', 'none', '', 'V1CP7NcX3B4bg3NwOt5HdY6arZWBhTVwP22yc08n0iKrUF7YxubLc3ldaWMteiyEcfu0R160tub', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '116720212350966197838', 'google', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-06-26 20:46:10', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '170.84.27.35', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(41, 'Sabrina Farias', 'sabrinafarias41', '32', '', 'sabrinasz332@gmail.com', '2024-06-26 20:48:46', 'sabrina41-4117194458652hbu1snsuc.jpeg', 'sabrina41-4117194459718u7rwqpwss.png', 'active', 'normal', 'none', '', 'uAw3y1G5xfp06eZEZT4yTyCNwNcrBzZTfzDrYDdycQjgtIHuxlkYEmHx3GplCTHkI2OX1lwFM8q', '', '', '', '', 'yes', '2024-06-29 00:33:19', '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', 'Secretária executiva', '116795617508688556951', 'google', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', 'Rua Marajó Condomínio Belle Nature', 'Valparaíso de Goiás', '', '', '', '', '', '', '', '2024-06-28 16:14:20', 'yes', 'user_41', 'yes', 'yes', 'yes', '', 'yes', '187.84.180.57', 'on', 'female', '12/06/2000', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(42, 'Keith Sthefany', 'keith42', '32', '$2y$10$iDxHUpBEh0OUlP1w73JkPOqHhsoCt.yS7vsBsv13LcOj5H8lgmGWm', 'keithsthefany367@gmail.com', '2024-06-26 23:12:27', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'OFSPDQqyEPTmj3PDus3nCvMfI5O1kUdEw96m1hpoOICxvDvpghwGb2k1dNeT8V9YUPHitV0I0n8', 'lbtMoatUwm8cHr9AxrFUCcIg93FNAL7sz8wmTI93aFhXrQZvwoFc6i2huqwrfGtgoY8aMJbK46xgRibjNyrGrvoHtstKvfwTFbv7', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:a:400f:b055:2831:8100:69eb:8eb4', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(43, 'Mel Lopes', 'Mel2024', '32', '', 'camargosevellyn@gmail.com', '2024-06-27 05:32:47', 'mel2024-431719477426zkb2ctwhtk.png', 'mel2024-431719477354dja1qkxftr.jpeg', 'active', 'normal', 'none', '', 'mgmyIzcgR1pNEEdMzLTDzLxbP7YZdoIOcdMD0O7tBCcIVwrxzlVynsV4Ve4k9WLMlB5wFgj4Uaz', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '110270445890523722425', 'google', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-07-13 00:40:04', 'yes', 'user_43', 'yes', 'yes', 'yes', '', 'yes', '2804:d59:9e02:9d00:9c9a:289d:94d2:abac', 'off', 'female', '03/27/1999', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(44, 'Roberto', 'roberto44', '32', '$2y$10$pc71bZQAPNbh/sJ/.fVFne4UxW1l8q1IFTFeMVR2MxOHFqTUqASj.', 'acdxavier@hotmail.com', '2024-06-27 07:22:02', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'dSFuoOSMngOGTsOAwImRis85AkRIjCTPleaAZT0kzDekPXE1ohil2Zxdo5CdsewszXNb45ncYeB', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-09-09 14:59:22', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2a09:bac3:e61:878::d8:1ad', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(45, 'Yêva Cristine', 'Yeva', '32', '', 'isa.vibe2014@gmail.com', '2024-06-27 09:50:31', 'yeva-451719492932lr4pygg1bp.jpeg', 'yeva-451719492910xvoe7smkjm.jpeg', 'active', 'normal', 'none', '', 'ty8CeuolH3KVhwUPG7w9c3SowgmrJgu4FPCeUfvKdjyR8YI3QBYrORcua1uo4VWmpBs5QkRkPtT', '', '', '', '', 'yes', '2024-06-29 00:32:17', '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', 'Cantora e atriz', '101185173109629494161', 'google', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', 'Rua 22 Condominio Belle stanza', 'Valparaiso de Goiás', '', '', '', '', '', '', '', '2024-06-27 09:58:33', 'yes', 'user_45', 'yes', 'yes', 'yes', '', 'yes', '189.6.8.58', 'off', 'bisexual', '04/24/1998', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(46, 'Aline karen de oliveira andrade', 'aline46', '', '$2y$10$wDA101IHHSzGundm.JoMn.xfebu/pXrdMnjJs1h.xZqmzuulK40bC', 'alnolvr04@icloud.com', '2024-06-27 19:09:22', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', '3AeNnMhIo7UijOR56R95bv7cauYtpyGvK24ZiOKR1gwCdcQWjpwjJMXcCPGD0PcAJYpvub8lzie', '908MjB9U8iLPQKAFURB7X8VS11DNMBRrpIzAjycNLImk2tF083vgqWdgjBPFOTLQThCjzBezT3urtV9irIYHZGitcLMRzMClVtmE', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:56c:21da:6b00:9982:5ca1:f3e2:91e6', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(47, 'Pamela Angel', 'pamelaangelmy', '32', '$2y$10$l45sdWynIvmKFLWz8T.uNOZ4Fjv6N.dteHr03tj8wIzQaTzomzoWS', 'angelmyy69@gmail.com', '2024-06-28 13:05:10', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'j0iU1TcLmd1wMSz4oUESUcltyRp1GkFzkqsMEnuUSnnNMzU6mKyKZCcL4eHqRtMgSRFVau8EKPt', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-06-28 13:07:49', 'yes', 'user_47', 'yes', 'yes', 'yes', '', 'yes', '189.126.212.17', 'off', '', '07/12/2002', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(48, 'Kleydson Araujo', 'kleydson48', '32', '$2y$10$N9BlqRqqAken6D3F3BxMHuiFrkj3z5la6OzMola/mm.WmOEs2ZbNe', 'kleydsonaraauro@gmail.com', '2024-07-02 19:41:29', 'default-1719637495.png', '', 'pending', 'normal', 'none', 'JEHWAfCXzt5GSkMkdVhpxlUewNtkLOIpIlaRRCkAOAjSMJNb6Gw5v0YGdBdR', 'HFTvmSeWxn6iBjqV2nuoxbRVGBtAK23VjncgsoRe0ySJTDgiRvvsYKUZWtY6IByXWKWYD0pMu5f', 'cHDPlXwm3GqwJHAiP63tK7c5FjxBD8Ml8hlqeeTmMnIpbD3oEXgxvRSgppZhQee1yOPQzs1KlCeQLCyIv55YejoihVGkg4LCkqEf', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:214:8150:589a:dd93:7899:5c0c:1c0c', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(49, 'Gabriela Pereira alves', 'Bibi32', '32', '$2y$10$khzSc3z38vRW1ZcTxl8LY.8utN3xl7rHTB6oZldMuM7P0N7g8oHja', 'gabrielaalves1229@gmail.com', '2024-07-12 19:47:12', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'Vptt7AbTyn1kiOFXj30gIZZPiSDiCxv1ihhWDsHEuMgxtiz8U6iBXKxeQX0DPmqolLwrvqxif4A', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', 'Vendedora', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-07-12 19:50:49', 'yes', 'user_49', 'yes', 'yes', 'yes', '', 'yes', '2804:18:105:9ed3:1d5a:9b6b:3bb7:2ecf', 'off', 'bisexual', '12/29/1991', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(50, 'Letícia', 'leticia50', '32', '$2y$10$3xJvpct0p1Tt9H24eH1aLOi201YojgVuIB7M0KGG2Yez.X4te3J1a', 'fernandesfrancineide225@gmail.com', '2024-07-12 23:17:24', 'default-1719637495.png', '', 'active', 'normal', 'none', '', '6mUQmPvYw9Uo9EhaU6S2hNIaeRNaIrrde84yoKs1zZtKv6WCCmYhsvAmAwf9FNLy5FzVeQEJ2mk', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-07-17 21:37:47', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:18:1108:589b:2923:c58e:b1f4:af8c', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(51, 'Athos', 'athos51', '32', '$2y$10$BZN8ec0ej5FMkguiO2w1oOcxdYoyo5FYQGYpk7FKU1PGUQXOELI9O', 'athosric2004@gmail.com', '2024-08-04 17:17:01', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'LdGxz1KAwQxmKp18sorZjLKemF4laZXNzHtnUgy7uFyhLsxae81l0Mo3dsw3HNPZhpEtq25Ovbf', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-08-04 17:18:00', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '131.161.229.143', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(52, 'João Emanuel da Costa Santos', 'joao52', '32', '$2y$10$/UvkAnIXyxz/9g.NZCUdveOGyA70SYjAkqAU0gUHmTVxFNCyT.ZIq', 'luapinxi@gmail.com', '2024-09-03 19:37:26', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'inn9fqmvozRHe6Ytd31gU0XdhiPcCJjQHurZNiQUnxt8HIv3zkVo2rijlkEISTQOEiaE7ac1Z5H', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-09-03 19:43:22', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '201.77.106.4', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(53, 'João Emanuel da Costa Santos', 'joao53', '32', '$2y$10$PZSjwTWj9m6oFnwcOoK05uAAvd8U.VLVZepu/BcFTD/jPVyeoLEs2', 'joaoemanueldacostasantos8@gmail.com', '2024-09-12 19:24:12', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'NuiP958lR8nG8sRu4QO1VSKjXUu2K3cpQKit5yJlIvdd1v2UsVJ4J0e4uLOJzrDeLYcDt1VN22Q', 'yjxIEnXXFfH5MJKhwEsniw04N7d8Y5eVxSSMT5VvJiLNrMcyN86JcHLgkPRUZOvukA7QA3VimRAn9rBhCzyotgT9X7bxbYPTgL32', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '177.223.92.35', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(54, 'Rafael Oliveira Silva', 'rafael54', '32', '$2y$10$fN.2KvLch4ReYcJSYEPWjuF4jPg8pmaSJZb/krcgSti44HBSRlWiG', 'ro2808191@gmail.com', '2024-09-23 04:41:30', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'leDIcNpG5p60v5G9dCjSQUuH67h04GbeaXBVeERFkIcmcRQptlhkqzMCQeDV7xoqu7uSs6dLLdU', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-09-23 04:46:11', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:1e68:c401:2584:8c86:ff0c:c23a:7b8b', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL);
INSERT INTO `users` (`id`, `name`, `username`, `countries_id`, `password`, `email`, `date`, `avatar`, `cover`, `status`, `role`, `permission`, `remember_token`, `token`, `confirmation_code`, `paypal_account`, `payment_gateway`, `bank`, `featured`, `featured_date`, `about`, `story`, `profession`, `oauth_uid`, `oauth_provider`, `categories_id`, `website`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`, `price`, `balance`, `verified_id`, `address`, `city`, `zip`, `facebook`, `twitter`, `instagram`, `youtube`, `pinterest`, `github`, `last_seen`, `email_new_subscriber`, `plan`, `notify_new_subscriber`, `notify_liked_post`, `notify_commented_post`, `company`, `post_locked`, `ip`, `dark_mode`, `gender`, `birthdate`, `allow_download_files`, `language`, `free_subscription`, `wallet`, `tiktok`, `snapchat`, `paystack_plan`, `paystack_authorization_code`, `paystack_last4`, `paystack_exp`, `paystack_card_brand`, `notify_new_tip`, `hide_profile`, `hide_last_seen`, `last_login`, `hide_count_subscribers`, `hide_my_country`, `show_my_birthdate`, `notify_new_post`, `notify_email_new_post`, `custom_fee`, `hide_name`, `birthdate_changed`, `email_new_tip`, `email_new_ppv`, `notify_new_ppv`, `active_status_online`, `payoneer_account`, `zelle_account`, `notify_liked_comment`, `permissions`, `blocked_countries`, `two_factor_auth`, `notify_live_streaming`, `notify_mentions`, `stripe_connect_id`, `completed_stripe_onboarding`, `device_token`, `telegram`, `vk`, `twitch`, `discord`, `reddit`, `spotify`, `posts_privacy`, `document_id`, `crypto_wallet`, `threads`, `allow_live_streaming_private`, `price_live_streaming_private`, `allow_dm`, `welcome_message_new_subs`, `send_welcome_message`, `price_welcome_message`, `alias_mp`, `cvu`, `kick`, `email_new_message`, `allow_comments`, `custom_profit_referral`, `price_video_call`, `video_call_duration`, `notify_commented_reel`, `notify_liked_reel`, `price_audio_call`, `audio_call_duration`) VALUES
(55, 'Heleonora nascimento', 'heleonora55', '32', '$2y$10$HXIbCX8ZVuSeu7kqtvgxb.u.7dmOkyG4iA2f3vpCApQHSo1lBot7C', 'heleonora123@hotmail.com.br', '2024-12-26 23:25:30', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', '5kmpHpQcDxOV1ZQBvKUfAesAxPsP81wKkXKD1RypYlYsEELk9hc4itGr7czY1yKNmlIvMOXBkqB', 'd3up8cDfGGAWjRhcrJvYn62CyoynYjg0QxEUBkD63q5nvohcb22oNUQjiJKVws8ygUoUfZp8BkAUe4YTAlfsdKpE3iQZS1MKP6qg', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:7f0:9300:24c1:4f61:78df:e32c:7dbd', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(56, 'Heleonora nascimento', 'heleonora56', '32', '$2y$10$OPnxxcYac2XCmezniROfc./pu/BszYWy2c/pO..J6RE1ZEofz1ATa', 'heleonorasilva6@gmail.com', '2024-12-26 23:28:03', 'heleonora56-561735270835z13fzxxha7.jpg', '', 'active', 'normal', 'none', 'bH5taTe2s2b96HQ9nlCQEjMLNg9IHWvhfzy16jOWpPgR9w39bLw5ufaakE85', '37Pil7cHHSQ1cUe8mHiKFckYn4ZlzuoVuRAG1LNshvOFoX8zVcoAZdLCXYg28WkvYs6tCkSoKid', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', 'Adoro sexo', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', 'Rua Gerônimo Antônio da Conceição', 'Mauá', '09320-765', '', '', '', '', '', '', '2025-01-02 20:35:36', 'yes', 'user_56', 'yes', 'yes', 'yes', 'Beleza', 'yes', '2804:7f0:9300:24c1:4f61:78df:e32c:7dbd', 'off', 'male', '05/22/1975', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(57, 'Barbie', 'barbie57', '32', '$2y$10$Ha3/kj1gpPLx7ObGBhYDKuAcsSYjIn729JpLwbtPrbqXyv.xNmLje', 'darkbuscasnet@gmail.com', '2024-12-30 23:55:26', 'barbie57-571735614029lpi81hydkk.png', '', 'active', 'normal', 'none', '', 'OXKIUOcIVcPnyyHMfEMRNDckrLIUL7ICM7z8BOpG2yllIzrzY7GbEdPL1tD5dCiFiuWPxiSvIqd', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-12-31 00:02:59', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:8324:11:1800:203a:d9e9:f00e:6152', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(58, 'Renato ítalo', 'renato58', '32', '$2y$10$tLlW/PWyCHgLmjDv6Zs3iumVqelUp8tDnoI/HvO1jAFjs43S.xuLK', 'renatofrancese9@gmail.com', '2025-01-06 02:44:35', 'renato58-5817361428028l9bajwrju.jpg', '', 'active', 'normal', 'none', '', 'MdZNTLNylE3Zia2FvMBJh5ub62ve0DvyXIhVoEXQEuQm4ISMShrpDKBOOqX0kEnp7H6Fo6hT31v', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', 'Motoboy', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', 'Salgueiro 223', 'Ilha Solteira', '15305000', '', '', '', '', '', '', '2025-01-06 02:53:35', 'yes', 'user_58', 'yes', 'yes', 'yes', '', 'yes', '45.231.203.247', 'off', 'male', '10/01/1987', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(59, 'Leonardo Silva Gonçalves', 'Novinho25cm', '32', '$2y$10$FAU8tB/FI2C0S7KilgXk6uAY5b8g2UDCOrcFaK9PV.cOkrCqL0DrK', 'leonardoiago9999@gmail.com', '2025-01-15 15:33:54', 'iago59-591742944795cdtstmaoxw.jpg', 'iago25cm-5917429451330g9o2qmzkv.jpg', 'active', 'normal', 'none', 'RYMOfcK5quqQdRkQRgAXMdNkGXaAYgPHdVQ3MIyw7QAcogWx4OsM5AoCPrjc', 'VAQfjswUrRyi02C9hOrcemnkxUeJV6ZTGkNWmtBVYLWi8Ph8gZ2Q98aeFyTypNjG1GmNkyzLffx', '', '', '', '', 'no', NULL, '', 'Se você gostar de um ver conteúdos de um novinho de 25cm seja bem-vindo à minha página.', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', 'Casa 12 RODOVIA DF 150 KM nas', 'BRASILIA', '73105903', '', '', '', '', '', '', '2025-09-01 13:05:47', 'yes', 'user_59', 'yes', 'yes', 'yes', 'Módulo G casa 5', 'yes', '2804:214:8152:4782:61f8:aca:c693:4f9e', 'off', 'male', '11/20/2006', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'yes', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(62, 'valeria sousa varallo', 'Bbzinha3005', '32', '$2y$10$betno3N/SgwVF6MWWXbWHOOo89ngmopBGi8lrk/nB/IPKwEJmqHBG', 'valeriavarallo22@gmail.com', '2025-01-30 19:54:48', 'bbzinha3005-621738278255hsltwzco2f.jpg', 'bbzinha3005-621738278489iciooa1thx.jpg', 'active', 'normal', 'none', 'HB9dqjCnOGpcFP2KnPpEPRUDpbx8H3mPEjOdTDDCDvdKjLXeY02b2S0HckvP', 'JPtCRjrLPgtaTEtO4qZc3ytMNgSipySObDDboEIER3yP9BnkzKdBpwXfndzbkq73BRk5Xy6OLdo', '', '', 'Bank', '00000', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', 'Ar 12 conjunto 17 casa 1', 'Sobradinho', '', '', '', '', '', '', '', '2025-03-01 13:36:40', 'yes', 'user_62', 'yes', 'yes', 'yes', '', 'yes', '2804:d59:8707:6300:2d78:ae08:91e6:553d', 'off', 'female', '05/31/2004', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(63, 'Thiago Costa Viana Paes Landim', 'thiago63', '32', '$2y$10$iPgeIs9fTlrR8jM9PPG4o.bYuBJv.PJ5KJ0WRd9mc/KJzfSeTLrXq', 'gaarac86@gmail.com', '2025-01-31 12:50:50', 'thiago63-631738445316pfbtgwen6d.jpg', '', 'active', 'normal', 'none', 'BtrrjeWny9wBWNGalg5zVhRHjkrhJuNu3V5GxngFCoteSzzznLKt98WbXiYP', 'wJLBqEFx2iiVba0EYuTS9p5a30A7zHTtM3hjvqVecaMp9nudVlHdEhENqv5M6KhHZuOxbZ4KlqN', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', 'Condomínio Versales Conjunto B', 'Brasília df', '73090125', '', '', '', '', '', '', '2025-02-06 16:28:59', 'yes', 'user_63', 'yes', 'yes', 'yes', 'Dojob', 'yes', '2804:214:86bb:6a4d:1114:41a8:a65d:3aa2', 'off', 'male', '03/26/1996', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(64, 'Antônio Lucas', 'antonio64', '32', '$2y$10$UzzxRsYtJvwGIOoEQ2Q0MuwM1vEj5VOdgRrR0mCNVEErX/erJAmnG', 'lucasbktrer@gmail.com', '2025-02-02 03:47:57', 'default-1719637495.png', '', 'pending', 'normal', 'none', 'cGN3zctB2EB6hAd0vE6r2BD0suq0BwnlOky6lwlEbnumSZp1GcwBgsvl53NK', 'xwW6VyHlu0Vr0xXidxeZrzBPCzX3LPkSfAKvOETcGcc7NvBZjQ78J682et7aF2e0AFQgQSzMGhj', 'fdAX0B2cnpCGVpxoDY7aWBaUfvGUKSh9pvuQrHglLHNfanPeYwIVlHeKUmi1R8YgV0HpNTozfJnCnGokBj7EGTUTQkD4ZCJ1TbI8', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:214:86b0:8ddb:210b:ea12:7064:4343', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(65, 'Antônio Lucas', 'antonio65', '32', '$2y$10$sgdoDcIHFAeugq2CVxkHT.STEHfpBBzMuzYHXERbOiys7vsz/gdp6', 'lucasdtr22@gmail.com', '2025-02-02 03:48:13', 'antonio65-65173847958719rikp0mib.png', 'antonio65-651739350775tavcrabueq.jpg', 'active', 'normal', 'none', '', 'EK0UOvSsBZtPLnzQ62ToJrKOtCpJHUFApOmOfiFJRQIfbzpAWpNRLu8LrWXQuk4I8xJfnnDxvoq', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', 'Trabalhado', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', 'QR 313 conjunto G', 'Santa Maria df', '95720-000', '', '', '', '', '', '', '2025-02-12 06:10:48', 'yes', 'user_65', 'yes', 'yes', 'yes', 'Casa', 'yes', '191.25.195.137', 'off', 'male', '07/10/2005', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(66, 'Danilo Fernandes Soares', 'Dot18cm', '32', '$2y$10$QmsZEFdnhYzM2O3bNX.bAu6.IpWJ6mx5RKHN1yWBonjqlftQ/tFCq', 'danilooff412@gmail.com', '2025-02-02 23:59:46', 'dotsigiloso-661738552010dzvfb9w7lf.jpeg', 'dotsigiloso-661738552082bpxggrhyo6.jpeg', 'active', 'normal', 'none', '', 'ItB0wWkb6L4BOMhzGqqyt4lU6xrLVlMDzLPrRNXuDQezxMpLZYATibDAjnPs7DArnqiPje0fADw', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', 'Enfermeiro', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-02-03 00:28:52', 'yes', 'user_66', 'yes', 'yes', 'yes', '', 'yes', '2a02:26f7:e52c:5802:0:a000:0:9', 'off', 'bisexual', '04/05/2006', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(67, 'João Alves Quaresma', 'joao67', '', '$2y$10$zzy8SE9LVJpqq6O9K1EbtO7KA.rxHI2GVjUm/GtT80OcjVEccGi7m', 'kdhdhd902@gmail.con', '2025-02-04 00:47:50', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'pBHYPJjEIPO20ewrYwyEfgVeHK93yLy10gtNDFcfHY8pF9qUCG1qcdDz7TVX6FNDmwQo7LUcQVj', 'gW7OJMzOserFS8hf0cy0RzQFR4LyjraHcXBlssXj4QneDjxtcn9GCoCXEBpeREwCxmcuAoKMkOPzd82sAVctX3GNjxvOhhYyhgvy', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:d59:a117:8f00:6d84:a9c4:e2fd:e982', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(68, 'João Batista', 'joao68', '', '$2y$10$.eitu/5dhyoCD.OIEQjH2ebT0izhHp3SYaanqTgrsI0OIav5SaMJm', 'kdhdhd902@gmail.com', '2025-02-04 00:48:50', 'default-1719637495.png', '', 'active', 'normal', 'none', 'ei7rAEBxcbaPW2SQzafBDiHujtoZkZbcajAv4f5bSRxhdHqkWEgFPWfmpfVO', '2LrLl7rXcJJS458qb5KqBvBkM72ckeB4FQNp9EO8cY1jJraoD1qOOuS3mv1lnSpLqK56xJpmfyz', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', 'cus_Ri3GwH9su7Br1z', 'mastercard', '6149', NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-02-04 02:32:59', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:d59:a117:8f00:6d84:a9c4:e2fd:e982', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(69, 'Jsjsjsjsjs', 'jsjsjsjsjs69', '32', '$2y$10$T2Lyo1Mp8KE/sfQ5UZhTYeL0B44k47dW/NJwlklaMie8srhztTIaa', 'kauanpaschoal2017@gmail.com', '2025-02-04 01:50:49', 'default-1719637495.png', '', 'active', 'normal', 'none', '', '2fqeBr2g9LBbQCidXxpBiatHpE8mqai75ozSJhGelXmMnP2dCBd3Uk0RX2ynAyZFUY5iv7mHjpf', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-02-04 01:52:16', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:214:8825:6094:d169:ed1a:97c5:55cf', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(70, 'Gabriel sousa', 'gabriel70', '32', '$2y$10$EWane.FCjKu3zCKs8zJwnu9YNJU2tzMXh0vt/TuHvhOaq1ivpw9.6', 'bielsousa140@gmail.com', '2025-02-04 06:59:10', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'OLvpkIQCHek5328jrXWDoHedPaS80bIGxMiBlfOD67FLngQYY25IiuaUdp3XDkyZ9XiccQbKj80', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-02-04 07:00:08', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '189.6.6.17', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(71, 'Vitor Hugo', 'vitor71', '32', '$2y$10$cWZ0Vccr1YZf5xqZcr4w1.TSH4LqshO2694NLw9MkyJH2H5t00Lmu', 'vitorhugo39070@gmail.com', '2025-02-04 13:12:04', 'vitor71-7117399311921veyffgsp6.jpg', '', 'active', 'normal', 'none', 'j4PP5mimTb4ZYvByLidgegqkoe7jW9M8U3SypOZksI5GvpSICRJPrUZk4JtH', 'aDyiY4AojFpBlyXq5xo6ymkT6AFg8bPaoUQVNk3EqP1wys7c1ATrHFRNgkcf6yAv2slr2zxg2EN', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', 'cus_RiITyGy60wz3Hc', 'mastercard', '5543', NULL, 0.00, 0.00, 'no', 'Qr 116 conjunto 05 casa 05', 'Samambaia Sul', '', '', '', '', '', '', '', '2025-02-18 23:13:26', 'yes', 'user_71', 'yes', 'yes', 'yes', 'Soudojobe', 'yes', '2804:1b2:1081:3016:709d:bed1:e38:57c3', 'off', 'bisexual', '11/29/2004', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(72, 'Patrick Rafael', 'patrick72', '32', '$2y$10$52KRyIIzoUPG/ZRLl0b8h.GJTVfQ8EXGgwW10jLY7D0FfDP.HVlpG', 'patriickrafaelrios@gmail.com', '2025-02-04 19:13:09', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'AKSCiLuUxTizQSjjP69pIhQOhMe4pqN1bSEeSAQUY6wFReFEpC2nvxj4lrCV5pCDtdUQ3hNhW0p', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-02-04 19:18:14', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:389:a3f2:140b:264:e6b1:8e08:d2de', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(73, 'Cavalyer', 'pretinho_bsb', '32', '$2y$10$WfgXqaK7FnANrrxbPJVQl.nJd6SqK5haNaBJOar0mfp1EZRm6g0/C', 'jamesoncavalcante020@gmail.com', '2025-02-05 14:42:23', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'YSnNF3DCemHBDDVqArCDRqU4NDAMpI6wKes0EOt7qaap9HX60jPEcmsVti33Z3Wtonhv3as0LGX', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-02-05 15:15:15', 'yes', 'user_73', 'yes', 'yes', 'yes', '', 'yes', '2804:214:8190:d5bf:1:2:1fc8:61ff', 'off', '', '08/26/1994', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(74, 'Gringo', 'gringo74', '32', '$2y$10$ETgyf1gLYV3DZ/NJyXvJS.UtLeU1BxZYjNFjBUOdvfeNfHxoEa0YS', 'davidferbraga@hotmail.com', '2025-02-05 14:45:09', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'SwRbVQTKCangctAQr1q2T9s81vHer9m1rgB5cVFd8SVOgnGoCWNUL1MIBxqGCvqOkJeoAuTJHyo', 'a1SphhF3WLPWYvRUD3kCuxNTW7UBS3jHbx0fJ3wkHKwNJ8quoJfzmanItEU07HxYSk01LMWi92XavhQJwLZtAk20sEzRqIQsnogv', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:14c:6591:8c25:32:f778:490c:911b', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(75, 'Gringo', 'gringo75', '32', '$2y$10$.LC52XdGCAXJk7wd329lje9Z.tOjLAUS/JZhYnTdFYYH7PCQHlXCe', 'davidferrbraga@gmail.com', '2025-02-05 14:50:55', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'TvjSsIFBhH8ArQBJZTJTajoe0ONtXGOVQrSYInoRbPcumVGOCcPigxH2hEs02ep3nrRpkB0CuXd', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-02-05 14:57:55', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:14c:6591:8c25:32:f778:490c:911b', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(76, 'Diego Queiroz Cardoso', 'diego76', '32', '$2y$10$H0UcI016JJPy694.fmy2V.f0DJgBqsdnfRpn9hVHhhrQG6qaatPwW', 'dequeirozcardosodiego@gmail.com', '2025-02-06 00:57:07', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'ac9YfgnlKJME36f0t4z17eMgBpsp48akaxWsIf95oV2qBo24qgx90iiGNfDiSeuMQzwr5B34y74', 'm9cEcWeCHhFKTkOrNOlXf0BZ9lxr4fOoClATLprb6WnoXWWoE00aVoTwL8m0Eb29QryDKiPcLZ9hV1ku2XOPfFMfmkZe0W40FRMO', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '177.51.62.125', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(77, 'Diego de Queiroz Cardoso', 'diego77', '32', '$2y$10$aBMkKneYStJ71X6ZE0papezLcSXS13S769SaH2iZ7wY0zN1jmrVJi', 'diego.queiroz.dq95@gmail.com', '2025-02-06 01:10:53', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'LKPnaIpkVgA9n1a4EDnplxKEMVYj68lOQSGtL8g8Ya6ALL1eV1dV5514zClAl134K0FwZYoPyAt', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-02-06 01:12:14', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '177.51.62.125', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(78, 'Rafael Mendes Guimarães da fonseca fonseca', 'rafael78', '32', '$2y$10$NOBmk544w1szNl7f/L7Zc.gFOm5UuEtydemVnELnLZLWUPMe.NilO', 'rafaelsunk@gmail.com', '2025-02-06 14:51:52', 'default-1719637495.png', '', 'active', 'normal', 'none', '6qNBgI03TcrMwG84jF6ijMrez9IrfMBOYQ1XF1RELiYNerYe4KvGx3iiq7ya', 'GypcMCqPNxIQ022hvu4nO47rTFyrWzzXVbpv6VQ1MphfyqejFzhgeh3wkUphPqUAkVHe5IQX4Ku', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-02-06 14:54:09', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '189.115.244.106', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(79, 'Wennessom Soares da silva', 'wennessom79', '32', '$2y$10$7P/29EMqHpZq14R66srVo.gcLyNmWWRocoh88yJ5fAnKaSyy43QCa', 'wennesson.soares2014@gmail.com', '2025-02-07 03:19:28', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'A1KyXcwGS96B6xWL31cnMsglYBOdtFXwTvg3mBehNRhpMwPRdyd2WV9RZA3SZMaRoM0tYil4Te0', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-02-07 03:23:16', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '186.209.191.154', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(80, 'Pimentinha', 'pimentinha29', '32', '$2y$10$5cIyByWMSTbifKDDGXg2R.Vj1VVGHmqxaZRWyBLNKVXk9OuLboljm', 'vivianerezende36@gmail.com', '2025-02-07 23:02:18', 'pimentinha29-801738981067swinofgxvj.jpg', 'pimentinha29-801738981059yrf5ykqihs.jpg', 'active', 'normal', 'none', '', '21X95eaIaQ1DsCiR5RxCNnnFVMfJMHOzb9mFJhLbyZecUzdOSpXIBLV1WCSpbKzqkvcJvnXBIuW', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', 'Contadora', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', 'Brasília', '', '', '', '', '', '', '', '2025-02-07 23:28:27', 'yes', 'user_80', 'yes', 'yes', 'yes', '', 'yes', '2804:7f3:ff80:6b44:dcaa:458a:ab21:7522', 'off', 'female', '01/29/1978', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(81, 'Lucca Pimentel da Silva Carvalho', 'lucca81', '32', '$2y$10$2wyfnGAadSaoYRVCBGtwy.dufJQ8SsU9NGPKz137nyzFNk7.jThR6', 'luccapsilva12@hotmail.com', '2025-02-08 04:44:37', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'BUD1MXOYECo1axdJF77CWyYw6YEhAeRWl0VEduIHyNqPM7LrWio1LhYJQXZmtU4APxeX72bdRUP', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-02-08 04:52:11', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:14c:658f:a11b:a092:8155:5a9a:248e', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(82, 'Marcos Oliveira', 'marcos82', '32', '$2y$10$3nq3wD1REy4xL3BmVDH13.qtAHDWiTgpIr9gZL4WbO1zA/LrvycJi', 'artstoldos@gmail.com', '2025-02-08 09:19:53', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'wHam10oFdWZFt4D3A6tx8nEjo7YU31e8GOD9rK9Ms5Mh56nar6Xk4ajSrQaMsBbZ6LVzE4L7UNr', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-02-08 11:50:27', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:48dc:30f:8201:8135:9be4:6067:9cc1', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(83, 'Erick Richard de Souza lima', 'erick83', '32', '$2y$10$atA3GDjv0C5giNrv/8eP0OsJ9NgsXpWy3ToSKdMoZsFZc/SvngEq2', 'ericksnik02@gmail.com', '2025-02-08 12:04:30', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'TTvEtxnJMXkbAKVn0q3gQ67cbLlias2VwNJfPuUguWxRbZML8y1nJqo1IBipKBhiP9zxwlzoM23', 'Q4dndBjGYl8Dhl4NawRpSsHqXnPRasG7FM0miJLnqPayIn4CVIivBHitMQzdzpBC9Fg4xp8iM69UgPZoL29uES04108bZEUT7Dev', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '177.74.199.57', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(84, 'Ighor brandao', 'ighor84', '32', '$2y$10$oc7QmGJG6Q0/7XJOfEU7gekVAjgXbg2rlqIxcGLRbUoa47pc3PUuy', 'ighorbugni@yahoo.com.br', '2025-02-09 03:33:22', 'default-1719637495.png', '', 'active', 'normal', 'none', '', '117fp4T1yE1jdI59u6ufVCrVtTfhFFhyaZwV2wxAj1DWxSn0QMOy7z2cuU9WGdH57GKVgxU2KNu', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-04-24 03:09:10', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:214:8194:52db:68ef:6f41:4795:53f9', 'off', '', '', 'no', 'port', 'no', 17190.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(85, 'SARAH SOARES NUNES', 'Galega_010', '32', '$2y$10$0Im7fAlVJ/W6jBt1DZrujOgo5OPP/BqAIETKAHfx1ppllHS0p6nzS', 'sarahnunes1412@gmail.com', '2025-02-09 20:28:38', 'galega_010-851739289728g86zml1v9y.jpeg', 'galega_010-851739289770uskv7xl8mg.jpeg', 'active', 'normal', 'none', '54SyToaoX628tyKdh7yMIgixsFByNqQY133PEze6WGddW2PUIGz3DBGsVRah', 'la1CZJELmPi7JJUsfMe3WjCA5af8ttM8z7uik3r5qk8p6aO4LU2o580YZwsX5W9aIrhuJPwlFtJ', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 12930.30, 'no', '', '', '', '', '', '', '', '', '', '2025-04-25 00:10:53', 'yes', 'user_85', 'yes', 'yes', 'yes', '', 'yes', '2804:7c54:83a:ad00:5826:cddb:aa9d:707', 'off', 'female', '06/28/2003', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(86, 'Wiliam Alves', 'wiliam86', '32', '$2y$10$mWrxFWXzWZ8lkrqSLwO2xef8Rkx1eeR5VrDicjnGnQHDPpRZhere2', 'wiliamrabelo5@gmail.com', '2025-02-09 21:28:05', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'J2Bqv8F4BQC3bb0UWfxZicMiH5NozjeJTNBheqkmw9XyVAhzrR93tAkW9vrQrbNWzmyrSbDZXOl', 's5U3bssBNcIBLlLOxlhBGjy1yepEn82SNwWWYSZfLc3gaGGRvxdobzU1okBwNO2OlQK3HwfPehOfCWRotP7otibMM4Er2r3PZgde', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:389:a3fb:6ce0:bcbc:ebce:f9db:9d6f', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(87, 'Wiliam Alves', 'wiliam87', '32', '$2y$10$9cmNTEJR/TNTUPF0p6YH7.YO2j4So4rHftLOMdkf4bLwRefmPnLRe', 'wiliamrabelo7@gmail.com', '2025-02-09 21:28:41', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'xbTpprj3h65mYg5a761ryrJW4YdhcFhghqouAPLH3bTPbSCscr3moBNYh9PKdjQdLBsbeDFKVwO', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-04-24 02:49:40', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:389:a3fb:6ce0:bcbc:ebce:f9db:9d6f', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(88, 'Larissa santos', 'larissa88', '32', '$2y$10$G3fxvGGcyFBZMBqzDd040OtSXKGnNVax9rw5mZPxgzHMUlo0v0Ezy', 'larissasantoss@gmail.com', '2025-02-10 08:04:45', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'aWVc0qr3JGMONOmeiMRfxwYngDXejkBoCy1S45fR0Sxs1Xm1Pbz6vygos3jFm4kXhVJRVzb6cWF', 'qYC0C4n2YTCvh6JJTD1iqd2529tyFilLbCPP2vnzsy5g8SQEo5pjh7rH16rbpH46Meo8RpKUtlC3obhQeDoTHPlBDYppuxQQ2jNV', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-04-24 02:55:41', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:214:819f:51c8:f036:79fd:896a:bbb4', 'off', '', '', 'no', 'port', 'no', 18433.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(89, 'Arli Rocha da silva', 'arli89', '32', '$2y$10$DXuvHwudNjnr6gt8SLJnUOdXbgBySaqPh9Li42fw4YoAqILDxeC0G', 'arlirochadasilva123@gmail.com', '2025-02-10 09:09:40', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'QhyF9zfR7DvVlZPVhvMMsnuhWzk5hMnNScrIbcfN7LSxV3OH8LALOkR6lANVefH2DcTrahRxExy', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-02-10 09:23:26', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '177.174.208.168', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(90, 'Marcos Levit', 'marcos90', '32', '$2y$10$TdCvFgtTBSqqnYF6NH5WROLo0oK5yEfy1u1GOO6J3XyDh/hH4O6Su', 'cyborgs_protest.0q@icloud.com', '2025-02-11 22:01:59', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'jbRDOuU5UmnTSQehwEUCfVPHRaxW2YecbhubStY9TMpwgu5PYyYiBuu4dY5XREuCVaBxRiTKJt1', 'fqM45xSl2DNDZrLtvy7kp20Rk08c9h73twr44WESHALxw97pxb8TCCXXLMP9HzhIwFSAHvuhakJ6D0XcSsljcewgyaGUR1R6kkwL', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '191.58.159.167', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(91, 'ighor', 'ighor91', '32', '$2y$10$3AdsP6qL.P//JXXDGz/mu.KijBbjlwCrHds02JNMsSOSBg6zkYVw6', 'ighorbugni@gmail.com', '2025-02-13 00:19:13', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'jYesX2TTTn36pETZBvXHkedFdPYFrUnLwQwf9Y6LQcg2Eb9MWgEsWcKk3phdkZUWq2xBkP3BdvO', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-02-13 03:18:03', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:214:86b4:5929:d9f:5c5:797b:59a6', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(92, 'Cleiton', 'cleiton92', '32', '$2y$10$5TrifveKTBpGE1zoSGLBae6vgVHWugrqxX.CfO6B5GTydm5ladIMi', 'cleiton.verasandrade@gmail.com', '2025-02-14 03:25:04', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'bANZAO2df5ErnmQm762ydSGXdrTBn76UWIPIKj9OM1a3VmUzfa1Se8Jsw9NNcL1RAorarQvTCGC', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-02-14 03:30:47', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:56c:21d7:f100:3957:4037:5e58:8a39', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(93, 'Marcelo Henrique', 'marcelo93', '32', '$2y$10$BVSdO3HaK4Z/7LAUJrpMiuQPM78EcTj8Yxn118Xz7065QL37.DxaC', 'marcelohenriquebrandao39@gmail.com', '2025-02-14 11:32:36', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'aPNEQeu75lAZVgWzQgfAoz9nZVYnFKYtMomJtTdwYAbKvyUX4zE7pVjtEvGhhpySlthZdmNnx9Y', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-04-24 03:05:06', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:984:3b2f:ee00:c922:b713:377a:412e', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(94, 'Hyasmim Vieira', 'hyasmim94', '32', '$2y$10$qMbF1Pi2humiMkv1KyIKhOrWSN6tIiBgiK/OzB80NcP89XR0rBB2q', 'hyasminvieira69@gmail.com', '2025-02-14 22:52:05', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'ONXfGMujGxCTWVpp1kbzqj94vq7HPhWyopgWVs5cXpHE9nsWWsYWpsU4yS7YLaeoNWJxlgBWUwn', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-02-14 22:54:18', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '187.60.147.171', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(95, 'Luiz fernando', 'luiz95', '32', '$2y$10$HrczqGnTLTHwGKaSJ3.Ts.C5.5YJTapd.6lTjAPCrnYax34CjTo0G', 'lfernandosdinizz@icloud.com', '2025-02-15 09:02:50', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'QqowbJKMgEz2Epr2ZnX8btus5iCflfxXYqvHIHyCwTc6aIAU3SGW0PNiqd26gouSg2XzqmzpoHb', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-04-24 16:08:20', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:14c:65d3:53bb:d59e:902f:25fc:b0d3', 'off', '', '', 'no', 'port', 'no', 85.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(96, 'Jhonson', 'jhonson96', '32', '$2y$10$kv.9eRtnR4IFk8JNPyYLBurdfeqKrlXwEnbZZAFj5JxFxXuHyu38m', 'jb355470@gmailcom', '2025-02-18 00:54:36', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'qqxrs3gy4EgJPTrnaxWakRbhJBM8QaF3j7NxWxl9kJEvDbULYTI4WIiXAfc9stXzwk7YzqrHhAY', '70shHP6mKZojrnkQIu9AodWvskEqmDUERIt60PVZFNvD3GGepuS8MEaI7IoC2TPNZVLUEEbglUwYJzzICxwEH7DVzKJiHrDngxrz', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:7f74:b15:ed00:8de9:295d:4d5:8735', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(98, 'Diego Vinícius Gouveia de Almeida', 'diego98', '32', '$2y$10$R/IrjVYcaxR7K3lrJ.oYve3u2fj0SNwCw7IzrQ2GS90IdJTMmOMHe', 'diegovini97@hotmail.com', '2025-02-19 21:48:56', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'RwE15zpBY9rNsNsXjSmbwFJWt09yl5JvrEacHLHZVHxXLTuLlIbAAl4vFKogh5fJTZpbuVMxurd', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-02-19 22:01:17', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '179.42.135.134', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(99, 'Mariano Alve', 'mariano99', '32', '$2y$10$cx6cMGoAbJK3pa3/s9yUC.r2Fvt/eta4B2Hqklx3Gw1HS8pmZEqnC', 'rimarcomercial23@gmail.com', '2025-02-20 09:14:54', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'dOlbDQNjWwsTEfHU76Ra9uAF4u0K6uWT7PCwxICt2I4V02zFWtOXdotu2zqGhgRZmwTYVal5akU', 'F6ce4YkD1ibsr80JOCOndJWsHBdz0VOt7qZfUHJ0JkU1uK5YAolUyqDCPKPWum5p4LK2789jLVfsW2RKVgeWDvfjx6hXT0jxpism', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:1b2:1142:1abc:1c9e:cf0c:2ab1:381a', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(100, 'Anchos Silva', 'anchos100', '32', '$2y$10$.NQmkm5xTF8moGuVOeLbMeRUGT9mSVkh7fqgPe4d6lWJOx929is6a', 'maraisanches008@gmail.com', '2025-02-20 09:17:48', 'default-1719637495.png', '', 'active', 'normal', 'none', 'JVDXMKpzB9xubHFZXwaxoAx9kpmyuhuV00MNFhZTjzWHyBHEpM4UN7H3iubm', 'RMuYKVi04VGoyVEbupGCV67buKcvWB28yqZfFnkqNXPml1ySoZEuhjGKZU1sCykPue9arycJ5Zx', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', 'cus_RoB5fq2MsWVkwC', 'visa', '9934', NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-02-20 09:20:49', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:1b2:1142:1abc:1c9e:cf0c:2ab1:381a', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(101, 'Giovanny Silva Ferreira', 'giovanny101', '32', '$2y$10$BsMQvo48VQZbzjhT8Gn9x.kpMptr2VfbIz8g0xRM0AeZEK7p9VIj6', 'giovannyfrr123@gmail.com', '2025-02-22 07:04:39', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'eYVmSdvru8SeCid7S6cZtJ6eswvxI366Nh1vf8wdrH899f1yPECi6StSmSk7t3gPxn8dGaIvKLx', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-04-25 00:20:34', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:56c:b565:4900:54f4:4fe2:8e53:f17d', 'off', '', '', 'no', 'port', 'no', 1930.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(102, 'Alyson Harrad Reis', 'alyson102', '32', '$2y$10$qpkmHoSrt9YmJf5gW7QLV.SnnbQ84/NwwzPOaqZqz9JNZZHkxwhfq', 'allyoffc@gmail.com', '2025-03-26 19:51:25', 'default-1719637495.png', '', 'active', 'normal', 'none', 'JCEwvpiuwVQ58W4PSAKNAEVISrItP5hhCgEX4hc6z1yqzhizyxGaLU7KkCjA', 'GBCcPObttEG1kulhoGgm2l3Kp6a1P5PGkMPtYkK9PL76bL7KiQPsY96aUcZ8a0nVjXjFjnwIy4N', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-05-15 13:40:58', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2001:1284:f508:acf9:95f1:6d7b:eccb:b3d3', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL);
INSERT INTO `users` (`id`, `name`, `username`, `countries_id`, `password`, `email`, `date`, `avatar`, `cover`, `status`, `role`, `permission`, `remember_token`, `token`, `confirmation_code`, `paypal_account`, `payment_gateway`, `bank`, `featured`, `featured_date`, `about`, `story`, `profession`, `oauth_uid`, `oauth_provider`, `categories_id`, `website`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`, `price`, `balance`, `verified_id`, `address`, `city`, `zip`, `facebook`, `twitter`, `instagram`, `youtube`, `pinterest`, `github`, `last_seen`, `email_new_subscriber`, `plan`, `notify_new_subscriber`, `notify_liked_post`, `notify_commented_post`, `company`, `post_locked`, `ip`, `dark_mode`, `gender`, `birthdate`, `allow_download_files`, `language`, `free_subscription`, `wallet`, `tiktok`, `snapchat`, `paystack_plan`, `paystack_authorization_code`, `paystack_last4`, `paystack_exp`, `paystack_card_brand`, `notify_new_tip`, `hide_profile`, `hide_last_seen`, `last_login`, `hide_count_subscribers`, `hide_my_country`, `show_my_birthdate`, `notify_new_post`, `notify_email_new_post`, `custom_fee`, `hide_name`, `birthdate_changed`, `email_new_tip`, `email_new_ppv`, `notify_new_ppv`, `active_status_online`, `payoneer_account`, `zelle_account`, `notify_liked_comment`, `permissions`, `blocked_countries`, `two_factor_auth`, `notify_live_streaming`, `notify_mentions`, `stripe_connect_id`, `completed_stripe_onboarding`, `device_token`, `telegram`, `vk`, `twitch`, `discord`, `reddit`, `spotify`, `posts_privacy`, `document_id`, `crypto_wallet`, `threads`, `allow_live_streaming_private`, `price_live_streaming_private`, `allow_dm`, `welcome_message_new_subs`, `send_welcome_message`, `price_welcome_message`, `alias_mp`, `cvu`, `kick`, `email_new_message`, `allow_comments`, `custom_profit_referral`, `price_video_call`, `video_call_duration`, `notify_commented_reel`, `notify_liked_reel`, `price_audio_call`, `audio_call_duration`) VALUES
(103, 'Álvaro Gomes dos Santos', 'alvaro103', '32', '$2y$10$QdSbNxk9xp.ncZi8Hn/G.uOAozY16k.RFzxPDadqRVkvIjD6flU8K', 'alvaroboleiro@gmail.com', '2025-03-27 21:58:03', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'rmYcYzsC7riRbc7AobeTSWTQYqBdY9qPlShGfRj16sQ2iiMO5lz34uG58JuFyD8CvywjmVza2jp', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-03-27 21:59:32', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '181.191.102.63', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(104, 'Gabriel Pinheiro Manoel', 'gabriel104', '32', '$2y$10$Lc5g6KgwjRj8WkhGlJ395O9cgeB7AyHrm21zlv3WgJQ4nTLM4oNDi', 'primiciabiel216@gmail.com', '2025-04-03 06:25:29', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'bYxxZZTm6EZgLMJjGFLo5BnSFHgfI8w7ThKJKFuG4RUPsBRJw6KhfInAb1UD20pdaS28o9k6tsI', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-04-03 06:26:52', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:20:28:4304:146a:1381:ff18:4216', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(105, 'Pepeo', 'pepeo105', '32', '$2y$10$Wph4zYHj/0eIe3ZBlr0ttu.nn10du/TvQXHaIqIWQitzvezBwGUI2', 'railtonmartins1999@gmail.com', '2025-04-21 09:44:35', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'mWJOQoQq0bZtfzL0cIxMQ5HzAKwMskX2avwDA5OiMPpKJpeiXxwX8ViYSdeLut0sEzpq1Y5UCID', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-04-21 09:47:47', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:18:17b:8f56:1838:2780:ba61:1989', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(106, 'Netinho Silva', 'netinho106', '32', '$2y$10$NfBQ1hb58J4tX2NaePMbl.riF2FMK58hs6XL4RIp9ghwNrTKL8Nku', 'neto.faith2@gmail.com', '2025-04-21 09:53:44', 'default-1719637495.png', '', 'active', 'normal', 'none', '', '5IOhhpoESmQ2ffMDSux7I2YNipmALqpHI22lBJxnPyiG3GqoYOpjKLI6WIvVbnBcequuPD6qYWQ', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-04-21 09:57:26', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2803:9810:7077:8210:f6d6:5981:a003:5d42', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(107, 'Italo Wazery', 'italo107', '32', '$2y$10$UdCcEpt01/euUxD0SOfAzu2zTlK.NkXAmsuz2ka3v6YH.2h9qFQjK', 'wazery66@gmail.com', '2025-04-22 20:32:19', 'default-1719637495.png', '', 'active', 'normal', 'none', 'etE6UueCFXnCKxuftYelbvkBttQBtz2Smqz4x7sXAjd1amgbSNI1tLvqlf4q', 'Xwo55FrshesQ3mmzPVT6PGnVDTcrCoy5nj50uN4WOdHtpVcapo759zpxU22MmkGPGVbRmXBmEJ9', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-04-22 20:34:17', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2a04:4e41:6301:1271::4598:1271', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(108, 'Guilherme', 'guilherme108', '32', '$2y$10$RSynF0.BTIboHUKiMOrJY.F.Nwu6kV2IYRS39ceg5K7KeyCcxdTKi', 'guilhermenegreiros1004@gmail.com', '2025-04-24 21:16:21', 'default-1719637495.png', '', 'active', 'admin', 'all', '', 's0vA04qfnlCjgunOAHcFwlx9piPC8Q96BJFUd6h8je1kSKsHmgwHKDLIvBSMNFSUK6t1NngVG60', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-04-24 21:44:16', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:18:891:3049:dcd9:185b:544:cde7', 'off', '', '', 'no', 'port', 'no', 30000.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', 'limited_access', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(109, 'Maxley Rodrigues de Souza', 'maxley109', '32', '$2y$10$7EUX.mFsxd8PHOWRh6N92OCfwezQnIXE58GidqaNqTLIzlvyzg4j2', 'maxleyrodrigues2024jipa@gmail.com', '2025-04-24 23:44:13', 'default-1719637495.png', '', 'active', 'normal', 'none', 'TwGLYpyLDHShuxPdGYsuAjNvnd6mzGtVOL6PEeC2jYuLeUBBJKQfSodc4OSd', 's5lq68iUH8pXsHoueo8Qi9BWAiALF6a1Kpg7dHX7mtPfkmiNbinzYweLX12DX2BhhlrWlZzddDl', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-04-25 00:50:25', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '168.181.58.90', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(110, 'Jhony', 'jhony110', '32', '$2y$10$5gLdh5l3Kul/wrs1FXzoLeESSGectCOnT3pq9.y3rkPXBc6EIgs3W', 'clebsonmoraes157@gmail.com', '2025-05-01 15:45:10', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'ZrssSMIdf2upWEq2knCmra31DXPjLE72ioH9o98mSR1guWoT6zjJEddbGlEI3Zf4ZAB4BchxMsP', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-05-01 15:47:32', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '45.7.100.243', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(111, 'Gabriel', 'gabriel111', '32', '$2y$10$kNr0lG5oRBQ945D3jLYI8e6e9w7YFXNoic3PMDkfVdHAbmJ8ypldm', 'gabipeixe22@gmail.com', '2025-05-02 22:15:31', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', '2taXEijyvZuyQPCechuNJXmenmKP3FcwTCQqfTqE384xA69YzN1YGNiTkIZpHOmTZdqQx7AGfZz', 'TFFu6u80Ie4K6nELvFtFG61rSBCwGxfx9o5CVJxM5HeBD0dQfWmoKXvgnpDsgpyJWWgoMTaYpLl8U5tt9Wh0TDoyM5My770DgChU', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '170.84.219.254', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(112, 'André Souza', 'andre112', '32', '$2y$10$k/5JOCRVb9qI8RQPL.1J7Ou4LpNHC.c5DVnyZdYPa2E.DGrvlgARO', 'andresouza.9032@gmail.com', '2025-05-05 11:41:37', 'andre112-1121746456142ukkevyhvtu.jpg', '', 'active', 'normal', 'none', '', 'lkXuHArrwPgoD4fhPimY4KejUdqL6vDvXFNcpZrfN7Ox2rL8jn5tXv7DRjFdKh7xkLnHd4PYexT', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-05-05 11:46:25', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:18:703d:abef:ac91:9aff:fef4:e3df', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(113, 'pedro', 'pedro113', '32', '$2y$10$WuZgKvWNvJG0CsEYskcGkOFkQquiru7/1w8uhz4CgyuZ9kBMhAn2a', 'melo71365@gmail.com', '2025-05-06 15:56:09', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'po7me1hOSabAeB3CqaXvLhdWtxdPlIcegmodk7j4wdycnAAaexPo9DnIKk53aL3O8OhomQJ2xOH', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-05-14 11:30:08', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:f14:8081:f901:833:3ec8:d9cc:245b', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(114, 'Tiago', 'tiago114', '32', '$2y$10$fZfBxSLVfLf.VFKWE/.sWeDvyBBzfjXIbtkRx2P9b.lJFwoQnEYj6', 'menorb13157@gmail.com', '2025-05-11 19:31:33', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'DPUAH8OdC9pvm5Q9JcNhqzPe1bZeVY1yH6BVM3OR8h9xkRdDsgCwAEPhH87MiU1WFbZEu2u2JME', 'oS82JlA0JVKu1ca54cVneWlqh4hS4V5XWPreOvf2RKGd0Xy8x4QWpiWvq9vui06fjBDeBYW8VobAYsltOWLwUKKOYi8aKcqvSyCx', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '200.159.158.22', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(115, 'HAMILTON FONSECA DE JESUS', 'hamilton115', '32', '$2y$10$F8/8Z2076ThL4Zd2pQtS0O3Ja0cRCPKSRA0pm.kEdshPJXghIYGoa', 'hamilton.gabriel2020@gmail.com', '2025-05-18 14:10:15', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'Cmj8VA1xqybjKwOH07lbJH3xNzsNTsvhAVPKpDEovU4Xf2d8P259TUGfYMPB9npUDIav0TL0LC5', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-05-18 14:11:28', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:1b2:ab40:71a5:ec98:f23:1532:94e4', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(116, 'Malcriado', 'Meninomalcriado', '32', '$2y$10$8iVcWsrqBjGr.vrXLugNLuMs6rGctPWyx8vv2WDxCFX.UYoxGxXEi', 'marcus04fla@gmail.com', '2025-05-29 14:50:34', 'meninomalcriado-11617485469814cebtafl1v.jpg', 'meninomalcriado-1161748547018vzv4xaluxy.jpg', 'active', 'normal', 'none', '', '9Q1n2rTtFrZlHYJkzptbFl2p7649LjrHChKjRQ1GV4mxCI8SYM7w3oC0NgYFDtJNLYojsJjFmHH', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', 'Sobradinho', 'Brasília df', '73030053', '', '', '', '', '', '', '2025-05-29 16:31:36', 'yes', 'user_116', 'yes', 'yes', 'yes', 'VASP', 'yes', '179.255.148.96', 'off', 'male', '08/04/2002', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(117, 'Henrique Alves Santana', 'henrique117', '32', '$2y$10$b1aH/D9aoMyyxo2rTE6QWux4ddnZrm/Oo8VEPHcCO9yqBZi34UfTe', '1920.henrique@gmail.com', '2025-06-02 18:05:19', 'default-1719637495.png', '', 'active', 'normal', 'none', '', '4MBr1Kr1ojeDckWgz1MKvT4WteUie9j14qyaKZTm4vpHEfh6p16L2hq81ESroauhNj0maMreRXr', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-06-02 18:07:53', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:389:a19c:fe23:f1ac:5ab3:d245:9654', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(118, 'Urbano Mota', 'urbano118', '32', '$2y$10$I3ud7K5eHR36.L9VepqWzuB7Q5W7HwdLcr6e0PAYG3/m08jCBGdgC', 'urbano.mota96@gmail.com', '2025-06-06 12:13:48', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'aP27RcwiZqHMP9cFuAgT4p5w2X1JNAwnrpOS3FU0FYlovQC9Dp3gnV0r4XMSvl5Xb4U5p6RR5zT', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-06-06 12:24:48', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '177.220.176.33', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(119, 'mario', 'mario119', '32', '$2y$10$kR.hym9FOK9EvU3UXOo/kOR0kawxfGI9oeQjYxVenn17n9IwVf7wy', 'ginaldo_22@hotmail.com', '2025-06-11 23:03:15', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'cVtjttR5D9qoxuPoNDez79KTv2pYRgKEBM4aM9oNYudjeVEcw8OlzjQDOBh1xPT1MqXHpsYU8GA', 'F3nOykSGOtTS2SikSSdHVJS58OZWSnKjCi9qcDPU4likhwnM5f20UiYxyekR2h0V8YV3C1OkNWxWQSkYqguPJNFgKJLTAZ7pd5l3', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '45.173.117.177', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(120, 'Mateus Souza', 'mateus120', '32', '$2y$10$XCanh/gWxPDa85NSJrusQORmc2BJ75o4TVVF/fM7iPvjhOvaPpw1a', 'm21271030@gmail.com', '2025-06-15 10:58:46', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'ZJyE7wsjxMWzs8rimquPzBH9Gci2CBEb1wOJLnGqWZuxD7e7447ouQpkMhSdPLTogpTXEVVyFZ7', '6FgyEiPed4rrOSF8Xt3dDy9dmNDrcNknQaiHrzqphpOx4zOJvRwV1hSijcmbJuOXFJafL1YY9QVwpWn0nTIqmdvxk94nbMNqbvsj', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '177.101.164.15', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(121, 'Marcos milior', 'marcos121', '32', '$2y$10$DdOQzAUU07tkATEM12STpONR04ZSRPyZDjQlTawoNivVGwQe5L0xW', 'yure.nativagricolas@gmail.com', '2025-06-19 03:49:42', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'ZtJi1iRMdsH3gUyFhz5oKlYzzOaPCmOoSBmFWAmsTJHaJMrPLUHBvjU6sKzg9dbBYmBzS4ERmYS', '83GrGDenJVg1ZM1lHEUHQiN8pttl2A4j28uE6SNTORLUfb0H3dR2dEp4uzD5mv7rQeaRETONvnnvF7WfMGKd5R9UF8p09tuEBUqn', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:748:5:9e25:6a29:e467:8578:2af2', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(122, 'Jordana Xavier', 'jordana122', '32', '$2y$10$9u5eBWvFIInYugxg.KWAb.6PkjaSNSCzTsy1q7r9NGbYNDfOU79A2', 'ana.dojone01@gmail.com', '2025-08-27 17:46:56', 'default-1719637495.png', '', 'active', 'normal', 'none', '', '7YnvGK3P5IeBXuW9GNiV5RRuZrIhJxKWz0WDFL4wsUiwZKKy9KeV5V8cuUznfcqhcLDZFHmkswD', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', '', '', '', '', '', '', '', '', '', '2025-09-09 16:10:59', 'yes', 'user_122', 'yes', 'yes', 'yes', '', 'yes', '2804:18:110f:8011:cd4e:21a2:750d:fffc', 'off', '', '02/28/2001', 'no', 'pt2', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(123, 'Vitor Gabriel Sales amorim', 'vitor123', '32', '$2y$10$gflScyquyg3BHa/brT6EzOEOr81aWxKr9/BpG5xwrGfcgnZkzNjG2', 'salesvitorgabriel1@gmail.com', '2025-08-29 01:41:53', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'feQknQpNnoCAFlEEJDhbdn2f0XCPT9ptkYByWhR0c7YzJzxZkB6n8Y927J8VJ7JMgSifQyh8qLh', '5JmaRGSckjgrLTwjvxcgebXP6DmEV9Kgmu2Omyl1ejCyNrNZBE5ABzjI3CnKqf4cCadmyXVVrGihuMci0TIPU6dQUhDmVaXaVDoW', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '170.80.37.107', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(124, 'brazilian', 'brazilian124', '32', '$2y$10$8OnHqQwdE8BH2mOtSALXi.7tJH1PvKMGy7xgECss9RXiJbuD7wab.', 'brazilian69@gmail.com', '2025-08-31 21:07:41', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'Ndq5PfJ67TlVPP00VhajTaw3HSTKhZASXyOEui4vJCu2LfdZRYd3NorturBgCtXhWRK8DbUJWjS', 'yjdQwY8mw9hLQhnjVWVb6nKDerGbYgYVSGiRAIprkAe2tJvrG4TxgxjzuEdzJtlJ9DprKd3z0EwrNPyw5rkGbDoejknH7BNYvaI8', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:14c:65d5:50e7:517d:d6e4:9984:92c4', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(125, 'Carlos Eduardo Rodrigues', 'carlos125', '32', '$2y$10$a7NosQoh73OxEWPM/A5jHeOhS6sapmSqbkqWWmUfzaAR3nmRbhtBa', 'carlos.edu@gmail.com', '2025-09-09 13:43:06', 'default-1719637495.png', '', 'active', 'admin', 'none', '1jyGPjTDncz4IJsW72Cn9ZqvI2vGAfSdBwmNfC3IM8sq3H1L9Pinith1aEa9', 'uyh8lsFsX52zSJrkxPk8WkBJhvJY7gRzjtJrupNTOp642X092H7xXKl3dMx06YkxkPAaVL5K4vI', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 1000.00, 'yes', '', '', '', '', '', '', '', '', '', '2025-09-09 16:21:03', 'yes', 'user_125', 'yes', 'yes', 'yes', '', 'yes', '2804:14c:1bb:857b:29e4:1a7f:89bd:8723', 'on', 'male', '08/16/1979', 'no', 'port', 'no', 1016.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', 'limited_access', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(126, 'MAYCON DANIEL DE SOUZA', 'maycon126', '32', '$2y$10$F3wV1fL0NUBDimmYrQs6gOLicnXxrLyFjgp9Trrz9wn9PaMvgKDwy', 'jamalmaycon07@gmail.com', '2025-09-15 07:18:22', 'default-1719637495.png', '', 'pending', 'normal', 'none', 'TiEknF5JeHQgYqAU7AgaLkaobjfWwo7UlolquOYi8W7acdh6YJChZ7wCusbi', 'WM7mUvczH8hoN125SzIqo7S7LD7FYD2DMbWbjfTLlRXuubIAQvaIXLSFKeF3WvSCUBmc5eYMcXl', 'IJC1HtShj2dlkMKuHIg1FqKBTEKQkQ3mIIMZkAJQ4UGawhassi6uYuUtR8PT2tylj36iDDjY23vcbCdIVfal2NXXhiPoOK8Isaoh', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-11-01 15:10:53', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '45.175.169.107', 'off', '', '', 'no', 'pt2', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(127, 'Coroazuda', 'coroazuda127', '32', '$2y$10$OeKZx4xZ5Yak/dAHA3AB6Oidz1DTmh5LJoPu0N0O2F0HiYvSWzhTu', 'coroaaghata@gmail.com', '2025-09-21 20:46:36', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'T818JU7vhbty75e8rFPNr8qu2xqhhyn0vBjq82kxsw6hGiTHyWIG68rh1IvavdDGOkWyDFOoPqB', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-09-21 20:47:34', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:7f3:ff80:5956:9ca6:d06e:e159:1595', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(128, 'Larissa santos', 'larissa128', '32', '$2y$10$W4IC1lqU0x8zHv13UehOUe53u5V1pHlBIY8LGTz3pHnUEdYr9nSna', 'dudumelo@icloud.com', '2025-09-22 15:12:40', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'IVrfN4QO8PKSthcywqxmLkEFUq0AcFsxcHtymwuDw1dB03oCcwt1wxdI6Ec2XViYb8BCKKbUzjm', '8aYtErrHqYsgYglhPFanPUtdAAEa4IiatovctrLquKYF6Nk8rZmk6diKyGxtJpA0lt8qUp9sfNDg7rxbDjlZq5ThPb7OTnyJJoJN', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gostar do meu conteúdo, considere a possibilidade de apoiá-lo. Obrigado por seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:18:10b:6ee7:992a:a49e:2334:e8ce', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(129, 'Eduardo', 'eduardo129', '32', '$2y$10$HNBELNhkIZ5JuC.XmACtFuuwy41MeUAyO4u3HHDUkRFOyEQa1Ly3q', 'dudumelo@gmail.com', '2025-09-22 16:33:58', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'WwOleB1W8QWOCKNc2QEMhcf5klhi71Tgy6DqHVkmln4ZKdm9PcnR6a4ZdPbdJ9lndXkjz7bzhrR', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-10-25 22:22:29', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:14c:6583:6307:9005:c3ae:526f:c71a', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(130, 'Larissa santos', 'larissa130', '32', '$2y$10$cY79orQENUKaTwv8zogocujLZx2aGRG4J1ovjbA4FoW/5PrVe6.H2', 'shdbasjhb@wma.com', '2025-09-22 16:52:59', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'sRZczRsSFT2tizkbSKosGB2nHKEzQXKkHIXAdxF9XTeObQvsVEpUkvX2zNUVfKYOiuujGinlewG', 'n3KKofZQVU0it8jDAYZXKRyglSHx0vqrnF1nWQGHtHUCu6JEhseZwld1WTKFdMBJrX4NrwToOnnR4R6GB8VVmdTfdk6S69k5AkG5', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:14c:6583:6307:9005:c3ae:526f:c71a', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(131, 'Larissa santos', 'larissa131', '32', '$2y$10$YFDqHmo1e35skVcicBGTYeDNj1RtKkdrNoTBM.P7Vjmjg/eKhQHQW', 'guilhermenegreiros1005@gmail.com', '2025-09-22 20:49:57', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', '7DW9OXzRTxioCZ4qXv5W7DaRoRs87dGlcp20FvpvBXFljIxInewjrz4F0e9KRtX8Y0GyBJEdzwl', 'UhKNDtQNMDgCL3iGoHAYgEMLQVFZf6Cmby0oZTaOMFtPzENObl1XZo8KSWsU627IwrjdN2abNvHb4EX2W1ViXL8hVcL2o5S6wLm9', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gosta do meu conteúdo, considere apoiar. Obrigado pelo seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:18:896:9cd8:156f:bca0:653d:e034', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(132, 'marconi', 'marconi132', '32', '$2y$10$iaoWfPez1LJjHvV0XTFipuaHvEyudetQzLqFkZXOimgomkU07QSkS', 'arthurwork200@gmail.com', '2025-09-22 20:51:18', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'xlrRlx7qA6vkKKeM7Ddwkj3Sw8QXgJw1ARAORNeHXgdE53Mm3zQp0P5WApyULsrG077AQj3VStq', 'mPtjA6ErpHlg3ARy9cl7qoV7c7fZO2i7MWRdVIAuwCR38ridvAcU4RYm0xIYRncBfVk2BstEbLvv32seN5ieshvXvINDorr6nYtb', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gosta do meu conteúdo, considere apoiar. Obrigado pelo seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:18:896:9cd8:156f:bca0:653d:e034', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(133, 'YjWFNPuuiEibDe', 'yjwfnpuuieibde133', '153', '$2y$10$j22OufIR7GC79cmvG5vtSeKOfZdYZbpNS71KYiQVvcLU36AVDX6OC', 'uluwulet850@gmail.com', '2025-10-11 06:54:47', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'UeVZDliAkGVomrNXats6k40kpNW13Xw6dp8TJnDBWU8Jr8ljQugr47wM0Urtauwx6cjyfr326WN', 'q8vOdjJgjttdwyDsSdLpcqKeQy20uMX3e1cmyg2Pyi5a8BgHwDsThHvux8SC8VnGcpdCtnp9tvsPfE2UMjFt3s7ZXf2tU9zL3wbm', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '80.85.245.5', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(134, 'naGvYGzbr', 'nagvygzbr134', '153', '$2y$10$0KaX3RaXmhp75Gmxb7cDh.r/ePBi5qY77tVyLaQyaeMRw2mBHUMZy', 'elahanixijay40@gmail.com', '2025-10-15 16:26:00', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'OJneRAcd4plbB0JRkR3Zx0OGkXxTPWvuFGKaVhJtX7Zxs8AIXmz18yRs5fDlZ3gtkvZevTdtU5A', 'WoJqJfgvcB1SpUDH7lmaSNZjCd79nvI48fmE7FndtE2mNLWMi2oXOOyc8NSU41Trm2XWLM6P98cM3bEvtqwSKj55mMycH9aURQVk', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '185.245.104.75', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(135, 'hqhvusTlUjHlFhYDRGEDrZT', 'hqhvustlujhlfhydrgedrzt135', '153', '$2y$10$dYVGKTNyl5lFSv.Yv7JUjeljsHgdOcGZCqMKSltwCW98w4SpM1jI2', 'urukehehoyi964@gmail.com', '2025-10-21 03:32:34', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'FngBsjUGiPUrkj22TwzmB8CXICRMqc01TrnoLHXakRGu68xHIPH9SocGwRLoJWxo4ilIw1pTUXn', 'NltdEflra0nrY1EAm5LJ8bw5Ca7IDo25fN9MCeSeGCMEA6xECGlbUZ7COzTv8lXyo4r3uzRZ1VvLPoY4crq5R6WgRv769IX0afmW', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '195.200.26.27', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(136, 'igfZYYsryRwgHYFabW', 'igfzyysryrwghyfabw136', '153', '$2y$10$Rv/toI3iocHmzFEo24hJN.jeI0mMIDERsiddNdSQP1IzOyR7d3sSe', 'peterstryker@yahoo.com', '2025-10-21 09:24:06', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'goKpzZpipDRsmtDI9oJExYaskOiTet6oHlbP5wu03XQIoVEhhhuMgY6yzZjVHxXYxNUhhcKekmu', 'e76SUd2PmYn87npIavJv1dwP8IMAihhTtnMlE7pDvIZwfeVbwtxRahbFFd5obnwEBw61L4tVhzSe0I8iXbJoNJf0UyymK8OIH7YD', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '80.85.245.37', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(137, 'PWmuvjvXZtJPDGHHj', 'pwmuvjvxztjpdghhj137', '153', '$2y$10$OE2BCpFV1FfNkOSyNaPMROUVe1MeMOvDTK5AWmfba0oR5rwk2tF0m', 'jessicamillercrna@gmail.com', '2025-10-21 10:22:30', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', '5Aqx6j93pGbZFyYM5e0dQulbACU7ycZQbJWgQuDuy8HKtCPupEy7sa4AGPB0nuzfb6aSCbWJkrH', '30odTkQQVdOqxExhQxBe3vBU7xUr2qszwox94HVFbdvypGz4axXA8pC7f4NPLE7b4zdFuXSKWVQAQIRzWyOoiOegwoDfhMDzFpwZ', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '185.245.104.75', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(138, 'zfRNtEkeiTxgERCktK', 'zfrntekeitxgercktk138', '153', '$2y$10$H.wtAFseMa7yNzsK1KLLc.RZ4U8Njs2hWlS1R.Mtkgnu4MXuPMOeG', 'rachelduffy@optonline.net', '2025-10-21 15:29:22', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'c4iE58ny7nZQjqoiTUX9oLEuEZ3x2BSsMOEoa23FoThLrB28e8jfaxm1p0bKveq45Jan21AAxW1', 'oGi1bd4zyPoGyqbIQ32Tof0oJZ8n5HPiF6W1n4967UWG2wR2NzmnlHNRjFoaKxQW881vTBz4ElgpkIIBpA99qxmVr3gf4bWcTnvo', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '80.85.246.71', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(139, 'LaeNrfuFIFtiMdekjZQHd', 'laenrfufiftimdekjzqhd139', '153', '$2y$10$rmvkrQVoo4rrMaz7Wwt5MORXBZyBUgOcz0UpOUFaRPxtdRU/FXPZm', 'fmehrabian@gmail.com', '2025-10-21 20:54:53', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'fUgCYG1woMnwpylcwtnJQZYtXakMYd5olbeAJIOqLMZQRSGOvyw0chyQsscQw50bicVwnmzzFo9', 'Mqttbzi5OZd4yvwvjwXuxMMthrz0fMavpyUEKWelqfAAy4IQJQjYA16dst2KDFekLZOiCG5TlO8uPgcjq7V0SEOOM3EiHARHgOEN', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '195.26.225.209', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(140, 'ITZAjKWieXtZDfqPhcOub', 'itzajkwiextzdfqphcoub140', '153', '$2y$10$rmBJtE8GyMZaX98x7XPL3.Kn.W77Gn1LuipnwvxNZJMhl49jUJdFC', 'adamsshan30@msn.com', '2025-10-22 04:04:01', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'csjUnjM86MnPHAvMVZqOzHI2ksqmXt8mIRt7NcxCxqAVXLaC0dUpximuBW5WZOt6Mw39e9PWSi3', 'eY1T7WAT85dTbJLpC4BbEOlH4O1NvgLEWNDCufcVzK7XJYm12O1BuDnIQwREAKUfiM29MOptj1zBcgdWSBp1FU3tme60N0yda364', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '80.85.245.5', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(141, 'KejKlHXvCBTWfjRXYe', 'kejklhxvcbtwfjrxye141', '153', '$2y$10$AdsgZLyKkXVAUOrBZyfAeugXGdYe2vRfMrQH9qj/CcxXPrvc594Q.', 'withtigers@aol.com', '2025-10-22 13:19:10', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', '77ood74FMvZta5tK2vsgdS4B1IKIJZcCCCSKgXoq511S195PF3exeyYe5ZyIQBmQdVkUN6h6XUL', 'DScOahQjx6q68DywLjiowywkIrgOGhA0cAhtEn2LBvaZLbkDwaJFDSiUSktwNDJLR8ARtMOyaxZFRdkpCoj1ZjQ2BGIeJ0ohInzt', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '80.85.245.5', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(142, 'bfeEJqMKcGCtJgGHQjkpZwQ', 'bfeejqmkcgctjgghqjkpzwq142', '153', '$2y$10$gkKg3DJY1K/bX3tXfXH/TuI7oXuWO37HxJne1ACy.z2xqOVufeJ8C', 'eholsterllc@gmail.com', '2025-10-22 14:17:38', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'dbgxjMV3hrClr2fIPUZNx2CEAobrODs6oEWE7itBU5cx9wD76RbVK4XVcNx7B1CGRAgv5210IF6', 'UjRyyHct8q2duK2bnctBkDxHJE33jtsxiKiG2eMAsAx5QrSOqQdkjGqwzfs9mQxy3Jyr8rF6RGI8rKunyGH9PKV50Sp0CjM84LHa', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '80.85.247.231', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(143, 'Cuvirgem', 'cuvirgem143', '32', '$2y$10$D7YbOgOTjl4/o/FIH2Cza.GJvHQPeyloGQafRbJrg5B4O2KoyOuci', 'gta@gmail.com', '2025-10-22 19:13:50', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'ZvWIj61paoTNr6LVX61vQykyJYNuCqkhrHdclttZPrUcjZPFNUjwZiC0vQixgh2ZJPDB5S9bJXk', 'nurK7US5s9dxAdsiBRzZU3s3VWS5tcGVjXTPs7LwDIfq569mxjNn8tVKczIBu4bpcJXj5KIJqwm5mMRWonthX5YXkyeEUVi3mAe4', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gosta do meu conteúdo, considere apoiar. Obrigado pelo seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '177.38.244.149', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(144, 'OMvMcYkanwcxXzFRLCcACItu', 'omvmcykanwcxxzfrlccacitu144', '153', '$2y$10$CYEGHChTODc93SZsN1b3r.bEqBAKc.x7ZqfojmueD2nrc.5cLGrRC', 'min@freedomorthodontics.com', '2025-10-23 08:17:59', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'QhBXQM8GTGo2Cm6GRSaXBFSIlQQ2prBv8CZpGyA5CMkuqXST90qOUfmWRjrmLT16yqO4xjaXeOt', 'n09G5PJjf9slSUkgFm2i9ZMISF46xneLAgxtTrIsyNBffpAQcDGG65sVNu4fGGULKkxc9ycpMxJPph1UVLqLAgnwM7bOBxH9Boua', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '91.84.111.136', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(145, 'XapnPhrYvNzKtHJNMcoBND', 'xapnphryvnzkthjnmcobnd145', '153', '$2y$10$Ro/ImioJ1mCMbpzuLVSSYe4Carupmus2Wx9qG22zY7JVUQ2dxrahO', 'jcrowe911@gmail.com', '2025-10-23 14:27:13', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'mPQFE775Jh2HjBlBM8gZdg1JyjcRJaBb2vNjGCsupUfOiQjwYFlIPaLRKvpPOLRtCV0qMOEcBWP', 'OLdEAL6eFcPJnyW0zrwuCiUlquSg1jdbP8zcyZH05hUfU9WW2jVgJqp344V9exdwVL3Ho34KAaUIvbjoT6huVRk1NWexaTHLId5C', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '91.246.41.166', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(146, 'GNeBMMYibryQRQtOjx', 'gnebmmyibryqrqtojx146', '153', '$2y$10$MqRQIm085LumilD41vFJxeB8XDknH7GPWhwjij4l0K2kWoDBpw6/a', 'ben.houseman@gmail.com', '2025-10-23 16:06:30', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', '4KLoMGojRNbqH0wtXVnqqScXlNeOXgSfI13SX1JzDDNtoTzVjQph3dJd2Wpo70AQstJk0AMQbNb', 'uQSwqt0NhGEJyq21eTxZ2UREHUueM6OAncRmGOtIBVf5edRiDNsJ1WyL9n8Q3AZx6y9O1POej5KyX6iD4VA5InrtUokcbg7QZWQp', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '195.200.26.27', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(147, 'ySxXyZFyWOwUnhIvGQ', 'ysxxyzfywowunhivgq147', '153', '$2y$10$DUkGZ5RTGIiHXybI..iaxuNZFioZEHXiuDwua5a0PYQTIgjWnh7SC', 'waylon@savisales.net', '2025-10-23 17:32:50', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', '90nouMcEJW4TY7RzFGdfb6aZBgDtvxgV8bGYQuPo8WGKlx4QO8GfM2z1GBPxx2TGnYLx906BVcz', 'K3mmqXNAQAZYhGIUtsK8WkXaTDVRs5yi3PYrajhCi8diIRT4NjCOnFxjgoTysAiBk20SWYbS3cokkh0WoVtPR30Etti5V6hmlT0D', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '80.85.245.241', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(148, 'UyAQLTUMQDhKwRTDWHhpLpC', 'uyaqltumqdhkwrtdwhhplpc148', '153', '$2y$10$uy5UdLYwc3GjnkzXD1uO/.h6r/y9F4tfwOh5UaAg09ycwDwvgUPrW', 'jessicazuberek@gmail.com', '2025-10-23 21:34:26', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'RQOhjyc6sbSgzh96v2kVG5uJcnFoYEuDjMaZQAdKBY5BEWx1KzqO1BZvgoBiDmoXJwmKmNwnrM5', 'rgWeVImsOmwVFYoBZwjgPIp4jfViosbG9kaAf295G3EKNnSJL2Bcrxn7hOZde0Y5Ud6G5fyrTtcY3dH0KKWFDJ8LebmeAHO7olOC', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '212.34.132.22', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL);
INSERT INTO `users` (`id`, `name`, `username`, `countries_id`, `password`, `email`, `date`, `avatar`, `cover`, `status`, `role`, `permission`, `remember_token`, `token`, `confirmation_code`, `paypal_account`, `payment_gateway`, `bank`, `featured`, `featured_date`, `about`, `story`, `profession`, `oauth_uid`, `oauth_provider`, `categories_id`, `website`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`, `price`, `balance`, `verified_id`, `address`, `city`, `zip`, `facebook`, `twitter`, `instagram`, `youtube`, `pinterest`, `github`, `last_seen`, `email_new_subscriber`, `plan`, `notify_new_subscriber`, `notify_liked_post`, `notify_commented_post`, `company`, `post_locked`, `ip`, `dark_mode`, `gender`, `birthdate`, `allow_download_files`, `language`, `free_subscription`, `wallet`, `tiktok`, `snapchat`, `paystack_plan`, `paystack_authorization_code`, `paystack_last4`, `paystack_exp`, `paystack_card_brand`, `notify_new_tip`, `hide_profile`, `hide_last_seen`, `last_login`, `hide_count_subscribers`, `hide_my_country`, `show_my_birthdate`, `notify_new_post`, `notify_email_new_post`, `custom_fee`, `hide_name`, `birthdate_changed`, `email_new_tip`, `email_new_ppv`, `notify_new_ppv`, `active_status_online`, `payoneer_account`, `zelle_account`, `notify_liked_comment`, `permissions`, `blocked_countries`, `two_factor_auth`, `notify_live_streaming`, `notify_mentions`, `stripe_connect_id`, `completed_stripe_onboarding`, `device_token`, `telegram`, `vk`, `twitch`, `discord`, `reddit`, `spotify`, `posts_privacy`, `document_id`, `crypto_wallet`, `threads`, `allow_live_streaming_private`, `price_live_streaming_private`, `allow_dm`, `welcome_message_new_subs`, `send_welcome_message`, `price_welcome_message`, `alias_mp`, `cvu`, `kick`, `email_new_message`, `allow_comments`, `custom_profit_referral`, `price_video_call`, `video_call_duration`, `notify_commented_reel`, `notify_liked_reel`, `price_audio_call`, `audio_call_duration`) VALUES
(149, 'VwFxnMeCJwmrhrBhAgJCG', 'vwfxnmecjwmrhrbhagjcg149', '153', '$2y$10$IZR0RIqTbTJ1zLMXov.Vfu7sPqJT3.DkIjaQ3tWyNUi2mfWMtPSrG', 'salesinfo@lswrep.com', '2025-10-24 01:06:19', 'default-1719637495.png', '', 'active', 'normal', 'none', '', '5noAl55IE2TAHhR4UfcgntFtQ1oVZpP65fHmtn03kkk55YbSonPA16iRlxkVyamP8j9Cteb14ea', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-10-24 01:06:59', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '91.84.111.136', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(150, 'hZvGbgAdFwnCBJPxKRKUBT', 'hzvgbgadfwncbjpxkrkubt150', '179', '$2y$10$utytz0qMiCSQwlriDlspCuDbEWRxPMqai3Qw6MM0zOD.NtBBxjeUi', 'jsanto@netsoftsolutions.com', '2025-10-24 04:33:37', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'vUYgUwmBDfNp00LEz2f6TaM0zs8SqFHf2aOwdoW3asHBtTj9sO2MemvUib9e4Lmqn6YZLQmbXEt', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-10-24 04:34:01', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '178.20.47.92', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(151, 'crDnTVPZxhetpgioxjvrNBfI', 'crdntvpzxhetpgioxjvrnbfi151', '153', '$2y$10$yvq74mxw4/1fSu4D6WGPh./LIMfIldW8cO3d101QRaRHp/a3vxDbi', 'mikevedder@kustomkey.com', '2025-10-24 06:26:57', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', '9pERUNix7v6Wiud0PRj5aqqtJBw79Er8op21vSRsnKnIy5MvXn7jyPSppzPEPhqTOTWT9WWm5fw', 'jT962RZk91SFauEbN2YtqlOqWHxqzYVBxO7VghgswjSO3DmeYQVEnjA0sqPuty5IA3TeSl2ppNClddQJFaeG6LrRXQzwWnFNVAcs', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '195.26.224.235', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(152, 'jiHMJFnXpgURonIRPl', 'jihmjfnxpguronirpl152', '153', '$2y$10$OuDqjYuosJnIvbgjBzFiOecaYbQUiHc7D3elbTGY39GdLPHmatyEW', 'accounts@fancam.com', '2025-10-24 12:14:46', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'cWPI4vGmNYX7W6miYrPpqcuvDtDIGA6aknD2ZeEsQ9fchGN3kntmbAkUJzYN92cojd1aWJh5l1g', 'yf1FV32PG5VkhMOtR2mASLUplRiVZlsgNZedvc7LQU6zCqP8iOsNLcS6CsRJeOrCtliIMqSaiekjsTgY2QsAzQK70IxGMN727Yad', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '185.157.214.24', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(153, 'WlVkXJOPBMeUzonroRTU', 'wlvkxjopbmeuzonrortu153', '153', '$2y$10$98fEBofORPAiDOW4caI0KucbQ9XtHL7ZBOPf1tqs8lNL.XttDnKS.', 'mstangcobralover@hotmail.com', '2025-10-24 18:51:21', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'xc065zzpUIz3e94Z0Isuyn8suozBPpOf7Mx9dWhhhhz4lsrdgCcqc7Xy5Le8PCSrGi9rdxN9Pjw', 'cYZY7x6wUQDAChIC4tjKyo3jXC4sjXI2jkXZYBWqZI6BbUrRD71w7JTbUvU6M4PgBeedOuP2oquk91AlxDGrOTXpVXzitxoJsdxk', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '195.26.224.235', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(154, 'eLccBwNojWVjzjyuWNHf', 'elccbwnojwvjzjyuwnhf154', '153', '$2y$10$zaf0t6ZeGkzQ7AcixdjvLOU8HIqDXsCPkrd8llKs.DIUJ5Jnniv1.', 'krista@cheeseboardcatering.com', '2025-10-24 23:02:05', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'd5RSOeDSR8I9aSEKZ1ZTGwXdd4Rxl9EWTKOmWL8Hd2ohPrLuXLUzAniOF88w4kYSWjEJzKrjXeV', 'GPpogVExGIGb3RfvqDQIDEdoYUdGpGvy9QOCT5tJ6GL6x5KVPmsu1cAtF3PwyDtUMqNPERySVTNQvlbM5okSsP3tUxTypcphOatw', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '195.26.224.235', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(155, 'fjHcYniFzgSGzKYEa', 'fjhcynifzgsgzkyea155', '153', '$2y$10$JRALgHj6N8lFiE1ZwQpsqOssqPeNM1qzy9/1qZnEU3i3rPKWQ0ykm', 'tlisenby@ctia.org', '2025-10-25 14:14:05', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'cW8OtBNdQBqol3x5pV0Fd78EEDpr6J5MQMLShSleAXZuOClnuehzlQg2DvvvwyVxqgFgr6jFvEF', 'N4TTm5R4Pv3b4MxsR9m96DK2c3xqO8XbZDTGPJTUDKWoquWX07e9fmBbE2P4gxvLLoQ8mxkFJ0AcTDz6nqiXrW0VpmXTGYTGOl24', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '212.34.135.52', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(156, 'xjzImsLgaRGzaqgIVznJFnJ', 'xjzimslgargzaqgivznjfnj156', '153', '$2y$10$OPDTCULF/llDVf758o1qrOXR/nc3sZnjurawP1wEBFtqPh.23c/NG', 'dcordie81@gmail.com', '2025-10-26 18:06:30', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', '0jLOiTqb6Ze7iq7B1Tf8YgT1hM8OGhUL9dYUTAL1N7gbiIGqZabMWFW4GxyzXjBItbvAu5w4D8u', 'BTePMRNNUduUtkkLlL36FvUCdpGUimLYxoFKfvd2mNxLmMcBRiDs3b7OubApMTVrZhf3kMwSYZ29J5M6lC0aTAOrAPS9LVSqf1ai', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '80.85.245.145', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(157, 'aiScDZIncQrHiUONIdJNrNzf', 'aiscdzincqrhiuonidjnrnzf157', '153', '$2y$10$LR/Ulv.FFZkqq4b35k.ZoeqycEhP3SQTjfhtzlKV7mvEpw/b/HQpy', 'leee@optoline.net', '2025-10-27 04:42:09', 'default-1719637495.png', '', 'active', 'normal', 'none', '', '0IQSpWNmqFO18mAnA5p99Ax19T0C2rGct9UY8BQTv33cSNjaLRV1L1xvAXLdkULNyE3SpxB9TA9', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '80.85.246.214', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(158, 'iIdzFVFXNtuWaTqZKpXkVRpw', 'iidzfvfxntuwatqzkpxkvrpw158', '153', '$2y$10$AkHbemHVlIOAKvSt0Pr2dODSGBSdPP2f8JJF6JExTABEf26vkYZTW', 'rishabhss.saini@gmail.com', '2025-10-27 10:06:45', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'rp8vZY1y8J1ZyoBVWj35LuLJk1Zem3r8bVbFywW8aoE9F2xH0nPF8IKjvF1LD7iZjirIm80L6Z7', '3Io5Y3qif5XNNnE9OHq9R0xr8gWgxe3lPseTzVwc33cYJJfsYaD7GQiWz1OkTCRLwTgQuUzsLm891KsNBMVd90HTYpmw7Vot2LNj', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '195.26.225.209', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(159, 'hIACPbUoSrooqjvZiacBEVnY', 'hiacpbuosrooqjvziacbevny159', '153', '$2y$10$33iwXvP7F/iuw/XOouOaDeUoS1IGHe56XRGuGO3.GMqtbZF34c7la', 'cokin@sportimeny.com', '2025-10-27 13:59:14', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'WiqHDZn9PFUQ9ZOGo3uj1wakBgBuNOI5EyDNjyMqpWMN56Hp3ZbwxthTu59k6cVpkutkeA7FAZU', '6FqPUJ40wPb0AwJQFR4EByv1kdA2f404MbBqbowlDJT3tT5VDWC1LW3WJ71KZA2Om4NNN0voG3abGvKN9V0ODqB9bMCJtHtegKtN', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '212.118.53.218', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(160, 'catal', 'catal160', '32', '$2y$10$fCrbeIKGAsgw9nrx5Pnh/e/yL1NQg03y91rMEVpgyMyAOl5lfquqC', 'aasdasd@gmaikl.com', '2025-10-28 16:31:20', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'jIWqs49WZZwjJkUtPmwPqclXiEHdqRbdIqmlH92Y3Of3p4i49puZ53nEMiqpc08ofOH5HYpq0Ro', 'F1phmof9k4oxWYN7t3vwAQG7xF9BDRWHnO6Vs1sdpsh8Li7j0VNYFeYPPzs7kCVouOsGGyUFJCIyd8HYKvszdCrwxcAr3dumu1xw', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gosta do meu conteúdo, considere apoiar. Obrigado pelo seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:984:c2b:4400:28ba:f5b3:339b:77ac', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(161, 'Roberto iggor', 'Ktal', '32', '$2y$10$d95rok0hwymf9uS8wwxdAO6kLYIJXbBQhdZ65ae/V/xnc/NeAILnK', 'ktal.assessoria@gmail.com', '2025-10-28 16:52:19', 'roberto161-16117616813284al6hrkoux.jpg', 'ktal-1611761681465x7q3e3or27.jpg', 'active', 'normal', 'none', '', 'B7hyJ85mrIBlttoFEAbeOLLTwp0DsvgFa2wvAHWVqxK8XJToAHAD5xQlQRpp81XAfyjkrxmanZk', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gosta do meu conteúdo, considere apoiar. Obrigado pelo seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', '', '', '71937000', '', '', '', '', '', '', '2025-10-28 16:58:07', 'yes', 'user_161', 'yes', 'yes', 'yes', '', 'yes', '2804:984:c2b:4400:28ba:f5b3:339b:77ac', 'off', '', '04/19/1992', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(162, 'Viviane vieira', 'viviane_loira', '32', '$2y$10$eV6RFSyppKs.J4CaaTIzcObNBzlAvo0uwrF4FXtTUXeB8QZatX5yK', 'vivianevieiracarvalho500@gmail.com', '2025-10-28 19:07:02', 'viviane162-1621761689432zgey9f48tp.jpg', 'viviane162-1621761689421qv5fppaip8.jpg', 'active', 'normal', 'none', 'MTluSANvqJvtIoECvh9r2wbKM2hnJkvsbFiac0KJoBPLItakDPqOEkGunxH3', 'kpsPx4zjT4dEHfUoZ1o0W8iqt3rP4VGlKBTu1VDcBASbKlh8EwRQUS7fTZzeUlZ1kM71YRqtKcn', '', '', 'Bank', 'Nubank 5503090704338311', 'no', NULL, '', 'Bem-vindo à minha página. Se você gosta do meu conteúdo, considere apoiar. Obrigado pelo seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', 'Novo horizonte', 'Machadinho', '', '', '', '', '', '', '', '2026-01-08 22:15:12', 'yes', 'user_162', 'yes', 'yes', 'yes', '', 'yes', '201.139.87.173', 'off', 'female', '05/08/1995', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, 'Seja bem vindo, estou doidinha pra ver você tirar minha calcinha 😋', 1, 5.99, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(163, 'Lucas Gonçalves de Araujo', 'lucas163', '32', '$2y$10$Ro6y7.95eT0ghF8Syz7RFOjrmfqUXU.TDKYrbsfX3YDCwMstM1WK.', 'lucasg101010@gmail.com', '2025-10-28 19:26:39', 'default-1719637495.png', '', 'active', 'normal', 'none', 'rVqEa4Jg4ERjl7LccNbSea8pXHBu6mkuMcg87pCn3ipBivMT2cPHOKvct9mX', '8SKnZ9RHjcz4xBBZm8iFJbLHnwY9gUgKNF9193ETPOcFDM7Qt2sXNct35UFqIRkvF6DLLXWdqE4', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gosta do meu conteúdo, considere apoiar. Obrigado pelo seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-10-28 19:29:52', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '45.226.242.46', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(164, 'Tiffany Gabriely', 'tiffany164', '32', '$2y$10$R0QqGg82LmXGYfmcRiNTpOTM4/JffdKoQqVRIa6qa8tlJurFaYkUi', 'pcintia938@gmail.com', '2025-10-29 08:49:51', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'QZAlIwZxZDzbelgnxbJ6QF8cvmoXhqMi1eEcHEpTaQTbiMmBBU1PiFXCtfItcNeDGfP7goNHP0C', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gosta do meu conteúdo, considere apoiar. Obrigado pelo seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-11-05 19:42:01', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:10dc:f0a7:e500:191:f81c:c083:f281', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(165, 'rfvlXrzlctQSrqtCozcY', 'rfvlxrzlctqsrqtcozcy165', '179', '$2y$10$o.ETSmoqn/iCpt7lVGSOTujqsV0FQHV.1hI0.rw1qIPFtJk.20FCO', 'asebozok387@gmail.com', '2025-11-13 10:59:01', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'lZwHDAGswFT5K6A6Rnto40CYg7jI319QOC4BuGStsToOYx4VyCw2SYEltRozqICyEm5EF7dRiZ1', 'QW5PlPOR5yIBxd8dyFEfZEgFB8v1fMs14EVrbw0EGwGWWpiAIu3rWzCMRggfNjK1Qt1hMgZrCSubZBbnsId9iV17DsGry8eSIH9M', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '195.2.81.171', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(166, 'IDaOgfCDtIQBFTUPGdme', 'idaogfcdtiqbftupgdme166', '153', '$2y$10$q7jqhaqZLv3d3kXn5jDjpOa.cKBmARhHvAauTlbeKK4elXpv3lZR.', 'todetibo10@gmail.com', '2025-11-17 03:46:02', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'M5Sbc1SQk4hAoYiZZ5LESgr2ufGpB6uW8Lh3Jnm2XReDZ3USoZkIe6hDunhaN6Bz2BqYXwCmyF8', 'tDV0u76WAhK9tG5vsaFlJUpYhCUnMW2j6mVKY9kEqp7zth1PgakgcmBEse0sTovCW9KrXSC337qqC25MbrhWpL2mXz5SAgatn1FV', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '212.34.154.131', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(167, 'pLaYUpTYucKtsgAOfuIE', 'playuptyucktsgaofuie167', '153', '$2y$10$57vPkTrPsb7Z54H.glK9be/Esok1OhLsxtss8uJeZq2I0obalmtd6', 'hayeqineke453@gmail.com', '2025-11-22 09:10:42', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'PLN9pdURnCjTLLrdmQGwUS1khZR3wDKe8dQ6EbBK53M94TStg6Fi0Imq2XxgNe7aitTJnPIzUsh', 'ozt8u8zb8ar3NWGgaB2W5cne5LzElCIINs43leYf92ePOxiqLYFJHal1n8ygKHA1GY6to6TvLdOaYBTlByfM1g3KaGpI0BtryE33', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '91.84.110.151', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(168, 'Eliardo Moura e silva', 'eliardo168', '32', '$2y$10$vkQTatD0NxWxPOdmTFAwpuiwpKz8mZ.qLRN2iQlXi5/F1VFqb924i', 'eliardomoura1999@gmail.com', '2025-11-25 07:56:43', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'JkmVPnl8vk2D7A3K8jEkt5bsiwF6dxGUDvC24vvBtNOK5OMggEZqVPjpfZr076Whv79CaFnYzUF', 'CIn2RS3Aa7fVnA1mTTJfx1oFmu9h5b2hXYn9Ehb4PQYUamhd7A1YgWoUCAJmpewTKMWJUbIRS1DtFGYfmimNEPCyEjlJlVNyFuqv', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gosta do meu conteúdo, considere apoiar. Obrigado pelo seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:14c:6572:4d38:876:9534:3882:ce47', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(169, 'Patrícia de Oliveira', 'patricia169', '32', '$2y$10$NlDHvaCxEo3IrJsIWxme7e/SZA7OvHovtVkEXu3CiPqJUvREuwU.q', 'patriciabeija268@gmail.com', '2025-12-18 14:09:39', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'r87FDiGmySJomBPY5Qc0H2ibtVvYOUHAlMcQtlAcICK1DpfHLWHmAWt6tskWDzOeaMinyrWaMOL', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gosta do meu conteúdo, considere apoiar. Obrigado pelo seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-12-18 14:12:38', 'yes', 'user_169', 'yes', 'yes', 'yes', '', 'yes', '177.125.49.100', 'off', 'female', '04/18/2006', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(170, 'Douglas Santos', 'douglas170', '32', '$2y$10$wph4HkOW66xJNtuEdbcj5e3nlwSTGVxpYuAvx7cD4vU84iveT0RaO', 'ds896476@gmail.com', '2025-12-21 21:28:01', 'default-1719637495.png', '', 'active', 'normal', 'none', 'jZhPxDdHpDEd0vkGWgJELnc9svqjdy7DUBGKHMH2H8RmpEkCKb7sKGgOlBBT', 'HTnBc9Zrx46I2xEvjIEfg8725Oq5Bc7TR981xeqLBbzamMxpMhlTxJHohW6HbCBZ0X8dsZqUBIu', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gosta do meu conteúdo, considere apoiar. Obrigado pelo seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2026-02-07 20:21:41', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '45.71.62.156', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(171, 'GIVALDO almeida', 'givaldo171', '32', '$2y$10$98q93YcTvp15gMpKHlRoteOViYG6VCNUe9OPTnMan2G54TRmYNMui', 'givaldoraimundo1996@gmail.com', '2025-12-23 14:58:45', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'vKevxaj0DBRsrdNI4XfWP1EEGtWsLrnpJKLjE1cJthjjqRlGfGq0dUKDnKLvY4oIRBA3Ptz3wBa', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gosta do meu conteúdo, considere apoiar. Obrigado pelo seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-12-23 15:00:23', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '131.100.251.2', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(172, 'Paulo Roberto Cordeiro', 'paulo172', '32', '$2y$10$DQcvpjSbNm5wqEQHM1XPxeoUaoZXqGrnYgFlk9t4EtSm1nanN2Jde', 'cordeiropauloroberto@gmail.com', '2025-12-23 19:05:47', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', 'bz7x3EIqpmfq6gENB2lwDTG0u4gANL9P61STjYDPn5goHYQDtRRJd1p0k2vYQDDBBPVMKH6O1xZ', 'HwRi8NtIIWoFwG32fe7KQKLY89VHTpStj0Ecn5uQHULFDZGNbSAhztrwcaJKwupNqpn76p4l2E3MMTZsdu8QapclF6vcWEv1DHo8', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gosta do meu conteúdo, considere apoiar. Obrigado pelo seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:288c:1050:c800:8213:c51d:5491:dff3', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(173, 'David', 'david173', '32', '$2y$10$dTFQGGykLqkpig1d.l1SluqLHTjXux.ItNHFb3J8BrmDLCY9U.Sg6', '55556b7d59@gmail.com', '2026-01-01 17:25:16', 'default-1719637495.png', '', 'pending', 'normal', 'none', '', '8ohaySeq6ULFBqiAQXMZh9QsemWSSlIOXvShhFXA5Qh6CGxTv5n3OcOk0ou2lnWaHjTV3eTf22R', '4tYTHLi9FgBNgRoLrBcftrXEYQMNTIBMIRFNYPNtZB9rQFNzAwsKceqz1cfLt3useQ9lZ2sY3OOypARyVewWfWyEsJpRYhwSSlyx', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gosta do meu conteúdo, considere apoiar. Obrigado pelo seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '45.232.197.129', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(174, 'Joao', 'joao174', '32', '$2y$10$1BBL9mjfaaHPUjULR.C7ce6/bkgODj4YKC8.0fYQI4z./XH89RlZy', 'bytefluxtechnology@gmail.com', '2026-01-01 17:32:40', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'zYWYEM3GJm7mYHugsumKHYDTMvDPAq62AuQQPneyQu4Tcq7PBxD44KzDQmatQVuK03S6ZuMgYbw', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gosta do meu conteúdo, considere apoiar. Obrigado pelo seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2026-01-01 17:34:45', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '45.232.197.129', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(175, 'jbkunuihniu', 'jbkunuihniu175', '32', '$2y$10$ao3TlpvnJJFd51MViHSccOG9EFSCqKr3BxQn3/HhmLxX32Xl80OP2', 'alefem.moreira@gmail.com', '2026-01-18 17:03:38', 'default-1719637495.png', '', 'active', 'normal', 'none', '', '05WlzwxT5tEZXjQ34KrUMkeqdvM4vgAJYn5ObGdbmE119NSutoyPF5p9mik1BVWUazjOwgyRtjj', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gosta do meu conteúdo, considere apoiar. Obrigado pelo seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2026-01-18 17:05:32', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '45.164.240.73', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(176, 'Fabrício mota de Oliveira', 'fabricio176', '32', '$2y$10$LgDRDm1QlFUhA/W5Y7EyUedtxjIrsCdG.VCEjICPvQb15hTIuT8wm', 'fabriciomotta405@gmail.com', '2026-02-16 12:05:29', 'fabricio176-1761771768811uw0cds6k1q.jpg', '', 'active', 'normal', 'none', 'TaWCjhRSsN9QU6ZgIiOst3uw6x0l8t2Nj394iT7LXHPscvxJNu235bzvLLyu', 'A19IP3LbTjL5aLkzRQVeDMMLZw3mrNft5xbohnshzJz0LbVZhceOzXE9aF5sCViN9f8HjRTsvK6', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gosta do meu conteúdo, considere apoiar. Obrigado pelo seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2026-02-22 21:53:27', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '177.155.203.4', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(177, 'Dominik Leandra', 'dominik177', '32', '$2y$10$R8wL2IsdqOE12o0e8pI8x.m5nIYQ5lPzHvnZstGoGcdpksCtLrH06', 'dominikleandra4@gmail.com', '2026-02-25 11:33:01', 'default-1719637495.png', '', 'active', 'normal', 'none', '', 'OOoToPPQ7pB1iRTIVawmR1dJRpV7Xezpv9KmOOEuILet424cJQ28al8XLQkT2uibhBU4BB4CNAo', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gosta do meu conteúdo, considere apoiar. Obrigado pelo seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2026-02-25 11:36:00', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:868:d043:ca7e:1ef:49d3:f78a:7c9f', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL),
(178, 'Douglas Santos', 'douglas178', '32', '$2y$10$w5/2TKh4NlqdYRwr60YBFO46K/odQ62AAYygUsN6rU04Vn3eH/ktG', 'dfd32021@gmail.com', '2026-03-03 18:42:29', 'default-1719637495.png', '', 'active', 'normal', 'none', '', '3rbnlXP2cpzVAJswJtNGi6uwCbu7Thd16JJL8QbxYxUKsnWLMrBAQKTWwCNrAN5GUCde1GoC0n9', '', '', '', '', 'no', NULL, '', 'Bem-vindo à minha página. Se você gosta do meu conteúdo, considere apoiar. Obrigado pelo seu apoio!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2026-03-03 18:47:26', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '2804:d6c:fff1:6a30:6881:3279:3153:a9f3', 'off', '', '', 'no', 'port', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '', '', 1, 1, 0, NULL, NULL, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `user_devices`
--

DROP TABLE IF EXISTS `user_devices`;
CREATE TABLE IF NOT EXISTS `user_devices` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `player_id` varchar(255) NOT NULL,
  `device_type` char(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_devices_player_id_unique` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `user_devices`
--

INSERT INTO `user_devices` (`id`, `user_id`, `player_id`, `device_type`, `created_at`, `updated_at`) VALUES
(1, 1, '652c8d5d-7686-4cda-9b7c-d2e929ae9ad6', '17', '2024-06-27 14:51:14', '2024-06-27 14:51:14');

-- --------------------------------------------------------

--
-- Estrutura para tabela `verification_requests`
--

DROP TABLE IF EXISTS `verification_requests`;
CREATE TABLE IF NOT EXISTS `verification_requests` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(150) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_reverse` varchar(100) DEFAULT NULL,
  `image_selfie` varchar(100) DEFAULT NULL,
  `status` enum('pending','approved') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `form_w9` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `verification_requests`
--

INSERT INTO `verification_requests` (`id`, `user_id`, `address`, `city`, `zip`, `image`, `image_reverse`, `image_selfie`, `status`, `created_at`, `form_w9`) VALUES
(1, 3, 'fghfgj', 'ghfhgf', '1432542', '31715999249ylknyamyybnpbpiflhtdfjdl7arspdsfpxu8qyqu.jpg', 'reverse-31715999249rawjs4vdaq3irstsmabiy91b1p9sbf9qwunfk13l.jpg', 'selfie-31715999249pcxhulbzy1wiw38ut07bbdyripklkhdfdumq0mx6.jpg', 'approved', '2024-05-18 02:27:29', ''),
(2, 5, 'Marrocos', 'Marrcoso', '21123342', '5171634705382obmtxetcbnnjv7mmhpsnntvqj0xxzc9umlvmjx.png', 'reverse-51716347053o6jkpdmqo19hallm7dbzw8pj2gqvaljgc4rjyccp.png', 'selfie-5171634705380ysmw8p7deoyc0sy9wzm4tplk0wyvwg59h6fjbh.png', 'approved', '2024-05-22 00:04:13', ''),
(3, 33, 'Sp 147,1', 'São Paulo', '', '331719371111tyonlfls4uvjtqjxzmkbt6c5fti92xutbjiwui01.jpg', 'reverse-331719371111lkkg9mobycqmxaceigxb7b3xfalj5zafwrh9yryd.jpg', 'selfie-331719371111iqrdosndozcxmqxuxkw3aif2mfmu0ogizk4rzbqw.jpg', 'approved', '2024-06-26 00:05:11', ''),
(4, 34, 'Quadra QMSW 4 Lote 06 Apto 22', 'Sudoeste', '', '341719371130brq912o3fmd1rqyiucrj2pizagbhfvwbcrff3was.jpg', 'reverse-341719371130i1vuww1tozcjxgqx69qlutjusixuatfwsp72zuyy.jpg', 'selfie-341719371130pj2ar4ydm4v1hnf1zmbicatqats4vpwdasqkybsd.jpg', 'approved', '2024-06-26 00:05:30', ''),
(5, 41, 'Rua Marajó Condomínio Belle Nature', 'Valparaíso de Goiás', '', '411719446614rsph0hphozabxpcq5ljfwung7auzm7itu3kibovj.jpeg', 'reverse-4117194466149j6dlvcziuy6iilqindon2gmfldwlwdt5t4kjirf.jpeg', 'selfie-411719446614xunhzsn9pyw9wvsmdmarkybzhldt93mogchdhiuo.jpg', 'approved', '2024-06-26 21:03:34', ''),
(6, 45, 'Rua 22 Condominio Belle stanza', 'Valparaiso de Goiás', '', '451719493083zogs8qdegqsejzj135s1weuhjeoziz8fbrw1tvdu.jpeg', 'reverse-451719493083xfoqzlc0xcr4trlgdwzvnemcglzu25h6hvgetwzv.jpg', 'selfie-451719493083xijhms3x56blbpazk4q21037da2ir0kdj2mlzmws.jpg', 'approved', '2024-06-27 09:58:03', ''),
(9, 62, 'Ar 12 conjunto 17 casa 1', 'Sobradinho', '', '621738279785muzwsagsbgr5dflcrnqnczanqoznzxxjxvpg74gt.jpg', 'reverse-621738279785jzquvsodrzofvzxdwh3qbcsxoaoad92ncblyplfa.jpg', 'selfie-621738279785yoqegepkjfgskudnswemoi4rojoxw2xva5ii2gzn.jpg', 'approved', '2025-01-30 20:29:45', ''),
(11, 71, 'Qr 116 conjunto 05 casa 05', 'Samambaia Sul', '', '711738697076enjhn0idsioblb5zokhgediw3nrefs5zsbnuo5rb.jpeg', 'reverse-711738697076uzp9zubz9h0a15ycnfoatmwu2wtfo2te0i6n8xqa.jpeg', 'selfie-711738697076xn5fz1fvljfyoukma9ulotr9cgbi1ommmblmwjaq.jpg', 'approved', '2025-02-04 16:24:36', ''),
(12, 162, 'Novo horizonte', 'Machadinho', '', '1621761690115h9dkwae2ko7fjlfjfauvrccr952onkbhl8igewjr.jpg', 'reverse-1621761690115cchr91vg0g1duam9mbwe6lz9wrpt0hvkn0aitrrl.jpg', 'selfie-16217616901151wm8xsgfddb3d9zqnw8gkmzoho9muvkksu97nkqo.jpg', 'approved', '2025-10-28 19:21:55', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `video_calls`
--

DROP TABLE IF EXISTS `video_calls`;
CREATE TABLE IF NOT EXISTS `video_calls` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `buyer_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'calling',
  `minutes` int(10) UNSIGNED NOT NULL,
  `token` varchar(200) DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `joined_at` timestamp NULL DEFAULT NULL,
  `ended_at` timestamp NULL DEFAULT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seller_id` (`seller_id`),
  KEY `buyer_id` (`buyer_id`),
  KEY `status` (`status`),
  KEY `token` (`token`),
  KEY `joined_at` (`joined_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `video_views`
--

DROP TABLE IF EXISTS `video_views`;
CREATE TABLE IF NOT EXISTS `video_views` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `updates_id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `video_views_user_id_index` (`user_id`),
  KEY `video_views_updates_id_index` (`updates_id`),
  KEY `video_views_ip_index` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=1127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `video_views`
--

INSERT INTO `video_views` (`id`, `user_id`, `updates_id`, `ip`, `created_at`, `updated_at`) VALUES
(1, 2, 16, '2804:984:57:da00:88c:f4f4:cfae:e341', '2024-05-24 21:19:18', '2024-05-24 21:19:18'),
(2, 2, 17, '2804:984:57:da00:88c:f4f4:cfae:e341', '2024-05-24 21:19:30', '2024-05-24 21:19:30'),
(3, 2, 18, '2804:984:57:da00:88c:f4f4:cfae:e341', '2024-05-24 21:19:42', '2024-05-24 21:19:42'),
(4, 2, 20, '2804:984:57:da00:88c:f4f4:cfae:e341', '2024-05-24 21:20:06', '2024-05-24 21:20:06'),
(5, 2, 21, '2804:984:57:da00:88c:f4f4:cfae:e341', '2024-05-24 21:20:13', '2024-05-24 21:20:13'),
(6, 2, 22, '2804:984:57:da00:88c:f4f4:cfae:e341', '2024-05-24 21:20:21', '2024-05-24 21:20:21'),
(7, 1, 21, '45.184.71.230', '2024-05-29 16:59:12', '2024-05-29 16:59:12'),
(8, 1, 20, '2804:7f74:9df:5900:c547:be9e:10ea:fced', '2024-05-30 10:40:44', '2024-05-30 10:40:44'),
(9, 1, 16, '2804:7f74:9df:5900:c547:be9e:10ea:fced', '2024-05-30 10:40:53', '2024-05-30 10:40:53'),
(10, 17, 22, '2804:389:a2a4:56bc:bc02:58bc:e951:bcae', '2024-05-30 17:36:22', '2024-05-30 17:36:22'),
(11, 17, 21, '2804:389:a2a4:56bc:bc02:58bc:e951:bcae', '2024-05-30 17:36:37', '2024-05-30 17:36:37'),
(12, 17, 16, '2804:389:a2a4:56bc:bc02:58bc:e951:bcae', '2024-05-30 17:38:03', '2024-05-30 17:38:03'),
(13, 17, 18, '2804:389:a2a4:56bc:bc02:58bc:e951:bcae', '2024-05-30 17:46:30', '2024-05-30 17:46:30'),
(14, 17, 20, '45.184.70.248', '2024-06-04 13:22:02', '2024-06-04 13:22:02'),
(15, 17, 19, '45.184.70.248', '2024-06-04 13:22:18', '2024-06-04 13:22:18'),
(16, 17, 17, '45.184.70.248', '2024-06-05 16:38:54', '2024-06-05 16:38:54'),
(17, 1, 91, '45.184.68.231', '2024-06-28 15:54:51', '2024-06-28 15:54:51'),
(18, 17, 91, '45.184.68.231', '2024-07-01 21:10:06', '2024-07-01 21:10:06'),
(19, 44, 91, '45.184.69.250', '2024-08-06 15:17:09', '2024-08-06 15:17:09'),
(20, 0, 93, '138.97.20.153', '2025-01-17 20:15:15', '2025-01-17 20:15:15'),
(21, 0, 93, '2804:18:1102:73f2:c0ad:6cb2:f18d:91e2', '2025-01-21 11:28:21', '2025-01-21 11:28:21'),
(22, 0, 93, '2804:18:6830:12d:1:0:bbf7:4a2d', '2025-01-27 17:58:02', '2025-01-27 17:58:02'),
(23, 61, 93, '2804:389:a291:bcc5:585a:bee7:6a6c:3f08', '2025-01-30 20:19:49', '2025-01-30 20:19:49'),
(24, 1, 95, '2804:1b2:10c0:ccff:553d:1677:bb0c:7942', '2025-01-30 21:58:31', '2025-01-30 21:58:31'),
(25, 1, 96, '2804:1b2:10c0:ccff:553d:1677:bb0c:7942', '2025-01-30 21:58:42', '2025-01-30 21:58:42'),
(26, 1, 97, '2804:1b2:10c0:ccff:553d:1677:bb0c:7942', '2025-01-30 21:59:31', '2025-01-30 21:59:31'),
(27, 63, 93, '2804:214:819f:291a:c3:3b19:e758:2b51', '2025-02-01 07:20:29', '2025-02-01 07:20:29'),
(28, 65, 93, '191.25.195.137', '2025-02-02 04:02:35', '2025-02-02 04:02:35'),
(29, 66, 93, '2a02:26f7:e502:5802:0:35aa:38e4:5bd4', '2025-02-03 00:14:12', '2025-02-03 00:14:12'),
(30, 0, 101, '2804:1b2:10c0:ccff:53b:dce8:9736:4b61', '2025-02-04 02:48:36', '2025-02-04 02:48:36'),
(31, 0, 101, '2804:d59:8707:5300:f830:f24b:2060:5a9a', '2025-02-04 03:10:23', '2025-02-04 03:10:23'),
(32, 0, 101, '2804:1b2:10c0:ccff:b946:a0f1:ee86:cbdb', '2025-02-04 03:30:56', '2025-02-04 03:30:56'),
(33, 0, 101, '191.217.149.143', '2025-02-04 05:29:07', '2025-02-04 05:29:07'),
(34, 0, 101, '85.113.92.114', '2025-02-04 06:20:47', '2025-02-04 06:20:47'),
(35, 0, 101, '2804:214:8821:9a71:1820:f752:8e01:2461', '2025-02-04 06:33:51', '2025-02-04 06:33:51'),
(36, 0, 101, '189.6.6.17', '2025-02-04 06:58:09', '2025-02-04 06:58:09'),
(37, 0, 101, '2804:214:4103:dc0:addc:54c3:4211:463c', '2025-02-04 07:15:01', '2025-02-04 07:15:01'),
(38, 0, 101, '201.2.7.49', '2025-02-04 07:19:08', '2025-02-04 07:19:08'),
(39, 0, 101, '2804:14c:65d3:4852:8d12:c12a:660e:1426', '2025-02-04 07:40:29', '2025-02-04 07:40:29'),
(40, 0, 101, '2804:14c:65d6:4462:d588:f7fa:e9ba:b68b', '2025-02-04 07:43:35', '2025-02-04 07:43:35'),
(41, 0, 101, '2804:d59:8495:3b00:dd9:e20b:6eff:ffff', '2025-02-04 07:56:44', '2025-02-04 07:56:44'),
(42, 0, 101, '2804:10b4:199:7600:54cf:f5b:d656:9756', '2025-02-04 08:26:25', '2025-02-04 08:26:25'),
(43, 0, 101, '2804:214:86b8:5156:fc8d:41ff:feb8:7295', '2025-02-04 08:38:51', '2025-02-04 08:38:51'),
(44, 0, 101, '2804:d59:a65b:df00:cc2b:c2df:198e:692b', '2025-02-04 08:39:06', '2025-02-04 08:39:06'),
(45, 0, 101, '2804:49b0:674:b300:9210:9500:f04a:b693', '2025-02-04 08:48:28', '2025-02-04 08:48:28'),
(46, 0, 101, '2804:14c:6591:404c:c0bf:d4ba:a65e:93dc', '2025-02-04 08:57:14', '2025-02-04 08:57:14'),
(47, 0, 101, '2804:14c:658f:43d1:6c80:e4cc:fe63:f82', '2025-02-04 09:16:07', '2025-02-04 09:16:07'),
(48, 0, 101, '166.0.196.170', '2025-02-04 09:18:42', '2025-02-04 09:18:42'),
(49, 0, 101, '192.145.212.237', '2025-02-04 09:19:55', '2025-02-04 09:19:55'),
(50, 0, 101, '177.174.217.236', '2025-02-04 09:29:25', '2025-02-04 09:29:25'),
(51, 0, 101, '2804:1b2:1846:88c0:95f4:771d:732e:36e7', '2025-02-04 09:38:10', '2025-02-04 09:38:10'),
(52, 0, 101, '191.7.207.165', '2025-02-04 09:45:49', '2025-02-04 09:45:49'),
(53, 0, 101, '2804:8aa4:333c:e600:44c1:443f:bab6:9974', '2025-02-04 10:01:22', '2025-02-04 10:01:22'),
(54, 0, 101, '2804:14c:65d7:9191:f517:196d:b1f:a6ce', '2025-02-04 10:14:50', '2025-02-04 10:14:50'),
(55, 0, 101, '45.234.197.168', '2025-02-04 10:30:10', '2025-02-04 10:30:10'),
(56, 0, 93, '2804:14c:658f:8364:f036:b88d:43d8:165c', '2025-02-04 10:55:33', '2025-02-04 10:55:33'),
(57, 0, 101, '201.7.69.55', '2025-02-04 10:58:44', '2025-02-04 10:58:44'),
(58, 0, 101, '2804:d56:204:ed00:821:e3d9:e1ad:114f', '2025-02-04 11:08:37', '2025-02-04 11:08:37'),
(59, 0, 101, '2804:8aa4:3e09:c800:9a1:d924:636d:aec5', '2025-02-04 11:17:07', '2025-02-04 11:17:07'),
(60, 0, 101, '2804:14c:6583:508c:c9fe:6ada:be07:90fb', '2025-02-04 11:23:12', '2025-02-04 11:23:12'),
(61, 0, 101, '2804:389:a285:3d2c:c174:5568:f0b0:23e5', '2025-02-04 12:00:02', '2025-02-04 12:00:02'),
(62, 0, 101, '2804:1874:912b:eb00:75e3:631f:d0aa:c889', '2025-02-04 12:09:52', '2025-02-04 12:09:52'),
(63, 0, 101, '2804:18:105:adfb:200f:e55f:c59f:5424', '2025-02-04 12:57:59', '2025-02-04 12:57:59'),
(64, 0, 101, '2804:18:1100:ac75:d78:74c3:4752:8de8', '2025-02-04 13:01:29', '2025-02-04 13:01:29'),
(65, 71, 101, '2804:1b2:1081:3016:709d:bed1:e38:57c3', '2025-02-04 13:12:47', '2025-02-04 13:12:47'),
(66, 71, 93, '2804:1b2:1081:3016:709d:bed1:e38:57c3', '2025-02-04 13:13:08', '2025-02-04 13:13:08'),
(67, 0, 101, '2804:14c:65c4:4068:701b:3f59:3b60:3dd7', '2025-02-04 13:36:20', '2025-02-04 13:36:20'),
(68, 0, 101, '179.214.69.154', '2025-02-04 13:36:26', '2025-02-04 13:36:26'),
(69, 0, 101, '2804:14c:65f2:8056:f517:196d:b1f:a6ce', '2025-02-04 14:55:46', '2025-02-04 14:55:46'),
(70, 0, 101, '2804:18:117:94bb:1821:7ab:51bf:662', '2025-02-04 15:48:57', '2025-02-04 15:48:57'),
(71, 0, 101, '2804:2664:41a7:8469:19cf:ad03:c003:af2d', '2025-02-04 15:54:55', '2025-02-04 15:54:55'),
(72, 1, 102, '2804:1b2:10c0:ccff:53b:dce8:9736:4b61', '2025-02-04 17:02:43', '2025-02-04 17:02:43'),
(73, 0, 101, '2804:214:86a4:9d7f:1:0:b178:31c6', '2025-02-04 17:03:48', '2025-02-04 17:03:48'),
(74, 0, 101, '2804:14c:65d6:4462:9dfd:c174:85b1:733f', '2025-02-04 17:38:35', '2025-02-04 17:38:35'),
(75, 0, 101, '2804:4b7c:127b:e900:10ac:4e8b:afdc:3812', '2025-02-04 17:47:02', '2025-02-04 17:47:02'),
(76, 0, 101, '2804:14c:6583:42ba:e838:1bce:b9d3:fc68', '2025-02-04 19:04:21', '2025-02-04 19:04:21'),
(77, 0, 101, '2804:389:a3f2:140b:264:e6b1:8e08:d2de', '2025-02-04 19:11:16', '2025-02-04 19:11:16'),
(78, 72, 93, '2804:389:a3f2:140b:264:e6b1:8e08:d2de', '2025-02-04 19:17:34', '2025-02-04 19:17:34'),
(79, 72, 101, '2804:389:a3f2:140b:264:e6b1:8e08:d2de', '2025-02-04 19:18:06', '2025-02-04 19:18:06'),
(80, 0, 101, '2804:18:896:2e03:1821:1ace:38c9:cb67', '2025-02-04 19:20:05', '2025-02-04 19:20:05'),
(81, 0, 101, '2804:14c:65d7:7ff7:a9b3:4be4:bae7:6ac8', '2025-02-04 20:00:48', '2025-02-04 20:00:48'),
(82, 0, 101, '2804:389:a2b0:2e49:7095:3b04:a4c5:1ad8', '2025-02-04 20:27:58', '2025-02-04 20:27:58'),
(83, 0, 101, '45.184.68.222', '2025-02-04 21:31:41', '2025-02-04 21:31:41'),
(84, 0, 101, '2804:14c:65f3:8425:4cd7:19e3:3694:6fec', '2025-02-04 22:07:25', '2025-02-04 22:07:25'),
(85, 0, 101, '2804:7f74:be4:7d00:2c6c:40b:ffa0:ea8d', '2025-02-04 22:55:33', '2025-02-04 22:55:33'),
(86, 0, 93, '2804:14c:65a1:4604:50a8:6a80:2105:bd7e', '2025-02-05 00:37:28', '2025-02-05 00:37:28'),
(87, 0, 101, '2804:14c:65a1:4604:50a8:6a80:2105:bd7e', '2025-02-05 00:39:13', '2025-02-05 00:39:13'),
(88, 0, 101, '2804:14c:65d7:814f:e46e:2edf:b2ea:238', '2025-02-05 00:43:21', '2025-02-05 00:43:21'),
(89, 0, 93, '138.0.245.46', '2025-02-05 03:58:38', '2025-02-05 03:58:38'),
(90, 0, 101, '2804:14c:6580:4c95:65d2:f49b:1b98:fb05', '2025-02-05 07:49:58', '2025-02-05 07:49:58'),
(91, 0, 101, '191.217.62.223', '2025-02-05 08:11:54', '2025-02-05 08:11:54'),
(92, 0, 101, '2804:14c:65d7:8290:39df:963:b72d:2537', '2025-02-05 11:18:14', '2025-02-05 11:18:14'),
(93, 0, 101, '2804:18:1102:df60:1821:45ce:9c07:a602', '2025-02-05 13:26:32', '2025-02-05 13:26:32'),
(94, 0, 101, '2804:14c:65d7:8290:7897:7ac5:76a9:edea', '2025-02-05 13:56:46', '2025-02-05 13:56:46'),
(95, 75, 93, '2804:14c:6591:8c25:32:f778:490c:911b', '2025-02-05 14:53:05', '2025-02-05 14:53:05'),
(96, 0, 101, '2804:8aa4:e00c:e300:ade0:1b32:a490:89bf', '2025-02-05 15:32:08', '2025-02-05 15:32:08'),
(97, 0, 101, '179.255.125.105', '2025-02-05 17:04:13', '2025-02-05 17:04:13'),
(98, 0, 101, '2804:14c:65d7:8290:2981:2ede:a47e:40ab', '2025-02-05 17:29:05', '2025-02-05 17:29:05'),
(99, 0, 101, '2804:8aa4:e032:2e00:2054:c379:4d83:b443', '2025-02-05 17:36:20', '2025-02-05 17:36:20'),
(100, 0, 101, '2804:389:a3e7:f4d0:4f7:f191:dfea:184a', '2025-02-05 18:51:21', '2025-02-05 18:51:21'),
(101, 0, 101, '2804:18:110a:c1c8:72cd:7f5f:5615:ea74', '2025-02-05 18:54:14', '2025-02-05 18:54:14'),
(102, 0, 101, '2804:214:8823:9bbc:59ee:7d9c:75a4:afc0', '2025-02-05 19:00:34', '2025-02-05 19:00:34'),
(103, 0, 101, '2804:389:a3e0:4719:bc2d:da6e:e85d:a3f4', '2025-02-05 19:22:41', '2025-02-05 19:22:41'),
(104, 0, 101, '191.56.59.30', '2025-02-05 19:56:23', '2025-02-05 19:56:23'),
(105, 0, 101, '2804:18:103:5e79:6d85:93af:fb0:1bd3', '2025-02-05 20:07:43', '2025-02-05 20:07:43'),
(106, 0, 101, '2804:389:a3df:1b9c:fd20:f591:d0ec:ee48', '2025-02-05 20:10:24', '2025-02-05 20:10:24'),
(107, 0, 101, '2804:79c8:204:f200:edcc:f5de:7155:601e', '2025-02-05 20:32:21', '2025-02-05 20:32:21'),
(108, 0, 101, '2804:389:a2b6:e23f:a3d4:d95:a757:d28a', '2025-02-05 20:42:31', '2025-02-05 20:42:31'),
(109, 0, 101, '2804:389:a3dc:dbd1:4982:a4b8:ba46:875a', '2025-02-05 21:08:32', '2025-02-05 21:08:32'),
(110, 0, 101, '2804:389:a3c0:feb1:60ee:55ff:a6a2:86c3', '2025-02-05 21:09:27', '2025-02-05 21:09:27'),
(111, 0, 101, '2804:389:a286:3624:6c1c:b5c7:452b:709c', '2025-02-05 21:14:58', '2025-02-05 21:14:58'),
(112, 0, 101, '2804:389:a3e6:98c7:8520:c6ef:6ac9:8296', '2025-02-05 21:22:27', '2025-02-05 21:22:27'),
(113, 0, 101, '170.84.27.89', '2025-02-05 21:22:42', '2025-02-05 21:22:42'),
(114, 0, 101, '2804:389:a3d0:3327:1:4aac:afeb:c813', '2025-02-05 21:38:29', '2025-02-05 21:38:29'),
(115, 0, 101, '2804:18:1101:7e3:1821:6641:cdde:dfdb', '2025-02-05 21:47:50', '2025-02-05 21:47:50'),
(116, 0, 101, '2804:389:a3f6:c55a:a8a5:e5ff:fe67:fa0b', '2025-02-05 21:50:03', '2025-02-05 21:50:03'),
(117, 0, 101, '2804:18:1107:758d:1821:6725:b63a:edf4', '2025-02-05 21:54:18', '2025-02-05 21:54:18'),
(118, 0, 101, '187.43.160.174', '2025-02-05 21:57:49', '2025-02-05 21:57:49'),
(119, 0, 101, '2804:389:a283:22c3:e915:1699:7eff:8c91', '2025-02-05 22:11:12', '2025-02-05 22:11:12'),
(120, 0, 101, '2804:14c:658f:8f79:7d47:4bfe:f1d9:2067', '2025-02-05 22:49:51', '2025-02-05 22:49:51'),
(121, 0, 101, '2804:1b2:1081:f36b:6cfb:f807:b047:4be5', '2025-02-05 23:35:15', '2025-02-05 23:35:15'),
(122, 0, 101, '2804:214:8010:1c18:b2e2:ceba:c25:ca94', '2025-02-05 23:41:19', '2025-02-05 23:41:19'),
(123, 0, 101, '187.84.182.42', '2025-02-06 00:01:37', '2025-02-06 00:01:37'),
(124, 0, 101, '179.214.70.254', '2025-02-06 00:28:36', '2025-02-06 00:28:36'),
(125, 0, 101, '201.48.10.129', '2025-02-06 00:43:33', '2025-02-06 00:43:33'),
(126, 77, 101, '177.51.62.125', '2025-02-06 01:11:39', '2025-02-06 01:11:39'),
(127, 0, 101, '2804:7f3:858f:f38a:1910:175:94c8:e8d4', '2025-02-06 02:13:43', '2025-02-06 02:13:43'),
(128, 0, 101, '2804:1b2:10c0:8fc8:709a:c027:d093:e100', '2025-02-06 07:39:26', '2025-02-06 07:39:26'),
(129, 0, 101, '45.230.85.115', '2025-02-06 07:48:08', '2025-02-06 07:48:08'),
(130, 0, 101, '186.195.35.218', '2025-02-06 07:53:38', '2025-02-06 07:53:38'),
(131, 0, 101, '134.65.230.49', '2025-02-06 08:08:17', '2025-02-06 08:08:17'),
(132, 0, 101, '2804:d59:a43a:5c00:f41a:8ef2:5daa:5765', '2025-02-06 08:27:14', '2025-02-06 08:27:14'),
(133, 0, 101, '179.214.70.85', '2025-02-06 08:54:49', '2025-02-06 08:54:49'),
(134, 0, 101, '2804:7f7:3000:630c:9474:2091:7455:b44c', '2025-02-06 09:22:33', '2025-02-06 09:22:33'),
(135, 0, 101, '2804:389:a282:c42f:52d:f323:ec4:747f', '2025-02-06 09:25:55', '2025-02-06 09:25:55'),
(136, 0, 101, '2804:389:a2a4:7541:b016:7db7:5c75:788', '2025-02-06 09:32:42', '2025-02-06 09:32:42'),
(137, 0, 101, '2804:2904:1103:1273:4836:b02f:814b:b809', '2025-02-06 10:14:52', '2025-02-06 10:14:52'),
(138, 0, 101, '2804:14c:65d3:402a:a02b:7ecd:ecb7:2f9a', '2025-02-06 11:11:08', '2025-02-06 11:11:08'),
(139, 0, 101, '2804:7f74:b00:155b:40fd:5cd2:2309:45b7', '2025-02-06 11:15:59', '2025-02-06 11:15:59'),
(140, 0, 101, '2804:389:a2a6:3275:6196:bdd6:58ce:1919', '2025-02-06 11:50:29', '2025-02-06 11:50:29'),
(141, 0, 101, '189.76.171.52', '2025-02-06 12:12:26', '2025-02-06 12:12:26'),
(142, 0, 101, '2804:214:8821:eb04:1821:a1ed:9cf9:e9e5', '2025-02-06 12:43:02', '2025-02-06 12:43:02'),
(143, 0, 101, '2804:8aa4:333b:3400:9cc4:24d0:4a67:4822', '2025-02-06 13:02:00', '2025-02-06 13:02:00'),
(144, 0, 101, '2804:389:a3f9:9012:3873:af20:a8ee:f73d', '2025-02-06 13:02:16', '2025-02-06 13:02:16'),
(145, 0, 101, '2804:d59:8780:e200:40ac:3feb:de80:c05b', '2025-02-06 13:02:40', '2025-02-06 13:02:40'),
(146, 0, 101, '2804:7f74:b71:800:d802:3e53:c45b:4f96', '2025-02-06 13:03:33', '2025-02-06 13:03:33'),
(147, 0, 101, '45.184.68.224', '2025-02-06 13:11:22', '2025-02-06 13:11:22'),
(148, 0, 101, '2804:8aa4:3337:4900:382e:51ba:3209:5108', '2025-02-06 13:23:55', '2025-02-06 13:23:55'),
(149, 0, 101, '2804:65c0:301:8bb7:cfac:b8f8:a00a:5696', '2025-02-06 13:24:29', '2025-02-06 13:24:29'),
(150, 0, 101, '179.214.69.133', '2025-02-06 13:58:49', '2025-02-06 13:58:49'),
(151, 0, 101, '200.0.34.30', '2025-02-06 14:11:59', '2025-02-06 14:11:59'),
(152, 0, 101, '189.115.244.106', '2025-02-06 14:50:50', '2025-02-06 14:50:50'),
(153, 78, 101, '189.115.244.106', '2025-02-06 14:53:42', '2025-02-06 14:53:42'),
(154, 0, 101, '191.58.152.154', '2025-02-06 15:18:43', '2025-02-06 15:18:43'),
(155, 0, 101, '191.217.67.18', '2025-02-06 15:48:17', '2025-02-06 15:48:17'),
(156, 0, 101, '201.48.245.230', '2025-02-06 15:51:28', '2025-02-06 15:51:28'),
(157, 0, 93, '2804:214:86bc:3b41:bda6:3e8e:614a:500c', '2025-02-06 16:27:59', '2025-02-06 16:27:59'),
(158, 0, 101, '2804:214:8823:8749:794c:23aa:862c:7752', '2025-02-06 17:51:35', '2025-02-06 17:51:35'),
(159, 0, 101, '2804:214:86b9:8d82:5c49:a2ff:fe52:c784', '2025-02-06 18:23:53', '2025-02-06 18:23:53'),
(160, 0, 101, '177.174.217.67', '2025-02-06 19:41:01', '2025-02-06 19:41:01'),
(161, 0, 101, '189.85.95.176', '2025-02-06 20:47:26', '2025-02-06 20:47:26'),
(162, 0, 101, '2804:748:3:1d40::2155:f391', '2025-02-06 21:03:58', '2025-02-06 21:03:58'),
(163, 0, 101, '179.127.250.236', '2025-02-06 21:11:07', '2025-02-06 21:11:07'),
(164, 0, 101, '2804:18:110a:f75d:35f7:72fb:b822:e64c', '2025-02-06 22:03:14', '2025-02-06 22:03:14'),
(165, 0, 101, '2804:14c:65d6:4462:f9ac:1c4d:65b2:62fc', '2025-02-06 23:25:46', '2025-02-06 23:25:46'),
(166, 0, 101, '2804:1b3:6182:324c:4d1d:5d0c:699b:3cbb', '2025-02-06 23:36:50', '2025-02-06 23:36:50'),
(167, 0, 101, '2804:214:86bc:cb58:708c:e895:8743:ec5a', '2025-02-06 23:38:15', '2025-02-06 23:38:15'),
(168, 0, 101, '191.202.7.102', '2025-02-07 02:17:52', '2025-02-07 02:17:52'),
(169, 0, 101, '191.56.58.174', '2025-02-07 02:42:16', '2025-02-07 02:42:16'),
(170, 0, 101, '177.158.156.122', '2025-02-07 03:08:03', '2025-02-07 03:08:03'),
(171, 79, 101, '186.209.191.154', '2025-02-07 03:21:27', '2025-02-07 03:21:27'),
(172, 0, 101, '2804:d59:9b62:c900:cb1:8dca:1c09:b8e1', '2025-02-07 04:32:08', '2025-02-07 04:32:08'),
(173, 0, 101, '2804:4b7c:127b:e900:9035:ddbf:9903:76ad', '2025-02-07 04:59:05', '2025-02-07 04:59:05'),
(174, 0, 101, '189.63.28.191', '2025-02-07 05:36:13', '2025-02-07 05:36:13'),
(175, 0, 101, '45.176.161.134', '2025-02-07 06:24:15', '2025-02-07 06:24:15'),
(176, 0, 101, '2804:984:5a06:4e00:fc5c:6649:fe76:5e29', '2025-02-07 06:30:11', '2025-02-07 06:30:11'),
(177, 0, 101, '2804:d59:a6d1:8500:c195:2135:a00c:750', '2025-02-07 06:51:11', '2025-02-07 06:51:11'),
(178, 0, 101, '2804:7f74:b42:5e00:581:ff68:b734:87bf', '2025-02-07 06:51:23', '2025-02-07 06:51:23'),
(179, 0, 101, '2804:389:a3d1:d599:1054:d982:b723:3697', '2025-02-07 06:56:43', '2025-02-07 06:56:43'),
(180, 0, 101, '2804:14c:85d1:4a8c:fd53:928:3480:dfd4', '2025-02-07 07:12:02', '2025-02-07 07:12:02'),
(181, 0, 101, '2804:18:1100:a7e6:11eb:1cfa:e17f:cef6', '2025-02-07 07:22:43', '2025-02-07 07:22:43'),
(182, 0, 101, '2804:14c:656f:413e:d429:e1ff:6e8b:38af', '2025-02-07 07:43:23', '2025-02-07 07:43:23'),
(183, 0, 101, '2804:14c:65a7:46f6:b913:6ff2:b3fb:399d', '2025-02-07 07:50:42', '2025-02-07 07:50:42'),
(184, 0, 101, '2804:18:894:123:7dd9:7935:2077:e032', '2025-02-07 07:57:35', '2025-02-07 07:57:35'),
(185, 0, 101, '168.228.200.10', '2025-02-07 08:10:56', '2025-02-07 08:10:56'),
(186, 0, 101, '179.76.55.107', '2025-02-07 08:12:15', '2025-02-07 08:12:15'),
(187, 0, 101, '2804:389:a2b0:99cf:a870:a7ff:fe5a:c9b', '2025-02-07 08:51:47', '2025-02-07 08:51:47'),
(188, 0, 101, '2804:3a44:8303:881b:6c0f:da0a:e9da:4a59', '2025-02-07 09:49:08', '2025-02-07 09:49:08'),
(189, 0, 101, '179.127.250.16', '2025-02-07 10:18:42', '2025-02-07 10:18:42'),
(190, 0, 101, '2804:389:a2b5:c538:5ce9:dfb0:49b8:cb3', '2025-02-07 11:10:47', '2025-02-07 11:10:47'),
(191, 0, 101, '186.250.245.134', '2025-02-07 11:19:07', '2025-02-07 11:19:07'),
(192, 0, 101, '2804:214:86b8:52ec:f4cd:ac1:67c6:2d22', '2025-02-07 11:58:02', '2025-02-07 11:58:02'),
(193, 0, 101, '2804:214:86b6:c3f6:b97c:fd56:fde2:9345', '2025-02-07 13:12:44', '2025-02-07 13:12:44'),
(194, 0, 101, '2804:14c:6590:92df:d02:1ddc:be2f:a718', '2025-02-07 13:16:37', '2025-02-07 13:16:37'),
(195, 0, 101, '2804:d59:9e0c:a900:a942:1012:d0d6:cdd3', '2025-02-07 13:19:16', '2025-02-07 13:19:16'),
(196, 0, 101, '2804:389:a3dd:9387:28a3:e6d9:c967:b466', '2025-02-07 13:25:35', '2025-02-07 13:25:35'),
(197, 0, 101, '177.174.219.53', '2025-02-07 13:40:36', '2025-02-07 13:40:36'),
(198, 0, 101, '191.58.128.82', '2025-02-07 13:55:19', '2025-02-07 13:55:19'),
(199, 0, 101, '2804:d59:a42e:2600:ed72:c561:77d9:96f9', '2025-02-07 14:15:46', '2025-02-07 14:15:46'),
(200, 0, 101, '2804:57f4:2101:dbb5:8159:7e65:e3eb:6f6a', '2025-02-07 14:19:11', '2025-02-07 14:19:11'),
(201, 0, 101, '2804:389:a3d4:8778:1fe3:86ce:49af:9b82', '2025-02-07 14:28:19', '2025-02-07 14:28:19'),
(202, 0, 101, '170.246.11.226', '2025-02-07 14:37:06', '2025-02-07 14:37:06'),
(203, 0, 101, '2804:4b7c:12b7:c400:449a:f2d5:6697:26b2', '2025-02-07 14:43:35', '2025-02-07 14:43:35'),
(204, 0, 101, '2804:d56:15c5:e400:c33a:a6ef:1bf1:c89d', '2025-02-07 14:58:33', '2025-02-07 14:58:33'),
(205, 0, 101, '179.185.122.100', '2025-02-07 15:04:46', '2025-02-07 15:04:46'),
(206, 0, 101, '2804:18:109:8a88:19ef:d994:fca:4a34', '2025-02-07 15:06:12', '2025-02-07 15:06:12'),
(207, 0, 101, '189.50.80.77', '2025-02-07 16:16:08', '2025-02-07 16:16:08'),
(208, 0, 101, '2804:214:86b5:ef04:1:0:3ff1:e3eb', '2025-02-07 16:36:43', '2025-02-07 16:36:43'),
(209, 0, 101, '2804:5ff8:403:3801:d158:fa09:1991:ffd1', '2025-02-07 16:56:03', '2025-02-07 16:56:03'),
(210, 0, 101, '2804:389:a3e5:aef7:250a:c896:e2f6:8ab5', '2025-02-07 17:00:57', '2025-02-07 17:00:57'),
(211, 0, 101, '2804:389:a189:4fe5:5d69:af84:86c7:a312', '2025-02-07 17:05:01', '2025-02-07 17:05:01'),
(212, 0, 101, '2804:18:105:6db2:2176:6a14:d75a:21ef', '2025-02-07 17:07:17', '2025-02-07 17:07:17'),
(213, 0, 101, '2804:d59:9e03:bd00:e5a1:7393:1336:8b49', '2025-02-07 17:07:47', '2025-02-07 17:07:47'),
(214, 0, 101, '2804:389:a28a:52b0:b7b7:4b9:4bbf:5f29', '2025-02-07 17:09:26', '2025-02-07 17:09:26'),
(215, 0, 101, '179.127.250.110', '2025-02-07 18:32:33', '2025-02-07 18:32:33'),
(216, 0, 101, '2804:18:106:9696:cd7:98b5:793f:afb', '2025-02-07 19:27:29', '2025-02-07 19:27:29'),
(217, 0, 101, '2804:389:a3e5:374c:a863:5bff:fe84:2177', '2025-02-07 20:42:49', '2025-02-07 20:42:49'),
(218, 0, 101, '2804:214:8193:2024:1:2:2d10:b8cf', '2025-02-07 20:46:50', '2025-02-07 20:46:50'),
(219, 0, 101, '2804:49d0:c010:3500:3537:521d:d433:75ec', '2025-02-07 21:24:46', '2025-02-07 21:24:46'),
(220, 0, 101, '2803:9810:483d:2910:5993:5228:11ea:cf90', '2025-02-07 21:25:11', '2025-02-07 21:25:11'),
(221, 0, 101, '191.56.59.6', '2025-02-07 21:52:55', '2025-02-07 21:52:55'),
(222, 0, 101, '2804:7f74:b28:e800:5074:6a47:652a:db8b', '2025-02-07 22:05:05', '2025-02-07 22:05:05'),
(223, 0, 101, '2804:389:a287:f996:cb4:939e:8a46:2c05', '2025-02-07 22:17:52', '2025-02-07 22:17:52'),
(224, 0, 101, '131.0.218.28', '2025-02-07 22:22:26', '2025-02-07 22:22:26'),
(225, 0, 101, '2804:14c:65d7:8a72:9018:ba45:f882:6733', '2025-02-07 22:25:47', '2025-02-07 22:25:47'),
(226, 0, 101, '2804:14c:65f4:434a:9ec:e974:6235:e55', '2025-02-07 22:37:09', '2025-02-07 22:37:09'),
(227, 0, 101, '2804:14c:658f:5240:b03f:6bb1:c776:f5ec', '2025-02-07 22:40:37', '2025-02-07 22:40:37'),
(228, 0, 101, '2804:14c:65d3:4d72:6cc0:dca6:6aed:a62a', '2025-02-07 22:51:59', '2025-02-07 22:51:59'),
(229, 0, 101, '2804:14c:65d2:4549:a0cd:7724:fe9e:5668', '2025-02-07 22:52:20', '2025-02-07 22:52:20'),
(230, 0, 101, '2804:214:8826:a4e0:1821:f9c5:dd6f:bbd6', '2025-02-07 22:53:58', '2025-02-07 22:53:58'),
(231, 0, 101, '2804:d59:a10e:8400:b185:a70a:828:87fb', '2025-02-07 22:54:12', '2025-02-07 22:54:12'),
(232, 0, 101, '2804:7f74:bd8:dd00:a429:1a74:afa0:6513', '2025-02-07 22:55:25', '2025-02-07 22:55:25'),
(233, 0, 93, '2804:214:8826:a4e0:1821:f9c5:dd6f:bbd6', '2025-02-07 22:57:01', '2025-02-07 22:57:01'),
(234, 0, 101, '2804:d59:850d:fc00:25f4:258b:520a:59b6', '2025-02-07 22:59:04', '2025-02-07 22:59:04'),
(235, 0, 101, '2804:d59:8787:8500:a51a:3766:9d3:a68b', '2025-02-07 22:59:23', '2025-02-07 22:59:23'),
(236, 0, 101, '2804:7f3:ff80:6b44:dcaa:458a:ab21:7522', '2025-02-07 23:00:55', '2025-02-07 23:00:55'),
(237, 0, 101, '179.54.200.144', '2025-02-07 23:04:06', '2025-02-07 23:04:06'),
(238, 0, 101, '177.41.130.149', '2025-02-07 23:04:23', '2025-02-07 23:04:23'),
(239, 0, 101, '2804:d56:15c2:a600:adbe:c6cb:fd58:66c4', '2025-02-07 23:04:39', '2025-02-07 23:04:39'),
(240, 0, 101, '2804:18:110b:1b1d:1821:ea94:9cd:1af5', '2025-02-07 23:07:14', '2025-02-07 23:07:14'),
(241, 0, 101, '189.6.27.72', '2025-02-07 23:11:05', '2025-02-07 23:11:05'),
(242, 0, 101, '186.209.186.130', '2025-02-07 23:11:29', '2025-02-07 23:11:29'),
(243, 0, 101, '2804:214:8152:b46e:10c1:74ee:8b38:8fdf', '2025-02-07 23:13:02', '2025-02-07 23:13:02'),
(244, 0, 101, '2804:29b8:51a6:1045:5118:b1cd:df1d:bfe4', '2025-02-07 23:15:21', '2025-02-07 23:15:21'),
(245, 80, 93, '2804:7f3:ff80:6b44:dcaa:458a:ab21:7522', '2025-02-07 23:19:27', '2025-02-07 23:19:27'),
(246, 0, 101, '2804:389:a3fb:d0a8:978a:a6dc:c039:8d04', '2025-02-07 23:20:54', '2025-02-07 23:20:54'),
(247, 0, 101, '2804:389:a288:8190:6ea2:84c3:84fc:cb46', '2025-02-07 23:25:00', '2025-02-07 23:25:00'),
(248, 0, 101, '2804:1b2:1081:a3c3:a0e8:c5aa:fa6a:dfe5', '2025-02-07 23:25:05', '2025-02-07 23:25:05'),
(249, 0, 101, '45.179.145.128', '2025-02-07 23:28:26', '2025-02-07 23:28:26'),
(250, 0, 101, '2804:14c:65d7:8b02:67c7:d506:3f3a:a882', '2025-02-07 23:29:25', '2025-02-07 23:29:25'),
(251, 0, 101, '2804:14c:65c2:54e3:a70b:52cd:af4b:92b', '2025-02-07 23:33:21', '2025-02-07 23:33:21'),
(252, 0, 101, '177.202.128.255', '2025-02-07 23:42:02', '2025-02-07 23:42:02'),
(253, 0, 101, '2804:7f74:bff:e700:515:832d:73d6:1fc4', '2025-02-07 23:48:29', '2025-02-07 23:48:29'),
(254, 0, 101, '2804:1b3:6182:456c:297d:1a89:4966:b94e', '2025-02-07 23:49:44', '2025-02-07 23:49:44'),
(255, 0, 101, '2804:389:a2b7:e5e3:9bdd:1b2a:872c:a486', '2025-02-07 23:52:10', '2025-02-07 23:52:10'),
(256, 0, 101, '2804:7f74:b51:f600:b0c8:3ee5:fa79:8f30', '2025-02-07 23:59:07', '2025-02-07 23:59:07'),
(257, 0, 101, '2804:14c:65d7:9191:acb7:93cb:9a61:8b5e', '2025-02-08 00:03:10', '2025-02-08 00:03:10'),
(258, 0, 101, '2804:7f74:b72:1d00:f85a:2192:e793:f22e', '2025-02-08 00:07:50', '2025-02-08 00:07:50'),
(259, 0, 101, '2804:18:110e:83d8:8954:3744:ac22:5947', '2025-02-08 00:09:06', '2025-02-08 00:09:06'),
(260, 0, 101, '2804:14c:65d2:8652:9d17:d99b:d47d:fc1b', '2025-02-08 00:15:39', '2025-02-08 00:15:39'),
(261, 0, 101, '179.250.119.128', '2025-02-08 00:20:56', '2025-02-08 00:20:56'),
(262, 0, 101, '138.0.245.211', '2025-02-08 00:23:03', '2025-02-08 00:23:03'),
(263, 0, 101, '2804:8aa4:e01e:1f00:29a0:3fe7:60b6:de44', '2025-02-08 00:25:06', '2025-02-08 00:25:06'),
(264, 0, 101, '2804:7f74:bdd:6000:b165:fd22:d9d7:a77', '2025-02-08 00:28:18', '2025-02-08 00:28:18'),
(265, 0, 101, '2804:389:a3e5:23c5:3f65:6e1c:14a3:49e', '2025-02-08 00:40:20', '2025-02-08 00:40:20'),
(266, 0, 101, '2804:389:a176:b5a6:ac57:3c59:572:b69e', '2025-02-08 00:40:52', '2025-02-08 00:40:52'),
(267, 0, 101, '2804:389:a3e5:1bbd:9b3e:fc06:9ec6:c18a', '2025-02-08 00:46:37', '2025-02-08 00:46:37'),
(268, 0, 101, '2804:389:a3c3:f807:c0ea:ee9f:b973:e3a', '2025-02-08 01:26:50', '2025-02-08 01:26:50'),
(269, 0, 101, '2804:389:a3e6:e436:e9de:42a8:33e4:e9a5', '2025-02-08 01:37:05', '2025-02-08 01:37:05'),
(270, 0, 101, '187.84.180.24', '2025-02-08 03:03:14', '2025-02-08 03:03:14'),
(271, 0, 101, '2804:14c:658f:a11b:a092:8155:5a9a:248e', '2025-02-08 04:41:43', '2025-02-08 04:41:43'),
(272, 0, 101, '2804:14c:655f:42b1:30d7:7051:1a55:a82f', '2025-02-08 05:12:20', '2025-02-08 05:12:20'),
(273, 0, 101, '2804:389:a280:9a09:bc10:7eff:fee3:9cf1', '2025-02-08 05:21:07', '2025-02-08 05:21:07'),
(274, 0, 101, '170.244.198.246', '2025-02-08 06:37:42', '2025-02-08 06:37:42'),
(275, 0, 101, '2804:d59:a6d7:3600:4047:d996:c270:e030', '2025-02-08 07:25:28', '2025-02-08 07:25:28'),
(276, 0, 101, '2804:14c:658c:4655:6084:a3bb:462c:2e8d', '2025-02-08 07:27:07', '2025-02-08 07:27:07'),
(277, 0, 101, '2804:18:1104:6e49:198b:ac66:24e9:4e51', '2025-02-08 07:40:30', '2025-02-08 07:40:30'),
(278, 0, 101, '2804:14c:65a7:8113:b06b:74a1:5ee3:b039', '2025-02-08 08:06:02', '2025-02-08 08:06:02'),
(279, 0, 101, '2804:214:8192:8cb2:9484:3bdb:9981:2fc2', '2025-02-08 08:11:18', '2025-02-08 08:11:18'),
(280, 0, 101, '2804:389:a3cc:88d6:c0c0:7fff:fe40:4075', '2025-02-08 08:14:45', '2025-02-08 08:14:45'),
(281, 0, 101, '45.5.156.108', '2025-02-08 08:16:38', '2025-02-08 08:16:38'),
(282, 0, 101, '2804:4b7c:12bf:e200:81c1:fc95:435e:2a31', '2025-02-08 08:57:39', '2025-02-08 08:57:39'),
(283, 0, 101, '2804:18:1105:d64b:f9c7:a4c2:e622:e514', '2025-02-08 09:16:08', '2025-02-08 09:16:08'),
(284, 0, 101, '2804:214:86b7:4ab2:1:0:4445:b41e', '2025-02-08 09:16:43', '2025-02-08 09:16:43'),
(285, 0, 101, '179.127.253.143', '2025-02-08 09:20:16', '2025-02-08 09:20:16'),
(286, 0, 101, '2804:14c:6583:42ba:7978:9e60:8050:8f43', '2025-02-08 09:31:15', '2025-02-08 09:31:15'),
(287, 0, 101, '45.236.36.250', '2025-02-08 09:36:15', '2025-02-08 09:36:15'),
(288, 0, 101, '2804:214:86bc:ceff:1:0:45c3:1bdd', '2025-02-08 09:41:22', '2025-02-08 09:41:22'),
(289, 0, 101, '2804:389:a2ab:9ba8:ed02:a4a8:4aa:99cc', '2025-02-08 10:44:52', '2025-02-08 10:44:52'),
(290, 0, 101, '2804:389:a3e7:6a4f:3dab:48df:3ce5:9eab', '2025-02-08 10:51:32', '2025-02-08 10:51:32'),
(291, 0, 101, '2804:389:a287:a5d5:a53:2f1b:e846:1989', '2025-02-08 10:52:36', '2025-02-08 10:52:36'),
(292, 0, 101, '2804:1b2:1847:b592:18ac:676b:2c4d:686c', '2025-02-08 11:05:57', '2025-02-08 11:05:57'),
(293, 0, 101, '2804:389:a2ad:70aa:897a:2980:d451:9ea5', '2025-02-08 11:17:18', '2025-02-08 11:17:18'),
(294, 0, 101, '177.74.199.57', '2025-02-08 12:05:21', '2025-02-08 12:05:21'),
(295, 0, 101, '2804:10b4:17d:b200:fca9:ddb:d4bc:33f', '2025-02-08 13:32:06', '2025-02-08 13:32:06'),
(296, 0, 101, '189.126.212.57', '2025-02-08 13:38:40', '2025-02-08 13:38:40'),
(297, 0, 101, '2804:d59:8687:7600:29ec:f2f2:84e5:d2ea', '2025-02-08 13:51:19', '2025-02-08 13:51:19'),
(298, 0, 101, '45.181.100.139', '2025-02-08 15:13:45', '2025-02-08 15:13:45'),
(299, 0, 101, '2804:7f3:ff80:72f4:70ed:49f3:8d19:abff', '2025-02-08 16:16:00', '2025-02-08 16:16:00'),
(300, 0, 101, '2804:bb8:4200:1636:35ef:b701:bb87:acf9', '2025-02-08 16:44:35', '2025-02-08 16:44:35'),
(301, 0, 101, '2804:18:110c:e9b6:1822:2979:a102:f550', '2025-02-08 16:45:25', '2025-02-08 16:45:25'),
(302, 0, 101, '2804:18:896:a05f:3d5f:3545:ce38:682d', '2025-02-08 17:02:08', '2025-02-08 17:02:08'),
(303, 0, 101, '2804:389:a197:7552:0:4e:8d82:3201', '2025-02-08 18:03:14', '2025-02-08 18:03:14'),
(304, 0, 101, '2804:389:a283:a19b:d937:d2c:722f:f486', '2025-02-08 18:14:39', '2025-02-08 18:14:39'),
(305, 0, 101, '2804:14c:6580:5939:310d:3e67:3272:f082', '2025-02-08 18:31:43', '2025-02-08 18:31:43'),
(306, 0, 101, '2804:14c:658f:a11b:d90d:1300:efeb:11bc', '2025-02-08 19:39:04', '2025-02-08 19:39:04'),
(307, 0, 101, '2804:389:a3ff:6566:8f54:6aff:5b4c:609b', '2025-02-08 19:41:05', '2025-02-08 19:41:05'),
(308, 0, 101, '2804:56c:2133:bc00:d004:bf7b:7c32:48e5', '2025-02-08 20:12:04', '2025-02-08 20:12:04'),
(309, 0, 101, '2804:389:a281:f933:aca8:30af:48bd:7e2', '2025-02-08 20:14:32', '2025-02-08 20:14:32'),
(310, 0, 101, '2804:389:a086:7f54:80d4:e5aa:f055:8426', '2025-02-08 20:28:26', '2025-02-08 20:28:26'),
(311, 0, 101, '2804:214:8823:694c:cd1:4253:c9d4:4ab1', '2025-02-08 20:31:17', '2025-02-08 20:31:17'),
(312, 0, 101, '2804:214:8152:a53e:1:1:3179:86c2', '2025-02-08 20:54:04', '2025-02-08 20:54:04'),
(313, 0, 101, '45.233.196.206', '2025-02-08 21:33:37', '2025-02-08 21:33:37'),
(314, 0, 101, '177.36.206.12', '2025-02-08 21:37:15', '2025-02-08 21:37:15'),
(315, 0, 101, '2804:18:10f:ece2:3887:92d8:e490:4669', '2025-02-08 21:57:10', '2025-02-08 21:57:10'),
(316, 0, 101, '2804:14c:6584:57ad:f18e:13ed:78f4:4cc5', '2025-02-08 22:03:35', '2025-02-08 22:03:35'),
(317, 0, 101, '2804:389:a2b5:1816:cc38:89f2:e403:bc83', '2025-02-08 22:48:16', '2025-02-08 22:48:16'),
(318, 0, 101, '2804:389:a3fc:d77f:d659:781a:b72f:a6d2', '2025-02-08 22:52:20', '2025-02-08 22:52:20'),
(319, 0, 101, '2804:7f74:bb3:300:f844:77d9:731a:604f', '2025-02-08 22:57:26', '2025-02-08 22:57:26'),
(320, 0, 101, '191.58.142.244', '2025-02-09 00:06:37', '2025-02-09 00:06:37'),
(321, 0, 101, '2804:14c:65f2:9b98:309b:5e6:cb53:d7cf', '2025-02-09 00:39:14', '2025-02-09 00:39:14'),
(322, 0, 101, '2804:18:10e:ae9f:1822:6491:b09b:2d11', '2025-02-09 00:58:59', '2025-02-09 00:58:59'),
(323, 0, 101, '2804:d59:862b:3e00:9134:3637:52b5:204e', '2025-02-09 01:06:14', '2025-02-09 01:06:14'),
(324, 0, 101, '2804:8aa4:e002:d800:531:ee58:25bf:3dc6', '2025-02-09 01:25:45', '2025-02-09 01:25:45'),
(325, 0, 101, '2804:214:4103:ba1:9c7e:d26b:fc48:a4a4', '2025-02-09 01:45:10', '2025-02-09 01:45:10'),
(326, 0, 101, '131.72.220.52', '2025-02-09 03:10:33', '2025-02-09 03:10:33'),
(327, 0, 101, '2804:214:819f:a9a7:a1ec:964a:c581:dc47', '2025-02-09 03:12:40', '2025-02-09 03:12:40'),
(328, 0, 101, '2804:214:8194:52db:68ef:6f41:4795:53f9', '2025-02-09 03:31:56', '2025-02-09 03:31:56'),
(329, 0, 101, '2804:389:a2bf:f1cd:a533:2209:ad92:e75f', '2025-02-09 06:40:53', '2025-02-09 06:40:53'),
(330, 0, 101, '2804:214:8152:2aa6:1:2:2cce:9b9c', '2025-02-09 06:46:47', '2025-02-09 06:46:47'),
(331, 0, 101, '164.163.3.140', '2025-02-09 07:05:04', '2025-02-09 07:05:04'),
(332, 0, 101, '2804:2664:419d:de00:bd94:26c0:7256:7d46', '2025-02-09 07:46:43', '2025-02-09 07:46:43'),
(333, 0, 101, '2804:389:a171:f9e:d4ce:6e85:de5:e365', '2025-02-09 08:04:36', '2025-02-09 08:04:36'),
(334, 0, 101, '2804:7f74:b73:de00:2da8:5e95:b825:f824', '2025-02-09 08:28:29', '2025-02-09 08:28:29'),
(335, 0, 101, '2804:389:a2bb:265a:7056:47ff:fe52:f232', '2025-02-09 08:48:24', '2025-02-09 08:48:24'),
(336, 0, 101, '2804:389:a1b7:30df:9891:7cbf:43c5:507e', '2025-02-09 08:48:44', '2025-02-09 08:48:44'),
(337, 0, 101, '2804:8aa4:3e26:1a00:f84d:ba3d:83:10ae', '2025-02-09 09:21:25', '2025-02-09 09:21:25'),
(338, 0, 101, '2804:18:892:665b:20c0:ad54:5f52:1215', '2025-02-09 09:26:05', '2025-02-09 09:26:05'),
(339, 0, 101, '2804:214:8780:56b0:1822:82df:ff5d:35a1', '2025-02-09 09:36:58', '2025-02-09 09:36:58'),
(340, 0, 101, '179.255.30.75', '2025-02-09 10:09:20', '2025-02-09 10:09:20'),
(341, 0, 101, '2804:18:104:a246:7019:f201:854:38f5', '2025-02-09 10:39:24', '2025-02-09 10:39:24'),
(342, 0, 101, '2804:8aa4:3e17:a400:6c6a:f918:8565:e94c', '2025-02-09 10:49:22', '2025-02-09 10:49:22'),
(343, 0, 101, '2804:8aa4:3e2b:1500:798c:3e7:2430:b559', '2025-02-09 12:55:29', '2025-02-09 12:55:29'),
(344, 0, 101, '186.235.83.171', '2025-02-09 13:28:54', '2025-02-09 13:28:54'),
(345, 0, 101, '2804:214:8793:39ae:54f5:98ff:fe0c:2431', '2025-02-09 13:40:29', '2025-02-09 13:40:29'),
(346, 0, 101, '45.183.232.134', '2025-02-09 13:54:03', '2025-02-09 13:54:03'),
(347, 0, 101, '2804:14c:65d6:4462:2133:1738:5c77:2e4d', '2025-02-09 15:19:17', '2025-02-09 15:19:17'),
(348, 0, 101, '191.58.129.148', '2025-02-09 15:37:44', '2025-02-09 15:37:44'),
(349, 0, 101, '2804:18:10f:a8f9:1822:9e30:6f51:1ee5', '2025-02-09 15:41:11', '2025-02-09 15:41:11'),
(350, 0, 101, '2804:7f74:bb3:d900:58cc:a44b:ec3c:1cb8', '2025-02-09 15:51:10', '2025-02-09 15:51:10'),
(351, 0, 93, '186.235.80.231', '2025-02-09 16:04:23', '2025-02-09 16:04:23'),
(352, 0, 101, '2804:214:86b6:5da6:1a57:49bf:3c9e:753c', '2025-02-09 16:12:36', '2025-02-09 16:12:36'),
(353, 0, 101, '2804:214:86b8:cabb:9d06:22b0:4690:d33f', '2025-02-09 16:41:23', '2025-02-09 16:41:23'),
(354, 0, 101, '2804:8aa4:e035:6300:d90:21d0:9293:1476', '2025-02-09 17:37:15', '2025-02-09 17:37:15'),
(355, 0, 101, '177.50.77.181', '2025-02-09 18:04:24', '2025-02-09 18:04:24'),
(356, 0, 101, '2804:d56:204:ed00:4d62:f87e:19ae:1ba1', '2025-02-09 19:26:48', '2025-02-09 19:26:48'),
(357, 0, 101, '2804:14d:2a78:42fe:b489:9b59:a7b:afce', '2025-02-09 19:33:48', '2025-02-09 19:33:48'),
(358, 0, 101, '2804:389:a3c8:a84:9982:844e:fae5:cc0f', '2025-02-09 19:37:10', '2025-02-09 19:37:10'),
(359, 0, 101, '2804:389:a2b7:ae4a:cf06:a58:d4e1:845', '2025-02-09 19:46:55', '2025-02-09 19:46:55'),
(360, 0, 101, '2804:18:103:75b6:9998:3cd4:8e2c:ca6e', '2025-02-09 19:48:03', '2025-02-09 19:48:03'),
(361, 0, 101, '2804:389:a2a1:531d:169:ee97:f932:e58a', '2025-02-09 19:57:43', '2025-02-09 19:57:43'),
(362, 0, 101, '2804:4bc:8418:6000:4495:794c:44b0:13f8', '2025-02-09 20:06:21', '2025-02-09 20:06:21'),
(363, 0, 101, '2804:8aa4:3e90:3d00:bc63:c297:bc7a:e8c9', '2025-02-09 20:06:50', '2025-02-09 20:06:50'),
(364, 0, 101, '45.230.194.201', '2025-02-09 20:10:52', '2025-02-09 20:10:52'),
(365, 0, 101, '2804:14c:65e4:4516:6904:69e9:6ad0:a5ca', '2025-02-09 20:16:18', '2025-02-09 20:16:18'),
(366, 0, 101, '2804:774:a103:cf3c:d8af:bcc6:c463:17e4', '2025-02-09 20:32:09', '2025-02-09 20:32:09'),
(367, 0, 101, '45.234.197.252', '2025-02-09 21:13:47', '2025-02-09 21:13:47'),
(368, 0, 101, '2804:56c:21d2:400:e827:63d9:66b1:45c0', '2025-02-09 21:19:12', '2025-02-09 21:19:12'),
(369, 0, 101, '2804:389:a3fb:6ce0:bcbc:ebce:f9db:9d6f', '2025-02-09 21:22:54', '2025-02-09 21:22:54'),
(370, 0, 101, '138.117.81.140', '2025-02-09 21:25:39', '2025-02-09 21:25:39'),
(371, 0, 101, '201.24.181.31', '2025-02-09 21:54:15', '2025-02-09 21:54:15'),
(372, 0, 101, '2804:8aa4:f0a1:b800:59a8:98b:d6c9:c35f', '2025-02-09 21:59:47', '2025-02-09 21:59:47'),
(373, 0, 101, '2804:4b7c:12e0:1c00:4d3a:5415:c33c:8138', '2025-02-09 22:55:21', '2025-02-09 22:55:21'),
(374, 0, 101, '2804:984:3236:3d01:19f3:d214:42a8:d5ab', '2025-02-09 23:08:57', '2025-02-09 23:08:57'),
(375, 0, 101, '45.235.9.212', '2025-02-09 23:29:27', '2025-02-09 23:29:27'),
(376, 0, 101, '2804:7f74:b2e:db00:8970:2860:bb65:3d73', '2025-02-09 23:58:28', '2025-02-09 23:58:28'),
(377, 0, 101, '179.54.207.134', '2025-02-10 01:38:38', '2025-02-10 01:38:38'),
(378, 0, 101, '2804:214:86b4:4e87:e862:c5e9:abd0:acba', '2025-02-10 06:15:59', '2025-02-10 06:15:59'),
(379, 0, 101, '2804:214:8151:426d:1:2:379d:60ba', '2025-02-10 07:09:23', '2025-02-10 07:09:23'),
(380, 0, 101, '2804:14c:6582:4ee4:54f1:e4fa:f287:e040', '2025-02-10 07:55:41', '2025-02-10 07:55:41'),
(381, 0, 101, '2804:214:819f:51c8:f036:79fd:896a:bbb4', '2025-02-10 08:03:14', '2025-02-10 08:03:14'),
(382, 0, 101, '2804:10b4:14c:cb00:9f04:218f:2c6c:79a8', '2025-02-10 09:01:52', '2025-02-10 09:01:52'),
(383, 0, 101, '2804:389:a12b:4e48:0:48:4f03:ef01', '2025-02-10 10:10:13', '2025-02-10 10:10:13'),
(384, 0, 101, '201.48.59.197', '2025-02-10 11:35:19', '2025-02-10 11:35:19'),
(385, 0, 101, '2804:389:a3fa:410d:e524:ead3:f3f0:622a', '2025-02-10 11:35:21', '2025-02-10 11:35:21'),
(386, 0, 101, '45.184.70.192', '2025-02-10 11:57:56', '2025-02-10 11:57:56'),
(387, 0, 101, '187.32.149.173', '2025-02-10 12:09:46', '2025-02-10 12:09:46'),
(388, 0, 101, '2804:d56:234:5800:3dbe:15b4:f6b9:796', '2025-02-10 12:20:57', '2025-02-10 12:20:57'),
(389, 0, 101, '2804:d59:a135:1c00:6237:cead:1bf:3db8', '2025-02-10 13:04:10', '2025-02-10 13:04:10'),
(390, 0, 101, '187.43.167.127', '2025-02-10 13:10:41', '2025-02-10 13:10:41'),
(391, 0, 101, '2804:7f74:b36:7d00:1161:acd8:5da3:18a6', '2025-02-10 14:08:48', '2025-02-10 14:08:48'),
(392, 0, 101, '2804:389:a3c8:e871:4430:30e6:838e:34b2', '2025-02-10 14:20:49', '2025-02-10 14:20:49'),
(393, 0, 101, '2804:d56:15a5:2900:c50:96a0:d0f2:d6fd', '2025-02-10 14:33:40', '2025-02-10 14:33:40'),
(394, 0, 101, '164.163.0.235', '2025-02-10 15:33:47', '2025-02-10 15:33:47'),
(395, 0, 101, '2804:18:10f:1e69:1822:e888:8ab1:765c', '2025-02-10 15:46:43', '2025-02-10 15:46:43'),
(396, 0, 101, '2804:8aa4:3e2a:9200:f415:ac42:b432:c19f', '2025-02-10 16:07:12', '2025-02-10 16:07:12'),
(397, 0, 101, '2804:6368:4b:b00:40af:c2a6:f89b:6312', '2025-02-10 16:11:52', '2025-02-10 16:11:52'),
(398, 0, 101, '2804:1b2:1082:402a:1b75:5cea:b74b:5bde', '2025-02-10 17:15:33', '2025-02-10 17:15:33'),
(399, 0, 101, '2804:214:8821:70f1:c111:5cb4:403:6cfc', '2025-02-10 17:35:27', '2025-02-10 17:35:27'),
(400, 0, 101, '2804:d59:8917:de00:4937:c080:5847:30c8', '2025-02-10 18:16:06', '2025-02-10 18:16:06'),
(401, 0, 101, '2804:214:86ba:52cf:e99f:9f46:7876:dfe6', '2025-02-10 18:43:16', '2025-02-10 18:43:16'),
(402, 0, 101, '2804:d59:a4a3:cd00:e06c:a4b9:e760:a7b8', '2025-02-10 22:02:12', '2025-02-10 22:02:12'),
(403, 0, 101, '2804:14c:65f2:9c6e:e479:cfb3:8dda:246b', '2025-02-10 23:09:32', '2025-02-10 23:09:32'),
(404, 0, 101, '2804:14c:65f4:861c:8586:d6d2:4d90:5ecf', '2025-02-10 23:25:55', '2025-02-10 23:25:55'),
(405, 0, 101, '189.85.88.117', '2025-02-10 23:41:47', '2025-02-10 23:41:47'),
(406, 0, 101, '177.73.70.19', '2025-02-10 23:52:49', '2025-02-10 23:52:49'),
(407, 0, 101, '2804:8aa4:3e0f:6900:f40d:178:c907:9a07', '2025-02-11 05:52:51', '2025-02-11 05:52:51'),
(408, 0, 101, '179.214.68.157', '2025-02-11 06:02:04', '2025-02-11 06:02:04'),
(409, 0, 101, '2804:389:a28e:e6df:1cd5:cc99:e1c3:e204', '2025-02-11 07:12:49', '2025-02-11 07:12:49'),
(410, 0, 101, '2804:14c:65d7:9191:e869:fd84:c52f:6255', '2025-02-11 09:56:57', '2025-02-11 09:56:57'),
(411, 0, 93, '2804:30c:80c:c900:8929:cfe3:2be8:8590', '2025-02-11 09:59:16', '2025-02-11 09:59:16'),
(412, 0, 101, '2804:7f3:ff80:442c:2812:b566:c0a0:7fab', '2025-02-11 10:20:22', '2025-02-11 10:20:22'),
(413, 0, 101, '2804:389:a2ae:18b8:bc3f:a580:dc18:f6d4', '2025-02-11 10:31:11', '2025-02-11 10:31:11'),
(414, 0, 101, '177.50.71.39', '2025-02-11 12:35:15', '2025-02-11 12:35:15'),
(415, 0, 101, '2804:d59:8926:8e00:251c:ea8d:deea:f92c', '2025-02-11 12:38:34', '2025-02-11 12:38:34'),
(416, 0, 101, '2804:14c:658f:8020:bc66:fcdc:53a9:2080', '2025-02-11 14:03:10', '2025-02-11 14:03:10'),
(417, 0, 101, '45.230.195.215', '2025-02-11 14:55:19', '2025-02-11 14:55:19'),
(418, 0, 101, '2804:14c:6538:42ce:bcaf:dea2:5c1:207b', '2025-02-11 15:47:52', '2025-02-11 15:47:52'),
(419, 0, 101, '187.43.172.7', '2025-02-11 17:50:57', '2025-02-11 17:50:57'),
(420, 0, 101, '2804:18:1103:c6f6:1823:3da2:5812:7b6d', '2025-02-11 17:58:41', '2025-02-11 17:58:41'),
(421, 0, 101, '45.181.100.211', '2025-02-11 18:39:24', '2025-02-11 18:39:24'),
(422, 0, 101, '2804:57f4:2100:4a23:b0f0:d243:a3e1:975', '2025-02-11 20:01:09', '2025-02-11 20:01:09'),
(423, 1, 101, '177.174.208.153', '2025-02-11 20:04:21', '2025-02-11 20:04:21'),
(424, 1, 100, '177.174.208.153', '2025-02-11 20:04:33', '2025-02-11 20:04:33'),
(425, 1, 99, '177.174.208.153', '2025-02-11 20:04:56', '2025-02-11 20:04:56'),
(426, 1, 98, '177.174.208.153', '2025-02-11 20:05:04', '2025-02-11 20:05:04'),
(427, 0, 101, '2804:10b4:14c:d900:39dc:a1f4:757:fb56', '2025-02-11 20:15:04', '2025-02-11 20:15:04'),
(428, 0, 101, '2804:14c:658f:4c1c:24e7:5f0:ab98:3fc1', '2025-02-11 20:58:50', '2025-02-11 20:58:50'),
(429, 0, 101, '2804:14c:65a7:9237:c547:e29b:759a:9f7c', '2025-02-11 21:40:08', '2025-02-11 21:40:08'),
(430, 0, 101, '2804:d59:891c:5200:c807:86c9:2be0:1184', '2025-02-11 22:40:26', '2025-02-11 22:40:26'),
(431, 0, 101, '2804:1b2:1082:912:6daf:1:cbdc:4391', '2025-02-11 23:40:25', '2025-02-11 23:40:25'),
(432, 0, 101, '2804:14c:6547:452e:a5b0:515f:72d7:6db2', '2025-02-11 23:45:28', '2025-02-11 23:45:28'),
(433, 0, 101, '2804:18:89b:17dd:1823:22a4:a6be:d6ba', '2025-02-12 00:37:04', '2025-02-12 00:37:04'),
(434, 0, 101, '2804:389:a2a5:33cb:5405:5bff:fea2:95df', '2025-02-12 01:51:37', '2025-02-12 01:51:37'),
(435, 0, 101, '2804:214:8190:8d38:a0af:50a6:890b:8d3', '2025-02-12 02:25:08', '2025-02-12 02:25:08'),
(436, 0, 101, '2600:100e:b22a:151c:ac98:bc36:5ffd:e4f9', '2025-02-12 03:40:14', '2025-02-12 03:40:14'),
(437, 0, 101, '138.0.244.128', '2025-02-12 06:48:06', '2025-02-12 06:48:06'),
(438, 0, 101, '2804:14c:6590:95c0:4a1:af31:f72f:5917', '2025-02-12 08:20:28', '2025-02-12 08:20:28'),
(439, 0, 101, '2804:389:a3f3:f6d0:ea07:86c8:a29e:ac45', '2025-02-12 10:33:04', '2025-02-12 10:33:04'),
(440, 0, 101, '177.181.119.248', '2025-02-12 11:01:41', '2025-02-12 11:01:41'),
(441, 0, 101, '2804:14c:65d7:8ada::5a34', '2025-02-12 11:15:57', '2025-02-12 11:15:57'),
(442, 0, 101, '2804:7f74:ba1:a700:3066:fc45:e74f:2c55', '2025-02-12 12:09:44', '2025-02-12 12:09:44'),
(443, 0, 101, '191.58.132.115', '2025-02-12 12:17:25', '2025-02-12 12:17:25'),
(444, 0, 101, '2804:563c:8281:1:991d:fe78:e631:4c47', '2025-02-12 13:31:31', '2025-02-12 13:31:31'),
(445, 0, 101, '2804:984:3237:f100:8012:2616:d161:392e', '2025-02-12 14:09:50', '2025-02-12 14:09:50'),
(446, 0, 101, '2804:1b2:1845:3de6:c530:dcf8:7160:4b06', '2025-02-12 14:21:21', '2025-02-12 14:21:21'),
(447, 0, 101, '2804:18:10b:69d2:118a:d437:379d:8539', '2025-02-12 15:52:22', '2025-02-12 15:52:22'),
(448, 0, 101, '2804:18:1100:12ba:1823:7370:ed92:1bcc', '2025-02-12 16:03:51', '2025-02-12 16:03:51'),
(449, 0, 101, '2804:214:86b3:49bb:9d54:6bed:dad3:6e1', '2025-02-12 16:18:08', '2025-02-12 16:18:08'),
(450, 0, 93, '2804:7f74:b7f:9e00:e2c2:20c9:934d:7a26', '2025-02-12 16:46:46', '2025-02-12 16:46:46'),
(451, 0, 101, '2804:214:86b0:859a:1:0:59d3:7ce7', '2025-02-12 16:57:18', '2025-02-12 16:57:18'),
(452, 0, 101, '2804:14c:6583:42ba:f43d:a54f:a9bd:5614', '2025-02-12 17:38:18', '2025-02-12 17:38:18'),
(453, 0, 101, '2804:7f74:b4f:8400:41b3:394c:e942:16f4', '2025-02-12 18:08:20', '2025-02-12 18:08:20'),
(454, 0, 101, '190.97.247.194', '2025-02-12 18:39:36', '2025-02-12 18:39:36'),
(455, 0, 101, '2804:389:a3ea:1c7e:f071:85ff:fe4a:d04e', '2025-02-12 20:15:44', '2025-02-12 20:15:44'),
(456, 0, 101, '2804:18:891:1bf6:b404:44fd:d329:2824', '2025-02-12 20:37:54', '2025-02-12 20:37:54'),
(457, 0, 101, '2804:14c:654f:4184:ea1b:379f:c640:8e1f', '2025-02-12 21:27:40', '2025-02-12 21:27:40'),
(458, 0, 101, '2804:8aa4:3e05:2f00:841e:426d:1f62:5d47', '2025-02-12 21:54:35', '2025-02-12 21:54:35'),
(459, 0, 101, '45.234.196.161', '2025-02-12 21:58:18', '2025-02-12 21:58:18'),
(460, 0, 101, '187.60.116.109', '2025-02-12 22:21:35', '2025-02-12 22:21:35'),
(461, 0, 101, '2804:14c:6581:573a:5923:a18e:67c9:78ab', '2025-02-12 22:21:59', '2025-02-12 22:21:59'),
(462, 0, 101, '192.141.106.198', '2025-02-12 23:18:59', '2025-02-12 23:18:59'),
(463, 0, 93, '177.51.63.75', '2025-02-13 00:07:15', '2025-02-13 00:07:15'),
(464, 91, 101, '2804:214:86b4:5929:d9f:5c5:797b:59a6', '2025-02-13 00:22:12', '2025-02-13 00:22:12'),
(465, 0, 101, '2804:14c:6587:442e:8e68:dd2b:36fb:2789', '2025-02-13 00:23:05', '2025-02-13 00:23:05'),
(466, 0, 101, '2804:14c:658f:8f77:3c86:c015:74e6:2e66', '2025-02-13 05:26:03', '2025-02-13 05:26:03'),
(467, 0, 101, '45.230.85.125', '2025-02-13 06:29:59', '2025-02-13 06:29:59'),
(468, 0, 101, '177.54.139.25', '2025-02-13 11:14:50', '2025-02-13 11:14:50'),
(469, 0, 101, '2804:14c:65c0:5b50:8f18:b77c:d083:7697', '2025-02-13 12:57:59', '2025-02-13 12:57:59'),
(470, 0, 101, '2804:18:110c:59e:71f1:73db:2951:f166', '2025-02-13 14:26:36', '2025-02-13 14:26:36'),
(471, 0, 101, '2804:214:8823:edcf:1823:cc6b:b37d:3584', '2025-02-13 15:06:11', '2025-02-13 15:06:11'),
(472, 0, 101, '187.43.143.133', '2025-02-13 15:37:10', '2025-02-13 15:37:10'),
(473, 0, 101, '2804:14c:6586:4ca0:de09:6f0:e320:d3d9', '2025-02-13 18:53:41', '2025-02-13 18:53:41'),
(474, 0, 101, '2804:389:a3da:8076:f4e6:7110:b064:d5d8', '2025-02-13 19:53:42', '2025-02-13 19:53:42'),
(475, 0, 101, '187.43.190.223', '2025-02-13 20:57:20', '2025-02-13 20:57:20'),
(476, 0, 101, '2804:547c:10e:59:cd73:6114:a2e8:e6d2', '2025-02-13 22:40:18', '2025-02-13 22:40:18'),
(477, 0, 101, '201.87.252.109', '2025-02-13 22:45:37', '2025-02-13 22:45:37'),
(478, 0, 101, '2804:8aa4:e011:8f00:c5bd:ee0d:f411:193', '2025-02-13 23:12:25', '2025-02-13 23:12:25'),
(479, 0, 101, '2804:7f74:b10:1200:d000:f346:59a1:903f', '2025-02-13 23:38:10', '2025-02-13 23:38:10'),
(480, 0, 101, '2804:14c:65d7:8290:9d61:21e5:70ef:9e8d', '2025-02-14 00:55:18', '2025-02-14 00:55:18'),
(481, 0, 101, '2804:14c:65d6:4462:f8e1:8653:1e06:5534', '2025-02-14 01:30:15', '2025-02-14 01:30:15'),
(482, 0, 101, '2804:18:106:a058:f0f5:316:5f9b:83f2', '2025-02-14 03:17:11', '2025-02-14 03:17:11'),
(483, 92, 101, '2804:56c:21d7:f100:3957:4037:5e58:8a39', '2025-02-14 03:25:59', '2025-02-14 03:25:59'),
(484, 0, 101, '177.181.124.130', '2025-02-14 04:46:04', '2025-02-14 04:46:04'),
(485, 0, 101, '2804:10b4:1da:5800:b18f:767d:cda4:c296', '2025-02-14 07:02:14', '2025-02-14 07:02:14'),
(486, 0, 101, '2804:d59:a65b:df00:c508:b83f:ad5f:297f', '2025-02-14 07:20:31', '2025-02-14 07:20:31'),
(487, 0, 101, '187.43.176.119', '2025-02-14 09:46:01', '2025-02-14 09:46:01'),
(488, 0, 101, '2804:214:8824:5d04:95c:4314:4765:4057', '2025-02-14 09:47:45', '2025-02-14 09:47:45'),
(489, 0, 101, '2804:18:10a:172:44ab:5a26:877e:d7f0', '2025-02-14 10:01:59', '2025-02-14 10:01:59'),
(490, 0, 101, '2804:14c:658f:8673:10a5:31ed:6573:a963', '2025-02-14 11:59:18', '2025-02-14 11:59:18'),
(491, 0, 101, '2804:214:8190:7bf5:1:1:49c9:49ca', '2025-02-14 12:35:51', '2025-02-14 12:35:51'),
(492, 0, 93, '2804:57f4:2100:4a23:4d67:a4e6:49f0:74e1', '2025-02-14 15:34:04', '2025-02-14 15:34:04'),
(493, 0, 101, '2804:14c:65f2:96cb:5f5f:28b1:2524:d379', '2025-02-14 17:19:22', '2025-02-14 17:19:22'),
(494, 0, 101, '2804:3538:500:a664:175c:c88b:862a:5511', '2025-02-14 17:28:12', '2025-02-14 17:28:12'),
(495, 0, 101, '2804:14c:6580:5ccf:71da:7850:4f5c:e4fa', '2025-02-14 20:01:10', '2025-02-14 20:01:10'),
(496, 0, 101, '2804:7f74:b6c:1400:28c3:2299:3b79:4583', '2025-02-14 20:40:40', '2025-02-14 20:40:40'),
(497, 0, 101, '2804:18:89d:b92d:1824:f56:ffa7:d988', '2025-02-14 21:23:14', '2025-02-14 21:23:14'),
(498, 0, 101, '187.60.147.171', '2025-02-14 21:26:56', '2025-02-14 21:26:56'),
(499, 0, 101, '2804:18:110e:1bab:a9af:84ee:bc36:f21e', '2025-02-14 21:48:58', '2025-02-14 21:48:58'),
(500, 0, 101, '189.126.221.168', '2025-02-14 21:59:10', '2025-02-14 21:59:10'),
(501, 0, 101, '2804:14c:6590:8a16:c95e:3e46:67ac:2fe7', '2025-02-14 22:19:11', '2025-02-14 22:19:11'),
(502, 0, 101, '2804:14c:6590:8a16:5c2c:a41f:e55b:a38e', '2025-02-14 22:29:04', '2025-02-14 22:29:04'),
(503, 94, 101, '187.60.147.171', '2025-02-14 22:53:41', '2025-02-14 22:53:41'),
(504, 0, 101, '2804:10b4:14f:4b00:1404:f494:6ccb:63cc', '2025-02-15 00:29:56', '2025-02-15 00:29:56'),
(505, 0, 101, '2804:214:8822:498e:1824:45de:8f68:90a3', '2025-02-15 01:59:11', '2025-02-15 01:59:11'),
(506, 0, 101, '2804:14c:658f:a11b:a91c:e44c:1983:6999', '2025-02-15 05:09:57', '2025-02-15 05:09:57'),
(507, 0, 101, '179.54.194.146', '2025-02-15 07:22:38', '2025-02-15 07:22:38'),
(508, 0, 101, '189.6.14.34', '2025-02-15 08:41:42', '2025-02-15 08:41:42'),
(509, 95, 101, '2804:14c:65d3:53bb:d59e:902f:25fc:b0d3', '2025-02-15 09:07:16', '2025-02-15 09:07:16'),
(510, 0, 101, '2804:d59:a6ed:1200:9480:81e4:8760:def1', '2025-02-15 10:39:35', '2025-02-15 10:39:35'),
(511, 0, 93, '2804:389:a3e8:c3f1:badf:55c8:d849:1345', '2025-02-15 13:25:57', '2025-02-15 13:25:57'),
(512, 0, 101, '164.41.4.26', '2025-02-15 13:26:10', '2025-02-15 13:26:10'),
(513, 0, 101, '2804:389:a0cb:2536:9cd2:9b0a:dfc7:33c6', '2025-02-15 14:48:46', '2025-02-15 14:48:46'),
(514, 0, 101, '2804:214:3c:60df:bd69:57ed:9cdc:14ee', '2025-02-15 15:40:03', '2025-02-15 15:40:03'),
(515, 0, 101, '2804:1b2:1082:d47c:e00f:64a2:fa8d:d2a7', '2025-02-15 15:41:45', '2025-02-15 15:41:45'),
(516, 0, 101, '2804:214:86b5:d842:b4c7:9eff:fe0f:a728', '2025-02-15 16:00:36', '2025-02-15 16:00:36'),
(517, 0, 101, '2804:1b2:1082:d47c:94ba:1710:be60:1a35', '2025-02-15 17:28:12', '2025-02-15 17:28:12'),
(518, 0, 101, '2804:18:107:a19:1824:5c39:7439:a1fa', '2025-02-15 18:30:48', '2025-02-15 18:30:48'),
(519, 0, 101, '2804:3f60:14:820:f9f6:d97e:9bab:66f6', '2025-02-15 18:41:32', '2025-02-15 18:41:32'),
(520, 0, 101, '2804:1b2:11c0:49bf:c19:fa3d:9b26:f8da', '2025-02-15 18:45:35', '2025-02-15 18:45:35'),
(521, 0, 101, '2804:14c:657c:41cc:509a:a182:44d8:caa9', '2025-02-15 20:02:44', '2025-02-15 20:02:44'),
(522, 0, 101, '187.43.168.234', '2025-02-15 21:36:46', '2025-02-15 21:36:46'),
(523, 0, 101, '2804:14c:65d7:8224:69b5:d107:d905:cac2', '2025-02-16 00:48:12', '2025-02-16 00:48:12'),
(524, 0, 101, '168.90.45.88', '2025-02-16 01:45:33', '2025-02-16 01:45:33'),
(525, 0, 101, '177.51.60.243', '2025-02-16 03:23:32', '2025-02-16 03:23:32'),
(526, 0, 101, '2804:1b2:1082:e6ad:2845:6d8b:bb5b:2f67', '2025-02-16 04:21:23', '2025-02-16 04:21:23'),
(527, 0, 101, '2804:214:8825:47c:c2bc:18cb:47e7:cdf4', '2025-02-16 05:14:42', '2025-02-16 05:14:42'),
(528, 0, 101, '2804:22a0:648e:fd00:f0a7:8066:2670:15a8', '2025-02-16 06:28:40', '2025-02-16 06:28:40'),
(529, 0, 101, '2804:171c:208c:2400:9bad:5376:3452:1885', '2025-02-16 07:52:07', '2025-02-16 07:52:07'),
(530, 0, 101, '2804:18:103:1448:6ce8:7563:dec8:c4b9', '2025-02-16 08:28:56', '2025-02-16 08:28:56'),
(531, 0, 101, '2804:14c:65d6:4462:e54e:6395:7d2:21ea', '2025-02-16 10:13:39', '2025-02-16 10:13:39');
INSERT INTO `video_views` (`id`, `user_id`, `updates_id`, `ip`, `created_at`, `updated_at`) VALUES
(532, 0, 101, '2804:14c:6532:42bf:51ad:f197:4236:7bf6', '2025-02-16 10:17:04', '2025-02-16 10:17:04'),
(533, 0, 101, '191.217.212.116', '2025-02-16 10:21:08', '2025-02-16 10:21:08'),
(534, 0, 93, '2804:14c:6587:4120:a41b:5bf9:e254:9ec3', '2025-02-16 10:45:10', '2025-02-16 10:45:10'),
(535, 0, 93, '177.10.137.32', '2025-02-16 11:34:34', '2025-02-16 11:34:34'),
(536, 0, 101, '187.43.175.41', '2025-02-16 12:10:00', '2025-02-16 12:10:00'),
(537, 0, 101, '187.84.176.72', '2025-02-16 12:10:35', '2025-02-16 12:10:35'),
(538, 0, 101, '2804:18:108:8324:9c28:86ff:fe85:d74d', '2025-02-16 15:24:14', '2025-02-16 15:24:14'),
(539, 0, 101, '177.190.166.173', '2025-02-16 17:07:05', '2025-02-16 17:07:05'),
(540, 0, 101, '2804:214:86bc:b30:ed9a:f09d:9dbd:a1', '2025-02-16 17:12:18', '2025-02-16 17:12:18'),
(541, 0, 101, '2804:8aa4:3e05:2f00:c4ff:9b9a:a13b:570', '2025-02-16 19:13:59', '2025-02-16 19:13:59'),
(542, 0, 101, '179.254.235.40', '2025-02-17 06:39:31', '2025-02-17 06:39:31'),
(543, 0, 101, '170.247.103.10', '2025-02-17 07:09:41', '2025-02-17 07:09:41'),
(544, 0, 101, '2804:894:f005:3600:12b1:54d2:8b75:933', '2025-02-17 07:19:52', '2025-02-17 07:19:52'),
(545, 0, 101, '2804:187c:84e5:3800:810a:9d88:d97b:9aef', '2025-02-17 07:36:11', '2025-02-17 07:36:11'),
(546, 0, 101, '2804:14c:5bd0:82f2:e1b2:5005:182e:ef1c', '2025-02-17 07:54:08', '2025-02-17 07:54:08'),
(547, 0, 101, '2804:214:818a:ed8b:1:1:a58:3b98', '2025-02-17 08:03:39', '2025-02-17 08:03:39'),
(548, 0, 101, '187.102.28.134', '2025-02-17 09:25:02', '2025-02-17 09:25:02'),
(549, 0, 101, '45.175.127.90', '2025-02-17 10:50:07', '2025-02-17 10:50:07'),
(550, 0, 101, '85.113.93.90', '2025-02-17 11:35:52', '2025-02-17 11:35:52'),
(551, 0, 101, '2804:214:8190:53c6:f5a9:234a:97c:8171', '2025-02-17 11:48:50', '2025-02-17 11:48:50'),
(552, 0, 101, '187.43.162.208', '2025-02-17 12:04:33', '2025-02-17 12:04:33'),
(553, 0, 101, '177.11.197.6', '2025-02-17 12:43:40', '2025-02-17 12:43:40'),
(554, 0, 101, '200.209.1.90', '2025-02-17 12:46:35', '2025-02-17 12:46:35'),
(555, 0, 101, '170.233.151.155', '2025-02-17 13:17:51', '2025-02-17 13:17:51'),
(556, 0, 101, '2804:214:8821:166e:fce4:9aff:febd:3134', '2025-02-17 13:25:27', '2025-02-17 13:25:27'),
(557, 0, 101, '45.164.240.111', '2025-02-17 14:43:27', '2025-02-17 14:43:27'),
(558, 0, 101, '2804:49cc:e00:188:d5dc:1e41:a064:35f3', '2025-02-17 15:45:18', '2025-02-17 15:45:18'),
(559, 0, 107, '2804:49cc:e00:188:d5dc:1e41:a064:35f3', '2025-02-17 16:03:37', '2025-02-17 16:03:37'),
(560, 0, 93, '2804:14c:65d5:47e3:bc6c:fb71:c2bc:ab2e', '2025-02-17 21:57:15', '2025-02-17 21:57:15'),
(561, 60, 93, '2804:d59:a658:a600:a826:b599:8986:c74d', '2025-02-18 06:59:02', '2025-02-18 06:59:02'),
(562, 0, 101, '2804:6368:4b:b00:1169:54d:904:742f', '2025-02-18 11:16:53', '2025-02-18 11:16:53'),
(563, 0, 101, '2804:3a44:8300:2f71:e8d7:fa2a:cbd0:cde2', '2025-02-18 14:52:13', '2025-02-18 14:52:13'),
(564, 0, 101, '2804:14c:658f:527b:2c3d:1f9d:5485:9f83', '2025-02-18 17:49:28', '2025-02-18 17:49:28'),
(565, 0, 101, '2804:14c:6591:909e:60a1:d0d9:7e50:90a1', '2025-02-18 17:52:31', '2025-02-18 17:52:31'),
(566, 0, 101, '2804:14c:65d6:4462:d909:f0f7:e3aa:2901', '2025-02-18 18:38:00', '2025-02-18 18:38:00'),
(567, 0, 101, '2804:389:a3eb:ff40:959:54c0:57e8:f1af', '2025-02-18 20:27:27', '2025-02-18 20:27:27'),
(568, 0, 101, '2804:214:8193:1c15:1:1:6554:e812', '2025-02-18 21:39:00', '2025-02-18 21:39:00'),
(569, 0, 101, '191.223.182.227', '2025-02-18 21:46:29', '2025-02-18 21:46:29'),
(570, 0, 101, '2804:8aa4:336a:c00:b9b9:c8cc:4849:8459', '2025-02-18 22:19:16', '2025-02-18 22:19:16'),
(571, 0, 101, '177.51.61.130', '2025-02-18 23:10:41', '2025-02-18 23:10:41'),
(572, 0, 101, '2804:8aa4:3e8a:6900:cd93:8790:bb93:da84', '2025-02-19 00:01:26', '2025-02-19 00:01:26'),
(573, 0, 101, '2804:14c:65d6:4462:c8e7:e255:70b5:d031', '2025-02-19 00:41:28', '2025-02-19 00:41:28'),
(574, 0, 101, '2804:389:a1a4:468:554b:e78a:4db:c7dc', '2025-02-19 06:17:11', '2025-02-19 06:17:11'),
(575, 0, 101, '2804:389:a29e:1e19:f8bb:4063:7ac1:bb35', '2025-02-19 07:55:08', '2025-02-19 07:55:08'),
(576, 0, 101, '2804:8aa4:e034:9900:50ac:2523:ad5c:a597', '2025-02-19 09:14:47', '2025-02-19 09:14:47'),
(577, 0, 101, '45.186.117.74', '2025-02-19 13:07:04', '2025-02-19 13:07:04'),
(578, 0, 101, '2804:d59:a6fb:bf00:75eb:c9ad:1d63:ba69', '2025-02-19 13:14:54', '2025-02-19 13:14:54'),
(579, 0, 101, '2804:18:10f:8829:c0b8:334f:4499:48ee', '2025-02-19 16:44:47', '2025-02-19 16:44:47'),
(580, 0, 101, '2804:14c:65c0:5b50:bbb2:1f42:1a0b:cf93', '2025-02-19 17:47:07', '2025-02-19 17:47:07'),
(581, 0, 93, '2804:1b1:6103:4d40:d7ab:2835:e493:d6cf', '2025-02-19 18:07:37', '2025-02-19 18:07:37'),
(582, 0, 101, '177.235.35.208', '2025-02-19 18:28:36', '2025-02-19 18:28:36'),
(583, 0, 101, '2804:389:a3f8:1e30:db50:8d0c:e99a:7649', '2025-02-19 19:00:04', '2025-02-19 19:00:04'),
(584, 0, 101, '2804:14c:6584:6090:3409:655b:e93c:5050', '2025-02-19 19:32:21', '2025-02-19 19:32:21'),
(585, 0, 101, '187.43.190.197', '2025-02-19 21:12:03', '2025-02-19 21:12:03'),
(586, 0, 101, '2804:18:10d:2c7c:1825:beb3:5314:1eb', '2025-02-19 21:34:33', '2025-02-19 21:34:33'),
(587, 0, 101, '2804:d59:a601:5b00:b5ff:50d6:8bd4:e16a', '2025-02-19 21:46:19', '2025-02-19 21:46:19'),
(588, 98, 93, '2804:389:a3da:8076:4d7c:1251:61ee:63f', '2025-02-19 21:54:49', '2025-02-19 21:54:49'),
(589, 0, 101, '187.91.55.77', '2025-02-19 22:24:45', '2025-02-19 22:24:45'),
(590, 0, 101, '2804:14c:65d7:9623:d950:d1a1:3e32:7e6c', '2025-02-19 22:36:58', '2025-02-19 22:36:58'),
(591, 0, 101, '2804:14c:65c0:5b50:6de7:4a13:63f3:a2e4', '2025-02-19 22:40:14', '2025-02-19 22:40:14'),
(592, 0, 101, '2804:10b4:920d:df00:4143:956b:3eb:f485', '2025-02-19 22:52:28', '2025-02-19 22:52:28'),
(593, 0, 101, '2804:7f74:b14:d400:81f9:bd2b:9ba9:18d', '2025-02-19 23:05:30', '2025-02-19 23:05:30'),
(594, 0, 101, '2804:18:4032:3456:1:0:2858:6365', '2025-02-19 23:24:48', '2025-02-19 23:24:48'),
(595, 0, 101, '2804:d59:a603:f500:615b:c444:71ae:2547', '2025-02-19 23:31:00', '2025-02-19 23:31:00'),
(596, 0, 101, '2804:18:1107:9da8:35f6:faee:f47:cbc1', '2025-02-20 00:36:54', '2025-02-20 00:36:54'),
(597, 0, 101, '2804:18:1109:d2e7:79ac:952a:ef9d:4f61', '2025-02-20 08:10:50', '2025-02-20 08:10:50'),
(598, 100, 100, '2804:1b2:1142:1abc:1c9e:cf0c:2ab1:381a', '2025-02-20 09:20:00', '2025-02-20 09:20:00'),
(599, 100, 98, '2804:1b2:1142:1abc:1c9e:cf0c:2ab1:381a', '2025-02-20 09:20:11', '2025-02-20 09:20:11'),
(600, 100, 99, '2804:1b2:1142:1abc:1c9e:cf0c:2ab1:381a', '2025-02-20 09:20:18', '2025-02-20 09:20:18'),
(601, 100, 101, '2804:1b2:1142:1abc:1c9e:cf0c:2ab1:381a', '2025-02-20 09:20:25', '2025-02-20 09:20:25'),
(602, 0, 101, '2804:1b2:1846:91c3:858b:e1bb:f0cf:f1ea', '2025-02-20 09:49:16', '2025-02-20 09:49:16'),
(603, 0, 101, '2804:389:a3c3:54d5:4891:6fff:fe9b:3b33', '2025-02-20 10:04:37', '2025-02-20 10:04:37'),
(604, 0, 101, '2804:18:110a:b76a:1825:e731:f8c:3d57', '2025-02-20 11:35:02', '2025-02-20 11:35:02'),
(605, 0, 101, '2804:dd4:4190:800:540b:c4e6:ded6:ee31', '2025-02-20 12:29:39', '2025-02-20 12:29:39'),
(606, 0, 101, '2804:56c:b4d1:de00:60c2:8732:e5b0:bb88', '2025-02-20 14:12:50', '2025-02-20 14:12:50'),
(607, 101, 101, '2804:56c:b565:4900:54f4:4fe2:8e53:f17d', '2025-02-22 07:06:47', '2025-02-22 07:06:47'),
(608, 101, 98, '2804:56c:b565:4900:54f4:4fe2:8e53:f17d', '2025-02-22 07:27:30', '2025-02-22 07:27:30'),
(609, 101, 99, '2804:56c:b565:4900:54f4:4fe2:8e53:f17d', '2025-02-22 07:27:51', '2025-02-22 07:27:51'),
(610, 101, 100, '2804:56c:b565:4900:54f4:4fe2:8e53:f17d', '2025-02-22 07:28:01', '2025-02-22 07:28:01'),
(611, 0, 93, '170.245.28.141', '2025-02-22 23:39:27', '2025-02-22 23:39:27'),
(612, 0, 101, '2804:7f74:bb8:3b00:5554:ef1b:935e:c440', '2025-02-24 05:19:03', '2025-02-24 05:19:03'),
(613, 0, 101, '192.141.106.127', '2025-02-27 15:17:24', '2025-02-27 15:17:24'),
(614, 0, 93, '2804:14c:6591:81bc:dcec:d95a:2641:6874', '2025-03-11 00:00:15', '2025-03-11 00:00:15'),
(615, 0, 101, '45.169.71.33', '2025-03-12 17:15:35', '2025-03-12 17:15:35'),
(616, 1, 93, '2a09:bac2:ce2:274b::3ea:4e', '2025-03-16 19:48:18', '2025-03-16 19:48:18'),
(617, 0, 93, '2a09:bac3:671:878::d8:eb', '2025-03-22 18:45:17', '2025-03-22 18:45:17'),
(618, 0, 93, '2a04:4e41:2b:d::9c1f:40f4', '2025-03-23 18:58:16', '2025-03-23 18:58:16'),
(619, 0, 101, '2804:14c:6591:81bc:c1f8:6793:6a4c:b8bc', '2025-03-27 17:27:19', '2025-03-27 17:27:19'),
(620, 0, 93, '2804:389:a3eb:4a01:b8be:5199:9daa:ebf5', '2025-03-29 00:02:19', '2025-03-29 00:02:19'),
(621, 0, 101, '2804:d59:aa29:ef00:d0e:6851:eed6:1824', '2025-03-31 20:03:16', '2025-03-31 20:03:16'),
(622, 0, 93, '200.229.250.1', '2025-04-01 13:17:42', '2025-04-01 13:17:42'),
(623, 0, 101, '200.229.250.1', '2025-04-01 13:18:09', '2025-04-01 13:18:09'),
(624, 0, 101, '2804:389:a3eb:4a01:10e5:2be0:f375:520a', '2025-04-01 15:09:56', '2025-04-01 15:09:56'),
(625, 0, 93, '2804:18:107:6b0f:2d1d:8b32:a7fe:a2bc', '2025-04-05 01:06:14', '2025-04-05 01:06:14'),
(626, 0, 93, '2804:14c:65a1:4604:71b6:3528:5a92:c161', '2025-04-06 12:55:36', '2025-04-06 12:55:36'),
(627, 0, 101, '2804:14c:65a1:4604:71b6:3528:5a92:c161', '2025-04-06 12:56:30', '2025-04-06 12:56:30'),
(628, 0, 93, '2804:389:a28c:e0aa:4478:add4:b97c:4fc9', '2025-04-06 12:59:02', '2025-04-06 12:59:02'),
(629, 0, 101, '2804:1b2:1842:950e:b92f:da1f:a34a:af00', '2025-04-12 00:20:01', '2025-04-12 00:20:01'),
(630, 0, 101, '2804:214:819e:7d23:d958:a886:1501:6d90', '2025-04-12 01:33:30', '2025-04-12 01:33:30'),
(631, 0, 93, '2804:8aa4:3e3b:5600:dcc6:bc5f:55bf:95c7', '2025-04-12 15:18:40', '2025-04-12 15:18:40'),
(632, 0, 93, '2a02:26f7:e52c:5802::c', '2025-04-13 16:20:21', '2025-04-13 16:20:21'),
(633, 0, 101, '2804:8aa4:3e64:700:5d62:2dd1:ae1b:cc5f', '2025-04-14 01:06:25', '2025-04-14 01:06:25'),
(634, 0, 93, '2804:8aa4:3e64:700:5d62:2dd1:ae1b:cc5f', '2025-04-14 01:08:33', '2025-04-14 01:08:33'),
(635, 0, 93, '45.173.234.40', '2025-04-22 01:53:04', '2025-04-22 01:53:04'),
(636, 0, 93, '2804:18:1107:34bd:f578:3a41:abb5:1b92', '2025-04-23 19:32:36', '2025-04-23 19:32:36'),
(637, 95, 93, '2804:18:110f:81a1:243e:518c:e509:fb69', '2025-04-24 15:40:52', '2025-04-24 15:40:52'),
(638, 0, 93, '2804:7c40:3ed:e00:15fe:9a82:2c89:f93e', '2025-04-24 20:36:34', '2025-04-24 20:36:34'),
(639, 108, 101, '2804:18:891:3049:dcd9:185b:544:cde7', '2025-04-24 21:17:28', '2025-04-24 21:17:28'),
(640, 108, 96, '2804:18:891:3049:95d4:76da:7039:6434', '2025-04-24 21:43:37', '2025-04-24 21:43:37'),
(641, 108, 95, '2804:18:891:3049:95d4:76da:7039:6434', '2025-04-24 21:43:54', '2025-04-24 21:43:54'),
(642, 109, 101, '168.181.58.90', '2025-04-24 23:46:11', '2025-04-24 23:46:11'),
(643, 109, 93, '168.181.58.90', '2025-04-24 23:48:08', '2025-04-24 23:48:08'),
(644, 0, 101, '2804:4be4:3102:6b00:69a2:704:918d:de5c', '2025-04-25 08:27:14', '2025-04-25 08:27:14'),
(645, 0, 101, '2804:2cc:8020:4e0:c4c6:f79:57b7:f2c8', '2025-04-25 19:57:59', '2025-04-25 19:57:59'),
(646, 0, 101, '2804:6608:96d:4d00:2d9e:d243:46da:fed', '2025-04-26 16:54:26', '2025-04-26 16:54:26'),
(647, 0, 101, '146.75.191.33', '2025-04-27 01:09:31', '2025-04-27 01:09:31'),
(648, 0, 93, '2804:8aa4:3e0c:7100:9946:412b:615e:d1c0', '2025-04-27 19:48:44', '2025-04-27 19:48:44'),
(649, 0, 101, '179.107.4.121', '2025-04-27 22:35:15', '2025-04-27 22:35:15'),
(650, 0, 101, '2a09:bac3:670:2555::3b8:94', '2025-04-29 12:05:44', '2025-04-29 12:05:44'),
(651, 0, 101, '2804:388:4113:aa1d:1:0:7ec5:9868', '2025-04-29 20:28:27', '2025-04-29 20:28:27'),
(652, 110, 93, '45.228.14.75', '2025-05-01 15:46:49', '2025-05-01 15:46:49'),
(653, 0, 93, '170.84.219.254', '2025-05-02 22:15:56', '2025-05-02 22:15:56'),
(654, 0, 101, '2601:c5:c100:8b0:7e05:fd1c:a32a:f5c', '2025-05-03 10:23:21', '2025-05-03 10:23:21'),
(655, 0, 101, '2804:18:1115:993f:c38f:dbb5:5ebc:afee', '2025-05-05 05:34:06', '2025-05-05 05:34:06'),
(656, 0, 101, '2804:18:703d:abef:ac91:9aff:fef4:e3df', '2025-05-05 11:46:27', '2025-05-05 11:46:27'),
(657, 0, 101, '179.174.43.161', '2025-05-05 23:39:57', '2025-05-05 23:39:57'),
(658, 0, 101, '2804:14c:6591:81bc:ec3c:22f6:b2e3:da02', '2025-05-09 15:25:09', '2025-05-09 15:25:09'),
(659, 0, 93, '2804:14c:6591:81bc:ec3c:22f6:b2e3:da02', '2025-05-09 15:26:08', '2025-05-09 15:26:08'),
(660, 0, 101, '2804:1b2:1844:1074:29fe:f788:bfad:149f', '2025-05-11 18:52:25', '2025-05-11 18:52:25'),
(661, 0, 101, '2804:1b2:ab40:71a5:ec98:f23:1532:94e4', '2025-05-18 14:08:25', '2025-05-18 14:08:25'),
(662, 115, 101, '2804:1b2:ab40:71a5:ec98:f23:1532:94e4', '2025-05-18 14:11:04', '2025-05-18 14:11:04'),
(663, 0, 101, '2804:8aa4:29bf:200:10a6:a4ac:360c:45d7', '2025-05-20 18:04:10', '2025-05-20 18:04:10'),
(664, 0, 101, '2804:dd4:4177:3b00:d3:bc29:8cb0:b0a2', '2025-05-20 23:11:25', '2025-05-20 23:11:25'),
(665, 0, 101, '2804:3538:56c:ab00:1f19:46d1:681c:6cf1', '2025-05-22 12:23:57', '2025-05-22 12:23:57'),
(666, 0, 93, '2804:14c:6583:6307:ddff:cd02:45be:ac73', '2025-05-27 12:47:33', '2025-05-27 12:47:33'),
(667, 0, 101, '2804:14c:6583:63f1:bd0d:b3df:48ea:beee', '2025-05-27 16:03:15', '2025-05-27 16:03:15'),
(668, 0, 101, '2804:10b4:9230:a000:ad76:f81c:7557:1502', '2025-05-29 00:43:01', '2025-05-29 00:43:01'),
(669, 0, 101, '170.231.129.160', '2025-05-29 02:00:57', '2025-05-29 02:00:57'),
(670, 0, 101, '2804:389:a3c7:2f05:ada2:b0cd:8a88:ec01', '2025-05-29 03:18:54', '2025-05-29 03:18:54'),
(671, 0, 101, '2804:18:10c:ef8:fd0e:e6f6:776f:d6d2', '2025-05-29 12:40:41', '2025-05-29 12:40:41'),
(672, 0, 101, '2a02:26f7:e52c:4000:2000::11', '2025-06-01 03:19:20', '2025-06-01 03:19:20'),
(673, 0, 101, '2804:18:4031:907b:554d:d092:f598:495f', '2025-06-02 07:50:10', '2025-06-02 07:50:10'),
(674, 0, 101, '2804:2658:ff06:b100:2431:f4f3:ca8b:8d80', '2025-06-03 16:50:23', '2025-06-03 16:50:23'),
(675, 0, 93, '2804:2658:ff06:b100:2431:f4f3:ca8b:8d80', '2025-06-03 16:52:12', '2025-06-03 16:52:12'),
(676, 0, 101, '45.230.85.216', '2025-06-04 12:47:28', '2025-06-04 12:47:28'),
(677, 0, 101, '168.205.103.5', '2025-06-05 00:37:23', '2025-06-05 00:37:23'),
(678, 0, 101, '177.101.32.23', '2025-06-05 16:26:24', '2025-06-05 16:26:24'),
(679, 0, 93, '177.101.32.23', '2025-06-05 16:26:56', '2025-06-05 16:26:56'),
(680, 0, 101, '177.220.176.33', '2025-06-06 12:08:10', '2025-06-06 12:08:10'),
(681, 118, 93, '177.220.176.33', '2025-06-06 12:22:05', '2025-06-06 12:22:05'),
(682, 0, 93, '186.233.115.145', '2025-06-08 15:18:13', '2025-06-08 15:18:13'),
(683, 0, 101, '186.233.115.145', '2025-06-08 15:19:00', '2025-06-08 15:19:00'),
(684, 0, 93, '2804:14c:6591:81bc:ce11:b61d:f698:a7b2', '2025-06-09 19:20:01', '2025-06-09 19:20:01'),
(685, 0, 101, '2804:7d80:b800:455f:7c82:1db4:7505:fe16', '2025-06-10 12:24:59', '2025-06-10 12:24:59'),
(686, 0, 101, '45.173.117.177', '2025-06-11 23:00:39', '2025-06-11 23:00:39'),
(687, 0, 93, '45.173.117.177', '2025-06-11 23:01:13', '2025-06-11 23:01:13'),
(688, 0, 101, '2803:9810:4621:9d10:88e3:81fb:1649:b962', '2025-06-12 10:55:34', '2025-06-12 10:55:34'),
(689, 0, 101, '177.50.79.32', '2025-06-12 19:06:15', '2025-06-12 19:06:15'),
(690, 0, 93, '177.50.79.32', '2025-06-12 19:06:52', '2025-06-12 19:06:52'),
(691, 0, 101, '2804:28d4:410:6:dfdf:37cc:72bd:880e', '2025-06-13 19:26:35', '2025-06-13 19:26:35'),
(692, 0, 101, '177.101.164.15', '2025-06-15 10:57:04', '2025-06-15 10:57:04'),
(693, 0, 101, '2804:46f4:8243:9d80:a4e1:17fa:1290:23f4', '2025-06-17 14:20:41', '2025-06-17 14:20:41'),
(694, 0, 93, '2804:46f4:8243:9d80:a4e1:17fa:1290:23f4', '2025-06-17 14:21:24', '2025-06-17 14:21:24'),
(695, 0, 101, '2804:4cb0:a007:10b0:9423:2198:a4b3:9391', '2025-06-17 14:57:28', '2025-06-17 14:57:28'),
(696, 0, 93, '2804:4cb0:a007:10b0:9423:2198:a4b3:9391', '2025-06-17 14:57:45', '2025-06-17 14:57:45'),
(697, 0, 101, '2804:2b3c:46:7a00:fe3e:2648:c892:524b', '2025-06-17 16:28:31', '2025-06-17 16:28:31'),
(698, 0, 101, '2804:7f3:404:9bdc:283f:5dc1:8158:811b', '2025-06-17 17:22:24', '2025-06-17 17:22:24'),
(699, 0, 101, '177.125.118.36', '2025-06-17 20:57:14', '2025-06-17 20:57:14'),
(700, 0, 101, '45.170.63.124', '2025-06-17 21:58:54', '2025-06-17 21:58:54'),
(701, 0, 101, '138.186.110.40', '2025-06-17 22:33:53', '2025-06-17 22:33:53'),
(702, 0, 93, '138.186.110.40', '2025-06-17 22:34:34', '2025-06-17 22:34:34'),
(703, 0, 101, '2804:14c:658f:462b:489c:ec9e:e583:3b68', '2025-06-17 22:36:18', '2025-06-17 22:36:18'),
(704, 0, 93, '2804:14c:658f:462b:489c:ec9e:e583:3b68', '2025-06-17 22:37:21', '2025-06-17 22:37:21'),
(705, 0, 101, '191.219.141.73', '2025-06-17 23:54:21', '2025-06-17 23:54:21'),
(706, 0, 93, '45.163.7.212', '2025-06-17 23:56:34', '2025-06-17 23:56:34'),
(707, 0, 101, '177.130.200.151', '2025-06-17 23:56:51', '2025-06-17 23:56:51'),
(708, 0, 101, '45.163.7.212', '2025-06-17 23:57:25', '2025-06-17 23:57:25'),
(709, 0, 101, '187.60.44.200', '2025-06-18 09:55:23', '2025-06-18 09:55:23'),
(710, 0, 101, '191.56.48.10', '2025-06-18 14:39:38', '2025-06-18 14:39:38'),
(711, 0, 101, '2804:8aa4:439b:3700:d2b:6b7:7415:7efd', '2025-06-18 16:48:07', '2025-06-18 16:48:07'),
(712, 0, 101, '170.78.65.172', '2025-06-18 17:05:06', '2025-06-18 17:05:06'),
(713, 0, 101, '45.232.58.32', '2025-06-18 17:05:31', '2025-06-18 17:05:31'),
(714, 0, 101, '2804:18:1100:8e07:c5c5:6adb:8789:e57b', '2025-06-18 17:20:39', '2025-06-18 17:20:39'),
(715, 0, 101, '177.152.187.238', '2025-06-18 18:00:10', '2025-06-18 18:00:10'),
(716, 0, 101, '45.226.240.212', '2025-06-18 21:39:29', '2025-06-18 21:39:29'),
(717, 0, 101, '2804:8aa4:43c1:e500:4e2:b903:4839:41e5', '2025-06-18 22:48:41', '2025-06-18 22:48:41'),
(718, 0, 93, '2804:8aa4:43c1:e500:4e2:b903:4839:41e5', '2025-06-18 22:49:17', '2025-06-18 22:49:17'),
(719, 0, 101, '45.184.219.24', '2025-06-19 11:05:47', '2025-06-19 11:05:47'),
(720, 0, 101, '168.181.109.218', '2025-06-19 14:02:30', '2025-06-19 14:02:30'),
(721, 0, 93, '168.181.109.218', '2025-06-19 14:03:10', '2025-06-19 14:03:10'),
(722, 0, 101, '170.78.32.64', '2025-06-19 16:24:08', '2025-06-19 16:24:08'),
(723, 0, 101, '170.79.92.230', '2025-06-19 16:33:57', '2025-06-19 16:33:57'),
(724, 0, 101, '2a01:cb08:5d0:f000:90b6:9d16:fe42:eca8', '2025-06-19 22:17:35', '2025-06-19 22:17:35'),
(725, 0, 101, '2804:29b8:3003:609f:184a:97ef:9252:f670', '2025-06-20 02:35:49', '2025-06-20 02:35:49'),
(726, 0, 93, '2804:14c:6591:81bc:f6b8:8541:c373:1228', '2025-06-20 14:30:55', '2025-06-20 14:30:55'),
(727, 0, 101, '177.53.85.3', '2025-06-20 15:29:23', '2025-06-20 15:29:23'),
(728, 0, 101, '168.181.239.120', '2025-07-04 04:06:29', '2025-07-04 04:06:29'),
(729, 0, 101, '201.77.145.93', '2025-07-05 15:08:18', '2025-07-05 15:08:18'),
(730, 0, 101, '138.122.137.40', '2025-07-06 01:12:17', '2025-07-06 01:12:17'),
(731, 0, 101, '2804:14c:658f:7d62:4d3d:6a4e:3aeb:f862', '2025-07-07 01:26:55', '2025-07-07 01:26:55'),
(732, 0, 93, '2804:14c:658f:7d62:4d3d:6a4e:3aeb:f862', '2025-07-07 01:30:29', '2025-07-07 01:30:29'),
(733, 0, 101, '2804:214:8151:be5b:e039:72fa:fea2:af25', '2025-07-07 20:39:42', '2025-07-07 20:39:42'),
(734, 0, 101, '177.125.249.209', '2025-07-07 21:13:27', '2025-07-07 21:13:27'),
(735, 0, 101, '186.235.84.142', '2025-07-07 23:43:49', '2025-07-07 23:43:49'),
(736, 0, 93, '186.235.84.142', '2025-07-07 23:44:48', '2025-07-07 23:44:48'),
(737, 0, 101, '2804:214:8751:69b9:1:0:f8d9:4546', '2025-07-13 16:48:45', '2025-07-13 16:48:45'),
(738, 0, 101, '103.154.150.84', '2025-07-13 16:55:57', '2025-07-13 16:55:57'),
(739, 0, 101, '138.204.211.200', '2025-07-14 23:32:26', '2025-07-14 23:32:26'),
(740, 0, 101, '2804:389:a461:8761:caa:6314:e249:17e1', '2025-07-14 23:42:28', '2025-07-14 23:42:28'),
(741, 0, 101, '2804:89bc:8201:7520:3809:8ac7:ec3c:d5b5', '2025-07-15 23:19:24', '2025-07-15 23:19:24'),
(742, 0, 93, '201.150.21.99', '2025-07-16 09:30:34', '2025-07-16 09:30:34'),
(743, 0, 101, '45.226.241.39', '2025-07-16 11:06:46', '2025-07-16 11:06:46'),
(744, 0, 101, '45.232.58.114', '2025-07-16 13:31:27', '2025-07-16 13:31:27'),
(745, 0, 93, '45.232.58.114', '2025-07-16 13:31:54', '2025-07-16 13:31:54'),
(746, 0, 101, '45.226.240.220', '2025-07-16 14:03:22', '2025-07-16 14:03:22'),
(747, 0, 93, '45.226.240.220', '2025-07-16 14:03:40', '2025-07-16 14:03:40'),
(748, 0, 101, '177.87.14.110', '2025-07-16 22:31:57', '2025-07-16 22:31:57'),
(749, 0, 101, '2601:240:cd00:a2b7:c53d:592d:565f:3562', '2025-07-17 17:39:15', '2025-07-17 17:39:15'),
(750, 0, 101, '186.195.100.18', '2025-07-17 23:14:14', '2025-07-17 23:14:14'),
(751, 0, 101, '2804:14c:6591:81bc:d6ae:60da:a96e:5a8f', '2025-07-18 03:11:05', '2025-07-18 03:11:05'),
(752, 0, 101, '2804:214:8152:da65:b8fc:5561:8c91:f478', '2025-07-18 11:41:29', '2025-07-18 11:41:29'),
(753, 0, 93, '2804:214:8152:da65:b8fc:5561:8c91:f478', '2025-07-18 11:41:47', '2025-07-18 11:41:47'),
(754, 0, 101, '191.243.208.144', '2025-07-18 12:02:09', '2025-07-18 12:02:09'),
(755, 0, 101, '131.100.131.172', '2025-07-19 00:38:15', '2025-07-19 00:38:15'),
(756, 0, 93, '2804:dd4:41ce:1000:ad0c:eabe:6ca5:ba5e', '2025-07-19 10:38:12', '2025-07-19 10:38:12'),
(757, 0, 101, '2804:dd4:41ce:1000:ad0c:eabe:6ca5:ba5e', '2025-07-19 10:39:14', '2025-07-19 10:39:14'),
(758, 0, 101, '2804:29b8:505f:b236:6dde:db08:9764:c299', '2025-07-19 16:51:59', '2025-07-19 16:51:59'),
(759, 0, 101, '2804:389:8131:511f:689f:1aff:fec4:fe81', '2025-07-23 11:08:46', '2025-07-23 11:08:46'),
(760, 0, 101, '45.226.241.4', '2025-07-23 11:30:24', '2025-07-23 11:30:24'),
(761, 0, 93, '45.226.241.4', '2025-07-23 11:30:42', '2025-07-23 11:30:42'),
(762, 0, 101, '2804:d59:a125:3400:e81d:a9ae:1558:a377', '2025-07-23 11:37:18', '2025-07-23 11:37:18'),
(763, 0, 101, '45.226.241.43', '2025-07-23 12:20:52', '2025-07-23 12:20:52'),
(764, 0, 93, '45.226.241.43', '2025-07-23 12:21:30', '2025-07-23 12:21:30'),
(765, 0, 101, '45.228.100.222', '2025-07-23 12:25:50', '2025-07-23 12:25:50'),
(766, 0, 93, '2804:2904:9a5:fb00:b57d:f3a5:55ac:8421', '2025-07-23 13:15:23', '2025-07-23 13:15:23'),
(767, 0, 101, '2804:2904:9a5:fb00:b57d:f3a5:55ac:8421', '2025-07-23 13:15:43', '2025-07-23 13:15:43'),
(768, 0, 101, '131.72.105.17', '2025-07-23 13:26:58', '2025-07-23 13:26:58'),
(769, 0, 101, '2804:14c:109:8ca4:751:cdb7:3b9e:e692', '2025-07-23 13:28:52', '2025-07-23 13:28:52'),
(770, 0, 101, '179.96.26.100', '2025-07-23 13:32:40', '2025-07-23 13:32:40'),
(771, 0, 101, '2804:29b8:5425:d615:21dc:f123:d235:def0', '2025-07-23 13:33:37', '2025-07-23 13:33:37'),
(772, 0, 93, '2804:29b8:5425:d615:21dc:f123:d235:def0', '2025-07-23 13:34:52', '2025-07-23 13:34:52'),
(773, 0, 101, '45.6.138.10', '2025-07-23 13:41:47', '2025-07-23 13:41:47'),
(774, 0, 101, '94.133.83.228', '2025-07-23 14:16:08', '2025-07-23 14:16:08'),
(775, 0, 93, '94.133.83.228', '2025-07-23 14:16:52', '2025-07-23 14:16:52'),
(776, 0, 101, '149.19.166.228', '2025-07-23 15:25:03', '2025-07-23 15:25:03'),
(777, 0, 101, '177.234.186.84', '2025-07-23 19:27:17', '2025-07-23 19:27:17'),
(778, 0, 101, '191.37.82.22', '2025-07-23 20:06:13', '2025-07-23 20:06:13'),
(779, 0, 101, '2804:554:27e:1000:11e8:72fe:fc62:b1c2', '2025-07-23 20:58:28', '2025-07-23 20:58:28'),
(780, 0, 101, '2804:d59:9632:a300:c09e:1f28:af04:6abb', '2025-07-23 23:45:30', '2025-07-23 23:45:30'),
(781, 0, 101, '2804:58b0:14c:5200:30eb:66c1:f646:a3fd', '2025-07-24 00:32:26', '2025-07-24 00:32:26'),
(782, 0, 101, '148.252.158.104', '2025-07-24 05:17:50', '2025-07-24 05:17:50'),
(783, 0, 93, '148.252.158.104', '2025-07-24 05:18:37', '2025-07-24 05:18:37'),
(784, 0, 101, '177.84.58.96', '2025-07-24 05:19:42', '2025-07-24 05:19:42'),
(785, 0, 101, '2804:56a4:300:2a00:c7c3:89d9:604c:fe35', '2025-07-24 06:28:48', '2025-07-24 06:28:48'),
(786, 0, 101, '189.4.111.59', '2025-07-24 07:15:25', '2025-07-24 07:15:25'),
(787, 0, 101, '2804:828:c231:d9c0:1e59:6d95:723a:bf2f', '2025-07-24 07:21:39', '2025-07-24 07:21:39'),
(788, 0, 101, '45.232.58.11', '2025-07-24 08:39:50', '2025-07-24 08:39:50'),
(789, 0, 101, '177.158.147.18', '2025-07-24 20:57:45', '2025-07-24 20:57:45'),
(790, 0, 101, '2804:7f74:b96:7200:1186:2fec:c167:34c3', '2025-07-25 10:31:00', '2025-07-25 10:31:00'),
(791, 0, 101, '177.37.180.60', '2025-07-25 13:51:20', '2025-07-25 13:51:20'),
(792, 0, 101, '186.211.251.74', '2025-07-27 06:21:55', '2025-07-27 06:21:55'),
(793, 0, 101, '45.226.241.34', '2025-07-27 22:46:38', '2025-07-27 22:46:38'),
(794, 0, 93, '45.226.241.34', '2025-07-27 22:46:53', '2025-07-27 22:46:53'),
(795, 0, 101, '177.10.138.26', '2025-07-27 22:56:01', '2025-07-27 22:56:01'),
(796, 0, 101, '45.226.124.214', '2025-07-27 23:41:47', '2025-07-27 23:41:47'),
(797, 0, 101, '45.168.66.201', '2025-07-27 23:51:14', '2025-07-27 23:51:14'),
(798, 0, 101, '45.226.240.214', '2025-07-28 00:01:17', '2025-07-28 00:01:17'),
(799, 0, 93, '177.101.5.111', '2025-07-28 06:30:13', '2025-07-28 06:30:13'),
(800, 0, 101, '187.84.153.203', '2025-07-28 07:11:41', '2025-07-28 07:11:41'),
(801, 0, 101, '2804:18:1123:cc97:1d29:91ca:3d68:c73f', '2025-07-28 10:23:55', '2025-07-28 10:23:55'),
(802, 0, 101, '2804:2904:986:2900:9fae:41a4:be92:5e1c', '2025-07-28 11:37:37', '2025-07-28 11:37:37'),
(803, 0, 101, '45.5.212.24', '2025-07-28 19:11:00', '2025-07-28 19:11:00'),
(804, 0, 101, '2804:788:524:1200:3aff:79c8:64b9:1269', '2025-07-28 19:48:27', '2025-07-28 19:48:27'),
(805, 0, 101, '45.224.234.189', '2025-07-28 20:39:09', '2025-07-28 20:39:09'),
(806, 0, 93, '45.224.234.189', '2025-07-28 20:39:42', '2025-07-28 20:39:42'),
(807, 0, 101, '45.238.236.188', '2025-07-28 21:00:18', '2025-07-28 21:00:18'),
(808, 0, 101, '45.226.241.32', '2025-07-28 21:15:33', '2025-07-28 21:15:33'),
(809, 0, 101, '2804:388:4131:fb7:1:0:4f73:36cd', '2025-07-28 21:22:06', '2025-07-28 21:22:06'),
(810, 0, 101, '2804:14c:4e2:4802:259d:ae11:a508:8931', '2025-07-28 21:48:39', '2025-07-28 21:48:39'),
(811, 0, 101, '2804:7f0:7240:ff3:e0c3:c04e:abbc:37a9', '2025-07-29 11:34:49', '2025-07-29 11:34:49'),
(812, 0, 101, '2001:67c:2628:647:32:404:0:71', '2025-07-29 13:52:14', '2025-07-29 13:52:14'),
(813, 0, 101, '2804:1dc8:7fc2:ec00:c5fc:84a8:fb5d:faf3', '2025-07-30 01:34:20', '2025-07-30 01:34:20'),
(814, 0, 93, '2804:1dc8:7fc2:ec00:c5fc:84a8:fb5d:faf3', '2025-07-30 01:35:10', '2025-07-30 01:35:10'),
(815, 0, 101, '45.226.242.0', '2025-07-30 16:56:32', '2025-07-30 16:56:32'),
(816, 0, 101, '2804:2bf4:c0a7:a800:2a94:530a:ea23:b83b', '2025-07-31 13:23:22', '2025-07-31 13:23:22'),
(817, 0, 93, '2804:2bf4:c0a7:a800:2a94:530a:ea23:b83b', '2025-07-31 13:23:48', '2025-07-31 13:23:48'),
(818, 0, 101, '189.85.81.10', '2025-08-01 15:12:15', '2025-08-01 15:12:15'),
(819, 0, 93, '189.85.81.10', '2025-08-01 15:12:39', '2025-08-01 15:12:39'),
(820, 0, 101, '168.228.200.100', '2025-08-02 07:51:03', '2025-08-02 07:51:03'),
(821, 0, 101, '2804:7f0:9641:b503:8007:ece4:74ba:3236', '2025-08-02 08:21:42', '2025-08-02 08:21:42'),
(822, 0, 101, '2804:1b3:6180:55bc:c074:81b9:4fff:fae6', '2025-08-02 08:58:24', '2025-08-02 08:58:24'),
(823, 0, 101, '189.91.176.162', '2025-08-02 10:05:43', '2025-08-02 10:05:43'),
(824, 0, 101, '170.233.196.129', '2025-08-02 10:27:31', '2025-08-02 10:27:31'),
(825, 0, 101, '2804:214:86b3:ce59:69cb:c597:9ee3:5c15', '2025-08-02 10:28:12', '2025-08-02 10:28:12'),
(826, 0, 101, '189.6.7.174', '2025-08-02 10:30:24', '2025-08-02 10:30:24'),
(827, 0, 93, '189.6.7.174', '2025-08-02 10:31:33', '2025-08-02 10:31:33'),
(828, 0, 101, '186.205.2.224', '2025-08-02 11:07:07', '2025-08-02 11:07:07'),
(829, 0, 101, '2804:1b2:1081:c746:d8cc:547:c5bc:2673', '2025-08-02 11:07:33', '2025-08-02 11:07:33'),
(830, 0, 93, '2804:1b2:1081:c746:d8cc:547:c5bc:2673', '2025-08-02 11:07:59', '2025-08-02 11:07:59'),
(831, 0, 93, '2804:d56:295:4b00:59c6:a8a4:cb07:101b', '2025-08-02 11:21:17', '2025-08-02 11:21:17'),
(832, 0, 93, '2804:1690:601:8c89:92c9:e0fc:1855:74f8', '2025-08-02 13:01:30', '2025-08-02 13:01:30'),
(833, 0, 101, '201.75.66.33', '2025-08-02 13:05:48', '2025-08-02 13:05:48'),
(834, 0, 101, '177.66.245.97', '2025-08-02 13:09:51', '2025-08-02 13:09:51'),
(835, 0, 101, '2804:55ec:8084:c700:945e:63f7:8695:5bea', '2025-08-02 13:12:37', '2025-08-02 13:12:37'),
(836, 0, 101, '2804:de0:42c:7efa:bd65:f27e:3768:edef', '2025-08-02 13:39:09', '2025-08-02 13:39:09'),
(837, 0, 101, '2804:1b2:1845:207c:fdac:2369:ff33:4667', '2025-08-02 13:44:31', '2025-08-02 13:44:31'),
(838, 0, 93, '2804:1b2:1845:207c:fdac:2369:ff33:4667', '2025-08-02 13:58:07', '2025-08-02 13:58:07'),
(839, 0, 101, '85.113.94.195', '2025-08-02 14:32:36', '2025-08-02 14:32:36'),
(840, 0, 93, '85.113.94.195', '2025-08-02 14:33:15', '2025-08-02 14:33:15'),
(841, 0, 101, '2804:868:d040:c35:bd80:8907:97d:2757', '2025-08-02 14:48:21', '2025-08-02 14:48:21'),
(842, 0, 101, '2804:f34:8010:46d:dd0e:a322:c8b7:20c5', '2025-08-02 15:06:24', '2025-08-02 15:06:24'),
(843, 0, 101, '170.233.245.95', '2025-08-02 15:16:27', '2025-08-02 15:16:27'),
(844, 0, 93, '170.233.245.95', '2025-08-02 15:16:58', '2025-08-02 15:16:58'),
(845, 0, 101, '200.218.228.122', '2025-08-02 16:06:14', '2025-08-02 16:06:14'),
(846, 0, 101, '45.176.18.234', '2025-08-02 17:19:19', '2025-08-02 17:19:19'),
(847, 0, 93, '45.176.18.234', '2025-08-02 17:19:37', '2025-08-02 17:19:37'),
(848, 0, 101, '179.191.35.128', '2025-08-02 18:09:38', '2025-08-02 18:09:38'),
(849, 0, 93, '2804:16d8:baa8:100:e2bd:5748:ab12:439', '2025-08-02 18:51:06', '2025-08-02 18:51:06'),
(850, 0, 101, '2804:16d8:baa8:100:e2bd:5748:ab12:439', '2025-08-02 18:51:21', '2025-08-02 18:51:21'),
(851, 0, 101, '2804:4c04:a22:bf00:814e:dcb5:30f1:8657', '2025-08-02 18:54:26', '2025-08-02 18:54:26'),
(852, 0, 93, '2804:4c04:a22:bf00:814e:dcb5:30f1:8657', '2025-08-02 18:55:09', '2025-08-02 18:55:09'),
(853, 0, 101, '170.0.239.251', '2025-08-02 19:36:49', '2025-08-02 19:36:49'),
(854, 0, 101, '2804:588c:108c:f801:1d32:4d7c:80c2:82ce', '2025-08-02 19:37:16', '2025-08-02 19:37:16'),
(855, 0, 101, '45.226.240.209', '2025-08-02 20:59:57', '2025-08-02 20:59:57'),
(856, 0, 101, '138.99.68.140', '2025-08-02 22:07:39', '2025-08-02 22:07:39'),
(857, 0, 101, '179.125.135.46', '2025-08-02 22:07:44', '2025-08-02 22:07:44'),
(858, 0, 101, '45.185.224.95', '2025-08-02 22:23:05', '2025-08-02 22:23:05'),
(859, 0, 101, '177.136.107.172', '2025-08-02 22:24:07', '2025-08-02 22:24:07'),
(860, 0, 101, '177.8.156.248', '2025-08-02 22:35:59', '2025-08-02 22:35:59'),
(861, 0, 101, '2804:28c8:1111:7f01:4c62:65dc:a73b:3f9c', '2025-08-02 22:38:22', '2025-08-02 22:38:22'),
(862, 0, 101, '2804:fe0:1492:cd00:4d4e:ec4d:2fad:aa3', '2025-08-02 22:49:09', '2025-08-02 22:49:09'),
(863, 0, 101, '189.113.67.178', '2025-08-02 23:01:33', '2025-08-02 23:01:33'),
(864, 0, 93, '189.113.67.178', '2025-08-02 23:01:55', '2025-08-02 23:01:55'),
(865, 0, 101, '2804:43fc:14f:8700:60e1:c565:f1bc:a6bf', '2025-08-02 23:02:36', '2025-08-02 23:02:36'),
(866, 0, 101, '138.94.54.141', '2025-08-02 23:21:35', '2025-08-02 23:21:35'),
(867, 0, 101, '177.72.141.164', '2025-08-02 23:24:57', '2025-08-02 23:24:57'),
(868, 0, 101, '200.124.167.232', '2025-08-02 23:30:35', '2025-08-02 23:30:35'),
(869, 0, 101, '192.141.72.94', '2025-08-02 23:41:37', '2025-08-02 23:41:37'),
(870, 0, 101, '177.44.176.45', '2025-08-02 23:42:42', '2025-08-02 23:42:42'),
(871, 0, 101, '2804:85dc:cc00:cd00:6895:74ef:f8ff:efc0', '2025-08-02 23:47:57', '2025-08-02 23:47:57'),
(872, 0, 101, '179.49.245.249', '2025-08-02 23:52:34', '2025-08-02 23:52:34'),
(873, 0, 101, '2804:2484:96a8:1200:a1b7:e108:4234:9f44', '2025-08-02 23:53:50', '2025-08-02 23:53:50'),
(874, 0, 101, '2804:14d:8c9e:817d:d5ad:614d:2db6:d1af', '2025-08-02 23:56:25', '2025-08-02 23:56:25'),
(875, 0, 101, '2804:1290:ec2b:800:689f:43e5:d981:8c88', '2025-08-02 23:57:38', '2025-08-02 23:57:38'),
(876, 0, 101, '45.180.145.83', '2025-08-02 23:59:45', '2025-08-02 23:59:45'),
(877, 0, 93, '45.180.145.83', '2025-08-03 00:00:06', '2025-08-03 00:00:06'),
(878, 0, 101, '177.174.211.60', '2025-08-03 00:03:35', '2025-08-03 00:03:35'),
(879, 0, 93, '177.174.211.60', '2025-08-03 00:04:19', '2025-08-03 00:04:19'),
(880, 0, 101, '2804:1b3:a2c0:13a3:e7b5:b839:f32e:6489', '2025-08-03 00:15:03', '2025-08-03 00:15:03'),
(881, 0, 101, '2804:14c:6590:8c65:39f3:b78:657b:817e', '2025-08-03 00:35:35', '2025-08-03 00:35:35'),
(882, 0, 101, '2804:2164:80d5:e201:4baf:b7e0:fed1:a418', '2025-08-03 00:45:54', '2025-08-03 00:45:54'),
(883, 0, 101, '191.7.65.228', '2025-08-03 00:52:17', '2025-08-03 00:52:17'),
(884, 0, 101, '2804:5780:1005:c03:dcd7:153:735:2b31', '2025-08-03 01:09:15', '2025-08-03 01:09:15'),
(885, 0, 93, '2804:5780:1005:c03:dcd7:153:735:2b31', '2025-08-03 01:09:35', '2025-08-03 01:09:35'),
(886, 0, 101, '177.92.118.94', '2025-08-03 01:12:46', '2025-08-03 01:12:46'),
(887, 0, 101, '177.37.170.85', '2025-08-03 01:16:26', '2025-08-03 01:16:26'),
(888, 0, 101, '2804:18:1813:5a99:1857:f522:c64f:ac6e', '2025-08-03 01:46:46', '2025-08-03 01:46:46'),
(889, 0, 101, '201.49.206.217', '2025-08-03 01:47:08', '2025-08-03 01:47:08'),
(890, 0, 101, '170.79.230.2', '2025-08-03 01:51:01', '2025-08-03 01:51:01'),
(891, 0, 101, '179.42.37.0', '2025-08-03 02:30:51', '2025-08-03 02:30:51'),
(892, 0, 101, '45.174.236.118', '2025-08-03 02:34:39', '2025-08-03 02:34:39'),
(893, 0, 93, '45.174.236.118', '2025-08-03 02:35:43', '2025-08-03 02:35:43'),
(894, 0, 101, '2804:2e0c:34c1:7701:a177:41c7:5258:b4c5', '2025-08-03 02:44:28', '2025-08-03 02:44:28'),
(895, 0, 101, '45.168.22.151', '2025-08-03 03:02:36', '2025-08-03 03:02:36'),
(896, 0, 101, '177.70.241.10', '2025-08-03 03:35:14', '2025-08-03 03:35:14'),
(897, 0, 101, '177.70.241.55', '2025-08-03 03:37:38', '2025-08-03 03:37:38'),
(898, 0, 101, '168.228.223.65', '2025-08-03 09:23:40', '2025-08-03 09:23:40'),
(899, 0, 101, '189.6.10.186', '2025-08-03 09:30:14', '2025-08-03 09:30:14'),
(900, 0, 101, '2804:2114:8017:a00:ed68:e1ac:cf64:a8b9', '2025-08-03 09:55:23', '2025-08-03 09:55:23'),
(901, 0, 101, '2804:14c:b526:82bd:9531:b04e:913c:68b', '2025-08-03 10:37:14', '2025-08-03 10:37:14'),
(902, 0, 101, '177.138.23.217', '2025-08-03 11:49:56', '2025-08-03 11:49:56'),
(903, 0, 93, '177.138.23.217', '2025-08-03 11:50:39', '2025-08-03 11:50:39'),
(904, 0, 101, '138.0.174.155', '2025-08-03 11:58:41', '2025-08-03 11:58:41'),
(905, 0, 93, '138.0.174.155', '2025-08-03 11:58:55', '2025-08-03 11:58:55'),
(906, 0, 101, '201.33.72.201', '2025-08-03 12:17:17', '2025-08-03 12:17:17'),
(907, 0, 101, '2804:e94:984:b200:79fa:f1b7:6153:2665', '2025-08-03 12:23:22', '2025-08-03 12:23:22'),
(908, 0, 101, '191.58.132.59', '2025-08-03 12:46:59', '2025-08-03 12:46:59'),
(909, 0, 101, '2804:3ed8:ba04:ef00:d23:ae01:7e17:2ece', '2025-08-03 13:06:11', '2025-08-03 13:06:11'),
(910, 0, 101, '45.185.227.115', '2025-08-03 14:02:39', '2025-08-03 14:02:39'),
(911, 0, 101, '2804:214:86ba:26db:3d36:57df:7209:8ce0', '2025-08-03 15:14:12', '2025-08-03 15:14:12'),
(912, 0, 101, '200.7.9.72', '2025-08-03 16:01:28', '2025-08-03 16:01:28'),
(913, 0, 93, '200.7.9.72', '2025-08-03 16:02:12', '2025-08-03 16:02:12'),
(914, 0, 101, '45.172.80.96', '2025-08-03 17:30:17', '2025-08-03 17:30:17'),
(915, 0, 101, '177.152.186.226', '2025-08-03 18:10:55', '2025-08-03 18:10:55'),
(916, 0, 101, '2804:d56:544:9700:c9b2:13a6:c4e9:cff9', '2025-08-03 18:36:20', '2025-08-03 18:36:20'),
(917, 0, 101, '189.45.127.57', '2025-08-03 19:09:13', '2025-08-03 19:09:13'),
(918, 0, 101, '2804:31b4:9122:6100:cd66:770e:18f1:3c50', '2025-08-03 19:58:14', '2025-08-03 19:58:14'),
(919, 0, 101, '2804:3654:8205:4500:d049:e4a8:8ec3:dd72', '2025-08-03 20:12:57', '2025-08-03 20:12:57'),
(920, 0, 101, '2804:775c:3:b200:51b9:20c8:e5a0:ea1a', '2025-08-03 20:50:19', '2025-08-03 20:50:19'),
(921, 0, 101, '201.11.61.180', '2025-08-03 21:00:43', '2025-08-03 21:00:43'),
(922, 0, 101, '2804:30c:2777:e900:8a24:1ffe:eb93:a019', '2025-08-03 21:11:56', '2025-08-03 21:11:56'),
(923, 0, 101, '2804:14c:658c:4f8f:88a0:33af:bdfb:4c24', '2025-08-03 21:35:57', '2025-08-03 21:35:57'),
(924, 0, 101, '45.238.236.114', '2025-08-03 21:39:39', '2025-08-03 21:39:39'),
(925, 0, 101, '2804:4b0:1093:4600:f9f8:e7f8:bbc9:a20b', '2025-08-03 22:08:06', '2025-08-03 22:08:06'),
(926, 0, 101, '2804:14d:846c:8330:41c7:f9c7:f81d:3b8c', '2025-08-03 22:08:11', '2025-08-03 22:08:11'),
(927, 0, 101, '2804:14c:87b8:d49e:6985:b4e6:d07a:8d49', '2025-08-03 22:42:38', '2025-08-03 22:42:38'),
(928, 0, 101, '45.160.114.76', '2025-08-03 23:41:35', '2025-08-03 23:41:35'),
(929, 0, 101, '177.8.228.17', '2025-08-04 09:17:59', '2025-08-04 09:17:59'),
(930, 0, 101, '2804:214:8150:7f62:dc68:1ce0:9164:e658', '2025-08-04 10:07:30', '2025-08-04 10:07:30'),
(931, 0, 101, '2a02:4780:13:4::2', '2025-08-04 13:49:36', '2025-08-04 13:49:36'),
(932, 0, 93, '2a02:4780:13:4::2', '2025-08-04 13:50:06', '2025-08-04 13:50:06'),
(933, 0, 101, '2a02:4780:13:5::3', '2025-08-04 14:04:31', '2025-08-04 14:04:31'),
(934, 0, 101, '2804:53e0:822a:5700:5848:3fec:7714:e46', '2025-08-04 17:07:55', '2025-08-04 17:07:55'),
(935, 0, 93, '2804:53e0:822a:5700:5848:3fec:7714:e46', '2025-08-04 17:08:53', '2025-08-04 17:08:53'),
(936, 0, 93, '2804:1b3:6180:74c9:3051:ed0e:42a4:b384', '2025-08-04 19:43:57', '2025-08-04 19:43:57'),
(937, 0, 101, '2804:2114:8017:c920:ed68:e1ac:cf64:a8b9', '2025-08-04 21:08:09', '2025-08-04 21:08:09'),
(938, 0, 101, '2804:dec:302:a3e7:b140:ee9a:4213:f345', '2025-08-04 23:14:55', '2025-08-04 23:14:55'),
(939, 0, 101, '201.2.6.96', '2025-08-05 01:46:26', '2025-08-05 01:46:26'),
(940, 0, 101, '2804:389:a3cd:1945:602c:22b6:e1dc:5974', '2025-08-05 10:12:23', '2025-08-05 10:12:23'),
(941, 0, 93, '2804:389:a3cd:1945:602c:22b6:e1dc:5974', '2025-08-05 10:12:51', '2025-08-05 10:12:51'),
(942, 0, 101, '191.38.43.82', '2025-08-05 18:41:23', '2025-08-05 18:41:23'),
(943, 0, 101, '2804:14c:5bb5:848a:29c1:47df:40e4:a387', '2025-08-05 21:20:51', '2025-08-05 21:20:51'),
(944, 0, 101, '2804:214:3c:829:792d:2e2d:8d10:9e00', '2025-08-06 15:06:39', '2025-08-06 15:06:39'),
(945, 0, 101, '2804:dd4:414e:2f00:d97d:cb1:b642:a2ae', '2025-08-06 15:11:34', '2025-08-06 15:11:34'),
(946, 0, 93, '2804:dd4:414e:2f00:d97d:cb1:b642:a2ae', '2025-08-06 15:12:09', '2025-08-06 15:12:09'),
(947, 0, 101, '191.58.142.116', '2025-08-06 19:12:53', '2025-08-06 19:12:53'),
(948, 0, 101, '45.226.240.201', '2025-08-06 20:01:00', '2025-08-06 20:01:00'),
(949, 0, 93, '45.226.240.201', '2025-08-06 20:01:37', '2025-08-06 20:01:37'),
(950, 0, 101, '2804:14c:6546:41e9:57e4:5acb:b024:620b', '2025-08-06 20:35:28', '2025-08-06 20:35:28'),
(951, 0, 93, '2804:14c:6546:41e9:57e4:5acb:b024:620b', '2025-08-06 20:35:44', '2025-08-06 20:35:44'),
(952, 0, 101, '2804:389:a230:447b:6ccd:d894:fb8a:f2f0', '2025-08-06 20:37:18', '2025-08-06 20:37:18'),
(953, 0, 101, '2804:14d:5c86:866f::1000', '2025-08-07 01:05:50', '2025-08-07 01:05:50'),
(954, 0, 101, '200.53.193.10', '2025-08-07 01:26:55', '2025-08-07 01:26:55'),
(955, 0, 93, '200.53.193.10', '2025-08-07 01:27:46', '2025-08-07 01:27:46'),
(956, 0, 101, '2804:214:c00c:2af4:11c5:6035:b45:1b95', '2025-08-07 08:27:36', '2025-08-07 08:27:36'),
(957, 0, 101, '2804:14c:65c1:400e:2d8a:8902:a5e9:a7b2', '2025-08-07 13:28:19', '2025-08-07 13:28:19'),
(958, 0, 101, '189.6.30.124', '2025-08-07 20:24:22', '2025-08-07 20:24:22'),
(959, 0, 93, '189.6.30.124', '2025-08-07 20:25:29', '2025-08-07 20:25:29'),
(960, 0, 101, '187.19.185.23', '2025-08-08 06:24:09', '2025-08-08 06:24:09'),
(961, 0, 93, '187.19.185.23', '2025-08-08 06:24:28', '2025-08-08 06:24:28'),
(962, 0, 101, '2804:18:110a:6b50:4142:aa8f:62f0:b998', '2025-08-08 14:55:50', '2025-08-08 14:55:50'),
(963, 0, 93, '2804:18:110a:6b50:4142:aa8f:62f0:b998', '2025-08-08 17:03:18', '2025-08-08 17:03:18'),
(964, 0, 101, '2804:48dc:316:7201:395f:155e:8283:672b', '2025-08-10 16:48:46', '2025-08-10 16:48:46'),
(965, 0, 93, '2804:48dc:316:7201:395f:155e:8283:672b', '2025-08-10 16:49:11', '2025-08-10 16:49:11'),
(966, 0, 101, '189.85.96.159', '2025-08-11 16:54:40', '2025-08-11 16:54:40'),
(967, 0, 101, '2804:18:1103:5a65:68bc:7210:4b35:9896', '2025-08-11 17:50:56', '2025-08-11 17:50:56'),
(968, 0, 93, '2804:18:1103:5a65:68bc:7210:4b35:9896', '2025-08-11 17:51:40', '2025-08-11 17:51:40'),
(969, 0, 101, '2804:18:110e:14b0:94f:3110:4b6a:8221', '2025-08-12 13:00:18', '2025-08-12 13:00:18'),
(970, 0, 101, '2804:8aa4:4387:ad00:1c77:eec7:3b45:c302', '2025-08-12 13:42:04', '2025-08-12 13:42:04'),
(971, 0, 93, '2804:8aa4:4387:ad00:1c77:eec7:3b45:c302', '2025-08-12 13:43:02', '2025-08-12 13:43:02'),
(972, 0, 93, '2804:7f74:b17:2200:9d42:5b32:ebe4:3ba6', '2025-08-12 17:38:58', '2025-08-12 17:38:58'),
(973, 0, 101, '2804:7f74:b17:2200:9d42:5b32:ebe4:3ba6', '2025-08-12 17:39:45', '2025-08-12 17:39:45'),
(974, 0, 101, '2804:dd4:41de:a200:d97d:cb1:b642:a2ae', '2025-08-13 15:22:18', '2025-08-13 15:22:18'),
(975, 0, 93, '2804:8074:1200:c233:c0d:ad6:3294:f893', '2025-08-13 16:09:30', '2025-08-13 16:09:30'),
(976, 0, 101, '2804:8074:1200:c233:c0d:ad6:3294:f893', '2025-08-13 16:09:56', '2025-08-13 16:09:56'),
(977, 0, 101, '2804:14c:6562:41a3:7190:d40a:e8e3:e30a', '2025-08-13 16:42:32', '2025-08-13 16:42:32'),
(978, 0, 101, '2804:14c:6591:81bc:3abb:32cf:a792:d0a7', '2025-08-13 17:27:09', '2025-08-13 17:27:09'),
(979, 0, 93, '2804:14c:6591:81bc:3abb:32cf:a792:d0a7', '2025-08-13 17:28:17', '2025-08-13 17:28:17'),
(980, 0, 101, '2804:8aa4:3305:3200:179a:8c80:1fef:5dc8', '2025-08-14 21:06:00', '2025-08-14 21:06:00'),
(981, 0, 101, '138.219.150.224', '2025-08-15 14:50:28', '2025-08-15 14:50:28'),
(982, 0, 101, '2804:44dc:104c:7500:b27f:23b4:ed56:5793', '2025-08-16 15:02:17', '2025-08-16 15:02:17'),
(983, 0, 101, '2804:214:8108:1e93:7134:1170:e18d:1920', '2025-08-17 04:36:42', '2025-08-17 04:36:42'),
(984, 0, 101, '2804:29b8:5040:5d54:84a0:c343:ebdf:3ca0', '2025-08-18 03:10:45', '2025-08-18 03:10:45'),
(985, 0, 101, '2804:1494:dcf:8900:1137:168:53e:602c', '2025-08-18 13:40:11', '2025-08-18 13:40:11'),
(986, 0, 101, '2804:1874:5022:cd00:f8d1:bb23:9e0e:dae6', '2025-08-18 18:22:47', '2025-08-18 18:22:47'),
(987, 0, 93, '2804:1874:5022:cd00:f8d1:bb23:9e0e:dae6', '2025-08-18 18:23:31', '2025-08-18 18:23:31'),
(988, 0, 101, '2804:7c54:817:aa00:58f3:c72d:f735:8a58', '2025-08-18 18:38:10', '2025-08-18 18:38:10'),
(989, 0, 101, '138.185.199.222', '2025-08-18 19:03:32', '2025-08-18 19:03:32'),
(990, 0, 101, '181.232.203.56', '2025-08-18 19:58:27', '2025-08-18 19:58:27'),
(991, 0, 101, '2804:14c:50:8c35:6148:2238:a96d:d637', '2025-08-18 21:17:31', '2025-08-18 21:17:31'),
(992, 0, 101, '206.0.20.109', '2025-08-18 22:23:57', '2025-08-18 22:23:57'),
(993, 0, 93, '45.232.58.72', '2025-08-19 07:34:45', '2025-08-19 07:34:45'),
(994, 0, 101, '2804:7f74:b9d:4e00:e9d7:5b5:113d:8e7b', '2025-08-19 09:55:19', '2025-08-19 09:55:19'),
(995, 0, 93, '2804:7f74:b9d:4e00:e9d7:5b5:113d:8e7b', '2025-08-19 09:55:44', '2025-08-19 09:55:44'),
(996, 0, 101, '2804:14c:6591:4151:503c:f316:d96a:f174', '2025-08-19 09:58:51', '2025-08-19 09:58:51'),
(997, 0, 101, '2804:8aa4:3e61:a800:65d9:fb11:9b22:5564', '2025-08-19 12:42:56', '2025-08-19 12:42:56'),
(998, 0, 101, '2804:18:89d:77ba:19b9:876e:92f6:6843', '2025-08-19 13:27:22', '2025-08-19 13:27:22'),
(999, 0, 101, '189.76.206.127', '2025-08-19 14:03:52', '2025-08-19 14:03:52'),
(1000, 0, 101, '2804:dd4:41cb:4f00:60b3:8733:f5c7:5f76', '2025-08-19 14:40:09', '2025-08-19 14:40:09'),
(1001, 0, 101, '189.115.244.74', '2025-08-19 15:10:32', '2025-08-19 15:10:32'),
(1002, 0, 101, '2804:14c:65c3:419d:c9cc:29d:4a60:f8c7', '2025-08-19 16:39:06', '2025-08-19 16:39:06'),
(1003, 0, 101, '189.6.14.244', '2025-08-19 18:17:15', '2025-08-19 18:17:15'),
(1004, 0, 101, '2804:8aa4:330e:1b00:3195:6481:e580:5578', '2025-08-19 20:41:44', '2025-08-19 20:41:44'),
(1005, 0, 93, '2804:8aa4:330e:1b00:3195:6481:e580:5578', '2025-08-19 20:42:00', '2025-08-19 20:42:00'),
(1006, 0, 101, '2804:23bc:80b:fd00:9859:607b:e09b:aa46', '2025-08-20 00:30:19', '2025-08-20 00:30:19'),
(1007, 0, 93, '2804:23bc:80b:fd00:9859:607b:e09b:aa46', '2025-08-20 00:31:12', '2025-08-20 00:31:12'),
(1008, 0, 101, '2804:774:8103:5938:ecee:bf75:1266:7fe5', '2025-08-20 03:08:17', '2025-08-20 03:08:17'),
(1009, 0, 101, '2804:57f4:2103:391e:b550:71d2:22cd:2d82', '2025-08-20 12:42:02', '2025-08-20 12:42:02'),
(1010, 0, 93, '2804:14c:6581:50bb:cdc2:273e:def9:6061', '2025-08-20 14:33:21', '2025-08-20 14:33:21'),
(1011, 0, 101, '2804:14c:6581:50bb:cdc2:273e:def9:6061', '2025-08-20 14:33:33', '2025-08-20 14:33:33'),
(1012, 0, 101, '2804:1b2:1143:cf1b:4556:5bb4:83b5:90a', '2025-08-22 02:43:30', '2025-08-22 02:43:30'),
(1013, 0, 101, '2804:4b9c:4c:7700:f9ee:45e8:2b31:d487', '2025-08-22 12:02:48', '2025-08-22 12:02:48'),
(1014, 0, 101, '38.76.236.191', '2025-08-22 17:43:42', '2025-08-22 17:43:42'),
(1015, 0, 93, '38.76.236.191', '2025-08-22 17:44:35', '2025-08-22 17:44:35'),
(1016, 0, 101, '2804:1b2:f185:5a9e:f5b8:c72e:2e1d:a2f8', '2025-08-23 09:44:40', '2025-08-23 09:44:40'),
(1017, 0, 101, '2804:400:a9e2:0:9e76:338d:a85f:d0fb', '2025-08-23 12:16:48', '2025-08-23 12:16:48'),
(1018, 0, 101, '2804:14c:6583:6307:e9d5:5417:c02c:2b1e', '2025-08-24 12:21:23', '2025-08-24 12:21:23'),
(1019, 0, 101, '170.233.159.237', '2025-08-24 12:25:30', '2025-08-24 12:25:30'),
(1020, 0, 101, '105.168.144.135', '2025-08-24 13:31:00', '2025-08-24 13:31:00'),
(1021, 0, 93, '105.168.144.135', '2025-08-24 13:31:20', '2025-08-24 13:31:20'),
(1022, 0, 101, '45.226.241.104', '2025-08-25 07:08:26', '2025-08-25 07:08:26'),
(1023, 0, 93, '45.226.241.104', '2025-08-25 07:08:53', '2025-08-25 07:08:53'),
(1024, 0, 101, '191.122.211.122', '2025-08-25 14:09:03', '2025-08-25 14:09:03'),
(1025, 0, 101, '45.184.70.67', '2025-08-26 14:45:57', '2025-08-26 14:45:57'),
(1026, 0, 93, '45.184.70.67', '2025-08-26 14:46:40', '2025-08-26 14:46:40'),
(1027, 0, 101, '2804:d41:a14a:1e00:adea:62ae:369b:f28b', '2025-08-26 17:28:01', '2025-08-26 17:28:01'),
(1028, 0, 101, '200.219.87.154', '2025-08-27 17:11:07', '2025-08-27 17:11:07'),
(1029, 0, 101, '2804:7f3:ff80:47fa:75:832f:c024:d11c', '2025-08-27 22:06:14', '2025-08-27 22:06:14'),
(1030, 0, 101, '176.201.187.47', '2025-08-27 22:10:00', '2025-08-27 22:10:00'),
(1031, 0, 101, '2804:1b2:1081:dc9:3da7:aae5:b940:c921', '2025-08-27 22:29:04', '2025-08-27 22:29:04'),
(1032, 0, 101, '2804:7c54:826:3000:d96:3b81:2134:89ba', '2025-08-28 01:37:33', '2025-08-28 01:37:33'),
(1033, 0, 101, '2803:2a00:2004:bfd2:28d2:f77:94a7:6a1', '2025-08-28 08:44:50', '2025-08-28 08:44:50'),
(1034, 0, 93, '2803:2a00:2004:bfd2:28d2:f77:94a7:6a1', '2025-08-28 08:45:43', '2025-08-28 08:45:43'),
(1035, 0, 101, '2804:389:a286:7dc9:a0:b992:d17a:f48a', '2025-08-28 11:57:50', '2025-08-28 11:57:50'),
(1036, 0, 101, '168.195.99.82', '2025-08-28 16:40:19', '2025-08-28 16:40:19'),
(1037, 0, 101, '2804:7f0:a218:b6b:89ba:5002:afb4:79a3', '2025-08-28 18:20:16', '2025-08-28 18:20:16'),
(1038, 0, 101, '189.85.99.131', '2025-08-28 19:30:05', '2025-08-28 19:30:05'),
(1039, 0, 101, '170.80.37.107', '2025-08-29 01:40:08', '2025-08-29 01:40:08'),
(1040, 0, 101, '2804:14c:65d5:50e7:558c:bbba:6da5:76ff', '2025-08-30 00:42:08', '2025-08-30 00:42:08'),
(1041, 0, 101, '2804:18:892:d949:5818:5784:2e0e:f569', '2025-08-30 07:16:14', '2025-08-30 07:16:14'),
(1042, 0, 101, '2804:7f74:ba8:ef00:2d89:ffe:d7:349f', '2025-08-30 19:57:37', '2025-08-30 19:57:37'),
(1043, 0, 101, '45.164.240.115', '2025-08-31 17:23:53', '2025-08-31 17:23:53'),
(1044, 0, 101, '2804:14c:65d5:50e7:517d:d6e4:9984:92c4', '2025-08-31 21:04:31', '2025-08-31 21:04:31'),
(1045, 0, 93, '2804:14c:65d5:50e7:517d:d6e4:9984:92c4', '2025-08-31 21:05:57', '2025-08-31 21:05:57'),
(1046, 0, 101, '179.127.250.52', '2025-09-01 20:38:37', '2025-09-01 20:38:37'),
(1047, 0, 93, '179.127.250.52', '2025-09-01 20:38:57', '2025-09-01 20:38:57'),
(1048, 0, 101, '2804:389:a3f5:6a36:94b7:9dd9:c122:93cf', '2025-09-02 23:46:45', '2025-09-02 23:46:45'),
(1049, 0, 101, '2804:14c:65c4:4275:e09a:57d4:763f:6da8', '2025-09-03 00:35:17', '2025-09-03 00:35:17'),
(1050, 0, 93, '2804:14c:65c4:4275:e09a:57d4:763f:6da8', '2025-09-03 00:36:05', '2025-09-03 00:36:05'),
(1051, 0, 101, '170.80.36.69', '2025-09-04 00:34:59', '2025-09-04 00:34:59'),
(1052, 0, 101, '2804:d59:871a:b700:cc7d:141b:e8e0:4eb2', '2025-09-04 13:33:05', '2025-09-04 13:33:05'),
(1053, 0, 101, '2804:14c:3d86:2cb7:4da6:db8c:273b:32c', '2025-09-04 18:07:51', '2025-09-04 18:07:51'),
(1054, 0, 93, '2804:14c:3d86:2cb7:4da6:db8c:273b:32c', '2025-09-04 18:08:11', '2025-09-04 18:08:11'),
(1055, 0, 101, '189.44.200.148', '2025-09-04 20:47:05', '2025-09-04 20:47:05'),
(1056, 0, 101, '2804:29b8:504a:2f4b:89dc:1496:5e9b:2263', '2025-09-06 00:52:16', '2025-09-06 00:52:16'),
(1057, 0, 93, '2804:29b8:504a:2f4b:89dc:1496:5e9b:2263', '2025-09-06 00:53:25', '2025-09-06 00:53:25'),
(1058, 0, 101, '2804:46f4:824c:ed40:61f2:7ef6:a990:597c', '2025-09-06 16:17:53', '2025-09-06 16:17:53'),
(1059, 0, 101, '45.226.242.35', '2025-09-06 17:42:43', '2025-09-06 17:42:43'),
(1060, 0, 101, '2804:4be4:311b:8100:61ac:6d01:5dd3:47d2', '2025-09-07 22:34:01', '2025-09-07 22:34:01'),
(1061, 125, 101, '2804:14c:1bb:857b:29e4:1a7f:89bd:8723', '2025-09-09 15:15:43', '2025-09-09 15:15:43'),
(1062, 125, 93, '2804:14c:1bb:857b:29e4:1a7f:89bd:8723', '2025-09-09 15:22:26', '2025-09-09 15:22:26'),
(1063, 0, 93, '2804:389:a2ac:c100:38f9:443f:be40:ff56', '2025-09-23 03:12:11', '2025-09-23 03:12:11'),
(1064, 0, 93, '2804:14c:65c4:4034:d1a9:201d:1f09:d999', '2025-09-23 21:37:10', '2025-09-23 21:37:10'),
(1065, 0, 93, '45.175.169.107', '2025-09-24 04:04:13', '2025-09-24 04:04:13'),
(1066, 0, 93, '2804:14c:658f:aa43:cc9d:8abf:66a1:77dc', '2025-09-24 09:43:46', '2025-09-24 09:43:46'),
(1067, 0, 93, '2804:389:e196:c1bd:61b2:b18f:7c32:72b4', '2025-09-24 11:18:11', '2025-09-24 11:18:11'),
(1068, 0, 93, '2804:1b2:1842:a56e:6038:54df:a0d5:a831', '2025-09-25 01:59:46', '2025-09-25 01:59:46'),
(1069, 0, 93, '168.228.200.8', '2025-09-30 21:40:07', '2025-09-30 21:40:07'),
(1070, 0, 93, '2804:14c:6584:5b72:5d02:735:6955:5bbe', '2025-10-01 11:48:00', '2025-10-01 11:48:00'),
(1071, 0, 93, '2804:5df0:532:9a00:ec37:3f54:4d22:3d84', '2025-10-01 12:06:29', '2025-10-01 12:06:29'),
(1072, 0, 93, '2804:389:a28f:eb12:d8a5:41ff:fee5:70da', '2025-10-01 12:27:38', '2025-10-01 12:27:38'),
(1073, 0, 93, '2804:389:a471:23dc:c903:77b:3580:2bb6', '2025-10-01 12:28:04', '2025-10-01 12:28:04'),
(1074, 0, 93, '45.184.70.145', '2025-10-01 12:59:09', '2025-10-01 12:59:09'),
(1075, 0, 93, '143.208.74.225', '2025-10-01 14:30:53', '2025-10-01 14:30:53'),
(1076, 0, 93, '2804:14c:65c4:44bf:c93d:ddd5:dc8d:9429', '2025-10-01 14:47:41', '2025-10-01 14:47:41'),
(1077, 0, 93, '164.163.115.254', '2025-10-01 14:50:48', '2025-10-01 14:50:48'),
(1078, 0, 93, '45.164.240.65', '2025-10-01 15:22:59', '2025-10-01 15:22:59'),
(1079, 0, 93, '191.58.146.27', '2025-10-02 00:06:20', '2025-10-02 00:06:20'),
(1080, 0, 93, '2804:388:c359:8a10:c192:15ec:3f3c:a95b', '2025-10-02 12:12:15', '2025-10-02 12:12:15'),
(1081, 0, 93, '2804:14c:5bd8:4d08:8cf9:aa1b:b2a9:f3be', '2025-10-09 16:14:01', '2025-10-09 16:14:01'),
(1082, 0, 93, '2804:14c:6591:81bc:222a:55bf:181a:6e68', '2025-10-10 11:14:06', '2025-10-10 11:14:06'),
(1083, 0, 93, '200.173.217.65', '2025-10-12 10:29:31', '2025-10-12 10:29:31'),
(1084, 0, 93, '2603:6081:50f0:7bc0:41e9:2737:51af:1739', '2025-10-13 18:54:49', '2025-10-13 18:54:49'),
(1085, 0, 93, '2804:14c:65a1:83d0:f1bb:2f1e:695c:601b', '2025-10-23 10:29:49', '2025-10-23 10:29:49'),
(1086, 0, 93, '179.183.90.227', '2025-10-23 13:56:11', '2025-10-23 13:56:11');
INSERT INTO `video_views` (`id`, `user_id`, `updates_id`, `ip`, `created_at`, `updated_at`) VALUES
(1087, 0, 93, '189.6.20.138', '2025-10-23 23:16:14', '2025-10-23 23:16:14'),
(1088, 0, 93, '200.24.118.157', '2025-10-28 17:36:02', '2025-10-28 17:36:02'),
(1089, 163, 93, '45.226.242.46', '2025-10-28 19:28:36', '2025-10-28 19:28:36'),
(1090, 0, 93, '2804:7f3:ff80:55c7:f1e1:ae72:436b:6bfa', '2025-10-29 13:37:08', '2025-10-29 13:37:08'),
(1091, 0, 93, '187.63.96.17', '2025-11-02 07:17:25', '2025-11-02 07:17:25'),
(1092, 0, 93, '128.201.76.138', '2025-11-05 15:46:47', '2025-11-05 15:46:47'),
(1093, 0, 93, '200.24.98.153', '2025-11-07 11:47:21', '2025-11-07 11:47:21'),
(1094, 0, 93, '170.81.65.212', '2025-11-09 11:37:23', '2025-11-09 11:37:23'),
(1095, 0, 93, '2804:214:8150:7c9d:3dcc:9155:f326:2dd9', '2025-11-09 18:42:06', '2025-11-09 18:42:06'),
(1096, 0, 93, '2804:214:4013:13a0:b567:bd98:7eaa:399b', '2025-11-10 22:59:07', '2025-11-10 22:59:07'),
(1097, 0, 93, '2804:3c60:82a5:3600:bdfa:5b03:ee81:6671', '2025-11-12 07:27:14', '2025-11-12 07:27:14'),
(1098, 0, 93, '2804:389:a2b0:829:f216:7cce:a257:708a', '2025-11-13 22:19:39', '2025-11-13 22:19:39'),
(1099, 0, 93, '193.176.127.88', '2025-11-18 14:47:14', '2025-11-18 14:47:14'),
(1100, 0, 93, '2804:389:a3f2:ae4a:d73f:5665:358b:2f3c', '2025-11-19 19:12:59', '2025-11-19 19:12:59'),
(1101, 0, 93, '2804:2a4c:602a:1f00:8012:7c4f:9dd5:cbed', '2025-11-22 16:37:25', '2025-11-22 16:37:25'),
(1102, 0, 93, '2804:b54:2300:1753:9a41:fa36:d027:4aa1', '2025-11-23 15:22:11', '2025-11-23 15:22:11'),
(1103, 0, 93, '189.50.93.232', '2025-11-29 00:03:11', '2025-11-29 00:03:11'),
(1104, 0, 93, '186.193.7.18', '2025-12-07 18:11:53', '2025-12-07 18:11:53'),
(1105, 0, 93, '2804:14c:6591:81bc:fe35:828:2a56:d4b4', '2025-12-09 00:27:00', '2025-12-09 00:27:00'),
(1106, 0, 93, '2804:14c:6591:81bc:f331:b92a:52f7:3e36', '2025-12-09 15:24:29', '2025-12-09 15:24:29'),
(1107, 0, 93, '2804:1e68:8a01:4c15:e196:ce43:9ac5:644a', '2025-12-11 16:05:38', '2025-12-11 16:05:38'),
(1108, 0, 93, '2804:1378:43b0:0:5b9:a17a:4d9a:65ca', '2025-12-14 23:17:49', '2025-12-14 23:17:49'),
(1109, 0, 93, '2804:214:86bb:ddbf:1c03:9239:7148:35f0', '2025-12-15 06:13:36', '2025-12-15 06:13:36'),
(1110, 0, 93, '2804:7f0:9a80:1f23:ddd9:d012:a71:6d47', '2025-12-15 10:21:03', '2025-12-15 10:21:03'),
(1111, 0, 93, '2804:14c:65c0:46d6:2864:3aef:46c2:6807', '2025-12-17 00:43:06', '2025-12-17 00:43:06'),
(1112, 0, 93, '177.125.49.100', '2025-12-18 14:08:57', '2025-12-18 14:08:57'),
(1113, 0, 93, '2804:774:8100:142e:914f:60df:266b:5555', '2025-12-29 08:20:13', '2025-12-29 08:20:13'),
(1114, 0, 93, '2804:14c:65c1:61bb:6045:cc7f:2c52:a2db', '2025-12-31 00:20:13', '2025-12-31 00:20:13'),
(1115, 0, 93, '177.71.82.135', '2026-01-17 12:49:24', '2026-01-17 12:49:24'),
(1116, 0, 93, '187.63.102.182', '2026-01-28 15:08:33', '2026-01-28 15:08:33'),
(1117, 0, 93, '187.43.164.134', '2026-01-29 14:37:49', '2026-01-29 14:37:49'),
(1118, 0, 93, '2804:214:8194:d681:e804:f988:352a:44d3', '2026-01-30 01:11:34', '2026-01-30 01:11:34'),
(1119, 0, 93, '2a09:bac2:b1d:1323::1e8:c5', '2026-01-31 21:11:33', '2026-01-31 21:11:33'),
(1120, 0, 93, '138.97.21.235', '2026-02-10 20:57:34', '2026-02-10 20:57:34'),
(1121, 0, 93, '2a02:9b0:405c:902c:5963:afc:216a:e4f4', '2026-02-16 04:28:21', '2026-02-16 04:28:21'),
(1122, 0, 93, '2a02:ce0:2003:6742:4472:4fe5:a9db:f9b3', '2026-02-20 19:25:27', '2026-02-20 19:25:27'),
(1123, 176, 93, '179.113.59.120', '2026-02-22 11:10:06', '2026-02-22 11:10:06'),
(1124, 0, 93, '2804:14c:6591:81bc:b145:98e7:cbe5:6db4', '2026-03-01 15:57:57', '2026-03-01 15:57:57'),
(1125, 178, 93, '177.124.149.75', '2026-03-03 18:44:08', '2026-03-03 18:44:08'),
(1126, 0, 93, '45.180.194.68', '2026-03-05 10:55:06', '2026-03-05 10:55:06');

-- --------------------------------------------------------

--
-- Estrutura para tabela `withdrawals`
--

DROP TABLE IF EXISTS `withdrawals`;
CREATE TABLE IF NOT EXISTS `withdrawals` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','paid') NOT NULL DEFAULT 'pending',
  `amount` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `gateway` varchar(100) NOT NULL,
  `account` text NOT NULL,
  `estimated_payment` timestamp NULL DEFAULT NULL,
  `date_paid` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `txn_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `campaings_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `user_id`, `status`, `amount`, `date`, `gateway`, `account`, `estimated_payment`, `date_paid`, `txn_id`) VALUES
(1, 3, 'paid', '10000', '2024-05-22 00:14:04', 'Bank', '619961382220000000000000', '2024-05-31 00:14:04', '2024-05-22 00:23:15', ''),
(2, 3, 'paid', '1000', '2024-05-29 17:03:10', 'Bank', '619961382220000000000000', '2024-06-07 17:03:10', '2024-06-05 18:50:04', ''),
(3, 3, 'paid', '10000', '2024-10-05 23:41:19', 'Bank', '619961382220000000000000', '2024-10-15 23:41:19', '2025-01-31 01:55:25', '');
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
