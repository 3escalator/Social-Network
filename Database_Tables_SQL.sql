-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2017 at 05:18 PM
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
(36, 13, 12, 'Comment 1', '2017-10-11 14:57:31'),
(37, 13, 9, 'Comment 2', '2017-10-11 14:57:38'),
(38, 13, 9, 'Comment 3', '2017-10-11 14:57:43'),
(39, 13, 7, 'Comment 4', '2017-10-11 14:57:48'),
(40, 13, 12, 'Comment5', '2017-10-11 14:59:18'),
(41, 13, 8, 'Comment 6', '2017-10-11 14:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id_event` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id_event`, `id_user`, `name`, `color`) VALUES
(9, 13, 'Hello', 'text-navy'),
(10, 13, 'New Event', 'text-fuchsia'),
(11, 13, 'New', 'text-yellow');

-- --------------------------------------------------------

--
-- Table structure for table `event_calendar`
--

CREATE TABLE `event_calendar` (
  `id_calendar` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `day` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `bgColor` varchar(255) NOT NULL,
  `borderColor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(9, 14, 13),
(10, 13, 14),
(17, 13, 19),
(18, 19, 13);

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
(13, 13, 10, 1),
(14, 13, 2, 1);

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
(67, 13, 19, 'fsdafd', '2017-10-11 15:37:05'),
(68, 19, 13, 'fsdasfd', '2017-10-11 15:37:16'),
(69, 13, 14, 'gsfgfsf', '2017-10-15 16:30:40'),
(70, 13, 19, 'safdssfad', '2017-10-15 16:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id_page` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id_page`, `id_user`, `name`, `description`, `logo`, `createdAt`) VALUES
(2, 13, 'Page 1', 'My First Page', '59dcd6f24f174.png', '2017-10-10 14:19:30'),
(3, 13, 'Page 2', 'MY Second page', '59dcd7e2283a1.png', '2017-10-10 14:23:30'),
(4, 14, 'Page 3', 'somethinga sadfj sadf[kfsd[a sd', '59e3887b20b9d.png', '2017-10-15 16:10:35'),
(5, 14, 'Page 4', 'adfdsffsda affdsa fsd', '59e38888a2e35.jpg', '2017-10-15 16:10:48'),
(6, 13, 'Page 5', 'fafsdafad', '59e3889d6ff9f.jpg', '2017-10-15 16:11:09');

-- --------------------------------------------------------

--
-- Table structure for table `page_comments`
--

CREATE TABLE `page_comments` (
  `id_comment` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `comment` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_comments`
--

INSERT INTO `page_comments` (`id_comment`, `id_user`, `id_post`, `comment`, `createdAt`) VALUES
(6, 13, 4, 'Comment 1', '2017-10-11 15:00:47'),
(7, 13, 2, 'Comment 2', '2017-10-11 15:00:52'),
(8, 13, 1, 'Comment 3', '2017-10-11 15:00:56'),
(9, 13, 2, 'Comment 4', '2017-10-11 15:00:59'),
(10, 19, 2, 'some comment', '2017-10-11 15:22:10'),
(11, 19, 1, 'hello', '2017-10-11 15:24:11');

-- --------------------------------------------------------

--
-- Table structure for table `page_followers`
--

CREATE TABLE `page_followers` (
  `id_follower` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_page` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_followers`
--

INSERT INTO `page_followers` (`id_follower`, `id_user`, `id_page`) VALUES
(3, 13, 2);

-- --------------------------------------------------------

--
-- Table structure for table `page_likes`
--

CREATE TABLE `page_likes` (
  `id_likes` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `liked` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_likes`
--

INSERT INTO `page_likes` (`id_likes`, `id_user`, `id_post`, `liked`) VALUES
(1, 13, 2, 1),
(2, 15, 2, 1),
(3, 15, 1, 1),
(4, 13, 1, 1),
(5, 15, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `page_posts`
--

CREATE TABLE `page_posts` (
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_page` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_posts`
--

INSERT INTO `page_posts` (`id_post`, `id_user`, `id_page`, `description`, `image`, `video`, `youtube`, `createdAt`) VALUES
(1, 13, 2, 'dsafddfs', '', '', '', '2017-10-10 14:40:17'),
(2, 13, 2, 'afsdfsd', '', '', '', '2017-10-10 14:40:19'),
(4, 13, 2, 'post3', '', '', '', '2017-10-10 14:42:14'),
(5, 13, 2, 'afdsfds', '', '59ea321cea494.mp4', '', '2017-10-20 17:27:56'),
(6, 13, 2, 'asfdsdfasd https://www.youtube.com/watch?v=RgKAFK5djSk afasfdsafds', '', '', 'RgKAFK5djSk', '2017-10-20 17:28:32');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id_post`, `id_user`, `description`, `image`, `video`, `youtube`, `createdAt`) VALUES
(7, 13, 'test test test test test test test test test test test test test test test test test test test test test test test test test ', '', '', '', '2017-09-06 10:31:47'),
(8, 13, 'test test', '', '', '', '2017-09-10 17:51:40'),
(9, 13, 'test3', '', '', '', '2017-09-10 17:53:39'),
(10, 15, 'test3', '', '', '', '2017-10-04 15:46:22'),
(11, 15, 'test4', '', '', '', '2017-10-04 15:46:20'),
(12, 13, 'test7', '', '', '', '2017-10-05 15:59:10'),
(13, 13, 'no video post', '', '', '', '2017-10-20 17:09:25'),
(14, 13, 'video post', '', '59ea2dd69816f.mp4', '', '2017-10-20 17:09:42'),
(15, 13, 'Video & Image', '59ea2ea7aeecf.jpg', '59ea2ea7af579.mp4', '', '2017-10-20 17:13:11'),
(16, 13, 'Testing youtube videos https://youtu.be/RgKAFK5djSk asfdsajfidsa fpjsd aiofj adsiojf ioasj dfofs', '', '', 'RgKAFK5djSk', '2017-10-20 17:20:43'),
(17, 13, 'asdffsd sadfasf  https://www.youtube.com/watch?v=RgKAFK5djSk asdfjsapdfj sadfsadjf', '', '', 'RgKAFK5djSk', '2017-10-20 17:23:29'),
(18, 13, 'asasfd sfsadf asdf sad fsdfdsadsf dfsdfasdfs', '', '', '', '2017-10-20 17:23:47'),
(19, 13, 'asdfafsddsafv https://www.youtube.com/watch?v=RgKAFK5djSk dfsadfsdfsfds', '', '', 'RgKAFK5djSk', '2017-10-20 17:25:06'),
(20, 13, 'asdfsfadsfds', '', '59ea3178ab919.mp4', '', '2017-10-20 17:25:12');

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
(13, 'John Smith', 'test@test.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2017-09-04 07:45:47', 'Web Developer', 'B.Tech', 'ABCB', 'Sydney', 'Australia', 'PHP HTML CSS', 'I like to code and teach.', '59d7a6bec555b.png', 1),
(14, 'XYZ', 'test2@test.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2017-09-04 07:45:47', 'Web Developer', 'B.Tech', 'ABCB', 'Sydney', 'Australia', 'PHP HTML CSS', 'I like to code and teach.', '59d7a48989ea1.png', 0),
(15, 'BCD', 'test1@test.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2017-09-04 07:45:47', 'Web Developer', 'B.Tech', 'ABCB', 'Sydney', 'Australia', 'PHP HTML CSS', 'I like to code and teach.', '59d7a6bec555b.png', 0),
(19, 'tester', 'test@tes7t.com', 'MzYwNmZkMmJiYzg3MDQ1Nzc4ZDIwMmJhNGUzZTg4ZWQ=', '2017-10-11 15:19:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_followers`
--

CREATE TABLE `user_followers` (
  `id_follower` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_userfollower` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_followers`
--

INSERT INTO `user_followers` (`id_follower`, `id_user`, `id_userfollower`) VALUES
(2, 13, 14),
(3, 13, 15),
(5, 14, 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comment`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `event_calendar`
--
ALTER TABLE `event_calendar`
  ADD PRIMARY KEY (`id_calendar`);

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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id_page`);

--
-- Indexes for table `page_comments`
--
ALTER TABLE `page_comments`
  ADD PRIMARY KEY (`id_comment`);

--
-- Indexes for table `page_followers`
--
ALTER TABLE `page_followers`
  ADD PRIMARY KEY (`id_follower`);

--
-- Indexes for table `page_likes`
--
ALTER TABLE `page_likes`
  ADD PRIMARY KEY (`id_likes`);

--
-- Indexes for table `page_posts`
--
ALTER TABLE `page_posts`
  ADD PRIMARY KEY (`id_post`);

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
-- Indexes for table `user_followers`
--
ALTER TABLE `user_followers`
  ADD PRIMARY KEY (`id_follower`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `event_calendar`
--
ALTER TABLE `event_calendar`
  MODIFY `id_calendar` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `friendrequest`
--
ALTER TABLE `friendrequest`
  MODIFY `id_friendrequest` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id_friend` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `friend_posts`
--
ALTER TABLE `friend_posts`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id_likes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `page_comments`
--
ALTER TABLE `page_comments`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `page_followers`
--
ALTER TABLE `page_followers`
  MODIFY `id_follower` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `page_likes`
--
ALTER TABLE `page_likes`
  MODIFY `id_likes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `page_posts`
--
ALTER TABLE `page_posts`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `user_followers`
--
ALTER TABLE `user_followers`
  MODIFY `id_follower` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
