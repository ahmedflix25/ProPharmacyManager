-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2013 at 05:56 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `Username` varchar(16) NOT NULL,
  `Password` varchar(16) NOT NULL,
  `State` tinyint(5) unsigned NOT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `LastCheck` bigint(255) unsigned DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`Username`, `Password`, `State`, `Phone`, `LastCheck`) VALUES
('admin', 'admin', 2, '', 9858480008860545808),
('user', 'user', 1, '123456', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE IF NOT EXISTS `bills` (
  `ID` bigint(20) NOT NULL DEFAULT '0',
  `Name` varchar(100) DEFAULT NULL,
  `User` varchar(100) DEFAULT NULL,
  `Medic` text,
  `BillDate` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`ID`, `Name`, `User`, `Medic`, `BillDate`) VALUES
(1000010, 'ahmed', '3', 'Felix~150#1~15.5#Ahmed~15#', '10/10/2013 10:00:37 م'),
(1000011, 'felix', '3', '1~15.5#Ahmed~15#12~4#', '16/10/2013 05:39:15 م'),
(1000012, '120', '3', 'gta~50#', '18/10/2013 01:17:27 م'),
(1000013, '120', '3', 'gta~50#', '18/10/2013 01:17:30 م'),
(1000014, '120', '3', 'gta~50#', '18/10/2013 01:17:33 م'),
(1000015, '120', '3', 'gta~50#', '18/10/2013 01:17:39 م'),
(1000016, 'hjgf', '3', '1~15.5#', '01/11/2013 06:08:03 م'),
(1000017, 'محمد', 'admin', '1~15.5#Felix~150#Ahmed~15#gta~50#', '01/11/2013 06:09:02 م');

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE IF NOT EXISTS `configuration` (
  `ID` bigint(20) unsigned NOT NULL DEFAULT '1000000',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`ID`) VALUES
(1000017);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `Account` varchar(255) NOT NULL,
  `LoginDate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`Account`, `LoginDate`) VALUES
('admin', '30/09/2013 12:36:19 م'),
('3', '04/10/2013 08:30:13 م'),
('3', '04/10/2013 08:31:26 م'),
('3', '04/10/2013 08:32:25 م'),
('3', '04/10/2013 08:33:08 م'),
('3', '07/10/2013 11:50:26 ص'),
('3', '07/10/2013 11:52:58 ص'),
('3', '07/10/2013 11:55:03 ص'),
('3', '07/10/2013 12:22:58 م'),
('3', '07/10/2013 12:24:38 م'),
('3', '07/10/2013 12:28:37 م'),
('3', '07/10/2013 12:34:19 م'),
('3', '07/10/2013 12:35:16 م'),
('3', '07/10/2013 12:35:51 م'),
('3', '07/10/2013 12:46:02 م'),
('3', '07/10/2013 12:46:52 م'),
('3', '07/10/2013 12:47:10 م'),
('3', '07/10/2013 12:48:00 م'),
('3', '07/10/2013 12:48:42 م'),
('3', '07/10/2013 12:49:21 م'),
('3', '08/10/2013 12:03:23 م'),
('3', '08/10/2013 12:03:46 م'),
('3', '08/10/2013 12:15:49 م'),
('3', '08/10/2013 12:16:29 م'),
('3', '08/10/2013 12:24:25 م'),
('3', '08/10/2013 12:27:04 م'),
('3', '08/10/2013 12:32:31 م'),
('3', '08/10/2013 12:32:42 م'),
('3', '08/10/2013 12:34:47 م'),
('3', '08/10/2013 08:47:27 م'),
('3', '08/10/2013 08:48:01 م'),
('3', '08/10/2013 08:48:59 م'),
('3', '08/10/2013 08:54:34 م'),
('3', '08/10/2013 08:55:41 م'),
('3', '08/10/2013 08:55:52 م'),
('3', '08/10/2013 09:17:44 م'),
('3', '10/10/2013 07:57:28 م'),
('3', '10/10/2013 07:58:45 م'),
('3', '10/10/2013 07:59:12 م'),
('3', '10/10/2013 07:59:24 م'),
('3', '10/10/2013 07:59:52 م'),
('3', '10/10/2013 08:02:37 م'),
('3', '10/10/2013 08:03:37 م'),
('3', '10/10/2013 08:04:39 م'),
('3', '10/10/2013 09:05:38 م'),
('3', '10/10/2013 09:07:05 م'),
('3', '10/10/2013 09:11:03 م'),
('3', '10/10/2013 09:12:33 م'),
('3', '10/10/2013 09:15:30 م'),
('3', '10/10/2013 09:16:54 م'),
('3', '10/10/2013 09:20:19 م'),
('3', '10/10/2013 09:20:52 م'),
('3', '10/10/2013 09:24:14 م'),
('3', '10/10/2013 09:34:18 م'),
('3', '10/10/2013 09:35:55 م'),
('3', '10/10/2013 09:43:27 م'),
('3', '10/10/2013 09:48:24 م'),
('3', '10/10/2013 10:00:22 م'),
('3', '10/10/2013 10:02:42 م'),
('3', '10/10/2013 10:14:15 م'),
('3', '10/10/2013 10:15:59 م'),
('admin', '11/10/2013 01:20:44 م'),
('admin', '11/10/2013 01:48:40 م'),
('3', '12/10/2013 01:06:15 م'),
('admin', '12/10/2013 01:06:21 م'),
('admin', '12/10/2013 01:13:04 م'),
('admin', '12/10/2013 01:22:11 م'),
('admin', '12/10/2013 01:23:54 م'),
('admin', '12/10/2013 01:27:04 م'),
('admin', '12/10/2013 01:29:17 م'),
('admin', '12/10/2013 01:32:44 م'),
('3', '12/10/2013 01:59:02 م'),
('3', '12/10/2013 02:00:32 م'),
('3', '12/10/2013 02:01:34 م'),
('3', '12/10/2013 02:02:44 م'),
('3', '12/10/2013 02:16:36 م'),
('3', '12/10/2013 02:18:00 م'),
('3', '12/10/2013 02:23:49 م'),
('3', '12/10/2013 02:25:46 م'),
('3', '12/10/2013 02:26:13 م'),
('3', '12/10/2013 02:26:51 م'),
('3', '12/10/2013 02:27:33 م'),
('3', '12/10/2013 02:28:23 م'),
('3', '12/10/2013 02:29:12 م'),
('3', '12/10/2013 02:31:18 م'),
('3', '12/10/2013 02:31:53 م'),
('3', '12/10/2013 02:34:59 م'),
('3', '12/10/2013 02:37:04 م'),
('3', '12/10/2013 02:37:34 م'),
('3', '12/10/2013 02:39:06 م'),
('3', '12/10/2013 02:43:05 م'),
('3', '12/10/2013 02:47:15 م'),
('admin', '12/10/2013 02:47:20 م'),
('admin', '12/10/2013 02:59:07 م'),
('admin', '12/10/2013 03:00:47 م'),
('3', '12/10/2013 03:02:07 م'),
('admin', '12/10/2013 03:02:12 م'),
('admin', '12/10/2013 03:02:32 م'),
('admin', '12/10/2013 03:03:45 م'),
('admin', '12/10/2013 03:04:11 م'),
('admin', '12/10/2013 03:05:19 م'),
('3', '12/10/2013 03:09:25 م'),
('admin', '12/10/2013 03:09:30 م'),
('admin', '12/10/2013 03:09:47 م'),
('3', '12/10/2013 03:11:34 م'),
('admin', '12/10/2013 03:11:42 م'),
('admin', '12/10/2013 03:12:34 م'),
('3', '12/10/2013 03:14:34 م'),
('3', '15/10/2013 08:49:48 م'),
('3', '15/10/2013 08:52:19 م'),
('admin', '15/10/2013 08:52:41 م'),
('3', '16/10/2013 11:58:56 ص'),
('admin', '16/10/2013 12:37:36 م'),
('admin', '16/10/2013 12:38:21 م'),
('admin', '16/10/2013 12:40:08 م'),
('admin', '16/10/2013 12:41:07 م'),
('admin', '16/10/2013 12:42:12 م'),
('admin', '16/10/2013 12:42:37 م'),
('admin', '16/10/2013 12:42:59 م'),
('3', '16/10/2013 12:48:25 م'),
('admin', '16/10/2013 12:48:32 م'),
('admin', '16/10/2013 12:50:21 م'),
('admin', '16/10/2013 12:50:48 م'),
('admin', '16/10/2013 12:51:12 م'),
('admin', '16/10/2013 12:51:42 م'),
('admin', '16/10/2013 12:53:15 م'),
('admin', '16/10/2013 12:54:03 م'),
('admin', '16/10/2013 12:57:22 م'),
('admin', '16/10/2013 01:00:18 م'),
('admin', '16/10/2013 01:00:45 م'),
('admin', '16/10/2013 01:03:02 م'),
('3', '16/10/2013 05:39:03 م'),
('admin', '16/10/2013 05:39:44 م'),
('admin', '16/10/2013 05:40:53 م'),
('admin', '16/10/2013 05:41:38 م'),
('admin', '16/10/2013 05:47:19 م'),
('admin', '16/10/2013 05:49:26 م'),
('admin', '16/10/2013 05:50:02 م'),
('admin', '16/10/2013 05:50:44 م'),
('admin', '16/10/2013 06:02:12 م'),
('admin', '16/10/2013 06:45:23 م'),
('admin', '16/10/2013 06:46:10 م'),
('admin', '16/10/2013 06:46:53 م'),
('3', '16/10/2013 06:52:26 م'),
('admin', '16/10/2013 06:52:33 م'),
('admin', '16/10/2013 06:56:19 م'),
('admin', '16/10/2013 06:58:12 م'),
('admin', '16/10/2013 06:59:11 م'),
('admin', '16/10/2013 07:00:19 م'),
('admin', '16/10/2013 08:42:48 م'),
('admin', '16/10/2013 08:53:23 م'),
('admin', '18/10/2013 01:09:35 م'),
('3', '18/10/2013 01:15:58 م'),
('3', '18/10/2013 01:17:55 م'),
('3', '18/10/2013 01:18:42 م'),
('admin', '20/10/2013 05:31:52 م'),
('admin', '20/10/2013 05:32:31 م'),
('admin', '20/10/2013 06:01:42 م'),
('admin', '20/10/2013 06:05:01 م'),
('admin', '20/10/2013 06:05:53 م'),
('admin', '20/10/2013 06:06:20 م'),
('admin', '20/10/2013 06:06:50 م'),
('admin', '20/10/2013 06:07:27 م'),
('admin', '20/10/2013 06:07:52 م'),
('admin', '20/10/2013 06:09:34 م'),
('admin', '20/10/2013 06:09:59 م'),
('admin', '20/10/2013 06:10:49 م'),
('admin', '20/10/2013 06:11:37 م'),
('admin', '20/10/2013 06:12:12 م'),
('admin', '20/10/2013 06:16:18 م'),
('admin', '20/10/2013 06:20:14 م'),
('admin', '20/10/2013 06:36:54 م'),
('admin', '01/11/2013 05:57:34 م'),
('admin', '01/11/2013 06:00:51 م'),
('admin', '01/11/2013 06:05:50 م'),
('3', '01/11/2013 06:07:52 م'),
('admin', '01/11/2013 06:08:20 م'),
('admin', '01/11/2013 06:13:13 م'),
('admin', '01/11/2013 06:16:23 م'),
('admin', '01/11/2013 06:19:12 م'),
('admin', '01/11/2013 06:20:02 م'),
('admin', '01/11/2013 06:21:43 م'),
('admin', '01/11/2013 06:22:36 م'),
('user', '01/11/2013 06:23:52 م'),
('admin', '01/11/2013 06:23:58 م'),
('admin', '01/11/2013 06:24:19 م'),
('admin', '01/11/2013 06:34:15 م'),
('admin', '01/11/2013 06:36:24 م'),
('user', '01/11/2013 06:39:58 م'),
('admin', '01/11/2013 06:41:37 م'),
('user', '01/11/2013 06:53:07 م');

-- --------------------------------------------------------

--
-- Table structure for table `medics`
--

CREATE TABLE IF NOT EXISTS `medics` (
  `Name` varchar(50) NOT NULL,
  `Substance` varchar(50) NOT NULL,
  `Expiry` varchar(10) NOT NULL DEFAULT '0',
  `Type` tinyint(5) unsigned NOT NULL DEFAULT '0',
  `Note` varchar(500) DEFAULT NULL,
  `Count` bigint(18) NOT NULL DEFAULT '0',
  `Price` varchar(18) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `medics`
--

INSERT INTO `medics` (`Name`, `Substance`, `Expiry`, `Type`, `Note`, `Count`, `Price`) VALUES
('1', 'dfdh', '26/02/2012', 1, 'dfg fdg df gfd gfd gdf g dfgdf  لبابلا تبياليب يب ايبا لت', 3, '15.5'),
('12', 'ghfgh', '05/09/2013', 2, 'فيه شريط ناقص من العلبه الاولى', 9, '4'),
('Ahmed', '', '15/05/2014', 2, 'ليس دواء', 0, '15'),
('asprin', 'ghfg', '10/09/2013', 1, 'fgdf df gdf', 0, '21.75'),
('Felix', '', '02/12/2012', 3, NULL, 6, '150'),
('fsdgf', 'gfd', '26/02/2014', 1, 'مفيش', 12, '123'),
('gta', '', '18/10/2013', 1, '', 3, '50'),
('mags', '543', '09/09/2013', 2, '', 21, '56.75'),
('mm', 'mhbnf', '18/06/2013', 1, 'فى الرف رقم 8', 12, '10.5'),
('mohamed', 'ghgf', '30/08/2015', 4, 'fghgfh', 3, '30.25'),
('yy', '', '11/06/2014', 4, '', 5, '3');

-- --------------------------------------------------------

--
-- Table structure for table `medlog`
--

CREATE TABLE IF NOT EXISTS `medlog` (
  `Name` varchar(50) NOT NULL,
  `SellDate` varchar(20) NOT NULL DEFAULT '0',
  `Total` decimal(15,0) NOT NULL DEFAULT '0',
  `Cost` varchar(15) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `medlog`
--

INSERT INTO `medlog` (`Name`, `SellDate`, `Total`, `Cost`) VALUES
('1', '18/09/2013 05:02:49 ', 1, '18.25'),
('Ahmed', '18/09/2013 05:28:07 ', 0, '15'),
('Ahmed', '18/09/2013 05:45:26 ', 0, '23'),
('Ahmed', '18/09/2013 05:46:42 ', 0, '15.5'),
('mohamed', '27/09/2013 02:57:09 ', 0, '30.5'),
('1', '28/09/2013 09:53:05 ', 0, '15'),
('mohamed', '28/09/2013 09:53:16 ', 0, '30'),
('1', '30/09/2013 11:32:54 ', 0, '15'),
('Felix', '30/09/2013 11:33:35 ', 0, '150'),
('gta', '18/10/2013 01:10:38 ', 0, '50'),
('1', '01/11/2013 06:01:07 ', 0, '15.5'),
('1', '01/11/2013 06:01:11 ', 0, '15.5'),
('1', '01/11/2013 06:01:13 ', 0, '15.5'),
('1', '01/11/2013 06:01:14 ', 0, '15.5'),
('1', '01/11/2013 06:01:16 ', 0, '15.5'),
('1', '01/11/2013 06:09:02 ', 0, '15.5'),
('Felix', '01/11/2013 06:09:12 ', 0, '150'),
('Ahmed', '01/11/2013 06:09:42 ', 0, '15'),
('gta', '01/11/2013 06:10:45 ', 0, '50');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
