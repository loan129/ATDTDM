﻿-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2020-12-03 13:28:39.535

-- tables
-- Table: CHITIETHD
CREATE DATABASE demo_database
go
CREATE TABLE CHITIETHD (
    sohd int  NOT NULL,
    masp int  NOT NULL,
    soluong int  NOT NULL,
    CONSTRAINT CHITIETHD_pk PRIMARY KEY  (sohd,masp)
);

-- Table: HOADON
CREATE TABLE HOADON (
    sohd int  NOT NULL,
    makh int  NOT NULL,
    ngayhd datetime  NULL,
    CONSTRAINT HOADON_pk PRIMARY KEY  (sohd)
);

-- Table: KHACHHANG
CREATE TABLE KHACHHANG (
    makh int  NOT NULL,
    hoten nvarchar(30)  NOT NULL,
    diachi nvarchar(50)  NOT NULL,
    sodt int  NULL,
    anhkh nvarchar(50)  NULL,
    CONSTRAINT KHACHHANG_pk PRIMARY KEY  (makh)
);

-- Table: LOAISANPHAM
CREATE TABLE LOAISANPHAM (
    maloai int  NOT NULL,
    tenloai nvarchar(30)  NOT NULL,
    CONSTRAINT LOAISANPHAM_pk PRIMARY KEY  (maloai)
);

-- Table: SANPHAM
CREATE TABLE SANPHAM (
    masp int  NOT NULL,
    tensp nvarchar(50)  NOT NULL,
    gia varchar(15)  NOT NULL,
    maloai int  NOT NULL,
    anh nvarchar(50)  NULL,
    CONSTRAINT SANPHAM_pk PRIMARY KEY  (masp)
);

-- foreign keys
-- Reference: CHITIETHOADON_HOADON (table: CHITIETHD)
ALTER TABLE CHITIETHD ADD CONSTRAINT CHITIETHOADON_HOADON
    FOREIGN KEY (sohd)
    REFERENCES HOADON (sohd);

-- Reference: CHITIETHOADON_SANPHAM (table: CHITIETHD)
ALTER TABLE CHITIETHD ADD CONSTRAINT CHITIETHOADON_SANPHAM
    FOREIGN KEY (masp)
    REFERENCES SANPHAM (masp);

-- Reference: HOADON_KHACHHANG (table: HOADON)
ALTER TABLE HOADON ADD CONSTRAINT HOADON_KHACHHANG
    FOREIGN KEY (makh)
    REFERENCES KHACHHANG (makh);

-- Reference: SANPHAM_LOAISANPHAM (table: SANPHAM)
ALTER TABLE SANPHAM ADD CONSTRAINT SANPHAM_LOAISANPHAM
    FOREIGN KEY (maloai)
    REFERENCES LOAISANPHAM (maloai);

-- End of file.

--Thêm dữ liệu

--Bảng KHACHHANG
INSERT INTO KHACHHANG VALUES(1,N'Trần Vũ Hoàng',N'10 Trần Kế Xương, F.7, Q.Phú Nhuận,
TP.HCM','0905919290','1.jpg')
INSERT INTO KHACHHANG VALUES(2,N'Trần Quang Huy',N'436A/63 đường 3/2, P12, Q10,
HCM','01658601161','2.jpg')
INSERT INTO KHACHHANG VALUES(3,N'Hoàng Trung Tuấn',N'33/14 Bình Dường II An Bình Dĩ
An','1869104611','3.jpg')
INSERT INTO KHACHHANG VALUES(4,N'Vũ Đình Thi',N'26, Đồng Đen, P14, Q. Tân Bình,
HCM','01864840426','4.jpg')
INSERT INTO KHACHHANG VALUES(5,N'Võ Thanh Hà',N'45A Hòa Bình, P. Tân Thới Hòa, Q. Tân
Phú, HCM','01266864347','5.jpg')

select * from KHACHHANG

---------Bảng HOADON
INSERT INTO HOADON VALUES(1,1,'2-14-2013')
INSERT INTO HOADON VALUES(2,2,'3-1-2014')
INSERT INTO HOADON VALUES(3,3,'5-28-2014')
INSERT INTO HOADON VALUES(4,5,'7-15-2015')
INSERT INTO HOADON VALUES(5,4,'10-31-2015')
INSERT INTO HOADON VALUES(6,3,'12-24-2015')

--- Bảng LOAISANPHAM
INSERT INTO LOAISANPHAM VALUES(1,N'Máy Tính')
INSERT INTO LOAISANPHAM VALUES(2,N'Thiết Bị Tin Học')
INSERT INTO LOAISANPHAM VALUES(3,N'Thiết Bị Mạng')
INSERT INTO LOAISANPHAM VALUES(4,N'Thiết Bị Kỹ Thuật Số')
INSERT INTO LOAISANPHAM VALUES(5,N'Thiết Bị Văn Phòng')

----Bảng SANPHAM
INSERT INTO SANPHAM VALUES(1,N'Laptop Macbook Pro MF841',40200000,1 ,'1.jpg')
INSERT INTO SANPHAM VALUES(2,N'Bộ nhớ DDR3 Kingston 8GB',970000,2 ,'2.jpg')
INSERT INTO SANPHAM VALUES(3,N'TPLink TL-WR841N',390000,3 ,'3.jpg')
INSERT INTO SANPHAM VALUES(4,N'Camera eView IRD2803A10H',820000,4 ,'4.jpg')
INSERT INTO SANPHAM VALUES(5,N'Máy in Canon Pixma E560',2500000,5 ,'5.jpg')

---- Bảng CHITIETHD
INSERT INTO CHITIETHD VALUES(1,1,1)
INSERT INTO CHITIETHD VALUES(2,2,2)
INSERT INTO CHITIETHD VALUES(3,3,1)
INSERT INTO CHITIETHD VALUES(4,4,1)
INSERT INTO CHITIETHD VALUES(5,5,10)

select * from KHACHHANG
