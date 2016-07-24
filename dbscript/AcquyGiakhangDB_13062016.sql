-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.12-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema `acquygiakhangdb`
--

CREATE DATABASE IF NOT EXISTS `acquygiakhangdb`;
USE `acquygiakhangdb`;

--
-- Definition of table `dongxe`
--

DROP TABLE IF EXISTS `dongxe`;
CREATE TABLE `dongxe` (
  `MaDongXe` varchar(45) CHARACTER SET utf8 NOT NULL,
  `TenDongXe` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `SoXyLanh` int(11) DEFAULT NULL,
  `DongCo` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `HopSo` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `SoCua` int(11) DEFAULT NULL,
  `MaHangXe` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`MaDongXe`),
  KEY `MaHangXe_idx` (`MaHangXe`),
  CONSTRAINT `MaHangXe` FOREIGN KEY (`MaHangXe`) REFERENCES `hangxe` (`MaHangXe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Dumping data for table `dongxe`
--

/*!40000 ALTER TABLE `dongxe` DISABLE KEYS */;
/*!40000 ALTER TABLE `dongxe` ENABLE KEYS */;


--
-- Definition of table `hangxe`
--

DROP TABLE IF EXISTS `hangxe`;
CREATE TABLE `hangxe` (
  `MaHangXe` varchar(45) CHARACTER SET utf8 NOT NULL,
  `TenHangXe` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `GhiChu` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`MaHangXe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Dumping data for table `hangxe`
--

/*!40000 ALTER TABLE `hangxe` DISABLE KEYS */;
/*!40000 ALTER TABLE `hangxe` ENABLE KEYS */;


--
-- Definition of table `loainguoidung`
--

DROP TABLE IF EXISTS `loainguoidung`;
CREATE TABLE `loainguoidung` (
  `MaLoaiNguoiDung` int(11) NOT NULL,
  `TenLoaiNguoiDung` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `GhiChu` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`MaLoaiNguoiDung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Dumping data for table `loainguoidung`
--

/*!40000 ALTER TABLE `loainguoidung` DISABLE KEYS */;
INSERT INTO `loainguoidung` (`MaLoaiNguoiDung`,`TenLoaiNguoiDung`,`GhiChu`) VALUES 
 (1,'Quản trị','Quản trị'),
 (2,'Nhân viên','Nhân viên');
/*!40000 ALTER TABLE `loainguoidung` ENABLE KEYS */;


--
-- Definition of table `nguoidung`
--

DROP TABLE IF EXISTS `nguoidung`;
CREATE TABLE `nguoidung` (
  `MaNguoiDung` varchar(45) CHARACTER SET utf8 NOT NULL,
  `TenNguoiDung` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `MatKhau` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `MaLoaiNguoiDung` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaNguoiDung`),
  KEY `MaLoaiNguoiDung_idx` (`MaLoaiNguoiDung`),
  CONSTRAINT `MaLoaiNguoiDung` FOREIGN KEY (`MaLoaiNguoiDung`) REFERENCES `loainguoidung` (`MaLoaiNguoiDung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Dumping data for table `nguoidung`
--

/*!40000 ALTER TABLE `nguoidung` DISABLE KEYS */;
INSERT INTO `nguoidung` (`MaNguoiDung`,`TenNguoiDung`,`MatKhau`,`MaLoaiNguoiDung`) VALUES 
 ('1','1','1',2),
 ('2','2','2',2),
 ('3','3','3',2),
 ('4','4','4',2),
 ('5','5','5',2),
 ('6','6','6',2),
 ('oneadmin','oneadmin','oneadmin',1);
/*!40000 ALTER TABLE `nguoidung` ENABLE KEYS */;


--
-- Definition of table `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
CREATE TABLE `nhacungcap` (
  `MaNhaCC` varchar(45) CHARACTER SET utf8 NOT NULL,
  `TenNhaCC` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `GhiChu` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`MaNhaCC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Dumping data for table `nhacungcap`
--

/*!40000 ALTER TABLE `nhacungcap` DISABLE KEYS */;
INSERT INTO `nhacungcap` (`MaNhaCC`,`TenNhaCC`,`GhiChu`) VALUES 
 ('1','BOSCH','BOSCH'),
 ('2','OSRAM','OSRAM'),
 ('3','GS','GS'),
 ('4','DENSO','DENSO'),
 ('5','NCC','NCC');
/*!40000 ALTER TABLE `nhacungcap` ENABLE KEYS */;


--
-- Definition of table `quocgia`
--

DROP TABLE IF EXISTS `quocgia`;
CREATE TABLE `quocgia` (
  `MaQuocGia` varchar(45) CHARACTER SET utf8 NOT NULL,
  `TenQuocGia` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `GhiChu` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`MaQuocGia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Dumping data for table `quocgia`
--

/*!40000 ALTER TABLE `quocgia` DISABLE KEYS */;
INSERT INTO `quocgia` (`MaQuocGia`,`TenQuocGia`,`GhiChu`) VALUES 
 ('1','USA','USA'),
 ('2','Japan','JP'),
 ('3','Vietnam','VN');
/*!40000 ALTER TABLE `quocgia` ENABLE KEYS */;


--
-- Definition of table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE `sanpham` (
  `MaSanPham` varchar(45) CHARACTER SET utf8 NOT NULL,
  `TenSanPham` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `MoTa` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `MaNhaCC` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `MaQuocGia` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`MaSanPham`),
  KEY `MaNhaCC_idx` (`MaNhaCC`),
  KEY `MaQuocGia_idx` (`MaQuocGia`),
  CONSTRAINT `MaNhaCC` FOREIGN KEY (`MaNhaCC`) REFERENCES `nhacungcap` (`MaNhaCC`),
  CONSTRAINT `MaQuocGia` FOREIGN KEY (`MaQuocGia`) REFERENCES `quocgia` (`MaQuocGia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Dumping data for table `sanpham`
--

/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` (`MaSanPham`,`TenSanPham`,`MoTa`,`MaNhaCC`,`MaQuocGia`) VALUES 
 ('1','Bình khô 01','Bình khô BOSCH 50A','1','1'),
 ('2','Bình nước 02','Bình nước GS 50A','2','2');
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;


--
-- Definition of table `sanphamdongxe`
--

DROP TABLE IF EXISTS `sanphamdongxe`;
CREATE TABLE `sanphamdongxe` (
  `MaSanPham` varchar(45) CHARACTER SET utf8 NOT NULL,
  `MaDongXe` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `MoTa` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`MaSanPham`),
  KEY `MaDongXe_idx` (`MaDongXe`),
  CONSTRAINT `MaDongXe` FOREIGN KEY (`MaDongXe`) REFERENCES `dongxe` (`MaDongXe`),
  CONSTRAINT `MaSanPham` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Dumping data for table `sanphamdongxe`
--

/*!40000 ALTER TABLE `sanphamdongxe` DISABLE KEYS */;
/*!40000 ALTER TABLE `sanphamdongxe` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
