?------------Tao CSDL-------------------------------------------------
--Chu y thay doi thu muc luu tru file .mdf va .ldf

CREATE DATABASE ThuTuc	
GO
USE ThuTuc
GO
------------------------------------------------------------------------------------------------
/*================================Tao cac bang trong CSDL=====================================*/
CREATE TABLE VATTU
(
	Mavtu char(4) not null,
	TenVTu nvarchar(100),
	Dvtinh nvarchar(10),
	Phantram real,
	Primary Key (Mavtu)
)
Go
------------------------------

CREATE TABLE NHACC
(
	MaNCC char(3) not null,
	TenNCC nvarchar(100),
	Diachi nvarchar(200),
	Dienthoai nvarchar(20),
	Primary Key (MaNCC)
)
GO
------------------------------
CREATE TABLE DONDH
(
	SoDH char(4) not null,
	NgayDH datetime,
	MaNCC char(3) not null,	
	Primary Key (SoDH)
	--Foreign Key (MaNCC) References NhaCC(ManCC) 
)
GO
------------------------------
CREATE TABLE CTDONDH
(
	SoDH char(4) not null,
	Mavtu char(4) not null,
	SlDat int,	
	Primary key (SoDH,Mavtu)
	--Foreign Key (SoDH) References DonDH(SoDH),
	--Foreign Key (MaVTu) References Vattu(MaVTu)
)
GO
------------------------------
CREATE TABLE PNHAP
(
	SoPn char(4) not null,
	NgayNhap Datetime not null,
	SoDH char(4) not null,	
	Primary key (SoPn)
	--Foreign Key (SoDH) References DonDH(SoDH)	
)
GO
------------------------------
CREATE TABLE CTPNHAP
(
	SoPn char(4) not null,
	Mavtu char(4) not null,
	SLNhap Int,	
	DGNhap Money,
	primary key (SoPn,Mavtu)
	--Foreign Key (SoPn) References PNhap(SoPn),
	--Foreign Key (MaVTu) References VaTTu(MaVTu)	
)
GO
------------------------------
CREATE TABLE PXUAT
(
	SoPx char(4) not null,
	NgayXuat Datetime not null,
	TenKH nvarchar(100) not null,	
	Primary key (SoPx)	
)
GO
------------------------------
CREATE TABLE CTPXUAT
(
	SoPx char(4) not null,
	Mavtu char(4) not null,
	SLXuat Int,	
	DGXuat Money,
	Primary key (SoPx,Mavtu)	
)
GO
------------------------------
CREATE TABLE TONKHO
(
	NamThang char(6) not null,
	Mavtu char(4) not null,
	SLDau Int,	
	TongSLN int,
	TongSLX int,
	SLCuoi as (SLDau+TongSLN-TongSLX),
	Primary key (NamThang,Mavtu)		
)
GO
-----------------------------------------------------------------------------
/*===================Tao cac CONSTRAINT - rang buoc toan ven=================*/

ALTER TABLE VATTU
	ADD
	CONSTRAINT UNQ_VATTU_Tenvt UNIQUE(Tenvtu),
	CONSTRAINT DEF_VATTU_Dvtinh DEFAULT '' For dvtinh,
	CONSTRAINT CHK_VATTU_Phantram CHECK(phantram between 0 And 100)
Go
------------------------------------------------------------------
ALTER TABLE NhaCC
	ADD
	CONSTRAINT UNQ_NHACC_TenNcc UNIQUE(Tenncc,diachi),	
	CONSTRAINT DEF_VATTU_Dienthoai DEFAULT 'Chua co' For dienthoai
------------------------------------------------------------------
Go
ALTER TABLE DONDH
	ADD	
	CONSTRAINT Frk_DONDH_Mancc FOREIGN KEY(Mancc) REFERENCES Nhacc(mancc),
	CONSTRAINT DEF_DONDH_Ngaydh DEFAULT Getdate() For Ngaydh

Go
------------------------------------------------------------------
ALTER TABLE CTDONDH
	ADD	
	CONSTRAINT Frk_CTDONDH_sodh FOREIGN KEY(Sodh) REFERENCES Dondh(sodh),
	CONSTRAINT Frk_CTDONDH_Mavtu FOREIGN KEY(Mavtu) REFERENCES Vattu(Mavtu),	
	CONSTRAINT CHK_CTDONDH_sldat CHECK(Sldat>0)
