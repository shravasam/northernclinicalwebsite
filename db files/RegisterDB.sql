-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 06, 2019 at 11:40 PM
-- Server version: 5.7.24-0ubuntu0.16.04.1
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `RegisterDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookingInfo`
--

CREATE TABLE `bookingInfo` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingInfo`
--

INSERT INTO `bookingInfo` (`id`, `username`, `email`, `password`) VALUES
(1, 'sanvy', 'savny@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(2, 'sandeep', 'saneep@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'india', 'india@yahoo.fr', '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'india', 'india@yahoo.fr', '827ccb0eea8a706c4c34a16891f84e7b'),
(5, 'vasam', 'vasam@gmail.com', '26588e932c7ccfa1df309280702fe1b5'),
(6, 'admin', 'admin@esigelec.fr', '21232f297a57a5a743894a0e4a801fc3'),
(7, 'bonjour', 'bonjour@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(8, 'myname', 'myname@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(9, 'merry', 'merry@merry.fr', '827ccb0eea8a706c4c34a16891f84e7b'),
(10, 'merry', 'merry@merry.fr', '827ccb0eea8a706c4c34a16891f84e7b'),
(11, 'chrismas', 'chrismas@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(12, 'amour', 'amour@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(13, 'user', 'user@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(14, 'normandy', 'normandy@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(15, 'newadmin', 'newadmin@yahoo.fr', '80396443f055ea0c4fd9719ecefcc25a');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `doctor` varchar(255) NOT NULL,
  `doctor2` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `username`, `email`, `doctor`, `doctor2`, `message`) VALUES
(2, 'sravan', 'sravan@yahoo.fr', 'bread', '', 'consul.'),
(3, 'vasam', 'vas@yahoo.fr', 'sdfds', '', 'sdfsdf'),
(4, 'vasam', 'vas@yahoo.fr', 'sdfds', '', 'sdfsdf'),
(5, 'vasam', 'vas@yahoo.fr', 'sdfds', '', 'sdfsdf'),
(6, 'vasam', 'vas@yahoo.fr', 'sdfds', '', 'sdfsdf'),
(7, 'vasam', 'vas@yahoo.fr', 'sdfds', '', 'sdfsdf'),
(8, 'vasam', 'vas@yahoo.fr', 'sdfds', '', 'sdfsdf'),
(9, 'vasam', 'vas@yahoo.fr', 'sdfds', '', 'sdfsdf'),
(10, 'vasam', 'vas@yahoo.fr', 'sdfds', '', 'sdfsdf'),
(11, 'vasam', 'vas@yahoo.fr', 'sdfds', '', 'sdfsdf'),
(12, 'vasam', 'vas@yahoo.fr', 'sdfds', '', 'sdfsdf'),
(13, 'vasam', 'vas@yahoo.fr', 'sdfds', '', 'sdfsdf'),
(14, 'aback', 'sflsdfj@sf.fr', 'sdfd', '', 'sfsdf'),
(15, 'halloween', 'halloween@gmail.com', 'DR GEORGE', '', 'consulttt'),
(16, 'HELLO', 'HELLO@HELLO.FR', 'HELLO', '', 'HELLO'),
(17, 'kumar', 'kumar@gmail.com', '', '', ''),
(18, 'mactron', 'mactron@yahoo.fr', '', '', ''),
(19, 'trump', 'trump@gmail.com', '', '', ''),
(20, '', '', '', '', ''),
(21, 'VSK', 'VSK@YAHOO.FR', '', '', ''),
(22, 'peter', 'peter@ot.fr', 'dr. peter 20th dec 2018', '', 'i want it'),
(23, 'prestige', 'prestige@yahoo.com', 'dr.jrean', '', 'sdlfjsdf'),
(24, 'pen', 'pen@fr.fr', 'pen@yaho.com', '', 'dlfld'),
(25, 'sandeep', 'sandeep@gmail.com', 'sdfds', '', 'sdfsdf'),
(26, 'sravan kumar', 'sravan.vasam@yahoo.fr', 'Dr.vasam', '', 'prescription'),
(27, 'dimache', 'dimarcher@gmail.com', 'lundi', '', 'mardi'),
(28, 'lundi', 'lundi@gmail.co', 'mardi', '', 'jedui'),
(29, 'xyz', 'xys@xyz.com', '', '', 'djldfj'),
(30, 'jjj', 'kkkdfd@gmail.com', 'doctor', '', 'ddd'),
(31, '', '', '', '', ''),
(32, '', '', '', '', ''),
(33, 'salute', 'salute@yahoo.fr', '', '', 'dsdf'),
(34, 'vas', 'sravan.vasam@yahoo.fr', ' >abc<br>xyz<br>\r\n			<input type=', '', 'sdfdsf'),
(35, 'merry', 'merry@merry.fr', '>\r\n			<p>dr.vasam</p>\r\n			<input type=', '', 'hello merry'),
(36, 'merry', 'merry@merry.fr', '>\r\n			<p>dr.vasam</p>\r\n			<input type=', '', 'hello merry'),
(37, 'jing', 'jing@gmail.com', '', '', 'ksdfjsdlfjsd'),
(38, 'ubuntu', 'ubuntu@gmail.com', 'sravan', '', 'ubuntu'),
(39, '', '', 'DRCHRISTINAARAMOUNY', '', ''),
(40, 'choose', 'chosse@gmail.com', 'DRCHRIS', '', 'done'),
(41, 'checkbox', 'checkbox@gmail.com', 'DRCHRIS', '', 'checekd'),
(42, 'onedoctro', 'one@yaho.fr', 'DRCHRISTINAARAMOUNY', '', 'one'),
(43, '', '', 'DRCHRIS', '', ''),
(44, '', '', 'DRCHRIS', '', ''),
(45, '', '', 'DRCHRIS', '', ''),
(46, '', '', 'DRCHRISTINAARAMOUNY', 'DRCHRIS', ''),
(47, '', '', 'DRCHRISTINAARAMOUNY', 'DRGEORGE', ''),
(48, '', '', 'DRCHRISTINAARAMOUNY', '', ''),
(49, '', '', '', 'DRGEORGE', ''),
(50, 'sfr', 'sfr@sfr.fr', 'DRCHRISTINAARAMOUNY', 'DRGEORGE', 'i chose two doctor\'s'),
(51, 'putin', 'putin@russia.rs', 'DRCHRISTINAARAMOUNY', '', 'I meet one doctor'),
(52, 'patient paris', 'parisxyz@paris.fr', 'DRCHRISTINAARAMOUNY', 'DRGEORGE', 'I want to consult two doctor\'s');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingInfo`
--
ALTER TABLE `bookingInfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookingInfo`
--
ALTER TABLE `bookingInfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
