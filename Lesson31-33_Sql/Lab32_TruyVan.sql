
Create database L32_VTTT
go
use L32_VTTT
go
/****** Object:  Table [dbo].[Ketqua]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ketqua](
	[MaSV] [nvarchar](3) NOT NULL,
	[MaMH] [nvarchar](2) NOT NULL,
	[Diem] [real] NULL,
 CONSTRAINT [Prk_MaSV_MAMH] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[MaKH] [nvarchar](2) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
 CONSTRAINT [Prk_KHOA_khoa] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [nvarchar](2) NOT NULL,
	[TenMH] [nvarchar](50) NOT NULL,
	[Sotiet] [tinyint] NULL,
 CONSTRAINT [Prk_MONHOC_MaMH] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [nvarchar](3) NOT NULL,
	[HoSV] [nvarchar](15) NOT NULL,
	[TenSV] [nvarchar](7) NOT NULL,
	[Phai] [bit] NOT NULL,
	[NgaySinh] [smalldatetime] NOT NULL,
	[NoiSinh] [nvarchar](100) NOT NULL,
	[MaKH] [nvarchar](2) NOT NULL,
	[HocBong] [float] NULL,
	[DiemTrungBinh] [float] NULL,
 CONSTRAINT [Prk_SINHVIEN_MaSV] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'01', 3)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'02', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'03', 5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'04', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'05', 3.9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'01', 4.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'05', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'06', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'08', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'01', 2)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'03', 2.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'04', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'02', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'03', 10)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'04', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'06', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'08', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'01', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'03', 2.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'04', 4)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'02', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'04', 10)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'06', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'08', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'01', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'04', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'01', 3)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'03', 2)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'04', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'05', 5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'06', 6)
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'AV', N'Anh Văn')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'DT', N'Điện tử')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'KT', N'Kế toán')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'TH', N'Tin học')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'TR', N'Triết')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'01', N'Cơ sở dữ liệu', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'02', N'Trí tuệ nhân tạo', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'03', N'Toán rời rạc ứng dụng', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'04', N'Đồ họa ứng dụng', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'05', N'Tiếng Anh cơ bản', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'06', N'Tin học văn phòng', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'07', N'Pháp luật đại cương', 30)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'08', N'Anh chuyên Ngành', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'09', N'PTTK Hệ thống', 60)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A01', N'Nguyễn Thị', N'Vân', 0, CAST(N'1986-02-23T00:00:00' AS SmallDateTime), N'Hà Giang', N'KT', 130000, 5.1800000190734865)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A02', N'Trần Văn', N'Chính', 0, CAST(N'1994-12-20T00:00:00' AS SmallDateTime), N'Bình Định', N'TH', 150000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A03', N'Lê Thu Bạch', N'Yến', 1, CAST(N'1993-02-21T00:00:00' AS SmallDateTime), N'Tp. HCM', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A04', N'Trần Anh', N'Tuấn', 0, CAST(N'1987-12-20T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 80000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A10', N'Trần Thị', N'Mai', 1, CAST(N'1994-10-04T00:00:00' AS SmallDateTime), N'Hà Nội', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A11', N'Nguyễn Thành', N'Nam', 0, CAST(N'2000-01-01T00:00:00' AS SmallDateTime), N'Cà Mau', N'AV', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A12', N'Nguyễn Quang', N'Quyền', 0, CAST(N'2001-01-01T00:00:00' AS SmallDateTime), N'Đồng Nai', N'DT', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B01', N'Hoàng Thanh', N'Mai', 1, CAST(N'1992-08-12T00:00:00' AS SmallDateTime), N'Hải Phòng', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B02', N'Trần Thị Thu', N'Thủy', 1, CAST(N'1990-01-02T00:00:00' AS SmallDateTime), N'Tp. HCM', N'AV', 80000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B03', N'Đố Văn', N'Lâm', 0, CAST(N'1994-02-26T00:00:00' AS SmallDateTime), N'Bình Định', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B04', N'Bùi Kim', N'Dung', 0, CAST(N'1988-10-18T00:00:00' AS SmallDateTime), N'Hµ Néi', N'TH', 170000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'C01', N'Hà Quang', N'Anh', 0, CAST(N'1985-03-11T00:00:00' AS SmallDateTime), N'Tp. HCM', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'C03', N'Lê Quang', N'Lưu', 0, CAST(N'1985-02-23T00:00:00' AS SmallDateTime), N'Hà Nội', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'T03', N'Hoàng Thị Hải', N'Yến', 1, CAST(N'1989-09-10T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 170000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'T06', N'Nguyễn Văn', N'Thắng', 0, CAST(N'1988-10-18T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 1500000, NULL)
ALTER TABLE [dbo].[SinhVien] ADD  CONSTRAINT [Def_SINHVIEN_HocBong]  DEFAULT ((0)) FOR [HocBong]
GO
ALTER TABLE [dbo].[Ketqua]  WITH CHECK ADD  CONSTRAINT [Frk_KetQua_Makh] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[Ketqua] CHECK CONSTRAINT [Frk_KetQua_Makh]
GO
ALTER TABLE [dbo].[Ketqua]  WITH CHECK ADD  CONSTRAINT [Frk_KetQua_Mamh] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[Ketqua] CHECK CONSTRAINT [Frk_KetQua_Mamh]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [Frk_SINHVIEN_Makh] FOREIGN KEY([MaKH])
REFERENCES [dbo].[Khoa] ([MaKH])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [Frk_SINHVIEN_Makh]
GO

--Bài 1: viết những truy vấn lọc và sắp xếp dữ liệu
/* 
1. Cho biết danh sách các môn học,
gồm các thông tin sau: Mã môn học, Tên môn  học, Số tiết.  
*/
Select * From MonHoc
GO
Select MaMH as [Mã môn học], TenMH as [Tên môn học], Sotiet [Số tiết]
From MonHoc
Go

/*
2. Liệt kê danh sách sinh viên, gồm các thông tin sau:
Mã sinh viên, Họ sinh viên,  Tên sinh viên, Học bổng.
Danh sách sẽ được sắp xếp theo thứ tự Mã sinh viên  tăng dần.
*/
Select MaSV as "Mã sinh viên", HoSV as [Họ sinh viên], TenSV as [Tên sinh viên], HocBong [Học bổng]
From SinhVien
Order by MaSV ASC
GO

/*
3. Danh sách các sinh viên, gồm các thông tin sau:
Mã sinh viên, Tên sinh viên,  Phái, Ngày sinh.
Danh sách sẽ được sắp xếp theo thứ tự của tên.  
*/
Select MaSV, TenSV, Phai, NgaySinh
From SinhVien
Order by TenSV ASC