Go
------------------------------------------------------------------
ALTER TABLE CTPNhap
	ADD	
	CONSTRAINT Frk_CTPNHAP_sopn FOREIGN KEY(sopn) REFERENCES Pnhap(sopn)  ON DELETE NO ACTION ON UPDATE CASCADE,
	CONSTRAINT Frk_CTPNHAP_Mavtu FOREIGN KEY(Mavtu) REFERENCES Vattu(Mavtu) ON DELETE NO ACTION ON UPDATE CASCADE,
	CONSTRAINT CHK_CTPNHAP_SlNhap CHECK(SlNhap>0),
	CONSTRAINT CHK_CTPNHAP_DgNhap CHECK(DgNhap>0)
Go
------------------------------------------------------------------
ALTER TABLE CTPXuat
	ADD	
	CONSTRAINT Frk_CTPPXUAT_sopx FOREIGN KEY(sopx) REFERENCES Pxuat(sopx),
	CONSTRAINT Frk_CTPPXUAT_Mavtu FOREIGN KEY(Mavtu) REFERENCES Vattu(Mavtu),			
	CONSTRAINT CHK_SlXuat_CTPXuat CHECK(SlXuat>0),
	CONSTRAINT CHK_DgXuat_CTPXuat CHECK(DgXuat>0)
Go
------------------------------------------------------------------
ALTER TABLE TONKHO
	ADD	
	CONSTRAINT Frk_TONKHO_Mavtu FOREIGN KEY(Mavtu) REFERENCES Vattu(Mavtu),				
	CONSTRAINT CHK_SlDau_CTPXuat CHECK(SlDau>=0),
	CONSTRAINT CHK_TongSLN_TONKHO CHECK(TongSLN>=0),
	CONSTRAINT CHK_TongSLX_TONKHO CHECK(TongSLX>=0),
	CONSTRAINT DEF_SlDau_CTPXuat DEFAULT 0 For SlDau,
	CONSTRAINT DEF_TongSLN_TONKHO DEFAULT 0 For TongSLN,
	CONSTRAINT DEF_TongSLX_TONKHO DEFAULT 0 For TongSLX
Go
-------------------------------------------------------------------------------------------------------------
/*================Tao cac CONSTRAINT khoa ngoai===============*/

