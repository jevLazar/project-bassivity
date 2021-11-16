-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2021 at 01:31 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pb_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `atms`
--

CREATE TABLE `atms` (
  `id` smallint(3) NOT NULL,
  `pos_x` float NOT NULL,
  `pos_y` float NOT NULL,
  `pos_z` float NOT NULL,
  `pos_rx` float NOT NULL,
  `pos_ry` float NOT NULL,
  `pos_rz` float NOT NULL,
  `cutted_wire` tinyint(1) NOT NULL DEFAULT 0,
  `broken_system` tinyint(1) NOT NULL DEFAULT 0,
  `time_to_rob` tinyint(1) NOT NULL DEFAULT 0,
  `exists` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banned`
--

CREATE TABLE `banned` (
  `ban_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ban_type` smallint(1) DEFAULT NULL,
  `ban_time` int(11) DEFAULT NULL,
  `ban_reason` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ban_admin` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ban_date` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blacklist`
--

CREATE TABLE `blacklist` (
  `Time` varchar(22) NOT NULL,
  `Name` varchar(24) NOT NULL,
  `Admin` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bussines`
--

CREATE TABLE `bussines` (
  `bussines_id` int(11) NOT NULL,
  `b_owner_sqlID` int(11) DEFAULT -1,
  `bOnAuction` tinyint(1) NOT NULL DEFAULT 0,
  `bOwner` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Drzava',
  `b_price` int(11) NOT NULL,
  `b_type` smallint(3) NOT NULL,
  `b_locked` tinyint(4) DEFAULT 0,
  `b_money` int(11) DEFAULT 0,
  `b_enter_x` float NOT NULL,
  `b_enter_y` float NOT NULL,
  `b_enter_z` float NOT NULL,
  `b_exit_x` float DEFAULT 0,
  `b_exit_y` float DEFAULT 0,
  `b_exit_z` float DEFAULT 0,
  `b_enter_int` int(11) DEFAULT 0,
  `b_enter_vw` int(11) DEFAULT 0,
  `b_exit_int` int(11) DEFAULT 0,
  `b_exit_vw` int(11) DEFAULT 0,
  `b_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `b_level` int(11) NOT NULL,
  `b_jobID` smallint(2) DEFAULT 0,
  `b_neaktivnost` int(11) DEFAULT 0,
  `b_facture` int(11) DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `containers`
--

CREATE TABLE `containers` (
  `id` smallint(6) NOT NULL,
  `pos_x` float NOT NULL,
  `pos_y` float NOT NULL,
  `pos_z` float NOT NULL,
  `pos_rx` float NOT NULL,
  `pos_ry` float NOT NULL,
  `pos_rz` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gangzones`
--

CREATE TABLE `gangzones` (
  `gzone_id` int(11) NOT NULL,
  `taken` tinyint(4) DEFAULT NULL,
  `takeable` tinyint(4) DEFAULT NULL,
  `gang_id` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `is_special` tinyint(1) NOT NULL DEFAULT 0,
  `max_x` float NOT NULL DEFAULT 0,
  `max_y` float NOT NULL DEFAULT 0,
  `min_x` float NOT NULL DEFAULT 0,
  `min_y` float NOT NULL DEFAULT 0,
  `color` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_pos_x` float DEFAULT NULL,
  `pickup_pos_y` float DEFAULT NULL,
  `pickup_pos_z` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE `gates` (
  `id` smallint(6) NOT NULL,
  `owner` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` smallint(6) NOT NULL,
  `for` mediumint(11) NOT NULL,
  `org` smallint(4) DEFAULT NULL,
  `speed` float NOT NULL,
  `radius` float NOT NULL,
  `time` smallint(6) NOT NULL,
  `pos_x` float NOT NULL,
  `pos_y` float NOT NULL,
  `pos_z` float NOT NULL,
  `pos_rx` float NOT NULL,
  `pos_ry` float NOT NULL,
  `pos_rz` float NOT NULL,
  `interior` int(11) DEFAULT NULL,
  `vw` int(11) DEFAULT NULL,
  `move_x` float NOT NULL,
  `move_y` float NOT NULL,
  `move_z` float NOT NULL,
  `move_rx` float NOT NULL,
  `move_ry` float NOT NULL,
  `move_rz` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gps`
--

CREATE TABLE `gps` (
  `id` smallint(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pos_x` float NOT NULL,
  `pos_y` float NOT NULL,
  `pos_z` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gps`
--

INSERT INTO `gps` (`id`, `name`, `pos_x`, `pos_y`, `pos_z`) VALUES
(1, 'LSPD', 1536.48, -1671.78, 13.383),
(2, 'Opstina', 1484.28, -1735.04, 13.383),
(3, 'Banka', 1458.69, -1031.52, 23.724),
(4, 'Spawn', 1547.91, -2286.77, 13.383),
(5, 'Zlatara', 2001.9, -1277.87, 23.907),
(6, 'Auto Skola', 2485.67, -1910.56, 13.566),
(7, 'Igraonica', 1145.28, -896.018, 42.92),
(8, 'Market', 1315.75, -908.306, 38.249),
(9, 'Market 2', 1352.22, -1753.48, 13.354),
(10, 'Auto Salon Audi', 1573.98, -1287.04, 17.487),
(11, 'Lotto', 1293.54, -1540.78, 13.534),
(12, 'Victim', 453.917, -1502.29, 30.871),
(13, 'Electronic Shop', 1295.66, -1859.5, 13.547),
(14, 'Auto Salon Grotti', 542.084, -1293.93, 17.242),
(15, 'Auto Salon CnS', 2128.59, -1136.7, 25.533),
(16, 'Auto Salon Bikes', 1981.96, -1990.48, 13.547),
(17, 'Auto Salon Airplanes', 2004.42, -2316.37, 13.547),
(18, 'Auto Salon Helicopters', 1921.36, -2231.96, 13.547),
(19, 'Auto Salon Boats', 285.64, -1900.75, 2.074),
(20, 'Javna Kuca', 2204.99, -1151.15, 29.797),
(21, 'Crno Trziste', 197.099, -232.109, 1.779),
(22, 'Klizaliste', 1063.68, -1786.25, 13.649);

-- --------------------------------------------------------

--
-- Table structure for table `job_skills`
--

CREATE TABLE `job_skills` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `skill_mehanicar` tinyint(3) DEFAULT 1,
  `skill_pmunicije` tinyint(3) NOT NULL DEFAULT 1,
  `skill_pilot` tinyint(3) DEFAULT 1,
  `skill_rudar` tinyint(3) DEFAULT 1,
  `skill_pnovca` tinyint(3) DEFAULT 1,
  `skill_uber` tinyint(3) DEFAULT 1,
  `skill_pnamjestaja` tinyint(3) DEFAULT 1,
  `skill_fasader` tinyint(3) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log-ban`
--

CREATE TABLE `log-ban` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-bandera`
--

CREATE TABLE `log-bandera` (
  `Time` datetime NOT NULL,
  `Text` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-chat`
--

CREATE TABLE `log-chat` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-connect`
--

CREATE TABLE `log-connect` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-deleteacc`
--

CREATE TABLE `log-deleteacc` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-edit`
--

CREATE TABLE `log-edit` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-fakture`
--

CREATE TABLE `log-fakture` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-gift`
--

CREATE TABLE `log-gift` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-give`
--

CREATE TABLE `log-give` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-kick`
--

CREATE TABLE `log-kick` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-komande`
--

CREATE TABLE `log-komande` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-kupovina`
--

CREATE TABLE `log-kupovina` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-make`
--

CREATE TABLE `log-make` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-neaktivnost`
--

CREATE TABLE `log-neaktivnost` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-password`
--

CREATE TABLE `log-password` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-pay`
--

CREATE TABLE `log-pay` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-paysafe-kodovi`
--

CREATE TABLE `log-paysafe-kodovi` (
  `Time` datetime NOT NULL,
  `Text` varchar(132) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-pm`
--

CREATE TABLE `log-pm` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-poeni`
--

CREATE TABLE `log-poeni` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-prijavabugova`
--

CREATE TABLE `log-prijavabugova` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-punishment`
--

CREATE TABLE `log-punishment` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-rcon`
--

CREATE TABLE `log-rcon` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-rob`
--

CREATE TABLE `log-rob` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-sell`
--

CREATE TABLE `log-sell` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-setstat`
--

CREATE TABLE `log-setstat` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-smjenjivanja`
--

CREATE TABLE `log-smjenjivanja` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-sretniid`
--

CREATE TABLE `log-sretniid` (
  `Time` datetime NOT NULL,
  `Text` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-tajna`
--

CREATE TABLE `log-tajna` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-transfer`
--

CREATE TABLE `log-transfer` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-unban`
--

CREATE TABLE `log-unban` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-unjail`
--

CREATE TABLE `log-unjail` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-xbon-kodovi`
--

CREATE TABLE `log-xbon-kodovi` (
  `Time` datetime NOT NULL,
  `Text` varchar(132) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-zamena`
--

CREATE TABLE `log-zamena` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `org_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `prefix` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(24) CHARACTER SET utf8 DEFAULT NULL,
  `type` int(11) NOT NULL,
  `suspended` tinyint(4) DEFAULT 0,
  `max_members` smallint(2) DEFAULT 30,
  `male_skin_1` smallint(3) NOT NULL,
  `male_skin_2` smallint(3) NOT NULL,
  `male_skin_3` smallint(3) NOT NULL,
  `male_skin_4` smallint(3) NOT NULL,
  `male_skin_5` smallint(3) NOT NULL,
  `male_skin_6` smallint(3) NOT NULL,
  `female_skin_1` smallint(3) NOT NULL,
  `female_skin_2` smallint(3) NOT NULL,
  `female_skin_3` smallint(3) NOT NULL,
  `female_skin_4` smallint(3) NOT NULL,
  `female_skin_5` smallint(3) NOT NULL,
  `female_skin_6` smallint(3) NOT NULL,
  `rank_1` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_2` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_3` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_4` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_5` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_6` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `enter_pos_x` float NOT NULL,
  `enter_pos_y` float NOT NULL,
  `enter_pos_z` float NOT NULL,
  `exit_pos_x` float NOT NULL,
  `exit_pos_y` float NOT NULL,
  `exit_pos_z` float NOT NULL,
  `interior` int(11) DEFAULT 0,
  `virtualw` int(11) DEFAULT 0,
  `spawn_point_x` float DEFAULT 0,
  `spawn_point_y` float DEFAULT 0,
  `spawn_point_z` float DEFAULT 0,
  `oDilerX` float NOT NULL DEFAULT 0,
  `oDilerY` float NOT NULL DEFAULT 0,
  `oDilerZ` float NOT NULL DEFAULT 0,
  `oDilerA` float NOT NULL DEFAULT 0,
  `oDilerCena` smallint(6) NOT NULL DEFAULT 500,
  `oDilerRadi` tinyint(1) NOT NULL DEFAULT 0,
  `duty_point_pos_x` float DEFAULT 0,
  `duty_point_pos_y` float DEFAULT 0,
  `duty_point_pos_z` float DEFAULT 0,
  `duty_point_int` smallint(6) DEFAULT 0,
  `duty_point_vw` smallint(6) DEFAULT 0,
  `equip_point_pos_x` float DEFAULT 0,
  `equip_point_pos_y` float DEFAULT 0,
  `equip_point_pos_z` float DEFAULT 0,
  `equip_point_int` smallint(6) DEFAULT 0,
  `equip_point_vw` smallint(6) DEFAULT 0,
  `savez` smallint(6) DEFAULT -1,
  `safe_pos_x` float DEFAULT 0,
  `safe_pos_y` float DEFAULT 0,
  `safe_pos_z` float DEFAULT 0,
  `safe_money` int(11) DEFAULT 0,
  `safe_drug_amount` smallint(6) DEFAULT 0,
  `safe_mats` int(11) NOT NULL DEFAULT 0,
  `oPortX` float NOT NULL DEFAULT 0,
  `oPortY` float NOT NULL DEFAULT 0,
  `oPortZ` float NOT NULL DEFAULT 3,
  `oPortA` float NOT NULL DEFAULT 0,
  `ent_bussines` smallint(6) DEFAULT 0,
  `owned_business` smallint(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`org_id`, `name`, `prefix`, `color`, `type`, `suspended`, `max_members`, `male_skin_1`, `male_skin_2`, `male_skin_3`, `male_skin_4`, `male_skin_5`, `male_skin_6`, `female_skin_1`, `female_skin_2`, `female_skin_3`, `female_skin_4`, `female_skin_5`, `female_skin_6`, `rank_1`, `rank_2`, `rank_3`, `rank_4`, `rank_5`, `rank_6`, `enter_pos_x`, `enter_pos_y`, `enter_pos_z`, `exit_pos_x`, `exit_pos_y`, `exit_pos_z`, `interior`, `virtualw`, `spawn_point_x`, `spawn_point_y`, `spawn_point_z`, `oDilerX`, `oDilerY`, `oDilerZ`, `oDilerA`, `oDilerCena`, `oDilerRadi`, `duty_point_pos_x`, `duty_point_pos_y`, `duty_point_pos_z`, `duty_point_int`, `duty_point_vw`, `equip_point_pos_x`, `equip_point_pos_y`, `equip_point_pos_z`, `equip_point_int`, `equip_point_vw`, `savez`, `safe_pos_x`, `safe_pos_y`, `safe_pos_z`, `safe_money`, `safe_drug_amount`, `safe_mats`, `oPortX`, `oPortY`, `oPortZ`, `oPortA`, `ent_bussines`, `owned_business`) VALUES
(1, 'Policija', 'PD', NULL, 1, 0, 50, 280, 281, 266, 267, 265, 304, 76, 76, 76, 76, 76, 76, 'Officer', 'Detective', 'Lieutenant', 'Major', 'Assistant Chie', 'Chief', 1555.5, -1675.59, 16.195, 246.784, 63.9, 1003.64, 6, 1, 0, 0, 0, 0, 0, 0, 0, 500, 0, 255.386, 77.15, 1003.64, 6, 1, 257.086, 77.204, 1003.64, 6, 1, -1, 0, 0, 0, 0, 0, 0, 1536.36, -1682.97, 13.547, 292.591, 0, 0),
(2, 'FBI', 'FBI', NULL, 1, 0, 50, 163, 164, 164, 165, 166, 286, 76, 76, 76, 76, 76, 76, 'Cadet', 'Agent', 'Field Agent', 'O.S. Agent', 'Assistant D.', 'Director', 1653.48, -1654.76, 22.516, 246.784, 63.9, 1003.64, 6, 2, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1627.6, -1689.61, 13.375, 253.837, 0, 0),
(3, 'Groove Street Family', 'GSF', NULL, 2, 0, 50, 106, 105, 269, 107, 270, 271, 195, 195, 195, 195, 195, 195, 'Nigga', 'Gangsta', 'Top O.G', 'Fighter', 'Right Hand', 'Kingpin', 2495.4, -1691.14, 14.766, 291.552, -141.117, 1161.28, 6, 3, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 2461.19, -1658.6, 13.305, 89.158, 0, 0),
(4, 'Ballas', 'Ball', NULL, 2, 0, 50, 102, 103, 102, 104, 104, 296, 195, 195, 195, 195, 195, 195, 'Nigga', 'Gangsta', 'Twist', 'Angelo', 'Top O.G.', 'O.G.', 2036.37, -1052.15, 25.023, 291.552, -141.117, 1161.28, 6, 4, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 2028.28, -1074.86, 24.565, 340.536, 0, 0),
(5, 'Mara Salvatrucha 13', 'MS13', NULL, 2, 0, 50, 108, 108, 108, 109, 109, 110, 195, 195, 195, 195, 195, 195, 'Nino', 'Guardiano', 'Amigo', 'Senor', 'Jefe Inmediato', 'El Jefe', 2370.27, -1034.56, 54.411, 291.552, -141.117, 1161.28, 6, 5, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 2391.46, -1055.31, 53.23, 41.97, 0, 0),
(6, 'Los Surenos 13', 'LS13', NULL, 2, 0, 50, 114, 115, 115, 116, 175, 292, 195, 195, 195, 195, 195, 195, 'Nino', 'Guardiano', 'Amigo', 'Senor', 'jefe Inmediato', 'El Jefe', 1846.53, -2021.27, 13.547, 291.552, -141.117, 1161.28, 6, 6, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1822.96, -2048.35, 13.383, 320.778, 0, 0),
(7, 'Yakuza', 'Yaku', NULL, 3, 0, 50, 117, 122, 123, 123, 186, 120, 211, 211, 211, 211, 211, 211, 'Rank 1 ', 'Rank 2', 'Rank 3', 'Rank 4', 'Co Leader', 'Leader', -1977.22, -763.585, 1497.47, 1934.02, 280.123, 1371.42, 6, 7, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1011.29, -1147.82, 23.684, 3.79, 4, 0),
(8, 'Russian Mafia', 'RM', NULL, 3, 0, 50, 127, 112, 112, 111, 111, 113, 91, 91, 91, 91, 91, 91, 'Rank 1', 'Rank 2', 'Rank 3', 'Rank 4', 'Co Leader', 'Leader', 75.89, -1753.59, 25.763, 1934.02, 280.123, 1371.42, 6, 8, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 136.245, -1686.69, 11.842, 93.837, 0, 0),
(10, 'La Cosa Nostra', 'LCN', NULL, 3, 0, 50, 125, 125, 126, 126, 124, 124, 93, 93, 93, 93, 93, 93, 'Rank 1', 'Rank 2', 'Rank 3', 'Rank 4', 'Co Leader', 'Leader', 1122.74, -2036.95, 69.894, 1934.02, 280.123, 1371.42, 6, 9, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1300.75, -2049.03, 58.496, 91.998, 0, 0),
(11, 'Mexican Mafia', 'MM', NULL, 3, 0, 50, 47, 47, 48, 46, 223, 120, 150, 150, 150, 150, 150, 150, 'Rank 1', 'Rank 2', 'Rank 3', 'Rank 4', 'Co Leader', 'Leader', 1298.5, -797.986, 84.141, 1934.02, 280.123, 1371.42, 6, 10, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1238.46, -736.243, 95.597, 196.395, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `org_members`
--

CREATE TABLE `org_members` (
  `id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `memb_rank` smallint(1) NOT NULL,
  `memb_type` smallint(1) NOT NULL DEFAULT 0,
  `memb_sqlID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `propertys`
--

CREATE TABLE `propertys` (
  `iSQLID` mediumint(9) NOT NULL,
  `iOwnerSQLID` mediumint(9) NOT NULL DEFAULT -1,
  `iGarageSqlID` mediumint(9) NOT NULL DEFAULT -1,
  `iOwned` tinyint(4) NOT NULL DEFAULT 0,
  `iOnAuction` tinyint(1) NOT NULL DEFAULT 0,
  `iOwner` varchar(25) NOT NULL DEFAULT 'Drzava',
  `iMoney` int(11) NOT NULL DEFAULT 0,
  `iUsage` tinyint(4) NOT NULL,
  `iNeaktivnost` smallint(3) NOT NULL DEFAULT 0,
  `iEnter1` float NOT NULL,
  `iEnter2` float NOT NULL,
  `iEnter3` float NOT NULL,
  `iExit1` float NOT NULL,
  `iExit2` float NOT NULL,
  `iExit3` float NOT NULL,
  `iPrice` int(11) NOT NULL,
  `iLevel` smallint(6) NOT NULL,
  `iLocked` tinyint(4) NOT NULL DEFAULT 1,
  `iVrsta` tinyint(4) NOT NULL,
  `iInterior` int(11) NOT NULL,
  `iVW` int(11) NOT NULL,
  `iOruzje1` tinyint(4) NOT NULL DEFAULT 0,
  `iOruzje2` tinyint(4) NOT NULL DEFAULT 0,
  `iOruzje3` tinyint(4) NOT NULL DEFAULT 0,
  `iOruzje4` tinyint(4) NOT NULL DEFAULT 0,
  `iMunicija1` smallint(6) NOT NULL DEFAULT 0,
  `iMunicija2` smallint(6) NOT NULL DEFAULT 0,
  `iMunicija3` smallint(6) NOT NULL DEFAULT 0,
  `iMunicija4` smallint(6) NOT NULL DEFAULT 0,
  `iDrugAmmount` smallint(6) NOT NULL DEFAULT 0,
  `iMats` mediumint(9) NOT NULL DEFAULT 0,
  `iAlarm` tinyint(1) NOT NULL DEFAULT 0,
  `iDoorLevel` tinyint(4) NOT NULL DEFAULT 0,
  `iLockLevel` tinyint(1) NOT NULL DEFAULT 0,
  `iTime` smallint(6) NOT NULL DEFAULT 0,
  `iAdress` varchar(50) NOT NULL DEFAULT '',
  `iRentable` tinyint(1) NOT NULL DEFAULT 0,
  `iRentPrice` smallint(6) NOT NULL DEFAULT 0,
  `iRentovano` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `punishments`
--

CREATE TABLE `punishments` (
  `p_id` int(11) NOT NULL,
  `p_user_id` int(11) NOT NULL,
  `p_admin` int(11) NOT NULL,
  `p_reason` varchar(64) NOT NULL,
  `p_jail_min` int(11) NOT NULL,
  `p_money_fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quests`
--

CREATE TABLE `quests` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `easy_quest_1` tinyint(1) DEFAULT 0,
  `easy_quest_2` tinyint(1) DEFAULT 0,
  `easy_quest_3` tinyint(1) DEFAULT 0,
  `easy_quest_4` tinyint(1) DEFAULT 0,
  `easy_quest_5` tinyint(1) DEFAULT 0,
  `easy_quest_6` tinyint(1) DEFAULT 0,
  `easy_quest_7` tinyint(1) DEFAULT 0,
  `easy_quest_8` tinyint(1) DEFAULT 0,
  `easy_quest_9` tinyint(1) DEFAULT 0,
  `easy_quest_10` tinyint(1) DEFAULT 0,
  `easy_reward_quest_1` tinyint(1) DEFAULT 0,
  `easy_reward_quest_2` tinyint(1) DEFAULT 0,
  `easy_reward_quest_3` tinyint(1) DEFAULT 0,
  `easy_reward_quest_4` tinyint(1) DEFAULT 0,
  `easy_reward_quest_5` tinyint(1) DEFAULT 0,
  `easy_reward_quest_6` tinyint(1) DEFAULT 0,
  `easy_reward_quest_7` tinyint(1) DEFAULT 0,
  `easy_reward_quest_8` tinyint(1) DEFAULT 0,
  `easy_reward_quest_9` tinyint(1) DEFAULT 0,
  `easy_reward_quest_10` tinyint(1) DEFAULT 0,
  `xmas_quest_1` smallint(5) DEFAULT 0,
  `xmas_quest_2` smallint(5) DEFAULT 0,
  `xmas_quest_3` smallint(5) DEFAULT 0,
  `xmas_quest_4` smallint(5) DEFAULT 0,
  `xmas_quest_5` smallint(5) DEFAULT 0,
  `xmas_quest_6` smallint(5) DEFAULT 0,
  `xmas_quest_7` smallint(5) DEFAULT 0,
  `xmas_quest_8` smallint(5) DEFAULT 0,
  `xmas_quest_9` smallint(5) DEFAULT 0,
  `xmas_quest_10` smallint(5) DEFAULT 0,
  `xmas_quest_11` tinyint(1) DEFAULT 0,
  `xmas_quest_12` tinyint(1) DEFAULT 0,
  `xmas_quest_13` tinyint(1) DEFAULT 0,
  `xmas_quest_14` tinyint(1) DEFAULT 0,
  `xmas_quest_15` tinyint(1) DEFAULT 0,
  `xmas_quest_16` smallint(2) DEFAULT 0,
  `xmas_quest_17` tinyint(1) DEFAULT 0,
  `xmas_quest_18` tinyint(1) DEFAULT 0,
  `xmas_quest_19` tinyint(1) DEFAULT 0,
  `xmas_quest_20` tinyint(1) DEFAULT 0,
  `xmas_quest_21` tinyint(1) DEFAULT 0,
  `xmas_quest_22` tinyint(1) DEFAULT 0,
  `xmas_quest_23` tinyint(1) DEFAULT 0,
  `xmas_quest_24` tinyint(1) DEFAULT 0,
  `xmas_quest_25` tinyint(1) DEFAULT 0,
  `xmas_quest_26` tinyint(1) DEFAULT 0,
  `xmas_quest_27` tinyint(1) DEFAULT 0,
  `xmas_quest_28` tinyint(1) DEFAULT 0,
  `xmas_quest_29` tinyint(1) DEFAULT 0,
  `xmas_quest_30` tinyint(1) DEFAULT 0,
  `xmas_quest_31` smallint(2) DEFAULT 0,
  `xmas_quest_32` tinyint(1) DEFAULT 0,
  `xmas_quest_33` tinyint(1) DEFAULT 0,
  `xmas_done_quest_1` tinyint(1) DEFAULT 0,
  `xmas_done_quest_2` tinyint(1) DEFAULT 0,
  `xmas_done_quest_3` tinyint(1) DEFAULT 0,
  `xmas_done_quest_4` tinyint(1) DEFAULT 0,
  `xmas_done_quest_5` tinyint(1) DEFAULT 0,
  `xmas_done_quest_6` tinyint(1) DEFAULT 0,
  `xmas_done_quest_7` tinyint(1) DEFAULT 0,
  `xmas_done_quest_8` tinyint(1) DEFAULT 0,
  `xmas_done_quest_9` tinyint(1) DEFAULT 0,
  `xmas_done_quest_10` tinyint(1) DEFAULT 0,
  `xmas_done_quest_16` tinyint(1) DEFAULT 0,
  `xmas_done_quest_17` tinyint(1) DEFAULT 0,
  `xmas_done_quest_31` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rents`
--

CREATE TABLE `rents` (
  `id` smallint(6) NOT NULL,
  `pos_x` float NOT NULL,
  `pos_y` float NOT NULL,
  `pos_z` float NOT NULL,
  `vpos_x` float NOT NULL,
  `vpos_y` float NOT NULL,
  `vpos_z` float NOT NULL,
  `vpos_a` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tiki`
--

CREATE TABLE `tiki` (
  `id` smallint(6) NOT NULL,
  `pos_x` float NOT NULL,
  `pos_y` float NOT NULL,
  `pos_z` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` mediumint(7) NOT NULL,
  `p_name` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `isonline` tinyint(1) DEFAULT 0,
  `user_ip` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `registered` tinyint(1) DEFAULT 0,
  `sex` tinyint(1) NOT NULL,
  `age` tinyint(2) NOT NULL,
  `level` smallint(5) DEFAULT 1,
  `exp` smallint(6) DEFAULT 0,
  `online_hours` smallint(6) DEFAULT 0,
  `money` int(11) DEFAULT 0,
  `bank_acc` int(11) DEFAULT 0,
  `gold` mediumint(9) DEFAULT 0,
  `diamond` mediumint(9) DEFAULT 0,
  `payday` tinyint(2) DEFAULT 0,
  `upgrades` tinyint(3) DEFAULT 0,
  `admin_lvl` tinyint(1) DEFAULT 0,
  `admin_code` int(4) DEFAULT 0,
  `spec_admin` tinyint(1) DEFAULT 0,
  `helper_level` tinyint(1) DEFAULT 0,
  `vip_level` tinyint(1) DEFAULT 0,
  `promoter_level` tinyint(1) NOT NULL DEFAULT 0,
  `spec_rank` tinyint(2) DEFAULT 0,
  `staff_min` smallint(6) DEFAULT 0,
  `vip_time` float DEFAULT 0,
  `skin_id` smallint(5) DEFAULT 0,
  `spawn` tinyint(1) DEFAULT 0,
  `lider` tinyint(2) NOT NULL DEFAULT 0,
  `clan` tinyint(2) NOT NULL DEFAULT 0,
  `rank` tinyint(2) NOT NULL DEFAULT 0,
  `materials` mediumint(9) DEFAULT 0,
  `job_id` tinyint(2) DEFAULT 0,
  `fight_style` tinyint(1) DEFAULT 0,
  `spawn_hp` float DEFAULT 0,
  `vehicle_license` tinyint(1) DEFAULT 0,
  `boat_license` tinyint(1) DEFAULT 0,
  `air_license` tinyint(1) DEFAULT 0,
  `gun_license` tinyint(1) DEFAULT 0,
  `toolkit` tinyint(1) DEFAULT 0,
  `property_id_1` smallint(4) DEFAULT -1,
  `property_id_2` smallint(4) DEFAULT -1,
  `property_id_3` smallint(4) DEFAULT -1,
  `bussines_id` smallint(4) DEFAULT 0,
  `field_id` smallint(4) DEFAULT -1,
  `garage_id` smallint(4) DEFAULT 0,
  `phone` tinyint(1) NOT NULL DEFAULT 0,
  `phone_number` mediumint(9) DEFAULT 0,
  `phone_credit` mediumint(9) DEFAULT 0,
  `strenght` smallint(3) DEFAULT 0,
  `jail_type` tinyint(1) DEFAULT 0,
  `jail_time` smallint(4) DEFAULT 0,
  `wanted_level` tinyint(2) DEFAULT 0,
  `arrested` smallint(6) DEFAULT 0,
  `pd_arrest` mediumint(9) NOT NULL DEFAULT 0,
  `pd_statsticket` mediumint(9) NOT NULL DEFAULT 0,
  `pd_statsticket_money` mediumint(9) NOT NULL DEFAULT 0,
  `taken_weapons` mediumint(9) NOT NULL DEFAULT 0,
  `taken_drugs` mediumint(9) NOT NULL DEFAULT 0,
  `credit_rest` mediumint(9) DEFAULT 0,
  `credit_amount` mediumint(9) DEFAULT 0,
  `credit_installment` smallint(5) DEFAULT 0,
  `warn` tinyint(1) DEFAULT 0,
  `mute` int(11) DEFAULT 0,
  `mask_id` mediumint(9) DEFAULT 0,
  `rp_learn` tinyint(1) DEFAULT 0,
  `marker_p1` float DEFAULT 0,
  `marker_p2` float DEFAULT 0,
  `marker_p3` float DEFAULT 0,
  `gps_level` tinyint(1) DEFAULT 1,
  `org_contract` smallint(5) DEFAULT 0,
  `hitman_price` mediumint(9) DEFAULT 0,
  `country` tinyint(2) DEFAULT 0,
  `email` varchar(128) CHARACTER SET utf8 NOT NULL,
  `org_punishment` tinyint(3) DEFAULT 0,
  `offpjail` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `offpprison` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `offpmute` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `married` tinyint(1) DEFAULT 0,
  `married_to` varchar(64) CHARACTER SET utf8 DEFAULT 'Niko',
  `vehicle_slots` smallint(4) DEFAULT 1,
  `rob_time` tinyint(3) DEFAULT 0,
  `leave_jail` tinyint(1) DEFAULT 0,
  `bail_price` int(11) DEFAULT 0,
  `hangar_time` tinyint(3) DEFAULT 0,
  `event_first_place` smallint(5) DEFAULT 0,
  `event_second_place` smallint(5) DEFAULT 0,
  `event_third_place` smallint(5) DEFAULT 0,
  `dm_event_kills` mediumint(9) DEFAULT 0,
  `cstdm_score` mediumint(9) DEFAULT 0,
  `rent_id` smallint(4) DEFAULT -1,
  `reserve_keys` int(11) DEFAULT -1,
  `watch` smallint(5) DEFAULT 0,
  `dbo` tinyint(1) DEFAULT 0,
  `dbo_color` tinyint(2) DEFAULT 0,
  `rp_poen` smallint(3) DEFAULT 0,
  `reaction_poen` smallint(3) DEFAULT 0,
  `taking_time` tinyint(3) DEFAULT 0,
  `gift` smallint(6) DEFAULT 0,
  `paket` tinyint(1) DEFAULT 0,
  `gate_key` varchar(64) CHARACTER SET utf8 DEFAULT 'Niko',
  `mats_smugl` tinyint(1) DEFAULT 0,
  `robp_time` tinyint(3) DEFAULT 0,
  `law_appeals` smallint(4) DEFAULT 0,
  `law_skill` smallint(4) DEFAULT 0,
  `agm_stats` smallint(8) NOT NULL DEFAULT 0,
  `boombox` tinyint(1) NOT NULL DEFAULT 0,
  `backpack_pizza` smallint(6) NOT NULL DEFAULT 0,
  `backpack_juice` smallint(6) NOT NULL DEFAULT 0,
  `backpack_beer` smallint(6) NOT NULL DEFAULT 0,
  `backpack_hamburger` smallint(6) NOT NULL DEFAULT 0,
  `backpack_fish` smallint(6) NOT NULL DEFAULT 0,
  `backpack_laptop` tinyint(1) NOT NULL DEFAULT 0,
  `backpack_drug` mediumint(9) NOT NULL DEFAULT 0,
  `backpack_gs_s1` smallint(3) NOT NULL DEFAULT 0,
  `backpack_gs_s2` smallint(3) NOT NULL DEFAULT 0,
  `backpack_gs_s3` smallint(3) NOT NULL DEFAULT 0,
  `backpack_am_s1` smallint(6) NOT NULL DEFAULT 0,
  `backpack_am_s2` smallint(6) NOT NULL DEFAULT 0,
  `backpack_am_s3` smallint(6) NOT NULL DEFAULT 0,
  `td_color` tinyint(2) DEFAULT 0,
  `firework` tinyint(2) DEFAULT 0,
  `activity_game` tinyint(2) NOT NULL DEFAULT 0,
  `vip_warn` tinyint(1) DEFAULT 0,
  `ad_warn` tinyint(1) DEFAULT 0,
  `toggle_label` tinyint(1) DEFAULT 0,
  `last_login` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `reg_date` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `game_points` smallint(4) DEFAULT 0,
  `bingo_money` mediumint(9) DEFAULT 0,
  `bingo_number` smallint(6) DEFAULT 0,
  `youtuber` tinyint(4) DEFAULT 0,
  `tikies` smallint(6) DEFAULT 0,
  `sms_confirmation` smallint(6) DEFAULT 0,
  `paysafe_confirmation` smallint(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_clothes`
--

CREATE TABLE `user_clothes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cloth_slot_1` int(11) DEFAULT -1,
  `cloth_slot_1_p1` float DEFAULT 0,
  `cloth_slot_1_p2` float DEFAULT 0,
  `cloth_slot_1_p3` float DEFAULT 0,
  `cloth_slot_1_p4` float DEFAULT 0,
  `cloth_slot_1_p5` float DEFAULT 0,
  `cloth_slot_1_p6` float DEFAULT 0,
  `cloth_slot_1_p7` float DEFAULT 0,
  `cloth_slot_1_p8` float DEFAULT 0,
  `cloth_slot_1_p9` float DEFAULT 0,
  `cloth_slot_2` int(11) DEFAULT -1,
  `cloth_slot_2_p1` float DEFAULT 0,
  `cloth_slot_2_p2` float DEFAULT 0,
  `cloth_slot_2_p3` float DEFAULT 0,
  `cloth_slot_2_p4` float DEFAULT 0,
  `cloth_slot_2_p5` float DEFAULT 0,
  `cloth_slot_2_p6` float DEFAULT 0,
  `cloth_slot_2_p7` float DEFAULT 0,
  `cloth_slot_2_p8` float DEFAULT 0,
  `cloth_slot_2_p9` float DEFAULT 0,
  `cloth_slot_3` int(11) DEFAULT -1,
  `cloth_slot_3_p1` float DEFAULT 0,
  `cloth_slot_3_p2` float DEFAULT 0,
  `cloth_slot_3_p3` float DEFAULT 0,
  `cloth_slot_3_p4` float DEFAULT 0,
  `cloth_slot_3_p5` float DEFAULT 0,
  `cloth_slot_3_p6` float DEFAULT 0,
  `cloth_slot_3_p7` float DEFAULT 0,
  `cloth_slot_3_p8` float DEFAULT 0,
  `cloth_slot_3_p9` float DEFAULT 0,
  `cloth_slot_4` int(11) DEFAULT -1,
  `cloth_slot_4_p1` float DEFAULT 0,
  `cloth_slot_4_p2` float DEFAULT 0,
  `cloth_slot_4_p3` float DEFAULT 0,
  `cloth_slot_4_p4` float DEFAULT 0,
  `cloth_slot_4_p5` float DEFAULT 0,
  `cloth_slot_4_p6` float DEFAULT 0,
  `cloth_slot_4_p7` float DEFAULT NULL,
  `cloth_slot_4_p8` float DEFAULT 0,
  `cloth_slot_4_p9` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `veh_id` int(11) NOT NULL,
  `owner_sqlID` int(11) DEFAULT 0,
  `v_price` int(11) NOT NULL,
  `v_locked` tinyint(1) DEFAULT 0,
  `v_pos_x` float NOT NULL,
  `v_pos_y` float NOT NULL,
  `v_pos_z` float NOT NULL,
  `v_pos_a` float NOT NULL,
  `v_virtualw` int(11) NOT NULL,
  `v_interior` int(11) NOT NULL,
  `v_usage` smallint(2) NOT NULL,
  `v_organization` smallint(2) DEFAULT 0,
  `v_job` smallint(2) DEFAULT -1,
  `v_fuel_station` smallint(2) DEFAULT -1,
  `v_color_1` int(11) NOT NULL,
  `v_color_2` int(11) NOT NULL,
  `v_model` int(11) NOT NULL,
  `v_teh` smallint(2) DEFAULT 0,
  `v_reg` smallint(2) DEFAULT 0,
  `v_reg_vreme` smallint(3) DEFAULT 0,
  `v_tablice` varchar(24) COLLATE utf8_unicode_ci DEFAULT 'NEMA',
  `v_gps` smallint(2) DEFAULT 0,
  `v_insurance` smallint(2) DEFAULT 0,
  `v_lock` smallint(2) DEFAULT 0,
  `v_alarm` smallint(2) DEFAULT 0,
  `v_fuel` smallint(2) DEFAULT 40,
  `v_fuel_type` smallint(2) DEFAULT 0,
  `v_neon` int(11) DEFAULT 0,
  `v_tuned` tinyint(1) DEFAULT 0,
  `v_imobilizator` int(11) DEFAULT 0,
  `v_spoiler` int(11) DEFAULT 0,
  `v_hood` int(11) DEFAULT 0,
  `v_roof` int(11) DEFAULT 0,
  `v_skirt` int(11) DEFAULT 0,
  `v_lamps` int(11) DEFAULT 0,
  `v_nitro` int(11) DEFAULT 0,
  `v_exhaust` int(11) DEFAULT 0,
  `v_wheels` int(11) DEFAULT 0,
  `v_stereo` int(11) DEFAULT 0,
  `v_hydraulics` int(11) DEFAULT 0,
  `v_front_bumper` int(11) DEFAULT 0,
  `v_rear_bumper` int(11) DEFAULT 0,
  `v_vents` int(11) DEFAULT 0,
  `v_paintjob` int(11) DEFAULT 255,
  `v_drug_ammount` int(11) DEFAULT 0,
  `v_mats` int(11) DEFAULT 0,
  `v_weapon_melee` int(11) DEFAULT 0,
  `v_weapon_slot_1` int(11) DEFAULT 0,
  `v_weapon_ammo_1` int(11) DEFAULT 0,
  `v_weapon_slot_2` int(11) DEFAULT 0,
  `v_weapon_ammo_2` int(11) DEFAULT 0,
  `v_gajbica_slot_1` int(11) DEFAULT -1,
  `v_gajbica_slot_2` int(11) DEFAULT -1,
  `v_gajbica_slot_3` int(11) DEFAULT -1,
  `v_gajbica_slot_4` int(11) DEFAULT -1,
  `v_gajbica_slot_5` int(11) DEFAULT -1,
  `v_gajbica_kolicina_1` int(11) DEFAULT 0,
  `v_gajbica_kolicina_2` int(11) DEFAULT 0,
  `v_gajbica_kolicina_3` int(11) DEFAULT 0,
  `v_gajbica_kolicina_4` int(11) DEFAULT 0,
  `v_gajbica_kolicina_5` int(11) DEFAULT 0,
  `v_neaktivnost` int(11) DEFAULT 0,
  `v_kilometri` int(11) DEFAULT 0,
  `v_metri` int(11) DEFAULT 0,
  `vLastSpawn` varchar(44) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_salon`
--

CREATE TABLE `vehicle_salon` (
  `salon_id` int(11) NOT NULL,
  `s_bussines_id` int(11) NOT NULL,
  `veh_buyed_pos_x` float NOT NULL,
  `veh_buyed_pos_y` float NOT NULL,
  `veh_buyed_pos_z` float NOT NULL,
  `veh_buyed_pos_a` float NOT NULL,
  `pickup_pos_x` float NOT NULL,
  `pickup_pos_y` float NOT NULL,
  `pickup_pos_z` float NOT NULL,
  `s_interior` int(11) NOT NULL DEFAULT 0,
  `s_virtualw` int(11) NOT NULL DEFAULT 0,
  `veh_model_1` int(11) DEFAULT 0,
  `veh_model_2` int(11) DEFAULT 0,
  `veh_model_3` int(11) DEFAULT 0,
  `veh_model_4` int(11) DEFAULT 0,
  `veh_model_5` int(11) DEFAULT 0,
  `veh_model_6` int(11) DEFAULT 0,
  `veh_model_7` int(11) DEFAULT 0,
  `veh_model_8` int(11) DEFAULT 0,
  `veh_model_9` int(11) DEFAULT 0,
  `veh_model_10` int(11) DEFAULT 0,
  `veh_model_11` int(11) DEFAULT 0,
  `veh_model_12` int(11) DEFAULT 0,
  `veh_model_13` int(11) DEFAULT 0,
  `veh_model_14` int(11) DEFAULT 0,
  `veh_model_15` int(11) DEFAULT 0,
  `veh_model_16` int(11) DEFAULT 0,
  `veh_amount_1` int(11) DEFAULT 0,
  `veh_amount_2` int(11) DEFAULT 0,
  `veh_amount_3` int(11) DEFAULT 0,
  `veh_amount_4` int(11) DEFAULT 0,
  `veh_amount_5` int(11) DEFAULT 0,
  `veh_amount_6` int(11) DEFAULT 0,
  `veh_amount_7` int(11) DEFAULT 0,
  `veh_amount_8` int(11) DEFAULT 0,
  `veh_amount_9` int(11) DEFAULT 0,
  `veh_amount_10` int(11) DEFAULT 0,
  `veh_amount_11` int(11) DEFAULT 0,
  `veh_amount_12` int(11) DEFAULT 0,
  `veh_amount_13` int(11) DEFAULT 0,
  `veh_amount_14` int(11) DEFAULT 0,
  `veh_amount_15` int(11) DEFAULT 0,
  `veh_amount_16` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xmas_presents`
--

CREATE TABLE `xmas_presents` (
  `presSQLID` smallint(6) NOT NULL,
  `presTaken` tinyint(1) NOT NULL DEFAULT 0,
  `presPlaced` tinyint(1) NOT NULL DEFAULT 1,
  `presPos1` float NOT NULL,
  `presPos2` float NOT NULL,
  `presPos3` float NOT NULL,
  `presPos4` float NOT NULL,
  `presPos5` float NOT NULL,
  `presPos6` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xmas_trees`
--

CREATE TABLE `xmas_trees` (
  `ctSQLID` smallint(6) NOT NULL,
  `ctPlaced` tinyint(1) NOT NULL DEFAULT 1,
  `ctPos1` float NOT NULL,
  `ctPos2` float NOT NULL,
  `ctPos3` float NOT NULL,
  `ctPos4` float NOT NULL,
  `ctPos5` float NOT NULL,
  `ctPos6` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_stats`
--

CREATE TABLE `_stats` (
  `ssSQLID` tinyint(1) NOT NULL,
  `RegistrovanihKorisnika` mediumint(9) NOT NULL DEFAULT 0,
  `BanovanihKorisnika` mediumint(9) NOT NULL DEFAULT 0,
  `KikovanihKorisnika` mediumint(9) NOT NULL DEFAULT 0,
  `BrojWarnova` mediumint(9) NOT NULL DEFAULT 0,
  `BrojPosetaServeru` mediumint(9) NOT NULL DEFAULT 0,
  `HappyHours` tinyint(1) NOT NULL DEFAULT 0,
  `HappyHoursLvl` tinyint(2) NOT NULL DEFAULT 0,
  `HappyJobs` tinyint(1) NOT NULL DEFAULT 0,
  `PocetniLevel` tinyint(1) NOT NULL DEFAULT 1,
  `PocetniNovaca` mediumint(9) NOT NULL DEFAULT 35000,
  `BankaNovac` mediumint(7) NOT NULL DEFAULT 0,
  `KupovinaVozila` tinyint(4) NOT NULL DEFAULT 1,
  `Report` tinyint(1) NOT NULL DEFAULT 1,
  `Pitanja` tinyint(1) NOT NULL DEFAULT 1,
  `RekordServera` smallint(5) NOT NULL DEFAULT 0,
  `Oglasi` tinyint(1) NOT NULL DEFAULT 1,
  `Registracija` tinyint(1) NOT NULL DEFAULT 1,
  `ReactTime` mediumint(9) NOT NULL DEFAULT 7500,
  `ReactName` varchar(25) NOT NULL DEFAULT 'No-one',
  `AVPNE` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atms`
--
ALTER TABLE `atms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `atmSQLID` (`id`);

--
-- Indexes for table `banned`
--
ALTER TABLE `banned`
  ADD PRIMARY KEY (`ban_id`),
  ADD UNIQUE KEY `ban_id` (`ban_id`);

--
-- Indexes for table `bussines`
--
ALTER TABLE `bussines`
  ADD PRIMARY KEY (`bussines_id`);

--
-- Indexes for table `containers`
--
ALTER TABLE `containers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gangzones`
--
ALTER TABLE `gangzones`
  ADD PRIMARY KEY (`gzone_id`);

--
-- Indexes for table `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gps`
--
ALTER TABLE `gps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_skills`
--
ALTER TABLE `job_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`org_id`);

--
-- Indexes for table `org_members`
--
ALTER TABLE `org_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `propertys`
--
ALTER TABLE `propertys`
  ADD PRIMARY KEY (`iSQLID`);

--
-- Indexes for table `punishments`
--
ALTER TABLE `punishments`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `quests`
--
ALTER TABLE `quests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rents`
--
ALTER TABLE `rents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiki`
--
ALTER TABLE `tiki`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_clothes`
--
ALTER TABLE `user_clothes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`veh_id`);

--
-- Indexes for table `vehicle_salon`
--
ALTER TABLE `vehicle_salon`
  ADD PRIMARY KEY (`salon_id`);

--
-- Indexes for table `xmas_presents`
--
ALTER TABLE `xmas_presents`
  ADD PRIMARY KEY (`presSQLID`);

--
-- Indexes for table `xmas_trees`
--
ALTER TABLE `xmas_trees`
  ADD PRIMARY KEY (`ctSQLID`);

--
-- Indexes for table `_stats`
--
ALTER TABLE `_stats`
  ADD PRIMARY KEY (`ssSQLID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atms`
--
ALTER TABLE `atms`
  MODIFY `id` smallint(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banned`
--
ALTER TABLE `banned`
  MODIFY `ban_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bussines`
--
ALTER TABLE `bussines`
  MODIFY `bussines_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `containers`
--
ALTER TABLE `containers`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gangzones`
--
ALTER TABLE `gangzones`
  MODIFY `gzone_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gates`
--
ALTER TABLE `gates`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gps`
--
ALTER TABLE `gps`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `job_skills`
--
ALTER TABLE `job_skills`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `org_members`
--
ALTER TABLE `org_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `propertys`
--
ALTER TABLE `propertys`
  MODIFY `iSQLID` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `punishments`
--
ALTER TABLE `punishments`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quests`
--
ALTER TABLE `quests`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rents`
--
ALTER TABLE `rents`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tiki`
--
ALTER TABLE `tiki`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` mediumint(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_clothes`
--
ALTER TABLE `user_clothes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `veh_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_salon`
--
ALTER TABLE `vehicle_salon`
  MODIFY `salon_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xmas_presents`
--
ALTER TABLE `xmas_presents`
  MODIFY `presSQLID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xmas_trees`
--
ALTER TABLE `xmas_trees`
  MODIFY `ctSQLID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_stats`
--
ALTER TABLE `_stats`
  MODIFY `ssSQLID` tinyint(1) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
