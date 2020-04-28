-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 06, 2019 at 11:41 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingInfo`
--
ALTER TABLE `bookingInfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookingInfo`
--
ALTER TABLE `bookingInfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
