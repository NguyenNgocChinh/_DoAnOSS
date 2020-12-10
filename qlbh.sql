-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2017 at 03:09 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlbh`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietgd`
--

CREATE TABLE `chitietgd` (
  `magd` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `danhmucsp`
--

CREATE TABLE `danhmucsp` (
  `madm` int(11) NOT NULL,
  `tendm` varchar(255) NOT NULL,
  `xuatsu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `danhmucsp`
--

INSERT INTO `danhmucsp` (`madm`, `tendm`, `xuatsu`) VALUES
(1, 'Rolex', 'Thụy Sỹ'),
(2, 'Cartier', 'Pháp'),
(3, 'Omega', 'Thụy Sỹ'),
(4, 'Patek Philippe', 'Thụy Sỹ'),
(5, 'Piaget', 'Thụy Sỹ'),
(6, 'Montblanc', 'Đức');

-- --------------------------------------------------------

--
-- Table structure for table `giaodich`
--

CREATE TABLE `giaodich` (
  `magd` int(11) NOT NULL,
  `tinhtrang` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_dst` varchar(20) NOT NULL,
  `user_addr` text NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `tongtien` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `user_id` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `soluong` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`user_id`, `masp`, `soluong`) VALUES
(1, 2, 1),
(1, 4, 1),
(1, 8, 1),
(1, 9, 1),
(1, 10, 1),
(2, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(11) NOT NULL,
  `tensp` varchar(255) NOT NULL,
  `gia` varchar(20) NOT NULL,
  `baohanh` tinyint(2) NOT NULL,
  `trongluong` int(4) NOT NULL,
  `chatlieu` varchar(100) NOT NULL,
  `chongnuoc` tinyint(1) NOT NULL,
  `nangluong` varchar(100) NOT NULL,
  `loaibh` varchar(100) NOT NULL,
  `kichthuoc` varchar(100) NOT NULL,
  `mau` varchar(100) NOT NULL,
  `danhcho` varchar(20) NOT NULL,
  `phukien` varchar(255) NOT NULL,
  `khuyenmai` varchar(100) NOT NULL,
  `tinhtrang` varchar(100) NOT NULL,
  `madm` int(11) NOT NULL,
  `anhchinh` varchar(255) NOT NULL,
  `luotmua` int(11) NOT NULL,
  `luotxem` int(11) NOT NULL,
  `ngay_nhap` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `gia`, `baohanh`, `trongluong`, `chatlieu`, `chongnuoc`, `nangluong`, `loaibh`, `kichthuoc`, `mau`, `danhcho`, `phukien`, `khuyenmai`, `tinhtrang`, `madm`, `anhchinh`, `luotmua`, `luotxem`, `ngay_nhap`) VALUES
(1, 'Đồng hồ Rolex Datejust 179384-0002', '1 280 000', 24, 200, 'Inox, kính cường lực', 1, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Bạc', 'Nam', 'Không', '10', 'new', 1, 'images/rolex/Rolex-Datejust-179384-0002.png', 119, 2100, '2017-10-30 04:14:16'),
(2, 'Đồng hồ Rolex Datejust 179174-0031', '1 580 000', 24, 210, 'Inox cao cấp, kính cường lực', 1, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Bạc', 'Nam', 'Không', '10', 'new', 1, 'images/rolex/Rolex-Datejust-179174-0031.png', 2, 133, '2017-10-30 04:14:16'),
(3, 'Đồng hồ ROLEX DAYJUST 126300', '2 280 000', 36, 150, 'bạc, kính cường lực g4', 1, 'pin, điện', 'Tại nhà máy', '21 x 2 x 0.2', 'Bạc', 'Nam', '1 dây sạc', '20', 'new', 1, 'images/rolex/ROLEX-DAYJUST-126300.png', 321, 781, '2017-10-31 10:26:26'),
(4, 'Đồng hồ Rolex Datejust 179174-0094', '980 000', 24, 210, 'Inox cao cấp, kính cường lực', 0, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Bạc', 'Nam', 'Không', '10', 'new', 1, 'images/rolex/Rolex-Datejust-179174-0094.png', 1230, 3101, '0000-00-00 00:00:00'),
(5, 'Đồng hồ Piaget 444', '450 000', 12, 300, 'Nhôm, kính', 0, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Vàng kim', 'Nam, nữ', 'Không', '10', 'new', 5, 'images/piaget/piaget-444.png', 1231, 4321, '0000-00-00 00:00:00'),
(6, 'Đồng hồ Patek Philippe 778', '1 580 000', 24, 210, 'Inox cao cấp, kính cường lực', 1, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam và Nữ', 'Không', '15', 'new', 4, 'images/patek-philippe/Patek-Philippe-778.png', 21, 134, '0000-00-00 00:00:00'),
(7, 'Đồng hồ Omega 102', '4 280 000', 36, 150, 'Đồng, kính cường lực g4', 1, 'pin', 'Tại nhà máy', '21 x 2 x 0.2', 'Đồng', 'Nam', 'Không', '20', 'new', 3, 'images/omega/omega-102.png', 123, 2432, '2017-11-14 00:00:00'),
(8, 'Đồng hồ montblanc e112', '380 000', 6, 213, 'da', 0, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam và Nữ', 'Không', '5', 'new', 6, 'images/montblanc/montblanc-e112.png', 1232, 2314, '2017-11-17 09:00:35'),
(9, 'Đồng hồ Cartier 503', '410 000', 6, 213, 'da', 0, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam và Nữ', 'Không', '5', 'new', 2, 'images/cartier/Cartier-503.png', 1231, 6344, '2017-11-10 11:33:00'),
(10, 'Đồng hồ Omega 307', '1 280 000', 12, 200, 'da, kính cao cấp', 1, 'Pin', 'Tại nơi sản xuất', '20 x 2 x 0.2', 'Xanh đen', 'Nam và Nữ', 'Không', '10%', 'Còn hàng', 3, 'images/omega/Omega 307.png', 1231, 1290, '2017-11-06 16:54:01'),
(11, 'Đồng hồ Omega CO', '2 280 000', 12, 200, 'da, kính cao cấp', 1, 'Pin', 'Tại nơi sản xuất', '20 x 2 x 0.2', 'Xanh đen', 'Nam và Nữ', 'Không', '10%', 'Còn hàng', 3, 'images/omega/omega CO.png', 123, 2290, '2017-11-06 16:54:01'),
(12, 'Đồng hồ Omega Xial', '2910000', 24, 100, 'Bạc, kính cường lực ', 1, 'Pin ', 'Tại nơi sản xuất ', '20 x 2 x 0.2 ', 'Bạc ', 'Nam ', 'Không ', '20% ', 'Còn hàng ', 3, 'images/omega/omega Xial.png ', 335, 2561, '0000-00-00 00:00:00'),
(13, 'Đồng hồ Cartier 604', '1 280 000', 24, 200, 'Inox, kính cường lực', 1, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 2, 'images/cartier/cartier 604.png', 119, 2100, '2017-11-06 04:14:16'),
(14, 'Đồng hồ Cartier 705', '1 580 000', 24, 210, 'Inox cao cấp, kính cường lực', 1, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 2, 'images/cartier/cartier 705.png', 2, 133, '2017-10-30 04:14:16'),
(15, 'Đồng hồ Cartier 806', '2 280 000', 36, 150, 'bạc, kính cường lực g4', 1, 'pin, điện', 'Tại nhà máy', '21 x 2 x 0.2', 'Nâu', 'Nam', '1 dây sạc', '20', 'new', 2, 'images/cartier/cartier 806.png', 321, 781, '2017-11-06 10:26:26'),
(16, 'Đồng hồ Cartier 907', '980 000', 24, 210, 'Inox cao cấp, kính cường lực', 0, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Nâu', 'Nam', 'Không', '10', 'new', 2, 'images/cartier/cartier 907.png', 1230, 3101, '2017-11-06 05:16:15'),
(17, 'Đồng hồ Montblanc 1', '1 280 000', 24, 200, 'Inox, kính cường lực', 1, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 6, 'images/montblanc/montblanc 1.png', 119, 2100, '2017-11-06 04:14:16'),
(18, 'Đồng hồ Montblanc 2', '1 580 000', 24, 210, 'Inox cao cấp, kính cường lực', 1, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 6, 'images/montblanc/montblanc 2.png', 2, 133, '2017-10-30 04:14:16'),
(19, 'Đồng hồ Montblanc 3', '2 280 000', 36, 150, 'bạc, kính cường lực g4', 1, 'pin, điện', 'Tại nhà máy', '21 x 2 x 0.2', 'Đen', 'Nam', '1 dây sạc', '20', 'new', 6, 'images/montblanc/montblanc 3.png', 321, 781, '2017-11-06 10:26:26'),
(20, 'Đồng hồ Montblanc 4', '980 000', 24, 210, 'Inox cao cấp, kính cường lực', 0, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 6, 'images/montblanc/montblanc 4.png', 1230, 3101, '2017-11-06 05:16:15'),
(21, 'Đồng hồ Piaget Z1', '1 280 000', 24, 200, 'Inox, kính cường lực', 1, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 5, 'images/piaget/piaget z1.png', 119, 2100, '2017-11-06 04:14:16'),
(22, 'Đồng hồ Piaget Z2', '1 580 000', 24, 210, 'Inox cao cấp, kính cường lực', 1, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Nâu', 'Nam', 'Không', '10', 'new', 5, 'images/piaget/piaget z2.png', 2, 133, '2017-10-30 04:14:16'),
(23, 'Đồng hồ Piaget Z3', '2 280 000', 36, 150, 'bạc, kính cường lực g4', 1, 'pin, điện', 'Tại nhà máy', '21 x 2 x 0.2', 'Bạc, xanh dương', 'Nam', '1 dây sạc', '20', 'new', 5, 'images/piaget/piaget z3.png', 321, 781, '2017-11-06 10:26:26'),
(24, 'Đồng hồ Piaget Z4', '980 000', 24, 210, 'Inox cao cấp, kính cường lực', 0, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 5, 'images/piaget/piaget z4.png', 1230, 3101, '2017-11-06 05:16:15'),
(25, 'sp test', '980 000', 24, 210, 'Inox cao cấp, kính cường lực', 0, 'pin', 'Tại cửa hàng', '20 x 2 x 0.2', 'Đen', 'Nam', 'Không', '10', 'new', 5, 'images/piaget/piaget z4.png', 1230, 3101, '2017-11-06 05:16:15');

-- --------------------------------------------------------

--
-- Table structure for table `sanphamyeuthich`
--

CREATE TABLE `sanphamyeuthich` (
  `user_id` int(11) NOT NULL,
  `masp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanphamyeuthich`
--

INSERT INTO `sanphamyeuthich` (`user_id`, `masp`) VALUES
(1, 1),
(1, 4),
(1, 5),
(1, 7),
(2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE `thanhvien` (
  `id` int(11) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `tentaikhoan` varchar(100) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `sodt` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `quyen` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`id`, `ten`, `tentaikhoan`, `matkhau`, `diachi`, `sodt`, `email`, `date`, `quyen`) VALUES
(1, 'Thằng tester', 'tester', '123', 'No info', 'Không cho', 'ccne@cc.cc', '2017-10-30 20:50:48', 0),
(2, 'Admin bá đạo', 'admin', '123', 'sao biết dc', '1234566', 'adf@afd.com', '2017-11-04 14:40:53', 1),
(3, 'change1', 'tester2', '123', '123', 'sdt1', 'asf@a.oads', '2017-11-04 11:59:21', 0),
(4, 'test''s %/\\', 'tester3', '123', '123', '12', 'adf@afd.com', '0000-00-00 00:00:00', 0),
(5, 'Lê A', 'tester4', '123', '10', '0935714733', 'nvduong15@gmail.com', '0000-00-00 00:00:00', 0),
(6, 'Lê A', 'tester5', '123', '10', '0935714733', 'nvduong15@gmail.com', '0000-00-00 00:00:00', 0),
(7, 'David Villa', 'tester6', '123', 'Anabella', '0935777888', 'adf@afd.com', '2017-10-31 06:46:17', 0),
(8, 'Lê A', 'tester7', '123', '10', '0935714733', 'nvduong15@gmail.com', '2017-11-01 12:47:55', 0),
(9, 'tester11', 'tester11', 'tester11', 'tester11', 'tester11', 'tester11', '2017-12-12 06:46:13', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietgd`
--
ALTER TABLE `chitietgd`
  ADD PRIMARY KEY (`magd`,`masp`);

--
-- Indexes for table `danhmucsp`
--
ALTER TABLE `danhmucsp`
  ADD PRIMARY KEY (`madm`);

--
-- Indexes for table `giaodich`
--
ALTER TABLE `giaodich`
  ADD PRIMARY KEY (`magd`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`user_id`,`masp`),
  ADD KEY `fk_gh_sp` (`masp`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `fk_sp_dmsp` (`madm`);

--
-- Indexes for table `sanphamyeuthich`
--
ALTER TABLE `sanphamyeuthich`
  ADD PRIMARY KEY (`user_id`,`masp`);

--
-- Indexes for table `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmucsp`
--
ALTER TABLE `danhmucsp`
  MODIFY `madm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `giaodich`
--
ALTER TABLE `giaodich`
  MODIFY `magd` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `fk_gh_sp` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`),
  ADD CONSTRAINT `fk_gh_tv` FOREIGN KEY (`user_id`) REFERENCES `thanhvien` (`id`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sp_dmsp` FOREIGN KEY (`madm`) REFERENCES `danhmucsp` (`madm`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
