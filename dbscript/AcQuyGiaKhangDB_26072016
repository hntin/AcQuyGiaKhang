-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.9-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema acquygiakhangdb
--

CREATE DATABASE IF NOT EXISTS acquygiakhangdb;
USE acquygiakhangdb;

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
  `NhienLieu` varchar(45) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `NamSanXuat` varchar(45) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `MaLoaiXe` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`MaDongXe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Dumping data for table `dongxe`
--

/*!40000 ALTER TABLE `dongxe` DISABLE KEYS */;
INSERT INTO `dongxe` (`MaDongXe`,`TenDongXe`,`SoXyLanh`,`DongCo`,`HopSo`,`SoCua`,`NhienLieu`,`NamSanXuat`,`MaLoaiXe`) VALUES 
 ('1','Vios 2013-2016',4,'1.6','Tự động',4,'Xăng','2013-2016','2'),
 ('2','Camry 2.4',4,'2.4','Tự động',4,'Xăng','2016','1'),
 ('3','Camry 3.0',4,'3.0','Tự động',4,'Xăng','2016','1');
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
INSERT INTO `hangxe` (`MaHangXe`,`TenHangXe`,`GhiChu`) VALUES 
 ('1','Toyota','Toyota'),
 ('2','Honda','Honda');
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
-- Definition of table `loaisanpham`
--

DROP TABLE IF EXISTS `loaisanpham`;
CREATE TABLE `loaisanpham` (
  `MaLoaiSanPham` int(11) NOT NULL AUTO_INCREMENT,
  `TenLoaiSanPham` varchar(45) DEFAULT NULL,
  `MaLoaiCha` int(11) DEFAULT NULL,
  `MucLoaiSanPham` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaLoaiSanPham`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaisanpham`
--

/*!40000 ALTER TABLE `loaisanpham` DISABLE KEYS */;
INSERT INTO `loaisanpham` (`MaLoaiSanPham`,`TenLoaiSanPham`,`MaLoaiCha`,`MucLoaiSanPham`) VALUES 
 (1,'Loại sản phẩm',-1,NULL),
 (2,'Ắc Quy',1,NULL),
 (3,'Bóng đèn',1,NULL),
 (4,'Bugi',1,NULL),
 (5,'Còi Xe',1,NULL),
 (6,'Gạt mưa',1,NULL),
 (7,'Thiết bị',1,NULL),
 (8,'Phụ kiện',1,NULL),
 (9,'Bơm xăng',1,NULL),
 (10,'Ắc quy Ôtô',2,NULL),
 (11,'Ắc quy DataCenter',2,NULL),
 (12,'Ắc quy máy phát',2,NULL),
 (13,'Bóng đèn Xenon',3,NULL),
 (14,'Bóng đèn tăng sáng',3,NULL),
 (15,'Ánh sáng trắng',3,NULL),
 (16,'Máy nạp ắc quy',7,NULL),
 (17,'Máy phun rửa áp lực',NULL,NULL);
/*!40000 ALTER TABLE `loaisanpham` ENABLE KEYS */;


--
-- Definition of table `loaixe`
--

DROP TABLE IF EXISTS `loaixe`;
CREATE TABLE `loaixe` (
  `MaLoaiXe` varchar(45) NOT NULL,
  `TenLoaiXe` varchar(45) DEFAULT NULL,
  `MaHangXe` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaLoaiXe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaixe`
--

/*!40000 ALTER TABLE `loaixe` DISABLE KEYS */;
INSERT INTO `loaixe` (`MaLoaiXe`,`TenLoaiXe`,`MaHangXe`) VALUES 
 ('1','Camry','1'),
 ('11','Civic','2'),
 ('14','Accord','2'),
 ('2','Vios','1'),
 ('3','Innova','1'),
 ('4','Yaris','1'),
 ('7','Honda City','2'),
 ('9','CRV','2');
/*!40000 ALTER TABLE `loaixe` ENABLE KEYS */;


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
 ('hnthanh','hnthanh','hnthanh',1),
 ('hntin','hntin','hntin',1),
 ('nhung.tran','Trần Ngọc Nhung','nhung.tran',2),
 ('oneadmin','oneadmin','oneadmin',1);
/*!40000 ALTER TABLE `nguoidung` ENABLE KEYS */;


--
-- Definition of table `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
CREATE TABLE `nhacungcap` (
  `MaNhaCC` varchar(45) CHARACTER SET utf8 NOT NULL,
  `TenNhaCC` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `DienThoai` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `DiaChi` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `GhiChu` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`MaNhaCC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Dumping data for table `nhacungcap`
