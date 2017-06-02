-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 02, 2017 at 03:50 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `term3_Week12_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_tb`
--

CREATE TABLE `blog_tb` (
  `id` int(11) NOT NULL,
  `date` varchar(20) CHARACTER SET latin1 NOT NULL,
  `title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `content` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `blog_tb`
--

INSERT INTO `blog_tb` (`id`, `date`, `title`, `content`) VALUES
(4, 'fsdafsdfsadff', 'asgsdfgsd', '<p>sdfgsdfg</p>\r\n\r\n<p>afsdfsdfsdfas</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>asfasfasdfasdfasd</p>\r\n'),
(6, 'asfasfasdf', 'asdfadsf  asdfasdfa', 'fgsdfgsdfgfgsdg\nsdfgsdfgsdfgsdfg\nsdfgsdf'),
(7, 'asfasfasdf', 'dgsdgsdgs', 'fgsdfgsdfgfgsdg\nsdfgsdfgsdfgsdfg\nsdfgsdf'),
(8, 'asdfasdfasdf', 'jdfkljasd;f', ''),
(11, 'Monday,May, 29,2017', 'this is a test post', '<p>this is a fake post</p>\r\n\r\n<p>æ—¥æœ¬èªžã‚‚æ‰“ã¦ã‚‹</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(12, 'Monday,May, 29,2017', 'test', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n'),
(13, 'Monday,May, 29,2017', 'lorem ipsum', '<p>Lorem ipsum dolor sit amet,</p>\r\n\r\n<p>consectetur adipiscing elit, sed do eiusmod tempor</p>\r\n\r\n<p>incididunt ut labore et dolore magna aliqua. Ut enim ad</p>\r\n\r\n<p>minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip</p>\r\n\r\n<p>ex ea commodo consequat. Duis aute irure dolor in</p>\r\n\r\n<p>reprehenderit in voluptate velit esse cillum dolore eu fugiat</p>\r\n\r\n<p>nulla pariatur. Excepteur sint occaecat cupidatat non proident,</p>\r\n\r\n<p>sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n'),
(14, 'Friday,June, 2,2017', 'jytjgj', '<p><img alt=\"\" src=\"img/blog/sky-beach-vacation-summer-large.jpeg\" style=\"height:593px; width:890px\" /></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `login_tb`
--

CREATE TABLE `login_tb` (
  `id` int(11) NOT NULL,
  `uusername` varchar(50) NOT NULL,
  `upassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_tb`
--

INSERT INTO `login_tb` (`id`, `uusername`, `upassword`) VALUES
(5, 'ken', '$2y$10$78qunpdf7yv87wd5tSvTQ.fzuUEhGiqppyWLwA1.c2CkrpdbfOElG'),
(6, 'user', '$2y$10$V3wO.HwUF8rM8Y3hfirm2.ZSoJ4NNxYSuoFopdRBsjrXjjYGQwadO');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_tb`
--

CREATE TABLE `portfolio_tb` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `main_img` varchar(500) NOT NULL,
  `sub_img` text NOT NULL,
  `embed` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portfolio_tb`
--

INSERT INTO `portfolio_tb` (`id`, `title`, `description`, `main_img`, `sub_img`, `embed`) VALUES
(9, 'asdasd', 'asdasdasd', 'img/sea-3.jpg', '', ''),
(10, 'asdasd', 'asdasdasd', 'img/sea-3.jpg', 'img/48cec3898d3a37230f02fc762aace0c8.jpg@img/6738f89482af135f78fb4fd6f9a5b8a1.jpg', ''),
(11, 'rtetr', 'ertert', 'img/sky-beach-vacation-summer-large.jpeg', 'img/Super_Mushroom.png@img/sea-3.jpg@img/Lightning_FFXIII-2.png', '1865240'),
(12, 'test works', 'this is my works take a look ', 'img/A1.jpg', 'img/A2.jpg@img/A3.jpg@img/A4.jpg@img/A5.jpg', ''),
(13, 'my works ver 2', 'these are also my works \r\nreally good are they??\r\n', 'img/B1.jpg', 'img/B2.JPG@img/B3.JPG@img/B4.JPG@img/B5.jpg', ''),
(14, 'Nice works', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'img/C1.jpg', 'img/C2.jpg@img/C3.jpg', ''),
(15, 'Nice works 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'img/D1.png', 'img/D2.jpg', ''),
(16, 'lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'img/E1.png', 'img/E2.jpg', ''),
(17, 'test', 'click image ', 'img/modal_0cdac37c-c8b6-453e-ae80-bd6530f63f70.jpg', 'img/modal_c138df05-97e8-4fb4-8aea-bbce37ba96ce.jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_tb`
--
ALTER TABLE `blog_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_tb`
--
ALTER TABLE `login_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_tb`
--
ALTER TABLE `portfolio_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_tb`
--
ALTER TABLE `blog_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `login_tb`
--
ALTER TABLE `login_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `portfolio_tb`
--
ALTER TABLE `portfolio_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