/*
4. Thông tin các sinh viên gồm:
Họ tên sinh viên, Ngày sinh, Học bổng.
Thông tin  sẽ được sắp xếp theo thứ tự Ngày sinh tăng dần và Học bổng giảm dần.
*/
Select HoSV + ' ' + TenSV as [Họ tên sinh viên], NgaySinh as [Ngày sinh], HocBong as [Học bổng]
From SinhVien
Order by NgaySinh asc, 3 desc

/*
5. Danh sách các môn học có tên bắt đầu bằng chữ T,  
gồm các thông tin: Mã môn,  Tên môn, Số tiết.  
*/
select MaMH, TenMH, Sotiet
from MonHoc
where TenMH like N'T%'
go

/*
6. Liệt kê danh sách những sinh viên
có chữ cái cuối cùng trong tên là i,
gồm các  thông tin: Họ tên sinh viên, Ngày sinh, Phái  
*/
Select [HoSV], [TenSV],[Phai], [NgaySinh]
from SinhVien
where TenSV like N'%i'
go

/*
7. Danh sách những khoa có ký tự thứ hai của tên khoa có chứa chữ N,
gồm các  thông tin: Mã khoa, Tên khoa.  
*/
Select MaKH, TenKH
from Khoa
where TenKH Like N'_N%'
go

/*
8. Liệt kê những sinh viên mà họ có chứa chữ Thị.
*/
select * from SinhVien
where HoSV like N'%thị%'
go

/*
9. Cho biết danh sách những sinh viên ký tự đầu tiên của tên nằm trong khoảng
từ a đến m, gồm các thông tin: Mã sinh viên,Họ tên sinh viên,Phái, Học bổng.
*/
select MaSV, HoSV, TenSV, Phai, HocBong
from SinhVien
Where TenSV like N'[a-m]%'

/*
10. Cho biết danh sách những sinh viên mà tên có chứa ký tự nằm trong khoảng từ
a đến m, gồm các thông tin: Họ tên sinh viên, Ngày sinh, Nơi sinh, Học bổng.
Danh sách được sắp xếp tăng dần theo họ tên sinh viên.
*/
Select MaSV, HoSV + ' ' + TenSV as [Họ tên sinh viên], NgaySinh, NoiSinh, HocBong
from SinhVien
where TenSV like N'%[a-m]%'
order by 2 asc
go

/*
11. Cho biết danh sách các sinh viên của khoa Anh văn, gồm các thông tin sau: Mã
sinh viên, Họ tên sinh viên, Ngày sinh, Mã khoa.
*/
Select MaSV, HoSV + ' ' + TenSV as [Họ tên sinh viên], NgaySinh, MaKH
from SinhVien
where MaKH = 'AV'

/*
12. Liệt kê danh sách sinh viên của khoa Vật Lý, gồm các thông tin sau: Mã sinh viên,
Họ tên sinh viên, Ngày sinh. Danh sách sẽ được sắp xếp theo thứ tự Ngày sinh
giảm dần.
*/
Select MaSV, HoSV + ' ' + TenSV as [Họ tên sinh viên], CONVERT(char(10),NgaySinh,103) as [Ngày sinh], MaKH
from SinhVien
where MaKH = 'TH'
order by NgaySinh desc
go
select * from Khoa

/*
13. Cho biết danh sách các sinh viên có học bổng lớn hơn 500,000, gồm các thông
tin: Mã sinh viên, Họ tên sinh viên, Mã khoa, Học bổng. Danh sách sẽ được sắp
xếp theo thứ tự Mã khoa giảm dần.
*/
Select MaSV, HoSV, TenSV, MaKH, HocBong
From SinhVien
where HocBong > 50000
order by MaKH desc
go

/*
14. Liệt kê danh sách sinh viên sinh vào ngày 20/12/1987, gồm các thông tin: Họ
tên sinh viên, Mã khoa, Học bổng.
*/
Select HoSV + ' ' + TenSV as [Họ tên sinh viên], MaKH, HocBong, CONVERT(char(10),NgaySinh,103) as [Ngày sinh]
from SinhVien
where CONVERT(char(10),NgaySinh,103) = '20/12/1987'
go
Select HoSV + ' ' + TenSV as [Họ tên sinh viên], MaKH, HocBong, CONVERT(char(10),NgaySinh,103) as [Ngày sinh]
from SinhVien
where DAY(ngaysinh) = 20 and MONTH(ngaysinh) = 12 and YEAR(ngaysinh) = 1987
go

/*
15. Cho biết các sinh viên sinh sau ngày 20/12/1977, gồm các thông tin: Họ tên sinh
viên, Ngày sinh, Nơi sinh, Học bổng. Danh sách sẽ được sắp xếp theo thứ tự
ngày sinh giảm dần.
*/
Select HoSV + ' ' + TenSV as [Họ tên sinh viên], MaKH, HocBong, CONVERT(char(10),NgaySinh,103) as [Ngày sinh]
from SinhVien
where CONVERT(char(10),NgaySinh,103) > '20/12/1987'
order by NgaySinh desc
go

/*
16. Liệt kê các sinh viên có học bổng lớn hơn 100,000 và sinh ở Tp HCM, gồm các
thông tin: Họ tên sinh viên, Mã khoa, Nơi sinh, Học bổng.
*/
select * from SinhVien
where HocBong > 100000 and NoiSinh like N'%Tp. HCM%'
go

/*
17. Danh sách các sinh viên của khoa Anh văn và khoa Triết, gồm các thông tin: Mã
sinh viên, Mã khoa, Phái.
*/
select * from SinhVien
where MaKH = 'AV' or MaKH = 'TR'
go
select * from SinhVien
where MaKH in ('AV','TR')
go

/*
18. Cho biết những sinh viên có ngày sinh từ ngày 01/01/1986 -> 05/06/1992,
gồm các thông tin: Mã sinh viên, Ngày sinh, Nơi sinh, Học bổng.
*/
select MaSV, NgaySinh, NoiSinh, HocBong
from SinhVien
where NgaySinh between '1986-01-01' and '1992-06-05'
order by NgaySinh asc --sắp xếp ngày sinh tăng dần

/*
19. Danh sách những sinh viên có học bổng từ 20000 -> 80000, 
gồm các thông tin: Mã sinh viên, Ngày sinh, Phái, Mã Khoa.
*/
select MaSV, NgaySinh, Phai, MaKH
from SinhVien
where HocBong between 20000 and 80000
order by MaSV asc --Mã sinh viên tăng dần

/*
20. Cho biết những môn học có số tiết > 40 và < 60,
gồm các thông tin:Mã môn học, Tên môn học, Số tiết.
*/
select MaMH, TenMH, Sotiet
from MonHoc
where Sotiet > 40 and Sotiet < 60
order by MaMH asc --Mã môn học tăng dần

/*
21. Liệt kê những sinh viên nam của khoa Anh văn,
gồm các thông tin: Mã sinh viên, Họ tên sinh viên, Phái
*/
select MaSV, HoSV + ' ' + TenSV as [Họ tên sinh viên], 
		case 
			when Phai = 0 then 'Nam'
			else 'Nữ'
		end as Phái
