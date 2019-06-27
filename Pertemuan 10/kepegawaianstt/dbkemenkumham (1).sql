-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2019 at 08:52 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbkemenkumham`
--

-- --------------------------------------------------------

--
-- Table structure for table `agama`
--

CREATE TABLE `agama` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agama`
--

INSERT INTO `agama` (`id`, `nama`) VALUES
(4, 'Hindu'),
(1, 'Islam'),
(3, 'Katolik'),
(2, 'Protestan');

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Administrator', '7', 1537494093),
('Kabag', '1', 1513321693),
('Kasubbag', '2', 1537520641),
('Kasubbag', '4', 1513321703),
('Kasubbag', '6', 1513321722),
('Staff', '5', 1513321716),
('Staff', '8', 1513321729);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/admin/*', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/default/*', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/default/index', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/menu/*', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/menu/create', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/menu/index', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/menu/update', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/menu/view', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/permission/*', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/permission/create', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/permission/index', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/permission/update', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/permission/view', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/role/*', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/role/assign', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/role/create', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/role/delete', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/role/index', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/role/remove', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/role/update', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/role/view', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/route/*', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/route/assign', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/route/create', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/route/index', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/route/remove', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/rule/*', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/rule/create', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/rule/index', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/rule/update', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/rule/view', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/user/*', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/admin/user/activate', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/admin/user/delete', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/user/index', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/user/login', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/user/logout', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/user/signup', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/admin/user/view', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/agama/*', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/agama/create', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/agama/delete', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/agama/index', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/agama/update', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/agama/view', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/bagian/*', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/bagian/create', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/bagian/delete', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/bagian/index', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/bagian/update', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/bagian/view', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/cp/*', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/cp/create', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/cp/delete', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/cp/index', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/cp/update', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/cp/view', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/debug/*', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/debug/default/*', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/debug/default/index', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/debug/default/view', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/debug/user/*', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/debug/user/reset-identity', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/debug/user/set-identity', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/gaji/*', 2, NULL, NULL, NULL, 1513321986, 1513321986),
('/gaji/create', 2, NULL, NULL, NULL, 1513321986, 1513321986),
('/gaji/delete', 2, NULL, NULL, NULL, 1513321986, 1513321986),
('/gaji/export-excel2', 2, NULL, NULL, NULL, 1513321986, 1513321986),
('/gaji/export-pdf', 2, NULL, NULL, NULL, 1513321986, 1513321986),
('/gaji/export-word', 2, NULL, NULL, NULL, 1513321986, 1513321986),
('/gaji/index', 2, NULL, NULL, NULL, 1513321986, 1513321986),
('/gaji/update', 2, NULL, NULL, NULL, 1513321986, 1513321986),
('/gaji/view', 2, NULL, NULL, NULL, 1513321986, 1513321986),
('/gii/*', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/gii/default/*', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/gii/default/action', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/gii/default/diff', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/gii/default/index', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/gii/default/preview', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/gii/default/view', 2, NULL, NULL, NULL, 1513328730, 1513328730),
('/gol/*', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/gol/create', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/gol/delete', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/gol/index', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/gol/update', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/gol/view', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/info-pelatihan/*', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/info-pelatihan/create', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/info-pelatihan/delete', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/info-pelatihan/index', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/info-pelatihan/update', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/info-pelatihan/view', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/materi/*', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/materi/create', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/materi/delete', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/materi/index', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/materi/update', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/materi/view', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/pegawai/*', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/pegawai/create', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/pegawai/delete', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/pegawai/index', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/pegawai/update', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/pegawai/view', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/pelatihan/*', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/pelatihan/create', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/pelatihan/delete', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/pelatihan/index', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/pelatihan/update', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/pelatihan/view', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/site/*', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/site/about', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/site/captcha', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/site/contact', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/site/error', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/site/gallery', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/site/hello', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/site/index', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/site/komentar', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/site/login', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/site/logout', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/subbagian/*', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/subbagian/create', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/subbagian/delete', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/subbagian/index', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/subbagian/update', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/subbagian/view', 2, NULL, NULL, NULL, 1513328731, 1513328731),
('/user/*', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/user/admin/*', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/admin/assignments', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/admin/block', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/admin/confirm', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/admin/create', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/admin/delete', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/admin/index', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/admin/info', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/admin/resend-password', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/admin/switch', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/admin/update', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/admin/update-profile', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/profile/*', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/profile/index', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/profile/show', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/recovery/*', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/recovery/request', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/recovery/reset', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/registration/*', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/registration/confirm', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/registration/connect', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/registration/register', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/registration/resend', 2, NULL, NULL, NULL, 1513328728, 1513328728),
('/user/security/*', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/user/security/auth', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/user/security/login', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/user/security/logout', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/user/settings/*', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/user/settings/account', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/user/settings/confirm', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/user/settings/delete', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/user/settings/disconnect', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/user/settings/networks', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('/user/settings/profile', 2, NULL, NULL, NULL, 1513328729, 1513328729),
('Administrator', 1, NULL, NULL, NULL, 1537494025, 1537494025),
('forkabag', 2, NULL, NULL, NULL, 1513328799, 1513328799),
('forkasubbag', 2, NULL, NULL, NULL, 1513328810, 1513328810),
('forstaff', 2, NULL, NULL, NULL, 1513328818, 1513328818),
('Kabag', 1, 'Kepala Bagian', NULL, NULL, 1513321539, 1513321539),
('Kasubbag', 1, 'Kepala Subbagian', NULL, NULL, 1513321561, 1513321561),
('Staff', 1, 'staff', NULL, NULL, 1513321570, 1513329376);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('Administrator', '/*'),
('forkabag', '/gaji/*'),
('forkabag', '/gaji/create'),
('forkabag', '/gaji/delete'),
('forkabag', '/gaji/export-excel2'),
('forkabag', '/gaji/export-pdf'),
('forkabag', '/gaji/export-word'),
('forkabag', '/gaji/index'),
('forkabag', '/gaji/update'),
('forkabag', '/gaji/view'),
('forkasubbag', '/info-pelatihan/*'),
('forkasubbag', '/info-pelatihan/create'),
('forkasubbag', '/info-pelatihan/delete'),
('forkasubbag', '/info-pelatihan/index'),
('forkasubbag', '/info-pelatihan/update'),
('forkasubbag', '/info-pelatihan/view'),
('forkasubbag', '/materi/*'),
('forkasubbag', '/materi/create'),
('forkasubbag', '/materi/delete'),
('forkasubbag', '/materi/index'),
('forkasubbag', '/materi/update'),
('forkasubbag', '/materi/view'),
('forkasubbag', '/pelatihan/*'),
('forkasubbag', '/pelatihan/create'),
('forkasubbag', '/pelatihan/delete'),
('forkasubbag', '/pelatihan/index'),
('forkasubbag', '/pelatihan/update'),
('forkasubbag', '/pelatihan/view'),
('forkasubbag', 'forstaff'),
('forstaff', '/agama/*'),
('forstaff', '/agama/create'),
('forstaff', '/agama/delete'),
('forstaff', '/agama/index'),
('forstaff', '/agama/update'),
('forstaff', '/agama/view'),
('forstaff', '/bagian/*'),
('forstaff', '/bagian/create'),
('forstaff', '/bagian/delete'),
('forstaff', '/bagian/index'),
('forstaff', '/bagian/update'),
('forstaff', '/bagian/view'),
('forstaff', '/gol/*'),
('forstaff', '/gol/create'),
('forstaff', '/gol/delete'),
('forstaff', '/gol/index'),
('forstaff', '/gol/update'),
('forstaff', '/gol/view'),
('forstaff', '/pegawai/*'),
('forstaff', '/pegawai/create'),
('forstaff', '/pegawai/delete'),
('forstaff', '/pegawai/index'),
('forstaff', '/pegawai/update'),
('forstaff', '/pegawai/view'),
('forstaff', '/subbagian/*'),
('forstaff', '/subbagian/create'),
('forstaff', '/subbagian/delete'),
('forstaff', '/subbagian/index'),
('forstaff', '/subbagian/update'),
('forstaff', '/subbagian/view'),
('Kabag', 'forkabag'),
('Kabag', 'forkasubbag'),
('Kabag', 'forstaff'),
('Kasubbag', 'forkasubbag'),
('Kasubbag', 'forstaff'),
('Staff', 'forstaff');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE `bagian` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`id`, `nama`) VALUES
(3, 'Kepegawaian'),
(2, 'keuangan'),
(5, 'PHP'),
(1, 'SIP'),
(4, 'Umum');

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `id` int(11) NOT NULL,
  `idpegawai` int(11) NOT NULL,
  `gapok` double NOT NULL,
  `tunjab` double NOT NULL,
  `uang_makan` double NOT NULL,
  `bpjs` double NOT NULL,
  `lain2` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`id`, `idpegawai`, `gapok`, `tunjab`, `uang_makan`, `bpjs`, `lain2`) VALUES
(1, 1, 1000000, 500000, 400000, 100000, 1000000),
(2, 2, 2000000, 500000, 400000, 100000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gol`
--

CREATE TABLE `gol` (
  `id` int(11) NOT NULL,
  `golongan` varchar(20) NOT NULL,
  `pangkat` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gol`
--

INSERT INTO `gol` (`id`, `golongan`, `pangkat`) VALUES
(1, 'III/a', 'Penata Muda'),
(2, 'III/b', 'Penata Muda Tingkat II'),
(3, 'III/c', 'Penata'),
(4, 'III/d', 'Penata Tingkat I'),
(5, 'IV/a', 'Pembina'),
(6, 'IV/b', 'Pembina Tk.I'),
(7, 'IV/c', 'Pembina Utama Muda'),
(8, 'IV/d', 'Pembina Utama Madya'),
(9, 'IV/e', 'Pembina Utama'),
(10, 'II/a', 'Pengatur Muda'),
(11, 'II/b', 'Pengatur Muda Tingkat I'),
(12, 'II/c', 'Pengatur'),
(13, 'II/d', 'Pengatur Tingkat I');

-- --------------------------------------------------------

--
-- Table structure for table `info_pelatihan`
--

CREATE TABLE `info_pelatihan` (
  `id` int(11) NOT NULL,
  `idpelatihan` int(11) NOT NULL,
  `tempat` varchar(45) NOT NULL,
  `tgl_awal` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `fasilitas` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info_pelatihan`
--

INSERT INTO `info_pelatihan` (`id`, `idpelatihan`, `tempat`, `tgl_awal`, `tgl_akhir`, `fasilitas`) VALUES
(1, 1, 'Pusdiklatwas BPKP Ciawi', '2017-12-18', '2017-12-22', 'Seminar kit, Tas');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id`, `nama`) VALUES
(3, 'Reviu LK'),
(2, 'Yiiframework Advance'),
(1, 'Yiiframework basic');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `parent`, `route`, `order`, `data`) VALUES
(1, 'Data Pegawai', NULL, '/pegawai/index', 1, NULL),
(2, 'Data Pelatihan', NULL, '/pelatihan/index', 2, NULL),
(3, 'Pelatihan', 2, '/pelatihan/index', 1, NULL),
(4, 'Info Pelatihan', 2, '/info-pelatihan/index', 2, NULL),
(5, 'Materi', 2, '/materi/index', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1513306080),
('m140209_132017_init', 1513306118),
('m140403_174025_create_account_table', 1513306119),
('m140504_113157_update_tables', 1513306121),
('m140504_130429_create_token_table', 1513306123),
('m140506_102106_rbac_init', 1513320090),
('m140602_111327_create_menu_table', 1513319216),
('m140830_171933_fix_ip_field', 1513306124),
('m140830_172703_change_account_table_name', 1513306125),
('m141222_110026_update_ip_field', 1513306125),
('m141222_135246_alter_username_length', 1513306126),
('m150614_103145_update_social_account_table', 1513306128),
('m150623_212711_fix_username_notnull', 1513306128),
('m151218_234654_add_timezone_to_profile', 1513306128),
('m160312_050000_create_user', 1513319216),
('m160929_103127_add_last_login_at_to_user_table', 1513306129),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1513320090);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nip` varchar(18) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `gender` enum('Pria','Wanita') NOT NULL,
  `tempat_lahir` varchar(45) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `idgol` int(11) NOT NULL,
  `idsubbagian` int(11) NOT NULL,
  `idagama` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `cv` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `gender`, `tempat_lahir`, `tanggal_lahir`, `idgol`, `idsubbagian`, `idagama`, `alamat`, `hp`, `email`, `foto`, `cv`) VALUES
(1, '198004052007061002', 'Joko Wiwi', 'Pria', 'Dieng', '1980-04-05', 1, 7, 1, 'Wonosobo', '0238103412', 'wiwi@gmail.com', '198004052007061002-14102018.jpg', '198004052007061002-14122017.docx'),
(2, '121131234124', 'Budi', 'Pria', 'Jakarta', '1989-02-14', 3, 4, 3, 'Garut', '252524525', '', '121131234124-14122017.jpg', ''),
(3, '524245245245', 'Mimin', 'Wanita', 'Ciwidey', '1990-02-14', 1, 2, 1, 'bandung', '52545252', '', '524245245245-14122017.jpg', '524245245245.docx'),
(4, '111111111', 'Sule Sutisna', 'Pria', 'Cimahi', '1980-07-17', 10, 2, 1, 'Tambun bekasi', '08122222', 'sule@gmail.com', 'ule.jpg', NULL),
(5, '7575675', 'Cantika', 'Wanita', 'Bandung', '1991-07-17', 1, 3, 1, 'Tebet', '5674646', 'cantik@yahoo.com', NULL, NULL),
(6, '757567586', 'Indah', 'Wanita', 'Bandung', '1991-07-17', 1, 3, 1, 'Tebet', '5674646', 'idh@yahoo.com', '757567586-14122017.jpg', '757567586-14122017.pdf'),
(7, '189892', 'Cantika', 'Wanita', 'Bandung', '1991-07-17', 1, 3, 1, 'Tebet', '5674646', 'cantik@yahoo.com', '189892-14122017.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pelatihan`
--

CREATE TABLE `pelatihan` (
  `id` int(11) NOT NULL,
  `kode` varchar(30) NOT NULL,
  `idpegawai` int(11) NOT NULL,
  `idmateri` int(11) NOT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelatihan`
--

INSERT INTO `pelatihan` (`id`, `kode`, `idpegawai`, `idmateri`, `keterangan`) VALUES
(1, '1', 4, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`, `timezone`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Arif Sulaeman', 'sulaeman@gmail.com', 'aa@gmsil.com', 'e7f440573d324ec32dc2b4bcf3404c65', 'Bogor', 'http://itjen.kemenkumham.com', 'tes', NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_account`
--

CREATE TABLE `social_account` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subbagian`
--

CREATE TABLE `subbagian` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `idbagian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `subbagian`
--

INSERT INTO `subbagian` (`id`, `nama`, `idbagian`) VALUES
(1, 'Pengelolaan TI', 4),
(2, 'Rumah Tangga dan BMN', 5),
(3, 'Layanan Pengaduan', 4),
(4, 'Pengembangan Pegawai', 1),
(5, 'Perjalanan Dinas', 2),
(6, 'Humas', 3),
(7, 'TU Pimpinan ', 5),
(8, 'Rencana Anggaran', 3),
(9, 'Evalap', 5);

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`user_id`, `code`, `created_at`, `type`) VALUES
(1, 'IMXYktes24iTePspE4uq0i33sktmA5Ic', 1513306939, 0),
(2, 'sOpDDHjg7Pjic6oRjX5OPN5sz_plireN', 1513307035, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `last_login_at` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '10',
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idpegawai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`, `status`, `password_reset_token`, `idpegawai`) VALUES
(1, 'sule', 'arif@gmail.com', '$2y$10$5K4.fkSyxmSV8T2ATHgIt.UnX8Z4t5ENV7zQLzO0vFimZXcCk07pm', 'grEInmWalekEOdor81yYaSk4y7zPlw8G', 1513307680, NULL, NULL, '::1', 1513306939, 1513306939, 0, 1513329519, 10, '', NULL),
(2, 'arif', 'yuhu@gmail.com', '$2y$10$8gZTBfU98Em0ZX6.3Mt2YO4aJ.M2SAttocvV545NHfy8f8g/HQJ6.', 'ywtiohv1OkDxUDNMlIDHRixyH86m7ke7', 1513307683, NULL, NULL, '::1', 1513307035, 1513307035, 0, 1513326115, 10, '', NULL),
(4, 'sulaeman', 'aa@gmail.com', '$2y$10$aG1ClM2IGomtYzySB035IugW5Jmkna4sDo3I/j9rBD3ge1.025VFS', 'KYczbFs1xqzgD3pNrA4n7FLkf7agHiU_', 1513307901, NULL, NULL, '::1', 1513307901, 1513307901, 0, 1513307928, 10, '', NULL),
(5, 'budi', 'jkl@hshsh.com', '$2y$10$s5g2GFOBONMDj39CBJ79peBnDYQDJ92QjZulmO7f6Ko6jj7A09veW', 'aF4AuywHfKwjKy332zpjVGGEZeSP6FUE', 1513320841, NULL, NULL, '::1', 1513320841, 1513320841, 0, 1513329482, 10, '', NULL),
(6, 'aji', 'aji@gmail.com', '$2y$10$Yfdhj4/1KvCjHbFa5zHI3u4qOH7PL2kMQ0vHsUk5Pl7S.pBcix10S', '49xONqxPzwUMxZEi0iqd6ZcjnnDdQvAV', 1513320862, NULL, NULL, '::1', 1513320861, 1513320861, 0, NULL, 10, '', NULL),
(7, 'admin', 'admin@yahoo.com', '$2y$10$ZFPn6DqR8WZstiAeXYhcu.2iP7uUwm3sFSw3LRtt51/hbQ3i/9ix2', 'CWKWAhz-k3p64kWA7IVirI-eP1RHQmXy', 1513320907, NULL, NULL, '::1', 1513320907, 1513320907, 0, 1541046368, 10, '', NULL),
(8, 'uus', 'fa@fsf.bn', '$2y$10$NC.q/GHCka10SXv8Lxvk4eKtO8XHf4mJO.WcmunFE4ikx98MFxxNC', 'iZeUm5myuExRS5f0uO8CcvEJ-Oxfi0wz', 1513320965, NULL, NULL, '::1', 1513320965, 1513320965, 0, NULL, 10, '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_UNIQUE` (`nama`);

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `auth_assignment_user_id_idx` (`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_UNIQUE` (`nama`);

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gaji_pegawai1` (`idpegawai`);

--
-- Indexes for table `gol`
--
ALTER TABLE `gol`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_UNIQUE` (`golongan`),
  ADD UNIQUE KEY `pangkat_UNIQUE` (`pangkat`);

--
-- Indexes for table `info_pelatihan`
--
ALTER TABLE `info_pelatihan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_info_pelatihan_pelatihan1` (`idpelatihan`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_UNIQUE` (`nama`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip_UNIQUE` (`nip`),
  ADD KEY `fk_pegawai_agama1` (`idagama`),
  ADD KEY `fk_pegawai_subbbagian1` (`idsubbagian`),
  ADD KEY `fk_pegawai_gol1` (`idgol`);

--
-- Indexes for table `pelatihan`
--
ALTER TABLE `pelatihan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_UNIQUE` (`kode`),
  ADD KEY `fk_pegawai_has_materi_pegawai1` (`idpegawai`),
  ADD KEY `fk_pegawai_has_materi_materi1` (`idmateri`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `social_account`
--
ALTER TABLE `social_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_unique` (`provider`,`client_id`),
  ADD UNIQUE KEY `account_unique_code` (`code`),
  ADD KEY `fk_user_account` (`user_id`);

--
-- Indexes for table `subbagian`
--
ALTER TABLE `subbagian`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_UNIQUE` (`nama`),
  ADD KEY `fk_subbbagian_bagian` (`idbagian`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD UNIQUE KEY `token_unique` (`user_id`,`code`,`type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_username` (`username`),
  ADD UNIQUE KEY `user_unique_email` (`email`),
  ADD KEY `idpegawai` (`idpegawai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agama`
--
ALTER TABLE `agama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bagian`
--
ALTER TABLE `bagian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gaji`
--
ALTER TABLE `gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gol`
--
ALTER TABLE `gol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `info_pelatihan`
--
ALTER TABLE `info_pelatihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pelatihan`
--
ALTER TABLE `pelatihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_account`
--
ALTER TABLE `social_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subbagian`
--
ALTER TABLE `subbagian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gaji`
--
ALTER TABLE `gaji`
  ADD CONSTRAINT `fk_gaji_pegawai1` FOREIGN KEY (`idpegawai`) REFERENCES `pegawai` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `info_pelatihan`
--
ALTER TABLE `info_pelatihan`
  ADD CONSTRAINT `fk_info_pelatihan_pelatihan1` FOREIGN KEY (`idpelatihan`) REFERENCES `pelatihan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `fk_pegawai_agama1` FOREIGN KEY (`idagama`) REFERENCES `agama` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pegawai_gol1` FOREIGN KEY (`idgol`) REFERENCES `gol` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pegawai_subbbagian1` FOREIGN KEY (`idsubbagian`) REFERENCES `subbagian` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pelatihan`
--
ALTER TABLE `pelatihan`
  ADD CONSTRAINT `fk_pegawai_has_materi_materi1` FOREIGN KEY (`idmateri`) REFERENCES `materi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pegawai_has_materi_pegawai1` FOREIGN KEY (`idpegawai`) REFERENCES `pegawai` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subbagian`
--
ALTER TABLE `subbagian`
  ADD CONSTRAINT `fk_subbbagian_bagian` FOREIGN KEY (`idbagian`) REFERENCES `bagian` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`idpegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
