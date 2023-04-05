-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 15 fév. 2023 à 02:05
-- Version du serveur : 10.4.19-MariaDB
-- Version de PHP : 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `metchoup`
--

-- --------------------------------------------------------

--
-- Structure de la table `bamoun`
--

CREATE TABLE `bamoun` (
  `id` int(11) NOT NULL,
  `expression` varchar(255) NOT NULL,
  `expression_audio` varchar(255) DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `date_ajout` datetime NOT NULL,
  `date_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `bamoun`
--

INSERT INTO `bamoun` (`id`, `expression`, `expression_audio`, `source`, `date_ajout`, `date_update`) VALUES
(0, 'tumtum', 'metchoup_tumtum_bamoun_zero.ogg', 'metchoup.com', '2021-11-03 21:00:12', '2021-11-03 21:00:12'),
(1, 'moh', 'metchoup_moh_bamoun_one.ogg', 'metchoup.com', '2021-11-03 21:00:12', '2021-11-03 21:00:12'),
(2, 'mpah', 'metchoup_mpah_bamoun_two.ogg', 'metchoup.com', '2021-11-03 21:18:21', '2021-11-03 21:18:21'),
(3, 'ntèt', 'metchoup_ntèt_bamoun_three.ogg', 'metchoup.com', '2021-11-03 21:18:21', '2021-11-03 21:18:21');

-- --------------------------------------------------------

--
-- Structure de la table `bassa`
--

CREATE TABLE `bassa` (
  `id` int(11) NOT NULL,
  `expression` varchar(255) NOT NULL,
  `expression_audio` varchar(255) DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `date_ajout` datetime NOT NULL,
  `date_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `bassa`
--

INSERT INTO `bassa` (`id`, `expression`, `expression_audio`, `source`, `date_ajout`, `date_update`) VALUES
(0, '', NULL, '', '2021-06-15 10:36:48', '2021-06-15 10:36:48'),
(1, 'yada ', NULL, 'metchoup.com', '2021-06-09 11:06:15', '2021-06-09 11:06:15'),
(2, 'bibaa', NULL, 'metchoup.com', '2021-06-09 11:06:15', '2021-06-09 11:06:15'),
(3, 'biaa', NULL, 'metchoup.com', '2021-06-09 11:09:45', '2021-06-09 11:09:45'),
(4, 'bina', NULL, 'metchoup.com', '2021-06-09 11:09:45', '2021-06-09 11:09:45'),
(5, 'bitan', NULL, 'metchoup.com', '2021-06-09 11:10:47', '2021-06-09 11:10:47'),
(6, 'bisamal', NULL, 'metchoup.com', '2021-06-09 11:10:47', '2021-06-09 11:10:47'),
(7, 'bisaambok', NULL, 'metchoup.com', '2021-06-09 11:11:33', '2021-06-09 11:11:33'),
(8, 'jeum', NULL, 'metchoup.com', '2021-06-09 11:11:33', '2021-06-09 11:11:33'),
(9, 'bôô', NULL, 'metchoup.com', '2021-06-09 11:12:40', '2021-06-09 11:12:40'),
(10, 'jôm', NULL, 'metchoup.com', '2021-06-09 11:12:40', '2021-06-09 11:12:40'),
(1001, 'Manké wem ', NULL, 'metchoup.com', '2021-06-09 11:14:36', '2021-06-09 11:14:36'),
(1002, 'Liwanda djem', NULL, 'metchoup.com', '2021-06-09 11:14:36', '2021-06-09 11:14:36'),
(1101, 'nlanga', NULL, 'metchoup.com', '2021-06-09 12:14:29', '2021-06-09 12:14:29'),
(1151, 'Me nyéga', NULL, 'metchoup.com', '2021-06-09 12:23:13', '2021-06-09 12:23:13'),
(1152, 'I nke laa ?', NULL, 'metchoup.com', '2021-06-15 10:24:47', '2021-06-15 10:24:47'),
(1153, 'U nkal kii ?', NULL, 'metchoup.com', '2021-06-15 10:24:47', '2021-06-15 10:24:47'),
(1154, 'I nke longuè', NULL, 'metchoup.com', '2021-06-15 10:25:48', '2021-06-15 10:25:48'),
(1156, 'i nke bé', NULL, 'metchoup.com', '2021-06-15 10:25:48', '2021-06-15 10:25:48'),
(1157, 'Niiga me hop', NULL, 'metchoup.com', '2021-06-15 10:26:52', '2021-06-15 10:26:52'),
(1158, 'Me yi bé pod longè/ mè yi bé mè hôp longuè', NULL, 'metchoup.com', '2021-06-15 10:26:52', '2021-06-15 10:26:52'),
(1160, 'I nke longuè', NULL, 'metchoup.com', '2021-06-15 10:28:55', '2021-06-15 10:28:55'),
(1161, 'I nlèt', NULL, 'metchoup.com', '2021-06-15 10:28:55', '2021-06-15 10:28:55'),
(1162, 'I ntomb', NULL, 'metchoup.com', '2021-06-15 10:30:18', '2021-06-15 10:30:18'),
(1163, 'Hala a mal, i mal', NULL, 'metchoup.com', '2021-06-15 10:30:18', '2021-06-15 10:30:18'),
(1164, 'Hala a mal bé / i mal bé', NULL, 'metchoup.com', '2021-06-15 10:32:07', '2021-06-15 10:32:07'),
(1165, 'i mbaî', NULL, 'metchoup.com', '2021-06-15 10:32:07', '2021-06-15 10:32:07'),
(1166, 'i nè', NULL, 'metchoup.com', '2021-06-15 10:32:46', '2021-06-15 10:32:46'),
(1167, 'i nlèk', NULL, 'metchoup.com', '2021-06-15 10:32:46', '2021-06-15 10:32:46'),
(1168, 'i nsumé', NULL, 'metchoup.com', '2021-06-15 10:33:40', '2021-06-15 10:33:40'),
(1172, 'mè gwé 21 nwii ( mè gwé môm imaa ni bina nwii)', NULL, 'metchoup.com', '2021-06-15 10:33:40', '2021-06-15 10:33:40'),
(1173, 'mè nlol', NULL, 'metchoup.com', '2021-06-15 10:34:57', '2021-06-15 10:34:57'),
(1174, 'joy jôn lè ndjè', NULL, 'metchoup.com', '2021-06-15 10:34:57', '2021-06-15 10:34:57'),
(1176, 'lèla ba nkal ini ?', NULL, 'metchoup.com', '2021-06-15 10:36:05', '2021-06-15 10:36:05'),
(1177, 'u pôd a ban hala!', NULL, 'metchoup.com', '2021-06-15 10:36:05', '2021-06-15 10:36:05'),
(1178, 'ngandak', NULL, 'metchoup.com', '2021-06-15 10:36:48', '2021-06-15 10:36:48'),
(1180, 'Me nyéga', NULL, 'metchoup.com', '2021-06-15 10:40:35', '2021-06-15 10:40:35');

-- --------------------------------------------------------

--
-- Structure de la table `bazou`
--

CREATE TABLE `bazou` (
  `id` int(11) NOT NULL,
  `expression` varchar(255) NOT NULL,
  `expression_audio` varchar(255) DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `date_ajout` datetime NOT NULL,
  `date_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `bete`
--

CREATE TABLE `bete` (
  `id` int(11) NOT NULL,
  `expression` varchar(255) NOT NULL,
  `expression_audio` varchar(255) DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `date_ajout` datetime NOT NULL,
  `date_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `bete`
--

INSERT INTO `bete` (`id`, `expression`, `expression_audio`, `source`, `date_ajout`, `date_update`) VALUES
(1, 'Bhoto', NULL, 'metchoup.com', '2021-06-09 11:58:51', '2021-06-09 11:58:51'),
(2, 'Sô', NULL, 'metchoup.com', '2021-06-09 11:58:51', '2021-06-09 11:58:51'),
(3, 'Tah', NULL, 'metchoup.com', '2021-06-09 11:59:51', '2021-06-09 11:59:51'),
(4, 'Mon non', NULL, 'metchoup.com', '2021-06-09 11:59:51', '2021-06-09 11:59:51'),
(5, 'Mgbou', NULL, 'metchoup.com', '2021-06-09 12:00:33', '2021-06-09 12:00:33'),
(6, 'Gbeploh', NULL, 'metchoup.com', '2021-06-09 12:00:33', '2021-06-09 12:00:33'),
(7, 'Gbo so', NULL, 'metchoup.com', '2021-06-09 12:01:16', '2021-06-09 12:01:16'),
(8, '', NULL, 'Gbo tah', '2021-06-09 12:01:16', '2021-06-09 12:01:16'),
(9, 'Fehnon', NULL, 'metchoup.com', '2021-06-09 12:01:52', '2021-06-09 12:01:52'),
(10, 'Kogbo', NULL, 'metchoup.com', '2021-06-09 12:01:52', '2021-06-09 12:01:52'),
(1152, 'E ko loboh ?', NULL, 'metchoup.com', '2021-06-15 08:49:20', '2021-06-15 08:49:20'),
(1155, 'Ne eyi nah ? ', NULL, 'metchoup.com', '2021-06-15 08:49:20', '2021-06-15 08:49:20'),
(1159, ' Ame eko loboh', NULL, 'metchoup.com', '2021-06-15 08:52:54', '2021-06-15 08:52:54'),
(1160, ' È e ko loboh', NULL, 'metchoup.com', '2021-06-15 08:52:54', '2021-06-15 08:52:54'),
(1169, 'E keh yorobeh zong ah ? \r\n', NULL, 'metchoup.com', '2021-06-15 08:55:06', '2021-06-15 08:55:06'),
(1170, 'E keh yorobeh golo so', NULL, 'metchoup.com', '2021-06-15 08:55:06', '2021-06-15 08:55:06'),
(1171, 'E keh yorobeh golo bholo', NULL, 'metchoup.com', '2021-06-15 08:56:22', '2021-06-15 08:56:22'),
(1174, 'Mo paa leh ? ', NULL, 'metchoup.com', '2021-06-15 08:56:22', '2021-06-15 08:56:22'),
(1175, 'Ame mo paa... ', NULL, 'metchoup.com', '2021-06-15 08:57:49', '2021-06-15 08:57:49'),
(1199, '\": A golo\r\n: Aho yaawo/Anh yaawo\"', NULL, 'metchoup.com', '2021-06-15 09:17:05', '2021-06-15 09:17:05'),
(1200, ' A yaawo/A ayo', NULL, 'metchoup.com', '2021-06-15 09:17:05', '2021-06-15 09:17:05');

-- --------------------------------------------------------

--
-- Structure de la table `duala`
--

CREATE TABLE `duala` (
  `id` int(11) NOT NULL,
  `expression` varchar(255) NOT NULL,
  `expression_audio` varchar(255) DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `date_ajout` datetime NOT NULL,
  `date_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `duala`
--

INSERT INTO `duala` (`id`, `expression`, `expression_audio`, `source`, `date_ajout`, `date_update`) VALUES
(0, 'tô lambo ', 'metchoup_tolambo_bassa_zero.ogg', 'metchoup.com', '2021-06-09 11:25:18', '2021-06-09 11:25:18'),
(1, 'ewô', 'metchoup_ewo_bassa_one.ogg', 'metchoup.com', '2021-06-09 11:25:18', '2021-06-09 11:25:18'),
(2, 'beba ', 'metchoup_beba_bassa_two.ogg', 'metchoup.com', '2021-06-09 11:26:32', '2021-06-09 11:26:32'),
(3, 'bélàlo ', 'metchoup_belalo_bassa_three.ogg', 'metchoup.com', '2021-06-09 11:26:32', '2021-06-09 11:26:32'),
(4, 'benèi ', 'metchoup_benai_bassa_four.ogg', 'metchoup.com', '2021-06-09 11:27:33', '2021-06-09 11:27:33'),
(5, 'bétànu ', 'metchoup_betanu_bassa_five.ogg', 'metchoup.com', '2021-06-09 11:27:33', '2021-06-09 11:27:33'),
(6, 'mutôbà ', 'metchoup_mutoba_bassa_six.ogg', 'metchoup.com', '2021-06-09 11:28:29', '2021-06-09 11:28:29'),
(7, 'sâmbà ', 'metchoup_samba_bassa_seven.ogg', 'metchoup.com', '2021-06-09 11:28:29', '2021-06-09 11:28:29'),
(8, 'lômbi ', 'metchoup_lombi_bassa_eight.ogg', 'metchoup.com', '2021-06-09 11:29:26', '2021-06-09 11:29:26'),
(9, 'dibuá', 'metchoup_dibua_bassa_nine.ogg', 'metchoup.com', '2021-06-09 11:29:26', '2021-06-09 11:29:26'),
(10, 'dôm', 'metchoup_dom_bassa_ten.ogg', 'metchoup.com', '2021-06-09 11:30:17', '2021-06-09 11:30:17'),
(1001, 'muna tetè', NULL, 'metchoup.com', '2021-06-09 12:09:01', '2021-06-09 12:09:01'),
(1002, 'mwenja', NULL, 'metchoup.com', '2021-06-09 12:09:01', '2021-06-09 12:09:01'),
(1101, 'njola', NULL, 'metchoup.com', '2021-06-09 12:16:19', '2021-06-09 12:16:19'),
(1151, 'idib\'a bwam', NULL, 'metchoup.com', '2021-06-15 10:45:01', '2021-06-15 10:45:01'),
(1182, 'Ebiamu\'a bwam', NULL, 'metchoup.com', '2021-06-15 10:47:07', '2021-06-15 10:47:07'),
(1192, 'Mosi ', NULL, 'metchoup.com', '2021-06-15 10:49:09', '2021-06-15 10:49:09'),
(1193, 'Mukosi ', NULL, 'metchoup.com', '2021-06-15 10:49:09', '2021-06-15 10:49:09'),
(1194, 'Mukwasi ', NULL, 'metchoup.com', '2021-06-15 10:50:05', '2021-06-15 10:50:05'),
(1195, 'Ngisi ', NULL, 'metchoup.com', '2021-06-15 10:50:05', '2021-06-15 10:50:05'),
(1196, 'Ndosi ', NULL, 'metchoup.co', '2021-06-15 10:50:45', '2021-06-15 10:50:45'),
(1197, 'Esaba', NULL, 'metchoup.com', '2021-06-15 10:50:45', '2021-06-15 10:50:45'),
(1198, 'ETIÑA ', NULL, 'metchoup.com', '2021-06-15 10:51:38', '2021-06-15 10:51:38'),
(1217, 'DIMODI', NULL, 'metchoup.com', '2021-06-15 11:22:24', '2021-06-15 11:22:24'),
(1218, 'NGONDE', NULL, 'metchoup.com', '2021-06-15 11:22:24', '2021-06-15 11:22:24'),
(1219, 'SONE', NULL, 'metchoup.com', '2021-06-15 11:23:22', '2021-06-15 11:23:22'),
(1220, 'DIBABA', NULL, 'metchoup.com', '2021-06-15 11:23:22', '2021-06-15 11:23:22'),
(1221, 'EMIASELE', NULL, 'metchoup.com', '2021-06-15 11:24:37', '2021-06-15 11:24:37'),
(1222, 'ESOPESOPE', NULL, 'metchoup.com', '2021-06-15 11:24:37', '2021-06-15 11:24:37'),
(1223, 'MADIBEDIBE', NULL, 'metchoup.com', '2021-06-15 11:25:21', '2021-06-15 11:25:21'),
(1224, 'DIKINDI', NULL, 'metchoup.com', '2021-06-15 11:25:21', '2021-06-15 11:25:21'),
(1225, 'NETEKI', NULL, 'metchoup.com', '2021-06-15 11:26:39', '2021-06-15 11:26:39'),
(1226, 'MAYESE', NULL, 'metchoup.com', '2021-06-15 11:26:39', '2021-06-15 11:26:39'),
(1227, 'TININI', NULL, 'metchoup.com', '2021-06-15 11:27:26', '2021-06-15 11:27:26'),
(1228, 'ELANE', NULL, 'metchoup.com', '2021-06-15 11:27:26', '2021-06-15 11:27:26');

-- --------------------------------------------------------

--
-- Structure de la table `edo`
--

CREATE TABLE `edo` (
  `id` int(11) NOT NULL,
  `expression` varchar(255) NOT NULL,
  `expression_audio` varchar(255) DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `date_ajout` datetime NOT NULL,
  `date_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `edo`
--

INSERT INTO `edo` (`id`, `expression`, `expression_audio`, `source`, `date_ajout`, `date_update`) VALUES
(1192, 'Uzola Edegbe', NULL, 'metchoup.com', '2021-06-15 10:20:12', '2021-06-15 10:20:12'),
(1193, 'Adue Uzola Edeha', NULL, '', '2021-06-15 10:20:12', '2021-06-15 10:20:12'),
(1194, ' Adese Uzola', NULL, 'metchoup.com', '2021-06-15 10:21:50', '2021-06-15 10:21:50'),
(1195, ' Uzola Ede Ene', NULL, 'metchoup.com', '2021-06-15 10:21:50', '2021-06-15 10:21:50'),
(1196, 'Irakhue Uzola', NULL, 'metchoup.com', '2021-06-15 10:22:38', '2021-06-15 10:22:38'),
(1197, 'Uzola Nekherhe', NULL, 'metchoup.com', '2021-06-15 10:22:38', '2021-06-15 10:22:38'),
(1198, 'Uzola Nokhua', NULL, 'metchoup.com', '2021-06-15 10:23:35', '2021-06-15 10:23:35');

-- --------------------------------------------------------

--
-- Structure de la table `english`
--

CREATE TABLE `english` (
  `id` int(11) NOT NULL,
  `expression` varchar(255) NOT NULL,
  `expression_audio` varchar(255) DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `date_ajout` datetime NOT NULL,
  `date_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `english`
--

INSERT INTO `english` (`id`, `expression`, `expression_audio`, `source`, `date_ajout`, `date_update`) VALUES
(0, 'zero', NULL, 'metchoup.com', '2021-06-09 11:52:27', '2021-06-09 11:52:27'),
(1, 'one', NULL, 'metchoup.com', '2021-06-09 11:52:27', '2021-06-09 11:52:27'),
(2, 'two', NULL, 'metchoup.com', '2021-06-09 11:53:26', '2021-06-09 11:53:26'),
(3, 'three', NULL, 'metchoup.com', '2021-06-09 11:53:26', '2021-06-09 11:53:26'),
(4, 'four', NULL, 'metchoup.com', '2021-06-09 11:54:29', '2021-06-09 11:54:29'),
(5, 'five', NULL, 'metchoup.com', '2021-06-09 11:54:29', '2021-06-09 11:54:29'),
(6, 'six', NULL, 'metchoup.com', '2021-06-09 11:55:34', '2021-06-09 11:55:34'),
(7, 'seven', NULL, 'metchoup.com', '2021-06-09 11:55:34', '2021-06-09 11:55:34'),
(8, 'eight', NULL, 'metchoup.com', '2021-06-09 11:56:06', '2021-06-09 11:56:06'),
(9, 'nine', NULL, 'metchoup.com', '2021-06-09 11:56:06', '2021-06-09 11:56:06'),
(10, 'ten', NULL, 'metchoup.com', '2021-06-09 11:58:02', '2021-06-09 11:58:02'),
(1001, 'brother', NULL, 'metchoup.com', '2021-06-09 12:12:25', '2021-06-09 12:12:25'),
(1002, 'my friend', NULL, 'metchoup.com', '2021-06-09 12:12:25', '2021-06-09 12:12:25'),
(1101, 'red', NULL, 'metchoup.com', '2021-06-09 12:15:49', '2021-06-09 12:15:49'),
(1151, 'good morning', NULL, 'metchoup.com', '2021-06-09 12:21:04', '2021-06-09 12:21:04'),
(1152, 'How are you ?', NULL, 'metchoup.com', '2021-06-11 01:42:52', '2021-06-11 01:42:52'),
(1153, 'What are you saying', NULL, 'metchoup.com', '2021-06-11 01:42:52', '2021-06-11 01:42:52'),
(1154, 'i\'m good', NULL, 'metchoup.com', '2021-06-11 01:45:47', '2021-06-11 01:45:47'),
(1155, 'and you?', NULL, 'metchoup.com', '2021-06-11 01:45:47', '2021-06-11 01:45:47'),
(1156, 'i\'m not good', NULL, 'metchoup.com', '2021-06-11 01:46:46', '2021-06-11 01:46:46'),
(1157, 'learn me the language', NULL, 'metchoup.com', '2021-06-11 01:46:46', '2021-06-11 01:46:46'),
(1158, 'i don\'t know how to speak well', NULL, 'metchoup.com', '2021-06-11 01:47:48', '2021-06-11 01:47:48'),
(1159, 'i\'m fine', NULL, 'metchoup.com', '2021-06-11 01:47:48', '2021-06-11 01:47:48'),
(1160, 'i\'m fine', NULL, 'metchoup.com', '2021-06-11 01:50:33', '2021-06-11 01:50:33'),
(1161, 'it\'s hard', NULL, 'metchoup.com', '2021-06-11 01:50:33', '2021-06-11 01:50:33'),
(1162, 'it\'s easy', NULL, 'metchoup.com', '2021-06-11 01:51:28', '2021-06-11 01:51:28'),
(1163, 'it\'s finish', NULL, 'metchoup.com', '2021-06-11 01:51:28', '2021-06-11 01:51:28'),
(1164, 'it is not finish', NULL, 'metchoup.com', '2021-06-11 01:54:29', '2021-06-11 01:54:29'),
(1165, 'it is acidic', NULL, 'metchoup.com', '2021-06-11 01:54:29', '2021-06-11 01:54:29'),
(1166, 'it is sweet', NULL, 'metchoup.com', '2021-06-11 01:56:27', '2021-06-11 01:56:27'),
(1167, 'it is hot', NULL, 'metchoup.com', '2021-06-11 01:56:27', '2021-06-11 01:56:27'),
(1168, 'it is cold ', NULL, 'metchoup.com', '2021-06-11 01:57:21', '2021-06-11 01:57:21'),
(1169, 'How old are you ?', NULL, 'metchoup.com', '2021-06-11 01:57:21', '2021-06-11 01:57:21'),
(1170, 'I\'m 40 years old', NULL, 'metchoup.com', '2021-06-11 02:00:04', '2021-06-11 02:00:04'),
(1171, 'I\'m 20 years old', NULL, 'metchoup.com', '2021-06-11 02:00:04', '2021-06-11 02:00:04'),
(1172, 'I am 21 year old', NULL, 'metchoup.com', '2021-06-11 02:01:26', '2021-06-11 02:01:26'),
(1173, 'I originate from/i\'m from', NULL, 'metchoup.com', '2021-06-11 02:01:26', '2021-06-11 02:01:26'),
(1174, 'what is your name', NULL, 'metchoup.com', '2021-06-11 02:02:19', '2021-06-11 02:02:19'),
(1175, 'my name is ', NULL, 'metchoup.com', '2021-06-11 02:02:19', '2021-06-11 02:02:19'),
(1176, 'how do we say that ? ', NULL, 'metchoup.com', '2021-06-11 02:05:15', '2021-06-11 02:05:15'),
(1177, 'don\'t say that anymore!', NULL, 'metchoup.com', '2021-06-11 02:05:15', '2021-06-11 02:05:15'),
(1178, 'much/too much', NULL, 'metchoup.com', '2021-06-11 02:06:10', '2021-06-11 02:06:10'),
(1179, 'litle', NULL, 'metchoup.com', '2021-06-11 02:06:10', '2021-06-11 02:06:10'),
(1180, 'Thanks, Goodmorning', NULL, 'metchoup.com', '2021-06-11 02:07:14', '2021-06-11 02:07:14'),
(1181, 'Hello', NULL, 'metchoup.com', '2021-06-11 02:07:14', '2021-06-11 02:07:14'),
(1182, 'Good evening', NULL, 'metchoup.com', '2021-06-11 02:08:44', '2021-06-11 02:08:44'),
(1183, 'success', NULL, 'metchoup.com', '2021-06-11 02:08:44', '2021-06-11 02:08:44'),
(1184, 'endurance', NULL, 'metchoup.com', '2021-06-11 02:10:21', '2021-06-11 02:10:21'),
(1185, 'blessings', NULL, 'metchoup.com', '2021-06-11 02:10:21', '2021-06-11 02:10:21'),
(1186, 'champion ', NULL, 'metchoup.com', '2021-06-11 02:11:15', '2021-06-11 02:11:15'),
(1187, 'prosperity', NULL, 'metchoup.com', '2021-06-11 02:11:15', '2021-06-11 02:11:15'),
(1188, 'Glory', NULL, 'metchoup.com', '2021-06-11 02:12:42', '2021-06-11 02:12:42'),
(1189, 'dominate', NULL, 'metchoup.com', '2021-06-11 02:12:42', '2021-06-11 02:12:42'),
(1190, 'Succeed', NULL, 'metchoup.com', '2021-06-11 02:13:43', '2021-06-11 02:13:43'),
(1191, 'I love you', NULL, 'metchoup.com', '2021-06-11 02:13:43', '2021-06-11 02:13:43'),
(1192, 'Monday      ', NULL, 'metchoup.com', '2021-06-11 02:15:24', '2021-06-11 02:15:24'),
(1193, 'Tuesday', NULL, 'metchoup.com', '2021-06-11 02:15:24', '2021-06-11 02:15:24'),
(1194, 'Wednesday', NULL, 'metchoup.com', '2021-06-11 02:16:48', '2021-06-11 02:16:48'),
(1195, 'Thursday', NULL, 'metchoup.com', '2021-06-11 02:16:48', '2021-06-11 02:16:48'),
(1196, 'Friday', NULL, 'metchoup.com', '2021-06-11 02:19:50', '2021-06-11 02:19:50'),
(1197, 'Saturday   ', NULL, 'metchoup.com', '2021-06-11 02:19:50', '2021-06-11 02:19:50'),
(1198, 'Sunday        ', NULL, 'metchoup.com', '2021-06-11 02:22:27', '2021-06-11 02:22:27'),
(1199, 'Good morning', NULL, 'metchoup.com', '2021-06-11 02:22:27', '2021-06-11 02:22:27'),
(1200, 'Good morning', NULL, 'metchoup.com', '2021-06-11 02:24:50', '2021-06-11 02:24:50'),
(1201, 'yesterday', NULL, 'metchoup.com', '2021-06-11 02:24:50', '2021-06-11 02:24:50'),
(1202, 'the day before', NULL, 'metchoup.com', '2021-06-11 02:26:31', '2021-06-11 02:26:31'),
(1203, 'tomorrow', NULL, 'metchoup.com', '2021-06-11 02:26:31', '2021-06-11 02:26:31'),
(1204, 'After tomorrow', NULL, 'metchoup.com', '2021-06-11 02:27:42', '2021-06-11 02:27:42'),
(1205, 'Morning', NULL, 'metchoup.com', '2021-06-11 02:27:42', '2021-06-11 02:27:42'),
(1206, 'Midday', NULL, 'metchoup.com', '2021-06-11 02:28:50', '2021-06-11 02:28:50'),
(1207, 'Evening', NULL, 'metchoup.com', '2021-06-11 02:28:50', '2021-06-11 02:28:50'),
(1208, 'Night', NULL, 'metchoup.com', '2021-06-11 02:29:56', '2021-06-11 02:29:56'),
(1209, 'Day', NULL, 'metchoup.com', '2021-06-11 02:29:56', '2021-06-11 02:29:56'),
(1210, 'Week', NULL, 'metchoup.com', '2021-06-11 02:31:04', '2021-06-11 02:31:04'),
(1211, 'Month', NULL, 'metchoup.com', '2021-06-11 02:31:04', '2021-06-11 02:31:04'),
(1212, 'Year ', NULL, 'metchoup.com', '2021-06-11 02:32:27', '2021-06-11 02:32:27'),
(1213, 'Hour', NULL, 'metchoup.com', '2021-06-11 02:32:27', '2021-06-11 02:32:27'),
(1214, 'Yesterday', NULL, 'metchoup.com', '2021-06-11 02:36:21', '2021-06-11 02:36:21'),
(1215, 'Today ', NULL, 'metchoup.com', '2021-06-11 02:36:21', '2021-06-11 02:36:21'),
(1216, 'tomorrow', NULL, 'metchoup.com', '2021-06-11 02:37:13', '2021-06-11 02:37:13'),
(1217, 'January', NULL, 'metchoup.com', '2021-06-11 02:37:13', '2021-06-11 02:37:13'),
(1218, 'February', NULL, 'metchoup.com', '2021-06-11 02:38:55', '2021-06-11 02:38:55'),
(1219, 'March', NULL, 'metchoup.com', '2021-06-11 02:38:55', '2021-06-11 02:38:55'),
(1220, 'April', NULL, 'metchoup.com', '2021-06-11 02:39:46', '2021-06-11 02:39:46'),
(1221, 'May', NULL, 'metchoup.com', '2021-06-11 02:39:46', '2021-06-11 02:39:46'),
(1222, 'June', NULL, 'metchoup.com', '2021-06-11 02:41:24', '2021-06-11 02:41:24'),
(1223, 'July ', NULL, 'metchoup.com', '2021-06-11 02:41:24', '2021-06-11 02:41:24'),
(1224, 'August ', NULL, 'metchoup.com', '2021-06-11 02:42:50', '2021-06-11 02:42:50'),
(1225, 'September ', NULL, 'metchoup.com', '2021-06-11 02:42:50', '2021-06-11 02:42:50'),
(1226, 'October', NULL, 'metchoup.com', '2021-06-11 02:44:06', '2021-06-11 02:44:06'),
(1227, 'November', NULL, 'metchoup.com', '2021-06-11 02:44:06', '2021-06-11 02:44:06'),
(1228, 'December', NULL, 'metchoup.com', '2021-06-11 02:45:07', '2021-06-11 02:45:07');

-- --------------------------------------------------------

--
-- Structure de la table `fang`
--

CREATE TABLE `fang` (
  `id` int(11) NOT NULL,
  `expression` varchar(255) NOT NULL,
  `expression_audio` varchar(255) DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `date_ajout` datetime NOT NULL,
  `date_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fang`
--

INSERT INTO `fang` (`id`, `expression`, `expression_audio`, `source`, `date_ajout`, `date_update`) VALUES
(0, '', NULL, '', '2021-06-15 09:20:09', '2021-06-15 09:20:09'),
(1, 'fo', NULL, 'metchoup.com', '2021-06-09 12:03:45', '2021-06-09 12:03:45'),
(2, 'béin', NULL, 'metchoup.com', '2021-06-09 12:03:45', '2021-06-09 12:03:45'),
(3, 'lâ', NULL, 'metchoup.com', '2021-06-09 12:05:09', '2021-06-09 12:05:09'),
(4, 'nii', NULL, 'metchoup.com', '2021-06-09 12:05:09', '2021-06-09 12:05:09'),
(5, 'tan', NULL, 'metchoup.com', '2021-06-09 12:05:52', '2021-06-09 12:05:52'),
(6, 'samane', NULL, 'metchoup.com', '2021-06-09 12:05:52', '2021-06-09 12:05:52'),
(7, 'zambwa', NULL, 'metchoup.com', '2021-06-09 12:06:43', '2021-06-09 12:06:43'),
(8, 'môme', NULL, 'metchoup.com', '2021-06-09 12:06:43', '2021-06-09 12:06:43'),
(9, 'ébû', NULL, 'metchoup.com', '2021-06-09 12:07:26', '2021-06-09 12:07:26'),
(10, 'awôm', NULL, 'metchoup.com', '2021-06-09 12:07:26', '2021-06-09 12:07:26'),
(1151, 'Mbôlo', NULL, 'metchoup.com', '2021-06-09 12:21:39', '2021-06-09 12:21:39'),
(1180, 'Mbèmbè kidi', NULL, 'metchoup.com', '2021-06-15 09:20:09', '2021-06-15 09:20:09'),
(1191, 'ma dzing wa', NULL, 'metchoup.com', '2021-06-15 09:26:14', '2021-06-15 09:26:14');

-- --------------------------------------------------------

--
-- Structure de la table `french`
--

CREATE TABLE `french` (
  `id` int(11) NOT NULL,
  `expression` varchar(255) NOT NULL,
  `expression_audio` varchar(255) DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `date_ajout` datetime NOT NULL,
  `date_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `french`
--

INSERT INTO `french` (`id`, `expression`, `expression_audio`, `source`, `date_ajout`, `date_update`) VALUES
(0, 'zéro', NULL, 'metchoup.com', '2021-06-09 11:44:09', '2021-06-09 11:44:09'),
(1, 'un', NULL, 'metchoup.com', '2021-06-09 11:44:09', '2021-06-09 11:44:09'),
(2, 'deux', NULL, 'metchoup.com', '2021-06-09 11:44:47', '2021-06-09 11:44:47'),
(3, 'trois', NULL, 'metchoup.com', '2021-06-09 11:44:47', '2021-06-09 11:44:47'),
(4, 'quatre', NULL, 'metchoup.com', '2021-06-09 11:45:52', '2021-06-09 11:45:52'),
(5, 'cinq', NULL, 'metchoup.com', '2021-06-09 11:45:52', '2021-06-09 11:45:52'),
(6, 'six', NULL, 'metchoup.com', '2021-06-09 11:47:27', '2021-06-09 11:47:27'),
(7, 'sept', NULL, 'metchoup.com', '2021-06-09 11:47:27', '2021-06-09 11:47:27'),
(8, 'huit', NULL, 'metchoup.com', '2021-06-09 11:51:16', '2021-06-09 11:51:16'),
(9, 'neuf', NULL, 'metchoup.com', '2021-06-09 11:51:16', '2021-06-09 11:51:16'),
(10, 'dix\r\n', NULL, 'metchoup.com', '2021-06-15 13:27:23', '2021-06-15 13:27:23'),
(1001, 'frère', NULL, 'metchoup.com', '2021-06-09 12:11:03', '2021-06-09 12:11:03'),
(1002, 'mon ami', NULL, 'metchoup.com', '2021-06-09 12:11:03', '2021-06-09 12:11:03'),
(1101, 'rouge', NULL, 'metchoup.com', '2021-06-09 12:15:15', '2021-06-09 12:15:15'),
(1151, 'bonjour', NULL, 'metchoup.com', '2021-06-09 12:20:18', '2021-06-09 12:20:18'),
(1152, 'Comment ça va ?', NULL, 'metchoup.com', '2021-06-10 23:30:40', '2021-06-10 23:30:40'),
(1153, 'Que dis-tu ?', NULL, 'metchoup.com', '2021-06-10 23:31:24', '2021-06-10 23:31:24'),
(1154, 'ça va bien', NULL, 'metchoup.com', '2021-06-10 23:31:25', '2021-06-10 23:31:25'),
(1155, 'Et toi?', NULL, 'metchoup.com', '2021-06-10 23:32:42', '2021-06-10 23:32:42'),
(1156, 'ça ne va pas', NULL, 'metchoup.com', '2021-06-10 23:32:42', '2021-06-10 23:32:42'),
(1157, 'apprends moi la langue', NULL, 'metchoup.com', '2021-06-10 23:33:45', '2021-06-10 23:33:45'),
(1158, 'je ne sais pas bien parler', NULL, 'metchoup.com', '2021-06-10 23:33:45', '2021-06-10 23:33:45'),
(1159, 'Moi je vais bien', NULL, 'metchoup.com', '2021-06-10 23:34:50', '2021-06-10 23:34:50'),
(1160, 'je vais bien ', NULL, 'metchoup.com', '2021-06-10 23:34:50', '2021-06-10 23:34:50'),
(1161, 'c\'est difficile ', NULL, 'metchoup.com', '2021-06-10 23:36:26', '2021-06-10 23:36:26'),
(1162, 'c\'est facile ', NULL, 'metchoup.com', '2021-06-10 23:36:26', '2021-06-10 23:36:26'),
(1163, 'C\'est fini', NULL, 'metchoup.com', '2021-06-10 23:39:16', '2021-06-10 23:39:16'),
(1164, 'Ce n\'est pas fini', NULL, 'metchoup.com', '2021-06-10 23:39:16', '2021-06-10 23:39:16'),
(1165, 'C\'est acide', NULL, 'metchoup.com', '2021-06-10 23:40:32', '2021-06-10 23:40:32'),
(1166, 'C\'est sucré', NULL, 'metchoup.com', '2021-06-10 23:40:32', '2021-06-10 23:40:32'),
(1167, 'C\'est froid', NULL, 'metchoup.com', '2021-06-10 23:42:45', '2021-06-10 23:42:45'),
(1168, 'C\'est chaud', NULL, 'metchoup.com', '2021-06-10 23:42:45', '2021-06-10 23:42:45'),
(1169, 'Tu as quel âge ? ', NULL, 'metchoup.com', '2021-06-10 23:44:07', '2021-06-10 23:44:07'),
(1170, 'J\'ai 40ans ', NULL, 'metchoup.com', '2021-06-10 23:44:07', '2021-06-10 23:44:07'),
(1171, 'J\'ai 20ans ', NULL, 'metchoup.com', '2021-06-10 23:52:47', '2021-06-10 23:52:47'),
(1172, 'j\'ai 21 ans ', NULL, 'metchoup.com', '2021-06-10 23:52:47', '2021-06-10 23:52:47'),
(1173, 'je suis originaire de', NULL, 'metchoup.com', '2021-06-10 23:53:31', '2021-06-10 23:53:31'),
(1174, 'comment t\'appelle tu? ', NULL, 'metchoup.com', '2021-06-10 23:53:31', '2021-06-10 23:53:31'),
(1175, 'Moi je m\'appelle', NULL, 'metchoup.com', '2021-06-10 23:54:45', '2021-06-10 23:54:45'),
(1176, 'comment dit-on cela', NULL, 'metchoup.com', '2021-06-10 23:54:45', '2021-06-10 23:54:45'),
(1177, 'ne dis plus ca!', NULL, 'metchoup.com', '2021-06-11 00:00:06', '2021-06-11 00:00:06'),
(1178, 'Beaucoup /trop', NULL, 'metchoup.com', '2021-06-11 00:00:06', '2021-06-11 00:00:06'),
(1179, 'peu', NULL, 'metchoup.com', '2021-06-11 00:01:07', '2021-06-11 00:01:07'),
(1180, 'merci, bonjour', NULL, 'metchoup.com', '2021-06-11 00:01:07', '2021-06-11 00:01:07'),
(1181, 'Salut', NULL, 'metchoup.com', '2021-06-11 00:02:08', '2021-06-11 00:02:08'),
(1182, 'bonsoir', NULL, 'metchoup.com', '2021-06-11 00:02:08', '2021-06-11 00:02:08'),
(1183, 'victoire', NULL, 'metchoup.com', '2021-06-11 00:04:12', '2021-06-11 00:04:12'),
(1184, 'endurance', NULL, 'metchoup.com', '2021-06-11 00:04:12', '2021-06-11 00:04:12'),
(1185, 'bénédictions', NULL, 'metchoup.com', '2021-06-11 00:05:13', '2021-06-11 00:05:13'),
(1186, 'champion', NULL, 'metchoup.com', '2021-06-11 00:05:13', '2021-06-11 00:05:13'),
(1187, 'prospérité', NULL, 'metchoup.com', '2021-06-11 00:06:49', '2021-06-11 00:06:49'),
(1188, 'Gloire', NULL, 'metchoup.com', '2021-06-11 00:06:49', '2021-06-11 00:06:49'),
(1189, 'Dominer', NULL, 'metchoup.com', '2021-06-11 00:07:40', '2021-06-11 00:07:40'),
(1190, 'Réussir', NULL, 'metchoup.com', '2021-06-11 00:07:40', '2021-06-11 00:07:40'),
(1191, 'je t\'aime', NULL, 'metchoup.com', '2021-06-11 00:08:54', '2021-06-11 00:08:54'),
(1192, 'lundi', NULL, 'metchoup.com', '2021-06-11 00:08:54', '2021-06-11 00:08:54'),
(1193, 'mardi', NULL, 'metchoup.com', '2021-06-11 00:10:03', '2021-06-11 00:10:03'),
(1194, 'mercredi', NULL, 'metchoup.com', '2021-06-11 00:10:03', '2021-06-11 00:10:03'),
(1195, 'jeudi', NULL, 'metchoup.com', '2021-06-11 00:11:10', '2021-06-11 00:11:10'),
(1196, 'vendredi', NULL, 'metchoup.com', '2021-06-11 00:11:10', '2021-06-11 00:11:10'),
(1197, 'samedi', NULL, 'metchoup.com', '2021-06-11 00:12:10', '2021-06-11 00:12:10'),
(1198, 'dimanche', NULL, 'metchoup.com', '2021-06-11 00:12:10', '2021-06-11 00:12:10'),
(1199, '\"Bonjour (au réveil) : \r\nRéponse : \"', NULL, 'metchoup.com', '2021-06-11 00:13:15', '2021-06-11 00:13:15'),
(1200, 'Bonjour (à plusieurs personnes) ', NULL, 'metchoup.com', '2021-06-11 00:13:15', '2021-06-11 00:13:15'),
(1201, 'hier', NULL, 'metchoup.com', '2021-06-11 01:23:30', '2021-06-11 01:23:30'),
(1202, 'avant-hier', NULL, 'metchoup.com', '2021-06-11 01:23:30', '2021-06-11 01:23:30'),
(1203, 'Demain', NULL, 'metchoup.com', '2021-06-11 01:24:38', '2021-06-11 01:24:38'),
(1204, 'Après demain', NULL, 'metchoup.com\r\n', '2021-06-11 01:24:38', '2021-06-11 01:24:38'),
(1205, 'Matin', NULL, 'metchoup.com', '2021-06-11 01:25:40', '2021-06-11 01:25:40'),
(1206, 'Midi', NULL, 'metchoup.com', '2021-06-11 01:25:40', '2021-06-11 01:25:40'),
(1207, 'Soir', NULL, 'metchoup.com', '2021-06-11 01:26:37', '2021-06-11 01:26:37'),
(1208, 'Nuit', NULL, 'metchoup.com', '2021-06-11 01:26:37', '2021-06-11 01:26:37'),
(1209, 'Jour', NULL, 'metchoup.com', '2021-06-11 01:27:44', '2021-06-11 01:27:44'),
(1210, 'Semaine', NULL, 'metchoup.com', '2021-06-11 01:27:44', '2021-06-11 01:27:44'),
(1211, 'Mois', NULL, 'metchoup.com', '2021-06-11 01:28:34', '2021-06-11 01:28:34'),
(1212, 'Année', NULL, 'metchoup.com', '2021-06-11 01:28:34', '2021-06-11 01:28:34'),
(1213, 'Heure', NULL, 'metchoup.com', '2021-06-11 01:30:34', '2021-06-11 01:30:34'),
(1214, 'Hier', NULL, 'metchoup.com', '2021-06-11 01:30:34', '2021-06-11 01:30:34'),
(1215, 'Aujourd’hui', NULL, 'metchoup.com', '2021-06-11 01:34:32', '2021-06-11 01:34:32'),
(1216, 'Demain', NULL, 'metchoup.com', '2021-06-11 01:34:32', '2021-06-11 01:34:32'),
(1217, 'Janvier', NULL, 'metchoup.com', '2021-06-11 01:35:44', '2021-06-11 01:35:44'),
(1218, 'Février', NULL, 'metchoup.com', '2021-06-11 01:35:44', '2021-06-11 01:35:44'),
(1219, 'Mars', NULL, 'metchoup.com', '2021-06-11 01:36:52', '2021-06-11 01:36:52'),
(1220, 'Avril', NULL, 'metchoup.com', '2021-06-11 01:36:52', '2021-06-11 01:36:52'),
(1221, 'Mai', NULL, 'metchoup.com', '2021-06-11 01:38:38', '2021-06-11 01:38:38'),
(1222, 'Juin', NULL, 'metchoup.com', '2021-06-11 01:38:38', '2021-06-11 01:38:38'),
(1223, 'Juillet	', NULL, 'metchoup.com', '2021-06-11 01:39:34', '2021-06-11 01:39:34'),
(1224, 'Aôut', NULL, 'metchoup.com', '2021-06-11 01:39:34', '2021-06-11 01:39:34'),
(1225, 'Septembre', NULL, 'metchoup.com', '2021-06-11 01:40:40', '2021-06-11 01:40:40'),
(1226, 'Octobre', NULL, 'metchoup.com', '2021-06-11 01:40:40', '2021-06-11 01:40:40'),
(1227, 'Novembre', NULL, 'metchoup.com', '2021-06-11 01:41:41', '2021-06-11 01:41:41'),
(1228, 'Décembre', NULL, 'metchoup.com', '2021-06-11 01:41:41', '2021-06-11 01:41:41');

-- --------------------------------------------------------

--
-- Structure de la table `kikongo`
--

CREATE TABLE `kikongo` (
  `id` int(11) NOT NULL,
  `expression` varchar(255) NOT NULL,
  `expression_audio` varchar(255) DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `date_ajout` datetime NOT NULL,
  `date_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `kikongo`
--

INSERT INTO `kikongo` (`id`, `expression`, `expression_audio`, `source`, `date_ajout`, `date_update`) VALUES
(0, 'nkatu', NULL, 'metchoup.com', '2021-06-09 11:31:20', '2021-06-09 11:31:20'),
(1, 'mosi', NULL, 'metchoup.com', '2021-06-09 11:31:20', '2021-06-09 11:31:20'),
(2, 'zole', NULL, 'metchoup.com', '2021-06-09 11:33:10', '2021-06-09 11:33:10'),
(3, 'Tatu', NULL, 'metchoup.com', '2021-06-09 11:33:10', '2021-06-09 11:33:10'),
(4, 'iya', NULL, 'metchoup.com', '2021-06-09 11:34:27', '2021-06-09 11:34:27'),
(5, 'Tanu', NULL, 'metchoup.com', '2021-06-09 11:34:27', '2021-06-09 11:34:27'),
(6, 'sambanu', NULL, 'metchoup.com', '2021-06-09 11:35:48', '2021-06-09 11:35:48'),
(7, 'Sambuadi', NULL, 'metchoup.com', '2021-06-09 11:35:48', '2021-06-09 11:35:48'),
(8, 'Naana', NULL, 'metchoup.com', '2021-06-09 11:37:17', '2021-06-09 11:37:17'),
(9, 'Ivua', NULL, 'metchoup.com', '2021-06-09 11:37:17', '2021-06-09 11:37:17'),
(10, 'Kumi', NULL, 'metchoup.com', '2021-06-09 11:38:01', '2021-06-09 11:38:01'),
(1151, 'Lumbu ki', NULL, 'metchoup.com', '2021-06-15 11:38:54', '2021-06-15 11:38:54'),
(1201, 'Mazono', NULL, 'metchoup.com', '2021-06-15 11:41:45', '2021-06-15 11:41:45'),
(1205, 'Padi (prononciation pari)', NULL, 'metchoup.com', '2021-06-15 09:53:41', '2021-06-15 09:53:41'),
(1206, 'Ntangu\'a mbata', NULL, 'metchoup.com', '2021-06-15 09:53:41', '2021-06-15 09:53:41'),
(1207, 'Nkôkila/Nkôkela', NULL, 'metchoup.com', '2021-06-15 09:54:49', '2021-06-15 09:54:49'),
(1208, 'Buisi, Mpîmpa', NULL, 'metchoup.com', '2021-06-15 09:54:49', '2021-06-15 09:54:49'),
(1209, 'Lumbu', NULL, 'metchoup.com', '2021-06-15 09:55:49', '2021-06-15 09:55:49'),
(1210, 'Lumîngu, Lunsâmu', NULL, 'metchoup.com', '2021-06-15 09:55:49', '2021-06-15 09:55:49'),
(1211, 'Ngônda', NULL, 'metchoup.com', '2021-06-15 09:56:41', '2021-06-15 09:56:41'),
(1212, ' Mvu, Mvula', NULL, 'metchoup.com', '2021-06-15 09:56:41', '2021-06-15 09:56:41'),
(1213, 'M\'kuka, Ntangu', NULL, 'metchoup.com', '2021-06-15 09:57:37', '2021-06-15 09:57:37'),
(1214, 'Mazôno', NULL, 'metchoup.com', '2021-06-15 09:57:37', '2021-06-15 09:57:37'),
(1215, 'Lumbu-tsî (prononci loumbou-tî)', NULL, 'metchoup.com', '2021-06-15 09:58:22', '2021-06-15 09:58:22'),
(1216, 'Mbazi', NULL, 'metchoup.com', '2021-06-15 09:58:22', '2021-06-15 09:58:22');

-- --------------------------------------------------------

--
-- Structure de la table `medumba`
--

CREATE TABLE `medumba` (
  `id` int(11) NOT NULL,
  `expression` varchar(255) NOT NULL,
  `expression_audio` varchar(255) DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `date_ajout` datetime NOT NULL,
  `date_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `medumba`
--

INSERT INTO `medumba` (`id`, `expression`, `expression_audio`, `source`, `date_ajout`, `date_update`) VALUES
(0, 'Bânban', NULL, '', '2021-08-26 21:37:31', '2021-08-26 21:37:31'),
(1, 'Ncù\'', NULL, '', '2021-08-26 21:39:30', '2021-08-26 21:39:30'),
(2, 'Baha', NULL, '', '2021-08-26 21:39:30', '2021-08-26 21:39:30'),
(3, 'Tad', NULL, '', '2021-08-26 21:40:48', '2021-08-26 21:40:48'),
(4, 'Kuà', NULL, '', '2021-08-26 21:40:48', '2021-08-26 21:40:48'),
(5, 'Tân', NULL, '', '2021-08-26 21:42:19', '2021-08-26 21:42:19'),
(6, '', NULL, '', '2021-08-26 21:42:19', '2021-08-26 21:42:19');

-- --------------------------------------------------------

--
-- Structure de la table `pulaar`
--

CREATE TABLE `pulaar` (
  `id` int(11) NOT NULL,
  `expression` varchar(255) NOT NULL,
  `expression_audio` varchar(255) DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `date_ajout` datetime NOT NULL,
  `date_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pulaar`
--

INSERT INTO `pulaar` (`id`, `expression`, `expression_audio`, `source`, `date_ajout`, `date_update`) VALUES
(1205, 'Subaka', NULL, 'metchoup.com', '2021-06-15 10:01:41', '2021-06-15 10:01:41'),
(1206, ' Beetewe', NULL, 'metchoup.com', '2021-06-15 10:01:41', '2021-06-15 10:01:41'),
(1207, ' Kiikii?e', NULL, 'metchoup.com', '2021-06-15 10:02:25', '2021-06-15 10:02:25'),
(1208, 'Jamma', NULL, 'metchoup.com', '2021-06-15 10:02:25', '2021-06-15 10:02:25'),
(1209, ' Ñalawma', NULL, 'metchoup.com', '2021-06-15 10:03:10', '2021-06-15 10:03:10'),
(1210, ' Yontere', NULL, 'metchoup.com', '2021-06-15 10:03:10', '2021-06-15 10:03:10'),
(1211, ' Lewru', NULL, 'metchoup.com', '2021-06-15 10:04:53', '2021-06-15 10:04:53'),
(1212, ' Hitaande', NULL, 'metchoup.com', '2021-06-15 10:04:53', '2021-06-15 10:04:53'),
(1213, ' Waktu', NULL, 'metchoup.com', '2021-06-15 10:13:42', '2021-06-15 10:13:42'),
(1214, ' Ha?ki', NULL, 'metchoup.com', '2021-06-15 10:13:42', '2021-06-15 10:13:42'),
(1215, 'Hannde', NULL, 'metchoup.com', '2021-06-15 10:14:48', '2021-06-15 10:14:48'),
(1216, 'Janngo', NULL, 'metchoup.com', '2021-06-15 10:14:48', '2021-06-15 10:14:48');

-- --------------------------------------------------------

--
-- Structure de la table `soninke`
--

CREATE TABLE `soninke` (
  `id` int(11) NOT NULL,
  `expression` varchar(255) NOT NULL,
  `expression_audio` varchar(255) DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `date_ajout` datetime NOT NULL,
  `date_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `soninke`
--

INSERT INTO `soninke` (`id`, `expression`, `expression_audio`, `source`, `date_ajout`, `date_update`) VALUES
(1183, 'Waale', NULL, 'metchoup.com', '2021-06-15 11:30:46', '2021-06-15 11:30:46'),
(1184, 'Munju', NULL, 'metchoup.com', '2021-06-15 11:30:46', '2021-06-15 11:30:46'),
(1185, 'Duwaawu', NULL, 'metchoup.com', '2021-06-15 11:32:43', '2021-06-15 11:32:43'),
(1186, 'Nanja', NULL, 'metchoup.com', '2021-06-15 11:32:43', '2021-06-15 11:32:43'),
(1187, 'Barake', NULL, 'metchoup.com', '2021-06-15 11:33:28', '2021-06-15 11:33:28'),
(1188, 'Maxajamuntaaxu', NULL, 'metchoup.com', '2021-06-15 11:33:28', '2021-06-15 11:33:28'),
(1189, 'Digindi', NULL, 'metchoup.com', '2021-06-15 11:35:10', '2021-06-15 11:35:10'),
(1190, 'Kati', NULL, 'metchoup.com', '2021-06-15 11:35:10', '2021-06-15 11:35:10');

-- --------------------------------------------------------

--
-- Structure de la table `suggestions`
--

CREATE TABLE `suggestions` (
  `id` int(11) NOT NULL,
  `langue_source` varchar(100) NOT NULL,
  `langue_traduite` varchar(100) NOT NULL,
  `expression_source` varchar(255) NOT NULL,
  `expression_traduite` varchar(255) NOT NULL,
  `date_ajout` datetime NOT NULL,
  `nom_audio` varchar(255) NOT NULL,
  `email_personne` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `suggestions`
--

INSERT INTO `suggestions` (`id`, `langue_source`, `langue_traduite`, `expression_source`, `expression_traduite`, `date_ajout`, `nom_audio`, `email_personne`) VALUES
(2, 'french', 'medumba', 'ma folie', 'onimrfnimfr', '2021-07-14 08:50:11', 'metchoup-french-medumbaPAPA FOREA', 'PAPA FOREA'),
(3, 'french', 'medumba', 'hier', 'race', '2021-07-14 08:52:30', 'metchoup-french-medumbayoparemy@gmail.com', 'yoparemy@gmail.com'),
(4, 'french', 'swahili', 'hier', 'race', '2021-07-14 08:54:44', '', 'PAPA FOREA'),
(5, 'french', 'swahili', 'gopro', 'race', '2021-07-14 08:55:12', '', 'yoparemy@gmail.com'),
(6, 'final source', 'swahili', 'gopro', 'p', '2021-07-14 08:55:46', 'metchoup-final source-swahiliLYPmetchoup_jingle.ogg', 'LYP'),
(7, 'final source', 'bassa', 'gopro', 'onimrfnimfr', '2021-07-14 08:57:36', 'metchoup-final source-bassaLYPmetchoup_jingle.ogg', 'LYP'),
(8, 'source', 'translation', 'express_origin', 'express_transla', '2021-08-13 20:22:51', '', 'metchoup'),
(9, 'd', 'd', 'd', 'd', '2021-08-24 01:39:57', '', 'd'),
(10, 'df', 'f', 'f', 'f', '2021-08-24 01:40:38', '', 'f'),
(11, 'df', 'e', 'e', 'e', '2021-08-24 01:43:50', '', 'e');

-- --------------------------------------------------------

--
-- Structure de la table `yemba`
--

CREATE TABLE `yemba` (
  `id` int(11) NOT NULL,
  `expression` varchar(255) NOT NULL,
  `expression_audio` varchar(255) DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `date_ajout` datetime NOT NULL,
  `date_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `yemba`
--

INSERT INTO `yemba` (`id`, `expression`, `expression_audio`, `source`, `date_ajout`, `date_update`) VALUES
(1152, 'A lockô ?', NULL, 'metchoup.com', '2021-06-15 10:43:33', '2021-06-15 10:43:33'),
(1154, 'A zêh pûp', NULL, 'metchoup.com', '2021-06-15 10:43:33', '2021-06-15 10:43:33');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bamoun`
--
ALTER TABLE `bamoun`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bassa`
--
ALTER TABLE `bassa`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bazou`
--
ALTER TABLE `bazou`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bete`
--
ALTER TABLE `bete`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `duala`
--
ALTER TABLE `duala`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `edo`
--
ALTER TABLE `edo`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `english`
--
ALTER TABLE `english`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fang`
--
ALTER TABLE `fang`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `french`
--
ALTER TABLE `french`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `kikongo`
--
ALTER TABLE `kikongo`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `medumba`
--
ALTER TABLE `medumba`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pulaar`
--
ALTER TABLE `pulaar`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `soninke`
--
ALTER TABLE `soninke`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `yemba`
--
ALTER TABLE `yemba`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bazou`
--
ALTER TABLE `bazou`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