from SinhVien
where MaKH = 'AV' and Phai = 0

/*
22. Danh sách sinh viên có nơi sinh ở Hà Nội và ngày sinh sau ngày 01/01/1990,
gồm các thông tin: Họ sinh viên, Tên Sinh Viên, Nơi sinh, Ngày sinh.
*/
select HoSV, TenSV, NoiSinh, NgaySinh
from SinhVien
where NoiSinh like N'Hà Nội' and NgaySinh > '1990-01-01'

/*
23. Liệt kê những sinh viên nữ, tên có chứa chữ N.
*/
select MaSV, HoSV + ' ' + TenSV as [Họ tên sinh viên],
			case 
			when Phai = 1 then 'Nu'
			else 'Nam'
		end as Phái
from SinhVien
where Phai = 1 and TenSV like N'%N%'

/*
24. Danh sách các sinh viên nam khoa Tin Học có ngày sinh sau ngày 30/05/1986.
*/
select MaSV, HoSV + ' ' + TenSV as [Họ tên sinh viên], MaKH, NgaySinh,
		case 
			when Phai = 0 then 'Nam'
			else 'Nữ'
		end as Phái
from SinhVien
where MaKH = 'TH' and Phai = 0 and NgaySinh > '1986-05-30'

/*
25. Liệt kê danh sách sinh viên gồm các thông tin: Họ tên sinh viên, Giới tính, Ngày sinh.
Trong đó Giới tính hiển thị ở dạng Nam/Nữ tuỳ theo giá trị của field Phai là True or False.
*/
select HoSV + ' ' + TenSV as [Họ tên sinh viên], NgaySinh,
			case 
			when Phai = 'True' then 'Nam'
			when Phai = 'False' then 'Nu'
		end as Phái
from SinhVien

/*
26. Cho biết danh sách sinh viên gồm các thông tin: Mã sinh viên, Tuổi, Nơi sinh, Mã Khoa.
Trong đó Tuổi sẽ đc tính bằng cách lấy năm hện hành trừ cho năm sinh.
*/
select MaSV, YEAR(GETDATE()) - YEAR(NgaySinh) as Tuoi, NoiSinh, MaKH
from SinhVien

/*
27. Cho biết những sinh viên  có tuổi > 20,
thông tin gồm: Họ tên sinh viên, Tuổi, Học Bổng.
*/
Select HoSV + ' ' + TenSV as [Họ tên sinh viên], YEAR(GETDATE()) - YEAR(NgaySinh) as Tuoi, HocBong
from SinhVien
where YEAR(GETDATE()) - YEAR(NgaySinh) > '20'

/*
28. Danh sách những sinh viên  có tuổi từ 20-30,
thông tin gồm: Họ tên  sinh viên, Tuổi, Tên khoa.
*/
Select HoSV + ' ' + TenSV as [Họ tên sinh viên], YEAR(GETDATE()) - YEAR(NgaySinh) as Tuoi, TenKh
from SinhVien, Khoa
where YEAR(GETDATE()) - YEAR(NgaySinh) between '20' and '30'
order by Tuoi asc




--Bài 2: Sử dụng hàm trong truy vấn dữ liệu
/*
1. Liệt kê danh sách sinh viên gồm: Họ và tên sinh viên, Giới tính, Tuổi, Mã Khoa.
trong đó Giới tính hiển thị ở dạng Nam/Nữ tuỳ theo giá trị của filed Phai là True hay False,
Tuổi sẽ được tính bằng cách lấy năm hiện hành trừ cho năm sinh.
Danh sách sẽ được sắp xếp theo thứ tự Tuổi giảm dần.
*/
select HoSV + ' ' + TenSV as [Họ tên sinh viên], YEAR(GETDATE()) - YEAR(NgaySinh) as Tuoi, MaKH,
			case 
			when Phai = 'True' then 'Nam'
			when Phai = 'False' then 'Nu'
		end as Phái
from SinhVien
order by Tuoi desc	--tuổi giảm dần

/*
2. Danh sách sinh viên sinh vào tháng 2 năm 1994,
gồm các thông tin: Họ tên sinh viên, Phái, Ngày sinh.
Trong đó, Ngày sinh chỉ lấy giá trị ngày của trường NgaySinh.
*/
select HoSV + ' ' + TenSV as [Họ tên sinh viên], Phai, NgaySinh
from SinhVien
where MONTH(NgaySinh) = 2 and YEAR(NgaySinh) = 1994

/*
3. Sắp xếp dữ liệu giảm dần theo cột ngày sinh.
*/
select * from SinhVien
order by NgaySinh desc

/*
4. Cho biết thông tin về mức học bổng của các sinh viên,
gồm: Mã sinh viên, Phái, Mã Khoa, Mức học bổng.
Trong đó, mức học bổng sẽ hiển thị là "Học bổng cao" nếu giá trị của field học bổng > 500000 và ngược lại hiển thị là "Mức trung bình".
*/
select MaSV, Phai, MaKH,
[Mức Học Bổng] = case 
					when HocBong > 500000 then N'Học bổng cao'
					else N'Mức trung bình'
				end
from SinhVien

/*
5. Cho biết điểm thi của các sinh viên, 
gồm các thông tin: Họ tên sinh viên, Mã môn học, Điểm.
Kết quả sẽ được sắp theo thứ tự Họ tên sinh viên và mã môn học tăng dần.
*/
select HoSV + ' ' + TenSV as [Họ tên sinh viên], MaMH, Diem
from SinhVien, Ketqua
order by MaMH asc	--mã môn học tăng dần

/*
6. Danh sách sinh viên của khoa Anh văn, điều kiện lọc phải sử dụng tên khoa,
gồm: Họ tên sinh viên, Giới tính, Tên Khoa.
trong đó, Giới tính sẽ hiển thị dạng Nam/Nữ.
*/
select HoSV + ' ' + TenSV as [Họ tên sinh viên],  TenKH,
		[Giới tính] = case
						when Phai = 0 then N'Nam'
						when Phai = 1 then N'Nữ'
					end
from SinhVien, Khoa
where TenKH like N'Anh văn'

/*
7. Liệt kê bảng điểm của sinh viên khoa Tin Học,
gồm các thông tin: Tên khoa, Họ tên sinh viên, Tên môn học, Số tiết, Điểm.
*/
select TenKH, HoSV + ' ' + TenSV as [Họ tên sinh viên], TenMH as [Tên Môn Học], SoTiet, Diem
from SinhVien JOIN Khoa on Khoa.MaKH = SinhVien.MaKH
				JOIN Ketqua on Ketqua.MaSV = SinhVien.MaSV
				JOIN MonHoc on MonHoc.MaMH = Ketqua.MaMH