--

/*!40000 ALTER TABLE `nhacungcap` DISABLE KEYS */;
INSERT INTO `nhacungcap` (`MaNhaCC`,`TenNhaCC`,`Email`,`DienThoai`,`DiaChi`,`GhiChu`) VALUES 
 ('1','BOSCH','bosch@gmail.com','123456789','Đường Điện Biên Phủ, Quận Bình Thạnh, TPHCM','BOSCH'),
 ('2','OSRAM','osram@gmail.com','123456','Quận 1, TPHCM','OSRAM'),
 ('GS','GS','gs@gmail.com','1234567','Biên Hòa, Đồng Nai','Biên Hòa, Đồng Nai');
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
 ('1','Ấn độ','India'),
 ('2','Anh','England'),
 ('3','Đức','Germany'),
 ('4','Mỹ','USA'),
 ('5','Nhật','JP'),
 ('6','Singapore','Singapore'),
 ('7','Thổ Nhĩ Kỳ','Turkey'),
 ('8','Trung Quốc','China'),
 ('9','Vietnam','VN');
/*!40000 ALTER TABLE `quocgia` ENABLE KEYS */;


--
-- Definition of table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE `sanpham` (
  `MaSanPham` varchar(45) CHARACTER SET utf8 NOT NULL,
  `TenSanPham` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `MoTa` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Gia` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `MaTinhTrang` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `HinhDaiDien` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `MaNhaCC` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `MaQuocGia` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `MaLoaiSanPham` int(11) DEFAULT NULL,
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
INSERT INTO `sanpham` (`MaSanPham`,`TenSanPham`,`MoTa`,`Gia`,`MaTinhTrang`,`HinhDaiDien`,`MaNhaCC`,`MaQuocGia`,`MaLoaiSanPham`) VALUES 
 ('1','Ắc quy 01','Ắc quy 01','1','1','ProductImages/acquy01.jpg','1','3',1),
 ('123','123','123','1','1','ProductImages/acquy01.jpg','1','3',1);
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;


--
-- Definition of table `sanphamdongxe`
--

DROP TABLE IF EXISTS `sanphamdongxe`;
CREATE TABLE `sanphamdongxe` (
  `MaSanPham` varchar(45) CHARACTER SET utf8 NOT NULL,
  `MaDongXe` varchar(45) CHARACTER SET utf8 NOT NULL,
  `MoTa` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`MaSanPham`,`MaDongXe`),
  KEY `MaDongXe_idx` (`MaDongXe`),
  CONSTRAINT `MaDongXe` FOREIGN KEY (`MaDongXe`) REFERENCES `dongxe` (`MaDongXe`),
  CONSTRAINT `MaSanPham` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Dumping data for table `sanphamdongxe`
--

/*!40000 ALTER TABLE `sanphamdongxe` DISABLE KEYS */;
INSERT INTO `sanphamdongxe` (`MaSanPham`,`MaDongXe`,`MoTa`) VALUES 
 ('1','2','1#2'),
 ('1','3','1#3'),
 ('123','1','123#1'),
 ('123','2','123#2'),
 ('123','3','123#3');
/*!40000 ALTER TABLE `sanphamdongxe` ENABLE KEYS */;


--
-- Definition of table `sanphamhinhanh`
--

DROP TABLE IF EXISTS `sanphamhinhanh`;
CREATE TABLE `sanphamhinhanh` (
  `MaSanPham` varchar(45) NOT NULL,
  `TenHinhAnh` varchar(100) NOT NULL,
  `DuongDanHinhAnh` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaSanPham`,`TenHinhAnh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanphamhinhanh`
--

/*!40000 ALTER TABLE `sanphamhinhanh` DISABLE KEYS */;
/*!40000 ALTER TABLE `sanphamhinhanh` ENABLE KEYS */;


--
-- Definition of table `tinhtrang`
--

DROP TABLE IF EXISTS `tinhtrang`;
CREATE TABLE `tinhtrang` (
  `MaTinhTrang` varchar(45) NOT NULL,
  `TenTinhTrang` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaTinhTrang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tinhtrang`
--

/*!40000 ALTER TABLE `tinhtrang` DISABLE KEYS */;
INSERT INTO `tinhtrang` (`MaTinhTrang`,`TenTinhTrang`) VALUES 
 ('1','Còn hàng'),
 ('2','Hết hàng');
/*!40000 ALTER TABLE `tinhtrang` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
