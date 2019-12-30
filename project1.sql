-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 30, 2019 lúc 08:50 PM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien`
--

CREATE TABLE `giangvien` (
  `MaGV` char(10) NOT NULL,
  `TenGV` varchar(50) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` tinyint(1) NOT NULL,
  `DiaChi` varchar(50) NOT NULL,
  `SDT` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kehoachday`
--

CREATE TABLE `kehoachday` (
  `ID_Kehoach` char(10) NOT NULL,
  `MaGV` char(10) NOT NULL,
  `MaMon` char(10) NOT NULL,
  `MaLop` char(10) NOT NULL,
  `NgayKeHoach` date NOT NULL,
  `NoiDung` varchar(50) NOT NULL,
  `Sotietday` int(11) NOT NULL,
  `Sotuan` int(11) NOT NULL,
  `SotietLT` int(11) NOT NULL,
  `SotietTH` int(11) NOT NULL,
  `TongSotiet` int(11) NOT NULL,
  `KhoaHoc` char(50) NOT NULL,
  `NamHoc` date NOT NULL,
  `HocKy` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichtrinhgiangday`
--

CREATE TABLE `lichtrinhgiangday` (
  `ID_LichTrinh` char(10) NOT NULL,
  `MaGV` char(10) NOT NULL,
  `MaMon` char(10) NOT NULL,
  `MaLop` char(10) NOT NULL,
  `NgayKeHoach` date NOT NULL,
  `NoiDung` varchar(255) NOT NULL,
  `SoTietDay` int(11) NOT NULL,
  `NgayThucHien` date NOT NULL,
  `Sotuan` int(11) NOT NULL,
  `SotietLT` int(11) NOT NULL,
  `SotietTH` int(11) NOT NULL,
  `TongSotiet` int(11) NOT NULL,
  `KhoaHoc` varchar(50) NOT NULL,
  `NamHoc` date NOT NULL,
  `HocKi` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `MaLop` char(10) NOT NULL,
  `TenLop` varchar(50) NOT NULL,
  `SiSo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

CREATE TABLE `monhoc` (
  `MaMon` char(10) NOT NULL,
  `TenMon` varchar(50) NOT NULL,
  `SoTC` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `noidungtdgd`
--

CREATE TABLE `noidungtdgd` (
  `MaND` int(11) NOT NULL,
  `NgayDay` date NOT NULL,
  `Sotiet` int(11) NOT NULL,
  `NoiDung` varchar(255) NOT NULL,
  `SoSVVang` int(11) NOT NULL,
  `TenSVVang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theodoigv`
--

CREATE TABLE `theodoigv` (
  `ID_TDGV` char(10) NOT NULL,
  `MaGV` int(11) NOT NULL,
  `MaMon` int(11) NOT NULL,
  `MaLop` int(11) NOT NULL,
  `NgayNghi` date NOT NULL,
  `NgayDayBu` date NOT NULL,
  `LiDo` varchar(255) NOT NULL,
  `HocKi` char(10) NOT NULL,
  `NamHoc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tkbgiangvien`
--

CREATE TABLE `tkbgiangvien` (
  `MaGV` int(11) NOT NULL,
  `MaMon` int(11) NOT NULL,
  `MaLop` int(11) NOT NULL,
  `PhongHoc` int(11) NOT NULL,
  `SoTietHoc` int(11) NOT NULL,
  `Thu` int(11) NOT NULL,
  `Ca` int(11) NOT NULL,
  `NgayBD` int(11) NOT NULL,
  `NgayKT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD PRIMARY KEY (`MaGV`);

--
-- Chỉ mục cho bảng `kehoachday`
--
ALTER TABLE `kehoachday`
  ADD PRIMARY KEY (`ID_Kehoach`),
  ADD UNIQUE KEY `MaGV` (`MaGV`),
  ADD UNIQUE KEY `MaMon` (`MaMon`),
  ADD UNIQUE KEY `MaLop` (`MaLop`);

--
-- Chỉ mục cho bảng `lichtrinhgiangday`
--
ALTER TABLE `lichtrinhgiangday`
  ADD PRIMARY KEY (`ID_LichTrinh`),
  ADD UNIQUE KEY `MaGV` (`MaGV`),
  ADD UNIQUE KEY `MaMon` (`MaMon`),
  ADD UNIQUE KEY `MaLop` (`MaLop`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`MaLop`);

--
-- Chỉ mục cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`MaMon`);

--
-- Chỉ mục cho bảng `noidungtdgd`
--
ALTER TABLE `noidungtdgd`
  ADD PRIMARY KEY (`MaND`);

--
-- Chỉ mục cho bảng `theodoigv`
--
ALTER TABLE `theodoigv`
  ADD PRIMARY KEY (`ID_TDGV`);

--
-- Chỉ mục cho bảng `tkbgiangvien`
--
ALTER TABLE `tkbgiangvien`
  ADD UNIQUE KEY `MaGV` (`MaGV`),
  ADD UNIQUE KEY `MaMon` (`MaMon`),
  ADD UNIQUE KEY `MaLop` (`MaLop`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
