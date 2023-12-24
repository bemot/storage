-- phpMyAdmin SQL Dump
-- version 5.0.4deb2+deb11u1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 19, 2023 at 10:52 PM
-- Server version: 10.5.21-MariaDB-0+deb11u1
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `action_parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`action_parameters`)),
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `action_parameters`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::upload.read', '{}', NULL, '{}', '[]', '2023-11-19 20:45:37.998000', '2023-11-19 20:45:37.998000', NULL, NULL),
(2, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.008000', '2023-11-19 20:45:38.008000', NULL, NULL),
(3, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.017000', '2023-11-19 20:45:38.017000', NULL, NULL),
(4, 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.026000', '2023-11-19 20:45:38.026000', NULL, NULL),
(5, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.035000', '2023-11-19 20:45:38.035000', NULL, NULL),
(6, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.042000', '2023-11-19 20:45:38.042000', NULL, NULL),
(7, 'plugin::upload.read', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2023-11-19 20:45:38.052000', '2023-11-19 20:45:38.052000', NULL, NULL),
(8, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.061000', '2023-11-19 20:45:38.061000', NULL, NULL),
(9, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.071000', '2023-11-19 20:45:38.071000', NULL, NULL),
(10, 'plugin::upload.assets.update', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2023-11-19 20:45:38.084000', '2023-11-19 20:45:38.084000', NULL, NULL),
(11, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.092000', '2023-11-19 20:45:38.092000', NULL, NULL),
(12, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.102000', '2023-11-19 20:45:38.102000', NULL, NULL),
(16, 'plugin::content-manager.explorer.delete', '{}', 'plugin::users-permissions.user', '{}', '[]', '2023-11-19 20:45:38.173000', '2023-11-19 20:45:38.173000', NULL, NULL),
(17, 'plugin::content-manager.single-types.configure-view', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.182000', '2023-11-19 20:45:38.182000', NULL, NULL),
(18, 'plugin::content-manager.collection-types.configure-view', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.190000', '2023-11-19 20:45:38.190000', NULL, NULL),
(19, 'plugin::content-manager.components.configure-layout', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.198000', '2023-11-19 20:45:38.198000', NULL, NULL),
(20, 'plugin::content-type-builder.read', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.206000', '2023-11-19 20:45:38.206000', NULL, NULL),
(21, 'plugin::email.settings.read', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.214000', '2023-11-19 20:45:38.214000', NULL, NULL),
(22, 'plugin::upload.read', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.222000', '2023-11-19 20:45:38.222000', NULL, NULL),
(23, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.230000', '2023-11-19 20:45:38.230000', NULL, NULL),
(24, 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.239000', '2023-11-19 20:45:38.239000', NULL, NULL),
(25, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.248000', '2023-11-19 20:45:38.248000', NULL, NULL),
(26, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.257000', '2023-11-19 20:45:38.257000', NULL, NULL),
(27, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.269000', '2023-11-19 20:45:38.269000', NULL, NULL),
(28, 'plugin::upload.settings.read', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.278000', '2023-11-19 20:45:38.278000', NULL, NULL),
(29, 'plugin::i18n.locale.create', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.287000', '2023-11-19 20:45:38.287000', NULL, NULL),
(30, 'plugin::i18n.locale.read', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.299000', '2023-11-19 20:45:38.299000', NULL, NULL),
(31, 'plugin::i18n.locale.update', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.313000', '2023-11-19 20:45:38.313000', NULL, NULL),
(32, 'plugin::i18n.locale.delete', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.323000', '2023-11-19 20:45:38.323000', NULL, NULL),
(33, 'plugin::users-permissions.roles.create', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.334000', '2023-11-19 20:45:38.334000', NULL, NULL),
(34, 'plugin::users-permissions.roles.read', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.344000', '2023-11-19 20:45:38.344000', NULL, NULL),
(35, 'plugin::users-permissions.roles.update', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.353000', '2023-11-19 20:45:38.353000', NULL, NULL),
(36, 'plugin::users-permissions.roles.delete', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.365000', '2023-11-19 20:45:38.365000', NULL, NULL),
(37, 'plugin::users-permissions.providers.read', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.372000', '2023-11-19 20:45:38.372000', NULL, NULL),
(38, 'plugin::users-permissions.providers.update', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.379000', '2023-11-19 20:45:38.379000', NULL, NULL),
(39, 'plugin::users-permissions.email-templates.read', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.386000', '2023-11-19 20:45:38.386000', NULL, NULL),
(40, 'plugin::users-permissions.email-templates.update', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.394000', '2023-11-19 20:45:38.394000', NULL, NULL),
(41, 'plugin::users-permissions.advanced-settings.read', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.405000', '2023-11-19 20:45:38.405000', NULL, NULL),
(42, 'plugin::users-permissions.advanced-settings.update', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.417000', '2023-11-19 20:45:38.417000', NULL, NULL),
(43, 'admin::marketplace.read', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.424000', '2023-11-19 20:45:38.424000', NULL, NULL),
(44, 'admin::webhooks.create', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.432000', '2023-11-19 20:45:38.432000', NULL, NULL),
(45, 'admin::webhooks.read', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.440000', '2023-11-19 20:45:38.440000', NULL, NULL),
(46, 'admin::webhooks.update', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.448000', '2023-11-19 20:45:38.448000', NULL, NULL),
(47, 'admin::webhooks.delete', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.456000', '2023-11-19 20:45:38.456000', NULL, NULL),
(48, 'admin::users.create', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.464000', '2023-11-19 20:45:38.464000', NULL, NULL),
(49, 'admin::users.read', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.471000', '2023-11-19 20:45:38.471000', NULL, NULL),
(50, 'admin::users.update', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.480000', '2023-11-19 20:45:38.480000', NULL, NULL),
(51, 'admin::users.delete', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.489000', '2023-11-19 20:45:38.489000', NULL, NULL),
(52, 'admin::roles.create', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.497000', '2023-11-19 20:45:38.497000', NULL, NULL),
(53, 'admin::roles.read', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.504000', '2023-11-19 20:45:38.504000', NULL, NULL),
(54, 'admin::roles.update', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.513000', '2023-11-19 20:45:38.513000', NULL, NULL),
(55, 'admin::roles.delete', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.520000', '2023-11-19 20:45:38.520000', NULL, NULL),
(56, 'admin::api-tokens.access', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.529000', '2023-11-19 20:45:38.529000', NULL, NULL),
(57, 'admin::api-tokens.create', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.537000', '2023-11-19 20:45:38.537000', NULL, NULL),
(58, 'admin::api-tokens.read', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.545000', '2023-11-19 20:45:38.545000', NULL, NULL),
(59, 'admin::api-tokens.update', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.552000', '2023-11-19 20:45:38.552000', NULL, NULL),
(60, 'admin::api-tokens.regenerate', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.560000', '2023-11-19 20:45:38.560000', NULL, NULL),
(61, 'admin::api-tokens.delete', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.568000', '2023-11-19 20:45:38.568000', NULL, NULL),
(62, 'admin::project-settings.update', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.576000', '2023-11-19 20:45:38.576000', NULL, NULL),
(63, 'admin::project-settings.read', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.584000', '2023-11-19 20:45:38.584000', NULL, NULL),
(64, 'admin::transfer.tokens.access', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.591000', '2023-11-19 20:45:38.591000', NULL, NULL),
(65, 'admin::transfer.tokens.create', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.599000', '2023-11-19 20:45:38.599000', NULL, NULL),
(66, 'admin::transfer.tokens.read', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.606000', '2023-11-19 20:45:38.606000', NULL, NULL),
(67, 'admin::transfer.tokens.update', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.614000', '2023-11-19 20:45:38.614000', NULL, NULL),
(68, 'admin::transfer.tokens.regenerate', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.622000', '2023-11-19 20:45:38.622000', NULL, NULL),
(69, 'admin::transfer.tokens.delete', '{}', NULL, '{}', '[]', '2023-11-19 20:45:38.631000', '2023-11-19 20:45:38.631000', NULL, NULL),
(73, 'plugin::content-manager.explorer.delete', '{}', 'api::item.item', '{}', '[]', '2023-11-19 20:53:09.926000', '2023-11-19 20:53:09.926000', NULL, NULL),
(74, 'plugin::content-manager.explorer.publish', '{}', 'api::item.item', '{}', '[]', '2023-11-19 20:53:09.936000', '2023-11-19 20:53:09.936000', NULL, NULL),
(150, 'plugin::content-manager.explorer.delete', '{}', 'api::category-of-item.category-of-item', '{}', '[]', '2023-11-22 12:09:47.977000', '2023-11-22 12:09:47.977000', NULL, NULL),
(151, 'plugin::content-manager.explorer.publish', '{}', 'api::category-of-item.category-of-item', '{}', '[]', '2023-11-22 12:09:47.990000', '2023-11-22 12:09:47.990000', NULL, NULL),
(176, 'plugin::content-manager.explorer.delete', '{}', 'api::garage.garage', '{}', '[]', '2023-11-26 18:07:05.855000', '2023-11-26 18:07:05.855000', NULL, NULL),
(177, 'plugin::content-manager.explorer.publish', '{}', 'api::garage.garage', '{}', '[]', '2023-11-26 18:07:05.864000', '2023-11-26 18:07:05.864000', NULL, NULL),
(187, 'plugin::content-manager.explorer.delete', '{}', 'api::note.note', '{}', '[]', '2023-11-26 21:49:14.111000', '2023-11-26 21:49:14.111000', NULL, NULL),
(188, 'plugin::content-manager.explorer.publish', '{}', 'api::note.note', '{}', '[]', '2023-11-26 21:49:14.119000', '2023-11-26 21:49:14.119000', NULL, NULL),
(204, 'plugin::import-export-entries.import', '{}', NULL, '{}', '[]', '2023-11-27 22:24:55.395000', '2023-11-27 22:24:55.395000', NULL, NULL),
(205, 'plugin::import-export-entries.export', '{}', NULL, '{}', '[]', '2023-11-27 22:24:55.408000', '2023-11-27 22:24:55.408000', NULL, NULL),
(215, 'plugin::content-manager.explorer.create', '{}', 'api::note.note', '{\"fields\":[\"name\",\"surname\",\"email\",\"message\",\"select\",\"users_permissions_user\"]}', '[]', '2023-12-03 20:12:44.105000', '2023-12-03 20:12:44.105000', NULL, NULL),
(216, 'plugin::content-manager.explorer.read', '{}', 'api::note.note', '{\"fields\":[\"name\",\"surname\",\"email\",\"message\",\"select\",\"users_permissions_user\"]}', '[]', '2023-12-03 20:12:44.116000', '2023-12-03 20:12:44.116000', NULL, NULL),
(217, 'plugin::content-manager.explorer.update', '{}', 'api::note.note', '{\"fields\":[\"name\",\"surname\",\"email\",\"message\",\"select\",\"users_permissions_user\"]}', '[]', '2023-12-03 20:12:44.125000', '2023-12-03 20:12:44.125000', NULL, NULL),
(221, 'plugin::content-manager.explorer.create', '{}', 'api::item.item', '{\"fields\":[\"name_of_item\",\"shelf\",\"shelf_space\",\"purchase_date\",\"pictures\",\"category_of_items\",\"storage_place\",\"users_permissions_user\",\"notes\"]}', '[]', '2023-12-05 23:52:04.207000', '2023-12-05 23:52:04.207000', NULL, NULL),
(222, 'plugin::content-manager.explorer.read', '{}', 'api::item.item', '{\"fields\":[\"name_of_item\",\"shelf\",\"shelf_space\",\"purchase_date\",\"pictures\",\"category_of_items\",\"storage_place\",\"users_permissions_user\",\"notes\"]}', '[]', '2023-12-05 23:52:04.219000', '2023-12-05 23:52:04.219000', NULL, NULL),
(223, 'plugin::content-manager.explorer.update', '{}', 'api::item.item', '{\"fields\":[\"name_of_item\",\"shelf\",\"shelf_space\",\"purchase_date\",\"pictures\",\"category_of_items\",\"storage_place\",\"users_permissions_user\",\"notes\"]}', '[]', '2023-12-05 23:52:04.229000', '2023-12-05 23:52:04.229000', NULL, NULL),
(243, 'plugin::content-manager.explorer.create', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2023-12-07 04:46:01.812000', '2023-12-07 04:46:01.812000', NULL, NULL),
(245, 'plugin::content-manager.explorer.read', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2023-12-07 04:46:01.829000', '2023-12-07 04:46:01.829000', NULL, NULL),
(247, 'plugin::content-manager.explorer.update', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2023-12-07 04:46:01.846000', '2023-12-07 04:46:01.846000', NULL, NULL),
(248, 'plugin::content-manager.explorer.create', '{}', 'api::category-of-item.category-of-item', '{\"fields\":[\"category\",\"parent\",\"item\"]}', '[]', '2023-12-07 04:49:34.063000', '2023-12-07 04:49:34.063000', NULL, NULL),
(249, 'plugin::content-manager.explorer.read', '{}', 'api::category-of-item.category-of-item', '{\"fields\":[\"category\",\"parent\",\"item\"]}', '[]', '2023-12-07 04:49:34.073000', '2023-12-07 04:49:34.073000', NULL, NULL),
(250, 'plugin::content-manager.explorer.update', '{}', 'api::category-of-item.category-of-item', '{\"fields\":[\"category\",\"parent\",\"item\"]}', '[]', '2023-12-07 04:49:34.081000', '2023-12-07 04:49:34.081000', NULL, NULL),
(251, 'plugin::content-manager.explorer.create', '{}', 'api::garage.garage', '{\"fields\":[\"storage_name\",\"description\",\"picture\"]}', '[]', '2023-12-07 04:50:00.518000', '2023-12-07 04:50:00.518000', NULL, NULL),
(252, 'plugin::content-manager.explorer.read', '{}', 'api::garage.garage', '{\"fields\":[\"storage_name\",\"description\",\"picture\"]}', '[]', '2023-12-07 04:50:00.527000', '2023-12-07 04:50:00.527000', NULL, NULL),
(253, 'plugin::content-manager.explorer.update', '{}', 'api::garage.garage', '{\"fields\":[\"storage_name\",\"description\",\"picture\"]}', '[]', '2023-12-07 04:50:00.535000', '2023-12-07 04:50:00.535000', NULL, NULL),
(254, 'plugin::content-manager.explorer.create', '{}', 'api::typesofthing.typesofthing', '{\"fields\":[\"name\"]}', '[]', '2023-12-14 01:47:53.570000', '2023-12-14 01:47:53.570000', NULL, NULL),
(255, 'plugin::content-manager.explorer.read', '{}', 'api::typesofthing.typesofthing', '{\"fields\":[\"name\"]}', '[]', '2023-12-14 01:47:53.583000', '2023-12-14 01:47:53.583000', NULL, NULL),
(256, 'plugin::content-manager.explorer.update', '{}', 'api::typesofthing.typesofthing', '{\"fields\":[\"name\"]}', '[]', '2023-12-14 01:47:53.592000', '2023-12-14 01:47:53.592000', NULL, NULL),
(257, 'plugin::content-manager.explorer.delete', '{}', 'api::typesofthing.typesofthing', '{}', '[]', '2023-12-14 01:47:53.602000', '2023-12-14 01:47:53.602000', NULL, NULL),
(258, 'plugin::content-manager.explorer.publish', '{}', 'api::typesofthing.typesofthing', '{}', '[]', '2023-12-14 01:47:53.612000', '2023-12-14 01:47:53.612000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 2, 3),
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 3, 1),
(8, 8, 3, 2),
(9, 9, 3, 3),
(10, 10, 3, 4),
(11, 11, 3, 5),
(12, 12, 3, 6),
(16, 16, 1, 4),
(17, 17, 1, 5),
(18, 18, 1, 6),
(19, 19, 1, 7),
(20, 20, 1, 8),
(21, 21, 1, 9),
(22, 22, 1, 10),
(23, 23, 1, 11),
(24, 24, 1, 12),
(25, 25, 1, 13),
(26, 26, 1, 14),
(27, 27, 1, 15),
(28, 28, 1, 16),
(29, 29, 1, 17),
(30, 30, 1, 18),
(31, 31, 1, 19),
(32, 32, 1, 20),
(33, 33, 1, 21),
(34, 34, 1, 22),
(35, 35, 1, 23),
(36, 36, 1, 24),
(37, 37, 1, 25),
(38, 38, 1, 26),
(39, 39, 1, 27),
(40, 40, 1, 28),
(41, 41, 1, 29),
(42, 42, 1, 30),
(43, 43, 1, 31),
(44, 44, 1, 32),
(45, 45, 1, 33),
(46, 46, 1, 34),
(47, 47, 1, 35),
(48, 48, 1, 36),
(49, 49, 1, 37),
(50, 50, 1, 38),
(51, 51, 1, 39),
(52, 52, 1, 40),
(53, 53, 1, 41),
(54, 54, 1, 42),
(55, 55, 1, 43),
(56, 56, 1, 44),
(57, 57, 1, 45),
(58, 58, 1, 46),
(59, 59, 1, 47),
(60, 60, 1, 48),
(61, 61, 1, 49),
(62, 62, 1, 50),
(63, 63, 1, 51),
(64, 64, 1, 52),
(65, 65, 1, 53),
(66, 66, 1, 54),
(67, 67, 1, 55),
(68, 68, 1, 56),
(69, 69, 1, 57),
(73, 73, 1, 61),
(74, 74, 1, 62),
(150, 150, 1, 69),
(151, 151, 1, 70),
(176, 176, 1, 80),
(177, 177, 1, 81),
(187, 187, 1, 91),
(188, 188, 1, 92),
(204, 204, 1, 96),
(205, 205, 1, 97),
(215, 215, 1, 107),
(216, 216, 1, 108),
(217, 217, 1, 109),
(221, 221, 1, 113),
(222, 222, 1, 114),
(223, 223, 1, 115),
(243, 243, 1, 128),
(245, 245, 1, 130),
(247, 247, 1, 132),
(248, 248, 1, 133),
(249, 249, 1, 134),
(250, 250, 1, 135),
(251, 251, 1, 136),
(252, 252, 1, 137),
(253, 253, 1, 138),
(254, 254, 1, 139),
(255, 255, 1, 140),
(256, 256, 1, 141),
(257, 257, 1, 142),
(258, 258, 1, 143);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2023-11-19 20:45:37.974000', '2023-11-19 20:45:37.974000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2023-11-19 20:45:37.985000', '2023-11-19 20:45:37.985000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2023-11-19 20:45:37.990000', '2023-11-19 20:45:37.990000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Олександр', 'Грибинюк', NULL, 'bemotic@gmail.com', '$2a$10$QS7zhf5SLHBzoPW2q39W7uVnD1GvgJwoNxYJdfNy8ulTveeUQensO', NULL, NULL, 1, 0, NULL, '2023-11-19 20:46:10.042000', '2023-11-19 21:13:09.550000', NULL, NULL),
(2, 'grisha', 'Hrybyniuk', NULL, 'agrybyniuk@gmail.com', '$2a$10$VAI6kyFuQFHz0OULsx9sg./3hIOdJtdnIdBW93daOwp4nazv2dIxS', NULL, NULL, 1, 0, NULL, '2023-11-19 21:11:25.138000', '2023-11-19 21:12:22.530000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `role_order` double UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`, `role_order`, `user_order`) VALUES
(1, 1, 1, 1, 1),
(2, 2, 3, 1, 1),
(3, 2, 1, 2, 2),
(4, 2, 2, 3, 1),
(5, 1, 2, 2, 2),
(6, 1, 3, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category_of_items`
--

CREATE TABLE `category_of_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_of_items`
--

INSERT INTO `category_of_items` (`id`, `category`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(3, 'інструменти по дереву', '2023-11-22 12:21:49.582000', '2023-12-07 03:50:28.008000', '2023-11-22 12:22:01.430000', 1, 1),
(4, 'інструменти по металу', '2023-11-22 12:22:30.451000', '2023-12-03 19:57:42.861000', '2023-11-22 12:55:19.178000', 1, 1),
(5, 'метизи', '2023-11-22 12:23:27.458000', '2023-12-03 19:59:34.339000', '2023-11-22 12:55:32.526000', 1, 1),
(6, 'кухонне приладдя', '2023-11-22 12:23:48.311000', '2023-12-03 19:58:45.140000', '2023-11-22 12:55:25.916000', 1, 1),
(7, 'циркулярки', '2023-11-22 12:24:52.603000', '2023-12-03 20:00:13.904000', '2023-11-22 12:55:39.815000', 1, 1),
(8, 'пилка по дереву', '2023-11-22 13:06:17.786000', '2023-12-03 19:59:55.455000', '2023-11-22 13:07:02.314000', 1, 1),
(9, 'зварювальне обладнання', '2023-11-23 12:16:19.897000', '2023-12-03 19:58:00.249000', '2023-11-23 12:16:47.827000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_of_items_item_links`
--

CREATE TABLE `category_of_items_item_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_of_item_id` int(10) UNSIGNED DEFAULT NULL,
  `item_id` int(10) UNSIGNED DEFAULT NULL,
  `category_of_item_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_of_items_item_links`
--

INSERT INTO `category_of_items_item_links` (`id`, `category_of_item_id`, `item_id`, `category_of_item_order`) VALUES
(122, 3, 122, 1),
(123, 4, 123, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_of_items_parent_links`
--

CREATE TABLE `category_of_items_parent_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_of_item_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_category_of_item_id` int(10) UNSIGNED DEFAULT NULL,
  `category_of_item_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_of_items_parent_links`
--

INSERT INTO `category_of_items_parent_links` (`id`, `category_of_item_id`, `inv_category_of_item_id`, `category_of_item_order`) VALUES
(1, 7, 3, 1),
(2, 8, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(4, 'cofemacnine.jpg', NULL, NULL, 960, 1567, '{\"thumbnail\":{\"name\":\"thumbnail_cofemacnine.jpg\",\"hash\":\"thumbnail_cofemacnine_4cab92ad69\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":96,\"height\":156,\"size\":3.58,\"url\":\"/uploads/thumbnail_cofemacnine_4cab92ad69.jpg\"},\"large\":{\"name\":\"large_cofemacnine.jpg\",\"hash\":\"large_cofemacnine_4cab92ad69\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":613,\"height\":1000,\"size\":58.68,\"url\":\"/uploads/large_cofemacnine_4cab92ad69.jpg\"},\"medium\":{\"name\":\"medium_cofemacnine.jpg\",\"hash\":\"medium_cofemacnine_4cab92ad69\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":459,\"height\":750,\"size\":37.5,\"url\":\"/uploads/medium_cofemacnine_4cab92ad69.jpg\"},\"small\":{\"name\":\"small_cofemacnine.jpg\",\"hash\":\"small_cofemacnine_4cab92ad69\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":307,\"height\":500,\"size\":20.02,\"url\":\"/uploads/small_cofemacnine_4cab92ad69.jpg\"}}', 'cofemacnine_4cab92ad69', '.jpg', 'image/jpeg', '111.77', '/uploads/cofemacnine_4cab92ad69.jpg', NULL, 'local', NULL, '/', '2023-11-23 00:26:36.329000', '2023-11-23 00:26:36.329000', 1, 1),
(5, 'pylka_lanzugova.jpg', NULL, NULL, 1000, 1000, '{\"thumbnail\":{\"name\":\"thumbnail_pylka_lanzugova.jpg\",\"hash\":\"thumbnail_pylka_lanzugova_09729aea5d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.32,\"url\":\"/uploads/thumbnail_pylka_lanzugova_09729aea5d.jpg\"},\"medium\":{\"name\":\"medium_pylka_lanzugova.jpg\",\"hash\":\"medium_pylka_lanzugova_09729aea5d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":44.24,\"url\":\"/uploads/medium_pylka_lanzugova_09729aea5d.jpg\"},\"small\":{\"name\":\"small_pylka_lanzugova.jpg\",\"hash\":\"small_pylka_lanzugova_09729aea5d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":24.33,\"url\":\"/uploads/small_pylka_lanzugova_09729aea5d.jpg\"}}', 'pylka_lanzugova_09729aea5d', '.jpg', 'image/jpeg', '73.76', '/uploads/pylka_lanzugova_09729aea5d.jpg', NULL, 'local', NULL, '/', '2023-11-23 00:29:24.696000', '2023-12-06 00:23:50.884000', 1, 1),
(6, 'bolts.jpg', NULL, NULL, 700, 500, '{\"thumbnail\":{\"name\":\"thumbnail_bolts.jpg\",\"hash\":\"thumbnail_bolts_a37f2a7b85\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":218,\"height\":156,\"size\":9.4,\"url\":\"/uploads/thumbnail_bolts_a37f2a7b85.jpg\"},\"small\":{\"name\":\"small_bolts.jpg\",\"hash\":\"small_bolts_a37f2a7b85\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":357,\"size\":36.46,\"url\":\"/uploads/small_bolts_a37f2a7b85.jpg\"}}', 'bolts_a37f2a7b85', '.jpg', 'image/jpeg', '66.96', '/uploads/bolts_a37f2a7b85.jpg', NULL, 'local', NULL, '/', '2023-11-23 00:36:10.376000', '2023-11-23 00:37:51.894000', 1, 1),
(7, 'circularcutter.jpg', NULL, NULL, 1084, 716, '{\"thumbnail\":{\"name\":\"thumbnail_circularcutter.jpg\",\"hash\":\"thumbnail_circularcutter_51619cf392\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":236,\"height\":156,\"size\":7.82,\"url\":\"/uploads/thumbnail_circularcutter_51619cf392.jpg\"},\"medium\":{\"name\":\"medium_circularcutter.jpg\",\"hash\":\"medium_circularcutter_51619cf392\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":495,\"size\":43.89,\"url\":\"/uploads/medium_circularcutter_51619cf392.jpg\"},\"small\":{\"name\":\"small_circularcutter.jpg\",\"hash\":\"small_circularcutter_51619cf392\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":330,\"size\":24.39,\"url\":\"/uploads/small_circularcutter_51619cf392.jpg\"},\"large\":{\"name\":\"large_circularcutter.jpg\",\"hash\":\"large_circularcutter_51619cf392\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":661,\"size\":66.84,\"url\":\"/uploads/large_circularcutter_51619cf392.jpg\"}}', 'circularcutter_51619cf392', '.jpg', 'image/jpeg', '63.34', '/uploads/circularcutter_51619cf392.jpg', NULL, 'local', NULL, '/', '2023-11-23 00:36:10.431000', '2023-12-06 00:18:10.500000', 1, 1),
(8, 'rubanok.png', NULL, NULL, 1000, 1000, '{\"thumbnail\":{\"name\":\"thumbnail_rubanok.png\",\"hash\":\"thumbnail_rubanok_27b271f522\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":37.46,\"url\":\"/uploads/thumbnail_rubanok_27b271f522.png\"},\"small\":{\"name\":\"small_rubanok.png\",\"hash\":\"small_rubanok_27b271f522\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":285.35,\"url\":\"/uploads/small_rubanok_27b271f522.png\"},\"medium\":{\"name\":\"medium_rubanok.png\",\"hash\":\"medium_rubanok_27b271f522\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":750,\"size\":591.07,\"url\":\"/uploads/medium_rubanok_27b271f522.png\"}}', 'rubanok_27b271f522', '.png', 'image/png', '233.05', '/uploads/rubanok_27b271f522.png', NULL, 'local', NULL, '/', '2023-11-23 00:36:11.992000', '2023-12-07 05:29:24.521000', 1, 1),
(9, 'rubanok2.png', NULL, NULL, 768, 768, '{\"thumbnail\":{\"name\":\"thumbnail_rubanok2.png\",\"hash\":\"thumbnail_rubanok2_89d40b7fc3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":59.64,\"url\":\"/uploads/thumbnail_rubanok2_89d40b7fc3.png\"},\"small\":{\"name\":\"small_rubanok2.png\",\"hash\":\"small_rubanok2_89d40b7fc3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":515.78,\"url\":\"/uploads/small_rubanok2_89d40b7fc3.png\"},\"medium\":{\"name\":\"medium_rubanok2.png\",\"hash\":\"medium_rubanok2_89d40b7fc3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":750,\"size\":1048.01,\"url\":\"/uploads/medium_rubanok2_89d40b7fc3.png\"}}', 'rubanok2_89d40b7fc3', '.png', 'image/png', '279.89', '/uploads/rubanok2_89d40b7fc3.png', NULL, 'local', NULL, '/', '2023-11-23 00:36:12.186000', '2023-11-23 00:36:12.186000', 1, 1),
(11, 'маска_зварювальника.jpg', NULL, NULL, 550, 413, '{\"thumbnail\":{\"name\":\"thumbnail_маска_зварювальника.jpg\",\"hash\":\"thumbnail_maska_zvaryuvalnika_4a3c400105\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":208,\"height\":156,\"size\":5.21,\"url\":\"/uploads/thumbnail_maska_zvaryuvalnika_4a3c400105.jpg\"},\"small\":{\"name\":\"small_маска_зварювальника.jpg\",\"hash\":\"small_maska_zvaryuvalnika_4a3c400105\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":375,\"size\":19.52,\"url\":\"/uploads/small_maska_zvaryuvalnika_4a3c400105.jpg\"}}', 'maska_zvaryuvalnika_4a3c400105', '.jpg', 'image/jpeg', '22.78', '/uploads/maska_zvaryuvalnika_4a3c400105.jpg', NULL, 'local', NULL, '/', '2023-11-23 12:24:08.414000', '2023-12-06 02:01:08.764000', 1, 1),
(12, 'drilling-16-2.jpg', NULL, NULL, 720, 720, '{\"thumbnail\":{\"name\":\"thumbnail_drilling-16-2.jpg\",\"hash\":\"thumbnail_drilling_16_2_427f20d795\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":3.21,\"url\":\"/uploads/thumbnail_drilling_16_2_427f20d795.jpg\"},\"small\":{\"name\":\"small_drilling-16-2.jpg\",\"hash\":\"small_drilling_16_2_427f20d795\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":16.22,\"url\":\"/uploads/small_drilling_16_2_427f20d795.jpg\"}}', 'drilling_16_2_427f20d795', '.jpg', 'image/jpeg', '24.37', '/uploads/drilling_16_2_427f20d795.jpg', NULL, 'local', NULL, '/', '2023-11-26 16:29:44.576000', '2023-11-26 16:29:44.576000', 1, 1),
(13, 'ukrokit.jpeg', NULL, NULL, 1213, 838, '{\"thumbnail\":{\"name\":\"thumbnail_ukrokit.jpeg\",\"hash\":\"thumbnail_ukrokit_c6ba13cfe7\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":226,\"height\":156,\"size\":8.88,\"url\":\"/uploads/thumbnail_ukrokit_c6ba13cfe7.jpeg\"},\"medium\":{\"name\":\"medium_ukrokit.jpeg\",\"hash\":\"medium_ukrokit_c6ba13cfe7\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":518,\"size\":63.94,\"url\":\"/uploads/medium_ukrokit_c6ba13cfe7.jpeg\"},\"small\":{\"name\":\"small_ukrokit.jpeg\",\"hash\":\"small_ukrokit_c6ba13cfe7\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":345,\"size\":32.75,\"url\":\"/uploads/small_ukrokit_c6ba13cfe7.jpeg\"},\"large\":{\"name\":\"large_ukrokit.jpeg\",\"hash\":\"large_ukrokit_c6ba13cfe7\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":691,\"size\":102.25,\"url\":\"/uploads/large_ukrokit_c6ba13cfe7.jpeg\"}}', 'ukrokit_c6ba13cfe7', '.jpeg', 'image/jpeg', '140.52', '/uploads/ukrokit_c6ba13cfe7.jpeg', NULL, 'local', NULL, '/', '2023-12-01 13:43:23.137000', '2023-12-18 21:30:22.430000', 1, 1),
(14, 'motopyla.jpg', NULL, NULL, 640, 480, '{\"thumbnail\":{\"name\":\"thumbnail_motopyla.jpg\",\"hash\":\"thumbnail_motopyla_f8c8b0d3ca\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":208,\"height\":156,\"size\":9.35,\"url\":\"/uploads/thumbnail_motopyla_f8c8b0d3ca.jpg\"},\"small\":{\"name\":\"small_motopyla.jpg\",\"hash\":\"small_motopyla_f8c8b0d3ca\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":375,\"size\":44.05,\"url\":\"/uploads/small_motopyla_f8c8b0d3ca.jpg\"}}', 'motopyla_f8c8b0d3ca', '.jpg', 'image/jpeg', '66.42', '/uploads/motopyla_f8c8b0d3ca.jpg', NULL, 'local', NULL, '/', '2023-12-02 03:32:44.708000', '2023-12-06 23:42:07.423000', 1, 1),
(16, 'кавоварка.jpg', NULL, NULL, 1000, 1000, '{\"thumbnail\":{\"name\":\"thumbnail_кавоварка.jpg\",\"hash\":\"thumbnail_kavovarka_0c1c1162c1\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.62,\"url\":\"/uploads/thumbnail_kavovarka_0c1c1162c1.jpg\"},\"medium\":{\"name\":\"medium_кавоварка.jpg\",\"hash\":\"medium_kavovarka_0c1c1162c1\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":49.42,\"url\":\"/uploads/medium_kavovarka_0c1c1162c1.jpg\"},\"small\":{\"name\":\"small_кавоварка.jpg\",\"hash\":\"small_kavovarka_0c1c1162c1\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":26.31,\"url\":\"/uploads/small_kavovarka_0c1c1162c1.jpg\"}}', 'kavovarka_0c1c1162c1', '.jpg', 'image/jpeg', '77.49', '/uploads/kavovarka_0c1c1162c1.jpg', NULL, 'local', NULL, '/', '2023-12-06 01:21:58.307000', '2023-12-06 19:55:17.035000', 1, 1),
(17, '6b1a0f1-050.jpg', NULL, NULL, 755, 465, '{\"thumbnail\":{\"name\":\"thumbnail_6b1a0f1-050.jpg\",\"hash\":\"thumbnail_6b1a0f1_050_6897d7ff9f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":151,\"size\":8.77,\"url\":\"/uploads/thumbnail_6b1a0f1_050_6897d7ff9f.jpg\"},\"small\":{\"name\":\"small_6b1a0f1-050.jpg\",\"hash\":\"small_6b1a0f1_050_6897d7ff9f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":308,\"size\":31.72,\"url\":\"/uploads/small_6b1a0f1_050_6897d7ff9f.jpg\"},\"medium\":{\"name\":\"medium_6b1a0f1-050.jpg\",\"hash\":\"medium_6b1a0f1_050_6897d7ff9f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":462,\"size\":67.34,\"url\":\"/uploads/medium_6b1a0f1_050_6897d7ff9f.jpg\"}}', '6b1a0f1_050_6897d7ff9f', '.jpg', 'image/jpeg', '70.97', '/uploads/6b1a0f1_050_6897d7ff9f.jpg', NULL, 'local', NULL, '/1', '2023-12-07 00:59:41.744000', '2023-12-07 00:59:41.744000', NULL, NULL),
(26, 'rubanok-p20st-hitachi-hikoki.jpg', NULL, NULL, 800, 800, '{\"thumbnail\":{\"name\":\"thumbnail_rubanok-p20st-hitachi-hikoki.jpg\",\"hash\":\"thumbnail_rubanok_p20st_hitachi_hikoki_8a23a379a4\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.14,\"url\":\"/uploads/thumbnail_rubanok_p20st_hitachi_hikoki_8a23a379a4.jpg\"},\"medium\":{\"name\":\"medium_rubanok-p20st-hitachi-hikoki.jpg\",\"hash\":\"medium_rubanok_p20st_hitachi_hikoki_8a23a379a4\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":45.14,\"url\":\"/uploads/medium_rubanok_p20st_hitachi_hikoki_8a23a379a4.jpg\"},\"small\":{\"name\":\"small_rubanok-p20st-hitachi-hikoki.jpg\",\"hash\":\"small_rubanok_p20st_hitachi_hikoki_8a23a379a4\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":23.17,\"url\":\"/uploads/small_rubanok_p20st_hitachi_hikoki_8a23a379a4.jpg\"}}', 'rubanok_p20st_hitachi_hikoki_8a23a379a4', '.jpg', 'image/jpeg', '51.33', '/uploads/rubanok_p20st_hitachi_hikoki_8a23a379a4.jpg', NULL, 'local', NULL, '/1', '2023-12-07 22:32:24.138000', '2023-12-07 22:32:24.138000', NULL, NULL),
(41, 'кавоварка.jpg', NULL, NULL, 1000, 1000, '{\"thumbnail\":{\"name\":\"thumbnail_кавоварка.jpg\",\"hash\":\"thumbnail_kavovarka_c5a3850699\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.62,\"url\":\"/uploads/thumbnail_kavovarka_c5a3850699.jpg\"},\"medium\":{\"name\":\"medium_кавоварка.jpg\",\"hash\":\"medium_kavovarka_c5a3850699\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":49.42,\"url\":\"/uploads/medium_kavovarka_c5a3850699.jpg\"},\"small\":{\"name\":\"small_кавоварка.jpg\",\"hash\":\"small_kavovarka_c5a3850699\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":26.31,\"url\":\"/uploads/small_kavovarka_c5a3850699.jpg\"}}', 'kavovarka_c5a3850699', '.jpg', 'image/jpeg', '77.49', '/uploads/kavovarka_c5a3850699.jpg', NULL, 'local', NULL, '/1', '2023-12-08 04:22:40.325000', '2023-12-08 04:22:40.325000', NULL, NULL),
(42, 'кавоварка.jpg', NULL, NULL, 1000, 1000, '{\"thumbnail\":{\"name\":\"thumbnail_кавоварка.jpg\",\"hash\":\"thumbnail_kavovarka_861cf24514\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.62,\"url\":\"/uploads/thumbnail_kavovarka_861cf24514.jpg\"},\"medium\":{\"name\":\"medium_кавоварка.jpg\",\"hash\":\"medium_kavovarka_861cf24514\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":49.42,\"url\":\"/uploads/medium_kavovarka_861cf24514.jpg\"},\"small\":{\"name\":\"small_кавоварка.jpg\",\"hash\":\"small_kavovarka_861cf24514\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":26.31,\"url\":\"/uploads/small_kavovarka_861cf24514.jpg\"}}', 'kavovarka_861cf24514', '.jpg', 'image/jpeg', '77.49', '/uploads/kavovarka_861cf24514.jpg', NULL, 'local', NULL, '/1', '2023-12-08 04:24:43.840000', '2023-12-08 04:24:43.840000', NULL, NULL),
(43, 'кавоварка.jpg', NULL, NULL, 1000, 1000, '{\"thumbnail\":{\"name\":\"thumbnail_кавоварка.jpg\",\"hash\":\"thumbnail_kavovarka_513328dfba\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.62,\"url\":\"/uploads/thumbnail_kavovarka_513328dfba.jpg\"},\"small\":{\"name\":\"small_кавоварка.jpg\",\"hash\":\"small_kavovarka_513328dfba\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":26.31,\"url\":\"/uploads/small_kavovarka_513328dfba.jpg\"},\"medium\":{\"name\":\"medium_кавоварка.jpg\",\"hash\":\"medium_kavovarka_513328dfba\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":49.42,\"url\":\"/uploads/medium_kavovarka_513328dfba.jpg\"}}', 'kavovarka_513328dfba', '.jpg', 'image/jpeg', '77.49', '/uploads/kavovarka_513328dfba.jpg', NULL, 'local', NULL, '/1', '2023-12-08 04:25:44.300000', '2023-12-08 04:25:44.300000', NULL, NULL),
(44, 'кавоварка.jpg', NULL, NULL, 1000, 1000, '{\"thumbnail\":{\"name\":\"thumbnail_кавоварка.jpg\",\"hash\":\"thumbnail_kavovarka_f5d5548e0e\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.62,\"url\":\"/uploads/thumbnail_kavovarka_f5d5548e0e.jpg\"},\"medium\":{\"name\":\"medium_кавоварка.jpg\",\"hash\":\"medium_kavovarka_f5d5548e0e\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":49.42,\"url\":\"/uploads/medium_kavovarka_f5d5548e0e.jpg\"},\"small\":{\"name\":\"small_кавоварка.jpg\",\"hash\":\"small_kavovarka_f5d5548e0e\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":26.31,\"url\":\"/uploads/small_kavovarka_f5d5548e0e.jpg\"}}', 'kavovarka_f5d5548e0e', '.jpg', 'image/jpeg', '77.49', '/uploads/kavovarka_f5d5548e0e.jpg', NULL, 'local', NULL, '/1', '2023-12-08 04:28:10.647000', '2023-12-08 04:28:10.647000', NULL, NULL),
(45, '1.jpg', NULL, NULL, 800, 800, '{\"thumbnail\":{\"name\":\"thumbnail_1.jpg\",\"hash\":\"thumbnail_1_3194e7b4b0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.14,\"url\":\"/uploads/thumbnail_1_3194e7b4b0.jpg\"},\"medium\":{\"name\":\"medium_1.jpg\",\"hash\":\"medium_1_3194e7b4b0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":45.14,\"url\":\"/uploads/medium_1_3194e7b4b0.jpg\"},\"small\":{\"name\":\"small_1.jpg\",\"hash\":\"small_1_3194e7b4b0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":23.17,\"url\":\"/uploads/small_1_3194e7b4b0.jpg\"}}', '1_3194e7b4b0', '.jpg', 'image/jpeg', '51.33', '/uploads/1_3194e7b4b0.jpg', NULL, 'local', NULL, '/1', '2023-12-08 04:44:07.702000', '2023-12-08 04:44:07.702000', NULL, NULL),
(46, 'кавоварка.jpg', NULL, NULL, 1000, 1000, '{\"thumbnail\":{\"name\":\"thumbnail_кавоварка.jpg\",\"hash\":\"thumbnail_kavovarka_22ee4a14aa\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.62,\"url\":\"/uploads/thumbnail_kavovarka_22ee4a14aa.jpg\"},\"medium\":{\"name\":\"medium_кавоварка.jpg\",\"hash\":\"medium_kavovarka_22ee4a14aa\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":49.42,\"url\":\"/uploads/medium_kavovarka_22ee4a14aa.jpg\"},\"small\":{\"name\":\"small_кавоварка.jpg\",\"hash\":\"small_kavovarka_22ee4a14aa\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":26.31,\"url\":\"/uploads/small_kavovarka_22ee4a14aa.jpg\"}}', 'kavovarka_22ee4a14aa', '.jpg', 'image/jpeg', '77.49', '/uploads/kavovarka_22ee4a14aa.jpg', NULL, 'local', NULL, '/1', '2023-12-08 04:45:35.469000', '2023-12-08 04:45:35.469000', NULL, NULL),
(47, 'rubanok-p20st-hitachi-hikoki.jpg', NULL, NULL, 800, 800, '{\"thumbnail\":{\"name\":\"thumbnail_rubanok-p20st-hitachi-hikoki.jpg\",\"hash\":\"thumbnail_rubanok_p20st_hitachi_hikoki_37ccd29663\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.14,\"url\":\"/uploads/thumbnail_rubanok_p20st_hitachi_hikoki_37ccd29663.jpg\"},\"medium\":{\"name\":\"medium_rubanok-p20st-hitachi-hikoki.jpg\",\"hash\":\"medium_rubanok_p20st_hitachi_hikoki_37ccd29663\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":45.14,\"url\":\"/uploads/medium_rubanok_p20st_hitachi_hikoki_37ccd29663.jpg\"},\"small\":{\"name\":\"small_rubanok-p20st-hitachi-hikoki.jpg\",\"hash\":\"small_rubanok_p20st_hitachi_hikoki_37ccd29663\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":23.17,\"url\":\"/uploads/small_rubanok_p20st_hitachi_hikoki_37ccd29663.jpg\"}}', 'rubanok_p20st_hitachi_hikoki_37ccd29663', '.jpg', 'image/jpeg', '51.33', '/uploads/rubanok_p20st_hitachi_hikoki_37ccd29663.jpg', NULL, 'local', NULL, '/1', '2023-12-08 04:48:28.725000', '2023-12-08 04:48:28.725000', NULL, NULL),
(48, '41wpPrMXpqL.jpg', NULL, NULL, 500, 500, '{\"thumbnail\":{\"name\":\"thumbnail_41wpPrMXpqL.jpg\",\"hash\":\"thumbnail_41wp_Pr_M_Xpq_L_275ad5a91f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.59,\"url\":\"/uploads/thumbnail_41wp_Pr_M_Xpq_L_275ad5a91f.jpg\"}}', '41wp_Pr_M_Xpq_L_275ad5a91f', '.jpg', 'image/jpeg', '19.84', '/uploads/41wp_Pr_M_Xpq_L_275ad5a91f.jpg', NULL, 'local', NULL, '/1', '2023-12-08 04:57:43.463000', '2023-12-08 04:57:43.463000', NULL, NULL),
(49, '022001-1.487x449.jpg', NULL, NULL, 487, 449, '{\"thumbnail\":{\"name\":\"thumbnail_022001-1.487x449.jpg\",\"hash\":\"thumbnail_022001_1_487x449_0739995cea\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":169,\"height\":156,\"size\":6.08,\"url\":\"/uploads/thumbnail_022001_1_487x449_0739995cea.jpg\"}}', '022001_1_487x449_0739995cea', '.jpg', 'image/jpeg', '33.38', '/uploads/022001_1_487x449_0739995cea.jpg', NULL, 'local', NULL, '/1', '2023-12-08 11:49:00.488000', '2023-12-08 11:49:00.488000', NULL, NULL),
(50, '8fd2d9603f698ab241e03dcd69ea7860.jpeg', NULL, NULL, 400, 314, '{\"thumbnail\":{\"name\":\"thumbnail_8fd2d9603f698ab241e03dcd69ea7860.jpeg\",\"hash\":\"thumbnail_8fd2d9603f698ab241e03dcd69ea7860_2dc987872f\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":199,\"height\":156,\"size\":7.69,\"url\":\"/uploads/thumbnail_8fd2d9603f698ab241e03dcd69ea7860_2dc987872f.jpeg\"}}', '8fd2d9603f698ab241e03dcd69ea7860_2dc987872f', '.jpeg', 'image/jpeg', '33.07', '/uploads/8fd2d9603f698ab241e03dcd69ea7860_2dc987872f.jpeg', NULL, 'local', NULL, '/1', '2023-12-08 18:41:38.998000', '2023-12-08 18:41:38.998000', NULL, NULL),
(51, '45524515.webp', NULL, NULL, 436, 500, '{\"thumbnail\":{\"name\":\"thumbnail_45524515.webp\",\"hash\":\"thumbnail_45524515_52807f6e79\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":136,\"height\":156,\"size\":3.95,\"url\":\"/uploads/thumbnail_45524515_52807f6e79.webp\"}}', '45524515_52807f6e79', '.webp', 'image/webp', '20.04', '/uploads/45524515_52807f6e79.webp', NULL, 'local', NULL, '/1', '2023-12-08 18:54:02.076000', '2023-12-08 18:54:02.076000', NULL, NULL),
(52, '8fd2d9603f698ab241e03dcd69ea7860.jpeg', NULL, NULL, 400, 314, '{\"thumbnail\":{\"name\":\"thumbnail_8fd2d9603f698ab241e03dcd69ea7860.jpeg\",\"hash\":\"thumbnail_8fd2d9603f698ab241e03dcd69ea7860_3b4d542694\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":199,\"height\":156,\"size\":7.69,\"url\":\"/uploads/thumbnail_8fd2d9603f698ab241e03dcd69ea7860_3b4d542694.jpeg\"}}', '8fd2d9603f698ab241e03dcd69ea7860_3b4d542694', '.jpeg', 'image/jpeg', '33.07', '/uploads/8fd2d9603f698ab241e03dcd69ea7860_3b4d542694.jpeg', NULL, 'local', NULL, '/1', '2023-12-14 02:00:10.908000', '2023-12-14 02:00:10.908000', NULL, NULL),
(53, '330814299_725410599161368_571505181470700122_n.jpg', NULL, NULL, 960, 823, '{\"thumbnail\":{\"name\":\"thumbnail_330814299_725410599161368_571505181470700122_n.jpg\",\"hash\":\"thumbnail_330814299_725410599161368_571505181470700122_n_06fe56229f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":183,\"height\":156,\"size\":6.53,\"url\":\"/uploads/thumbnail_330814299_725410599161368_571505181470700122_n_06fe56229f.jpg\"},\"medium\":{\"name\":\"medium_330814299_725410599161368_571505181470700122_n.jpg\",\"hash\":\"medium_330814299_725410599161368_571505181470700122_n_06fe56229f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":643,\"size\":42.5,\"url\":\"/uploads/medium_330814299_725410599161368_571505181470700122_n_06fe56229f.jpg\"},\"small\":{\"name\":\"small_330814299_725410599161368_571505181470700122_n.jpg\",\"hash\":\"small_330814299_725410599161368_571505181470700122_n_06fe56229f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":429,\"size\":24.88,\"url\":\"/uploads/small_330814299_725410599161368_571505181470700122_n_06fe56229f.jpg\"}}', '330814299_725410599161368_571505181470700122_n_06fe56229f', '.jpg', 'image/jpeg', '44.72', '/uploads/330814299_725410599161368_571505181470700122_n_06fe56229f.jpg', NULL, 'local', NULL, '/1', '2023-12-18 22:25:29.689000', '2023-12-18 22:25:29.689000', NULL, NULL),
(54, '6b1a0f1-050.jpg', NULL, NULL, 755, 465, '{\"thumbnail\":{\"name\":\"thumbnail_6b1a0f1-050.jpg\",\"hash\":\"thumbnail_6b1a0f1_050_ac3b2a8a51\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":151,\"size\":8.77,\"url\":\"/uploads/thumbnail_6b1a0f1_050_ac3b2a8a51.jpg\"},\"small\":{\"name\":\"small_6b1a0f1-050.jpg\",\"hash\":\"small_6b1a0f1_050_ac3b2a8a51\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":308,\"size\":31.72,\"url\":\"/uploads/small_6b1a0f1_050_ac3b2a8a51.jpg\"},\"medium\":{\"name\":\"medium_6b1a0f1-050.jpg\",\"hash\":\"medium_6b1a0f1_050_ac3b2a8a51\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":462,\"size\":67.34,\"url\":\"/uploads/medium_6b1a0f1_050_ac3b2a8a51.jpg\"}}', '6b1a0f1_050_ac3b2a8a51', '.jpg', 'image/jpeg', '70.97', '/uploads/6b1a0f1_050_ac3b2a8a51.jpg', NULL, 'local', NULL, '/1', '2023-12-18 22:48:34.293000', '2023-12-18 22:48:34.293000', NULL, NULL),
(55, 'psa3.jpg', NULL, NULL, 1000, 1150, '{\"thumbnail\":{\"name\":\"thumbnail_psa3.jpg\",\"hash\":\"thumbnail_psa3_c9c30ac3d6\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":136,\"height\":156,\"size\":5.71,\"url\":\"/uploads/thumbnail_psa3_c9c30ac3d6.jpg\"},\"small\":{\"name\":\"small_psa3.jpg\",\"hash\":\"small_psa3_c9c30ac3d6\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":435,\"height\":500,\"size\":38.92,\"url\":\"/uploads/small_psa3_c9c30ac3d6.jpg\"},\"medium\":{\"name\":\"medium_psa3.jpg\",\"hash\":\"medium_psa3_c9c30ac3d6\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":652,\"height\":750,\"size\":82.87,\"url\":\"/uploads/medium_psa3_c9c30ac3d6.jpg\"},\"large\":{\"name\":\"large_psa3.jpg\",\"hash\":\"large_psa3_c9c30ac3d6\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":870,\"height\":1000,\"size\":139.75,\"url\":\"/uploads/large_psa3_c9c30ac3d6.jpg\"}}', 'psa3_c9c30ac3d6', '.jpg', 'image/jpeg', '135.04', '/uploads/psa3_c9c30ac3d6.jpg', NULL, 'local', NULL, '/1', '2023-12-19 16:00:36.123000', '2023-12-19 16:00:36.123000', NULL, NULL),
(56, 'blueketller.jpg', NULL, NULL, 575, 720, '{\"thumbnail\":{\"name\":\"thumbnail_blueketller.jpg\",\"hash\":\"thumbnail_blueketller_ef925699ea\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":124,\"height\":156,\"size\":3.4,\"url\":\"/uploads/thumbnail_blueketller_ef925699ea.jpg\"},\"small\":{\"name\":\"small_blueketller.jpg\",\"hash\":\"small_blueketller_ef925699ea\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":399,\"height\":500,\"size\":19.16,\"url\":\"/uploads/small_blueketller_ef925699ea.jpg\"}}', 'blueketller_ef925699ea', '.jpg', 'image/jpeg', '36.63', '/uploads/blueketller_ef925699ea.jpg', NULL, 'local', NULL, '/1', '2023-12-19 19:23:15.576000', '2023-12-19 19:23:15.576000', NULL, NULL),
(57, 'кавоварка.jpg', NULL, NULL, 1000, 1000, '{\"thumbnail\":{\"name\":\"thumbnail_кавоварка.jpg\",\"hash\":\"thumbnail_kavovarka_44598aa2dc\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.62,\"url\":\"/uploads/thumbnail_kavovarka_44598aa2dc.jpg\"},\"medium\":{\"name\":\"medium_кавоварка.jpg\",\"hash\":\"medium_kavovarka_44598aa2dc\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":49.42,\"url\":\"/uploads/medium_kavovarka_44598aa2dc.jpg\"},\"small\":{\"name\":\"small_кавоварка.jpg\",\"hash\":\"small_kavovarka_44598aa2dc\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":26.31,\"url\":\"/uploads/small_kavovarka_44598aa2dc.jpg\"}}', 'kavovarka_44598aa2dc', '.jpg', 'image/jpeg', '77.49', '/uploads/kavovarka_44598aa2dc.jpg', NULL, 'local', NULL, '/1', '2023-12-19 20:04:47.428000', '2023-12-19 20:04:47.428000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `files_folder_links`
--

CREATE TABLE `files_folder_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `file_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files_folder_links`
--

INSERT INTO `files_folder_links` (`id`, `file_id`, `folder_id`, `file_order`) VALUES
(1, 17, 1, 1),
(11, 26, 1, 9),
(28, 41, 1, 10),
(29, 42, 1, 11),
(30, 43, 1, 12),
(31, 44, 1, 13),
(32, 45, 1, 14),
(33, 46, 1, 15),
(34, 47, 1, 16),
(35, 48, 1, 17),
(36, 49, 1, 18),
(37, 50, 1, 19),
(38, 51, 1, 20),
(39, 52, 1, 21),
(40, 53, 1, 22),
(41, 54, 1, 23),
(42, 55, 1, 24),
(43, 56, 1, 25),
(44, 57, 1, 26);

-- --------------------------------------------------------

--
-- Table structure for table `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(60, 11, 6, 'api::item.item', 'pictures', 1),
(61, 14, 8, 'api::item.item', 'pictures', 1),
(62, 5, 5, 'api::item.item', 'pictures', 1),
(63, 8, 1, 'api::item.item', 'pictures', 1),
(64, 9, 1, 'api::item.item', 'pictures', 2),
(65, 12, 7, 'api::item.item', 'pictures', 1),
(67, 6, 2, 'api::item.item', 'pictures', 1),
(69, 13, 2, 'api::garage.garage', 'picture', 1),
(70, 13, 3, 'api::garage.garage', 'picture', 1),
(71, 13, 4, 'api::garage.garage', 'picture', 1),
(72, 13, 5, 'api::garage.garage', 'picture', 1),
(73, 13, 6, 'api::garage.garage', 'picture', 1),
(79, 4, 3, 'api::item.item', 'pictures', 1),
(80, 8, 11, 'api::item.item', 'pictures', 1),
(81, 13, 9, 'api::item.item', 'pictures', 1),
(82, 13, 10, 'api::item.item', 'pictures', 1),
(83, 7, 4, 'api::item.item', 'pictures', 1),
(84, 6, 16, 'api::item.item', 'pictures', 1),
(85, 7, 17, 'api::item.item', 'pictures', 1),
(87, 5, 18, 'api::item.item', 'pictures', 1),
(88, 16, 19, 'api::item.item', 'pictures', 1),
(89, 11, 20, 'api::item.item', 'pictures', 1),
(91, 16, 21, 'api::item.item', 'pictures', 1),
(93, 16, 22, 'api::item.item', 'pictures', 1),
(94, 16, 23, 'api::item.item', 'pictures', 1),
(96, 8, 24, 'api::item.item', 'pictures', 1),
(97, 13, 25, 'api::item.item', 'pictures', 1),
(98, 8, 26, 'api::item.item', 'pictures', 1),
(99, 11, 33, 'api::item.item', 'pictures', 1),
(101, 17, 36, 'api::item.item', 'pictures', 1),
(102, 17, 37, 'api::item.item', 'pictures', 1),
(103, 13, 1, 'api::garage.garage', 'picture', 1),
(105, 8, 39, 'api::item.item', 'pictures', 1),
(106, 8, 40, 'api::item.item', 'pictures', 1),
(107, 13, 41, 'api::item.item', 'pictures', 1),
(108, 8, 41, 'api::item.item', 'pictures', 2),
(111, 8, 43, 'api::item.item', 'pictures', 1),
(113, 8, 47, 'api::item.item', 'pictures', 1),
(114, 8, 42, 'api::item.item', 'pictures', 1),
(115, 11, 46, 'api::item.item', 'pictures', 1),
(116, 16, 45, 'api::item.item', 'pictures', 1),
(118, 12, 44, 'api::item.item', 'pictures', 1),
(119, 6, 48, 'api::item.item', 'pictures', 1),
(120, 5, 49, 'api::item.item', 'pictures', 1),
(121, 13, 50, 'api::item.item', 'pictures', 1),
(125, 41, 104, 'api::item.item', 'ura', 1),
(126, 42, 105, 'api::item.item', 'ura', 1),
(127, 43, 106, 'api::item.item', 'ura', 1),
(128, 45, 109, 'api::item.item', 'pictures', 1),
(129, 46, 110, 'api::item.item', 'pictures', 1),
(130, 47, 111, 'api::item.item', 'pictures', 1),
(132, 49, 113, 'api::item.item', 'pictures', 1),
(135, 51, 115, 'api::item.item', 'pictures', 1),
(136, 48, 112, 'api::item.item', 'pictures', 1),
(138, 13, 116, 'api::item.item', 'pictures', 1),
(140, 53, 117, 'api::item.item', 'pictures', 1),
(141, 54, 118, 'api::item.item', 'pictures', 1),
(142, 55, 121, 'api::item.item', 'pictures', 1),
(143, 56, 122, 'api::item.item', 'pictures', 1),
(144, 57, 123, 'api::item.item', 'pictures', 1);

-- --------------------------------------------------------

--
-- Table structure for table `garages`
--

CREATE TABLE `garages` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `storage_name` varchar(255) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `garages`
--

INSERT INTO `garages` (`id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `storage_name`, `description`) VALUES
(1, '2023-11-26 18:09:02.167000', '2023-12-07 03:53:13.004000', '2023-11-26 18:10:42.590000', 1, 1, 'гараж 433', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"гараж куплений в старого Шпортака\"}]}]'),
(2, '2023-11-26 18:10:32.539000', '2023-12-03 20:15:48.154000', '2023-11-26 18:10:36.164000', 1, 1, 'гараж 431', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"гараж куплений в Олега Шпортака \"}]}]'),
(3, '2023-11-26 18:11:14.631000', '2023-12-03 20:16:00.538000', '2023-11-26 18:11:16.960000', 1, 1, 'металічний гараж', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"гараж, який мені подарував мій батько\"}]}]'),
(4, '2023-11-26 18:12:02.256000', '2023-12-03 20:16:10.178000', '2023-11-26 18:12:05.464000', 1, 1, 'Степова 17', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"ділянка під забудову\"}]}]'),
(5, '2023-11-26 18:12:29.572000', '2023-12-03 20:16:34.259000', '2023-11-26 18:12:31.614000', 1, 1, 'Вокзальна 23.11', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"всу що дома\"}]}]'),
(6, '2023-11-26 18:12:57.300000', '2023-12-03 20:16:56.502000', '2023-11-26 18:12:59.595000', 1, 1, 'Підставки', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Підставки, вул. Берегова 33\"}]}]');

-- --------------------------------------------------------

--
-- Table structure for table `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2023-11-19 20:45:37.835000', '2023-11-19 20:45:37.835000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_of_item` varchar(255) DEFAULT NULL,
  `shelf` varchar(255) DEFAULT NULL,
  `shelf_space` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name_of_item`, `shelf`, `shelf_space`, `notes`, `purchase_date`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(39, 'Маска автоматична', '2', '3', 'sdfsad sdafsadf', NULL, '2023-12-07 05:14:56.500000', '2023-12-07 05:27:15.943000', '2023-12-07 05:14:56.490000', NULL, 1),
(49, 'пила електрична', '1', '2', 'не мотопила а просто пили, Паша сказав', '2023-12-04', '2023-12-07 18:19:03.729000', '2023-12-07 18:20:43.748000', '2023-12-07 18:19:03.719000', NULL, 1),
(50, 'новий плазмовий різак з Німеччини', '2', '3', 'плазмовий різак куплений в Німеччині', NULL, '2023-12-07 18:37:22.536000', '2023-12-07 23:22:35.817000', '2023-12-07 18:37:22.530000', NULL, 1),
(109, 'рубанок4234', '2', '3', 'sdafsda sdfsadf sdafsda', NULL, '2023-12-08 04:44:07.514000', '2023-12-08 04:44:07.514000', '2023-12-08 04:44:07.508000', NULL, NULL),
(110, 'terpugok', '2', '3', 'sdafsda sdfsadf sdafsda', NULL, '2023-12-08 04:45:35.326000', '2023-12-08 04:45:35.326000', '2023-12-08 04:45:35.318000', NULL, NULL),
(112, 'станок свердлильний', '0', '0', 'Виробництво Німеччини', NULL, '2023-12-08 04:57:43.396000', '2023-12-14 01:53:51.557000', '2023-12-08 04:57:43.389000', NULL, 1),
(113, 'Маска автоматична', '2', '2', 'маска Гриші, а могла б бути моя', NULL, '2023-12-08 11:49:00.384000', '2023-12-08 11:49:00.384000', '2023-12-08 11:49:00.359000', NULL, NULL),
(115, 'зварювальний апарат основний', '2', '2', 'зварювальний апарат Патона', NULL, '2023-12-08 18:54:01.908000', '2023-12-14 01:51:13.667000', '2023-12-08 18:54:01.901000', NULL, 1),
(116, 'колеса до КІА', '3', '3', 'зварювальний апарат', NULL, '2023-12-14 02:00:10.765000', '2023-12-18 21:30:35.349000', '2023-12-14 02:00:10.757000', NULL, 1),
(122, 'Чайник з Херсону', '1', '1', 'Чайник з Херсону', NULL, '2023-12-19 19:23:15.448000', '2023-12-19 19:23:15.448000', '2023-12-19 19:23:15.431000', NULL, NULL),
(123, 'ще новіший чайник', '2', '2', 'чайник з комода', NULL, '2023-12-19 20:04:47.282000', '2023-12-19 20:04:47.282000', '2023-12-19 20:04:47.268000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items_storage_place_links`
--

CREATE TABLE `items_storage_place_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED DEFAULT NULL,
  `garage_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items_storage_place_links`
--

INSERT INTO `items_storage_place_links` (`id`, `item_id`, `garage_id`) VALUES
(36, 39, 1),
(46, 49, 1),
(47, 50, 2),
(99, 109, 2),
(100, 110, 5),
(102, 112, 2),
(103, 113, 2),
(105, 115, 2),
(106, 116, 2),
(112, 122, 2),
(113, 123, 2);

-- --------------------------------------------------------

--
-- Table structure for table `items_users_permissions_user_links`
--

CREATE TABLE `items_users_permissions_user_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items_users_permissions_user_links`
--

INSERT INTO `items_users_permissions_user_links` (`id`, `item_id`, `user_id`) VALUES
(37, 39, 1),
(47, 49, 1),
(48, 50, 1),
(70, 109, 1),
(71, 110, 1),
(78, 112, 2),
(74, 113, 1),
(77, 115, 2),
(79, 116, 2),
(85, 122, 1),
(86, 123, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `select` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `name`, `surname`, `email`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `message`, `select`) VALUES
(39, 'Олександр', 'Грибинюк', 'bemotic@gmail.com', '2023-12-05 18:07:50.669000', '2023-12-05 18:07:50.669000', '2023-12-05 18:07:50.660000', NULL, NULL, 'нове послання із заслання тараса шевченка', 'жарт');

-- --------------------------------------------------------

--
-- Table structure for table `notes_users_permissions_user_links`
--

CREATE TABLE `notes_users_permissions_user_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `note_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_api_tokens`
--

INSERT INTO `strapi_api_tokens` (`id`, `name`, `description`, `type`, `access_key`, `last_used_at`, `expires_at`, `lifespan`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'items', 'to items database', 'full-access', 'c5a6c466fd9e6f85bd43abd81ae88b473a22e28999a542429fcc56f1e573fc1c8779b6307b0ad420b9b9e90c07b97247fb7d57c25c1aefa117ed1d70d3523fed', NULL, NULL, NULL, '2023-11-19 20:59:13.169000', '2023-11-19 21:04:06.000000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions_token_links`
--

CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"registrationToken\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token\",\"connection\":\"default\",\"uid\":\"admin::transfer-token\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token-permission\",\"connection\":\"default\",\"uid\":\"admin::transfer-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__filename__\":\"schema.json\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"api::category-of-item.category-of-item\":{\"kind\":\"collectionType\",\"collectionName\":\"category_of_items\",\"info\":{\"singularName\":\"category-of-item\",\"pluralName\":\"category-of-items\",\"displayName\":\"category of item\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"category\":{\"type\":\"string\"},\"parent\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category-of-item.category-of-item\"},\"item\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::item.item\",\"inversedBy\":\"category_of_items\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"category_of_items\",\"info\":{\"singularName\":\"category-of-item\",\"pluralName\":\"category-of-items\",\"displayName\":\"category of item\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"category\":{\"type\":\"string\"},\"parent\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category-of-item.category-of-item\"},\"item\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::item.item\",\"inversedBy\":\"category_of_items\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"category-of-item\",\"connection\":\"default\",\"uid\":\"api::category-of-item.category-of-item\",\"apiName\":\"category-of-item\",\"globalId\":\"CategoryOfItem\",\"actions\":{},\"lifecycles\":{}},\"api::garage.garage\":{\"kind\":\"collectionType\",\"collectionName\":\"garages\",\"info\":{\"singularName\":\"garage\",\"pluralName\":\"garages\",\"displayName\":\"storage_place\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"storage_name\":{\"type\":\"string\"},\"description\":{\"type\":\"blocks\"},\"picture\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"garages\",\"info\":{\"singularName\":\"garage\",\"pluralName\":\"garages\",\"displayName\":\"storage_place\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"storage_name\":{\"type\":\"string\"},\"description\":{\"type\":\"blocks\"},\"picture\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"garage\",\"connection\":\"default\",\"uid\":\"api::garage.garage\",\"apiName\":\"garage\",\"globalId\":\"Garage\",\"actions\":{},\"lifecycles\":{}},\"api::item.item\":{\"kind\":\"collectionType\",\"collectionName\":\"items\",\"info\":{\"singularName\":\"item\",\"pluralName\":\"items\",\"displayName\":\"item\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name_of_item\":{\"type\":\"string\"},\"shelf\":{\"type\":\"string\"},\"shelf_space\":{\"type\":\"string\"},\"purchase_date\":{\"type\":\"date\"},\"pictures\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"category_of_items\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category-of-item.category-of-item\",\"mappedBy\":\"item\"},\"storage_place\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::garage.garage\"},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"notes\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"items\",\"info\":{\"singularName\":\"item\",\"pluralName\":\"items\",\"displayName\":\"item\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name_of_item\":{\"type\":\"string\"},\"shelf\":{\"type\":\"string\"},\"shelf_space\":{\"type\":\"string\"},\"purchase_date\":{\"type\":\"date\"},\"pictures\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"category_of_items\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category-of-item.category-of-item\",\"mappedBy\":\"item\"},\"storage_place\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::garage.garage\"},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"notes\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"item\",\"connection\":\"default\",\"uid\":\"api::item.item\",\"apiName\":\"item\",\"globalId\":\"Item\",\"actions\":{},\"lifecycles\":{}},\"api::note.note\":{\"kind\":\"collectionType\",\"collectionName\":\"notes\",\"info\":{\"singularName\":\"note\",\"pluralName\":\"notes\",\"displayName\":\"Note\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"default\":\"sasha\"},\"surname\":{\"type\":\"string\",\"default\":\"bemotoff\"},\"email\":{\"type\":\"email\",\"default\":\"bemotic@gmail.com\"},\"message\":{\"type\":\"text\"},\"select\":{\"type\":\"enumeration\",\"enum\":[\"пропозиція\",\"запит\",\"критичне зауваження\",\"порада\",\"жарт\"]},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"notes\",\"info\":{\"singularName\":\"note\",\"pluralName\":\"notes\",\"displayName\":\"Note\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"default\":\"sasha\"},\"surname\":{\"type\":\"string\",\"default\":\"bemotoff\"},\"email\":{\"type\":\"email\",\"default\":\"bemotic@gmail.com\"},\"message\":{\"type\":\"text\"},\"select\":{\"type\":\"enumeration\",\"enum\":[\"пропозиція\",\"запит\",\"критичне зауваження\",\"порада\",\"жарт\"]},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"note\",\"connection\":\"default\",\"uid\":\"api::note.note\",\"apiName\":\"note\",\"globalId\":\"Note\",\"actions\":{},\"lifecycles\":{}},\"api::typesofthing.typesofthing\":{\"kind\":\"collectionType\",\"collectionName\":\"typesofthings\",\"info\":{\"singularName\":\"typesofthing\",\"pluralName\":\"typesofthings\",\"displayName\":\"typesofthing\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"typesofthings\",\"info\":{\"singularName\":\"typesofthing\",\"pluralName\":\"typesofthings\",\"displayName\":\"typesofthing\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"typesofthing\",\"connection\":\"default\",\"uid\":\"api::typesofthing.typesofthing\",\"apiName\":\"typesofthing\",\"globalId\":\"Typesofthing\",\"actions\":{},\"lifecycles\":{}}}', 'object', NULL, NULL),
(2, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"actionParameters\":{\"edit\":{\"label\":\"actionParameters\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"actionParameters\",\"searchable\":false,\"sortable\":false}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}],[{\"name\":\"actionParameters\",\"size\":12}],[{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(3, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"uid\":\"admin::api-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"uid\":\"admin::transfer-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"uid\":\"admin::transfer-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]}}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]}}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]}}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]}}', 'object', NULL, NULL),
(15, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(16, 'plugin_upload_view_configuration', '{\"pageSize\":20,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(17, 'plugin_upload_metrics', '{\"weeklySchedule\":\"29 49 18 * * 3\",\"lastWeeklyUpdate\":1702486169057}', 'object', NULL, NULL),
(18, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(19, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"],\"redirectUri\":\"http://localhost:1337/api/connect/discord/callback\"},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"],\"redirectUri\":\"http://localhost:1337/api/connect/facebook/callback\"},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"],\"redirectUri\":\"http://localhost:1337/api/connect/google/callback\"},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"],\"redirectUri\":\"http://localhost:1337/api/connect/github/callback\"},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"],\"redirectUri\":\"http://localhost:1337/api/connect/microsoft/callback\"},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\",\"redirectUri\":\"http://localhost:1337/api/connect/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"],\"redirectUri\":\"http://localhost:1337/api/connect/instagram/callback\"},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"],\"redirectUri\":\"http://localhost:1337/api/connect/vk/callback\"},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"],\"redirectUri\":\"http://localhost:1337/api/connect/twitch/callback\"},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"],\"redirectUri\":\"http://localhost:1337/api/connect/linkedin/callback\"},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"],\"redirectUri\":\"http://localhost:1337/api/connect/cognito/callback\"},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"],\"redirectUri\":\"http://localhost:1337/api/connect/reddit/callback\"},\"auth0\":{\"enabled\":true,\"icon\":\"\",\"key\":\"sasha\",\"secret\":\"password\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"],\"redirectUri\":\"http://localhost:1337/api/connect/auth0/callback\"},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\",\"redirectUri\":\"http://localhost:1337/api/connect/cas/callback\"},\"patreon\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"],\"redirectUri\":\"http://localhost:1337/api/connect/patreon/callback\"}}', 'object', NULL, NULL),
(20, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(21, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(22, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null,\"ssoLockedRoles\":null}}', 'object', NULL, NULL),
(23, 'plugin_content_manager_configuration_content_types::api::item.item', '{\"uid\":\"api::item.item\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name_of_item\",\"defaultSortBy\":\"name_of_item\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name_of_item\":{\"edit\":{\"label\":\"name_of_item\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name_of_item\",\"searchable\":true,\"sortable\":true}},\"shelf\":{\"edit\":{\"label\":\"shelf\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"shelf\",\"searchable\":true,\"sortable\":true}},\"shelf_space\":{\"edit\":{\"label\":\"shelf_space\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"shelf_space\",\"searchable\":true,\"sortable\":true}},\"notes\":{\"edit\":{\"label\":\"notes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"notes\",\"searchable\":false,\"sortable\":false}},\"purchase_date\":{\"edit\":{\"label\":\"purchase_date\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"purchase_date\",\"searchable\":true,\"sortable\":true}},\"pictures\":{\"edit\":{\"label\":\"pictures\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pictures\",\"searchable\":false,\"sortable\":false}},\"category_of_items\":{\"edit\":{\"label\":\"category_of_items\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"category\"},\"list\":{\"label\":\"category_of_items\",\"searchable\":false,\"sortable\":false}},\"storage_place\":{\"edit\":{\"label\":\"storage_place\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"storage_name\"},\"list\":{\"label\":\"storage_place\",\"searchable\":true,\"sortable\":true}},\"users_permissions_user\":{\"edit\":{\"label\":\"users_permissions_user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users_permissions_user\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name_of_item\",\"shelf\",\"shelf_space\"],\"edit\":[[{\"name\":\"name_of_item\",\"size\":6},{\"name\":\"shelf\",\"size\":6}],[{\"name\":\"shelf_space\",\"size\":6}],[{\"name\":\"notes\",\"size\":12}],[{\"name\":\"purchase_date\",\"size\":4},{\"name\":\"pictures\",\"size\":6}],[{\"name\":\"category_of_items\",\"size\":6},{\"name\":\"storage_place\",\"size\":6}],[{\"name\":\"users_permissions_user\",\"size\":6}]]}}', 'object', NULL, NULL),
(27, 'plugin_content_manager_configuration_content_types::api::category-of-item.category-of-item', '{\"uid\":\"api::category-of-item.category-of-item\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"category\",\"defaultSortBy\":\"category\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"category\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"category\"},\"list\":{\"label\":\"parent\",\"searchable\":false,\"sortable\":false}},\"item\":{\"edit\":{\"label\":\"item\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name_of_item\"},\"list\":{\"label\":\"item\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"category\",\"createdAt\",\"parent\"],\"edit\":[[{\"name\":\"category\",\"size\":6},{\"name\":\"parent\",\"size\":6}],[{\"name\":\"item\",\"size\":6}]]}}', 'object', NULL, NULL),
(29, 'plugin_content_manager_configuration_content_types::api::garage.garage', '{\"uid\":\"api::garage.garage\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"storage_name\":{\"edit\":{\"label\":\"storage_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"storage_name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortable\":false}},\"picture\":{\"edit\":{\"label\":\"picture\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"picture\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"createdBy\"],\"edit\":[[{\"name\":\"storage_name\",\"size\":6}],[{\"name\":\"description\",\"size\":12}],[{\"name\":\"picture\",\"size\":6}]]}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(30, 'plugin_content_manager_configuration_content_types::api::note.note', '{\"uid\":\"api::note.note\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"surname\":{\"edit\":{\"label\":\"surname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"surname\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"message\":{\"edit\":{\"label\":\"message\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"message\",\"searchable\":true,\"sortable\":true}},\"select\":{\"edit\":{\"label\":\"select\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"select\",\"searchable\":true,\"sortable\":true}},\"users_permissions_user\":{\"edit\":{\"label\":\"users_permissions_user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users_permissions_user\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"surname\",\"email\"],\"edit\":[[{\"name\":\"name\",\"size\":4},{\"name\":\"surname\",\"size\":4}],[{\"name\":\"email\",\"size\":4},{\"name\":\"select\",\"size\":4}],[{\"name\":\"message\",\"size\":12}],[{\"name\":\"users_permissions_user\",\"size\":6}]]}}', 'object', NULL, NULL),
(31, 'plugin_upload_api-folder', '{\"id\":1}', 'object', NULL, NULL),
(32, 'plugin_content_manager_configuration_content_types::api::typesofthing.typesofthing', '{\"uid\":\"api::typesofthing.typesofthing\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6}]]}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(55, '{\"tables\":[{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action_parameters\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_tokens\",\"indexes\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files\",\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null},{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"folder_path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders\",\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"},{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"category_of_items\",\"indexes\":[{\"name\":\"category_of_items_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"category_of_items_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"category_of_items_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"category_of_items_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"category\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"garages\",\"indexes\":[{\"name\":\"garages_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"garages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"garages_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"garages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"storage_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"items\",\"indexes\":[{\"name\":\"items_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"items_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"items_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"items_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name_of_item\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"shelf\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"shelf_space\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"purchase_date\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"notes\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"notes\",\"indexes\":[{\"name\":\"notes_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"notes_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"notes_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"notes_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"surname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"message\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"select\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"typesofthings\",\"indexes\":[{\"name\":\"typesofthings_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"typesofthings_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"typesofthings_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"typesofthings_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_permissions_role_links\",\"indexes\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_permissions_role_links_unique\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_permissions_role_links_order_inv_fk\",\"columns\":[\"permission_order\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_links\",\"indexes\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_users_roles_links_unique\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_users_roles_links_order_fk\",\"columns\":[\"role_order\"]},{\"name\":\"admin_users_roles_links_order_inv_fk\",\"columns\":[\"user_order\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions_token_links\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_unique\",\"columns\":[\"api_token_permission_id\",\"api_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_api_token_permissions_token_links_order_inv_fk\",\"columns\":[\"api_token_permission_order\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"api_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions_token_links\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_token_links_fk\",\"columns\":[\"transfer_token_permission_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_links_inv_fk\",\"columns\":[\"transfer_token_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_links_unique\",\"columns\":[\"transfer_token_permission_id\",\"transfer_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_transfer_token_permissions_token_links_order_inv_fk\",\"columns\":[\"transfer_token_permission_order\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_token_links_fk\",\"columns\":[\"transfer_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_transfer_token_permissions_token_links_inv_fk\",\"columns\":[\"transfer_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"transfer_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_morphs\",\"indexes\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_related_morphs_order_index\",\"columns\":[\"order\"]},{\"name\":\"files_related_morphs_id_column_index\",\"columns\":[\"related_id\"]}],\"foreignKeys\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_folder_links\",\"indexes\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"files_folder_links_unique\",\"columns\":[\"file_id\",\"folder_id\"],\"type\":\"unique\"},{\"name\":\"files_folder_links_order_inv_fk\",\"columns\":[\"file_order\"]}],\"foreignKeys\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"file_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders_parent_links\",\"indexes\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"]},{\"name\":\"upload_folders_parent_links_unique\",\"columns\":[\"folder_id\",\"inv_folder_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_parent_links_order_inv_fk\",\"columns\":[\"folder_order\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_links\",\"indexes\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"up_permissions_role_links_unique\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_permissions_role_links_order_inv_fk\",\"columns\":[\"permission_order\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_links\",\"indexes\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"up_users_role_links_unique\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_users_role_links_order_inv_fk\",\"columns\":[\"user_order\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"category_of_items_parent_links\",\"indexes\":[{\"name\":\"category_of_items_parent_links_fk\",\"columns\":[\"category_of_item_id\"]},{\"name\":\"category_of_items_parent_links_inv_fk\",\"columns\":[\"inv_category_of_item_id\"]},{\"name\":\"category_of_items_parent_links_unique\",\"columns\":[\"category_of_item_id\",\"inv_category_of_item_id\"],\"type\":\"unique\"},{\"name\":\"category_of_items_parent_links_order_fk\",\"columns\":[\"category_of_item_order\"]}],\"foreignKeys\":[{\"name\":\"category_of_items_parent_links_fk\",\"columns\":[\"category_of_item_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"category_of_items\",\"onDelete\":\"CASCADE\"},{\"name\":\"category_of_items_parent_links_inv_fk\",\"columns\":[\"inv_category_of_item_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"category_of_items\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"category_of_item_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_category_of_item_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"category_of_item_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"category_of_items_item_links\",\"indexes\":[{\"name\":\"category_of_items_item_links_fk\",\"columns\":[\"category_of_item_id\"]},{\"name\":\"category_of_items_item_links_inv_fk\",\"columns\":[\"item_id\"]},{\"name\":\"category_of_items_item_links_unique\",\"columns\":[\"category_of_item_id\",\"item_id\"],\"type\":\"unique\"},{\"name\":\"category_of_items_item_links_order_inv_fk\",\"columns\":[\"category_of_item_order\"]}],\"foreignKeys\":[{\"name\":\"category_of_items_item_links_fk\",\"columns\":[\"category_of_item_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"category_of_items\",\"onDelete\":\"CASCADE\"},{\"name\":\"category_of_items_item_links_inv_fk\",\"columns\":[\"item_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"items\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"category_of_item_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"item_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"category_of_item_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"items_storage_place_links\",\"indexes\":[{\"name\":\"items_storage_place_links_fk\",\"columns\":[\"item_id\"]},{\"name\":\"items_storage_place_links_inv_fk\",\"columns\":[\"garage_id\"]},{\"name\":\"items_storage_place_links_unique\",\"columns\":[\"item_id\",\"garage_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"items_storage_place_links_fk\",\"columns\":[\"item_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"items\",\"onDelete\":\"CASCADE\"},{\"name\":\"items_storage_place_links_inv_fk\",\"columns\":[\"garage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"garages\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"item_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"garage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"items_users_permissions_user_links\",\"indexes\":[{\"name\":\"items_users_permissions_user_links_fk\",\"columns\":[\"item_id\"]},{\"name\":\"items_users_permissions_user_links_inv_fk\",\"columns\":[\"user_id\"]},{\"name\":\"items_users_permissions_user_links_unique\",\"columns\":[\"item_id\",\"user_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"items_users_permissions_user_links_fk\",\"columns\":[\"item_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"items\",\"onDelete\":\"CASCADE\"},{\"name\":\"items_users_permissions_user_links_inv_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"item_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"notes_users_permissions_user_links\",\"indexes\":[{\"name\":\"notes_users_permissions_user_links_fk\",\"columns\":[\"note_id\"]},{\"name\":\"notes_users_permissions_user_links_inv_fk\",\"columns\":[\"user_id\"]},{\"name\":\"notes_users_permissions_user_links_unique\",\"columns\":[\"note_id\",\"user_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"notes_users_permissions_user_links_fk\",\"columns\":[\"note_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"notes\",\"onDelete\":\"CASCADE\"},{\"name\":\"notes_users_permissions_user_links_inv_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"note_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2023-12-14 01:47:52', 'befaf2e0f953fd46bd07b313113ff685');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_tokens`
--

CREATE TABLE `strapi_transfer_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions`
--

CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions_token_links`
--

CREATE TABLE `strapi_transfer_token_permissions_token_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `typesofthings`
--

CREATE TABLE `typesofthings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upload_folders`
--

INSERT INTO `upload_folders` (`id`, `name`, `path_id`, `path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'API Uploads', 1, '/1', '2023-12-07 00:58:58.158000', '2023-12-07 00:58:58.158000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders_parent_links`
--

CREATE TABLE `upload_folders_parent_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_folder_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.user.me', '2023-11-19 20:45:37.908000', '2023-11-19 20:45:37.908000', NULL, NULL),
(2, 'plugin::users-permissions.auth.changePassword', '2023-11-19 20:45:37.908000', '2023-11-19 20:45:37.908000', NULL, NULL),
(3, 'plugin::users-permissions.auth.callback', '2023-11-19 20:45:37.923000', '2023-11-19 20:45:37.923000', NULL, NULL),
(4, 'plugin::users-permissions.auth.connect', '2023-11-19 20:45:37.923000', '2023-11-19 20:45:37.923000', NULL, NULL),
(5, 'plugin::users-permissions.auth.forgotPassword', '2023-11-19 20:45:37.923000', '2023-11-19 20:45:37.923000', NULL, NULL),
(6, 'plugin::users-permissions.auth.resetPassword', '2023-11-19 20:45:37.923000', '2023-11-19 20:45:37.923000', NULL, NULL),
(7, 'plugin::users-permissions.auth.register', '2023-11-19 20:45:37.923000', '2023-11-19 20:45:37.923000', NULL, NULL),
(8, 'plugin::users-permissions.auth.emailConfirmation', '2023-11-19 20:45:37.923000', '2023-11-19 20:45:37.923000', NULL, NULL),
(9, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-11-19 20:45:37.923000', '2023-11-19 20:45:37.923000', NULL, NULL),
(10, 'api::item.item.find', '2023-11-22 20:19:21.322000', '2023-11-22 20:19:21.322000', NULL, NULL),
(11, 'api::item.item.findOne', '2023-11-22 20:19:21.322000', '2023-11-22 20:19:21.322000', NULL, NULL),
(12, 'api::category-of-item.category-of-item.find', '2023-11-22 22:37:40.139000', '2023-11-22 22:37:40.139000', NULL, NULL),
(13, 'api::category-of-item.category-of-item.findOne', '2023-11-22 22:37:40.139000', '2023-11-22 22:37:40.139000', NULL, NULL),
(14, 'plugin::email.email.send', '2023-11-22 22:37:40.139000', '2023-11-22 22:37:40.139000', NULL, NULL),
(15, 'plugin::upload.content-api.find', '2023-11-22 22:37:40.139000', '2023-11-22 22:37:40.139000', NULL, NULL),
(16, 'plugin::i18n.locales.listLocales', '2023-11-22 22:37:40.139000', '2023-11-22 22:37:40.139000', NULL, NULL),
(17, 'plugin::upload.content-api.findOne', '2023-11-22 22:37:40.139000', '2023-11-22 22:37:40.139000', NULL, NULL),
(18, 'plugin::users-permissions.user.find', '2023-11-22 22:39:09.912000', '2023-11-22 22:39:09.912000', NULL, NULL),
(19, 'plugin::users-permissions.user.findOne', '2023-11-22 22:39:09.912000', '2023-11-22 22:39:09.912000', NULL, NULL),
(20, 'plugin::users-permissions.role.findOne', '2023-11-22 22:39:09.912000', '2023-11-22 22:39:09.912000', NULL, NULL),
(21, 'plugin::users-permissions.role.find', '2023-11-22 22:39:09.912000', '2023-11-22 22:39:09.912000', NULL, NULL),
(22, 'api::garage.garage.find', '2023-11-26 19:22:03.203000', '2023-11-26 19:22:03.203000', NULL, NULL),
(23, 'api::garage.garage.findOne', '2023-11-26 19:22:03.203000', '2023-11-26 19:22:03.203000', NULL, NULL),
(24, 'api::garage.garage.create', '2023-11-26 19:22:03.203000', '2023-11-26 19:22:03.203000', NULL, NULL),
(25, 'api::garage.garage.update', '2023-11-26 19:22:03.203000', '2023-11-26 19:22:03.203000', NULL, NULL),
(26, 'api::garage.garage.delete', '2023-11-26 19:22:03.203000', '2023-11-26 19:22:03.203000', NULL, NULL),
(27, 'api::garage.garage.find', '2023-11-26 19:22:28.896000', '2023-11-26 19:22:28.896000', NULL, NULL),
(28, 'api::garage.garage.findOne', '2023-11-26 19:22:28.896000', '2023-11-26 19:22:28.896000', NULL, NULL),
(29, 'api::note.note.find', '2023-11-26 21:54:06.238000', '2023-11-26 21:54:06.238000', NULL, NULL),
(30, 'api::note.note.findOne', '2023-11-26 21:54:06.238000', '2023-11-26 21:54:06.238000', NULL, NULL),
(31, 'api::note.note.create', '2023-11-26 21:54:06.238000', '2023-11-26 21:54:06.238000', NULL, NULL),
(32, 'api::note.note.update', '2023-11-26 21:54:06.238000', '2023-11-26 21:54:06.238000', NULL, NULL),
(33, 'api::note.note.delete', '2023-11-26 21:54:06.238000', '2023-11-26 21:54:06.238000', NULL, NULL),
(34, 'api::note.note.find', '2023-11-26 22:16:35.572000', '2023-11-26 22:16:35.572000', NULL, NULL),
(35, 'api::note.note.findOne', '2023-11-26 22:16:35.572000', '2023-11-26 22:16:35.572000', NULL, NULL),
(36, 'api::note.note.create', '2023-11-26 22:16:35.572000', '2023-11-26 22:16:35.572000', NULL, NULL),
(37, 'api::note.note.update', '2023-11-26 22:16:35.572000', '2023-11-26 22:16:35.572000', NULL, NULL),
(38, 'api::note.note.delete', '2023-11-26 22:16:35.572000', '2023-11-26 22:16:35.572000', NULL, NULL),
(44, 'api::item.item.find', '2023-11-26 22:44:40.297000', '2023-11-26 22:44:40.297000', NULL, NULL),
(45, 'api::item.item.findOne', '2023-11-26 22:44:40.297000', '2023-11-26 22:44:40.297000', NULL, NULL),
(46, 'api::item.item.create', '2023-11-26 22:44:40.297000', '2023-11-26 22:44:40.297000', NULL, NULL),
(47, 'api::item.item.update', '2023-11-26 22:44:40.297000', '2023-11-26 22:44:40.297000', NULL, NULL),
(48, 'api::item.item.delete', '2023-11-26 22:44:40.297000', '2023-11-26 22:44:40.297000', NULL, NULL),
(49, 'api::category-of-item.category-of-item.find', '2023-11-26 22:44:46.795000', '2023-11-26 22:44:46.795000', NULL, NULL),
(50, 'api::category-of-item.category-of-item.delete', '2023-11-26 22:44:46.795000', '2023-11-26 22:44:46.795000', NULL, NULL),
(51, 'api::category-of-item.category-of-item.update', '2023-11-26 22:44:46.795000', '2023-11-26 22:44:46.795000', NULL, NULL),
(52, 'api::category-of-item.category-of-item.create', '2023-11-26 22:44:46.795000', '2023-11-26 22:44:46.795000', NULL, NULL),
(53, 'api::category-of-item.category-of-item.findOne', '2023-11-26 22:44:46.795000', '2023-11-26 22:44:46.795000', NULL, NULL),
(54, 'plugin::content-type-builder.components.getComponents', '2023-11-27 02:59:00.108000', '2023-11-27 02:59:00.108000', NULL, NULL),
(55, 'plugin::content-type-builder.components.getComponent', '2023-11-27 02:59:00.108000', '2023-11-27 02:59:00.108000', NULL, NULL),
(56, 'plugin::content-type-builder.content-types.getContentTypes', '2023-11-27 02:59:00.108000', '2023-11-27 02:59:00.108000', NULL, NULL),
(57, 'plugin::content-type-builder.content-types.getContentType', '2023-11-27 02:59:00.108000', '2023-11-27 02:59:00.108000', NULL, NULL),
(58, 'plugin::upload.content-api.find', '2023-11-27 02:59:23.572000', '2023-11-27 02:59:23.572000', NULL, NULL),
(59, 'plugin::upload.content-api.findOne', '2023-11-27 02:59:23.572000', '2023-11-27 02:59:23.572000', NULL, NULL),
(60, 'plugin::upload.content-api.destroy', '2023-11-27 02:59:23.572000', '2023-11-27 02:59:23.572000', NULL, NULL),
(61, 'plugin::upload.content-api.upload', '2023-11-27 02:59:23.572000', '2023-11-27 02:59:23.572000', NULL, NULL),
(62, 'plugin::users-permissions.auth.callback', '2023-11-27 23:06:39.008000', '2023-11-27 23:06:39.008000', NULL, NULL),
(63, 'plugin::users-permissions.auth.resetPassword', '2023-11-27 23:06:39.008000', '2023-11-27 23:06:39.008000', NULL, NULL),
(64, 'plugin::users-permissions.auth.connect', '2023-11-27 23:06:39.008000', '2023-11-27 23:06:39.008000', NULL, NULL),
(65, 'plugin::users-permissions.auth.forgotPassword', '2023-11-27 23:06:39.008000', '2023-11-27 23:06:39.008000', NULL, NULL),
(66, 'plugin::users-permissions.auth.register', '2023-11-27 23:06:39.008000', '2023-11-27 23:06:39.008000', NULL, NULL),
(67, 'plugin::users-permissions.auth.emailConfirmation', '2023-11-27 23:06:39.008000', '2023-11-27 23:06:39.008000', NULL, NULL),
(68, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-11-27 23:06:39.008000', '2023-11-27 23:06:39.008000', NULL, NULL),
(69, 'plugin::users-permissions.user.create', '2023-11-27 23:06:39.008000', '2023-11-27 23:06:39.008000', NULL, NULL),
(70, 'plugin::users-permissions.user.count', '2023-11-27 23:06:39.008000', '2023-11-27 23:06:39.008000', NULL, NULL),
(71, 'plugin::users-permissions.user.update', '2023-11-27 23:06:39.008000', '2023-11-27 23:06:39.008000', NULL, NULL),
(72, 'plugin::users-permissions.user.findOne', '2023-11-27 23:06:39.008000', '2023-11-27 23:06:39.008000', NULL, NULL),
(73, 'plugin::users-permissions.user.find', '2023-11-27 23:06:39.008000', '2023-11-27 23:06:39.008000', NULL, NULL),
(74, 'plugin::users-permissions.user.destroy', '2023-11-27 23:06:39.008000', '2023-11-27 23:06:39.008000', NULL, NULL),
(75, 'plugin::users-permissions.role.createRole', '2023-11-27 23:06:39.008000', '2023-11-27 23:06:39.008000', NULL, NULL),
(76, 'plugin::users-permissions.role.findOne', '2023-11-27 23:06:39.008000', '2023-11-27 23:06:39.008000', NULL, NULL),
(77, 'plugin::users-permissions.role.find', '2023-11-27 23:06:39.008000', '2023-11-27 23:06:39.008000', NULL, NULL),
(78, 'plugin::users-permissions.role.updateRole', '2023-11-27 23:06:39.008000', '2023-11-27 23:06:39.008000', NULL, NULL),
(79, 'plugin::users-permissions.role.deleteRole', '2023-11-27 23:06:39.008000', '2023-11-27 23:06:39.008000', NULL, NULL),
(80, 'plugin::users-permissions.permissions.getPermissions', '2023-11-27 23:06:39.008000', '2023-11-27 23:06:39.008000', NULL, NULL),
(81, 'plugin::import-export-entries.export.exportData', '2023-12-07 04:58:29.341000', '2023-12-07 04:58:29.341000', NULL, NULL),
(82, 'plugin::import-export-entries.import.importData', '2023-12-07 04:58:29.341000', '2023-12-07 04:58:29.341000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 4, 2, 1),
(4, 5, 2, 1),
(5, 9, 2, 1),
(6, 6, 2, 1),
(7, 8, 2, 1),
(8, 3, 2, 1),
(9, 7, 2, 2),
(10, 10, 2, 3),
(11, 11, 2, 3),
(12, 12, 2, 4),
(13, 13, 2, 4),
(14, 14, 2, 4),
(15, 15, 2, 4),
(16, 17, 2, 5),
(17, 16, 2, 5),
(18, 19, 2, 6),
(19, 20, 2, 6),
(20, 21, 2, 6),
(21, 18, 2, 6),
(22, 23, 1, 2),
(23, 22, 1, 2),
(24, 25, 1, 2),
(25, 26, 1, 3),
(26, 24, 1, 3),
(27, 27, 2, 7),
(28, 28, 2, 7),
(29, 31, 1, 4),
(30, 32, 1, 4),
(31, 30, 1, 4),
(32, 29, 1, 4),
(33, 33, 1, 5),
(34, 34, 2, 8),
(35, 35, 2, 8),
(36, 37, 2, 8),
(37, 38, 2, 9),
(38, 36, 2, 8),
(44, 44, 1, 6),
(45, 45, 1, 6),
(46, 46, 1, 6),
(47, 47, 1, 6),
(48, 48, 1, 6),
(49, 49, 1, 7),
(50, 53, 1, 8),
(51, 52, 1, 8),
(52, 50, 1, 8),
(53, 51, 1, 8),
(54, 54, 1, 9),
(55, 55, 1, 9),
(56, 57, 1, 10),
(57, 56, 1, 10),
(58, 59, 1, 11),
(59, 58, 1, 11),
(60, 60, 1, 11),
(61, 61, 1, 12),
(62, 62, 1, 13),
(63, 63, 1, 13),
(64, 64, 1, 13),
(65, 65, 1, 13),
(66, 66, 1, 13),
(67, 69, 1, 13),
(68, 70, 1, 13),
(69, 67, 1, 13),
(70, 75, 1, 14),
(71, 68, 1, 14),
(72, 76, 1, 14),
(73, 74, 1, 14),
(74, 71, 1, 14),
(75, 72, 1, 14),
(76, 73, 1, 14),
(77, 79, 1, 15),
(78, 80, 1, 15),
(79, 78, 1, 16),
(80, 77, 1, 16),
(81, 81, 1, 17),
(82, 82, 1, 17);

-- --------------------------------------------------------

--
-- Table structure for table `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2023-11-19 20:45:37.892000', '2023-12-07 04:58:29.332000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2023-11-19 20:45:37.896000', '2023-11-26 22:43:41.333000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_users`
--

INSERT INTO `up_users` (`id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'sasha', 'bemotic@gmail.com', 'local', '$2a$10$GsgAwmeilIIOErZR9fVOsOKMVWX/tb4lAtqjoAEy2a/Rdka6jve9G', NULL, NULL, 1, 0, '2023-11-19 21:24:37.350000', '2023-11-27 23:04:35.783000', 2, 1),
(2, 'bemot', 'bemot@gmail.com', 'local', '$2a$10$sMFYskWmp6vhlGFTgoTUdefCX6Tcs6s6B81/B/M0yLeYeTYuJJPGC', NULL, NULL, 1, 0, '2023-11-29 23:54:28.269000', '2023-11-29 23:57:08.799000', 1, 1),
(3, 'pasha', 'pashagrybynyuik@gmail.com', 'local', '$2a$10$hfFvmQaZ2e0oXMd5Oe0uTOhpfGjuaA0uUEzYL4Krs5f8sSv0rM8Km', NULL, NULL, 1, 0, '2023-11-30 14:01:28.751000', '2023-11-30 14:01:28.751000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_users_role_links`
--

INSERT INTO `up_users_role_links` (`id`, `user_id`, `role_id`, `user_order`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 2),
(3, 3, 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`),
  ADD KEY `admin_users_roles_links_order_fk` (`role_order`),
  ADD KEY `admin_users_roles_links_order_inv_fk` (`user_order`);

--
-- Indexes for table `category_of_items`
--
ALTER TABLE `category_of_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_of_items_created_by_id_fk` (`created_by_id`),
  ADD KEY `category_of_items_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `category_of_items_item_links`
--
ALTER TABLE `category_of_items_item_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_of_items_item_links_unique` (`category_of_item_id`,`item_id`),
  ADD KEY `category_of_items_item_links_fk` (`category_of_item_id`),
  ADD KEY `category_of_items_item_links_inv_fk` (`item_id`),
  ADD KEY `category_of_items_item_links_order_inv_fk` (`category_of_item_order`);

--
-- Indexes for table `category_of_items_parent_links`
--
ALTER TABLE `category_of_items_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_of_items_parent_links_unique` (`category_of_item_id`,`inv_category_of_item_id`),
  ADD KEY `category_of_items_parent_links_fk` (`category_of_item_id`),
  ADD KEY `category_of_items_parent_links_inv_fk` (`inv_category_of_item_id`),
  ADD KEY `category_of_items_parent_links_order_fk` (`category_of_item_order`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  ADD KEY `files_folder_links_fk` (`file_id`),
  ADD KEY `files_folder_links_inv_fk` (`folder_id`),
  ADD KEY `files_folder_links_order_inv_fk` (`file_order`);

--
-- Indexes for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_morphs_fk` (`file_id`),
  ADD KEY `files_related_morphs_order_index` (`order`),
  ADD KEY `files_related_morphs_id_column_index` (`related_id`);

--
-- Indexes for table `garages`
--
ALTER TABLE `garages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `garages_created_by_id_fk` (`created_by_id`),
  ADD KEY `garages_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_created_by_id_fk` (`created_by_id`),
  ADD KEY `items_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `items_storage_place_links`
--
ALTER TABLE `items_storage_place_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `items_storage_place_links_unique` (`item_id`,`garage_id`),
  ADD KEY `items_storage_place_links_fk` (`item_id`),
  ADD KEY `items_storage_place_links_inv_fk` (`garage_id`);

--
-- Indexes for table `items_users_permissions_user_links`
--
ALTER TABLE `items_users_permissions_user_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `items_users_permissions_user_links_unique` (`item_id`,`user_id`),
  ADD KEY `items_users_permissions_user_links_fk` (`item_id`),
  ADD KEY `items_users_permissions_user_links_inv_fk` (`user_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_created_by_id_fk` (`created_by_id`),
  ADD KEY `notes_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `notes_users_permissions_user_links`
--
ALTER TABLE `notes_users_permissions_user_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notes_users_permissions_user_links_unique` (`note_id`,`user_id`),
  ADD KEY `notes_users_permissions_user_links_fk` (`note_id`),
  ADD KEY `notes_users_permissions_user_links_inv_fk` (`user_id`);

--
-- Indexes for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`);

--
-- Indexes for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_transfer_token_permissions_token_links_unique` (`transfer_token_permission_id`,`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_fk` (`transfer_token_permission_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_inv_fk` (`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_order_inv_fk` (`transfer_token_permission_order`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typesofthings`
--
ALTER TABLE `typesofthings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `typesofthings_created_by_id_fk` (`created_by_id`),
  ADD KEY `typesofthings_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`);

--
-- Indexes for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `up_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indexes for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`),
  ADD KEY `up_users_role_links_order_inv_fk` (`user_order`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_of_items`
--
ALTER TABLE `category_of_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category_of_items_item_links`
--
ALTER TABLE `category_of_items_item_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `category_of_items_parent_links`
--
ALTER TABLE `category_of_items_parent_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `garages`
--
ALTER TABLE `garages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `items_storage_place_links`
--
ALTER TABLE `items_storage_place_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `items_users_permissions_user_links`
--
ALTER TABLE `items_users_permissions_user_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `notes_users_permissions_user_links`
--
ALTER TABLE `notes_users_permissions_user_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `typesofthings`
--
ALTER TABLE `typesofthings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_of_items`
--
ALTER TABLE `category_of_items`
  ADD CONSTRAINT `category_of_items_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `category_of_items_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `category_of_items_item_links`
--
ALTER TABLE `category_of_items_item_links`
  ADD CONSTRAINT `category_of_items_item_links_fk` FOREIGN KEY (`category_of_item_id`) REFERENCES `category_of_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_of_items_item_links_inv_fk` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_of_items_parent_links`
--
ALTER TABLE `category_of_items_parent_links`
  ADD CONSTRAINT `category_of_items_parent_links_fk` FOREIGN KEY (`category_of_item_id`) REFERENCES `category_of_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_of_items_parent_links_inv_fk` FOREIGN KEY (`inv_category_of_item_id`) REFERENCES `category_of_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `garages`
--
ALTER TABLE `garages`
  ADD CONSTRAINT `garages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `garages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `items_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `items_storage_place_links`
--
ALTER TABLE `items_storage_place_links`
  ADD CONSTRAINT `items_storage_place_links_fk` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_storage_place_links_inv_fk` FOREIGN KEY (`garage_id`) REFERENCES `garages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `items_users_permissions_user_links`
--
ALTER TABLE `items_users_permissions_user_links`
  ADD CONSTRAINT `items_users_permissions_user_links_fk` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_users_permissions_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `notes_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `notes_users_permissions_user_links`
--
ALTER TABLE `notes_users_permissions_user_links`
  ADD CONSTRAINT `notes_users_permissions_user_links_fk` FOREIGN KEY (`note_id`) REFERENCES `notes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notes_users_permissions_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_inv_fk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `typesofthings`
--
ALTER TABLE `typesofthings`
  ADD CONSTRAINT `typesofthings_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `typesofthings_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