where TenKH like N'Tin Học'

/*
8. kết quả học tập của sinh viên,
gồm: Họ tên sinh viên, Mã khoa, Tên môn học, Điểm thi, Loại.
trong đó, Loại sẽ là Giỏi nếu Điểm thi >8, từ 6-8 thì Loại là Khá, <6 thì là Loại Trung Bình.
*/
select HoSV + ' ' + TenSV as [Họ tên sinh viên], 
		MaKH as [Mã khoa],
		TenMH as [Tên môn học],
		[Loại] =  case
			when Diem > 8 then N'Giỏi'
			when Diem <8 and Diem >6 then N'Khá'
			when Diem < 6 then N'Trung bình'
		end
from SinhVien JOIN Ketqua on Ketqua.MaSV = SinhVien.MaSV
				JOIN MonHoc on MonHoc.MaMH = Ketqua.MaMH





--Bài 3: Tính toán thống kê dữ liệu
/*
1. Cho biết trung bình điểm thi theo từng môn, 
gồm: Mã môn, Tên môn, Trung bình điểm thi.
*/
select MonHoc.MaMH as [Mã Môn],
		TenMH as [Tên Môn],
		AVG(Diem) as [Trung bình điểm thi]	--avg: trung bình
from SinhVien JOIN Ketqua on Ketqua.MaSV = SinhVien.MaSV
			JOIN MonHoc on MonHoc.MaMH = Ketqua.MaMH
group by MonHoc.MaMH, TenMH, DiemTrungBinh

/*
2. Danh sách số môn thi của từng sinh viên,
gồm: Họ tên sinh viên, Tên Khoa, Tổng số môn thi.
*/
select HoSV + ' ' + TenSV as [Họ tên sinh viên], 
		TenKH as [Tên Khoa],
		COUNT(MaMH) as [Tổng số môn thi]	--count: tổng
from SinhVien JOIN Khoa on Khoa.MaKH = SinhVien.MaKH
			JOIN Ketqua on Ketqua.MaSV = SinhVien.MaSV
group by SinhVien.MaSV, HoSV, TenSV, TenKH

/*
3. Tổng  điểm thi của từng sinh viên, 
gồm: Tên sinh viên, Tên khoa, Phái, Tổng điểm thi.
*/
select TenSV as [Tên sinh viên],
		TenKH as [Tên Khoa],
		Phai as [Phái],
		sum(Diem) as [Tổng điểm thi]
From SinhVien Join Ketqua on Ketqua.MaSV = SinhVien.MaSV
			Join Khoa on Khoa.MaKH = SinhVien.MaKH
group by TenSV, TenKH, Phai

/*
4. Cho biết tổng số sih viên  của mỗi khoa,
gồm: Tên khoa, Tổng số sinh viên.
*/
select TenKH as [Tên khoa],
		COUNT(MaSV) as [Tổng số sinh viên]
from Khoa Join SinhVien on Khoa.MaKH = SinhVien.MaKH
group by TenKH

/*
5. Cho biết điểm cao nhất của mỗi sinh viên,
gồm: Họ tên sinh viên, Điểm.
*/
select HoSV + ' ' + TenSV as [Họ tên sinh viên], 
		MAX(Diem) as [Điểm]
from SinhVien Join Ketqua on Ketqua.MaSV = SinhVien.MaSV
group by HoSV, TenSV

/*
6. Thông tin của môn học có số tiết nhiều nhất:Tên môn học, Số tiết.
*/
select TenMH as [Tên Môn Học],
		Sotiet as [Số Tiết]
from MonHoc
where Sotiet = (select MAX(Sotiet) from MonHoc)

/*
7. Cho biết học bổng cao nhất của từng khoa,
gồm: Mã khoa, Tên khoa, Học bổng cao nhất.
*/
select Khoa.MaKH as [Mã Khoa],
		TenKH as [Tên Khoa],
		MAX(HocBong) as [Học Bổng]
from Khoa JOIN SinhVien on Khoa.MaKH = SinhVien.MaKH
group by Khoa.MaKH, TenKH

/*
8. Cho biết điểm cao nhất của mỗi môn học, gồm: Tên môn, Điểm cao nhất.
*/
Select TenMH as [Tên môn học]
	, MAX(Diem) as [Điểm cao nhất]
From Ketqua
Join MonHoc on Ketqua.MaMH = MonHoc.MaMH
Group by TenMH

/*
9. Thống kê số sinh viên của từng môn,
gồm: Mã môn, Tên môn, Số sinh viên đang học.
*/
Select Ketqua.MaMH as [Mã môn học]
	, MonHoc.TenMH as [Tên môn học]
	, COUNT(Ketqua.MaSV) as [Số sinh viên đang học]
From Ketqua
Join MonHoc on Ketqua.MaMH = MonHoc.MaMH
Group by Ketqua.MaMH, MonHoc.TenMH

/*
10. Cho biết môn nào có điểm thi cao nhất,
gồm: Tên môn, Số tiết, Tên sinh viên, Điểm.
*/
Select Top 1 TenMH as [Tên môn học]
	, SoTiet as [Số tiết]
	, HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, Diem as [Điểm]
From Ketqua
Join MonHoc on Ketqua.MaMH = MonHoc.MaMH
Join SinhVien on Ketqua.MaSV = SinhVien.MaSV
Order by Diem DESC

/*
11. Cho biết khoa nào có đông sinh viên nhất,
gồm: Mã khoa, Tên khoa, Tổng số sinh viên.
*/
Select Top 1 SinhVien.MaKH as [Mã khoa]
	, TenKH as [Tên khoa]
	, COUNT(MaSV) as [Tổng số sinh viên]
From SinhVien
Join Khoa on SinhVien.MaKH = Khoa.MaKH
Group by SinhVien.MaKH, TenKH
Order by COUNT(MaSV) DESC

/*
12. Cho biết khoa nào có sinh viên lảnh học bổng cao nhất,
gồm: Tên khoa, Họ tên sinh viên, Học bổng.
*/
Select Top 1 TenKH as [Tên khoa]
	, HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, HocBong as [Học bổng]
From SinhVien
Join Khoa on SinhVien.MaKH = Khoa.MaKH
Order by HocBong DESC

/*
13. Cho biết sinh viên của khoa Tin học có số học bổng cao nhất,
gồm: Mã sinh viên, Họ sinh viên, Tên sinh viên, Tên khoa, Học bổng.
*/
Select Top 1 MaSV as [Mã sinh viên]
	, HoSV as [Họ sinh viên]
	, TenSV as[Tên sinh viên]
	, TenKH as [Tên khoa]
	, HocBong as [Học bổng]
From SinhVien
Join Khoa on SinhVien.MaKH = Khoa.MaKH
Where TenKH Like N'Tin học'
Order by HocBong DESC

