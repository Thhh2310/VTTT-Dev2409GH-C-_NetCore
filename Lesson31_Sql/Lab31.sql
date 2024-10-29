
--Tạo cơ sở dữ liệu
CREATE DATABASE L31_VTTT
GO
use L31_VTTT
go
/*

*/

--Tạo bảng VATTU(MaVTu, TenVTu, DvTinh, PhanTram)
CREATE TABLE VATTU
(
	MaVTu char(4) not null
		Constraint PK_VATTU primary key,
	TenVTu nvarchar(100) Not null
		Constraint UQ_VATTU_TenVTu unique,
	DvTinh nvarchar(10)
		Constraint DF_VATTU_DvTinh Default ' ',
	PhanTram real
		Constraint CK_VATTU_PhanTram Check(PhanTram>=0 and PhanTram<=100)
)
GO

--Tạo bảng NHACC(MaNhaCc, TenNhaCc, DiaChi, DienThoai)
CREATE TABLE NHACC
(
	MaNhaCc Char(3) NOT NULL PRIMARY KEY,
	TenNhaCc nvarchar(100) NOT NULL,
	DiaChi nvarchar(200) NOT NULL,
	DienThoai varchar(20) Null DEFAULT N'Chưa có'
)
GO

--Tạo bảng DONDH(SoDh, NgayDh, MaNhaCc)
CREATE TABLE DONDH
(
	SoDh char(4) Not null PRIMARY KEY,
	NgayDh datetime DEFAULT GETDATE(),
	MaNhaCc Char(3) Not null REFERENCES NHACC(MaNhaCc)
)
GO

--Tạo bảng CTDONDH(SoDh, MaVTu, SlDat)
CREATE TABLE CTDONDH
(
	SoDh char(4) not null,
	MaVTu char(4) not null,
	SlDat int not null check(SlDat>0),
	PRIMARY KEY(SoDh, MaVTu)
)
GO

--Tạo bảng PNHAP(SoPn, NgayNhap, SoDh)
CREATE TABLE PNHAP
(
	SoPn char(4) PRIMARY KEY,
	NgayNhap Datetime Default GetDATE(),
	SoDh char(4) not null 
)
GO

--Tạo bảng CTPNHAP(SoPn, MaVTu, SlNhap, DgNhap)
CREATE TABLE CTPNHAP
(
	SoPn char(4) not null,
	MaVTu char(4) NOT NULL,
	SlNhap int not null check(SlNhap>0),
	DgNhap money not null check(DgNhap>0),
	PRIMARY KEY(SoPn, MaVTu)
)
GO

--Tạo bảng PXUAT(SoPx, NgayXuat, TenKh)
CREATE TABLE PXUAT
(
	SoPx char(4) PRIMARY KEY,
	NgayXuat Datetime Default GetDATE(),
	TenKh varchar(100) not null 
)
GO

--Tạo bảng CTPXUAT(SoPx, MaVTu, SlXuat, DgXuat)
CREATE TABLE CTPXUAT
(
	SoPx char(4) not null,
	MaVTu char(4) NOT NULL,
	SlXuat int not null check(SlXuat>0),
	DgXuat money not null check(DgXuat>0),
	PRIMARY KEY(SoPx, MaVTu)
)
GO

--Tạo bảng TONKHO(NamThang, MaVTu, SLDau, TongSLN, TongSLX, SLCuoi)
CREATE TABLE TONKHO
(
	NamThang char(6) not null,
	MaVTu char(4) not null,
	SLDau int NOT NULL check(SLDau>0),
	TongSLN int NOT NULL check(TongSLN>0),
	TongSLX int NOT NULL check(TongSLX>0),
	SLCuoi --as SLDau+TongSLN-TongSLX,
		int, CONSTRAINT chk_SLCuoi check(SLCuoi = SLDau+TongSLN-TongSLX),
	PRIMARY KEY(NamThang, MaVTu)
)
GO


--Thêm dữ liệu vào bảng VATTU(MaVTu, TenVTu, DvTinh, PhanTram)
INSERT INTO VATTU(MaVTu, TenVTu, DvTinh, PhanTram) VALUES
('DD01', N'Đầu DVD Hitachi 1 đĩa', N'Bộ', 40),
('DD02', N'Đầu DVD Hitachi 3 đĩa', N'Bộ', 40),
('TL15', N'Tủ lạnh Sanyo 150 lít', N'Cái', 25),
('TL90', N'Tủ lạnh Sanyo 90 lít', N'Cái', 20),
('TV14', N'Tivi Sony 14 inches', N'Cái', 15),
('TV21', N'Tivi Sony 21 inches', N'Cái', 10),
('TV29', N'Tivi Sony 29 inches', N'Cái', 10),
('VD01', N'Đầu VCD Sony 1 đĩa', N'Bộ', 30),
('VD02', N'Đầu VCD Sony 3 đĩa', N'Bộ', 30);


