CREATE DATABASE ShopBook
GO
USE ShopBook
GO
Create table Publisher
(
	PublisherId int identity primary key,
	PublisherName nvarchar(200),
	Phone varchar(30),
	Address nvarchar(200)
)
go
Create table Category
(
	CategoryId int identity primary key,
	CategoryName nvarchar(100)
)
go
Create table Book
(
	BookId varchar(10) primary key,
	Title nvarchar(200) not null,
	Author nvarchar(100),
	Release int,
	Price float,
	Description ntext,
	Picture nvarchar(100),
	PublisherId int foreign key references Publisher(PublisherId),
	CategoryId int foreign key references Category(CategoryId)
)
go
Create table Account
(
	AccountId varchar(36) primary key,
	Username varchar(64) not null,
	Password varchar(256),
	FullName nvarchar(100),
	Picture varchar(512),
	Email varchar(64),
	Address nvarchar(512),
	Phone varchar(64),
	IsAdmin bit,
	Active bit
)
go
Create table OrderBook
(
	OrderId varchar(16) primary key,
	OrderDate datetime,
	AccountId varchar(36) foreign key references Account(AccountId),
	ReceiveAddress nvarchar(512),
	ReceivePhone varchar(64),
	OrderReceive datetime,
	Note nvarchar(512),
	Status varchar(16)
)
Create table OrderDetail
(
	OrderDetailId int identity primary key,
	OrderId varchar(16) foreign key references OrderBook(OrderId),
	BookId varchar(10) foreign key references Book(BookId),
	Quantity int,
	Price int,
	TotalMoney as Quantity*Price
)
go
insert into Publisher values(N'Nhà xu?t b?n tr?','098746533',N'Hà N?i')
insert into Publisher values(N'Nhà xu?t b?n kim ð?ng','096833435',N'Hà N?i')
insert into Publisher values(N'Nhà xu?t b?n tri th?c','097987653',N'Hà N?i')
insert into Publisher values(N'Nhà xu?t b?n giáo d?c','091956464',N'Hà N?i')
insert into Publisher values(N'Nhà xu?t b?n lao ð?ng','091956464',N'Hà N?i')

insert into Category values(N'Sách kinh t?')
insert into Category values(N'Sách tin h?c')
insert into Category values(N'Sách thi?u nhi')
insert into Category values(N'Sách n?u ãn')
insert into Category values(N'Sách vãn h?c')



insert Book values('P67934',N'Ðý?ng Ð?n Thành Công C?a Jack Ma',N'Brad Schepp, Debra Schepp',2015,250000,N'chýa có mô t?','images/books/P67934.jpg',5,1)
insert Book values('P68050',N'Ð?ng Bao Gi? Ði Ãn M?t M?nh',N'Tahl Raz, Keith Ferrazzi',2016,95000,N'chýa có mô t?','images/books/P68050.jpg',1,1)
insert Book values('P68066',N'Vô Thý?ng',N'Nguy?n B?o Trung',2016,75000,N'chýa có mô t?','images/books/P68066.jpg',5,5)
insert Book values('P68009',N'Siêu Mèo Capoo',N'Á L?p',2016,5800,N'chýa có mô t?','images/books/P68009.jpg',2,3)
insert Book values('P67842',N'Shin - C?u Bé Bút Ch?',N'Yoshito Usui ',2016,18000,N'chýa có mô t?','images/books/P67842.jpg',2,3)
insert Book values('P67848',N'Chie - Cô Bé H?t Tiêu',N'Etsumi Haruki',2016,28000,N'chýa có mô t?','images/books/P67848.jpg',2,3)
insert Book values('P63952',N'Kung Fu Panda',N'Ng?c Linh',2016,28500,N'chýa có mô t?','images/books/P63952.jpg',2,3)
insert Book values('P68102',N'D?y Con Làm Giàu - T?p 9: Nh?ng Bí M?t V? Ti?n B?c Mà B?n Không H?c ? Nhà Trý?ng!',N'Robert T. Kiyosaki',2015,32000,N'chýa có mô t?','images/books/P68102.jpg',1,1)
insert Book values('P68101',N'D?y Con Làm Giàu - T?p 8: Ð? Có Nh?ng Ð?ng Ti?n Tích C?c',N'Robert T. Kiyosaki',2015,32000,N'chýa có mô t?','images/books/P68101.jpg',1,1)
insert Book values('P67957',N'36 K? Trong Kinh Doanh Hi?n Ð?i',N'Lan Bercu',2016,95000,N'chýa có mô t?','images/books/P67957.jpg',1,1)
insert Book values('P67821',N'M?t M? Champa - Phát Hành D? Ki?n',N'Gi?n Tý H?i',2016,113000,N'chýa có mô t?','images/books/P67821.jpg',1,5)
insert Book values('P67687',N'Vui bu?n trong h?p',N'Ðoàn B?o Châu',2015,250000,N'chýa có mô t?','images/books/P67687.jpg',1,5)

insert into Account values(NEWID(),'admin',lower(CONVERT(VARCHAR(32), HashBytes('md5', 'admin123456'), 2)),N'L?i Ð?c Chung','images/accounts/chunngld.jpg','chungld.hanam@gmail.com','Hà Nam','0968018161',1,1)
insert into Account values(NEWID(),'member01',lower(CONVERT(VARCHAR(32), HashBytes('md5', 'member01123456'), 2)),N'Nguy?n Th? H?a','images/members/hoant.jpg','baohoa@gmail.com','Hà Nam','0968018162',0,1)
insert into OrderBook values('20200526102704','2020-05-26','56EDA78A-FBBD-4D29-8115-8D5DC366503F','Hà Nam','0968018162',getdate(),N'Giao hàng gi? hành chính','New')
insert into OrderDetail(OrderId,BookId,Quantity,Price) values('20200526102704','P68050',2,95000)
insert into OrderDetail(OrderId,BookId,Quantity,Price) values('20200526102704','P67934',2,250000)
insert into OrderDetail(OrderId,BookId,Quantity,Price) values('20200526102704','P68102',1,32000)