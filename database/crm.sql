-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 27, 2024 at 12:53 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `prequest`
--

DROP TABLE IF EXISTS `prequest`;
CREATE TABLE IF NOT EXISTS `prequest` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` varchar(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `wdd` varchar(255) DEFAULT NULL,
  `cms` varchar(255) DEFAULT NULL,
  `seo` varchar(255) DEFAULT NULL,
  `smo` varchar(255) DEFAULT NULL,
  `swd` varchar(255) DEFAULT NULL,
  `dwd` varchar(255) DEFAULT NULL,
  `fwd` varchar(255) DEFAULT NULL,
  `dr` varchar(255) DEFAULT NULL,
  `whs` varchar(255) DEFAULT NULL,
  `wm` varchar(255) DEFAULT NULL,
  `ed` varchar(255) DEFAULT NULL,
  `wta` varchar(255) DEFAULT NULL,
  `opi` varchar(255) DEFAULT NULL,
  `ld` varchar(255) DEFAULT NULL,
  `da` varchar(255) DEFAULT NULL,
  `osc` varchar(255) DEFAULT NULL,
  `nd` varchar(255) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `query` longtext,
  `posting_date` date DEFAULT NULL,
  `remark` longtext,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prequest`
--

INSERT INTO `prequest` (`id`, `name`, `email`, `contactno`, `company`, `wdd`, `cms`, `seo`, `smo`, `swd`, `dwd`, `fwd`, `dr`, `whs`, `wm`, `ed`, `wta`, `opi`, `ld`, `da`, `osc`, `nd`, `others`, `query`, `posting_date`, `remark`, `status`) VALUES
(1, 'Anuj Kumar', 'phpgurukulteam@gmail.com', '1234567890', 'Test', 'Website Design & Development', '', '', '', '', 'Dynamic Website Design', '', '', 'Web Hosting Services', '', 'Ecommerce Development', 'Walk Through Animation', '', '', '', '', '', '', 'This is for testing', '2021-04-22', 'This is for test', NULL),
(2, 'Jarir', 'jarircse16@gmail.com', '1615406040', 'Dream71', 'Website Design & Development', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Website Design & Development', '2024-01-03', 'Ok', NULL),
(3, 'Jarir', 'jarircse16@gmail.com', '1615406040', 'Dream71', 'Website Design & Development', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Kaz Kor', '2024-01-15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE IF NOT EXISTS `ticket` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ticket_id` varchar(11) DEFAULT NULL,
  `email_id` varchar(300) DEFAULT NULL,
  `subject` varchar(300) DEFAULT NULL,
  `task_type` varchar(300) DEFAULT NULL,
  `prioprity` varchar(300) DEFAULT NULL,
  `ticket` longtext,
  `attachment` varchar(300) DEFAULT NULL,
  `status` varchar(300) DEFAULT NULL,
  `admin_remark` longtext,
  `posting_date` date DEFAULT NULL,
  `admin_remark_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `ticket_id`, `email_id`, `subject`, `task_type`, `prioprity`, `ticket`, `attachment`, `status`, `admin_remark`, `posting_date`, `admin_remark_date`) VALUES
(12, '5', 'phpgurukulteam@gmail.com', 'Test Ticket', 'billing', 'important', 'This ticket for testing purpose.', '', 'closed', 'Ticket resolved.  Solution provided', '2021-04-22', '2021-04-21 18:30:00'),
(13, '6', 'jarircse16@gmail.com', 'Website Design & Development', 'billing', 'important', 'Website Design & Development', NULL, 'closed', 'Done', '2024-01-03', '2024-01-03 09:30:25'),
(14, '7', 'jarircse16@gmail.com', 'Game Development', 'billing', 'important', 'Taka de', NULL, 'closed', 'disi', '2024-01-09', '2024-01-09 08:51:52'),
(15, '8', 'jarircse16@gmail.com', 'Website Design & Development', 'billing', 'important', 'Tk de taratari', NULL, 'closed', 'Disi', '2024-01-15', '2024-01-15 21:15:15');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alt_email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `alt_email`, `password`, `mobile`, `gender`, `address`, `status`, `posting_date`) VALUES
(1, 'Anuj Kumar', 'phpgurukulteam@gmail.com', 'test123@asgggfag.com', 'Demo@123', '1234567890', 'm', 'New Delhi India 110001', NULL, '2021-04-22 12:25:19'),
(2, 'Jarir', 'jarircse16@gmail.com', NULL, 'xD123@xD', '1615406040', 'm', NULL, NULL, '2024-01-03 09:28:15');

-- --------------------------------------------------------

--
-- Table structure for table `usercheck`
--

