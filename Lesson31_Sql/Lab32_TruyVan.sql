
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


/*
2. 
*/
