-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 5, 2022 at 10:35 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `otrsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked`
--

CREATE TABLE `booked` (
  `id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `class` varchar(10) NOT NULL DEFAULT 'second',
  `no` int(11) NOT NULL DEFAULT '1',
  `seat` varchar(30) NOT NULL,
  `date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booked`
--

INSERT INTO `booked` (`id`, `schedule_id`, `payment_id`, `user_id`, `code`, `class`, `no`, `seat`, `date`) VALUES
(15, 5, 12, 4, '2022/005/1324', 'first', 1, 'F01', 'Sun, 11-Apr-2022 11:52:19 AM'),
(17, 5, 15, 3, '2022/005/2645', 'first', 5, 'F02', 'Tue, 12-Apr-2022 12:48:38 PM'),
(18, 6, 16, 3, '2022/006/1655', 'first', 8, 'F001 -F008', 'Mon, 10-Apr-2022 01:08:20 PM'),
(19, 6, 1, 4, '2022/006/9146', 'second', 1, 'S0001', 'Tue, 11-Mar-2022 01:09:22 PM'),
(20, 8, 18, 4, '2022/008/1144', 'second', 8, 'S0001 -S0008', 'Sat, 10-Apr-2022 01:12:58 PM'),
(21, 18, 19, 1, '2022/018/1671', 'first', 8, 'F01 -F08', 'Sun, 27-Mar-2022 04:10:29 PM'),
(22, 20, 20, 5, '2022/020/126', 'first', 30, 'F01 - F30', 'Mon, 28-Mar-2022 11:36:57 PM'),
(23, 20, 21, 6, '2022/020/31816', 'first', 2, 'F31 - F32', 'Fri, 25-Mar-2022 10:10:44 PM'),
(24, 22, 22, 6, '2022/022/1176', 'second', 1, 'S001', 'Fri, 25-Mar-2022 02:08:07 PM'),
(25, 24, 23, 2, '2022/024/197', 'second', 2, 'S001 - S002', 'Fri, 25-Mar-2022 02:25:27 PM'),
(26, 26, 24, 8, '2022/026/1183', 'first', 4, 'F01 - F04', 'Fri, 25-Mar-2022 04:25:09 PM'),
(27, 98, 25, 7, '2022/098/198', 'first', 2, 'F001 - F002', 'Wed, 13-Apr-2022 05:17:54 AM'),
(28, 99, 26, 7, '2022/099/157', 'second', 1, 'S001', 'Thu, 7-Apr-2022 05:28:54 AM'),
(29, 100, 27, 7, '2022/0100/1134', 'second', 1, 'S001', 'Thu, 7-Apr-2022 05:39:18 AM'),
(30, 101, 39, 7, '2022/0101/1116', 'second', 1, 'S001', 'Wed, 6-Apr-2022 06:15:30 AM'),
(31, 102, 40, 7, '2022/0102/1502', 'first', 1, 'F001', 'Sun, 10-Apr-2022 06:18:10 AM'),
(32, 103, 43, 7, '2022/0103/1792', 'second', 2, 'S001 - S002', 'Wed, 13-Apr-2022 11:02:56 AM'),
(33, 103, 44, 8, '2022/0103/3809', 'second', 1, 'S003', 'Tue, 12-Apr-2022 02:21:40 PM'),
(34, 104, 45, 8, '2022/0104/1526', 'first', 2, 'F001 - F002', 'Wed, 13-Apr-2022 05:22:15 PM');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` varchar(400) NOT NULL,
  `response` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `message`, `response`) VALUES
