-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 09, 2020 at 02:01 PM
-- Server version: 5.5.62-cll
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
-- Database: `w0044421_stushare`
--

-- --------------------------------------------------------

--
-- Table structure for table `android_metadata`
--

CREATE TABLE `android_metadata` (
  `locale` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `android_metadata`
--

INSERT INTO `android_metadata` (`locale`) VALUES
('en_US');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `_id` int(16) NOT NULL,
  `createdAT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bookCode` int(16) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `edition` year(4) NOT NULL,
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `isbnNumber` int(16) NOT NULL,
  `details` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `_id` int(16) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `carCode` int(16) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `available_date` date NOT NULL,
  `model` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` year(4) NOT NULL,
  `mileage` int(11) NOT NULL,
  `price` double NOT NULL,
  `location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(10) NOT NULL,
  `eventCode` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `organizerId` varchar(255) NOT NULL,
  `orgEmail` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `startDate` varchar(255) NOT NULL,
  `startTime` varchar(255) NOT NULL,
  `endDate` varchar(255) NOT NULL,
  `endTime` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `imagePath` varchar(3000) NOT NULL,
  `like_count` int(11) NOT NULL,
  `rating` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `eventCode`, `createdAt`, `organizerId`, `orgEmail`, `status`, `startDate`, `startTime`, `endDate`, `endTime`, `title`, `detail`, `imagePath`, `like_count`, `rating`) VALUES