/*
14. Cho biết sinh viên nào có điểm môn Cơ sở dữ liệu lớn nhất,
Gồm: Họ sinh viên, tên môn, Điểm.
*/
Select Top 1 HoSV as [Họ sinh viên]
	, TenMH as [Tên môn học]
	, Diem as [Điểm]
From Ketqua
Join MonHoc on Ketqua.MaMH = MonHoc.MaMH
Join SinhVien on Ketqua.MaSV = SinhVien.MaSV
Where TenMH Like N'Cơ sở dữ liệu'
Order by Diem DESC

/*
15. Cho biết 3 sinh viên  có điểm thi môn Đồ hoạ thấp nhất,
gồm: Họ tên sinh viên, Tên khoa, Tên môn, Điểm.
*/
Select Top 3 HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, TenKH as [Tên khoa]
	, TenMH as [Tên môn học]
	, Diem as [Điểm]
From Ketqua
Join MonHoc on Ketqua.MaMH = MonHoc.MaMH
Join SinhVien on Ketqua.MaSV = SinhVien.MaSV
Join Khoa on SinhVien.MaKH = Khoa.MaKH
Where TenMH Like N'Đồ họa ứng dụng'
Order by Diem ASC

/*
16. Cho biết nào có nhiều sinh viên nữ nhất, 
gồm các thông tin: Mã khoa, Tên khoa
*/
Select Top 1 SinhVien.MaKH as [Mã khoa]
	, TenKH as [Tên khoa]
	, COUNT(*) as [Số sinh viên nữ]
From SinhVien
Join Khoa on SinhVien.MaKH = Khoa.MaKH
Where Phai = 1
Group by SinhVien.MaKH, TenKH
Order by COUNT(*) DESC

/*
17. Thống kê sinh viên theo khoa, 
gồm các thông tin: Mã khoa, Tên khoa, Tổng số sinh viên, Tổng số sinh viên nữ
*/
Select SinhVien.MaKH as [Mã khoa]
	, TenKH as [Tên khoa]
	, COUNT(*) as [Tổng số sinh viên]
	, SUM(CASE WHEN Phai = 1 THEN 0 ELSE 1 END) AS [Tổng số sinh viên nữ]
From SinhVien
Join Khoa on SinhVien.MaKH = Khoa.MaKH
Group by SinhVien.MaKH, TenKH

/*
18. Cho biết kết quả học tập của sinh viên, 
gồm Họ tên sinh viên, Tên khoa, Kết quả. 
Trong đó, Kết quả sẽ là Đậu nếu không có môn nào có điểm nhỏ hơn 4
*/
Select HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, TenKH as [Tên khoa]
	, CASE WHEN MIN(Diem) >= 4 THEN N'Đậu' ELSE N'Rớt' END AS [Kết quả]
From SinhVien
Join Ketqua on SinhVien.MaSV = Ketqua.MaSV
Join Khoa on SinhVien.MaKH = Khoa.MaKH
Group by HoSV + ' ' + TenSV, TenKH

/*
19. Danh sách những sinh viên không có môn nào nhỏ hơn 4 điểm, 
gồm các thông tin: Họ tên sinh viên, Tên khoa, Phái
*/
SELECT DISTINCT HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, TenKH as [Tên khoa]
	, Phai as [Phái]
FROM SinhVien
JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
WHERE SinhVien.MaSV NOT IN (
    SELECT MaSV
    FROM Ketqua
    WHERE Diem < 4
)

/*
20. Cho biết danh sách những môn không có điểm thi nhỏ hơn 4, 
gồm các thông tin: Mã môn, Tên Môn
*/
SELECT DISTINCT MonHoc.MaMH as [Mã môn học]
	, TenMH as [Tên môn học]
FROM MonHoc
JOIN Ketqua ON MonHoc.MaMH = Ketqua.MaMH
WHERE MonHoc.MaMH NOT IN (
    SELECT MaMH
    FROM Ketqua
    WHERE Diem < 4
)

/*
21. Cho biết những khoa không có sinh viên rớt, sinh viên rớt nếu điểm thi của môn nhỏ hơn 15, 
gồm các thông tin: Mã khoa, Tên khoa
*/
SELECT DISTINCT Khoa.MaKH as [Mã khoa]
	, TenKH as [Tên khoa]
FROM Khoa
JOIN SinhVien ON Khoa.MaKH = SinhVien.MaKH
WHERE SinhVien.MaSV NOT IN (
    SELECT MaSV
    FROM Ketqua
    WHERE Diem < 5
)

/*
22. Thống kê số sinh viên đậu và số sinh viên rớt của từng môn, 
biết răng sinh viên rớt khi rớt khi điểm của môn nhỏ hơn 5, 
gồm có: Mã môn, Tên môn, Số sinh viên đậu, Số sinh viên rớt
*/
SELECT Ketqua.MaMH as [Mã môn học]
	, TenMH as [Tên môn học]
	, SUM(CASE WHEN Diem >= 5 THEN 1 ELSE 0 END) AS [Số sinh viên đậu]
	, SUM(CASE WHEN Diem < 5 THEN 1 ELSE 0 END) AS [Số sinh viên rớt]
FROM Ketqua
JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
GROUP BY Ketqua.MaMH, TenMH

/*
23. Cho biết môn nào không có sinh viên rớt, 
gồm có: Mã môn, Tên môn
*/
SELECT MonHoc.MaMH AS [Mã môn học], 
       MonHoc.TenMH AS [Tên môn học]
FROM MonHoc JOIN Ketqua ON MonHoc.MaMH = Ketqua.MaMH
GROUP BY MonHoc.MaMH, MonHoc.TenMH
HAVING SUM(CASE 
			WHEN Ketqua.Diem < 5 THEN 1 ELSE 0 
		END) = 0


/*
24. Danh sách sinh viên không có môn nào rớt, 
thông tin gồm: Mã sinh viên, Họ tên, Mã khoa
*/
SELECT SinhVien.MaSV AS [Mã sinh viên]
	, HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, MaKH AS [Mã khoa]
FROM SinhVien
JOIN Ketqua ON SinhVien.MaSV = Ketqua.MaSV
WHERE SinhVien.MaSV NOT IN (
    SELECT MaSV
    FROM Ketqua
    WHERE Diem < 5
)
GROUP BY SinhVien.MaSV, HoSV + ' ' + TenSV, MaKH

/*
25. Danh sách các sinh viên rớt trên 2 môn, 
gồm Mã sinh viên, Họ sinh viên, Tên sinh viên, Mã khoa
*/
SELECT Ketqua.MaSV as [Mã sinh viên]
	, HoSV as [Họ sinh viên]
	, TenSV as [Tên sinh viên]
	, MaKH as [Mã khoa]
FROM Ketqua
JOIN SinhVien ON Ketqua.MaSV = SinhVien.MaSV
WHERE Diem < 5
GROUP BY Ketqua.MaSV, HoSV, TenSV, MaKH
HAVING COUNT(Diem) > 2

