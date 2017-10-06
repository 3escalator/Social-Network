-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2017 at 07:41 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialnetwork`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id_comment` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `comment` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id_comment`, `id_user`, `id_post`, `comment`, `createdAt`) VALUES
(1, 13, 7, 'test test ', '2017-09-06 11:07:17'),
(2, 13, 7, 'testtdsaffdasdffdsafdsa', '2017-09-06 11:14:53'),
(3, 13, 7, 'faasdfsafdadsffsad', '2017-09-06 11:14:58'),
(4, 13, 7, 'adfsfadsfdadfsadffad', '2017-09-06 11:15:02'),
(5, 13, 7, 'afdsadfafsd', '2017-09-06 11:15:06'),
(6, 13, 7, 'test3', '2017-09-06 11:15:08'),
(7, 13, 11, 'comment1', '2017-09-10 17:54:46'),
(8, 13, 11, 'comment2', '2017-09-10 17:55:11'),
(9, 13, 11, '', '2017-09-10 18:04:06'),
(10, 13, 11, '', '2017-09-10 18:04:17'),
(11, 13, 11, 'test3', '2017-09-10 18:04:23'),
(12, 13, 11, '', '2017-09-10 18:04:36'),
(13, 13, 11, '', '2017-09-10 18:05:20'),
(14, 13, 11, '', '2017-09-10 18:06:20'),
(15, 13, 11, '', '2017-09-10 18:06:28'),
(16, 13, 0, '', '2017-09-10 18:08:01'),
(17, 13, 0, '', '2017-09-10 18:08:11'),
(18, 13, 11, '', '2017-09-10 18:08:41'),
(19, 13, 11, '', '2017-09-10 18:08:56'),
(20, 13, 11, '', '2017-09-10 18:09:00'),
(21, 13, 11, 'sasdf', '2017-09-10 18:09:04'),
(22, 13, 11, '', '2017-09-10 18:09:12'),
(23, 13, 3, 'sgds', '2017-10-05 16:10:43');

-- --------------------------------------------------------

--
-- Table structure for table `friendrequest`
--

CREATE TABLE `friendrequest` (
  `id_friendrequest` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_friend` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id_friend` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_frienduser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id_friend`, `id_user`, `id_frienduser`) VALUES
(5, 13, 15),
(6, 15, 13),
(9, 14, 13),
(10, 13, 14);

-- --------------------------------------------------------

--
-- Table structure for table `friend_posts`
--

CREATE TABLE `friend_posts` (
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_friend` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend_posts`
--

INSERT INTO `friend_posts` (`id_post`, `id_user`, `id_friend`, `description`, `image`, `createdAt`) VALUES
(1, 13, 15, 'Friend POst 1', '', '2017-10-05 15:49:14'),
(2, 13, 15, 'Friend Post 2', NULL, '2017-10-05 15:58:37'),
(3, 13, 15, 'Friend Post 3', '', '2017-10-05 15:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id_likes` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `liked` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id_likes`, `id_user`, `id_post`, `liked`) VALUES
(8, 13, 7, 1),
(9, 13, 11, 1),
(10, 13, 3, 1),
(11, 13, 2, 1),
(12, 13, 1, 1),
(13, 13, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id_message` int(11) NOT NULL,
  `id_from` int(11) NOT NULL,
  `id_to` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id_message`, `id_from`, `id_to`, `message`, `createdAt`) VALUES
(1, 15, 13, 'Testing Message 1', '2017-10-06 15:54:24'),
(2, 13, 15, 'testing message2', '2017-10-06 15:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id_post`, `id_user`, `description`, `image`, `createdAt`) VALUES
(7, 13, 'test test test test test test test test test test test test test test test test test test test test test test test test test ', '', '2017-09-06 10:31:47'),
(8, 13, 'test test', '', '2017-09-10 17:51:40'),
(9, 13, 'test3', '', '2017-09-10 17:53:39'),
(10, 15, 'test3', '', '2017-10-04 15:46:22'),
(11, 15, 'test4', '', '2017-10-04 15:46:20'),
(12, 13, 'test7', '', '2017-10-05 15:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `designation` varchar(255) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `university` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `skills` text,
  `aboutme` text,
  `profileimage` varchar(255) DEFAULT NULL,
  `online` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `name`, `email`, `password`, `createdAt`, `designation`, `degree`, `university`, `city`, `country`, `skills`, `aboutme`, `profileimage`, `online`) VALUES
(13, 'John Smith', 'test@test.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2017-09-04 07:45:47', 'Web Developer', 'B.Tech', 'ABCB', 'Sydney', 'Australia', 'PHP HTML CSS', 'I like to code and teach.', '59d7a6bec555b.png', 0),
(14, 'XYZ', 'test2@test.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2017-09-04 07:45:47', 'Web Developer', 'B.Tech', 'ABCB', 'Sydney', 'Australia', 'PHP HTML CSS', 'I like to code and teach.', '59ad28c885f9c.png', 0),
(15, 'BCD', 'test1@test.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2017-09-04 07:45:47', 'Web Developer', 'B.Tech', 'ABCB', 'Sydney', 'Australia', 'PHP HTML CSS', 'I like to code and teach.', '59d7a6bec555b.png', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comment`);

--
-- Indexes for table `friendrequest`
--
ALTER TABLE `friendrequest`
  ADD PRIMARY KEY (`id_friendrequest`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id_friend`);

--
-- Indexes for table `friend_posts`
--
ALTER TABLE `friend_posts`
  ADD PRIMARY KEY (`id_post`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id_likes`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id_message`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `friendrequest`
--
ALTER TABLE `friendrequest`
  MODIFY `id_friendrequest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id_friend` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `friend_posts`
--
ALTER TABLE `friend_posts`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id_likes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
