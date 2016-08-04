-- MySQL Script generated by MySQL Workbench
-- Thu Aug  4 09:37:33 2016
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema acquygiakhangdb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema acquygiakhangdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `acquygiakhangdb` DEFAULT CHARACTER SET latin1 ;
USE `acquygiakhangdb` ;

-- -----------------------------------------------------
-- Table `acquygiakhangdb`.`hangxe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `acquygiakhangdb`.`hangxe` (
  `MaHangXe` NVARCHAR(45) CHARACTER SET 'utf8' NOT NULL COMMENT '',
  `TenHangXe` NVARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `GhiChu` NVARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`MaHangXe`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `acquygiakhangdb`.`loaixe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `acquygiakhangdb`.`loaixe` (
  `MaLoaiXe` NVARCHAR(45) NOT NULL COMMENT '',
  `TenLoaiXe` NVARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `MaHangXe` NVARCHAR(45) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`MaLoaiXe`)  COMMENT '',
  INDEX `fk_loaixe_hangxe1_idx` (`MaHangXe` ASC)  COMMENT '',
  CONSTRAINT `fk_loaixe_hangxe1`
    FOREIGN KEY (`MaHangXe`)
    REFERENCES `acquygiakhangdb`.`hangxe` (`MaHangXe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `acquygiakhangdb`.`dongxe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `acquygiakhangdb`.`dongxe` (
  `MaDongXe` NVARCHAR(45) CHARACTER SET 'utf8' NOT NULL COMMENT '',
  `TenDongXe` NVARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `SoXyLanh` INT(11) NULL DEFAULT NULL COMMENT '',
  `DongCo` NVARCHAR(10) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `HopSo` NVARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `SoCua` INT(11) NULL DEFAULT NULL COMMENT '',
  `NhienLieu` NVARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `NamSanXuat` NVARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `MaLoaiXe` NVARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`MaDongXe`)  COMMENT '',
  INDEX `fk_dongxe_loaixe1_idx` (`MaLoaiXe` ASC)  COMMENT '',
  CONSTRAINT `fk_dongxe_loaixe1`
    FOREIGN KEY (`MaLoaiXe`)
    REFERENCES `acquygiakhangdb`.`loaixe` (`MaLoaiXe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `acquygiakhangdb`.`loainguoidung`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `acquygiakhangdb`.`loainguoidung` (
  `MaLoaiNguoiDung` INT(11) NOT NULL COMMENT '',
  `TenLoaiNguoiDung` NVARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `GhiChu` NVARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`MaLoaiNguoiDung`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `acquygiakhangdb`.`loaisanpham`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `acquygiakhangdb`.`loaisanpham` (
  `MaLoaiSanPham` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `TenLoaiSanPham` NVARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `MaLoaiCha` INT(11) NULL DEFAULT NULL COMMENT '',
  `MucLoaiSanPham` INT(11) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`MaLoaiSanPham`)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 22
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `acquygiakhangdb`.`nguoidung`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `acquygiakhangdb`.`nguoidung` (
  `MaNguoiDung` NVARCHAR(45) CHARACTER SET 'utf8' NOT NULL COMMENT '',
  `TenNguoiDung` NVARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `MatKhau` NVARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `MaLoaiNguoiDung` INT(11) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`MaNguoiDung`)  COMMENT '',
  INDEX `MaLoaiNguoiDung_idx` (`MaLoaiNguoiDung` ASC)  COMMENT '',
  CONSTRAINT `MaLoaiNguoiDung`
    FOREIGN KEY (`MaLoaiNguoiDung`)
    REFERENCES `acquygiakhangdb`.`loainguoidung` (`MaLoaiNguoiDung`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `acquygiakhangdb`.`nhacungcap`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `acquygiakhangdb`.`nhacungcap` (
  `MaNhaCC` NVARCHAR(45) CHARACTER SET 'utf8' NOT NULL COMMENT '',
  `TenNhaCC` NVARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `Email` NVARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `DienThoai` NVARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `DiaChi` NVARCHAR(100) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `GhiChu` NVARCHAR(100) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`MaNhaCC`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `acquygiakhangdb`.`quocgia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `acquygiakhangdb`.`quocgia` (
  `MaQuocGia` NVARCHAR(45) CHARACTER SET 'utf8' NOT NULL COMMENT '',
  `TenQuocGia` NVARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `GhiChu` NVARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`MaQuocGia`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `acquygiakhangdb`.`tinhtrang`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `acquygiakhangdb`.`tinhtrang` (
  `MaTinhTrang` NVARCHAR(45) NOT NULL COMMENT '',
  `TenTinhTrang` NVARCHAR(45) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`MaTinhTrang`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `acquygiakhangdb`.`hinhanh`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `acquygiakhangdb`.`hinhanh` (
  `MaHinhAnh` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `TenHinhAnh` NVARCHAR(100) NULL COMMENT '',
  `DuongDanHinhAnh` NVARCHAR(200) NULL COMMENT '',
  PRIMARY KEY (`MaHinhAnh`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `acquygiakhangdb`.`sanphamhinhanh`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `acquygiakhangdb`.`sanphamhinhanh` (
  `MaSanPham` NVARCHAR(45) NOT NULL COMMENT '',
  `MaHinhAnh` INT NOT NULL COMMENT '',
  PRIMARY KEY (`MaSanPham`, `MaHinhAnh`)  COMMENT '',
  INDEX `fk_sanphamhinhanh_hinhanh1_idx` (`MaHinhAnh` ASC)  COMMENT '',
  CONSTRAINT `fk_sanphamhinhanh_hinhanh1`
    FOREIGN KEY (`MaHinhAnh`)
    REFERENCES `acquygiakhangdb`.`hinhanh` (`MaHinhAnh`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `acquygiakhangdb`.`sanpham`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `acquygiakhangdb`.`sanpham` (
  `MaSanPham` NVARCHAR(45) CHARACTER SET 'utf8' NOT NULL COMMENT '',
  `TenSanPham` NVARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `MoTa` NVARCHAR(100) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `Gia` NVARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `MaTinhTrang` NVARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `HinhDaiDien` NVARCHAR(100) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `MaNhaCC` NVARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `MaQuocGia` NVARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `MaLoaiSanPham` INT(11) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`MaSanPham`)  COMMENT '',
  INDEX `MaNhaCC_idx` (`MaNhaCC` ASC)  COMMENT '',
  INDEX `MaQuocGia_idx` (`MaQuocGia` ASC)  COMMENT '',
  INDEX `MaLoaiSanPham_idx` (`MaLoaiSanPham` ASC)  COMMENT '',
  INDEX `fk_sanpham_tinhtrang1_idx` (`MaTinhTrang` ASC)  COMMENT '',
  CONSTRAINT `MaLoaiSanPham`
    FOREIGN KEY (`MaLoaiSanPham`)
    REFERENCES `acquygiakhangdb`.`loaisanpham` (`MaLoaiSanPham`),
  CONSTRAINT `MaNhaCC`
    FOREIGN KEY (`MaNhaCC`)
    REFERENCES `acquygiakhangdb`.`nhacungcap` (`MaNhaCC`),
  CONSTRAINT `MaQuocGia`
    FOREIGN KEY (`MaQuocGia`)
    REFERENCES `acquygiakhangdb`.`quocgia` (`MaQuocGia`),
  CONSTRAINT `MaTinhTrang`
    FOREIGN KEY (`MaTinhTrang`)
    REFERENCES `acquygiakhangdb`.`tinhtrang` (`MaTinhTrang`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sanpham_sanphamhinhanh1`
    FOREIGN KEY (`MaSanPham`)
    REFERENCES `acquygiakhangdb`.`sanphamhinhanh` (`MaSanPham`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `acquygiakhangdb`.`sanphamdongxe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `acquygiakhangdb`.`sanphamdongxe` (
  `MaSanPham` NVARCHAR(45) CHARACTER SET 'utf8' NOT NULL COMMENT '',
  `MaDongXe` NVARCHAR(45) CHARACTER SET 'utf8' NOT NULL COMMENT '',
  `MoTa` NVARCHAR(100) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`MaSanPham`, `MaDongXe`)  COMMENT '',
  INDEX `MaDongXe_idx` (`MaDongXe` ASC)  COMMENT '',
  CONSTRAINT `MaDongXe`
    FOREIGN KEY (`MaDongXe`)
    REFERENCES `acquygiakhangdb`.`dongxe` (`MaDongXe`),
  CONSTRAINT `MaSanPham`
    FOREIGN KEY (`MaSanPham`)
    REFERENCES `acquygiakhangdb`.`sanpham` (`MaSanPham`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;