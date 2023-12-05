-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 23, 2021 at 02:21 PM
-- Server version: 5.6.38
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `main_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'Educare', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `applied_post`
--

CREATE TABLE `applied_post` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_by` int(11) NOT NULL,
  `applied_by` int(11) NOT NULL,
  `applied_to` int(11) NOT NULL,
  `applied_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `student_ck` varchar(3) NOT NULL DEFAULT 'no',
  `tutor_ck` varchar(3) NOT NULL DEFAULT 'no',
  `tutor_cf` tinyint(4) NOT NULL DEFAULT '0',
  `tution_cf` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applied_post`
--

INSERT INTO `applied_post` (`id`, `post_id`, `post_by`, `applied_by`, `applied_to`, `applied_time`, `student_ck`, `tutor_ck`, `tutor_cf`, `tution_cf`) VALUES
(21, 11, 17, 16, 17, '2021-05-22 12:22:41', 'yes', 'yes', 0, 1),
(20, 10, 15, 16, 15, '2021-05-21 14:25:03', 'yes', 'yes', 0, 1),
(18, 9, 15, 14, 15, '2021-05-16 08:49:57', 'yes', 'yes', 0, 1),
(19, 10, 15, 14, 15, '2021-05-16 11:41:47', 'yes', 'yes', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `Id` int(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `message` text NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `receiver` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`Id`, `name`, `message`, `date`, `receiver`) VALUES
(86, 'Female', 'Noo free teaching', NULL, 'Bestin'),
(85, 'Bestin', 'I can teach you for free..', NULL, 'Female'),
(84, 'Female', 'U want to teach me!', NULL, 'Male'),
(82, 'Female', 'Hey', NULL, 'Male'),
(83, 'Female', 'Hi', NULL, 'Bestin'),
(81, 'Female', 'Hi', NULL, 'Bestin'),
(80, 'Male', 'Fine?', NULL, 'Female'),
(78, 'Female', 'Heyy you', NULL, 'Male'),
(79, 'Male', 'How are you?', NULL, 'Female'),
(77, 'Female', 'Hi', NULL, 'Male'),
(72, 'Female', 'Hellow', NULL, 'Bestin'),
(73, 'Bestin', 'Hey ', NULL, 'Female'),
(74, 'Bestin', 'Where are you', NULL, 'Female'),
(75, 'Female', 'Hi', NULL, 'Bestin'),
(76, 'Female', 'Hi', NULL, 'Bestin'),
(71, 'Female', 'Hi bestin', NULL, 'Bestin'),
(87, 'Bestin', 'Hi', NULL, 'Female'),
(88, 'Malu', 'Hi bestin', NULL, 'Bestin'),
(89, 'Malu', 'How are you?', NULL, 'Bestin'),
(90, 'Malu', 'Can you teach me', NULL, 'Bestin'),
(91, 'Bestin', 'Yeah sure', NULL, 'Malu'),
(92, 'Bestin', 'I can teach you for 100000000 rupee because you are dump', NULL, 'Malu'),
(93, 'Bestin', '', NULL, 'Malu'),
(94, 'Bestin', '', NULL, 'Malu'),
(95, 'Bestin', 'Hi', NULL, 'Malu');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `postby_id` int(11) NOT NULL,
  `subject` text NOT NULL,
  `class` text NOT NULL,
  `medium` varchar(20) NOT NULL,
  `salary` varchar(50) NOT NULL,
  `location` text NOT NULL,
  `p_university` text NOT NULL,
  `post_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deadline` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `postby_id`, `subject`, `class`, `medium`, `salary`, `location`, `p_university`, `post_time`, `deadline`) VALUES