--Thêm dữ liệu vào bảng NHACC(MaNhaCc, TenNhaCc, DiaChi, DienThoai)
INSERT INTO NHACC(MaNhaCc, TenNhaCc, DiaChi, DienThoai) VALUES
('C01', N'Lê Minh Thành', N'54, Kim Mã, Cầu Giấy, Hà Nội', '8781024'),
('C02', N'Trần Quang Anh', N'145, Hùng Vương, Hải Phòng', '7698154'),
('C03', N'Bùi Hồng Phương', N'154/85, Lê Chân, Hải Phòng', '9600125'),
('C04', N'Vũ Nhật Thắng', N'198/40 Hương Lộ 14 QTB HCM', '8757757'),
('C05', N'Nguyễn Thị Thuý', N'178 Nguyễn Văn Luông Đà Lạt', '7964251'),
('C06', N'Cao Minh Trung', N'125 Lê Quang Sung Nha Trang', 'chua co');


--Thêm dữ liệu vào bảng DONDH(SoDh, NgayDh, MaNhaCc)
INSERT INTO DONDH(SoDh, NgayDh, MaNhaCc) VALUES
('D001', 01/15/2012, 'C03'),
('D002', 01/30/2012, 'C01'),
('D003', 02/10/2012, 'C02'),
('D004', 02/11/2012, 'C05'),
('D005', 03/01/2012, 'C02'),
('D006', 03/12/2012, 'C05');


--Thêm dữ liệu vào bảng CTDONDH(SoDh, MaVTu, SlDat)
INSERT INTO CTDONDH(SoDh, MaVTu, SlDat) VALUES
('D001', 'DD01', 10),
('D001', 'DD02', 15),
('D002', 'VD02', 30),
('D003', 'TV14', 10),
('D003', 'TV29', 20),
('D004', 'TL90', 10),
('D005', 'TV14', 10),
('D005', 'TV29', 20),
('D006', 'TV14', 10),
('D006', 'TV29', 20),
('D006', 'VD01', 20);


--Thêm dữ liệu vào bảng PNHAP(SoPn, NgayNhap, SoDh)
INSERT INTO PNHAP(SoPn, NgayNhap, SoDh) VALUES
('N001', 01/17/2012, 'D001'),
('N002', 01/20/2012, 'D001'),
('N003', 01/31/2012, 'D002');


--Thêm dữ liệu vào bảng CTPNHAP(SoPn, MaVTu, SlNhap, DgNhap)
INSERT INTO CTPNHAP(SoPn, MaVTu, SlNhap, DgNhap) VALUES
('N001', 'DD01', 8, 2500.000),
('N001', 'DD02', 10, 3500.000),
('N002', 'DD01', 2, 2500.000),
('N002', 'DD02', 5, 3500.000),
('N003', 'VD02', 30, 2500.000),
('N001', 'TV14', 5, 2500.000),
('N002', 'TV29', 12, 3500.000);


--Thêm dữ liệu vào bảng PXUAT(SoPx, NgayXuat, TenKh)
INSERT INTO PXUAT(SoPx, NgayXuat, TenKh) VALUES
('X001', 01/17/2012, 'Nguyen Ngoc Phuong Nhi'),
('X002', 01/25/2012, 'Nguyen Hong Phuong'),
('X003', 01/31/2012, 'Nguyen Tuấn Tú');


--Thêm dữ liệu vào bảng CTPXUAT(SoPx, MaVTu, SlXuat, DgXuat)
INSERT INTO CTPXUAT(SoPx, MaVTu, SlXuat, DgXuat) VALUES
('X001', 'DD01', 2, 3500.000),
('X002', 'DD01', 1, 3500.000),
('X002', 'DD02', 5, 4900.000),
('X003', 'DD01', 3, 3500.000),
('X003', 'DD02', 2, 4900.000),
('X003', 'VD02', 10, 3250.000);


--Thêm dữ liệu vào bảng TONKHO(NamThang, MaVTu, SLDau, TongSLN, TongSLX, SLCuoi)
INSERT INTO TONKHO(NamThang, MaVTu, SLDau, TongSLN, TongSLX, SLCuoi) VALUES
('201201', 'DD01', 100, 50, 30, 120),	-- SLCuoi = 100 + 50 - 30 = 120
('201201', 'DD02', 200, 100, 50, 250),	-- SLCuoi = 200 + 100 - 50 = 250
('201201', 'VD02', 150, 80, 70, 160),	-- SLCuoi = 150 + 80 - 70 = 160
('201202', 'DD01', 80, 60, 40, 100),	-- SLCuoi = 80 + 60 - 40 = 100
('201202', 'DD02', 100, 50, 30, 120),	-- SLCuoi = 100 + 50 - 30 = 120
('201202', 'VD02', 200, 100, 50, 250),	-- SLCuoi = 200 + 100 - 50 = 250
('201203', 'TV14', 150, 80, 70, 160),	-- SLCuoi = 150 + 80 - 70 = 160
('201203', 'TV29', 80, 60, 40, 100);	-- SLCuoi = 80 + 60 - 40 = 100