/*
26. Cho biết danh sách những khoa có nhiều hơn 2 sinh viên,
gồm Mã khoa, Tên khoa, Tổng số sinh viên của khoa
*/
SELECT SinhVien.MaKH as [Mã khoa]
	, TenKH as [Tên khoa]
	, COUNT(*) AS [Tổng số sinh viên]
FROM SinhVien
JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
GROUP BY SinhVien.MaKH, TenKH
HAVING COUNT(*) > 2

/*
27. Danh sách những sinh viên thi nhiều hơn 4 môn, 
gồm có Mã sinh viên, Họ tên sinh viên, Số môn thi 
*/
SELECT Ketqua.MaSV as [Mã sinh viên]
	, HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, COUNT(MaMH) AS [Số môn thi]
FROM Ketqua
JOIN SinhVien ON Ketqua.MaSV = SinhVien.MaSV
GROUP BY Ketqua.MaSV, HoSV + ' ' + TenSV
HAVING COUNT(MaMH) > 4

/*
28. Cho biết khoa có 2 sinh viên nam trở lên, 
thông tin gồm có: Mã khoa, Tên khoa, Tổng số sinh viên nam
*/
SELECT SinhVien.MaKH as [Mã khoa]
	, TenKH as [Mã khoa]
	, COUNT(*) AS [Tổng số sinh viên nam]
FROM SinhVien
JOIN Khoa ON SinhVien.MAKH = Khoa.MaKH
WHERE Phai = 0
GROUP BY SinhVien.MaKH, TenKH
HAVING COUNT(*) >= 2

/*
29. Danh sách những sinh viên có trung bình điểm thi lớn hơn 4, 
gồm các thông tin sau: Họ tên sinh viên, Tên khoa, Phái, Điểm trung bình các môn
*/
SELECT HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, TenKH as [Tên khoa] 
    , Phai AS [Phái]
    , AVG(Diem) AS [Điểm trung bình]
FROM SinhVien
JOIN Ketqua ON SinhVien.MaSV = Ketqua.MaSV
JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
GROUP BY HoSV + ' ' + TenSV, TenKH, Phai
HAVING AVG(Diem) > 4

/*
30. Cho biết trung bình điểm thi của từng môn, chỉ lấy môn nào có trung bình điểm thi lớn hơn 6, 
thông tin gồm có: Mã môn, Tên môn, Trung bình điểm
*/
SELECT Ketqua.MaMH as [Mã môn học]
	, TenMH as [Tên môn học]
	, AVG(Diem) AS [Trung bình điểm]
FROM Ketqua
JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
GROUP BY Ketqua.MaMH, TenMH
HAVING AVG(Diem) > 6




--Bài 4: Sử dụg tham số trong truy vấn
/*
1. Cho biết danh sách những sinh viên của một khoa, 
gồm: Mã sinh viên, họ tên sinh viên, giới tính, tên khoa.
trong đó, giá trị mã khoa cần xem danh sách sv sẽ đc người dùng nhập khi thực thi câu truy vấn.
*/
DECLARE @MaKH nvarchar(10);
SET @MaKH = 'AV';	--Tham số này 

select
	SinhVien.MaSV as 'Mã sinh viên',
	SinhVien.TenSV as 'Tên sinh viên',
	SinhVien.Phai as 'Giới tính',
	Khoa.TenKH as 'Tên khoa'
from SinhVien JOIN Khoa on SinhVien.MaKH = Khoa.MaKH
where Khoa.MaKH = @MaKH

/*
2-3. 
*/
declare @TenMH nvarchar(50);
set @TenMH = N'Cơ sở dữ liệu';

select
	SinhVien.MaSV as [Mã sinh viên],
	SinhVien.TenSV as [Tên sinh viên],
	Khoa.TenKH as [Tên khoa],
	MonHoc.TenMH as [Tên môn],
	Ketqua.Diem as [Điểm]
from SinhVien JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
				JOIN Ketqua ON SinhVien.MaSV = Ketqua.MaSV
				JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
where MonHoc.TenMH = @TenMH




--Bài 5: Truy vấn con
/* 
1. Danh sách sinh viên chưa thi môn nào, 
thông tin gồm: Mã sinh viên, Mã khoa, Phái
*/
SELECT MaSV as [Mã sinh viên]
	, MaKH as [Mã khoa]
	, Phai as [Phái]
FROM SinhVien
WHERE MaSV NOT IN (SELECT MaSV FROM Ketqua);

/*
2. Danh sách những sinh viên chưa thi môn Cơ sở dữ liệu, gồm các thông tin: Mã sinh viên, Họ tên sinh viên, Mã khoa
*/
SELECT MaSV as [Mã sinh viên]
	, HoSV + ' ' + TenSV as [Họ tên sinh viên] 
	, MaKH as [Mã khoa]
FROM SinhVien
WHERE MaSV NOT IN (
    SELECT MaSV
    FROM Ketqua
    JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
    WHERE TenMH = N'Cơ sở dữ liệu'
)

/* 
3. Cho biết môn nào chưa có sinh viên thi, gồm thông tin về: Mã môn, Tên môn, Số tiết
*/
SELECT MaMH as [Mã môn học]
	, TenMH as [Tên môn học]
	, SoTiet as [Số tiết]
FROM MonHoc
WHERE MaMH NOT IN (
	SELECT MaMH FROM Ketqua
)

/* 
4. Khoa nào chưa có sinh viên học
*/
SELECT MaKH as [Mã khoa]
	, TenKH as [Tên khoa]
FROM Khoa
WHERE MaKH NOT IN (
	SELECT MaKH FROM SinhVien
)

/* 
5. Cho biết những sinh viên của khoa Anh văn chưa thi môn Cơ sở dữ liệu
*/
SELECT MaSV as [Mã sinh viên]
	, HoSV + ' ' + TenSV as [Họ tên sinh viên] 
	, MaKH as [Mã khoa]
FROM SinhVien
WHERE MaKH = (SELECT MaKH FROM Khoa WHERE TenKH = N'Anh văn')
AND MaSV NOT IN (
    SELECT MaSV
    FROM Ketqua
    JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
    WHERE TenMH = N'Cơ sở dữ liệu'
)

/* 
6. Cho biết môn nào chưa có sinh viên khoa Anh Văn thi
*/
SELECT MaMH as [Mã môn học]
	, TenMH as [Tên môn học]
FROM MonHoc
WHERE MaMH NOT IN (
    SELECT MaMH
    FROM Ketqua
    JOIN SinhVien ON Ketqua.MaSV = SinhVien.MaSV
    WHERE MaKH = (SELECT MaKH FROM Khoa WHERE TenKH = N'Anh Văn')
)

