-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2021 at 05:02 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fname`, `lname`, `email`, `password`, `status`) VALUES
(2, 'Babayo', 'hassan', 'example@gmail.com', '1234', '1');

-- --------------------------------------------------------

--
-- Table structure for table `bus_schedules`
--

CREATE TABLE `bus_schedules` (
  `id` int(11) NOT NULL,
  `bus_no` varchar(200) NOT NULL,
  `bus_name` varchar(200) NOT NULL,
  `route` varchar(200) NOT NULL,
  `depeature` varchar(200) NOT NULL,
  `arrival_time` varchar(200) NOT NULL,
  `capacity` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_schedules`
--

INSERT INTO `bus_schedules` (`id`, `bus_no`, `bus_name`, `route`, `depeature`, `arrival_time`, `capacity`, `amount`, `status`) VALUES
(1, 'GME-393QJ', 'Hummer 1', 'Gombe-Bauchi', '08:00:00am', '2 Hours', '14', '2000', '1'),
(2, 'GME-303QJ', 'hummer2', 'Gombe-kano', '08:00pm', '12:00pm', '16', '2500', '1'),
(3, 'GME-311QJ', 'hummer2', 'Gombe-kaduna', '08:00pm', '01:00am', '16', '3000', '1'),
(4, 'GME-311QJ', 'Hummer 1', 'Gombe-yola', '10:00pm', '12:30am', '14', '2000', '1'),
(5, 'GME-221QJ', 'Hummer 1', 'Gombe-potikum', '10:00pm', '12:30am', '14', '1200', '1'),
(6, 'GME-393QJ', 'Hummer 1', 'Gombe-Borno', '08:00:00am', '01:00am', '14', '2500', '1'),
(7, 'GME-212GG', 'hummer2', 'Gombe-kano', '10:00am', '01:00', '16', '2000', '1'),
(8, 'GME-212JJ', 'hummer2', 'Gombe-kano', '80:00am', '12:00am', '14', '2000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `clerk`
--

CREATE TABLE `clerk` (
  `id` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `m_status` varchar(200) NOT NULL,
  `birth` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clerk`
--

INSERT INTO `clerk` (`id`, `fname`, `lname`, `email`, `phone`, `gender`, `m_status`, `birth`, `address`, `password`, `status`) VALUES
(1, 'muhammad', 'isah', 'elder@Gmail.com', '09022445879', 'male', 'Marital Status', '2015-01-16', 'Tudunwada', 'c20ad4d76fe97759aa27a0c99bff6710', '1'),
(3, 'name', 'sname', 'clerk@gmail.com', '09080808080', 'male', 'married', '1980-02-09', 'jekadafari', '12345', '1');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `m_status` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `bus_name` varchar(191) NOT NULL,
  `bus_no` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `dlicence` varchar(191) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `fname`, `lname`, `email`, `phone`, `gender`, `m_status`, `city`, `bus_name`, `bus_no`, `address`, `dlicence`, `status`) VALUES
(1, 'maina', 'mohammed', 'example@gmail.com', '09022308833', 'male', 'single', 'Gombe', 'Hummer 1', 'GME-393QJ', 'dawaki', '12345678974', '1'),
(2, 'ismail', 'Abubakar', 'ismail@Gmail.com', '08020145689', 'male', 'married', 'Gombe', 'hummer1', 'GME-321 JJ', 'Bolari', '123354848459', '1'),
(3, 'musa', 'muhammad', 'musa@Gmail.com', '08125489632', 'male', 'single', 'Bauchi', 'hummer2', 'GME-351 QJ', 'jekadafari', '9658745585', '1'),
(4, 'usman', 'hassan', 'musty@Gmail.com', '08122546935', 'male', 'married', 'Gombe', 'hummer2', 'GME-212JJ', 'dawaki', '4585558555', '1'),
(5, 'isah', 'sani', 'sani@gmail.com', '09087654312', 'male', '', 'jos', 'cv-20', 'GME-291QJ', 'GRA ', '123445567', '1'),
(6, 'lati', 'more', 'lati@gmail.com', '09087654312', 'male', 'single', 'kaduna', 'CV-34', 'GME-791QJ', 'GRA ', '1234567890', '1'),
(7, 'muhammad', 'sani', 'muhammad@gmail.com', '07070908060', 'male', '', 'kaduna', 'CV-38', 'GME-79GT', 'g d deba', '235353545', '1');

-- --------------------------------------------------------

--
-- Table structure for table `payment_booking`
--

CREATE TABLE `payment_booking` (
  `id` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `booking_id` varchar(200) NOT NULL,
  `bus_no` varchar(200) NOT NULL,
  `route` varchar(200) NOT NULL,
  `cname` varchar(200) NOT NULL,
  `cnumber` varchar(200) NOT NULL,
  `ccv` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `ctype` varchar(191) NOT NULL,
  `bname` varchar(191) NOT NULL,
  `payment_date` varchar(200) NOT NULL,
  `payment_id` varchar(200) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_booking`
--

INSERT INTO `payment_booking` (`id`, `fname`, `lname`, `email`, `booking_id`, `bus_no`, `route`, `cname`, `cnumber`, `ccv`, `amount`, `ctype`, `bname`, `payment_date`, `payment_id`, `status`) VALUES
(1, 'sulaiman ', 'idris', 'hbsyaro@gmail.com', '244384765', 'GME-393QJ', 'Gombe-Bauchi', 'sulaiman idris', '123145617865432425664', '554', '2000', 'Card Type', 'Bank Name', '13-01-2015', 'e4da3b7fbbce2345d7772b0674a318d5', '1'),
(2, 'usman', 'Ibrahim', 'ussy@Gmail.com', '425238715', 'GME-393QJ', 'Gombe-Bauchi', 'usman ibrahim hassan', '2258447896332544896', '223', '2000', 'visa card', 'Diamond Bank', '16-01-2015', 'e4da3b7fbbce2345d7772b0674a318d5', '1'),
(3, 'aisha', 'sani', 'sani@gmail.com', '956244574', 'GME-393QJ', 'Gombe-Bauchi', 'aisha muhammad hassan', '77723345676786543', '122', '2000', 'master card', 'Sky Bank', '15-02-2021', 'e4da3b7fbbce2345d7772b0674a318d5', '1'),
(4, 'fatima', 'hassan', 'ftm@gmail.com', '863525390', 'GME-303QJ', 'Gombe-kano', 'Fatima hassan', '', '908', '2500', 'Card Type', 'Bank Name', '17-02-2021', 'e4da3b7fbbce2345d7772b0674a318d5', '1'),
(5, 'fatima', 'hassan', 'ftm@gmail.com', '863525390', 'GME-303QJ', 'Gombe-kano', 'Fatima hassan', '', '876', '2500', 'verve Card', 'FCMB Bank', '17-02-2021', 'e4da3b7fbbce2345d7772b0674a318d5', '1'),
(6, 'habu', 'sani', 'habu@gmail.com', '237847222', 'GME-393QJ', 'Gombe-Bauchi', 'habu sani', '123456789876345', '970', '2000', 'master card', 'GT Bank', '17-02-2021', 'e4da3b7fbbce2345d7772b0674a318d5', '1'),
(7, 'kasim', 'ibnuadam', 'kasim@gmail.com', '890028211', 'GME-311QJ', 'Gombe-kaduna', 'kasim ', '123456789098765', '908', '3000', 'master card', 'Jaiz Bank', '17-02-2021', 'e4da3b7fbbce2345d7772b0674a318d5', '1'),
(8, 'kasim', 'ibnuadam', 'kasim@gmail.com', '890028211', 'GME-311QJ', 'Gombe-kaduna', 'kasim ', '234567890987654', '908', '3000', 'master card', 'Sky Bank', '17-02-2021', 'e4da3b7fbbce2345d7772b0674a318d5', '1'),
(9, 'kasim', 'ibnuadam', 'kasim@gmail.com', '890028211', 'GME-311QJ', 'Gombe-kaduna', 'kasim ', '234567890987654', '908', '3000', 'master card', 'Sky Bank', '17-02-2021', 'e4da3b7fbbce2345d7772b0674a318d5', '1'),
(10, 'kasim', 'ibnuadam', 'kasim@gmail.com', '890028211', 'GME-311QJ', 'Gombe-kaduna', 'kasim ', '234567890987654', '908', '3000', 'master card', 'Sky Bank', '17-02-2021', 'e4da3b7fbbce2345d7772b0674a318d5', '1'),
(11, 'kasim', 'ibnuadam', 'kasim@gmail.com', '890028211', 'GME-311QJ', 'Gombe-kaduna', 'kasim ', '123456789098765', '090', '3000', 'master card', 'UBA Bank', '17-02-2021', 'e4da3b7fbbce2345d7772b0674a318d5', '1'),
(12, 'kasim', 'ibnuadam', 'kasim@gmail.com', '890028211', 'GME-311QJ', 'Gombe-kaduna', 'Fatima hassan', '123456789876543', '897', '3000', 'master card', 'GT Bank', '17-02-2021', 'e4da3b7fbbce2345d7772b0674a318d5', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `phone`, `password`, `status`) VALUES
(1, 'sulaiman ', 'idris', 'hbsyaro@gmail.com', '08032658899', '202cb962ac59075b964b07152d234b70', '0'),
(2, 'usman', 'Ibrahim', 'ussy@Gmail.com', '08025445869', 'c20ad4d76fe97759aa27a0c99bff6710', '0'),
(3, 'isah', 'mamuda', 'ismar1020@yahoo.com', '08022334455', 'c4ca4238a0b923820dcc509a6f75849b', '0'),
(4, 'ibrahim', 'mamuda', 'uma@gmail.com', '02036394643', '6512bd43d9caa6e02c990b0a82652dca', '0'),
(5, 'adamu', 'umar', 'uh@gmail.com', '08022334455', '202cb962ac59075b964b07152d234b70', '0'),
(6, 'anas', 'mamuda', 'a@gmail.com', '07054893214', 'c4ca4238a0b923820dcc509a6f75849b', '0'),
(7, 'habu', 'sani', 'habu@gmail.com', '09090909090', '1234', '0'),
(8, 'muhammad', 'hassan', 'muhammad@gmail.com', '07070908060', '1234', '0'),
(9, 'aisha', 'sani', 'sani@gmail.com', '09090909090', 'aaaa', '0'),
(10, 'fatima', 'hassan', 'ftm@gmail.com', '08076548790', '1234', '0'),
(11, 'sadiyya', 'yahaya', 'sadiya@gmail.com', '07064730005', '1234', '0'),
(12, 'kasim', 'ibnuadam', 'kasim@gmail.com', '08145637280', '1234', '0');

-- --------------------------------------------------------

--
-- Table structure for table `user_booking`
--

CREATE TABLE `user_booking` (
  `id` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `booking_id` varchar(200) NOT NULL,
  `bus_no` varchar(200) NOT NULL,
  `route` varchar(200) NOT NULL,
  `depeature` varchar(200) NOT NULL,
  `arrival_time` varchar(200) NOT NULL,
  `capacity` varchar(200) NOT NULL,
  `seat_no` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_booking`
--

INSERT INTO `user_booking` (`id`, `fname`, `lname`, `email`, `booking_id`, `bus_no`, `route`, `depeature`, `arrival_time`, `capacity`, `seat_no`, `amount`, `status`) VALUES
(2, 'usman', 'Ibrahim', 'ussy@Gmail.com', '425238715', 'GME-393QJ', 'Gombe-Bauchi', '08:00:00am', '2 Hours', '14', '2', '2000', '1'),
(3, 'ibrahim', 'mamuda', 'uma@gmail.com', '408053869', 'GME-393QJ', 'Gombe-Bauchi', '08:00:00am', '2 Hours', '14', '1', '2000', '1'),
(4, 'adamu', 'umar', 'uh@gmail.com', '451049416', 'GME-393QJ', 'Gombe-Bauchi', '08:00:00am', '2 Hours', '14', '1', '2000', '1'),
(5, 'anas', 'mamuda', 'a@gmail.com', '401265399', 'GME-393QJ', 'Gombe-Bauchi', '08:00:00am', '2 Hours', '14', '1', '2000', '1'),
(6, 'habu', 'sani', 'habu@gmail.com', '237847222', 'GME-393QJ', 'Gombe-Bauchi', '08:00:00am', '2 Hours', '14', '1', '2000', '1'),
(7, 'habu', 'sani', 'habu@gmail.com', '311035156', 'GME-311QJ', 'Gombe-yola', '10:00pm', '12:30am', '14', '1', '2000', '1'),
(8, 'muhammad', 'hassan', 'muhammad@gmail.com', '865614149', 'GME-303QJ', 'Gombe-kano', '08:00pm', '12:00pm', '16', '1', '2500', '1'),
(9, 'muhammad', 'hassan', 'muhammad@gmail.com', '159044053', 'GME-303QJ', 'Gombe-kano', '08:00pm', '12:00pm', '16', '1', '2500', '1'),
(10, 'muhammad', 'hassan', 'muhammad@gmail.com', '129014756', 'GME-303QJ', 'Gombe-kano', '08:00pm', '12:00pm', '16', '1', '2500', '1'),
(11, 'habu', 'sani', 'habu@gmail.com', '740912543', 'GME-393QJ', 'Gombe-Borno', '08:00:00am', '01:00am', '14', '1', '2500', '1'),
(12, 'habu', 'sani', 'habu@gmail.com', '786376953', 'GME-303QJ', 'Gombe-kano', '08:00pm', '12:00pm', '16', '1', '2500', '1'),
(13, 'habu', 'sani', 'habu@gmail.com', '524902343', 'GME-393QJ', 'Gombe-Bauchi', '08:00:00am', '2 Hours', '14', '1', '2000', '1'),
(14, 'aisha', 'sani', 'sani@gmail.com', '956244574', 'GME-393QJ', 'Gombe-Bauchi', '08:00:00am', '2 Hours', '14', '1', '2000', '1'),
(15, 'habu', 'sani', 'habu@gmail.com', '190538194', 'GME-393QJ', 'Gombe-Bauchi', '08:00:00am', '2 Hours', '14', '1', '2000', '1'),
(16, 'habu', 'sani', 'habu@gmail.com', '424967447', 'GME-393QJ', 'Gombe-Bauchi', '08:00:00am', '2 Hours', '14', '1', '2000', '1'),
(17, 'fatima', 'hassan', 'ftm@gmail.com', '863525390', 'GME-303QJ', 'Gombe-kano', '08:00pm', '12:00pm', '16', '1', '2500', '1'),
(18, 'fatima', 'hassan', 'ftm@gmail.com', '889702690', 'GME-311QJ', 'Gombe-yola', '10:00pm', '12:30am', '14', '1', '2000', '1'),
(19, 'fatima', 'hassan', 'ftm@gmail.com', '651719835', 'GME-311QJ', 'Gombe-yola', '10:00pm', '12:30am', '14', '1', '2000', '1'),
(20, 'sadiyya', 'yahaya', 'sadiya@gmail.com', '229139539', 'GME-303QJ', 'Gombe-kano', '08:00pm', '12:00pm', '16', '1', '2500', '1'),
(21, 'habu', 'sani', 'habu@gmail.com', '211778428', 'GME-303QJ', 'Gombe-kano', '08:00pm', '12:00pm', '16', '1', '2500', '1'),
(22, 'kasim', 'ibnuadam', 'kasim@gmail.com', '890028211', 'GME-311QJ', 'Gombe-kaduna', '08:00pm', '01:00am', '16', '1', '3000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `kin_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `kin_phone` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `m_status` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `fname`, `lname`, `kin_name`, `email`, `phone`, `kin_phone`, `gender`, `m_status`, `city`, `address`, `status`) VALUES
(1, 'sulaiman ', 'idris', 'hassan', 'hbsyaro@gmail.com', '08032658899', '2015-01-14', 'male', 'married', 'Gombe', 'dawaki', '1'),
(2, 'usman', 'Ibrahim', '', 'ussy@Gmail.com', '08025445869', '2015-01-20', 'male', 'married', 'Gombe', 'Dawaki', '1'),
(3, 'ibrahim', 'mamuda', '', 'uma@gmail.com', '02036394643', '2020-01-09', 'male', 'single', 'gombe', 'j/fari', '1'),
(4, 'adamu', 'umar', '', 'uh@gmail.com', '08022334455', '2020-01-14', 'male', 'single', 'gombe', 'labo', '1'),
(5, 'anas', 'mamuda', '', 'a@gmail.com', '07054893214', '2020-01-15', 'male', 'single', 'gombe', 'labo', '1'),
(6, 'habu', 'sani', '', 'habu@gmail.com', '09090909090', '07034235678', 'male', 'married', 'kaduna', 'GRA ', '1'),
(7, 'aisha', 'sani', '', 'sani@gmail.com', '09090909090', '07034235678', 'female', 'Marital Status', 'gombe', 'yelenguruza', '1'),
(8, 'fatima', 'hassan', '', 'ftm@gmail.com', '08076548790', '09090909090', 'female', 'single', 'kaduna', 'GRA ', '1'),
(9, 'fatima', 'hassan', '', 'ftm@gmail.com', '08076548790', '07034235678', 'female', 'single', 'kaduna', 'GRA ', '1'),
(10, 'fatima', 'hassan', '', 'ftm@gmail.com', '08076548790', '09090908080', 'female', 'single', 'bauchi', 'GRA ', '1'),
(11, 'sadiyya', 'yahaya', '', 'sadiya@gmail.com', '07064730005', '09090908080', 'female', 'married', 'kaduna', 'g d deba', '1'),
(12, 'habu', 'sani', '', 'habu@gmail.com', '09090909090', '09099999999', 'male', 'single', 'gombe', 'yelenguruza', '1'),
(13, 'kasim', 'ibnuadam', '', 'kasim@gmail.com', '08145637280', '09090908080', 'male', 'single', 'gombe', 'jekadafari', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_schedules`
--
ALTER TABLE `bus_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clerk`
--
ALTER TABLE `clerk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_booking`
--
ALTER TABLE `payment_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_booking`
--
ALTER TABLE `user_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bus_schedules`
--
ALTER TABLE `bus_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `clerk`
--
ALTER TABLE `clerk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `payment_booking`
--
ALTER TABLE `payment_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user_booking`
--
ALTER TABLE `user_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