-- Font ch÷:  .VnCentury Schoolbook
/*Du Lieu Bang Nha Cung Cap*/
INSERT INTO NHACC VALUES ('C01',N'Lê Minh Trí',N'54 H?u Giang Q6 HCM','8781024')
INSERT INTO NHACC VALUES ('C02',N'Tr?n Minh Thành',N'145 Hùng Vương, Ba Đ?nh, Hà N?i','7698154')
INSERT INTO NHACC VALUES ('C03',N'Nguy?n Phương Anh',N'154/85 Lê L?i, H?i Dương','8757757')
INSERT INTO NHACC VALUES ('C04',N'Lưu V? Quang',N'198/40 Kim M?, Ba Đ?nh, Hà N?i','9600125')
INSERT INTO NHACC VALUES ('C05',N'V? Anh Tú',N'178 Lê Văn Lương, Thanh Xuân, Hà N?i','7964251')
INSERT INTO NHACC VALUES ('C06',N'Cao Minh Trung',N'125 Lê Quang Sung, Nha Trang','')
Go
------------------------------------------------------------------------
/*Du Lieu Bang VATTU*/
INSERT INTO VATTU VALUES ('DD01',N'Đ?u DVD Hitachi 1 c?a',N'B?',40)
INSERT INTO VATTU VALUES ('DD02',N'Đ?u DVD Hitachi 3 c?a',N'B?',40)
INSERT INTO VATTU VALUES ('TL15',N'T? L¹nh Sanyo 150 lít',N'Chi?c',25)
INSERT INTO VATTU VALUES ('TL90',N'T? L¹nh Sanyo 90 lít',N'Chi?c',20)
INSERT INTO VATTU VALUES ('TV14',N'Tivi SONY 14 inches',N'Chi?c',15)
INSERT INTO VATTU VALUES ('TV21',N'Tivi SONY 21 inches',N'Chi?c',10)
INSERT INTO VATTU VALUES ('TV29',N'Tivi SONY 29 inches',N'Chi?c',10)
INSERT INTO VATTU VALUES ('VD01',N'Đ?u VCD SONY 1 c?a',N'B?',30)
INSERT INTO VATTU VALUES ('VD02',N'Đ?u VCD SONY 3 c?a',N'B?',30)
Go
------------------------------------------------------------------------
/*Du Lieu Bang DONDH*/
INSERT INTO DONDH VALUES('D001','01/15/2015','C03')
INSERT INTO DONDH VALUES('D002','01/30/2015','C01')
INSERT INTO DONDH VALUES('D003','02/10/2015','C02')
INSERT INTO DONDH VALUES('D004','02/17/2015','C05')
INSERT INTO DONDH VALUES('D005','03/01/2015','C02')
INSERT INTO DONDH VALUES('D006','03/12/2015','C05')
Go
------------------------------------------------------------------------
/*Du Lieu Bang PNHAP*/
INSERT INTO PNHAP VALUES('N001','01/17/2015','D001')
INSERT INTO PNHAP VALUES('N002','01/20/2015','D001')
INSERT INTO PNHAP VALUES('N003','01/31/2015','D002')
INSERT INTO PNHAP VALUES('N004','02/15/2015','D003')
Go
------------------------------------------------------------------------
/*Du Lieu Bang CTDONDH*/
INSERT INTO CTDONDH VALUES('D001','DD01',10)
INSERT INTO CTDONDH VALUES('D001','DD02',15)
INSERT INTO CTDONDH VALUES('D002','VD02',30)
INSERT INTO CTDONDH VALUES('D003','TV14',10)
INSERT INTO CTDONDH VALUES('D003','TV29',20)
INSERT INTO CTDONDH VALUES('D004','TL90',10)
INSERT INTO CTDONDH VALUES('D005','TV14',10)
INSERT INTO CTDONDH VALUES('D005','TV29',20)
INSERT INTO CTDONDH VALUES('D006','TV14',10)
INSERT INTO CTDONDH VALUES('D006','TV29',20)
INSERT INTO CTDONDH VALUES('D006','VD01',20)
Go
------------------------------------------------------------------------
/*Du Lieu Bang CTPNHAP*/
INSERT INTO CTPNHAP VALUES('N001','DD01',8 ,25)
INSERT INTO CTPNHAP VALUES('N001','DD02',10 ,35)
INSERT INTO CTPNHAP VALUES('N002','DD01', 2,25)
INSERT INTO CTPNHAP VALUES('N002','DD02', 5,35)
INSERT INTO CTPNHAP VALUES('N003','VD02', 30,25)
INSERT INTO CTPNHAP VALUES('N004','TV14', 5,25)
INSERT INTO CTPNHAP VALUES('N004','TV21', 12,35)

UPDATE  CTPNHAP SET dgnhap=dgNhap*100000
Go
------------------------------------------------------------------------
/*Du Lieu Bang PXUAT*/
INSERT INTO PXUAT VALUES('X001','01/17/2015',N'Nguy?n Ng?c Y?n Nhi')
INSERT INTO PXUAT VALUES('X002','01/25/2015',N'Tr?nh Anh V?')
INSERT INTO PXUAT VALUES('X003','01/31/2015',N'Đ?ng H?i Vân')
Go
------------------------------------------------------------------------
/*Du Lieu Bang CTPXUAT*/
INSERT INTO CTPXUAT VALUES('X001','DD01',2 ,35)
INSERT INTO CTPXUAT VALUES('X002','DD01',1 ,35)
INSERT INTO CTPXUAT VALUES('X002','DD02', 5,49)
INSERT INTO CTPXUAT VALUES('X003','DD01', 3,35)
INSERT INTO CTPXUAT VALUES('X003','DD02', 2,49)
INSERT INTO CTPXUAT VALUES('X003','VD02', 10,32.5)

UPDATE  CTPXUAT SET dgxuat=dgxuat*100000
Go
------------------------------------------------------------------------
/*Du Lieu Bang TONKHO*/