/* 
7. Danh sách những sinh viên có điểm thi môn Đồ hoạ nhỏ hơn điểm thi môn Đồ hoạ nhỏ nhất của sinh viên khoa Tin học
*/
SELECT Ketqua.MaSV as [Mã sinh viên]
	, HoSV + ' ' + TenSV as [Họ tên sinh viên] 
	, Diem as [Điểm]
FROM Ketqua
JOIN SinhVien ON Ketqua.MaSV = SinhVien.MaSV
JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
WHERE TenMH = N'Đồ họa ứng dụng'
  AND Diem < (SELECT MIN(Diem)
              FROM Ketqua
              JOIN SinhVien ON Ketqua.MaSV = SinhVien.MaSV
              JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
              WHERE TenMH = N'Đồ họa ứng dụng' 
                AND SinhVien.MaKH = 'TH')

/* 
8. Liệt kê những sinh viên sinh sau sinh viên có tuổi nhỏ nhất trong khoa Anh văn
*/
SELECT MaSV as [Mã sinh viên]
	, HoSV + ' ' + TenSV as [Họ tên sinh viên] 
	, NgaySinh as [Ngày sinh]
FROM SinhVien
WHERE NgaySinh > (SELECT MIN(NgaySinh)
                  FROM SinhVien
                  WHERE MaKH = (SELECT MaKH FROM Khoa WHERE TenKH = N'Anh Văn'))

/*
9. Cho biết những sinh viên có học bổng lớn hơn tổng học bổng của những sinh viên thuộc khoa Triết
*/
SELECT MaSV as [Mã sinh viên]
	, HoSV + ' ' + TenSV as [Họ tên sinh viên] 
	, HocBong as [Học bổng]
FROM SinhVien
WHERE HocBong > (SELECT SUM(HocBong)
                 FROM SinhVien
                 WHERE MaKH = (SELECT MaKH FROM Khoa WHERE TenKH = N'Triết'))

/*
10. Danh sách sinh viên có nơi sinh cùng với nơi sinh của sinh viên có học bổng lớn nhất trong khoa Lý.
*/
select SV.MaSV as [Mã sinh viên],
		SV.TenSV as [Tên sinh viên],
		SV.NoiSinh as [Nơi sinh],
		SV.HocBong as [Học Bổng]
from SinhVien as SV
where SV.NoiSinh = (select top 1 NoiSinh from SinhVien where MaKH = (select MaKH from Khoa where TenKH like N'Anh Văn')
					order by HocBong desc)

/*
11. Danh sách sinh viên có điểm cao nhất ứng với mỗi môn, g
ồm thông tin: Mã sinh viên, Họ tên sinh viên, Tên môn, Điểm
*/
SELECT Ketqua.MaSV as [Mã sinh viên]
	, HoSV + ' ' + TenSV as [Họ tên sinh viên] 
	, TenMH as [Tên môn học]
	, Diem as [Điểm]
FROM Ketqua
JOIN SinhVien ON Ketqua.MaSV = SinhVien.MaSV
JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
WHERE Diem = (SELECT MAX(Diem)
              FROM Ketqua AS DiemThiSub
              WHERE DiemThiSub.MaMH = Ketqua.MaMH)

/*
12. Các sinh viên có học bổng cao nhất theo từng khoa,
gồm: Mã sinh viên, Tên Khoa, Học bổng.
*/
select TenSV as [Tên sinh viên],
	TenKH as [Tên khoa],
	HocBong as [Học bổng]
from SinhVien as SV JOIN Khoa as KH ON SV.MaKH = KH.MaKH
where HocBong= (select Max(HocBong) from SinhVien where MaKH =  SV.MaKH)




--Bài 6: Thêm dữ liệu vào CSDL
/*
1. Thêm một sinh viên mới gồm các thông tin:
	Mã sv: C09
	Họ sv: Lê Thành
	Tên sv: Nguyên
	Phái:Nam
	Ngày sinh: 23/10/1980
	Nơi sinh: TP.HCM
	Mã khoa: TH
	Học bổng: 850000
*/
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong])
VALUES (N'C09', N'Lê Thành', N'Nguyên', 0, CAST(N'1980-10-23T00:00:00' AS SmallDateTime), N'TP.HCM', N'TH', 130000)

/*
2. Thêm một môn học mới gồm các thông tin:
	Mã môn học: 10
	Tên môn học: Xử lý ảnh
	Số tiết: 45
*/
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet])
VALUES (N'11', N'Xử lý ảnh', 45)

/*
3. Thêm một khoa mới gồm các thông tin:
	Mã khoa: CT
	Tên khoa: Công trình
*/
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) 
VALUES (N'CT', N'Công trình')

/*
4. Thêm một sinh viên mới gồm các thông tin:
	Mã sv: T01
	Họ sv: Nguyễn Trần
	Tên sv: Quân
	Phái:Nam
	Ngày sinh: lấy ngày hiện hiện
	Nơi sinh: Huế
	Mã khoa: CT
	Học bổng: 950000
*/
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong]) 
VALUES (N'T01', N'Nguyễn Trần', N'Quân', 0, GETDATE(), N'Huế', N'CT', 950000)

/*
5. Thêm vào bảng kết quả gồm:
	Mã sv: lấy tất cả những sinh viên khoa tin học
	mã mh: 06
	Điểm: 7
*/
INSERT INTO Ketqua(MaSV, MaMH, Diem)
SELECT MaSV, '06', 7
FROM SinhVien
WHERE MaKH = 'TH'
AND NOT EXISTS (
    SELECT 1 FROM KetQua 
    WHERE Ketqua.MaSV = SinhVien.MaSV 
    AND KetQua.MaMH = '06'
)

/*
6. Thêm vào bảng kết quả:
	Mã sv: C01
	Mã môn học: Lấy tất cả những mh có trong bảng môn học
	điểm: 8
*/
INSERT [dbo].[Ketqua] (MaSV, MaMH, Diem)
SELECT 'C01', MaMH, 8
FROM MonHoc M where not exists(select 1 from Ketqua K where K.MaSV = 'C01' and K.MaMH = M.MaMH)




--Bài 7: Xoá thông tin trong CSDL
/*
1. Viết câu truy vấn để tạo bảng có tên DeleteTable,
gồm: Mã sv, Tên sv, phái, ngày sinh, nơi sinh, tên khoa, học bổng.
*/
CREATE TABLE [dbo].[DeleteTable](
	[MaSV] [nvarchar](3) NOT NULL,
	[HoSV] [nvarchar](15) NOT NULL,
	[TenSV] [nvarchar](7) NOT NULL,
	[Phai] [bit] NOT NULL,
	[NgaySinh] [smalldatetime] NOT NULL,
	[NoiSinh] [nvarchar](100) NOT NULL,
	[MaKH] [nvarchar](2) NOT NULL,
	[HocBong] [float] NULL,
	[DiemTrungBinh] [float] NULL,
)
GO

