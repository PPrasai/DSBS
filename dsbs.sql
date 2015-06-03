-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2015 at 12:37 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dsbs`
--
CREATE DATABASE IF NOT EXISTS `dsbs` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dsbs`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bill`
--

CREATE TABLE IF NOT EXISTS `tbl_bill` (
  `b_id` varchar(10) NOT NULL,
  `u_id` varchar(10) DEFAULT NULL,
  `b_date` datetime DEFAULT NULL,
  `credit_flag` tinyint(1) NOT NULL,
  PRIMARY KEY (`b_id`),
  UNIQUE KEY `b_id` (`b_id`),
  KEY `u_id` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bill`
--

INSERT INTO `tbl_bill` (`b_id`, `u_id`, `b_date`, `credit_flag`) VALUES
('1', 'U1', '2015-02-04 20:27:53', 1),
('10', 'U1', '2015-02-05 14:56:52', 1),
('100', 'U1', '2015-06-03 15:59:25', 0),
('101', 'U1', '2015-06-03 15:59:54', 0),
('102', 'U1', '2015-06-03 16:00:54', 0),
('103', 'U1', '2015-06-03 16:01:41', 0),
('104', 'U1', '2015-06-03 16:02:10', 0),
('105', 'U1', '2015-06-03 16:02:24', 0),
('106', 'U1', '2015-06-03 16:03:07', 0),
('107', 'U1', '2015-06-03 16:04:06', 0),
('108', 'U1', '2015-06-03 16:04:36', 0),
('109', 'U1', '2015-06-03 16:05:53', 0),
('11', 'U1', '2015-02-05 14:57:16', 1),
('110', 'U1', '2015-06-03 16:08:16', 0),
('111', 'U1', '2015-06-03 16:08:54', 0),
('112', 'U1', '2015-06-03 16:09:17', 0),
('113', 'U1', '2015-06-03 16:09:48', 0),
('114', 'U1', '2015-06-03 16:11:09', 0),
('115', 'U1', '2015-06-03 16:13:05', 0),
('116', 'U1', '2015-06-03 16:13:52', 0),
('117', 'U1', '2015-06-03 16:14:49', 0),
('118', 'U1', '2015-06-03 16:15:04', 0),
('119', 'U1', '2015-06-03 16:15:41', 0),
('12', 'U1', '2015-02-05 14:58:36', 1),
('120', 'U1', '2015-06-03 16:16:01', 0),
('121', 'U1', '2015-06-03 16:16:51', 0),
('122', 'U1', '2015-06-03 16:17:57', 0),
('123', 'U1', '2015-06-03 16:18:39', 0),
('124', 'U1', '2015-06-03 16:18:58', 0),
('125', 'U1', '2015-06-03 16:19:26', 0),
('126', 'U1', '2015-06-03 16:19:49', 0),
('127', 'U1', '2015-06-03 16:20:24', 0),
('128', 'U1', '2015-06-03 16:21:11', 0),
('13', 'U1', '2015-02-05 15:00:00', 1),
('14', 'U1', '2015-02-08 22:39:30', 1),
('15', 'U1', '2015-02-09 10:13:28', 1),
('16', 'U1', '2015-03-08 10:57:59', 0),
('17', 'U1', '2015-03-08 11:10:08', 1),
('18', 'U1', '2015-03-10 21:18:37', 0),
('19', 'U1', '2015-03-13 09:27:51', 0),
('2', 'U1', '2015-02-04 20:34:58', 0),
('20', 'U1', '2015-03-13 09:28:35', 0),
('21', 'U1', '2015-03-13 09:28:41', 0),
('22', 'U1', '2015-03-13 09:28:42', 0),
('23', 'U1', '2015-03-13 09:30:52', 0),
('24', 'U1', '2015-03-13 09:31:08', 0),
('25', 'U1', '2015-03-13 09:31:09', 0),
('26', 'U1', '2015-03-13 09:32:18', 1),
('27', 'U1', '2015-03-13 09:32:32', 1),
('28', 'U1', '2015-03-13 09:32:33', 1),
('29', 'U1', '2015-03-13 09:36:42', 0),
('3', 'U1', '2015-02-04 20:57:00', 1),
('30', 'U1', '2015-03-13 09:36:55', 0),
('31', 'U1', '2015-03-13 09:36:56', 0),
('32', 'U1', '2015-03-13 09:43:50', 0),
('33', 'U1', '2015-03-13 09:44:13', 0),
('34', 'U1', '2015-03-13 09:44:14', 0),
('35', 'U1', '2015-03-13 09:45:15', 0),
('36', 'U1', '2015-03-13 09:54:45', 0),
('37', 'U1', '2015-03-13 09:55:04', 0),
('38', 'U1', '2015-03-13 09:55:04', 0),
('39', 'U1', '2015-03-13 10:24:04', 0),
('4', 'U1', '2015-02-05 13:47:55', 1),
('40', 'U1', '2015-03-13 10:24:23', 0),
('41', 'U1', '2015-03-13 10:24:24', 0),
('42', 'U1', '2015-03-13 10:33:48', 0),
('43', 'U1', '2015-03-13 10:45:18', 0),
('44', 'U1', '2015-03-13 10:45:50', 0),
('45', 'U1', '2015-03-13 10:46:11', 0),
('46', 'U1', '2015-03-13 10:46:38', 0),
('47', 'U1', '2015-03-13 10:46:55', 0),
('48', 'U1', '2015-03-13 10:46:56', 0),
('49', 'U1', '2015-03-13 10:47:33', 0),
('5', 'U1', '2015-02-05 13:48:36', 1),
('50', 'U1', '2015-03-13 10:47:43', 0),
('51', 'U1', '2015-03-13 10:47:45', 0),
('52', 'U1', '2015-03-13 10:48:31', 0),
('53', 'U1', '2015-03-13 10:48:35', 0),
('54', 'U1', '2015-03-13 10:48:40', 0),
('55', 'U1', '2015-03-13 10:49:25', 0),
('56', 'U1', '2015-03-13 10:49:30', 0),
('57', 'U1', '2015-03-13 10:49:32', 0),
('58', 'U1', '2015-03-13 10:50:34', 0),
('59', 'U1', '2015-03-13 10:51:30', 0),
('6', 'U1', '2015-02-05 13:49:36', 1),
('60', 'U1', '2015-03-13 10:52:21', 0),
('61', 'U1', '2015-03-13 10:52:35', 0),
('62', 'U1', '2015-03-13 10:52:36', 0),
('63', 'U1', '2015-03-13 10:53:51', 0),
('64', 'U1', '2015-03-13 10:54:03', 0),
('65', 'U1', '2015-03-13 10:54:04', 0),
('66', 'U1', '2015-03-13 10:58:54', 0),
('67', 'U1', '2015-03-13 10:59:06', 0),
('68', 'U1', '2015-03-13 10:59:07', 0),
('69', 'U1', '2015-03-13 13:21:57', 0),
('7', 'U1', '2015-02-05 13:52:10', 1),
('70', 'U1', '2015-03-13 13:22:15', 0),
('71', 'U1', '2015-03-13 13:22:16', 0),
('72', 'U1', '2015-03-13 13:49:01', 0),
('73', 'U1', '2015-03-13 13:49:25', 0),
('74', 'U1', '2015-06-03 00:38:47', 0),
('75', 'U1', '2015-06-03 13:34:55', 0),
('76', 'U1', '2015-06-03 13:36:23', 0),
('77', 'U1', '2015-06-03 14:14:48', 0),
('78', 'U1', '2015-06-03 14:16:02', 0),
('79', 'U1', '2015-06-03 14:17:13', 0),
('8', 'U1', '2015-02-05 13:52:58', 1),
('80', 'U1', '2015-06-03 14:19:08', 0),
('81', 'U1', '2015-06-03 14:20:31', 0),
('82', 'U1', '2015-06-03 14:20:50', 0),
('83', 'U1', '2015-06-03 14:21:17', 0),
('84', 'U1', '2015-06-03 14:24:58', 0),
('85', 'U1', '2015-06-03 14:25:29', 0),
('86', 'U1', '2015-06-03 14:30:47', 0),
('87', 'U1', '2015-06-03 14:53:42', 0),
('88', 'U1', '2015-06-03 14:54:17', 0),
('89', 'U1', '2015-06-03 15:01:16', 0),
('9', 'U1', '2015-02-05 14:56:34', 1),
('90', 'U1', '2015-06-03 15:01:37', 0),
('91', 'U1', '2015-06-03 15:02:39', 0),
('92', 'U1', '2015-06-03 15:17:32', 0),
('93', 'U1', '2015-06-03 15:18:07', 0),
('94', 'U1', '2015-06-03 15:18:29', 0),
('95', 'U1', '2015-06-03 15:22:16', 0),
('96', 'U1', '2015-06-03 15:54:20', 0),
('97', 'U1', '2015-06-03 15:57:48', 0),
('98', 'U1', '2015-06-03 15:58:27', 0),
('99', 'U1', '2015-06-03 15:58:56', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bill_amount`
--

CREATE TABLE IF NOT EXISTS `tbl_bill_amount` (
  `b_id` varchar(10) DEFAULT NULL,
  `b_amt` decimal(8,2) DEFAULT NULL,
  KEY `b_id` (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bill_amount`
--

INSERT INTO `tbl_bill_amount` (`b_id`, `b_amt`) VALUES
('1', '110.00'),
('2', '180.00'),
('3', '20.00'),
('4', '100.00'),
('5', '10.00'),
('6', '100.00'),
('7', '100.00'),
('9', '20.00'),
('11', '20.00'),
('12', '500.00'),
('13', '40.00'),
('14', '100.00'),
('15', '50.00'),
('16', '20.00'),
('17', '50.00'),
('18', '100.00'),
('19', '50.00'),
('20', '40.00'),
('21', '40.00'),
('22', '40.00'),
('23', '40.00'),
('24', '40.00'),
('25', '40.00'),
('26', '50.00'),
('27', '50.00'),
('28', '50.00'),
('29', '40.00'),
('30', '40.00'),
('31', '40.00'),
('32', '110.00'),
('33', '110.00'),
('34', '110.00'),
('35', '120.00'),
('36', '100.00'),
('37', '100.00'),
('38', '100.00'),
('39', '100.00'),
('40', '100.00'),
('41', '100.00'),
('42', '90.00'),
('43', '80.00'),
('44', '120.00'),
('45', '30.00'),
('46', '10.00'),
('47', '10.00'),
('48', '10.00'),
('49', '60.00'),
('50', '60.00'),
('51', '60.00'),
('52', '80.00'),
('53', '80.00'),
('54', '80.00'),
('55', '90.00'),
('56', '90.00'),
('57', '90.00'),
('58', '60.00'),
('59', '60.00'),
('60', '40.00'),
('61', '40.00'),
('62', '40.00'),
('63', '40.00'),
('64', '40.00'),
('65', '40.00'),
('66', '60.00'),
('67', '60.00'),
('68', '60.00'),
('69', '20.00'),
('70', '20.00'),
('71', '20.00'),
('72', '150.00'),
('73', '20.00'),
('74', '40.50'),
('75', '5000.00'),
('76', '10000.00'),
('77', '30.50'),
('78', '30.50'),
('79', '30.50'),
('80', '30.50'),
('81', '30.00'),
('82', '30.00'),
('83', '30.00'),
('84', '30.00'),
('85', '30.50'),
('86', '30.50'),
('87', '30.50'),
('88', '30.50'),
('89', '30.50'),
('90', '30.00'),
('91', '30.00'),
('92', '30.50'),
('93', '30.50'),
('94', '30.00'),
('95', '30.50'),
('96', '30.50'),
('97', '30.50'),
('98', '30.00'),
('99', '30.50'),
('100', '30.50'),
('101', '30.50'),
('102', '30.00'),
('103', '30.00'),
('104', '30.50'),
('105', '30.00'),
('106', '30.50'),
('107', '30.50'),
('108', '30.50'),
('109', '90.50'),
('110', '120.50'),
('111', '60.50'),
('112', '120.50'),
('113', '30.50'),
('114', '30.50'),
('115', '30.50'),
('116', '200.50'),
('117', '80.00'),
('118', '60.50'),
('119', '30.50'),
('120', '30.00'),
('121', '5110.00'),
('122', '5140.50'),
('123', '30.50'),
('124', '30.50'),
('125', '200.50'),
('126', '30.50'),
('127', '5160.00'),
('128', '5250.50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bill_detail`
--

CREATE TABLE IF NOT EXISTS `tbl_bill_detail` (
  `b_id` varchar(10) DEFAULT NULL,
  `p_id` varchar(10) DEFAULT NULL,
  `qty` decimal(8,2) DEFAULT NULL,
  KEY `b_id` (`b_id`),
  KEY `p_id` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bill_detail`
--

INSERT INTO `tbl_bill_detail` (`b_id`, `p_id`, `qty`) VALUES
('1', 'CAT1P10', '2.00'),
('1', 'CAT1P1', '4.00'),
('1', 'CAT1P5', '5.00'),
('2', 'CAT1P10', '2.00'),
('2', 'CAT1P1', '4.00'),
('2', 'CAT1P5', '5.00'),
('2', 'CAT1P12', '7.00'),
('3', 'CAT1P11', '2.00'),
('4', 'CAT1P10', '10.00'),
('5', 'CAT1P2', '1.00'),
('6', 'CAT1P1', '10.00'),
('7', 'CAT1P10', '10.00'),
('9', 'CAT1P10', '2.00'),
('11', 'CAT1P12', '2.00'),
('12', 'CAT1P2', '10.00'),
('12', 'CAT1P11', '20.00'),
('12', 'CAT1P1', '10.00'),
('12', 'CAT1P10', '10.00'),
('13', 'CAT1P11', '2.00'),
('13', 'CAT1P10', '2.00'),
('14', 'CAT1P11', '10.00'),
('15', 'CAT1P2', '5.00'),
('16', 'CAT1P11', '2.00'),
('17', 'CAT1P11', '5.00'),
('18', 'CAT3P23', '10.00'),
('19', 'CAT1P1', '5.00'),
('20', 'CAT1P10', '4.00'),
('21', 'CAT1P10', '4.00'),
('22', 'CAT1P10', '4.00'),
('23', 'CAT1P14', '4.00'),
('24', 'CAT1P14', '4.00'),
('25', 'CAT1P14', '4.00'),
('26', 'CAT1P12', '5.00'),
('27', 'CAT1P12', '5.00'),
('28', 'CAT1P12', '5.00'),
('29', 'CAT1P14', '4.00'),
('30', 'CAT1P14', '4.00'),
('31', 'CAT1P14', '4.00'),
('32', 'CAT1P12', '11.00'),
('33', 'CAT1P12', '11.00'),
('34', 'CAT1P12', '11.00'),
('35', 'CAT1P14', '12.00'),
('36', 'CAT1P12', '10.00'),
('37', 'CAT1P12', '10.00'),
('38', 'CAT1P12', '10.00'),
('39', 'CAT1P11', '10.00'),
('40', 'CAT1P11', '10.00'),
('41', 'CAT1P11', '10.00'),
('42', 'CAT1P11', '9.00'),
('43', 'CAT1P12', '8.00'),
('44', 'CAT1P10', '12.00'),
('45', 'CAT1P12', '3.00'),
('46', 'CAT1P10', '1.00'),
('47', 'CAT1P10', '1.00'),
('48', 'CAT1P10', '1.00'),
('49', 'CAT1P11', '2.00'),
('49', 'CAT1P15', '2.00'),
('49', 'CAT1P1', '2.00'),
('50', 'CAT1P11', '2.00'),
('50', 'CAT1P15', '2.00'),
('50', 'CAT1P1', '2.00'),
('51', 'CAT1P11', '2.00'),
('51', 'CAT1P15', '2.00'),
('51', 'CAT1P1', '2.00'),
('52', 'CAT1P11', '2.00'),
('52', 'CAT1P10', '2.00'),
('52', 'CAT1P14', '2.00'),
('52', 'CAT1P16', '2.00'),
('53', 'CAT1P11', '2.00'),
('53', 'CAT1P10', '2.00'),
('53', 'CAT1P14', '2.00'),
('53', 'CAT1P16', '2.00'),
('54', 'CAT1P11', '2.00'),
('54', 'CAT1P10', '2.00'),
('54', 'CAT1P14', '2.00'),
('54', 'CAT1P16', '2.00'),
('55', 'CAT1P11', '3.00'),
('55', 'CAT1P13', '3.00'),
('55', 'CAT1P3', '3.00'),
('56', 'CAT1P11', '3.00'),
('56', 'CAT1P13', '3.00'),
('56', 'CAT1P3', '3.00'),
('57', 'CAT1P11', '3.00'),
('57', 'CAT1P13', '3.00'),
('57', 'CAT1P3', '3.00'),
('58', 'CAT1P10', '2.00'),
('58', 'CAT1P13', '2.00'),
('58', 'CAT1P15', '2.00'),
('59', 'CAT1P10', '2.00'),
('59', 'CAT1P12', '2.00'),
('59', 'CAT1P1', '2.00'),
('60', 'CAT1P1', '2.00'),
('60', 'CAT1P10', '2.00'),
('61', 'CAT1P1', '2.00'),
('61', 'CAT1P10', '2.00'),
('62', 'CAT1P1', '2.00'),
('62', 'CAT1P10', '2.00'),
('63', 'CAT1P13', '2.00'),
('63', 'CAT1P15', '2.00'),
('64', 'CAT1P13', '2.00'),
('64', 'CAT1P15', '2.00'),
('65', 'CAT1P13', '2.00'),
('65', 'CAT1P15', '2.00'),
('66', 'CAT1P1', '2.00'),
('66', 'CAT1P10', '2.00'),
('66', 'CAT1P12', '2.00'),
('67', 'CAT1P1', '2.00'),
('67', 'CAT1P10', '2.00'),
('67', 'CAT1P12', '2.00'),
('68', 'CAT1P1', '2.00'),
('68', 'CAT1P10', '2.00'),
('68', 'CAT1P12', '2.00'),
('69', 'CAT1P11', '2.00'),
('70', 'CAT1P11', '2.00'),
('71', 'CAT1P11', '2.00'),
('72', 'CAT1P1', '3.00'),
('72', 'CAT1P15', '3.00'),
('72', 'CAT1P10', '3.00'),
('72', 'CAT1P9', '3.00'),
('72', 'CAT3P23', '3.00'),
('73', 'CAT1P11', '2.00'),
('74', 'CAT1P1', '1.00'),
('75', 'CAT5P25', '1.00'),
('76', 'CAT5P25', '2.00'),
('77', 'CAT1P1', '1.00'),
('78', 'CAT1P1', '1.00'),
('79', 'CAT1P1', '1.00'),
('80', 'CAT1P1', '1.00'),
('81', 'CAT1P11', '1.00'),
('82', 'CAT1P11', '1.00'),
('83', 'CAT1P11', '1.00'),
('84', 'CAT1P10', '1.00'),
('85', 'CAT1P1', '1.00'),
('86', 'CAT1P1', '1.00'),
('87', 'CAT1P1', '1.00'),
('88', 'CAT1P1', '1.00'),
('89', 'CAT1P1', '1.00'),
('90', 'CAT1P10', '1.00'),
('91', 'CAT1P10', '1.00'),
('92', 'CAT1P1', '1.00'),
('93', 'CAT1P1', '1.00'),
('94', 'CAT1P10', '1.00'),
('95', 'CAT1P1', '1.00'),
('96', 'CAT1P1', '1.00'),
('97', 'CAT1P1', '1.00'),
('98', 'CAT1P10', '1.00'),
('99', 'CAT1P1', '1.00'),
('100', 'CAT1P1', '1.00'),
('101', 'CAT1P1', '1.00'),
('102', 'CAT1P12', '1.00'),
('103', 'CAT1P10', '1.00'),
('104', 'CAT1P1', '1.00'),
('105', 'CAT1P10', '1.00'),
('106', 'CAT1P1', '1.00'),
('107', 'CAT1P1', '1.00'),
('108', 'CAT1P1', '1.00'),
('109', 'CAT1P10', '1.00'),
('109', 'CAT1P1', '1.00'),
('109', 'CAT1P12', '1.00'),
('110', 'CAT1P1', '1.00'),
('110', 'CAT1P10', '1.00'),
('110', 'CAT1P11', '1.00'),
('110', 'CAT1P12', '1.00'),
('111', 'CAT1P1', '1.00'),
('111', 'CAT1P10', '1.00'),
('112', 'CAT1P10', '1.00'),
('112', 'CAT1P1', '1.00'),
('112', 'CAT1P11', '1.00'),
('112', 'CAT1P12', '1.00'),
('113', 'CAT1P1', '1.00'),
('114', 'CAT1P1', '1.00'),
('115', 'CAT1P1', '1.00'),
('116', 'CAT1P1', '1.00'),
('116', 'CAT1P10', '1.00'),
('116', 'CAT1P11', '1.00'),
('116', 'CAT1P12', '1.00'),
('116', 'CAT3P23', '1.00'),
('117', 'CAT3P23', '1.00'),
('118', 'CAT1P1', '1.00'),
('118', 'CAT1P11', '1.00'),
('119', 'CAT1P1', '1.00'),
('120', 'CAT1P12', '1.00'),
('121', 'CAT1P10', '1.00'),
('121', 'CAT3P23', '1.00'),
('121', 'CAT5P25', '1.00'),
('122', 'CAT1P1', '1.00'),
('122', 'CAT3P23', '1.00'),
('122', 'CAT1P11', '1.00'),
('122', 'CAT5P25', '1.00'),
('123', 'CAT1P1', '1.00'),
('124', 'CAT1P1', '1.00'),
('125', 'CAT1P1', '1.00'),
('125', 'CAT1P10', '1.00'),
('125', 'CAT1P11', '1.00'),
('125', 'CAT1P12', '1.00'),
('125', 'CAT3P23', '1.00'),
('126', 'CAT1P1', '1.00'),
('127', 'CAT1P10', '1.00'),
('127', 'CAT1P11', '1.00'),
('127', 'CAT1P12', '1.00'),
('127', 'CAT1P15', '1.00'),
('127', 'CAT5P25', '1.00'),
('128', 'CAT1P1', '1.00'),
('128', 'CAT1P10', '1.00'),
('128', 'CAT1P11', '1.00'),
('128', 'CAT1P12', '1.00'),
('128', 'CAT1P15', '1.00'),
('128', 'CAT1P7', '1.00'),
('128', 'CAT2P24', '1.00'),
('128', 'CAT5P25', '1.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_controllers`
--

CREATE TABLE IF NOT EXISTS `tbl_controllers` (
  `controller_id` varchar(10) NOT NULL DEFAULT '',
  `controller_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`controller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_creditors_advanced`
--

CREATE TABLE IF NOT EXISTS `tbl_creditors_advanced` (
  `creditor_id` varchar(10) DEFAULT NULL,
  `b_id` varchar(10) DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `credit_status` tinyint(1) DEFAULT NULL,
  KEY `b_id` (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_creditors_advanced`
--

INSERT INTO `tbl_creditors_advanced` (`creditor_id`, `b_id`, `due_date`, `credit_status`) VALUES
('2', '1', '2015-02-25 00:00:00', 0),
('1', '3', '2015-02-18 00:00:00', 0),
('1', '4', '2015-02-18 00:00:00', 0),
('? string: ', '5', '2015-02-18 00:00:00', 0),
('2', '6', '2015-02-04 00:00:00', 0),
('2', '7', '2015-02-13 00:00:00', 0),
('2', '9', '2015-02-12 00:00:00', 0),
('2', '11', '2015-02-19 00:00:00', 0),
('2', '12', '2015-02-17 00:00:00', 0),
('? string: ', '13', '2015-02-17 00:00:00', 0),
('2', '14', '2015-02-19 00:00:00', 0),
('1', '15', '2015-02-18 00:00:00', 0),
('1', '17', '2015-03-26 00:00:00', 0),
('2', '26', '2015-03-20 00:00:00', 0),
('2', '27', '2015-03-20 00:00:00', 0),
('2', '28', '2015-03-20 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_creditors_basic`
--

CREATE TABLE IF NOT EXISTS `tbl_creditors_basic` (
  `creditor_id` varchar(10) NOT NULL,
  `creditor_name` varchar(100) DEFAULT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(12) NOT NULL,
  PRIMARY KEY (`creditor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_creditors_basic`
--

INSERT INTO `tbl_creditors_basic` (`creditor_id`, `creditor_name`, `address`, `email`, `contact`) VALUES
('1', 'ABC Consultancy', 'Sankhamul', 'abc@consult.com', '9841xxxxxx'),
('2', 'Parikshit', 'Garamani', 'letters.prasai@gmail.com', '9860570861');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module`
--

CREATE TABLE IF NOT EXISTS `tbl_module` (
  `module_id` varchar(10) NOT NULL,
  `module_name` varchar(50) DEFAULT NULL,
  `module_author` varchar(100) DEFAULT NULL,
  `module_desc` varchar(800) DEFAULT NULL,
  `module_installed_flag` tinyint(1) DEFAULT NULL,
  `module_src` varchar(200) NOT NULL,
  `module_route` varchar(200) NOT NULL,
  PRIMARY KEY (`module_id`),
  UNIQUE KEY `module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_module`
--

INSERT INTO `tbl_module` (`module_id`, `module_name`, `module_author`, `module_desc`, `module_installed_flag`, `module_src`, `module_route`) VALUES
('M01', 'Module', 'Parikshit Pr.', 'Modules that manages dynamic module loading', 1, './frontend/modules/module/controllers/module.controller.js', './frontend/modules/module/route/module.routes.js'),
('M02', 'Inventory', 'Parikhit P.', 'This module manages all the inventory stuff', 1, './frontend/modules/inventory/controllers/inventory.controller.js', './frontend/modules/inventory/route/inventory.routes.js'),
('M03', 'Billing', 'Parikhit P.', 'This module does all the billing stuff.', 1, './frontend/modules/billing/controllers/billing.controller.js', './frontend/modules/billing/route/billing.routes.js'),
('M04', 'User', 'Parikhit P.', '', 1, './frontend/modules/user/controllers/user.controller.js', './frontend/modules/user/route/user.routes.js');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission`
--

CREATE TABLE IF NOT EXISTS `tbl_permission` (
  `u_id` varchar(10) DEFAULT NULL,
  `controller_id` varchar(10) DEFAULT NULL,
  `permission` tinyint(1) DEFAULT NULL,
  KEY `u_id` (`u_id`),
  KEY `controller_id` (`controller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE IF NOT EXISTS `tbl_product` (
  `p_id` varchar(10) NOT NULL,
  `c_id` varchar(10) DEFAULT NULL,
  `p_name` varchar(100) DEFAULT NULL,
  `p_count` decimal(8,0) DEFAULT NULL,
  `p_selling_price` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  UNIQUE KEY `p_id` (`p_id`),
  KEY `c_id` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `c_id`, `p_name`, `p_count`, `p_selling_price`) VALUES
('CAT1P1', 'CAT1', 'Lays Big', '14', '40.50'),
('CAT1P10', 'CAT1', 'Lays Japanese', '10', '40.00'),
('CAT1P11', 'CAT1', 'Lays Korean', '51', '40.00'),
('CAT1P12', 'CAT1', 'Lays Nepali', '85', '40.00'),
('CAT1P13', 'CAT1', 'test', '83', '12.00'),
('CAT1P14', 'CAT1', 'test', '58', '12.00'),
('CAT1P15', 'CAT1', 'Aalu', '45', '80.00'),
('CAT1P16', 'CAT1', 'Aalu 2', '94', '12.00'),
('CAT1P17', 'CAT1', 'Aalu 3', '100', '12.00'),
('CAT1P18', 'CAT1', 'aaa', '105', '15.00'),
('CAT1P19', 'CAT1', 'aab', '150', '25.00'),
('CAT1P2', 'CAT1', 'Kurkure Big', '115', '40.00'),
('CAT1P20', 'CAT1', 'aa', '100', '12.00'),
('CAT1P21', 'CAT1', 'aaaaa', '100', '15.00'),
('CAT1P22', 'CAT1', 'aaaa', '100', '15.00'),
('CAT1P3', 'CAT1', 'Kurmure', '91', '20.00'),
('CAT1P4', 'CAT1', 'Lays Onion Big', '100', '40.00'),
('CAT1P5', 'CAT1', 'Lays American Cheese Big', '100', '40.00'),
('CAT1P6', 'CAT1', 'Lays Indian', '100', '40.00'),
('CAT1P7', 'CAT1', 'Lays Chinese', '99', '40.00'),
('CAT1P8', 'CAT1', 'Lays German', '100', '40.00'),
('CAT1P9', 'CAT1', 'Lays Hungarian', '97', '40.00'),
('CAT2P24', 'CAT2', 'Bread', '99', '30.00'),
('CAT3P23', 'CAT3', 'Dahi', '32', '80.00'),
('CAT5P25', 'CAT5', 'Red Lable', '3', '5000.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_category`
--

CREATE TABLE IF NOT EXISTS `tbl_product_category` (
  `c_id` varchar(10) NOT NULL,
  `c_name` varchar(40) DEFAULT NULL,
  `c_date_added` datetime DEFAULT NULL,
  `c_date_edited` datetime DEFAULT NULL,
  `u_id` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  UNIQUE KEY `c_id` (`c_id`),
  KEY `u_id` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_category`
--

INSERT INTO `tbl_product_category` (`c_id`, `c_name`, `c_date_added`, `c_date_edited`, `u_id`) VALUES
('CAT1', 'Junk Food', '2014-12-23 18:45:55', NULL, 'U1'),
('CAT2', 'Bakery', '2015-03-10 16:27:27', NULL, 'U1'),
('CAT3', 'Dairy', '2015-03-10 16:31:01', NULL, 'U1'),
('CAT4', 'Candy', '2015-03-11 17:58:58', NULL, 'U1'),
('CAT5', 'Liquor', '2015-06-03 00:00:00', NULL, 'U1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schemes`
--

CREATE TABLE IF NOT EXISTS `tbl_schemes` (
  `sch_id` int(11) NOT NULL,
  `sch_title` varchar(100) DEFAULT NULL,
  `sch_start_date` date DEFAULT NULL,
  `sch_end_date` date DEFAULT NULL,
  `sch_daily_start_time` time DEFAULT NULL,
  `sch_daily_end_time` time DEFAULT NULL,
  `sch_amt` decimal(7,2) DEFAULT NULL,
  `sch_unit` varchar(15) DEFAULT NULL,
  `sch_type` varchar(15) DEFAULT NULL,
  `u_id` varchar(10) DEFAULT NULL,
  `c_id` varchar(10) DEFAULT NULL,
  `p_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`sch_id`),
  UNIQUE KEY `sch_id` (`sch_id`),
  KEY `u_id` (`u_id`),
  KEY `p_id` (`p_id`),
  KEY `c_id` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_schemes`
--

INSERT INTO `tbl_schemes` (`sch_id`, `sch_title`, `sch_start_date`, `sch_end_date`, `sch_daily_start_time`, `sch_daily_end_time`, `sch_amt`, `sch_unit`, `sch_type`, `u_id`, `c_id`, `p_id`) VALUES
(1, 'Bakery after 7', '2015-06-02', NULL, '17:00:00', '23:00:00', '50.00', '%', 'DISCOUNT', 'U1', 'CAT2', NULL),
(2, '5 off Dairy!', '2015-06-02', '2015-06-16', '17:00:00', '23:00:00', '5.00', 'NRS', 'DISCOUNT', 'U1', 'CAT3', NULL),
(3, 'Test', '2015-06-02', '2015-06-16', '11:00:00', '23:00:00', '10.00', 'NRS', 'DISCOUNT', 'U1', 'CAT1', NULL),
(4, 'VAT on Liquor', '2015-06-03', NULL, NULL, NULL, '13.00', '%', 'TAX', 'U1', 'CAT5', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tax`
--

CREATE TABLE IF NOT EXISTS `tbl_tax` (
  `tx_id` int(11) NOT NULL,
  `tx_bill_id` varchar(10) DEFAULT NULL,
  `tx_bill_date` date DEFAULT NULL,
  `tx_total_amt` decimal(7,2) DEFAULT NULL,
  `tx_product_name` varchar(100) DEFAULT NULL,
  `tx_amt` float NOT NULL,
  PRIMARY KEY (`tx_id`),
  KEY `tx_bill_id` (`tx_bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tax`
--

INSERT INTO `tbl_tax` (`tx_id`, `tx_bill_id`, `tx_bill_date`, `tx_total_amt`, `tx_product_name`, `tx_amt`) VALUES
(1, '76', '2015-06-03', '5000.00', ' Red Lable', 13),
(2, '121', '2015-06-03', '5000.00', ' Red Lable', 13),
(3, '122', '2015-06-03', '5000.00', ' Red Lable', 13),
(4, '127', '2015-06-03', '5000.00', ' Red Lable', 13),
(5, '128', '2015-06-03', '5000.00', ' Red Lable', 13);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaction`
--

CREATE TABLE IF NOT EXISTS `tbl_transaction` (
  `t_id` varchar(20) NOT NULL,
  `t_date` datetime DEFAULT NULL,
  `t_flow` varchar(10) DEFAULT NULL,
  `t_user` varchar(10) DEFAULT NULL,
  `t_amount` decimal(8,2) DEFAULT NULL,
  `t_details` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`t_id`),
  KEY `t_user` (`t_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaction`
--

INSERT INTO `tbl_transaction` (`t_id`, `t_date`, `t_flow`, `t_user`, `t_amount`, `t_details`) VALUES
('1', '2015-02-04 20:27:53', 'in', 'U1', '110.00', 'Sales'),
('10', '2015-02-05 14:58:36', 'in', 'U1', '500.00', 'Sales'),
('100', '2015-06-03 16:00:54', 'in', 'U1', '30.00', 'Sales'),
('101', '2015-06-03 16:01:41', 'in', 'U1', '30.00', 'Sales'),
('102', '2015-06-03 16:02:11', 'in', 'U1', '30.50', 'Sales'),
('103', '2015-06-03 16:02:24', 'in', 'U1', '30.00', 'Sales'),
('104', '2015-06-03 16:03:07', 'in', 'U1', '30.50', 'Sales'),
('105', '2015-06-03 16:04:06', 'in', 'U1', '30.50', 'Sales'),
('106', '2015-06-03 16:04:37', 'in', 'U1', '30.50', 'Sales'),
('107', '2015-06-03 16:05:54', 'in', 'U1', '90.50', 'Sales'),
('108', '2015-06-03 16:08:17', 'in', 'U1', '120.50', 'Sales'),
('109', '2015-06-03 16:08:54', 'in', 'U1', '60.50', 'Sales'),
('11', '2015-02-05 15:00:00', 'in', 'U1', '40.00', 'Sales'),
('110', '2015-06-03 16:09:17', 'in', 'U1', '120.50', 'Sales'),
('111', '2015-06-03 16:09:48', 'in', 'U1', '30.50', 'Sales'),
('112', '2015-06-03 16:11:09', 'in', 'U1', '30.50', 'Sales'),
('113', '2015-06-03 16:13:05', 'in', 'U1', '30.50', 'Sales'),
('114', '2015-06-03 16:13:53', 'in', 'U1', '200.50', 'Sales'),
('115', '2015-06-03 16:14:49', 'in', 'U1', '80.00', 'Sales'),
('116', '2015-06-03 16:15:04', 'in', 'U1', '60.50', 'Sales'),
('117', '2015-06-03 16:15:41', 'in', 'U1', '30.50', 'Sales'),
('118', '2015-06-03 16:16:01', 'in', 'U1', '30.00', 'Sales'),
('119', '2015-06-03 16:16:51', 'in', 'U1', '5110.00', 'Sales'),
('12', '2015-02-08 22:39:30', 'in', 'U1', '100.00', 'Sales'),
('120', '2015-06-03 16:17:57', 'in', 'U1', '5140.50', 'Sales'),
('121', '2015-06-03 16:18:39', 'in', 'U1', '30.50', 'Sales'),
('122', '2015-06-03 16:18:58', 'in', 'U1', '30.50', 'Sales'),
('123', '2015-06-03 16:19:26', 'in', 'U1', '200.50', 'Sales'),
('124', '2015-06-03 16:19:49', 'in', 'U1', '30.50', 'Sales'),
('125', '2015-06-03 16:20:24', 'in', 'U1', '5160.00', 'Sales'),
('126', '2015-06-03 16:21:12', 'in', 'U1', '5250.50', 'Sales'),
('13', '2015-02-09 10:13:28', 'in', 'U1', '50.00', 'Sales'),
('14', '2015-03-08 10:57:59', 'in', 'U1', '20.00', 'Sales'),
('15', '2015-03-08 11:10:09', 'in', 'U1', '50.00', 'Sales'),
('16', '2015-03-10 21:18:37', 'in', 'U1', '100.00', 'Sales'),
('17', '2015-03-13 09:27:51', 'in', 'U1', '50.00', 'Sales'),
('18', '2015-03-13 09:28:35', 'in', 'U1', '40.00', 'Sales'),
('19', '2015-03-13 09:28:41', 'in', 'U1', '40.00', 'Sales'),
('2', '2015-02-04 20:34:58', 'in', 'U1', '180.00', 'Sales'),
('20', '2015-03-13 09:28:42', 'in', 'U1', '40.00', 'Sales'),
('21', '2015-03-13 09:30:52', 'in', 'U1', '40.00', 'Sales'),
('22', '2015-03-13 09:31:08', 'in', 'U1', '40.00', 'Sales'),
('23', '2015-03-13 09:31:09', 'in', 'U1', '40.00', 'Sales'),
('24', '2015-03-13 09:32:18', 'in', 'U1', '50.00', 'Sales'),
('25', '2015-03-13 09:32:32', 'in', 'U1', '50.00', 'Sales'),
('26', '2015-03-13 09:32:33', 'in', 'U1', '50.00', 'Sales'),
('27', '2015-03-13 09:36:42', 'in', 'U1', '40.00', 'Sales'),
('28', '2015-03-13 09:36:55', 'in', 'U1', '40.00', 'Sales'),
('29', '2015-03-13 09:36:56', 'in', 'U1', '40.00', 'Sales'),
('3', '2015-02-04 20:57:00', 'in', 'U1', '20.00', 'Sales'),
('30', '2015-03-13 09:43:50', 'in', 'U1', '110.00', 'Sales'),
('31', '2015-03-13 09:44:13', 'in', 'U1', '110.00', 'Sales'),
('32', '2015-03-13 09:44:14', 'in', 'U1', '110.00', 'Sales'),
('33', '2015-03-13 09:45:15', 'in', 'U1', '120.00', 'Sales'),
('34', '2015-03-13 09:54:45', 'in', 'U1', '100.00', 'Sales'),
('35', '2015-03-13 09:55:04', 'in', 'U1', '100.00', 'Sales'),
('36', '2015-03-13 09:55:04', 'in', 'U1', '100.00', 'Sales'),
('37', '2015-03-13 10:24:04', 'in', 'U1', '100.00', 'Sales'),
('38', '2015-03-13 10:24:23', 'in', 'U1', '100.00', 'Sales'),
('39', '2015-03-13 10:24:24', 'in', 'U1', '100.00', 'Sales'),
('4', '2015-02-05 13:47:55', 'in', 'U1', '100.00', 'Sales'),
('40', '2015-03-13 10:33:48', 'in', 'U1', '90.00', 'Sales'),
('41', '2015-03-13 10:45:18', 'in', 'U1', '80.00', 'Sales'),
('42', '2015-03-13 10:45:51', 'in', 'U1', '120.00', 'Sales'),
('43', '2015-03-13 10:46:11', 'in', 'U1', '30.00', 'Sales'),
('44', '2015-03-13 10:46:38', 'in', 'U1', '10.00', 'Sales'),
('45', '2015-03-13 10:46:55', 'in', 'U1', '10.00', 'Sales'),
('46', '2015-03-13 10:46:56', 'in', 'U1', '10.00', 'Sales'),
('47', '2015-03-13 10:47:33', 'in', 'U1', '60.00', 'Sales'),
('48', '2015-03-13 10:47:43', 'in', 'U1', '60.00', 'Sales'),
('49', '2015-03-13 10:47:45', 'in', 'U1', '60.00', 'Sales'),
('5', '2015-02-05 13:48:36', 'in', 'U1', '10.00', 'Sales'),
('50', '2015-03-13 10:48:31', 'in', 'U1', '80.00', 'Sales'),
('51', '2015-03-13 10:48:35', 'in', 'U1', '80.00', 'Sales'),
('52', '2015-03-13 10:48:40', 'in', 'U1', '80.00', 'Sales'),
('53', '2015-03-13 10:49:25', 'in', 'U1', '90.00', 'Sales'),
('54', '2015-03-13 10:49:30', 'in', 'U1', '90.00', 'Sales'),
('55', '2015-03-13 10:49:32', 'in', 'U1', '90.00', 'Sales'),
('56', '2015-03-13 10:50:34', 'in', 'U1', '60.00', 'Sales'),
('57', '2015-03-13 10:51:30', 'in', 'U1', '60.00', 'Sales'),
('58', '2015-03-13 10:52:21', 'in', 'U1', '40.00', 'Sales'),
('59', '2015-03-13 10:52:35', 'in', 'U1', '40.00', 'Sales'),
('6', '2015-02-05 13:49:36', 'in', 'U1', '100.00', 'Sales'),
('60', '2015-03-13 10:52:36', 'in', 'U1', '40.00', 'Sales'),
('61', '2015-03-13 10:53:51', 'in', 'U1', '40.00', 'Sales'),
('62', '2015-03-13 10:54:03', 'in', 'U1', '40.00', 'Sales'),
('63', '2015-03-13 10:54:04', 'in', 'U1', '40.00', 'Sales'),
('64', '2015-03-13 10:58:54', 'in', 'U1', '60.00', 'Sales'),
('65', '2015-03-13 10:59:06', 'in', 'U1', '60.00', 'Sales'),
('66', '2015-03-13 10:59:07', 'in', 'U1', '60.00', 'Sales'),
('67', '2015-03-13 13:21:57', 'in', 'U1', '20.00', 'Sales'),
('68', '2015-03-13 13:22:15', 'in', 'U1', '20.00', 'Sales'),
('69', '2015-03-13 13:22:16', 'in', 'U1', '20.00', 'Sales'),
('7', '2015-02-05 13:52:10', 'in', 'U1', '100.00', 'Sales'),
('70', '2015-03-13 13:49:01', 'in', 'U1', '150.00', 'Sales'),
('71', '2015-03-13 13:49:25', 'in', 'U1', '20.00', 'Sales'),
('72', '2015-06-03 00:38:47', 'in', 'U1', '40.50', 'Sales'),
('73', '2015-06-03 13:34:55', 'in', 'U1', '5000.00', 'Sales'),
('74', '2015-06-03 13:36:23', 'in', 'U1', '10000.00', 'Sales'),
('75', '2015-06-03 14:14:48', 'in', 'U1', '30.50', 'Sales'),
('76', '2015-06-03 14:16:02', 'in', 'U1', '30.50', 'Sales'),
('77', '2015-06-03 14:17:14', 'in', 'U1', '30.50', 'Sales'),
('78', '2015-06-03 14:19:08', 'in', 'U1', '30.50', 'Sales'),
('79', '2015-06-03 14:20:31', 'in', 'U1', '30.00', 'Sales'),
('8', '2015-02-05 14:56:34', 'in', 'U1', '20.00', 'Sales'),
('80', '2015-06-03 14:20:50', 'in', 'U1', '30.00', 'Sales'),
('81', '2015-06-03 14:21:17', 'in', 'U1', '30.00', 'Sales'),
('82', '2015-06-03 14:24:58', 'in', 'U1', '30.00', 'Sales'),
('83', '2015-06-03 14:25:29', 'in', 'U1', '30.50', 'Sales'),
('84', '2015-06-03 14:30:48', 'in', 'U1', '30.50', 'Sales'),
('85', '2015-06-03 14:53:42', 'in', 'U1', '30.50', 'Sales'),
('86', '2015-06-03 14:54:17', 'in', 'U1', '30.50', 'Sales'),
('87', '2015-06-03 15:01:16', 'in', 'U1', '30.50', 'Sales'),
('88', '2015-06-03 15:01:37', 'in', 'U1', '30.00', 'Sales'),
('89', '2015-06-03 15:02:39', 'in', 'U1', '30.00', 'Sales'),
('9', '2015-02-05 14:57:16', 'in', 'U1', '20.00', 'Sales'),
('90', '2015-06-03 15:17:32', 'in', 'U1', '30.50', 'Sales'),
('91', '2015-06-03 15:18:07', 'in', 'U1', '30.50', 'Sales'),
('92', '2015-06-03 15:18:29', 'in', 'U1', '30.00', 'Sales'),
('93', '2015-06-03 15:22:16', 'in', 'U1', '30.50', 'Sales'),
('94', '2015-06-03 15:54:20', 'in', 'U1', '30.50', 'Sales'),
('95', '2015-06-03 15:57:48', 'in', 'U1', '30.50', 'Sales'),
('96', '2015-06-03 15:58:27', 'in', 'U1', '30.00', 'Sales'),
('97', '2015-06-03 15:58:56', 'in', 'U1', '30.50', 'Sales'),
('98', '2015-06-03 15:59:25', 'in', 'U1', '30.50', 'Sales'),
('99', '2015-06-03 15:59:54', 'in', 'U1', '30.50', 'Sales');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `u_id` varchar(10) NOT NULL,
  `u_name` varchar(30) DEFAULT NULL,
  `u_first_name` varchar(30) DEFAULT NULL,
  `u_last_name` varchar(30) DEFAULT NULL,
  `u_type` varchar(7) DEFAULT NULL,
  `u_create_date` datetime DEFAULT NULL,
  `u_password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `u_id` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`u_id`, `u_name`, `u_first_name`, `u_last_name`, `u_type`, `u_create_date`, `u_password`) VALUES
('U1', 'parikshit', 'Parikshit', 'Prasai', 'SUP', '2012-12-23 18:45:12', 'parikshit'),
('U2', 'ramesh', 'Ramesh', 'Lama', 'CAS', '2015-03-12 21:07:32', 'ramesh'),
('U3', 'Hrishav', 'Hrishav', 'Ojha', 'CAS', '2015-03-13 07:39:46', 'hrishav'),
('U4', 'Cashier', 'Hero', 'cashier', 'CAS', '2015-03-13 07:41:22', 'cashier'),
('U5', 'Hari', 'Hari', 'Bahadur', 'CAS', '2015-03-13 07:42:18', 'haribahadur');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_warehouse`
--

CREATE TABLE IF NOT EXISTS `tbl_warehouse` (
  `product_id` varchar(10) DEFAULT NULL,
  `stock` decimal(10,0) DEFAULT NULL,
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_bill`
--
ALTER TABLE `tbl_bill`
  ADD CONSTRAINT `tbl_bill_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `tbl_user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_bill_amount`
--
ALTER TABLE `tbl_bill_amount`
  ADD CONSTRAINT `tbl_bill_amount_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `tbl_bill` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_bill_detail`
--
ALTER TABLE `tbl_bill_detail`
  ADD CONSTRAINT `tbl_bill_detail_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `tbl_bill` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_bill_detail_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `tbl_product` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_creditors_advanced`
--
ALTER TABLE `tbl_creditors_advanced`
  ADD CONSTRAINT `tbl_creditors_advanced_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `tbl_bill` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  ADD CONSTRAINT `tbl_permission_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `tbl_user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_permission_ibfk_2` FOREIGN KEY (`controller_id`) REFERENCES `tbl_controllers` (`controller_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `tbl_product_category` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product_category`
--
ALTER TABLE `tbl_product_category`
  ADD CONSTRAINT `tbl_product_category_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `tbl_user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_schemes`
--
ALTER TABLE `tbl_schemes`
  ADD CONSTRAINT `tbl_schemes_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `tbl_user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_schemes_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `tbl_product` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_schemes_ibfk_3` FOREIGN KEY (`c_id`) REFERENCES `tbl_product_category` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_tax`
--
ALTER TABLE `tbl_tax`
  ADD CONSTRAINT `tbl_tax_ibfk_1` FOREIGN KEY (`tx_bill_id`) REFERENCES `tbl_bill` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  ADD CONSTRAINT `tbl_transaction_ibfk_1` FOREIGN KEY (`t_user`) REFERENCES `tbl_user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD CONSTRAINT `tbl_warehouse_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