INSERT INTO TONKHO(Namthang,Mavtu,SLDau,TongSLN,TongSLX) VALUES('201501','DD01',0,10,6 )
INSERT INTO TONKHO(Namthang,Mavtu,SLDau,TongSLN,TongSLX) VALUES('201501','DD02',0,15,7 )
INSERT INTO TONKHO(Namthang,Mavtu,SLDau,TongSLN,TongSLX) VALUES('201501','VD02',0,30,10 )
INSERT INTO TONKHO(Namthang,Mavtu,SLDau,TongSLN,TongSLX) VALUES('201502','DD01',4,0,0 )
INSERT INTO TONKHO(Namthang,Mavtu,SLDau,TongSLN,TongSLX) VALUES('201502','DD02',8,0,0 )
INSERT INTO TONKHO(Namthang,Mavtu,SLDau,TongSLN,TongSLX) VALUES('201502','VD02',20,0,0 )
INSERT INTO TONKHO(Namthang,Mavtu,SLDau,TongSLN,TongSLX) VALUES('201502','TV14',5,0,0 )
INSERT INTO TONKHO(Namthang,Mavtu,SLDau,TongSLN,TongSLX) VALUES('201502','TV29',12,0,0 )



-----Tạo thủ tục-----
--Bài 1:
--1.
CREATE PROCEDURE spud_LayDanhsachVATTU
AS
BEGIN
	select * from VATTU
	order by TenVTu ASC;
END;
GO
EXEC sp_helptext 'spud_LayDanhsachVATTU';
EXEC spud_LayDanhsachVATTU;
--2.
CREATE PROCEDURE spud_LayDanhSach_NHACC
	@mancc VARCHAR(10) = NULL
AS
BEGIN
	if @mancc is null
	begin
		select * from NHACC;
	end else
	Begin select * from NHACC where mancc = @mancc;
	end
END;
EXEC spud_LayDanhSach_NHACC;
EXEC spud_LayDanhSach_NHACC @mancc = C04;
--3.
CREATE PROCEDURE spud_PXUAT_BcaoPxuat
	@SoPx char(4) = NULL
AS
BEGIN
	select 
		PXUAT.SoPx as [Số phiếu xuất],
		PXUAT.NgayXuat as [Ngày xuất],
		PXUAT.TenKH as [Tên khách hàng],
		CTPXUAT.Mavtu as [Mã vật tư],
		VATTU.TenVTu as [Tên vật tư],
		CTPXUAT.SLXuat as [Số lượng xuất],
		CTPXUAT.DGXuat as [Đơn giá xuất]
	from PXUAT JOIN CTPXUAT ON PXUAT.SoPx = CTPXUAT.SoPx
				JOIN VATTU ON VATTU.Mavtu = CTPXUAT.Mavtu
	where (@SoPx is null or PXUAT.SoPx = @SoPx)
END;
EXEC spud_PXUAT_BcaoPxuat;
EXEC spud_PXUAT_BcaoPxuat @SoPx = 'X001';
--4.
CREATE PROCEDURE spud_PNHAP_BcaoPNhap
	@SoPn char(4) = Null
AS
BEGIN
	select 
		PNHAP.SoPn as [Số phiếu nhập],
		PNHAP.NgayNhap as [Ngày nhập],
		PNHAP.SoDH as [Sôa đơn hàng],
		CTPNHAP.Mavtu as [Mã vật tư],
		VATTU.TenVTu as [Tên vật tư],
		CTPNHAP.SLNhap as [Số lượng nhập],
		CTPNHAP.DGNhap as [Đơn giá nhập]
	from PNHAP JOIN CTPNHAP ON PNHAP.SoPn = CTPNHAP.SoPn
				JOIN VATTU ON VATTU.Mavtu = CTPNHAP.Mavtu
	where (@SoPn is null or PNHAP.SoPn = @SoPn)
END;
EXEC spud_PNHAP_BcaoPNhap;
EXEC spud_PNHAP_BcaoPNhap @SoPn = 'N001';	
--5.
CREATE PROCEDURE spud_TONKHO_BcaoTonkho
	@NamThang char(6)
