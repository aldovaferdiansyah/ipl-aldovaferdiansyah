-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Des 2023 pada 14.51
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
-- Database: `usaha`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `Admin_id` int(5) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Admin_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `apply`
--

CREATE TABLE `apply` (
  `Id_apply` int(5) NOT NULL,
  `Js_id` int(5) NOT NULL,
  `Date_apply` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `approve`
--

CREATE TABLE `approve` (
  `Id_approve` int(5) NOT NULL,
  `Admin_id` int(5) NOT NULL,
  `Date_approve` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `Username` varchar(20) NOT NULL,
  `Id_role` int(5) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobprovider`
--

CREATE TABLE `jobprovider` (
  `Jp_id` int(5) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Company_name` varchar(30) NOT NULL,
  `Company_address` varchar(30) NOT NULL,
  `Company_contact_num` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobseeker`
--

CREATE TABLE `jobseeker` (
  `Js_id` int(5) NOT NULL,
  `Username` varchar(5) NOT NULL,
  `Js_name` varchar(30) NOT NULL,
  `Js_address` varchar(30) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Contact_num` varchar(15) NOT NULL,
  `Gender` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `request`
--

CREATE TABLE `request` (
  `Id_request` int(5) NOT NULL,
  `Jp_id` int(5) NOT NULL,
  `Date_request` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `Id_role` int(5) NOT NULL,
  `Name_role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vacancy`
--

CREATE TABLE `vacancy` (
  `Vacancy_id` int(5) NOT NULL,
  `Id_approve` int(5) NOT NULL,
  `Id_apply` int(5) NOT NULL,
  `Id_request` int(5) NOT NULL,
  `Vacancy_title` text NOT NULL,
  `Vacancy_desc` text NOT NULL,
  `Num_of_jobs` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_id`),
  ADD KEY `Username` (`Username`);

--
-- Indeks untuk tabel `apply`
--
ALTER TABLE `apply`
  ADD PRIMARY KEY (`Id_apply`),
  ADD KEY `Js_id` (`Js_id`);

--
-- Indeks untuk tabel `approve`
--
ALTER TABLE `approve`
  ADD PRIMARY KEY (`Id_approve`),
  ADD KEY `Admin_id` (`Admin_id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Username`),
  ADD KEY `Id_role` (`Id_role`);

--
-- Indeks untuk tabel `jobprovider`
--
ALTER TABLE `jobprovider`
  ADD PRIMARY KEY (`Jp_id`),
  ADD KEY `Username` (`Username`);

--
-- Indeks untuk tabel `jobseeker`
--
ALTER TABLE `jobseeker`
  ADD PRIMARY KEY (`Js_id`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `Username` (`Username`);

--
-- Indeks untuk tabel `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`Id_request`),
  ADD KEY `Jp_id` (`Jp_id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`Id_role`);

--
-- Indeks untuk tabel `vacancy`
--
ALTER TABLE `vacancy`
  ADD PRIMARY KEY (`Vacancy_id`),
  ADD KEY `Id_approve` (`Id_approve`,`Id_apply`,`Id_request`),
  ADD KEY `Id_apply` (`Id_apply`),
  ADD KEY `Id_request` (`Id_request`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `customer` (`Username`);

--
-- Ketidakleluasaan untuk tabel `apply`
--
ALTER TABLE `apply`
  ADD CONSTRAINT `apply_ibfk_1` FOREIGN KEY (`Js_id`) REFERENCES `jobseeker` (`Js_id`);

--
-- Ketidakleluasaan untuk tabel `approve`
--
ALTER TABLE `approve`
  ADD CONSTRAINT `approve_ibfk_1` FOREIGN KEY (`Admin_id`) REFERENCES `admin` (`Admin_id`);

--
-- Ketidakleluasaan untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Id_role`) REFERENCES `role` (`Id_role`);

--
-- Ketidakleluasaan untuk tabel `jobprovider`
--
ALTER TABLE `jobprovider`
  ADD CONSTRAINT `jobprovider_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `customer` (`Username`);

--
-- Ketidakleluasaan untuk tabel `jobseeker`
--
ALTER TABLE `jobseeker`
  ADD CONSTRAINT `jobseeker_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `customer` (`Username`);

--
-- Ketidakleluasaan untuk tabel `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_ibfk_1` FOREIGN KEY (`Jp_id`) REFERENCES `jobprovider` (`Jp_id`);

--
-- Ketidakleluasaan untuk tabel `vacancy`
--
ALTER TABLE `vacancy`
  ADD CONSTRAINT `vacancy_ibfk_1` FOREIGN KEY (`Id_apply`) REFERENCES `apply` (`Id_apply`),
  ADD CONSTRAINT `vacancy_ibfk_2` FOREIGN KEY (`Id_approve`) REFERENCES `approve` (`Id_approve`),
  ADD CONSTRAINT `vacancy_ibfk_3` FOREIGN KEY (`Id_request`) REFERENCES `request` (`Id_request`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