DROP TABLE IF EXISTS `usercheck`;
CREATE TABLE IF NOT EXISTS `usercheck` (
  `id` int NOT NULL AUTO_INCREMENT,
  `logindate` varchar(255) DEFAULT '',
  `logintime` varchar(255) DEFAULT '',
  `user_id` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT '',
  `ip` varbinary(16) DEFAULT NULL,
  `mac` varbinary(16) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usercheck`
--

INSERT INTO `usercheck` (`id`, `logindate`, `logintime`, `user_id`, `username`, `email`, `ip`, `mac`, `city`, `country`) VALUES
(1, '2021/04/22', '05:59:18pm', 1, 'Anuj Kumar', 'phpgurukulteam@gmail.com', 0x3a3a31, 0x31322d46342d38442d31322d39392d39, '', ''),
(2, '2021/04/22', '10:00:15pm', 1, 'Anuj Kumar', 'phpgurukulteam@gmail.com', 0x3a3a31, 0x31322d46342d38442d31322d39392d39, '', ''),
(3, '2024/01/03', '02:58:22pm', 2, 'Jarir', 'jarircse16@gmail.com', 0x3132372e302e302e31, 0x31432d33392d34372d32412d41442d30, '', ''),
(4, '2024/01/09', '01:48:51pm', 2, 'Jarir', 'jarircse16@gmail.com', 0x3132372e302e302e31, 0x31432d33392d34372d32412d41442d30, '', ''),
(5, '2024/01/09', '02:18:10pm', 2, 'Jarir', 'jarircse16@gmail.com', 0x3132372e302e302e31, 0x31432d33392d34372d32412d41442d30, '', ''),
(6, '2024/01/09', '02:23:20pm', 2, 'Jarir', 'jarircse16@gmail.com', 0x3132372e302e302e31, 0x31432d33392d34372d32412d41442d30, '', ''),
(7, '2024/01/09', '09:41:41pm', 2, 'Jarir', 'jarircse16@gmail.com', 0x3132372e302e302e31, 0x31432d33392d34372d32412d41442d30, '', ''),
(8, '2024/01/15', '02:41:21am', 2, 'Jarir', 'jarircse16@gmail.com', 0x3132372e302e302e31, 0x31432d33392d34372d32412d41442d30, '', ''),
(9, '2024/01/15', '02:43:33am', 2, 'Jarir', 'jarircse16@gmail.com', 0x3132372e302e302e31, 0x31432d33392d34372d32412d41442d30, '', ''),
(10, '2024/01/19', '11:27:37pm', 2, 'Jarir', 'jarircse16@gmail.com', 0x3132372e302e302e31, 0x31432d33392d34372d32412d41442d30, '', ''),
(11, '2024/01/19', '11:32:41pm', 2, 'Jarir', 'jarircse16@gmail.com', 0x3132372e302e302e31, 0x31432d33392d34372d32412d41442d30, '', ''),
(12, '2024/01/19', '11:48:30pm', 2, 'Jarir', 'jarircse16@gmail.com', 0x3132372e302e302e31, 0x31432d33392d34372d32412d41442d30, '', ''),
(13, '2024/01/19', '11:49:01pm', 2, 'Jarir', 'jarircse16@gmail.com', 0x3132372e302e302e31, 0x31432d33392d34372d32412d41442d30, '', ''),
(14, '2024/01/19', '11:50:13pm', 2, 'Jarir', 'jarircse16@gmail.com', 0x3132372e302e302e31, 0x31432d33392d34372d32412d41442d30, '', ''),
(15, '2024/01/19', '11:51:49pm', 2, 'Jarir', 'jarircse16@gmail.com', 0x3132372e302e302e31, 0x31432d33392d34372d32412d41442d30, '', ''),
(16, '2024/01/19', '11:53:17pm', 2, 'Jarir', 'jarircse16@gmail.com', 0x3132372e302e302e31, 0x31432d33392d34372d32412d41442d30, '', ''),
(17, '2024/01/26', '04:46:17am', 2, 'Jarir', 'jarircse16@gmail.com', 0x3132372e302e302e31, 0x31432d33392d34372d32412d41442d30, '', ''),
(18, '2024/01/26', '04:46:55am', 2, 'Jarir', 'jarircse16@gmail.com', 0x3132372e302e302e31, 0x31432d33392d34372d32412d41442d30, '', ''),
(19, '2024/01/26', '04:47:10am', 2, 'Jarir', 'jarircse16@gmail.com', 0x3132372e302e302e31, 0x31432d33392d34372d32412d41442d30, '', ''),
(20, '2024/01/26', '04:50:40am', 2, 'Jarir', 'jarircse16@gmail.com', 0x3132372e302e302e31, 0x31432d33392d34372d32412d41442d30, '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