AS
BEGIN
	select
		TONKHO.NamThang as [Năm tháng],
		TONKHO.Mavtu as [Mã vật tư],
		VATTU.TenVTu as [Tên vật tư],
		TONKHO.SLDau as [Số lượng đầu kỳ],
		TONKHO.TongSLN as [Tổng số lượng nhập],
		TONKHO.TongSLX as [Tổng số lượng xuât],
		TONKHO.SLCuoi as [Số lượng cuối kỳ]
	from TONKHO JOIN VATTU ON TONKHO.Mavtu = VATTU.Mavtu
	where TONKHO.NamThang = @NamThang
END;
EXEC spud_TONKHO_BcaoTonkho @NamThang = '201501';

--Bài 2:
--1.
CREATE PROCEDURE spud_VATTU_Them
	@Mavtu char(4),
	@TenVtu nvarchar(100),
	@Dvtinh nvarchar(10) = '',
	@Phantram real
AS
BEGIN
	if EXISTS (select 1 from VATTU where Mavtu = @Mavtu)
	begin
		RAISERROR('Mã vật tư đã tồn tại trong bảng VATTU.', 16, 1)
		return
	end

	if EXISTS (select 1 from VATTU where TenVTu = @TenVtu)
	begin
		RAISERROR('Tên vật tư đã tồn tại trong bảng VATTU.', 16, 1)
		return
	end

	if @Phantram < 0 OR @Phantram > 100
	begin
		RAISERROR('Phần trăm phải nằm trong khoảng 0-100.', 16, 1)
		return
	end

	INSERT INTO VATTU(Mavtu, TenVTu, Dvtinh, Phantram)
	Values(@Mavtu, @TenVtu, @Dvtinh, @Phantram)

	Print N'Dữ liệu đã được thêm thành công vào bảng VATTU.'
END;
EXEC spud_VATTU_Them 
		@Mavtu = 'DV03',
		@TenVtu = N'Đầu DVD Sony 3 cửa',
		@Dvtinh = N'Bộ',
		@Phantram = 25
drop PROCEDURE spud_VATTU_Them
--2
CREATE PROCEDURE spud_VATTU_Xoa
    @Mavtu char(4)  
AS
BEGIN
    IF EXISTS (SELECT 1 FROM CTDONDH WHERE Mavtu = @Mavtu)
    BEGIN
        RAISERROR('Mã vật tư không thể xoá vì đã tồn tại trong bảng CTDONDH.', 16, 1);
        RETURN;
    END

    IF EXISTS (SELECT 1 FROM CTPNHAP WHERE Mavtu = @Mavtu)
    BEGIN
        RAISERROR('Mã vật tư không thể xoá vì đã tồn tại trong bảng CTPNHAP.', 16, 1);
        RETURN;
    END

    IF EXISTS (SELECT 1 FROM CTPXUAT WHERE Mavtu = @Mavtu)
    BEGIN
        RAISERROR('Mã vật tư không thể xoá vì đã tồn tại trong bảng CTPXUAT.', 16, 1);
        RETURN;
    END

    IF EXISTS (SELECT 1 FROM TONKHO WHERE Mavtu = @Mavtu)
    BEGIN
        RAISERROR('Mã vật tư không thể xoá vì đã tồn tại trong bảng TONKHO.', 16, 1);
        RETURN;
    END

    DELETE FROM VATTU WHERE Mavtu = @Mavtu;

    PRINT 'Dữ liệu vật tư đã được xoá thành công.';
END;
EXEC spud_VATTU_Xoa @Mavtu = 'DD01';
--3. 
CREATE PROCEDURE spud_VATTU_Sua
	@mavtu VARCHAR(10),
	@tenvtu NVARCHAR(100) = NULL,
	@donvitinh NVARCHAR(50) = NULL,
	@phantram DECIMAL(5,2) = NULL
AS
BEGIN
	Update VATTU
	SET
		tenvtu = COALESCE(@tenvtu, tenvtu),
		dvtinh = COALESCE(@donvitinh, dvtinh),
		phantram = COALESCE(@phantram, phantram)
	WHERE mavtu = @mavtu;
END;

EXEC spud_VATTU_Sua @mavtu = 'DD01', @tenvtu = 'Vật tư mới', @donvitinh = 'kg', @phantram = 10.50
EXEC spud_VATTU_Sua @mavtu = 'DD01', @phantram = 15.00;
EXEC spud_VATTU_Sua @mavtu = 'VD01', @tenvtu = 'Vật tư đã thay đổi'

--Bài 3:
--1.

