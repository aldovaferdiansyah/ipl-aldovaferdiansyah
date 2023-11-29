-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Nov 2023 pada 04.39
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtoko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `company`
--

CREATE TABLE `company` (
  `IDCompany` int(5) NOT NULL,
  `Name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `IDCustomer` int(5) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Email` varchar(30) NOT NULL,
  `Address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `IDProduct` int(5) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Price` int(8) NOT NULL,
  `IDCompany` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabelorder`
--

CREATE TABLE `tabelorder` (
  `IDOrder` int(5) NOT NULL,
  `IDCustomer` int(5) NOT NULL,
  `IDProduct` int(5) NOT NULL,
  `Date` date NOT NULL,
  `Quantity` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`IDCompany`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`IDCustomer`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`IDProduct`),
  ADD KEY `IDCompany` (`IDCompany`);

--
-- Indeks untuk tabel `tabelorder`
--
ALTER TABLE `tabelorder`
  ADD PRIMARY KEY (`IDOrder`),
  ADD KEY `IDCustomer` (`IDCustomer`),
  ADD KEY `IDProduct` (`IDProduct`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