(1, 3, 'It's a good experience.', 'none'),
(3, 6, 'Demo Test - 2', 'Demo done'),
(8, 4, 'This is passenger feedback text', Done),
(9, 6, 'Arrangement was really nice.', NULL),
(11, 8, 'This is a demo test for feedback sections!!!', 'Yap');
(11, 8, 'Well done!!!', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(40) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `loc` varchar(40) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`id`, `name`, `email`, `password`, `phone`, `address`, `loc`, `status`) VALUES
(1, 'Passenger One', 'pas001@gmail.com', '1f87051e29a6927b2e6651dfb9b66387', '0780100000', 'Wari Rankin Street', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(2, 'Hitlar ', 'hitlar@gmail.com', '1526755d438e395e551f229a484f8a1d', '3000002000', 'Mojijheel', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(3, 'Passenger Two', 'pass002@gmail.com', 'c3a19571f1271af5f27a9582377b7d4a', '1400000020', 'Azimpur, Dhaka', 'f3fc8566140434f0a3f47303c62d5146.jpg', 0),
(4, 'Passenger Three', 'pass003@gmail.com', '1dd76b458af8df200a097c5b061df9b1', '9000001000', 'Mohakhali, Dhaka', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(5, 'Passenger Four', 'pass004@gmail.com', 'd780455a563c7c5dbfb74a51785ad949', '0000010020', 'Sylhet', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(6, 'Test Passenger', 'testpass@mail.com', 'abe1bcf64eb68c39847b962e8caadadf', '0000002000', 'Dhaka', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(7, 'Lamia Hossain', 'lamiahossain@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '7000000000', 'Mintu Road', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(8, 'Demo Account', 'demoaccount@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '7800000000', 'My demo address', '404a6378027a553d980b99162a5b4ce8.png', 1);
(9, 'Samiha Afroz', 'samiha@gmail.com', '2c249aec442bcc3071f0578463a1b4bc', '01036400100', 'Keranigonj, Dhaka', 'd600ed2d2c640b3e74a03933c19c39b3.jpg', 1);
(10, 'Hafsa', 'hafsa@gmail.com', 'e407fb77fd3e57afe8761c7f0dc597f2', '01039874568', 'Uttara, Dhaka', '16fe4f11a7041a15d4a4d3d3be7f3082.jpg', 1);
(11, 'Adlin', 'adlin@gmail.com', '704c96292e3dfc8cc297d956532727be', '01436987523', 'Dhanmondi', '4b40b5175c03dedb9799edb44c5019cd.jpeg', 1);
(12, 'Sanjida', 'sanju@gmail.com', 'eec0b598975743fca23e2c3a411e578b', '02369874512', 'Mirpur', '5139a02b703f54c175da587571128b84.jpg', 1);


-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `ref` varchar(100) NOT NULL,
  `date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `passenger_id`, `schedule_id`, `amount`, `ref`, `date`) VALUES
(1, 4, 5, '520', 'oyki20masb', 'Sun, 11-Apr-2022 11:52:19 AM'),
(2, 4, 6, '23', 'oyki20masb', Tue, 12-Apr-2022 1:52:19 AM'),
(3, 3, 5, '1860', '5gtnjnzclw', 'Mon, 10-Apr-2022 01:08:20 PM'),
(4, 3, 6, '680', 'dzwl1488r0', 'Mon, 10-Apr-2022 01:08:20 PM'),
(5, 4, 8, '8080', 'hja9zvtmgk', 'Sun, 11-Apr-2022 11:52:19 AM'),
(6, 1, 18, '1080', '3TVSHVBQII', 'Sun, 27-Mar-2022 04:10:29 PM'),
(7, 5, 20, '120', '84JP4U5LKZ', 'Sun, 27-Mar-2022 04:10:29 PM'),
(8, 6, 20, '8080', 'VXIZSCHMOG', 'Wed, 13-Apr-2022 05:22:15 PM'),
(9, 6, 22, '1410', 'TDHRBZTZOH', 'Wed, 13-Apr-2022 05:22:20 PM'),
(10, 2, 24, '5050', '4TRM9FIFEV', 'Thu, 7-Apr-2022 05:39:18 AM'),
(11, 8, 26, '5260', '1QXPYSUTOI', 'Thu, 7-Apr-2022 06:39:18 AM'),
(12, 7, 98, '303', 'FIPJBLU5LC', 'Thu, 7-Apr-2022 07:39:18 AM'),
(13, 7, 99, '80', 'NKMGVH44QG', 'Thu, 7-Apr-2022 09:39:18 AM'),
(14, 7, 100, '51', 'NS5IEEK1HS', 'Fri, 25-Mar-2022 02:25:27 PM'),
(15, 7, 101, '56', 'OEPPIM6X9H', 'Fri, 25-Mar-2022 05:25:27 PM'),
(16, 7, 102, '107', 'M07FP4QTOV', 'Fri, 25-Mar-2022 07:25:27 PM'),
(17, 7, 103, '152', 'RITK5E5GDM', 'Mon, 28-Mar-2022 09:36:57 PM'),
(18, 8, 103, '76', 'H6CMTHBJUU', 'Mon, 28-Mar-2022 10:36:57 PM'),
(19, 8, 104, '324', 'KH70GOC8KO', 'Mon, 28-Mar-2022 12:36:57 PM');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `id` int(11) NOT NULL,
  `start` varchar(100) NOT NULL,
  `stop` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`id`, `start`, `stop`) VALUES
(3, 'Dhaka', 'Chattogram'),
(4, 'Dhaka', 'Sylhet'),
(5, 'Dhaka', 'Noakhali'),
(6, 'Cumilla', 'Khulna'),
(7, 'Dhaka', 'Lalmonirhat'),
(8, 'Dhaka', 'Rajshahi'),
(9, 'Dhaka', 'Rangpur'),
(10, 'Cumilla', 'Rangpur'),
(11, 'Cumilla', 'Sirajgonj'),
(12, 'Dhaka', 'Chapainobabgonj'),
(13, 'Dhaka', 'Jamalpur'),
(14, 'Rajshahi', 'Sylhet'),
(15, 'Noakhali', 'Kurigram'),
(16, 'Cumilla', 'Mymensingh'),
(17, 'Mymensingh', 'Jamalpur'),
(18, 'Dhaka', 'Akhaura'),
(19, 'B. Baria', 'Dhaka');
(20, 'Akhaura', 'Rangpur');
(21, 'Chapainobabgonj', 'Jamalpur');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `train_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(10) NOT NULL,
  `first_fee` float NOT NULL,
  `second_fee` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `train_id`, `route_id`, `date`, `time`, `first_fee`, `second_fee`) VALUES
(5, 7, 7, '18-04-2022', '10:30', 180, 80),
(6, 11, 6, '18-04-2022', '19:30', 200, 85),
(7, 11, 5, '18-04-2022', '09:30', 130, 45),
(8, 11, 4, '18-04-2022', '22:30', 130, 60),
(9, 11, 3, '10-04-2022', '22:30', 100, 40),
(10, 7, 5, '10-04-2022', '18:30', 160, 100),
(11, 9, 7, '11-03-2022', '06:30', 180, 100),
(12, 10, 5, '11-04-2022', '18:30', 310, 150),
(16, 2, 7, '11-04-2022', '23:00', 265, 180),
(17, 9, 3, '20-04-2022', '09:00', 180, 115),
(18, 10, 4, '20-04-2022', '11:00', 180, 100),
(20, 8, 4, '20-04-2022', '22:30', 165, 100),
(22, 8, 3, '20-04-2022', '17:15', 130, 70),
(23, 3, 3, '13-04-2022', '06:30', 100, 85),
(24, 2, 3, '13-03-2022', '15:20', 130, 95),
(25, 1, 3, '13-04-2022', '17:30', 65, 55),
(26, 2, 3, '13-04-2022', '21:00', 130, 90),
(97, 11, 8, '14-04-2022', '23:00', 185, 90),
(98, 10, 14, '14-04-2022', '21:00', 150, 85),
(99, 8, 11, '14-04-2022', '11:10', 166, 79),
(100, 9, 12, '14-04-2022', '12:20', 100, 50),
(101, 2, 10, '15-04-2022', '23:40', 105, 55),
(102, 7, 4, '15-04-2022', '22:00', 105, 65),
(103, 9, 11, '15-04-2022', '21:30', 120, 75),
(104, 12, 15, '16-04-2022', '23:00', 160, 72);

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `first_seat` int(11) NOT NULL,
  `second_seat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`id`, `name`, `first_seat`, `second_seat`) VALUES
(1, 'Subarna Express', 30, 800),
(2, 'Mahanagar Express', 20, 900),
(4, 'Ekota Express', 10, 600),
(7, 'Tista Express', 40, 1000),
(8, 'Sundarban Express', 50, 780),
(9, 'Aghnibina', 45, 850),
(10, 'Turna Express', 50, 750),
(11, 'Jamuna Express', 25, 500),
(12, 'Lalmani Express', 250, 600),
(13, 'Kishorganj Express', 50, 500);
(14, 'Sonar Bangla Express', 80, 520),
(15, 'Mohangonj Express', 85, 650),
(16, 'Surma Mail', 45, 490),
(17, 'Jamalpur Express', 60, 600),
(18, 'Dhaka Mail', 60, 450),


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'admin@admin.com', 'D00F5D5217896FB7FD601412CB890830');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked`
--
ALTER TABLE `booked`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `schedule_id` (`schedule_id`,`user_id`,`payment_id`) USING BTREE,
  ADD KEY `schedule_id_2` (`schedule_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `passenger_id` (`passenger_id`,`schedule_id`),
  ADD KEY `passenger_id_2` (`passenger_id`) USING BTREE,
  ADD KEY `schedule_id` (`schedule_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `train_id` (`train_id`),
  ADD KEY `route_id` (`route_id`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked`
--
ALTER TABLE `booked`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `train`
--
ALTER TABLE `train`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `booked`
--
ALTER TABLE `booked`
  ADD CONSTRAINT `booked_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`),
  ADD CONSTRAINT `booked_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `passenger` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passenger` (`id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`);

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `train` (`id`),
  ADD CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`route_id`) REFERENCES `route` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

