-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-07-18 13:20:36
-- 服务器版本： 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `1601n`
--

-- --------------------------------------------------------

--
-- 表的结构 `access`
--

CREATE TABLE `access` (
  `id` int(11) NOT NULL,
  `accessname` varchar(20) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `access`
--

INSERT INTO `access` (`id`, `accessname`, `update_time`) VALUES
(1, 'view', '2018-07-18 00:39:25'),
(2, 'modify', '2018-07-18 00:39:25'),
(3, 'checkin', '2018-07-18 00:39:25'),
(4, 'query', '2018-07-18 00:39:25'),
(5, 'delete', '2018-07-18 00:39:25'),
(6, 'admin', '2018-07-18 00:39:25');

-- --------------------------------------------------------

--
-- 表的结构 `roler`
--

CREATE TABLE `roler` (
  `id` int(11) NOT NULL,
  `rolername` varchar(30) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

--
-- 转存表中的数据 `roler`
--

INSERT INTO `roler` (`id`, `rolername`, `update_time`) VALUES
(1, '班长', '2018-07-18 00:37:36'),
(2, '文书', '2018-07-18 00:37:36'),
(3, '学委', '2018-07-18 00:37:36'),
(4, '安委', '2018-07-18 00:37:36'),
(5, '生委', '2018-07-18 00:37:36'),
(6, '纪委', '2018-07-18 00:37:36'),
(7, '超级管理员', '2018-07-18 00:37:36'),
(8, '普通学生', '2018-07-18 07:00:20');

-- --------------------------------------------------------

--
-- 表的结构 `roler_access`
--

CREATE TABLE `roler_access` (
  `id` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `roler_access`
--

INSERT INTO `roler_access` (`id`, `rid`, `aid`, `update_time`) VALUES
(1, 1, 1, '2018-07-18 07:02:01'),
(2, 1, 2, '2018-07-18 07:02:01'),
(3, 1, 3, '2018-07-18 07:02:01'),
(4, 1, 4, '2018-07-18 07:02:01'),
(5, 3, 1, '2018-07-18 07:02:58'),
(6, 3, 2, '2018-07-18 07:02:58'),
(7, 7, 1, '2018-07-18 07:03:46'),
(8, 7, 2, '2018-07-18 07:03:46'),
(9, 7, 3, '2018-07-18 07:03:46'),
(10, 7, 4, '2018-07-18 07:03:46'),
(11, 7, 5, '2018-07-18 07:03:46'),
(12, 7, 6, '2018-07-18 07:03:46'),
(13, 7, 7, '2018-07-18 07:03:46'),
(14, 8, 1, '2018-07-18 07:04:10');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `birthday` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `phone` varchar(11) NOT NULL,
  `address` text,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `birthday`, `phone`, `address`, `update_time`) VALUES
(1, '张龙', 'e10adc3949ba59abbe56e057f20f883e', '2018-07-18 00:26:07', '', NULL, '2018-07-18 00:25:34'),
(2, 'ak47', 'eb009cefa9759b10d7bbd5cc969d95e5', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:25:34'),
(3, 'zt', '202cb962ac59075b964b07152d234b70', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:25:35'),
(4, '张东东', '6d391770d7b5116d6e2952e57e03e501', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:25:35'),
(5, 'sunle', 'a101365e8f86a8dfc67857748da07345', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:25:37'),
(6, 'weitengteng', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:25:46'),
(7, 'langying', '4297f44b13955235245b2497399d7a93', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:25:49'),
(8, 'qin', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:25:49'),
(9, '石富强', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:25:51'),
(10, 'chengyan', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:25:54'),
(11, 'xiaowangzi', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:25:56'),
(12, 'nana', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:26:03'),
(13, 'panbeibei', 'a0cda3cb3d46b6fef9364c099ea7431a', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:26:08'),
(14, 'zhang', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:26:28'),
(15, 'guoyitian', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:26:34'),
(16, 'zhaoaqian', '64ec528ef76029992d8b85ea0113087c', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:26:34'),
(17, 'baijiahao', '131eefef31381096aac8b8b1fbdaafdb', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:26:49'),
(18, 'sweet', '65cc2c8205a05d7379fa3a6386f710e1', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:26:52'),
(19, '威震天', '0e2bc42c04bb583ccf0776dace225dec', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:26:55'),
(20, 'shiny', '202cb962ac59075b964b07152d234b70', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:26:59'),
(21, 'loveme', '74d738020dca22a731e30058ac7242ee', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:27:01'),
(22, '二傻子', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:27:35'),
(23, '霸天虎', '0e2bc42c04bb583ccf0776dace225dec', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:27:36'),
(24, '匿名', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:27:42'),
(25, '大黄蜂', '0e2bc42c04bb583ccf0776dace225dec', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:27:48'),
(26, '迪', '250cf8b51c773f3f8dc8b4be867a9a02', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:27:57'),
(27, 'mary', '4297f44b13955235245b2497399d7a93', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:28:03'),
(28, '葫芦岛舞王 石富强', 'c6a9d41503030e4e91e621dd24872f01', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:28:48'),
(29, '疾风剑豪', '8fe1bc88b8eeda22beca80860bdddf1c', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:29:16'),
(30, 'yao', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:29:26'),
(31, '影流之主', '8fe1bc88b8eeda22beca80860bdddf1c', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:29:29'),
(32, 'sweets', 'c1c6fff1643a3af5bd167488ff19012d', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:29:57'),
(33, '熔岩巨兽', '8fe1bc88b8eeda22beca80860bdddf1c', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:30:02'),
(34, '放逐之刃', '8fe1bc88b8eeda22beca80860bdddf1c', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:30:28'),
(35, '我是张龙，我是个二傻子', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:30:47'),
(36, 'sweets8', 'c1c6fff1643a3af5bd167488ff19012d', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:30:52'),
(37, '爆破鬼才', '8fe1bc88b8eeda22beca80860bdddf1c', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:31:03'),
(38, 'fuwanfeng', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:31:07'),
(39, '机械先驱', '8fe1bc88b8eeda22beca80860bdddf1c', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:31:19'),
(40, 'mango', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:31:19'),
(41, 'chenmanjie', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:32:44'),
(42, '石成钰', '3e57b7308be4390f3ce8030bc1ebf983', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:33:18'),
(43, 'ABCDEFGHIJKLMNOPQRSU', '0c12278389532e91c601af4c8adef7fc', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:33:55'),
(44, '我还在创建', '202cb962ac59075b964b07152d234b70', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:34:09'),
(45, '创建的停不下来', '202cb962ac59075b964b07152d234b70', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:34:18'),
(46, 'chenmanjie111', '202cb962ac59075b964b07152d234b70', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:34:24'),
(47, '上的来', '1f6419b1cbe79c71410cb320fc094775', '0000-00-00 00:00:00', '', NULL, '2018-07-18 00:34:31');

-- --------------------------------------------------------

--
-- 表的结构 `user_roler`
--

CREATE TABLE `user_roler` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '//1 表示正常 0表示删除'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user_roler`
--

INSERT INTO `user_roler` (`id`, `uid`, `rid`, `update_time`, `status`) VALUES
(1, 3, 1, '2018-07-18 06:41:24', 0),
(2, 3, 2, '2018-07-18 06:41:26', 0),
(3, 3, 3, '2018-07-18 06:41:27', 0),
(4, 3, 4, '2018-07-18 06:41:29', 0),
(5, 3, 5, '2018-07-18 06:41:31', 0),
(6, 3, 6, '2018-07-18 06:41:33', 0),
(7, 3, 7, '2018-07-18 06:41:35', 0),
(8, 9, 1, '2018-07-18 06:41:44', 0),
(9, 9, 7, '2018-07-18 06:41:46', 0),
(10, 9, 3, '2018-07-18 06:41:47', 0),
(11, 9, 5, '2018-07-18 06:41:49', 0),
(12, 4, 1, '2018-07-18 06:41:50', 0),
(13, 4, 2, '2018-07-18 06:41:51', 0),
(14, 4, 3, '2018-07-18 06:41:51', 0),
(15, 4, 4, '2018-07-18 06:41:52', 0),
(16, 4, 5, '2018-07-18 06:41:52', 0),
(17, 4, 6, '2018-07-18 06:41:53', 0),
(18, 4, 7, '2018-07-18 06:41:53', 0),
(19, 10, 7, '2018-07-18 06:41:59', 0),
(20, 9, 2, '2018-07-18 06:42:00', 0),
(21, 9, 5, '2018-07-18 06:42:03', 0),
(22, 21, 1, '2018-07-18 06:42:10', 0),
(23, 21, 2, '2018-07-18 06:42:12', 1),
(24, 21, 3, '2018-07-18 06:42:12', 1),
(25, 21, 4, '2018-07-18 06:42:13', 1),
(26, 21, 5, '2018-07-18 06:42:13', 1),
(27, 21, 6, '2018-07-18 06:42:14', 1),
(28, 21, 7, '2018-07-18 06:42:14', 1),
(29, 16, 7, '2018-07-18 06:42:21', 0),
(30, 35, 1, '2018-07-18 06:42:35', 0),
(31, 35, 7, '2018-07-18 06:42:36', 0),
(32, 35, 6, '2018-07-18 06:42:36', 0),
(33, 35, 4, '2018-07-18 06:42:37', 0),
(34, 35, 3, '2018-07-18 06:42:37', 0),
(35, 35, 2, '2018-07-18 06:42:38', 0),
(36, 36, 1, '2018-07-18 06:42:39', 0),
(37, 10, 7, '2018-07-18 06:42:39', 0),
(38, 1, 1, '2018-07-18 06:42:40', 0),
(39, 36, 1, '2018-07-18 06:42:41', 0),
(40, 1, 2, '2018-07-18 06:42:42', 0),
(41, 1, 3, '2018-07-18 06:42:42', 0),
(42, 1, 4, '2018-07-18 06:42:43', 0),
(43, 1, 5, '2018-07-18 06:42:43', 0),
(44, 1, 6, '2018-07-18 06:42:44', 0),
(45, 1, 7, '2018-07-18 06:42:44', 0),
(46, 36, 2, '2018-07-18 06:42:45', 0),
(47, 36, 3, '2018-07-18 06:42:46', 0),
(48, 36, 4, '2018-07-18 06:42:47', 0),
(49, 36, 5, '2018-07-18 06:42:48', 0),
(50, 36, 6, '2018-07-18 06:42:48', 0),
(51, 16, 7, '2018-07-18 06:42:49', 0),
(52, 36, 7, '2018-07-18 06:42:49', 0),
(53, 1, 2, '2018-07-18 06:42:51', 0),
(54, 4, 2, '2018-07-18 06:42:52', 0),
(55, 1, 3, '2018-07-18 06:42:52', 0),
(56, 1, 4, '2018-07-18 06:42:52', 0),
(57, 36, 7, '2018-07-18 06:42:53', 0),
(58, 1, 5, '2018-07-18 06:42:53', 0),
(59, 1, 1, '2018-07-18 06:42:53', 0),
(60, 1, 7, '2018-07-18 06:42:53', 0),
(61, 1, 2, '2018-07-18 06:42:53', 0),
(62, 1, 3, '2018-07-18 06:42:54', 0),
(63, 4, 7, '2018-07-18 06:42:54', 0),
(64, 1, 4, '2018-07-18 06:42:54', 0),
(65, 1, 5, '2018-07-18 06:42:55', 0),
(66, 1, 6, '2018-07-18 06:42:55', 0),
(67, 38, 7, '2018-07-18 06:42:55', 1),
(68, 17, 2, '2018-07-18 06:42:55', 1),
(69, 1, 7, '2018-07-18 06:42:55', 0),
(70, 7, 7, '2018-07-18 06:42:57', 0),
(71, 4, 1, '2018-07-18 06:42:57', 0),
(72, 6, 7, '2018-07-18 06:42:57', 0),
(73, 17, 7, '2018-07-18 06:42:57', 1),
(74, 36, 7, '2018-07-18 06:42:59', 0),
(75, 2, 1, '2018-07-18 06:42:59', 0),
(76, 17, 4, '2018-07-18 06:43:00', 0),
(77, 7, 2, '2018-07-18 06:43:00', 0),
(78, 2, 2, '2018-07-18 06:43:01', 0),
(79, 2, 3, '2018-07-18 06:43:02', 0),
(80, 2, 4, '2018-07-18 06:43:02', 0),
(81, 6, 1, '2018-07-18 06:43:03', 0),
(82, 7, 7, '2018-07-18 06:43:03', 0),
(83, 2, 5, '2018-07-18 06:43:03', 0),
(84, 6, 2, '2018-07-18 06:43:03', 0),
(85, 1, 2, '2018-07-18 06:43:03', 0),
(86, 6, 3, '2018-07-18 06:43:04', 0),
(87, 1, 1, '2018-07-18 06:43:04', 0),
(88, 2, 6, '2018-07-18 06:43:04', 0),
(89, 2, 7, '2018-07-18 06:43:04', 0),
(90, 1, 3, '2018-07-18 06:43:06', 0),
(91, 7, 1, '2018-07-18 06:43:06', 0),
(92, 6, 4, '2018-07-18 06:43:07', 0),
(93, 1, 4, '2018-07-18 06:43:07', 0),
(94, 1, 5, '2018-07-18 06:43:07', 0),
(95, 6, 5, '2018-07-18 06:43:07', 0),
(96, 1, 6, '2018-07-18 06:43:08', 0),
(97, 6, 6, '2018-07-18 06:43:08', 0),
(98, 7, 2, '2018-07-18 06:43:08', 0),
(99, 1, 7, '2018-07-18 06:43:08', 0),
(100, 38, 1, '2018-07-18 06:43:08', 0),
(101, 7, 3, '2018-07-18 06:43:09', 0),
(102, 43, 1, '2018-07-18 06:43:09', 1),
(103, 7, 4, '2018-07-18 06:43:10', 0),
(104, 43, 2, '2018-07-18 06:43:10', 1),
(105, 7, 5, '2018-07-18 06:43:10', 0),
(106, 43, 3, '2018-07-18 06:43:11', 1),
(107, 7, 6, '2018-07-18 06:43:11', 0),
(108, 7, 7, '2018-07-18 06:43:12', 0),
(109, 1, 5, '2018-07-18 06:43:13', 0),
(110, 5, 1, '2018-07-18 06:43:17', 0),
(111, 5, 2, '2018-07-18 06:43:17', 0),
(112, 5, 3, '2018-07-18 06:43:18', 1),
(113, 5, 4, '2018-07-18 06:43:18', 0),
(114, 15, 7, '2018-07-18 06:43:19', 1),
(115, 5, 5, '2018-07-18 06:43:19', 0),
(116, 21, 1, '2018-07-18 06:43:19', 1),
(117, 5, 6, '2018-07-18 06:43:19', 0),
(118, 5, 7, '2018-07-18 06:43:20', 0),
(119, 1, 5, '2018-07-18 06:43:23', 0),
(120, 15, 2, '2018-07-18 06:43:26', 0),
(121, 15, 3, '2018-07-18 06:43:27', 0),
(122, 15, 4, '2018-07-18 06:43:27', 0),
(123, 4, 5, '2018-07-18 06:43:27', 0),
(124, 15, 5, '2018-07-18 06:43:28', 0),
(125, 15, 6, '2018-07-18 06:43:28', 0),
(126, 4, 4, '2018-07-18 06:43:28', 0),
(127, 4, 3, '2018-07-18 06:43:29', 0),
(128, 10, 6, '2018-07-18 06:43:30', 0),
(129, 10, 5, '2018-07-18 06:43:31', 0),
(130, 28, 7, '2018-07-18 06:43:31', 0),
(131, 10, 4, '2018-07-18 06:43:32', 0),
(132, 28, 6, '2018-07-18 06:43:32', 0),
(133, 10, 3, '2018-07-18 06:43:32', 0),
(134, 10, 2, '2018-07-18 06:43:33', 0),
(135, 28, 5, '2018-07-18 06:43:33', 0),
(136, 10, 1, '2018-07-18 06:43:33', 0),
(137, 28, 4, '2018-07-18 06:43:33', 0),
(138, 4, 4, '2018-07-18 06:43:34', 0),
(139, 4, 6, '2018-07-18 06:43:34', 0),
(140, 5, 1, '2018-07-18 06:43:36', 0),
(141, 14, 1, '2018-07-18 06:43:40', 0),
(142, 28, 2, '2018-07-18 06:43:40', 0),
(143, 20, 1, '2018-07-18 06:43:43', 0),
(144, 1, 3, '2018-07-18 06:43:44', 0),
(145, 1, 2, '2018-07-18 06:43:44', 0),
(146, 20, 3, '2018-07-18 06:43:45', 1),
(147, 1, 7, '2018-07-18 06:43:45', 0),
(148, 28, 1, '2018-07-18 06:43:45', 0),
(149, 1, 6, '2018-07-18 06:43:45', 0),
(150, 1, 5, '2018-07-18 06:43:46', 0),
(151, 20, 2, '2018-07-18 06:43:46', 1),
(152, 1, 1, '2018-07-18 06:43:46', 0),
(153, 20, 5, '2018-07-18 06:43:47', 0),
(154, 14, 1, '2018-07-18 06:43:47', 0),
(155, 14, 2, '2018-07-18 06:43:47', 0),
(156, 20, 7, '2018-07-18 06:43:48', 1),
(157, 14, 3, '2018-07-18 06:43:48', 0),
(158, 14, 4, '2018-07-18 06:43:48', 0),
(159, 14, 5, '2018-07-18 06:43:49', 0),
(160, 20, 6, '2018-07-18 06:43:49', 1),
(161, 36, 3, '2018-07-18 06:43:49', 1),
(162, 14, 6, '2018-07-18 06:43:49', 0),
(163, 6, 1, '2018-07-18 06:43:50', 0),
(164, 14, 7, '2018-07-18 06:43:50', 0),
(165, 36, 4, '2018-07-18 06:43:50', 1),
(166, 20, 4, '2018-07-18 06:43:50', 0),
(167, 6, 2, '2018-07-18 06:43:50', 0),
(168, 6, 3, '2018-07-18 06:43:51', 0),
(169, 6, 4, '2018-07-18 06:43:51', 0),
(170, 6, 5, '2018-07-18 06:43:52', 0),
(171, 1, 1, '2018-07-18 06:43:52', 0),
(172, 6, 6, '2018-07-18 06:43:52', 0),
(173, 1, 2, '2018-07-18 06:43:52', 0),
(174, 6, 7, '2018-07-18 06:43:52', 0),
(175, 1, 3, '2018-07-18 06:43:53', 0),
(176, 1, 7, '2018-07-18 06:43:53', 0),
(177, 1, 4, '2018-07-18 06:43:53', 0),
(178, 1, 5, '2018-07-18 06:43:53', 0),
(179, 1, 6, '2018-07-18 06:43:53', 0),
(180, 1, 7, '2018-07-18 06:43:54', 0),
(181, 1, 6, '2018-07-18 06:43:55', 0),
(182, 1, 5, '2018-07-18 06:43:56', 0),
(183, 1, 4, '2018-07-18 06:43:56', 0),
(184, 7, 6, '2018-07-18 06:43:56', 0),
(185, 1, 3, '2018-07-18 06:43:57', 0),
(186, 1, 2, '2018-07-18 06:43:57', 0),
(187, 1, 1, '2018-07-18 06:43:58', 0),
(188, 1, 1, '2018-07-18 06:43:59', 0),
(189, 40, 1, '2018-07-18 06:43:59', 0),
(190, 1, 2, '2018-07-18 06:44:00', 0),
(191, 1, 2, '2018-07-18 06:44:00', 0),
(192, 7, 5, '2018-07-18 06:44:01', 0),
(193, 1, 7, '2018-07-18 06:44:02', 0),
(194, 40, 7, '2018-07-18 06:44:03', 1),
(195, 1, 3, '2018-07-18 06:44:03', 0),
(196, 4, 7, '2018-07-18 06:44:04', 0),
(197, 1, 4, '2018-07-18 06:44:04', 0),
(198, 1, 5, '2018-07-18 06:44:05', 0),
(199, 1, 6, '2018-07-18 06:44:05', 0),
(200, 1, 7, '2018-07-18 06:44:06', 0),
(201, 4, 6, '2018-07-18 06:44:07', 0),
(202, 11, 3, '2018-07-18 06:44:07', 0),
(203, 11, 4, '2018-07-18 06:44:08', 0),
(204, 4, 4, '2018-07-18 06:44:08', 0),
(205, 11, 5, '2018-07-18 06:44:09', 0),
(206, 11, 6, '2018-07-18 06:44:09', 0),
(207, 11, 7, '2018-07-18 06:44:10', 0),
(208, 4, 2, '2018-07-18 06:44:10', 0),
(209, 11, 1, '2018-07-18 06:44:10', 0),
(210, 4, 3, '2018-07-18 06:44:11', 0),
(211, 11, 2, '2018-07-18 06:44:11', 0),
(212, 13, 7, '2018-07-18 06:44:21', 0),
(213, 20, 1, '2018-07-18 06:44:24', 1),
(214, 1, 2, '2018-07-18 06:44:24', 0),
(215, 1, 3, '2018-07-18 06:44:25', 0),
(216, 1, 4, '2018-07-18 06:44:25', 0),
(217, 1, 5, '2018-07-18 06:44:25', 0),
(218, 1, 6, '2018-07-18 06:44:26', 0),
(219, 42, 1, '2018-07-18 06:44:26', 1),
(220, 42, 3, '2018-07-18 06:44:28', 1),
(221, 1, 1, '2018-07-18 06:44:28', 0),
(222, 42, 2, '2018-07-18 06:44:31', 1),
(223, 42, 4, '2018-07-18 06:44:33', 1),
(224, 42, 5, '2018-07-18 06:44:34', 1),
(225, 42, 6, '2018-07-18 06:44:35', 1),
(226, 42, 7, '2018-07-18 06:44:36', 1),
(227, 4, 7, '2018-07-18 06:44:41', 0),
(228, 4, 3, '2018-07-18 06:44:42', 0),
(229, 1, 6, '2018-07-18 06:44:42', 0),
(230, 1, 7, '2018-07-18 06:44:43', 0),
(231, 1, 3, '2018-07-18 06:44:43', 0),
(232, 1, 2, '2018-07-18 06:44:44', 0),
(233, 1, 2, '2018-07-18 06:44:44', 0),
(234, 1, 1, '2018-07-18 06:44:44', 0),
(235, 1, 3, '2018-07-18 06:44:44', 0),
(236, 1, 4, '2018-07-18 06:44:45', 0),
(237, 1, 1, '2018-07-18 06:44:46', 0),
(238, 1, 6, '2018-07-18 06:44:49', 0),
(239, 1, 7, '2018-07-18 06:44:50', 0),
(240, 9, 6, '2018-07-18 06:44:58', 0),
(241, 47, 2, '2018-07-18 06:44:59', 0),
(242, 2, 1, '2018-07-18 06:45:07', 0),
(243, 2, 2, '2018-07-18 06:45:08', 0),
(244, 2, 3, '2018-07-18 06:45:08', 0),
(245, 2, 4, '2018-07-18 06:45:09', 0),
(246, 2, 5, '2018-07-18 06:45:09', 0),
(247, 2, 6, '2018-07-18 06:45:10', 0),
(248, 2, 7, '2018-07-18 06:45:10', 0),
(249, 12, 1, '2018-07-18 06:45:17', 0),
(250, 2, 6, '2018-07-18 06:45:21', 0),
(251, 7, 3, '2018-07-18 06:45:21', 0),
(252, 2, 5, '2018-07-18 06:45:21', 0),
(253, 2, 7, '2018-07-18 06:45:24', 1),
(254, 7, 1, '2018-07-18 06:45:25', 0),
(255, 2, 4, '2018-07-18 06:45:25', 1),
(256, 2, 3, '2018-07-18 06:45:26', 1),
(257, 2, 2, '2018-07-18 06:45:27', 0),
(258, 7, 2, '2018-07-18 06:45:27', 0),
(259, 2, 1, '2018-07-18 06:45:27', 0),
(260, 12, 2, '2018-07-18 06:45:28', 0),
(261, 4, 2, '2018-07-18 06:45:28', 0),
(262, 7, 3, '2018-07-18 06:45:29', 0),
(263, 4, 4, '2018-07-18 06:45:33', 0),
(264, 3, 1, '2018-07-18 06:45:42', 0),
(265, 3, 2, '2018-07-18 06:45:42', 0),
(266, 3, 3, '2018-07-18 06:45:43', 0),
(267, 3, 4, '2018-07-18 06:45:43', 0),
(268, 3, 5, '2018-07-18 06:45:44', 0),
(269, 3, 6, '2018-07-18 06:45:44', 0),
(270, 3, 7, '2018-07-18 06:45:45', 0),
(271, 7, 3, '2018-07-18 06:46:00', 1),
(272, 7, 6, '2018-07-18 06:46:00', 1),
(273, 35, 6, '2018-07-18 06:46:01', 1),
(274, 35, 5, '2018-07-18 06:46:02', 1),
(275, 35, 4, '2018-07-18 06:46:02', 1),
(276, 35, 3, '2018-07-18 06:46:03', 1),
(277, 35, 2, '2018-07-18 06:46:03', 1),
(278, 1, 7, '2018-07-18 06:46:13', 0),
(279, 1, 6, '2018-07-18 06:46:13', 0),
(280, 1, 5, '2018-07-18 06:46:14', 0),
(281, 7, 4, '2018-07-18 06:46:14', 0),
(282, 1, 4, '2018-07-18 06:46:14', 0),
(283, 1, 3, '2018-07-18 06:46:15', 0),
(284, 6, 3, '2018-07-18 06:46:15', 0),
(285, 1, 1, '2018-07-18 06:46:15', 0),
(286, 6, 4, '2018-07-18 06:46:16', 0),
(287, 6, 5, '2018-07-18 06:46:16', 0),
(288, 7, 7, '2018-07-18 06:46:16', 0),
(289, 6, 6, '2018-07-18 06:46:17', 0),
(290, 6, 7, '2018-07-18 06:46:17', 0),
(291, 1, 2, '2018-07-18 06:46:20', 0),
(292, 7, 1, '2018-07-18 06:46:21', 0),
(293, 29, 1, '2018-07-18 06:46:38', 1),
(294, 29, 2, '2018-07-18 06:46:39', 1),
(295, 29, 3, '2018-07-18 06:46:39', 1),
(296, 29, 4, '2018-07-18 06:46:40', 1),
(297, 29, 5, '2018-07-18 06:46:41', 1),
(298, 29, 6, '2018-07-18 06:46:42', 1),
(299, 29, 7, '2018-07-18 06:46:42', 1),
(300, 26, 7, '2018-07-18 06:46:47', 1),
(301, 26, 3, '2018-07-18 06:46:51', 1),
(302, 26, 2, '2018-07-18 06:46:52', 1),
(303, 39, 1, '2018-07-18 06:46:56', 0),
(304, 39, 7, '2018-07-18 06:46:56', 1),
(305, 4, 1, '2018-07-18 06:46:58', 0),
(306, 39, 1, '2018-07-18 06:46:58', 0),
(307, 39, 2, '2018-07-18 06:46:59', 1),
(308, 11, 1, '2018-07-18 06:46:59', 0),
(309, 11, 2, '2018-07-18 06:47:00', 0),
(310, 11, 3, '2018-07-18 06:47:00', 0),
(311, 11, 4, '2018-07-18 06:47:01', 0),
(312, 4, 7, '2018-07-18 06:47:01', 0),
(313, 11, 5, '2018-07-18 06:47:01', 0),
(314, 4, 6, '2018-07-18 06:47:01', 0),
(315, 11, 6, '2018-07-18 06:47:01', 0),
(316, 39, 1, '2018-07-18 06:47:01', 1),
(317, 4, 5, '2018-07-18 06:47:02', 0),
(318, 11, 7, '2018-07-18 06:47:02', 0),
(319, 4, 4, '2018-07-18 06:47:02', 0),
(320, 4, 3, '2018-07-18 06:47:03', 0),
(321, 4, 2, '2018-07-18 06:47:03', 0),
(322, 39, 3, '2018-07-18 06:47:03', 1),
(323, 39, 6, '2018-07-18 06:47:04', 1),
(324, 39, 4, '2018-07-18 06:47:05', 1),
(325, 39, 5, '2018-07-18 06:47:06', 1),
(326, 6, 1, '2018-07-18 06:47:08', 0),
(327, 6, 2, '2018-07-18 06:47:09', 0),
(328, 6, 3, '2018-07-18 06:47:09', 0),
(329, 6, 4, '2018-07-18 06:47:10', 0),
(330, 6, 5, '2018-07-18 06:47:10', 0),
(331, 6, 6, '2018-07-18 06:47:10', 0),
(332, 6, 7, '2018-07-18 06:47:11', 0),
(333, 9, 2, '2018-07-18 06:47:15', 0),
(334, 35, 7, '2018-07-18 06:47:16', 1),
(335, 9, 3, '2018-07-18 06:47:16', 0),
(336, 9, 4, '2018-07-18 06:47:17', 0),
(337, 9, 5, '2018-07-18 06:47:17', 0),
(338, 9, 6, '2018-07-18 06:47:18', 0),
(339, 9, 1, '2018-07-18 06:47:19', 0),
(340, 6, 6, '2018-07-18 06:47:23', 0),
(341, 6, 7, '2018-07-18 06:47:24', 0),
(342, 6, 5, '2018-07-18 06:47:25', 0),
(343, 6, 4, '2018-07-18 06:47:25', 0),
(344, 5, 5, '2018-07-18 06:47:33', 1),
(345, 6, 1, '2018-07-18 06:47:35', 0),
(346, 6, 2, '2018-07-18 06:47:36', 0),
(347, 6, 3, '2018-07-18 06:47:36', 0),
(348, 6, 5, '2018-07-18 06:47:38', 0),
(349, 6, 6, '2018-07-18 06:47:39', 0),
(350, 6, 7, '2018-07-18 06:47:39', 0),
(351, 6, 7, '2018-07-18 06:47:46', 0),
(352, 6, 6, '2018-07-18 06:47:47', 0),
(353, 6, 5, '2018-07-18 06:47:48', 0),
(354, 6, 1, '2018-07-18 06:48:01', 0),
(355, 6, 2, '2018-07-18 06:48:01', 0),
(356, 6, 3, '2018-07-18 06:48:02', 0),
(357, 6, 4, '2018-07-18 06:48:02', 0),
(358, 6, 5, '2018-07-18 06:48:03', 0),
(359, 6, 6, '2018-07-18 06:48:03', 0),
(360, 6, 7, '2018-07-18 06:48:03', 0),
(361, 8, 2, '2018-07-18 06:48:08', 1),
(362, 8, 1, '2018-07-18 06:48:08', 1),
(363, 8, 3, '2018-07-18 06:48:12', 1),
(364, 8, 4, '2018-07-18 06:48:13', 1),
(365, 8, 5, '2018-07-18 06:48:13', 1),
(366, 8, 6, '2018-07-18 06:48:14', 1),
(367, 8, 7, '2018-07-18 06:48:14', 1),
(368, 6, 7, '2018-07-18 06:48:29', 0),
(369, 6, 1, '2018-07-18 06:48:29', 0),
(370, 6, 2, '2018-07-18 06:48:29', 0),
(371, 6, 3, '2018-07-18 06:48:30', 0),
(372, 6, 4, '2018-07-18 06:48:30', 0),
(373, 6, 5, '2018-07-18 06:48:31', 0),
(374, 6, 6, '2018-07-18 06:48:31', 0),
(375, 6, 7, '2018-07-18 06:48:32', 0),
(376, 11, 1, '2018-07-18 06:49:12', 0),
(377, 11, 2, '2018-07-18 06:49:13', 0),
(378, 11, 3, '2018-07-18 06:49:13', 0),
(379, 11, 4, '2018-07-18 06:49:14', 0),
(380, 11, 5, '2018-07-18 06:49:15', 0),
(381, 11, 6, '2018-07-18 06:49:15', 0),
(382, 11, 7, '2018-07-18 06:49:16', 0),
(383, 9, 1, '2018-07-18 06:49:25', 0),
(384, 9, 2, '2018-07-18 06:49:25', 0),
(385, 9, 4, '2018-07-18 06:49:26', 0),
(386, 9, 7, '2018-07-18 06:49:27', 0),
(387, 1, 1, '2018-07-18 06:49:31', 0),
(388, 1, 2, '2018-07-18 06:49:36', 0),
(389, 1, 3, '2018-07-18 06:49:36', 0),
(390, 1, 4, '2018-07-18 06:49:36', 0),
(391, 1, 6, '2018-07-18 06:49:37', 0),
(392, 1, 7, '2018-07-18 06:49:38', 0),
(393, 11, 1, '2018-07-18 06:49:38', 0),
(394, 11, 2, '2018-07-18 06:49:39', 0),
(395, 11, 3, '2018-07-18 06:49:39', 0),
(396, 11, 4, '2018-07-18 06:49:40', 0),
(397, 11, 5, '2018-07-18 06:49:40', 0),
(398, 11, 7, '2018-07-18 06:49:41', 0),
(399, 11, 6, '2018-07-18 06:49:42', 0),
(400, 6, 5, '2018-07-18 06:49:47', 0),
(401, 9, 1, '2018-07-18 06:49:49', 0),
(402, 9, 3, '2018-07-18 06:49:50', 0),
(403, 1, 5, '2018-07-18 06:50:34', 0),
(404, 3, 1, '2018-07-18 06:51:02', 0),
(405, 3, 2, '2018-07-18 06:51:03', 0),
(406, 3, 3, '2018-07-18 06:51:03', 0),
(407, 3, 4, '2018-07-18 06:51:04', 0),
(408, 3, 5, '2018-07-18 06:51:04', 0),
(409, 3, 6, '2018-07-18 06:51:04', 0),
(410, 3, 7, '2018-07-18 06:51:05', 0),
(411, 3, 1, '2018-07-18 06:51:50', 0),
(412, 3, 2, '2018-07-18 06:51:51', 0),
(413, 3, 3, '2018-07-18 06:51:51', 0),
(414, 3, 4, '2018-07-18 06:51:52', 0),
(415, 3, 5, '2018-07-18 06:51:53', 0),
(416, 11, 5, '2018-07-18 06:52:11', 0),
(417, 4, 1, '2018-07-18 06:52:33', 0),
(418, 4, 2, '2018-07-18 06:52:33', 0),
(419, 4, 1, '2018-07-18 06:52:33', 0),
(420, 4, 2, '2018-07-18 06:52:34', 0),
(421, 4, 3, '2018-07-18 06:52:34', 0),
(422, 4, 4, '2018-07-18 06:52:35', 0),
(423, 4, 3, '2018-07-18 06:52:35', 0),
(424, 4, 4, '2018-07-18 06:52:35', 0),
(425, 4, 5, '2018-07-18 06:52:35', 0),
(426, 4, 6, '2018-07-18 06:52:36', 0),
(427, 4, 7, '2018-07-18 06:52:36', 0),
(428, 4, 7, '2018-07-18 06:52:37', 0),
(429, 4, 6, '2018-07-18 06:52:37', 0),
(430, 4, 5, '2018-07-18 06:52:38', 0),
(431, 4, 2, '2018-07-18 06:52:52', 0),
(432, 4, 3, '2018-07-18 06:52:52', 0),
(433, 4, 6, '2018-07-18 06:52:53', 0),
(434, 4, 7, '2018-07-18 06:52:53', 0),
(435, 4, 1, '2018-07-18 06:53:00', 1),
(436, 4, 2, '2018-07-18 06:53:01', 1),
(437, 4, 3, '2018-07-18 06:53:01', 1),
(438, 4, 4, '2018-07-18 06:53:02', 1),
(439, 4, 5, '2018-07-18 06:53:02', 1),
(440, 4, 6, '2018-07-18 06:53:03', 1),
(441, 4, 7, '2018-07-18 06:53:03', 1),
(442, 3, 7, '2018-07-18 06:54:50', 0),
(443, 1, 3, '2018-07-18 06:56:39', 0),
(444, 10, 1, '2018-07-18 06:56:40', 0),
(445, 6, 1, '2018-07-18 06:56:41', 0),
(446, 6, 2, '2018-07-18 06:56:53', 0),
(447, 6, 3, '2018-07-18 06:56:55', 0),
(448, 6, 2, '2018-07-18 06:57:15', 0),
(449, 1, 1, '2018-07-18 06:57:16', 0),
(450, 6, 4, '2018-07-18 06:57:16', 0),
(451, 6, 6, '2018-07-18 06:57:18', 0),
(452, 1, 1, '2018-07-18 06:57:28', 0),
(453, 1, 1, '2018-07-18 06:57:29', 0),
(454, 1, 7, '2018-07-18 06:57:31', 0),
(455, 1, 1, '2018-07-18 06:57:34', 0),
(456, 7, 7, '2018-07-18 06:57:36', 1),
(457, 1, 5, '2018-07-18 06:57:37', 0),
(458, 1, 4, '2018-07-18 06:57:38', 0),
(459, 7, 1, '2018-07-18 06:57:39', 1),
(460, 6, 2, '2018-07-18 06:57:39', 0),
(461, 1, 3, '2018-07-18 06:57:39', 0),
(462, 6, 3, '2018-07-18 06:57:39', 0),
(463, 1, 2, '2018-07-18 06:57:40', 0),
(464, 1, 1, '2018-07-18 06:57:40', 0),
(465, 6, 4, '2018-07-18 06:57:40', 0),
(466, 7, 2, '2018-07-18 06:57:40', 1),
(467, 2, 6, '2018-07-18 06:57:42', 1),
(468, 6, 5, '2018-07-18 06:57:43', 0),
(469, 6, 6, '2018-07-18 06:57:44', 0),
(470, 1, 6, '2018-07-18 06:57:44', 0),
(471, 6, 7, '2018-07-18 06:57:45', 0),
(472, 2, 5, '2018-07-18 06:57:45', 1),
(473, 7, 4, '2018-07-18 06:57:45', 1),
(474, 1, 3, '2018-07-18 06:57:46', 0),
(475, 1, 2, '2018-07-18 06:57:47', 0),
(476, 1, 1, '2018-07-18 06:57:48', 0),
(477, 1, 4, '2018-07-18 06:57:48', 0),
(478, 2, 1, '2018-07-18 06:57:48', 0),
(479, 1, 7, '2018-07-18 06:57:50', 0),
(480, 1, 2, '2018-07-18 06:57:53', 0),
(481, 1, 5, '2018-07-18 06:57:55', 0),
(482, 6, 7, '2018-07-18 06:57:55', 0),
(483, 2, 2, '2018-07-18 06:57:57', 1),
(484, 2, 1, '2018-07-18 06:57:57', 1),
(485, 16, 1, '2018-07-18 06:57:58', 0),
(486, 16, 2, '2018-07-18 06:57:58', 0),
(487, 16, 3, '2018-07-18 06:57:59', 0),
(488, 6, 1, '2018-07-18 06:57:59', 0),
(489, 9, 3, '2018-07-18 06:58:01', 0),
(490, 1, 7, '2018-07-18 06:58:02', 0),
(491, 9, 5, '2018-07-18 06:58:04', 0),
(492, 1, 7, '2018-07-18 06:58:18', 0),
(493, 10, 2, '2018-07-18 06:58:31', 0),
(494, 10, 3, '2018-07-18 06:58:32', 1),
(495, 10, 4, '2018-07-18 06:58:33', 1),
(496, 10, 6, '2018-07-18 06:58:34', 0),
(497, 10, 7, '2018-07-18 06:58:34', 0),
(498, 3, 1, '2018-07-18 06:58:59', 0),
(499, 11, 2, '2018-07-18 06:58:59', 0),
(500, 3, 2, '2018-07-18 06:59:00', 0),
(501, 3, 3, '2018-07-18 06:59:00', 0),
(502, 11, 3, '2018-07-18 06:59:00', 0),
(503, 3, 5, '2018-07-18 06:59:00', 0),
(504, 11, 6, '2018-07-18 06:59:02', 0),
(505, 3, 7, '2018-07-18 06:59:03', 0),
(506, 11, 7, '2018-07-18 06:59:04', 0),
(507, 11, 1, '2018-07-18 06:59:06', 0),
(508, 3, 4, '2018-07-18 06:59:07', 0),
(509, 3, 1, '2018-07-18 06:59:08', 0),
(510, 3, 2, '2018-07-18 06:59:08', 0),
(511, 3, 3, '2018-07-18 06:59:09', 0),
(512, 3, 5, '2018-07-18 06:59:09', 0),
(513, 3, 7, '2018-07-18 06:59:19', 0),
(514, 3, 6, '2018-07-18 06:59:20', 0),
(515, 11, 4, '2018-07-18 06:59:21', 0),
(516, 3, 4, '2018-07-18 06:59:21', 0),
(517, 3, 5, '2018-07-18 06:59:28', 1),
(518, 3, 4, '2018-07-18 06:59:29', 1),
(519, 3, 6, '2018-07-18 06:59:30', 1),
(520, 3, 2, '2018-07-18 06:59:30', 1),
(521, 3, 7, '2018-07-18 06:59:30', 1),
(522, 3, 3, '2018-07-18 06:59:30', 0),
(523, 11, 2, '2018-07-18 06:59:38', 1),
(524, 11, 3, '2018-07-18 06:59:39', 1),
(525, 11, 4, '2018-07-18 06:59:39', 1),
(526, 11, 5, '2018-07-18 06:59:40', 1),
(527, 11, 6, '2018-07-18 06:59:41', 1),
(528, 11, 7, '2018-07-18 06:59:41', 1),
(529, 3, 3, '2018-07-18 06:59:49', 1),
(530, 5, 1, '2018-07-18 07:00:11', 1),
(531, 5, 2, '2018-07-18 07:00:12', 1),
(532, 5, 4, '2018-07-18 07:00:16', 1),
(533, 5, 6, '2018-07-18 07:00:17', 1),
(534, 5, 7, '2018-07-18 07:00:17', 1),
(535, 19, 1, '2018-07-18 07:00:25', 1),
(536, 19, 2, '2018-07-18 07:00:25', 1),
(537, 19, 3, '2018-07-18 07:00:26', 1),
(538, 19, 4, '2018-07-18 07:00:26', 1),
(539, 19, 5, '2018-07-18 07:00:27', 1),
(540, 19, 6, '2018-07-18 07:00:27', 1),
(541, 19, 7, '2018-07-18 07:00:28', 1),
(542, 19, 8, '2018-07-18 07:00:28', 1),
(543, 23, 1, '2018-07-18 07:00:43', 1),
(544, 23, 2, '2018-07-18 07:00:43', 1),
(545, 23, 3, '2018-07-18 07:00:44', 1),
(546, 23, 4, '2018-07-18 07:00:44', 1),
(547, 23, 5, '2018-07-18 07:00:45', 1),
(548, 23, 6, '2018-07-18 07:00:45', 1),
(549, 23, 7, '2018-07-18 07:00:46', 1),
(550, 23, 8, '2018-07-18 07:00:47', 1),
(551, 25, 1, '2018-07-18 07:00:52', 1),
(552, 25, 2, '2018-07-18 07:00:53', 1),
(553, 25, 3, '2018-07-18 07:00:53', 1),
(554, 25, 4, '2018-07-18 07:00:54', 1),
(555, 25, 5, '2018-07-18 07:00:54', 1),
(556, 25, 6, '2018-07-18 07:00:55', 1),
(557, 25, 7, '2018-07-18 07:00:55', 1),
(558, 25, 8, '2018-07-18 07:00:56', 1),
(559, 29, 8, '2018-07-18 07:01:05', 1),
(560, 31, 1, '2018-07-18 07:01:13', 1),
(561, 31, 2, '2018-07-18 07:01:13', 1),
(562, 31, 3, '2018-07-18 07:01:14', 1),
(563, 31, 4, '2018-07-18 07:01:14', 1),
(564, 31, 5, '2018-07-18 07:01:15', 1),
(565, 31, 6, '2018-07-18 07:01:15', 1),
(566, 31, 7, '2018-07-18 07:01:16', 1),
(567, 31, 8, '2018-07-18 07:01:16', 1),
(568, 33, 1, '2018-07-18 07:01:22', 1),
(569, 33, 2, '2018-07-18 07:01:23', 1),
(570, 33, 3, '2018-07-18 07:01:23', 1),
(571, 33, 4, '2018-07-18 07:01:23', 1),
(572, 33, 5, '2018-07-18 07:01:24', 1),
(573, 33, 6, '2018-07-18 07:01:24', 1),
(574, 33, 7, '2018-07-18 07:01:25', 1),
(575, 33, 8, '2018-07-18 07:01:25', 1),
(576, 34, 1, '2018-07-18 07:01:31', 1),
(577, 34, 2, '2018-07-18 07:01:31', 1),
(578, 34, 3, '2018-07-18 07:01:32', 1),
(579, 34, 4, '2018-07-18 07:01:32', 1),
(580, 34, 5, '2018-07-18 07:01:33', 1),
(581, 34, 6, '2018-07-18 07:01:33', 1),
(582, 34, 7, '2018-07-18 07:01:33', 1),
(583, 34, 8, '2018-07-18 07:01:34', 1),
(584, 37, 1, '2018-07-18 07:01:39', 1),
(585, 37, 2, '2018-07-18 07:01:39', 1),
(586, 37, 3, '2018-07-18 07:01:40', 1),
(587, 37, 4, '2018-07-18 07:01:40', 1),
(588, 37, 5, '2018-07-18 07:01:41', 1),
(589, 37, 6, '2018-07-18 07:01:42', 1),
(590, 37, 7, '2018-07-18 07:01:43', 1),
(591, 37, 8, '2018-07-18 07:01:43', 1),
(592, 39, 8, '2018-07-18 07:01:58', 1),
(593, 44, 1, '2018-07-18 07:02:05', 1),
(594, 44, 2, '2018-07-18 07:02:05', 1),
(595, 44, 3, '2018-07-18 07:02:06', 1),
(596, 44, 4, '2018-07-18 07:02:07', 1),
(597, 44, 5, '2018-07-18 07:02:07', 1),
(598, 44, 6, '2018-07-18 07:02:08', 1),
(599, 44, 7, '2018-07-18 07:02:08', 1),
(600, 44, 8, '2018-07-18 07:02:09', 1),
(601, 45, 1, '2018-07-18 07:02:15', 1),
(602, 45, 2, '2018-07-18 07:02:15', 1),
(603, 45, 3, '2018-07-18 07:02:16', 1),
(604, 45, 4, '2018-07-18 07:02:16', 1),
(605, 45, 5, '2018-07-18 07:02:17', 1),
(606, 45, 6, '2018-07-18 07:02:17', 1),
(607, 45, 7, '2018-07-18 07:02:17', 1),
(608, 45, 8, '2018-07-18 07:02:18', 1),
(609, 47, 1, '2018-07-18 07:02:23', 1),
(610, 47, 2, '2018-07-18 07:02:23', 1),
(611, 47, 3, '2018-07-18 07:02:23', 1),
(612, 47, 4, '2018-07-18 07:02:24', 1),
(613, 47, 5, '2018-07-18 07:02:24', 1),
(614, 47, 6, '2018-07-18 07:02:25', 1),
(615, 47, 7, '2018-07-18 07:02:25', 1),
(616, 47, 8, '2018-07-18 07:02:26', 1),
(617, 46, 7, '2018-07-18 07:03:36', 1),
(618, 41, 7, '2018-07-18 07:03:51', 1),
(619, 28, 1, '2018-07-18 07:07:15', 1),
(620, 28, 2, '2018-07-18 07:07:15', 1),
(621, 28, 3, '2018-07-18 07:07:16', 1),
(622, 9, 8, '2018-07-18 07:11:28', 1),
(623, 1, 6, '2018-07-18 08:02:52', 0),
(624, 1, 4, '2018-07-18 08:03:00', 0),
(625, 1, 8, '2018-07-18 08:03:02', 0),
(626, 1, 7, '2018-07-18 08:03:02', 0),
(627, 1, 6, '2018-07-18 08:03:03', 0),
(628, 10, 7, '2018-07-18 08:54:35', 1),
(629, 10, 6, '2018-07-18 08:54:37', 1),
(630, 10, 2, '2018-07-18 08:54:53', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roler`
--
ALTER TABLE `roler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roler_access`
--
ALTER TABLE `roler_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roler`
--
ALTER TABLE `user_roler`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `roler`
--
ALTER TABLE `roler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `roler_access`
--
ALTER TABLE `roler_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- 使用表AUTO_INCREMENT `user_roler`
--
ALTER TABLE `user_roler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=631;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