(2, 'ttt7', '2020-01-17 22:38:32', '2', 'david@georgebrown.ca', 'active', '20200329', '10:00', '20200331', '12:00', 'Job fair for T127 graduates2321312', 'Guys, are you looking for a job, come to E430 and build up your next work with your potential employer', 'https://cdn.pixabay.com/photo/2017/10/31/09/55/dream-job-2904780_960_720.jpg', 0, 3.7),
(3, '0b67', '2020-01-17 22:38:32', '2', 'david@georgebrown.ca', 'active', '20200402', '12:00', '20200604', '12:00', 'Fruit picking', 'Fruit picking event is on GBC now, admission fee $9 tax included. Please contact coordinator@lovefruitpicking.com', 'https://cdn.pixabay.com/photo/2018/09/08/00/25/apples-3661792_960_720.jpg', 0, 4.5),
(6, '2br4', '2020-03-03 00:45:48', '8', '1@georgebrown.ca', 'active', '20200303 ', '18:45 ', '20201204 ', '18:45 ', '2 people fighting', 'Two guys fighting one people see ', 'https://thtcentre.com/wp-content/uploads/2018/07/Events-624x269.jpg', 0, 4.9),
(7, 'sd2D', '2020-03-13 02:50:38', '8', '1@georgebrown.ca', 'suspended', '20200313 ', '13:50 ', '20200913 ', '15:29 ', 'hellovxcxvcxvcxvcxvc', 'new description for the vent ', 'https://www.1053rock.ca/wp-content/uploads/sites/29/2016/11/1053-ROCK-CommunityEvents-Spotlight-1052x592-1024x576.png', 0, 1.4),
(8, 'sda1', '2020-03-13 02:52:17', '8', '1@georgebrown.ca', 'active', '20200316', '13:51', '20200716', '22:52', 'testing event', 'this is two line description for the event', 'https://www.marsdd.com/wp-content/uploads/2019/08/TORONTO-TECH-EVENTS-FEATURE.jpg', 0, 3.3),
(11, 'AB9C', '2020-03-17 03:54:17', '2', 'david@georgebrown.ca', 'active', '20200323', '10:00', '20200428', '10:59', 'JavaScript workshop', 'JavaScript workshop for beginner, meet us at room C799!', 'https://cdn.pixabay.com/photo/2016/11/19/14/00/code-1839406_960_720.jpg', 0, 2.5),
(12, 'AB0C', '2020-03-17 03:55:30', '2', 'david@georgebrown.ca', 'active', '20200320', '10:00', '20200628', '10:59', 'Resume workshop today', 'Prepare you resume for any potential hiring opportunity.Please contact resume@gbc.com', 'https://cdn.pixabay.com/photo/2018/02/27/10/07/opportunity-3185099_960_720.jpg', 0, 1.6),
(13, 'HNnGSi', '2020-03-21 20:45:58', '1', 'dharam@georgebrown.ca', 'active', '20200321', '02:00', '20200825', '02:59', 'Parsifal Opera is in town now!', 'No doubt! student discount available!', 'https://cdn.agilitycms.com/canadian-opera-company-v2/Attachments/NewItems/PARS2_5067_20200120185926_0.JPG', 0, 2.4),
(14, 'R5mBYA', '2020-04-01 18:46:09', '10', 'yu.shi@georgebrown.ca', 'active', '20200402', '15:45', '20200829', '16:46', 'Career fair for super life insurance', 'see this for detail please:\r\nhttps://superlifeworld.com/', 'https://cdn.pixabay.com/photo/2017/08/29/12/49/biker-2693239_960_720.jpg', 0, 4.7),
(15, 'ZCVFzL', '2020-04-01 18:50:56', '10', 'tester11@georgebrown.ca', 'active', '20200404', '15:50', '20200330', '15:15', '231321312', '123312213123321', 'https://cdn.pixabay.com/photo/2016/11/19/14/00/code-1839406_960_720.jpg', 0, 3.2),
(16, 'GEC7yy', '2020-04-02 03:24:31', '8', '1@georgebrown.ca', 'active', '20200409', '1:00', '20200410', '2:00', 'Good tutor looking for job', 'A customer oriented experienced T127 looking for minimum paid job!', 'https://cdn.pixabay.com/photo/2017/10/10/21/49/youtuber-2838945_960_720.jpg', 0, 5),
(17, 'Myhd4L', '2020-04-02 03:32:53', '20', '1@georgebrown.ca', 'active', '20200404', '13:32', '20200410', '14:32', 'Testing even', 'I Hope this works, adding extra characters to meet length', 'https://cdn.pixabay.com/photo/2016/07/06/15/29/math-1500720_960_720.jpg', 0, 3.7),
(18, 'nSMS1H', '2020-04-02 03:36:20', '8', '1@georgebrown.ca', 'active', '20200403', '14:35', '20200405', '16:30', 'testing event k', 'I hope this works', 'https://cdn.pixabay.com/photo/2016/11/19/14/00/code-1839406_960_720.jpg', 0, 2.2),
(19, 'FTKUdf', '2020-04-02 03:38:05', '8', '1@georgebrown.ca', 'active', '20200404', '14:37', '20200405', '15:38', 'testing event 5', 'Writing a long description hoping that this works', 'https://cdn.pixabay.com/photo/2016/11/19/14/00/code-1839406_960_720.jpg', 0, 2.6),
(20, 'KigKrZ', '2020-04-03 15:58:40', '8', '1@georgebrown.ca', 'active', '20200410', '05:58', '20200401', '11:58', 'This is a past event', 'April 1 is end date', 'https://cdn.pixabay.com/photo/2016/11/19/14/00/code-1839406_960_720.jpg', 0, 3.2),
(21, 'UjOXg4', '2020-04-04 20:45:40', '8', '1@georgebrown.ca', 'active', '20200407', '16:45', '20200423', '17:45', 'Boxing Day sales', 'My GBC friend! Exciting event for Boxing day. One day only.Various stuff with lowest price ever!!!', 'https://cdn.pixabay.com/photo/2019/04/29/14/32/make-the-day-great-4166221_960_720.jpg', 0, 4),
(22, 'xZWLx3', '2020-04-06 18:11:14', '20', '1@georgebrown.ca', 'active', '20200406', '18:20', '20200423', '16:11', ' capstone project ', 'All T127 students are welcome to participate', 'https://cdn.pixabay.com/photo/2017/01/22/12/07/imac-1999636_960_720.png', 0, 5),
(23, 'WFZmOx', '2020-04-07 00:13:57', '20', 'yu.shi@georgebrown.ca', 'active', '20200411', '09:13', '20200424', '20:13', 'This is an event', 'Event details is here', 'https://cdn.pixabay.com/photo/2016/11/19/14/00/code-1839406_960_720.jpg', 0, 3),
(24, 'SbWZHy', '2020-04-07 14:26:50', '20', 'yu.shi@georgebrown.ca', 'active', '20200408', '10:26', '20200410', '16:30', 'job fair at GBC', 'Please come and see us', 'https://cdn.pixabay.com/photo/2016/11/19/14/00/code-1839406_960_720.jpg', 0, 0),
(25, 'YZBbu6', '2020-04-07 15:07:35', '20', 'yu.shi@georgebrown.ca', 'active', '20200409', '11:07', '20200417', '13:07', 'Job fair waiting for you', 'Please check flier for more detail', 'https://cdn.pixabay.com/photo/2016/11/19/14/00/code-1839406_960_720.jpg', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `event_liked`
--

CREATE TABLE `event_liked` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `likedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_liked`
--

INSERT INTO `event_liked` (`id`, `event_id`, `user_id`, `likedAt`) VALUES
(2, 13, 2, '2020-04-01 23:50:32'),
(3, 13, 3, '2020-04-01 23:50:32'),
(4, 14, 2, '2020-04-01 23:50:32'),
(89, 13, 8, '2020-04-02 13:34:42'),
(6, 15, 10, '2020-04-01 23:50:32'),
(109, 25, 20, '2020-04-07 15:09:04'),
(108, 22, 20, '2020-04-07 15:09:00'),
(107, 6, 20, '2020-04-07 14:28:57'),
(106, 23, 20, '2020-04-07 00:15:21'),
(104, 8, 20, '2020-04-07 00:15:18'),
(99, 10, 8, '2020-04-05 19:57:49'),
(97, 17, 6, '2020-04-05 19:47:06'),
(96, 6, 8, '2020-04-05 19:47:06'),
(100, 2, 8, '2020-04-05 21:10:02'),
(103, 16, 8, '2020-04-05 21:24:00'),
(93, 15, 20, '2020-04-06 23:52:11');

-- --------------------------------------------------------

--
-- Table structure for table `event_rated`
--

CREATE TABLE `event_rated` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` float NOT NULL,
  `rate_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_rated`
--

INSERT INTO `event_rated` (`id`, `event_id`, `user_id`, `rating`, `rate_at`) VALUES
(1, 13, 10, 2, '2020-03-30 01:00:52'),
(8, 15, 8, 1, '2020-04-03 14:55:11'),
(7, 11, 10, 2, '2020-03-30 01:13:00'),
(6, 12, 10, 2, '2020-03-30 01:12:44'),
(9, 15, 13, 5, '2020-04-01 20:57:36'),
(14, 14, 1, 5, '2020-04-05 00:27:15'),
(11, 21, 6, 2, '2020-04-05 00:08:23'),
(12, 16, 8, 5, '2020-04-05 00:09:26'),
(13, 21, 8, 5, '2020-04-05 21:10:11'),
(15, 21, 1, 5, '2020-04-05 00:27:58'),
(16, 22, 8, 5, '2020-04-06 18:58:43'),
(17, 23, 20, 3, '2020-04-07 00:15:41'),
(18, 25, 20, 3, '2020-04-07 15:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `event_reg`
--

CREATE TABLE `event_reg` (
  `id` int(10) NOT NULL,
  `eventId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `eventRegCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_reg`
--

INSERT INTO `event_reg` (`id`, `eventId`, `userId`, `status`, `createdAt`, `eventRegCode`) VALUES
(3, 1, 3, 'registered', '2020-03-03 15:31:33', 0),
(5, 2, 10, 'registered', '2020-03-29 19:25:55', 0),
(6, 15, 13, 'registered', '2020-04-01 20:54:10', 0),
(9, 14, 1, 'registered', '2020-04-03 17:14:58', 0),
(14, 19, 8, 'active', '2020-04-04 18:27:46', 11),
(15, 17, 8, 'active', '2020-04-04 18:28:20', 13),
(16, 18, 20, 'active', '2020-04-04 18:28:20', 12),
(19, 21, 20, 'registered', '2020-04-05 20:19:52', NULL),
(20, 22, 8, 'registered', '2020-04-06 18:59:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fav_table`
--

CREATE TABLE `fav_table` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `faved_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `_id` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `messageCode` int(11) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `details` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`_id`, `createdAt`, `messageCode`, `title`, `sender_id`, `receiver_id`, `details`, `type`, `status`) VALUES
(11, '2020-04-05 19:13:36', 0, 'Re: 11576654675', 8, 2, 'In you previous message, you mentioned:\nghhghjjghhgj\n', 'event', 'active'),
(19, '2020-04-04 23:33:38', 0, 'Re: About the App', 1, 0, 'Dear Admin23111111111111111111111111', 'event', 'active'),
(13, '2020-04-04 03:56:06', 0, 'Re: 000000', 2, 8, 'In you previous message, you mentioned:\nghhghjjghhgj\n', 'event', 'active'),
(14, '2020-04-04 04:00:11', 0, 'Re: 576654675', 2, 13, 'In you previous message, you mentioned:\nghhghjjghhgj\n', 'event', 'active'),
(8, '2020-04-04 01:16:11', 2, 'message testing for ID8', 2, 8, 'Tester message', '', ''),
(15, '2020-04-04 03:59:08', 0, '1Re: 211', 2, 1, 'In you previous message, you mentioned:\nghhghjjghhgj\n', 'event', 'active'),
(16, '2020-04-04 03:59:50', 0, 'Re: Re: 576654675adsads', 2, 8, 'In you previous message, you mentioned:\nIn you previous message, you mentioned:\nghhghjjghhgj\n\n', 'event', 'active'),
(17, '2020-04-04 04:08:29', 0, 'Re: 576654675', 2, 1, 'In you previous message, you mentioned:\nghhghjjghhgj\n', 'event', 'active'),
(18, '2020-04-04 15:16:07', 0, 'Re: 576654675', 2, 1, 'In you previous message, you mentioned:\nghhghjjghhgj\n', 'event', 'active'),
(20, '2020-04-04 23:35:10', 0, 'Re: About the App', 1, 2, 'Dear Admindasdasdasds2wqeweqw2132132312', 'event', 'active'),
(21, '2020-04-06 23:51:38', 0, 'Re: About your events post:123333333333', 1, 20, 'I just saw your post regarding:\nEvent:21123333333333\nDetails about this event:1322222222222222222222222222222\nStart date & time:20200407 16:45\nEnd date & time:20200423 17:45\n1223\n\n1233 1 sd ', 'event', 'active'),
(22, '2020-04-04 23:36:33', 0, 'Re:3 About your events post:123333333321333', 1, 2, 'I just saw your post regarding:\nEvent:21123333333333\nDetails about this event:1322222222222222222222222222222\nStart date & time:20200407 16:45\nEnd date & time:20200423 17:45\n\n\n1233 1 sd ', 'event', 'active'),
(23, '2020-04-04 23:39:04', 0, 'Re: fAbout your events post:123333333333', 8, 2, 'I just saw your post regarding:\nEvent:21123333333333\nDetails about this event:1322222222222222222222222222222\nStart date & time:20200407 16:45\nEnd date & time:20200423 17:45\n\n\n1233 1 sd ', 'event', 'active'),
(24, '2020-04-04 23:50:32', 0, 'Re: About the App123123321', 8, 2, 'Dear Admin1111111111111111111111', 'event', 'active'),
(25, '2020-04-06 23:51:44', 1, 'Re: About your events post: capstone project ', 8, 20, 'I just saw your post regarding:\nEvent:22 capstone project \nDetails about this event:All T127 students are welcome to participate\nStart date & time:20200406 18:20\nEnd date & time:20200423 16:11\n Can we', 'event', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `_id` int(16) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `roomCode` int(16) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `available_date` date NOT NULL,
  `offering_wanted` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lease` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_number` int(11) NOT NULL,
  `pets` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rent` double NOT NULL,
  `location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `collegeCode` varchar(255) DEFAULT NULL,
  `programCode` varchar(255) DEFAULT NULL,
  `registeredYear` varchar(255) DEFAULT NULL,
  `expireYear` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `imagePath` varchar(3000) NOT NULL,
  `activationCode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `firstName`, `lastName`, `collegeCode`, `programCode`, `registeredYear`, `expireYear`, `status`, `question`, `answer`, `role`, `createdAt`, `imagePath`, `activationCode`) VALUES
(1, 'dharam@georgebrown.ca', 'Password2', 'Dharam', 'KC', 'GBC', 'T127', '2017', '2020', 'active', 'what is my favourite Teacher', 'Anjana', 'student', '0000-00-00 00:00:00', 'https://cdn.pixabay.com/photo/2019/04/29/14/32/make-the-day-great-4166221_960_720.jpg', 'QSzljJyH3b0h2KRjJZM6'),
(2, 'david@georgebrown.ca', 'Password1', 'David', 'Shi 1 2  ', 'GBC', 'T127', '2017', '2020', 'active', 'what is my favourite car1    ', 'Subaru', 'admin', '2020-02-27 05:00:00', 'https://cdn.pixabay.com/photo/2016/03/09/10/23/model-1246028_1280.jpg', 'QSzljJyH3b0h2KRjJZM5'),
(3, 'Harman@georgebrown.ca', '11', 'Harmanpreet', 'Kaur', 'GBC', 'T127', '2017', '2020', 'active', 'Who is always hardworking?', 'me', 'student', '0000-00-00 00:00:00', 'https://cdn.pixabay.com/photo/2018/01/15/07/51/woman-3083376_1280.jpg', 'QSzljJyH3b0h2KRjJZM4'),
(8, '1@georgebrown.ca', '1', 'Tester22', 'Android2 ', 'GBC', 'T127', '2000', '2020', 'active', 'Is this a tester question? ', 'no ', 'student', '2020-03-02 22:35:41', 'https://cdn.pixabay.com/photo/2018/01/15/07/51/woman-3083376_1280.jpg', 'QSzljJyH3b0h2KRjJZM3'),
(10, 'tester11@georgebrown.ca', 'Password11', 'Tester11', 'Google', 'GBC', 'T127', '2018', '2020', 'active', 'Are you tester 11', 'Yes', 'student', '2020-03-21 15:42:27', 'https://cdn.pixabay.com/photo/2018/01/15/07/51/woman-3083376_1280.jpg', 'QSzljJyH3b0h2KRjJZM2'),
(12, '2', '2', 'Admin', 'Tester2', 'GBC', 'T127', '2017', '2021', 'active', 'Admin only', 'admin', 'admin', '2020-03-21 17:07:29', 'https://cdn.pixabay.com/photo/2018/01/15/07/51/woman-3083376_1280.jpg', 'QSzljJyH3b0h2KRjJZM1'),
(13, 'tester2@georgebrown.ca', '22', 'Tester2', 'Picker', 'GBC', 'T141', '2020', '2021', 'active', 'Tester 2, how are you?', 'I am good', 'student', '2020-03-21 17:17:32', 'https://cdn.pixabay.com/photo/2018/01/15/07/51/woman-3083376_1280.jpg', 'X1hp76i84nFLmaW97C4L'),
(17, 'harmanpreet.kaur2@georgebrown.ca', '1', 'HarmanGBC', 'Kaur2', 'GBC', 'T105', '2018', '2022', 'pending', '1', '1', 'student', '2020-03-21 19:29:49', 'https://cdn.pixabay.com/photo/2018/01/15/07/51/woman-3083376_1280.jpg', 'FMkWpNZPlvpp8NK72FVy'),
(18, 'tester3@georgebrown.ca', 'Password2', 'Tester3', 'Tesla', 'GBC', 'T132', '2312', '2021', 'pending', '3213312132321', '3213231321123213', 'student', '2020-03-27 19:49:33', 'https://cdn.pixabay.com/photo/2018/01/15/07/51/woman-3083376_1280.jpg', 'bL2K5An7gPsDD8rqT4u6'),
(20, 'yu.shi@georgebrown.ca', 'Password1', 'Yu', 'Shi ', 'GBC', 'T232', '2016', '2022', 'active', '123232132323213 ', '2312 ', 'student', '2020-04-03 16:24:20', 'https://cdn.pixabay.com/photo/2018/01/15/07/51/woman-3083376_1280.jpg', 'Lyo8Yo9Xf6Am1kBCtjIa'),
(21, 'ayusha.aaaa!@georgebrown.ca', 'Password1', 'Ayusha', 'Powkdss', '', 'T127', '2017', '2020', 'active', 'Are you OK?', 'I am OK', 'student', '2020-04-06 18:01:42', '', '77MS9W8XkxntWDjMlHHF'),
(22, 'yu.shi1@georgebrown.ca', 'Password2', 'Yu', 'Shi2', '', 'T127', '2017', '2020', 'active', 'is this a question:', 'yes', 'student', '2020-04-07 00:09:20', '', 'W2DcxWnZMkOXigfd9teY'),
(23, 'ayusha@georgebrown.ca', 'Password2', 'Ayusha', 'C.', '', 'T127', '2017', '2020', 'active', 'My security question', 'answer', 'student', '2020-04-07 14:19:58', '', '8BJdExEBBMFX5ZzzaVcz'),
(24, 'ayusha.c@georgebrown.ca', 'Password2', 'Ayusha', 'C.', '', 'T127', '2017', '2020', 'active', 'Security question for Aysuha', 'answer', 'student', '2020-04-07 15:02:29', '', 'k4fxUJU0OyAQ7lXCTHDT');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_liked`
--
ALTER TABLE `event_liked`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_rated`
--
ALTER TABLE `event_rated`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_reg`
--
ALTER TABLE `event_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fav_table`
--
ALTER TABLE `fav_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `_id` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `_id` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `event_liked`
--
ALTER TABLE `event_liked`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `event_rated`
--
ALTER TABLE `event_rated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `event_reg`
--
ALTER TABLE `event_reg`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `fav_table`
--
ALTER TABLE `fav_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `_id` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