INSERT [dbo].[DeleteTable] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A01', N'Nguyễn Thị', N'Vân', 1, CAST(N'1986-02-23T00:00:00' AS SmallDateTime), N'Hà Giang', N'KT', 130000, 5.1800000190734865)
INSERT [dbo].[DeleteTable] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A02', N'Trần Văn', N'Chính', 0, CAST(N'1994-12-20T00:00:00' AS SmallDateTime), N'Bình Định', N'TH', 150000, NULL)
INSERT [dbo].[DeleteTable] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A03', N'Lê Thu Bạch', N'Yến', 1, CAST(N'1993-02-21T00:00:00' AS SmallDateTime), N'Tp. HCM', N'TH', 0, NULL)
INSERT [dbo].[DeleteTable] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A04', N'Trần Anh', N'Tuấn', 0, CAST(N'1987-12-20T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 80000, NULL)
INSERT [dbo].[DeleteTable] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A10', N'Trần Thị', N'Mai', 1, CAST(N'1994-10-04T00:00:00' AS SmallDateTime), N'Hà Nội', N'TH', 0, NULL)
INSERT [dbo].[DeleteTable] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A11', N'Nguyễn Thành', N'Nam', 0, CAST(N'2000-01-01T00:00:00' AS SmallDateTime), N'Cà Mau', N'AV', NULL, NULL)
INSERT [dbo].[DeleteTable] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A12', N'Nguyễn Quang', N'Quyền', 0, CAST(N'2001-01-01T00:00:00' AS SmallDateTime), N'Đồng Nai', N'DT', NULL, NULL)
INSERT [dbo].[DeleteTable] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B01', N'Hoàng Thanh', N'Mai', 1, CAST(N'1992-08-12T00:00:00' AS SmallDateTime), N'Hải Phòng', N'TR', 0, NULL)
INSERT [dbo].[DeleteTable] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B02', N'Trần Thị Thu', N'Thủy', 1, CAST(N'1990-01-02T00:00:00' AS SmallDateTime), N'Tp. HCM', N'AV', 80000, NULL)
INSERT [dbo].[DeleteTable] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B03', N'Đố Văn', N'Lâm', 0, CAST(N'1994-02-26T00:00:00' AS SmallDateTime), N'Bình Định', N'TR', 0, NULL)
INSERT [dbo].[DeleteTable] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B04', N'Bùi Kim', N'Dung', 0, CAST(N'1988-10-18T00:00:00' AS SmallDateTime), N'Hµ Néi', N'TH', 170000, NULL)
INSERT [dbo].[DeleteTable] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'C01', N'Hà Quang', N'Anh', 0, CAST(N'1985-03-11T00:00:00' AS SmallDateTime), N'Tp. HCM', N'TR', 0, NULL)
INSERT [dbo].[DeleteTable] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'C03', N'Lê Quang', N'Lưu', 0, CAST(N'1985-02-23T00:00:00' AS SmallDateTime), N'Hà Nội', N'TH', 0, NULL)
INSERT [dbo].[DeleteTable] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'T03', N'Hoàng Thị Hải', N'Yến', 1, CAST(N'1989-09-10T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 170000, NULL)
INSERT [dbo].[DeleteTable] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'T06', N'Nguyễn Văn', N'Thắng', 0, CAST(N'1988-10-18T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 1500000, NULL)

/*
2. Xoá tất cả những sinh viên không có học bổng trong bảng DeleteTable.
*/
delete from DeleteTable
where HocBong is null or HocBong = N''

/*
3. Xoá all những sinh viên trong bảng sinh vào ngày 20/12/1987.
*/
delete from DeleteTable
where NgaySinh = '1987-12-20'

/*
4. Xoá tất cả những sinh viên trong bảng sinh trước tháng 3 năm 1987.
*/
delete from DeleteTable
where MONTH(NgaySinh) < 3 and YEAR(NgaySinh) < 1987

/*
5. Xoá tất cả những sinh viên nam trong khoa Tin học trong bảng DeleteTable.
*/
delete from DeleteTable
where Phai = 0 and MaKH = N'TH'





--Bài 8: Cập nhật thông tin trong CSSDL
/*
1. Cập nhật số tiết của môn Tiếng Anh thành 45 tiết.
*/
update MonHoc
set Sotiet = 45
where TenMH = N'Tiếng Anh cơ bản'

/*
2. Cập nhật tên của sinh viên Trần Thanh Mai thành Trần Thanh kỳ
*/
update SinhVien
set HoSV = N'Trần Thanh', TenSV = N'kỳ'
where HoSV + ' ' + TenSV = N'Trần Thị Mai'

/*
3. Cập nhật Phái của sinh viên Trần Thanh Kỳ thành phái Nam
*/
update SinhVien
set Phai = 0
where HoSV + ' ' + TenSV = N'Trần Thanh Kỳ'

/*
4. Cập nhật ngày sinh của sinh viên Trần Thị Thu Thuỷ thành 05/07/1990.
*/
update SinhVien
set NgaySinh = '1990-07-05'
WHERE HoSV = N'Trần Thị Thu' and TenSV = N'Thuỷ'

/*
5. Tăng học bổng cho tất cả những sinh viên của khoa Anh văn thêm 100000
*/
update SinhVien
set HocBong = HocBong +  100000
where MaKH = N'AV'

/*
6. Cộng thêm 5 điểm môn Trí tuệ Nhân tạo cho các sv thuộc khoa Anh Văn.
điểm tối đa của môn là 10.
*/
update Ketqua
set Diem = case 
				When Diem + 5 > 10 then 10
				else Diem + 5
			end
where MaMH = '02'
and MaSV in (select MaSV from SinhVien where MaKH = 'AV')

/*
7. Tăng học bổng cho sinh viên:
	nếu phái nữ của khoa AV thì tăng 100000
	phái nam của khoa TH thì tăng 150000
	những sinh viên khác tăng 50000
*/
update SinhVien
set HocBong = case 
				When Phai = 1 and MaKH = N'AV' THEN HocBong + 100000
				When Phai = 0 and MaKH = N'TH' THEN HocBong + 150000
				else HocBong + 50000
			end

/*
8. Thay đổi kết quả thi của các sinh viên:
	Nếu sv của khoa Anh văn thì tăng điểm môn csdl lên 2 điểm
	nếu sv của khoa Tin học thì giảm điểm môn csdl xuống 1 điểm
	những sv của khoa khác thì ko thay đổi
	điểm nhỏ nhất là 0 và cao nhất là 10
*/
update Ketqua
set Diem = case
				when MaSV in (select MaSV FROM SinhVien where MaKH = N'AV') THEN LEAST(Diem + 2 , 10)
				when MaSV in (select MaSV FROM SinhVien where MaKH = N'TH') THEN GREATEST(Diem - 2 , 0)
				else Diem
			end
where MaMH = '01'