-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-01-29 17:09:47
-- 服务器版本： 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- 表的结构 `cat`
--

CREATE TABLE `cat` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(20) NOT NULL DEFAULT ' ',
  `intro` varchar(100) NOT NULL DEFAULT ' ',
  `parent_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cat`
--

INSERT INTO `cat` (`cat_id`, `cat_name`, `intro`, `parent_id`) VALUES
(1, '手机类型', '', 0),
(2, 'CDMA手机', '', 1),
(3, 'GSM手机', '', 1),
(4, '3G手机', '', 1),
(5, '双模手机', '', 1),
(6, '手机配件', '', 0),
(7, '充电器', '', 6),
(8, '耳机', '', 6),
(9, '电池', '', 6),
(11, '读卡器和内存卡', '', 6),
(12, '充值卡', '', 0),
(13, '小灵通/固话充值卡', '', 12),
(14, '移动手机充值卡', '', 12),
(15, '联通手机充值卡', '', 12),
(17, '音像制品', '', 1),
(20, '器材', '器材', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `cat`
--
ALTER TABLE `cat`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
