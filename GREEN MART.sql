-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jul 11, 2020 at 01:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `GREEN MART`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama_brg`, `harga`) VALUES
(1, 'Ayam Segar', 50000),
(2, 'Bayam', 10000),
(3, 'Wortel', 10000),
(4, 'Tempe & Tahu', 10000),

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `username` varchar(30) NOT NULL,
  `nama_brg` varchar(100) NOT NULL,
  `harga` int(50) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `hp` varchar(50) NOT NULL,
  `ymd` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`username`, `nama_brg`, `harga`, `Jumlah`, `nama`, `alamat`, `hp`, `ymd`) VALUES
('C872YA', 'Ayam Segar', 50000, 0, 'Ayuni ', 'jl. mawar raya', '2147483647', '2020-07-11'),
('csy', 'Tempe & Tahu', 20000, 2, 'Ayuni', 'jl. mawar raya', '+6281219367360', '2020-07-11'),
('ayuni28', 'Wortel', 50000, 12, 'ayuni', 'jl. mawar raya', '+6281219367360', '2020-07-11'),
('ayuniar', 'Bayam', 50000, 0, 'ayuni', 'jl. mawar raya', '+6281219367360', '2020-07-11');
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'ayuni28', '$2y$10$FRl2uFYGJ9kHuC4gNBuQvunLnCGWRwOFu6OzRRGOBnSvy2yTP4v0m', '2020-07-11 16:09:48'),
(2, 'yunyun', '$2y$10$aqF2RPHvZfB1SpcJa7FZx.KSrbkGxEv081zR5p.M2Axz8dY7goy7i', '2020-07-11 16:26:09'),
(3, 'yuniardhia', '$2y$10$SSgyeHD.3eodGGKfQ3tb7e7goZl/HOYsF1T565qq/ZSYYIlXW2ahm', '2020-07-11 16:44:06'),
(4, 'ayuniar', '$2y$10$0GzWdyfG2TOfJF9/rm3AiO1jU3IL2jrBWwlOirN2zTNI2WEBqBF..', '2020-07-11 16:45:24');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