(9, 15, 'English', 'Six-Seven,Nine-Ten,College/University', 'English', '1000-2000', 'Varkala', 'Kerala University', '2021-05-16 08:49:25', '05/31/2021'),
(10, 15, 'Social Science,Biology,Accounting,History', 'One-Three,Four-Five,Six-Seven,Nine-Ten,Eleven-Twelve,College/University', 'English', '2000-5000', 'Varkala', 'Kerala University', '2021-05-16 11:41:21', '05/21/2021'),
(11, 17, 'English,Higher Math', 'College/University', 'English', '1000-2000', 'Varkala', 'Kerala University', '2021-05-22 12:22:28', '05/31/2021');

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE `tutor` (
  `id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `inst_name` varchar(150) NOT NULL,
  `prefer_sub` text NOT NULL,
  `class` text NOT NULL,
  `medium` text NOT NULL,
  `prefer_location` text NOT NULL,
  `salary` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`id`, `t_id`, `inst_name`, `prefer_sub`, `class`, `medium`, `prefer_location`, `salary`) VALUES
(5, 2, 'Southeast University', 'Bangla,Math,ICT,Computer Science', 'One-Three,Nine-Ten,Eleven-Twelve,College/University', 'Bangla,Any', 'Khilkhet', '1000-2000'),
(11, 6, 'Southeast University', 'Bangla,English,Religion,ICT,Physics,Sociology,Economics,Civics,Computer Science', 'Six-Seven,Nine-Ten,Eleven-Twelve', 'Bangla', 'banani,gulsan', '2000-5000'),
(15, 5, 'Southeast University', 'Bangla,Math,General Science,Religion,ICT,Physics,Higher Math,Computer Science', 'Nine-Ten,Eleven-Twelve,College/University', 'English,Any', 'Farmgate', '1000-2000'),
(17, 9, 'Southeast University', 'ICT,Physics,Higher Math,Computer Science', 'Nine-Ten,Eleven-Twelve,College/University', 'Any', 'Banani, Khilkhet, Uttara', '5000-10000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(150) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(200) NOT NULL DEFAULT '',
  `pass` varchar(50) NOT NULL,
  `confirmcode` varchar(7) NOT NULL,
  `activation` varchar(3) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL,
  `user_pic` text,
  `last_logout` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `online` varchar(5) NOT NULL DEFAULT 'no',
  `chatting` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `gender`, `email`, `phone`, `address`, `pass`, `confirmcode`, `activation`, `type`, `user_pic`, `last_logout`, `online`, `chatting`) VALUES
(1, 'Student', 'male', 'mohsin@gmail.com', '015976432566', 'Khilkhet, Dhaka, Bangladesh', 'e10adc3949ba59abbe56e057f20f883e', '205575', '', 'student', '1543554432.png', '2018-11-30 06:11:19', 'no', ''),
(2, 'Teacher', 'male', 'teacher@gmail.com', '014976432566', 'Banani, Dhaka, Bangladesh', '8d788385431273d11e8b43bb78f3aa41', '901358', '', 'teacher', '1515505450.jpg', '2018-11-30 05:35:16', 'yes', ''),
(5, 'Teacher_1', 'female', 'teacher_1@gmail.com', '014976432566', '1,2 pacific home,Farmgate', '8d788385431273d11e8b43bb78f3aa41', '495196', '', 'teacher', '', '2018-11-30 08:45:02', 'no', ''),
(6, 'Teacher_2', 'male', 'teacher_2@gmail.com', '014976432566', 'Badda', '8d788385431273d11e8b43bb78f3aa41', '292470', '', 'teacher', '1515558340.jpeg', '2018-09-04 02:39:17', 'no', ''),
(9, 'Mohsin Gram', 'male', 'mohsingram@gmail.com', '01899761551', 'Dhaka', 'e10adc3949ba59abbe56e057f20f883e', '214114', '', 'teacher', '1543568429.jpg', '2018-11-30 09:00:29', 'yes', ''),
(10, 'Robin Student', 'male', 'robins@gmail.com', '01788651991', 'Uttara', 'e10adc3949ba59abbe56e057f20f883e', '946363', '', 'student', '1543568644.png', '2018-11-30 09:13:40', 'no', ''),
(15, 'Female', 'female', 'bestinbabie813@gmail.com', '7356135616', '', '6a204bd89f3c8348afd5c77c717a097a', '630897', '', 'student', NULL, '2021-05-22 12:27:23', 'no', 'Bestin'),
(16, 'Bestin', 'male', 'bestinbabie8@gmail.com', '7356135618', '', '6a204bd89f3c8348afd5c77c717a097a', '139709', '', 'teacher', NULL, '2021-05-22 13:01:26', 'no', 'Malu'),
(17, 'Malu', 'female', 'bestinbabie8136@gmail.com', '7356135610', '', '6a204bd89f3c8348afd5c77c717a097a', '866357', '', 'student', NULL, '2021-05-22 12:28:30', 'no', 'Bestin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applied_post`
--
ALTER TABLE `applied_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applied_post`
--
ALTER TABLE `applied_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tutor`
--
ALTER TABLE `tutor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
