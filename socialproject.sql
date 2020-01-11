-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2018 at 04:21 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `networkadmins_master`
--

CREATE TABLE `networkadmins_master` (
  `admin_id` int(11) NOT NULL,
  `network_name` varchar(70) NOT NULL,
  `user_id` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `networkadmins_master`
--

INSERT INTO `networkadmins_master` (`admin_id`, `network_name`, `user_id`) VALUES
(1, 'Symbiosis', 'abhishekdwivedi428@gmail.com'),
(2, 'Symbiosis', 'abhishekdwivedi428@gmail.com'),
(3, 'Abhishek', 'abhishekdwivedi428@gmail.com'),
(4, 'Abhishek', 'abhishekdwivedi428@gmail.com'),
(5, 'Sgsits', 'abhishekdwivedi428@gmail.com'),
(6, 'Rajat Group', 'abhishekdwivedi428@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `networkinvite_master`
--

CREATE TABLE `networkinvite_master` (
  `network_name` varchar(100) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `invite_id` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `networkinvite_master`
--

INSERT INTO `networkinvite_master` (`network_name`, `user_id`, `invite_id`, `status`) VALUES
('Abhishek', 'abhishekdwivedi428@gmail.com', 'Abhishekdwivedi428@gmail.com', 1),
('Abhishek', 'abhishekdwivedi428@gmail.com', 'Abhishekdwivedi428@gmail.com', 1),
('Symbiosis', 'abhishekdwivedi428@gmail.com', 'Abhishekdwivedi428@gmail.com', 1),
('Abhishek', 'abhishekdwivedi428@gmail.com', 'Abhishekdwived428@gmail.com', 1),
('Abhishek', 'abhishekdwivedi428@gmail.com', 'Abhishekdwivedi428@yahoo.com', 1),
('Sgsits', 'abhishekdwivedi428@gmail.com', 'Abhishekdwivedi428@gmail.com', 0),
('Abhishek', 'abhishekdwivedi428@gmail.com', 'Abhishekdwivedi428@yahoo.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `networkmembers_master`
--

CREATE TABLE `networkmembers_master` (
  `member_id` int(11) NOT NULL,
  `network_name` varchar(70) NOT NULL,
  `user_id` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `networkmembers_master`
--

INSERT INTO `networkmembers_master` (`member_id`, `network_name`, `user_id`) VALUES
(10, 'Sgsits', 'abhishekdwivedi428@gmail.com'),
(11, 'Abhishek', 'Abhishekdwivedi428@yahoo.com'),
(12, 'Rajat Group', 'abhishekdwivedi428@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `networks_master`
--

CREATE TABLE `networks_master` (
  `network_id` int(11) NOT NULL,
  `network_name` varchar(70) NOT NULL,
  `filepath` varchar(200) NOT NULL,
  `user_id` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `networks_master`
--

INSERT INTO `networks_master` (`network_id`, `network_name`, `filepath`, `user_id`) VALUES
(1, 'Symbiosis', 'F:\\\\PROJECT\\\\PocketDesk\\\\images\\\\1539192174671abhishekimage.jpg', 'abhishekdwivedi428@gmail.com'),
(2, 'Symbiosis', 'F:\\\\PROJECT\\\\PocketDesk\\\\images\\\\1539192330651abhishekimage.jpg', 'abhishekdwivedi428@gmail.com'),
(3, 'Abhishek', 'F:\\\\PROJECT\\\\PocketDesk\\\\images\\\\15391925008421384432-iskcon-temple-mumbai.jpg', 'abhishekdwivedi428@gmail.com'),
(4, 'Abhishek', 'F:\\\\PROJECT\\\\PocketDesk\\\\images\\\\1539395446378abhishek.jpg', 'abhishekdwivedi428@gmail.com'),
(5, 'Sgsits', 'F:\\\\JavaProjectCollege\\\\web\\\\images\\\\1539943866149abhishekimage.jpg', 'abhishekdwivedi428@gmail.com'),
(6, 'Rajat Group', 'F:\\\\JavaProjectCollege\\\\web\\\\images\\\\1540111871802BeautyPlus_20180323202430_save.jpg', 'abhishekdwivedi428@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts_master`
--

CREATE TABLE `posts_master` (
  `post_id` int(20) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `post_content` varchar(500) NOT NULL,
  `network_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts_master`
--

INSERT INTO `posts_master` (`post_id`, `user_id`, `post_date`, `post_content`, `network_name`) VALUES
(1, 'abhishekdwivedi428@gmail.com', '2018-10-19 11:56:42', 'Hell', 'Symbiosis'),
(2, 'abhishekdwivedi428@gmail.com', '2018-10-19 16:55:08', 'aa bb cc dd', 'Sgsits'),
(3, 'abhishekdwivedi428@gmail.com', '2018-10-19 16:57:05', 'aaaaaaaaaaaaaaaaaaa', 'Sgsits'),
(4, 'abhishekdwivedi428@gmail.com', '2018-10-19 18:19:01', 'Hello i am Abhishek', 'Abhishek'),
(5, 'abhishekdwived428@gmail.com', '2018-10-21 08:37:11', 'Hello I am Ashu Sharma How r u ???', 'Abhishek'),
(6, 'abhishekdwivedi428@yahoo.com', '2018-10-21 08:39:37', 'Hello I am Rajat???', 'Abhishek'),
(7, 'abhishekdwivedi428@yahoo.com', '2018-10-21 09:21:04', 'Hello I am Rajat Sharma /........', 'Rajat Group');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `imgurl` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`username`, `password`, `email`, `phonenumber`, `imgurl`, `gender`, `verified`) VALUES
('Abhishek Dwivedi', 'Abhishek', 'abhishekdwivedi428@gmail.com', '9993945663', 'F:\\\\JavaProjectCollege\\\\web\\\\images\\\\15398563554051384432-iskcon-temple-mumbai.jpg', 'Male', 1),
('Ashu Sharma', 'Ashu', 'Abhishekdwived428@gmail.com', '7000482343', 'F:\\\\JavaProjectCollege\\\\web\\\\images\\\\1540110185126abhishekimage.jpg', 'Male', 1),
('Rajat Pandey', 'Rajat', 'abhishekdwivedi428@yahoo.com', '9713274106', 'F:\\\\JavaProjectCollege\\\\web\\\\images\\\\1540110237445IMG_20171009_211551.jpg', 'Male', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `networkadmins_master`
--
ALTER TABLE `networkadmins_master`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `networkmembers_master`
--
ALTER TABLE `networkmembers_master`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `networks_master`
--
ALTER TABLE `networks_master`
  ADD PRIMARY KEY (`network_id`);

--
-- Indexes for table `posts_master`
--
ALTER TABLE `posts_master`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `networkadmins_master`
--
ALTER TABLE `networkadmins_master`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `networkmembers_master`
--
ALTER TABLE `networkmembers_master`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `networks_master`
--
ALTER TABLE `networks_master`
  MODIFY `network_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `posts_master`
--
ALTER TABLE `posts_master`
  MODIFY `post_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
