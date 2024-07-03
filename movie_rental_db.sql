-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2024 at 05:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_rental_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_info`
--

CREATE TABLE `tbl_customer_info` (
  `customer_id` int(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `addressName` varchar(255) DEFAULT NULL,
  `contactNo` int(11) DEFAULT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_customer_info`
--

INSERT INTO `tbl_customer_info` (`customer_id`, `firstName`, `middleName`, `lastName`, `addressName`, `contactNo`, `dateCreated`) VALUES
(1, 'Marjore', 'Iglesias', 'Jamodiong', 'Libertad', 214789, '2024-07-02 14:37:48'),
(2, 'Haidee', 'Mercado', 'Yadao', 'Sumilihon', 214789, '2024-07-02 14:46:05'),
(3, 'Diana', 'Feihl', 'Gonia', 'Baan', 218973, '2024-07-02 14:46:05'),
(4, 'April Joy', 'Caro', 'Lintao', 'Libertad', 214789, '2024-07-02 14:57:12'),
(5, 'Shamon', 'Libosa', 'Salavalosa', 'Libertad', 218973, '2024-07-02 14:57:12'),
(6, 'Daryll', 'Alingasa', 'Cabagay', 'Ampayon', 214789, '2024-07-02 14:58:42'),
(7, 'Lord Ian', 'Mercedes', 'Paquiao', 'Nasipit', 218973, '2024-07-02 14:58:42'),
(8, 'Jamel', 'Delosa', 'Pandiin', 'Ampayon', 214789, '2024-07-02 14:59:48'),
(9, 'Joel', 'Calo', 'Trillo', 'Buenavista', 218973, '2024-07-02 14:59:48'),
(10, 'Jerson', 'Cargo', 'Butawan', 'Libertad', NULL, '2024-07-02 15:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie_about`
--

CREATE TABLE `tbl_movie_about` (
  `movie_about_id` int(11) NOT NULL,
  `inventory_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `dateCreated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_movie_about`
--

INSERT INTO `tbl_movie_about` (`movie_about_id`, `inventory_id`, `genre_id`, `description`, `duration`, `month`, `year`, `dateCreated`) VALUES
(1, 1, 1, 'Wala lang', 245, 'January', 2022, 0),
(2, 2, 2, 'Avengers', 245, 'August', 2023, 0),
(3, 3, 3, 'Scary', 234, 'May', 2021, 0),
(4, 4, 4, 'Fantasy ', 234, 'October', 2022, 0),
(5, 5, 5, 'Soco', 245, 'February', 2024, 0),
(6, 6, 6, 'Action', 243, 'July', 2019, 0),
(7, 7, 7, 'Scientific Calculator', 234, 'March', 2024, 0),
(8, 8, 8, 'Comics Ni', 245, 'May', 2023, 0),
(9, 9, 9, 'Fiction gyud ni', 254, 'May', 2023, 0),
(10, 10, 10, 'Action dayon', 128, 'August', 2023, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie_genre`
--

CREATE TABLE `tbl_movie_genre` (
  `genre_id` int(11) NOT NULL,
  `genreType` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_movie_genre`
--

INSERT INTO `tbl_movie_genre` (`genre_id`, `genreType`, `DateCreated`) VALUES
(1, 'Action and Comedy', '2024-07-02 15:57:57'),
(2, 'Action and Comedy', '2024-07-02 15:57:57'),
(3, 'Drama and Horror', '2024-07-02 15:59:07'),
(4, 'Comic Fantasy', '2024-07-02 15:59:07'),
(5, 'Crime', '2024-07-02 15:59:36'),
(6, 'Action', '2024-07-02 15:59:36'),
(7, 'Comic Science and Fiction', '2024-07-02 16:00:50'),
(8, 'Fantasy and Comic', '2024-07-02 16:00:50'),
(9, 'Fiction', '2024-07-02 16:01:10'),
(10, 'Action', '2024-07-02 16:01:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie_info`
--

CREATE TABLE `tbl_movie_info` (
  `movie_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `cast` varchar(255) DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_movie_info`
--

INSERT INTO `tbl_movie_info` (`movie_id`, `title`, `cast`, `director`, `dateCreated`) VALUES
(1, 'Avengers: End Game', 'Steven ', 'Wenn Deramas', '2024-07-02 15:34:40'),
(2, 'Mallari', 'Anne Curtis', 'Wyn Wyn', '2024-07-02 15:34:40'),
(3, 'Annabelle', 'Karylle', 'Wyn Marquez', '2024-07-02 15:36:13'),
(4, 'Inside Out 2', 'April Joy', 'Christian Petallar', '2024-07-02 15:36:13'),
(5, 'Petrang Kabayo', 'Vice Ganda', 'Ryan Bang', '2024-07-02 15:37:07'),
(6, 'X-Men ', 'Feihl ', 'Mark Cabatingan', '2024-07-02 15:37:07'),
(7, 'Antman', 'Steve Roberts', 'Daryll Cabagay', '2024-07-02 15:39:34'),
(8, 'Superman', 'Jorge', 'Aljieo Tolibas', '2024-07-02 15:39:34'),
(9, 'Wonderwoman', 'Shamon Salvalosa', 'Aila Hoylar', '2024-07-02 15:40:34'),
(10, 'Gagamboy', 'Jerson', 'Shiela Mae Ga', '2024-07-02 15:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie_inventory_info`
--

CREATE TABLE `tbl_movie_inventory_info` (
  `inventory_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `borrowed` int(11) NOT NULL,
  `penalty` int(11) DEFAULT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_movie_inventory_info`
--

INSERT INTO `tbl_movie_inventory_info` (`inventory_id`, `customer_id`, `price`, `quantity`, `available`, `borrowed`, `penalty`, `dateCreated`) VALUES
(1, 1, 150, 2, 20, 2, 500, '2024-07-02 14:44:42'),
(2, 2, 250, 3, 10, 3, 400, '2024-07-02 14:47:35'),
(3, 3, 400, 0, 50, 0, 1000, '2024-07-02 14:47:35'),
(4, 4, 300, 10, 55, 10, 500, '2024-07-02 15:00:58'),
(5, 5, 100, 0, 50, 0, 1000, '2024-07-02 15:00:58'),
(6, 6, 250, 3, 20, 0, 400, '2024-07-02 15:01:45'),
(7, 7, 100, 0, 50, 0, 1000, '2024-07-02 15:01:45'),
(8, 8, 250, 20, 2, 20, 400, '2024-07-02 15:02:35'),
(9, 9, 100, 5, 50, 5, 1000, '2024-07-02 15:02:35'),
(10, 10, 250, 10, 20, 10, 400, '2024-07-02 15:42:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rent_info`
--

CREATE TABLE `tbl_rent_info` (
  `rent_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `requestedDate` date NOT NULL,
  `returnDate` date NOT NULL,
  `requestedQty` int(11) NOT NULL,
  `requestedAmount` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_rent_info`
--

INSERT INTO `tbl_rent_info` (`rent_id`, `movie_id`, `customer_id`, `requestedDate`, `returnDate`, `requestedQty`, `requestedAmount`, `status`, `dateCreated`) VALUES
(1, 1, 1, '2023-07-12', '2023-07-20', 2, 450, 'RENTED', '2024-07-02 16:36:53'),
(2, 2, 2, '2022-07-14', '2022-07-29', 5, 900, 'RENTED', '2024-07-02 16:40:59'),
(3, 3, 3, '2022-02-16', '2022-02-23', 3, 500, 'RENTED', '2024-07-02 16:40:59'),
(4, 4, 4, '2023-09-14', '2023-09-27', 1, 500, 'RENTED', '2024-07-02 16:42:57'),
(5, 5, 5, '2022-06-09', '2022-06-22', 3, 690, 'RENTED', '2024-07-02 16:42:57'),
(6, 6, 6, '2024-10-04', '2024-10-01', 2, 550, 'RENTED', '2024-07-02 16:45:26'),
(7, 7, 7, '2024-11-01', '2023-11-17', 5, 1000, 'RENTED', '2024-07-02 16:45:26'),
(8, 8, 8, '2024-07-05', '2024-07-31', 5, 5000, 'NOT RENTED', '2024-07-02 16:47:14'),
(9, 9, 9, '2022-10-20', '2022-10-31', 1, 350, 'NOT RENTED', '2024-07-02 16:47:14'),
(10, 10, 10, '2024-07-01', '2024-07-17', 4, 5500, 'NOT RENTED', '2024-07-02 16:48:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_customer_info`
--
ALTER TABLE `tbl_customer_info`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_movie_about`
--
ALTER TABLE `tbl_movie_about`
  ADD PRIMARY KEY (`movie_about_id`),
  ADD KEY `inventory` (`inventory_id`),
  ADD KEY `genre` (`genre_id`);

--
-- Indexes for table `tbl_movie_genre`
--
ALTER TABLE `tbl_movie_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_movie_info`
--
ALTER TABLE `tbl_movie_info`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tbl_movie_inventory_info`
--
ALTER TABLE `tbl_movie_inventory_info`
  ADD PRIMARY KEY (`inventory_id`),
  ADD KEY `customer_ids` (`customer_id`);

--
-- Indexes for table `tbl_rent_info`
--
ALTER TABLE `tbl_rent_info`
  ADD PRIMARY KEY (`rent_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_customer_info`
--
ALTER TABLE `tbl_customer_info`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_movie_about`
--
ALTER TABLE `tbl_movie_about`
  MODIFY `movie_about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_movie_genre`
--
ALTER TABLE `tbl_movie_genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_movie_info`
--
ALTER TABLE `tbl_movie_info`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_movie_inventory_info`
--
ALTER TABLE `tbl_movie_inventory_info`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_rent_info`
--
ALTER TABLE `tbl_rent_info`
  MODIFY `rent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_movie_about`
--
ALTER TABLE `tbl_movie_about`
  ADD CONSTRAINT `genre` FOREIGN KEY (`genre_id`) REFERENCES `tbl_movie_genre` (`genre_id`),
  ADD CONSTRAINT `inventory` FOREIGN KEY (`inventory_id`) REFERENCES `tbl_movie_inventory_info` (`inventory_id`);

--
-- Constraints for table `tbl_movie_inventory_info`
--
ALTER TABLE `tbl_movie_inventory_info`
  ADD CONSTRAINT `customer_ids` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer_info` (`customer_id`);

--
-- Constraints for table `tbl_rent_info`
--
ALTER TABLE `tbl_rent_info`
  ADD CONSTRAINT `tbl_rent_info_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer_info` (`customer_id`),
  ADD CONSTRAINT `tbl_rent_info_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `tbl_movie_info` (`movie_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
