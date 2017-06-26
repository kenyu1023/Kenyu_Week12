-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 26, 2017 at 04:54 PM
-- Server version: 5.5.51-38.2
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kenyusak_Kenyu_Week12`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_tb`
--

CREATE TABLE IF NOT EXISTS `blog_tb` (
  `id` int(11) NOT NULL,
  `date` varchar(20) CHARACTER SET latin1 NOT NULL,
  `title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `content` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `blog_tb`
--

INSERT INTO `blog_tb` (`id`, `date`, `title`, `content`) VALUES
(16, 'Thursday,June, 1,201', 'My Blog 22!', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam pellentesque ullamcorper neque in lobortis. Phasellus egestas et ipsum in elementum. Praesent magna magna, interdum sit amet sodales ac, convallis sit amet massa. Proin efficitur sed augue vitae pharetra. Donec tellus elit, convallis sit amet diam quis, ornare sollicitudin mi. Duis luctus arcu sed est interdum, ut vulputate nisl lobortis. Sed vulputate, nulla eget volutpat euismod, diam lorem fringilla purus, et rhoncus lectus nulla sit amet urna. Proin egestas faucibus massa, quis venenatis elit consequat ut. Duis quis sapien luctus, dictum velit eget, viverra nibh. Aliquam mauris nunc, pulvinar ut eros id, facilisis euismod nunc. Morbi ultrices velit non tortor vehicula, a tristique diam volutpat. Mauris eget molestie orci. Quisque nec massa et tortor condimentum efficitur vel quis elit. Cras tristique lobortis tempor.</p>\r\n\r\n<p><img alt="" src="img/blog/blog-white.jpg" style="height:595px; width:1344px" /></p>\r\n'),
(19, 'Friday,June, 2,2017', 'My favorite filmmaker', '<p>My favorite Filmmaker</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Do you know Jean-Luc Godard? He is a French writer-derector and got over 100 films and TV projects as a director and&nbsp;</p>\r\n\r\n<p>he&rsquo;s been doing it for over 50years.I found his movies when I was a university student, and I became a big fan of his works.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>So today, I really want to share my favourite his movers with small description.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Breathless (1960)</p>\r\n\r\n<p>Starting as a gangster film and becoming a romance film as the plot develops, Breathless breaks the rules of storytelling.Even if the film starts with a crime, its main focus is the relationship between the main characters and their intimacy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Vivre Sa Vie (1962)</p>\r\n\r\n<p>Twelve episodic tales in the life of a Parisian woman and her slow descent into prostitution.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Contempt (1963)</p>\r\n\r\n<p>Screenwriter Paul Javal&#39;s marriage to his wife Camille disintegrates during movie production as she spends time with the producer. Layered conflicts between art and business ensue.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Alphaville(1965)</p>\r\n\r\n<p>The film follows the story of a young woman from Alphaville who breaks the law, falling in love with the American detective who was there to investigate her planet. Alphaville is another one of Godard&rsquo;s essays about art, this time the art of words and their power to support reality.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Goodbye to Language(2014)</p>\r\n\r\n<p>Goodbye to language is Godard&rsquo;s first 3D film. The story follows a couple having an affair, in two different yet very similar versions portrayed by two different pairs of characters.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Also he has written many quotes. I will share with you some.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A story should have a beginning, a middle, and an end... but not necessarily in that order.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Photography is truth. The cinema is truth twenty-four times per second.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cinema is the most beautiful fraud in the world.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This quotes is the most popular one and this is showing his passion for making movies.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Today, I introduced my favorite filmmaker jean-Luc Godard. I hope you get interest about him after read this post. Thanks!</p>\r\n\r\n<p>&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `login_tb`
--

CREATE TABLE IF NOT EXISTS `login_tb` (
  `id` int(11) NOT NULL,
  `uusername` varchar(50) NOT NULL,
  `upassword` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `portfolio_tb` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `main_img` varchar(500) NOT NULL,
  `sub_img` text NOT NULL,
  `embed` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portfolio_tb`
--

INSERT INTO `portfolio_tb` (`id`, `title`, `description`, `main_img`, `sub_img`, `embed`) VALUES
(2, 'My Vanarts Project', 'My Vanarts Project Description', 'img/A1.jpg', 'img/A2.jpg@img/A3.jpg@img/A4.jpg@img/A5.jpg', ''),
(3, 'Vanarts Assignment ', 'Vanarts Assignment Description', 'img/C1.jpg', 'img/C2.jpg@img/C3.jpg', ''),
(4, 'This is test post', 'lorem psum', 'img/modal_0cdac37c-c8b6-453e-ae80-bd6530f63f70.jpg', 'img/snake_v01.jpg', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `login_tb`
--
ALTER TABLE `login_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `portfolio_tb`
--
ALTER TABLE `portfolio_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
