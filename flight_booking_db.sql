-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 04, 2022 at 03:19 AM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flight_booking_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `chuyenbay`
--

CREATE TABLE `chuyenbay` (
  `id` int(11) NOT NULL,
  `idtuyenduong` int(11) NOT NULL,
  `idhang` int(11) DEFAULT NULL,
  `idnhanvien` int(11) DEFAULT NULL,
  `idmaybay` int(11) NOT NULL,
  `ngaydi` date NOT NULL,
  `giodi` time NOT NULL,
  `gioden` time NOT NULL,
  `trangthai` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chuyenbay`
--

INSERT INTO `chuyenbay` (`id`, `idtuyenduong`, `idhang`, `idnhanvien`, `idmaybay`, `ngaydi`, `giodi`, `gioden`, `trangthai`) VALUES
(80, 2, NULL, NULL, 3, '2021-09-12', '20:45:00', '22:45:00', 1),
(81, 81, NULL, NULL, 2, '2021-09-13', '03:45:00', '05:45:00', 1),
(82, 78, NULL, NULL, 2, '2021-09-12', '20:30:50', '00:20:45', 1),
(83, 79, NULL, NULL, 3, '2021-09-14', '00:00:00', '05:00:00', 1),
(84, 80, NULL, NULL, 1, '2021-09-14', '00:00:30', '03:30:00', 1),
(85, 59, NULL, NULL, 4, '2021-09-14', '08:09:40', '13:08:40', 1),
(86, 2, NULL, NULL, 1, '2021-09-15', '01:45:00', '01:45:00', 1),
(87, 80, NULL, NULL, 1, '2021-09-15', '06:51:00', '07:57:00', 1),
(88, 78, NULL, NULL, 1, '2021-09-14', '20:50:00', '02:20:00', 1),
(89, 79, NULL, NULL, 1, '2021-09-12', '23:50:00', '06:20:00', 1),
(90, 80, NULL, NULL, 1, '2021-09-12', '15:25:00', '22:25:00', 1),
(91, 2, NULL, NULL, 1, '2021-07-17', '23:45:00', '01:45:00', 1),
(92, 81, NULL, NULL, 1, '2021-06-29', '06:45:00', '07:45:00', 1),
(93, 2, NULL, NULL, 1, '2021-06-30', '03:45:00', '05:45:00', 1),
(94, 81, NULL, NULL, 1, '2021-06-22', '01:45:00', '02:45:00', 1),
(95, 59, NULL, NULL, 2, '2022-05-03', '21:45:00', '23:45:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `daily`
--

CREATE TABLE `daily` (
  `iddaily` int(11) NOT NULL,
  `tendaily` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matkhaudaily` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `daily`
--

INSERT INTO `daily` (`iddaily`, `tendaily`, `matkhaudaily`) VALUES
(1, 'Đà Nẵng', ''),
(2, 'HCM - QUẬN 1', ''),
(3, 'Hà Nội', ''),
(4, 'Hà Nội 2', '');

-- --------------------------------------------------------

--
-- Table structure for table `dsmaybay`
--

CREATE TABLE `dsmaybay` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `soghethuong` int(3) NOT NULL,
  `soghethuonggia` int(2) NOT NULL,
  `loaimaybay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_production` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hangmb` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dsmaybay`
--

INSERT INTO `dsmaybay` (`id`, `name`, `anh`, `soghethuong`, `soghethuonggia`, `loaimaybay`, `area_production`, `hangmb`) VALUES
(1, 'Airbus A321-200', 'airbus.jpg', 168, 16, NULL, NULL, 1),
(2, 'Airbus A321neo', 'airbusa321.jpg', 195, 8, NULL, NULL, 2),
(3, 'Airbus A350-900', 'airbusa350.jpg', 231, 29, NULL, NULL, 3),
(4, 'Airbus A320-200', 'pacific.jpg', 160, 20, NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `giave`
--

CREATE TABLE `giave` (
  `id` int(11) NOT NULL,
  `giavethuong` float NOT NULL,
  `giavethuonggia` float NOT NULL,
  `idchuyenbay` int(11) NOT NULL,
  `giamgia` int(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `giave`
--

INSERT INTO `giave` (`id`, `giavethuong`, `giavethuonggia`, `idchuyenbay`, `giamgia`) VALUES
(17, 500000, 700000, 80, 20),
(18, 500000, 800000, 81, 0),
(21, 1500000, 2100000, 83, 30),
(22, 700000, 1300000, 84, 10),
(23, 900000, 1500000, 85, 10),
(24, 200000, 250000, 86, 50),
(25, 850000, 1500000, 87, 10),
(28, 1200000, 2100000, 82, 15),
(29, 800000, 1300000, 88, 10),
(30, 2100000, 4200000, 89, 30),
(31, 2300000, 2700000, 90, 20),
(32, 400000, 800000, 91, 20),
(33, 800000, 700000, 92, 30),
(34, 800000, 1000000, 93, 45),
(35, 500000, 900000, 94, 50),
(36, 1000000, 3000000, 95, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hangbay`
--

CREATE TABLE `hangbay` (
  `idhang` int(11) NOT NULL,
  `tenhang` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hdchitiet`
--

CREATE TABLE `hdchitiet` (
  `id` int(11) NOT NULL,
  `idhd` int(11) NOT NULL,
  `idchuyenbay` int(11) NOT NULL,
  `vitringoi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hangghe` enum('1','2') COLLATE utf8_unicode_ci NOT NULL,
  `giatien` int(11) NOT NULL,
  `tenkh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` enum('0','1','2','') COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `cmnd` int(10) NOT NULL,
  `gmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `random` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hdchitiet`
--

INSERT INTO `hdchitiet` (`id`, `idhd`, `idchuyenbay`, `vitringoi`, `hangghe`, `giatien`, `tenkh`, `gioitinh`, `dienthoai`, `cmnd`, `gmail`, `random`) VALUES
(158, 187, 80, '4', '1', 500000, 'Trần Văn Hoàng', '0', '09242412', 2121212, NULL, 0),
(159, 188, 81, '4', '1', 500000, 'Trần Văn Hoàng', '0', '09242412', 2121212, NULL, 0),
(160, 189, 80, '3', '1', 500000, 'loi roi', '0', '121212', 121212, NULL, 0),
(161, 189, 80, '4', '1', 500000, '121212', '0', '1221', 122112, NULL, 0),
(162, 190, 80, '3', '1', 500000, 'loi roi', '0', '121212', 121212, NULL, 0),
(163, 190, 80, '4', '1', 500000, '121212', '0', '1221', 122112, NULL, 0),
(166, 192, 86, '1', '1', 200000, 'Trần Quang Nhan', '0', '0924698776', 924698776, NULL, 0),
(167, 192, 86, '2', '1', 200000, 'Trần Quang Nhan', '1', '0924698776', 924698776, NULL, 0),
(168, 194, 80, '12', '1', 500000, 'Nguyen Quoc Hieu', '0', '0965305077', 213654987, NULL, 0),
(169, 195, 80, '7', '1', 500000, 'Nguyen Quoc Hieu Hai', '0', '0343782712', 325614478, NULL, 0),
(170, 196, 80, '8', '1', 500000, 'hieu nguyen van', '0', '0965305088', 215569978, NULL, 0),
(171, 197, 80, '11', '1', 500000, 'Nguyen QUoc Hieu', '0', '0343782712', 215538489, NULL, 0),
(172, 198, 80, '2', '1', 500000, 'Hieu Nguyen', '0', '0343782713', 215564478, NULL, 0),
(173, 199, 80, '1', '1', 500000, 'Nguyen Quoc Hieu Hai', '0', '0965305077', 50120125, NULL, 0),
(174, 200, 80, '168', '1', 500000, 'Nguyen Van B', '0', '0965305099', 215654753, NULL, 0),
(175, 201, 80, '6', '1', 500000, 'hieu nguyen quoc', '0', '0343782714', 36547259, NULL, 0),
(176, 202, 80, '5', '1', 500000, 'Nguyễn Quốc Hiếu', '0', '0965305077', 215538456, NULL, 0),
(177, 203, 80, '10', '1', 500000, 'Hieu Nguyen VAn', '0', '0965305088', 215654753, NULL, 0),
(178, 204, 80, '9', '1', 500000, 'Nguyen QUoc Hieu', '0', '0965305099', 125698753, NULL, 0),
(179, 205, 80, '13', '1', 500000, 'Quoc hieu', '0', '0965305077', 215569987, NULL, 0),
(180, 208, 81, '1', '1', 500000, 'Trần Quang Nhân', '1', '0924698776', 12121212, 'tranquangnhan1606@gmail.com', 0),
(181, 209, 80, '14', '1', 500000, 'Minh phương', '0', '0365236321', 215569987, 'phuong@gmail.com', 0),
(182, 211, 80, '14', '1', 500000, 'Minh phương', '0', '0924698776', 211122121, 'tranquangnhan1606@gmail.com', 0),
(183, 215, 84, '1', '2', 1300000, 'oooooooo', '1', '0924698776', 123123123, 'tranquangnhan1606@gmail.com', 87820),
(184, 216, 84, '1', '2', 1300000, 'oooooooo', '1', '0924698776', 123123123, 'tranquangnhan1606@gmail.com', 593633),
(185, 216, 84, '2', '2', 1300000, 'Minh phương', '1', '0924698775', 123123123, 'minhphuong11pm@gmail.com', 593633),
(186, 217, 81, '12', '1', 500000, 'Trần Quang Nhân', '0', '0924698776', 12121212, 'tranquangnhan1606@gmail.com', 443590),
(187, 218, 81, '11', '1', 500000, 'Trần Quang Nhân', '0', '0924698776', 12121212, 'tranquangnhan1606@gmail.com', 520652),
(188, 219, 81, '8', '1', 500000, 'Trần Quang Nhân', '0', '0924698776', 12121212, 'tranquangnhan1606@gmail.com', 653321),
(189, 219, 81, '16', '1', 500000, 'Trần Đại Hoàng', '0', '0924698776', 924698776, 'minhphuong11pm@gmail.com', 653321),
(190, 220, 81, '7', '1', 500000, 'Trần Quang Nhân', '0', '0924698776', 12121212, 'tranquangnhan1606@gmail.com', 506058),
(191, 220, 81, '12', '1', 500000, 'Trần Đại Hoàng', '0', '0924698776', 12121212, 'tranquangnhan1606@gmail.com', 506058),
(192, 221, 81, '7', '1', 500000, 'Trần Quang Nhân', '0', '0924698776', 12121212, 'tranquangnhan1606@gmail.com', 572561),
(193, 221, 81, '12', '1', 500000, 'Trần Đại Hoàng', '0', '0924698776', 12121212, 'minhphuong11pm@gmail.com', 572561),
(194, 222, 84, '26', '2', 1300000, 'Thân Trọng Thắng', '0', '0999111222', 111222333, 't@mail.com', 849519),
(195, 223, 80, '9', '2', 700000, 'Thân Trọng Thắng', '2', '0888111222', 111222333, 'thangthantrong@gmail.com', 150975),
(196, 224, 80, '8', '2', 700000, 'Thân Trọng Thắng', '0', '0886997189', 111222111, 'thangthantrong@gmail.com', 668724);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `ngaydatve` datetime NOT NULL,
  `trangthai` tinyint(1) NOT NULL,
  `idkh` int(11) DEFAULT NULL,
  `tongtien` int(11) NOT NULL,
  `iddaily` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`id`, `ngaydatve`, `trangthai`, `idkh`, `tongtien`, `iddaily`) VALUES
(187, '2020-12-03 23:29:23', 2, NULL, 500000, 0),
(188, '2020-12-03 23:29:23', 1, NULL, 500000, 0),
(189, '2020-12-04 00:01:58', 2, NULL, 2500000, 0),
(190, '2020-12-04 00:01:58', 1, NULL, 2500000, 0),
(192, '2020-12-07 07:51:50', 1, NULL, 400000, 0),
(193, '2020-12-10 14:22:26', 1, NULL, 500000, 0),
(194, '2020-12-10 14:23:51', 2, NULL, 500000, 0),
(195, '2020-12-10 15:05:24', 2, NULL, 500000, 0),
(196, '2020-12-10 15:54:58', 2, NULL, 500000, 0),
(197, '2020-12-10 15:59:15', 2, NULL, 500000, 0),
(198, '2020-12-10 16:13:56', 2, NULL, 500000, 0),
(199, '2020-12-11 01:00:01', 2, NULL, 500000, 0),
(200, '2020-12-11 01:04:48', 2, NULL, 500000, 0),
(201, '2020-12-11 01:15:57', 2, NULL, 500000, 0),
(202, '2020-12-11 02:00:01', 2, NULL, 500000, 0),
(203, '2020-12-11 02:10:20', 2, NULL, 500000, 0),
(204, '2020-12-11 02:29:15', 2, NULL, 500000, 0),
(205, '2020-12-11 02:38:52', 2, NULL, 500000, 0),
(208, '2020-12-17 14:05:15', 2, NULL, 500000, 0),
(209, '2020-12-17 14:41:39', 1, NULL, 500000, 0),
(211, '2020-12-17 14:52:55', 2, NULL, 500000, 0),
(215, '2020-12-17 21:45:22', 1, NULL, 2600000, 0),
(216, '2020-12-17 21:45:30', 1, NULL, 2600000, 0),
(217, '2020-12-17 22:27:36', 2, NULL, 500000, 0),
(218, '2020-12-17 22:36:59', 2, NULL, 500000, 0),
(219, '2020-12-17 22:55:53', 2, NULL, 1000000, 0),
(220, '2020-12-18 07:12:01', 2, NULL, 1000000, 0),
(221, '2020-12-18 07:55:28', 2, NULL, 1000000, 0),
(222, '2022-04-30 22:20:02', 2, NULL, 1300000, NULL),
(223, '2022-05-02 19:43:21', 2, NULL, 700000, 3),
(224, '2022-05-03 17:32:17', 2, NULL, 700000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(12) NOT NULL,
  `tenKH` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` tinyint(1) NOT NULL DEFAULT '1',
  `role` tinyint(1) NOT NULL DEFAULT '0',
  `pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kichhoat` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodienthoai` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thanhpho` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tichdiem` int(3) DEFAULT '10',
  `randomkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cmnd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iddaily` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id`, `tenKH`, `user`, `gioitinh`, `role`, `pass`, `kichhoat`, `email`, `avatar`, `sodienthoai`, `diachi`, `thanhpho`, `tichdiem`, `randomkey`, `cmnd`, `iddaily`) VALUES
(22, '', 'admin', 0, 1, '111111', 0, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, 0),
(45, NULL, 'anhduoc123', 1, 0, '123456', 1, 'duocnvoit@gmail.com', NULL, '0359020898', NULL, NULL, 10, 'd98c1545b7619bd99b817cb3169cdfde', NULL, 0),
(46, NULL, 'duocnv', 1, 0, '12345678', 1, 'duocnv2oit@gmail.com', NULL, '0928817228', NULL, NULL, 10, '590f713356c5c1fb7d74a0e589166b5a', NULL, 0),
(47, NULL, 'demo', 1, 0, '123456', 1, 'thangthantrong@gmail.com', NULL, '0886997189', NULL, NULL, 10, 'fba058470460d044d887af9c598f1cb3', NULL, 0),
(48, 'nhanvienhn', 'hanoi', 2, 0, '123456', 0, 'thangthantrong@gmail.com', '', '0888999111', '', '', 0, '7ef2f13f0e9d3478d7c36f6483d38a86', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `idhd` int(11) NOT NULL COMMENT 'thành viên thanh toán',
  `order_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `money` float NOT NULL COMMENT 'số tiền thanh toán',
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ghi chú thanh toán',
  `vnp_response_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'mã phản hồi',
  `code_vnpay` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'mã giao dịch vnpay',
  `code_bank` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'mã ngân hàng',
  `time` datetime NOT NULL COMMENT 'thời gian chuyển khoản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `idhd`, `order_id`, `money`, `note`, `vnp_response_code`, `code_vnpay`, `code_bank`, `time`) VALUES
(1, 180, '20201211023852', 500000, 'hieu test chuc nang', '00', '20201211022916', 'NCB', '2020-12-23 02:34:36');

-- --------------------------------------------------------

--
-- Table structure for table `sanbay`
--

CREATE TABLE `sanbay` (
  `idsanbay` int(11) NOT NULL,
  `tensanbay` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `masanbay` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tinh` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanbay`
--

INSERT INTO `sanbay` (`idsanbay`, `tensanbay`, `masanbay`, `tinh`) VALUES
(1, 'Sân bay Quốc tế Cần Thơ', 'VVCT/VCA', 'Cần Thơ'),
(2, 'Sân bay Quốc tế Đà Nẵng', 'VVDN/DAD', 'Đà Nẵng'),
(3, 'Sân bay Quốc tế Cát Bi – Hải Phòng', 'VVCI/HPH', 'Hải Phòng'),
(4, 'Sân bay Quốc tế Nội Bài – Hà Nội', 'VVNB/HAN', 'Hà Nội'),
(5, 'Sân bay Quốc tế Tân Sơn Nhất', 'VVTS/SGN', ' Hồ Chí Minh'),
(6, 'Sân bay Quốc tế Cam Ranh', 'VVCR/CXR', 'Khánh Hòa'),
(7, 'Sân bay Quốc tế Phú Quốc', 'VVPQ/PQC', 'Kiên Giang'),
(8, 'Sân bay Quốc tế Vinh – Nghệ An', 'VVVH/VII', 'Nghệ An'),
(9, 'Sân bay Quốc tế Phú Bài – Huế', 'VVPB/HUI', 'Thừa Thiên – Huế'),
(10, 'Sân bay Côn Đảo', 'VVCS/VCS', 'Bà Rịa-Vũng Tàu'),
(11, 'Sân bay Nà Sản', 'VVNS/SQH', 'Sơn La'),
(12, 'Sân bay Phù Cát – Bình Định', 'VVPC/UIH', 'Bình Định'),
(13, 'Sân bay Cà Mau', 'VVCM/CAH', 'Cà Mau'),
(14, 'Sân bay Buôn Ma Thuột', 'VVBM/BMV', 'Đắk Lắk'),
(15, 'Sân bay Điện Biên Phủ', 'VVDB/DIN', 'Điện Biên'),
(16, 'Sân bay Pleiku – Gia Lai', 'VVPK/PXU', 'Gia Lai'),
(17, 'Sân bay Rạch Giá – Kiên Giang', 'VVRG/VKG', 'Kiên Giang'),
(18, 'Sân bay Liên Khương – Đà Lạt', 'VVDL/DLI', 'Lâm Đồng'),
(19, 'Sân bay Tuy Hòa – Phú Yên', 'VVTH/TBB', 'Phú Yên'),
(20, 'Sân bay Đồng Hới – Quảng Bình', 'VVDH/VDH', 'Quảng Bình'),
(21, 'Sân bay Chu Lai – Quảng Nam', 'VVCA/VCL', 'Quảng Nam'),
(22, 'Sân bay Thọ Xuân – Thanh Hóa', 'VVTX/THD', 'Thanh Hóa');

-- --------------------------------------------------------

--
-- Table structure for table `trangthaidatve`
--

CREATE TABLE `trangthaidatve` (
  `id` int(11) NOT NULL,
  `ttghethuong` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `ttghethuonggia` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `idchuyenbay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trangthaidatve`
--

INSERT INTO `trangthaidatve` (`id`, `ttghethuong`, `ttghethuonggia`, `idchuyenbay`) VALUES
(44, '1,1,1,0-127.0.0.1,1,1,1,1,1,1,1,1,1,1,0-127.0.0.1,0,0-127.0.0.1,0-127.0.0.1,0-127.0.0.1,0-127.0.0.1,0,0,0,0,0,0,2-::1,2-::1,0,0,0,0,0,0,0,0,2-127.0.0.1,2-127.0.0.1,2-127.0.0.1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1', '0,0,0,0,0,0,0,0,0,2-127.0.0.1,2-127.0.0.1,2-127.0.0.1,0,0,0,0', 80),
(45, '1,0,0,1,0,0,1,1,0,0,1,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,2-::1,0,0,0,0,0,2-::1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,2-::1,2-::1,0,2-::1,0,0,0', 81),
(46, '1,1,0,0-::1,0-::1,0-::1,0,0,0,0-::1,0-::1,0-::1,0,0-::1,0-::1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 86),
(47, '2,0,0,0,0,0,0,0,0,0,0,1,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 87),
(48, '1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 90),
(49, '1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0-::1,0,2-::1,0-::1,0-::1,0-::1,0-::1,0', 83),
(50, '1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 82),
(51, '1,0,0,0,0,0,0,0,2-::1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,2-::1,0,0,0,0,0,0', 85),
(52, '0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2-::1,0,0,0,0,0,0,0,0,0,0,0,0,0', 84),
(53, '1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 88),
(54, '1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 89),
(55, '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 91),
(56, '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 92),
(57, '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 93),
(58, '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 94);

-- --------------------------------------------------------

--
-- Table structure for table `tuyenduong`
--

CREATE TABLE `tuyenduong` (
  `id` int(11) NOT NULL,
  `iddiemdi` int(11) NOT NULL,
  `iddiemden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tuyenduong`
--

INSERT INTO `tuyenduong` (`id`, `iddiemdi`, `iddiemden`) VALUES
(2, 14, 5),
(59, 1, 4),
(78, 6, 22),
(79, 16, 22),
(80, 5, 20),
(81, 5, 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chuyenbay`
--
ALTER TABLE `chuyenbay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily`
--
ALTER TABLE `daily`
  ADD PRIMARY KEY (`iddaily`);

--
-- Indexes for table `dsmaybay`
--
ALTER TABLE `dsmaybay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giave`
--
ALTER TABLE `giave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hangbay`
--
ALTER TABLE `hangbay`
  ADD PRIMARY KEY (`idhang`);

--
-- Indexes for table `hdchitiet`
--
ALTER TABLE `hdchitiet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanbay`
--
ALTER TABLE `sanbay`
  ADD PRIMARY KEY (`idsanbay`);

--
-- Indexes for table `trangthaidatve`
--
ALTER TABLE `trangthaidatve`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuyenduong`
--
ALTER TABLE `tuyenduong`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chuyenbay`
--
ALTER TABLE `chuyenbay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `daily`
--
ALTER TABLE `daily`
  MODIFY `iddaily` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dsmaybay`
--
ALTER TABLE `dsmaybay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `giave`
--
ALTER TABLE `giave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `hangbay`
--
ALTER TABLE `hangbay`
  MODIFY `idhang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hdchitiet`
--
ALTER TABLE `hdchitiet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `sanbay`
--
ALTER TABLE `sanbay`
  MODIFY `idsanbay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `trangthaidatve`
--
ALTER TABLE `trangthaidatve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tuyenduong`
--
ALTER TABLE `tuyenduong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
