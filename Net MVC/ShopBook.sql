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
insert into Publisher values(N'Nh� xu?t b?n tr?','098746533',N'H� N?i')
insert into Publisher values(N'Nh� xu?t b?n kim �?ng','096833435',N'H� N?i')
insert into Publisher values(N'Nh� xu?t b?n tri th?c','097987653',N'H� N?i')
insert into Publisher values(N'Nh� xu?t b?n gi�o d?c','091956464',N'H� N?i')
insert into Publisher values(N'Nh� xu?t b?n lao �?ng','091956464',N'H� N?i')

insert into Category values(N'S�ch kinh t?')
insert into Category values(N'S�ch tin h?c')
insert into Category values(N'S�ch thi?u nhi')
insert into Category values(N'S�ch n?u �n')
insert into Category values(N'S�ch v�n h?c')



insert Book values('P67934',N'��?ng �?n Th�nh C�ng C?a Jack Ma',N'Brad Schepp, Debra Schepp',2015,250000,N'ch�a c� m� t?','images/books/P67934.jpg',5,1)
insert Book values('P68050',N'�?ng Bao Gi? �i �n M?t M?nh',N'Tahl Raz, Keith Ferrazzi',2016,95000,N'ch�a c� m� t?','images/books/P68050.jpg',1,1)
insert Book values('P68066',N'V� Th�?ng',N'Nguy?n B?o Trung',2016,75000,N'ch�a c� m� t?','images/books/P68066.jpg',5,5)
insert Book values('P68009',N'Si�u M�o Capoo',N'� L?p',2016,5800,N'ch�a c� m� t?','images/books/P68009.jpg',2,3)
insert Book values('P67842',N'Shin - C?u B� B�t Ch?',N'Yoshito Usui ',2016,18000,N'ch�a c� m� t?','images/books/P67842.jpg',2,3)
insert Book values('P67848',N'Chie - C� B� H?t Ti�u',N'Etsumi Haruki',2016,28000,N'ch�a c� m� t?','images/books/P67848.jpg',2,3)
insert Book values('P63952',N'Kung Fu Panda',N'Ng?c Linh',2016,28500,N'ch�a c� m� t?','images/books/P63952.jpg',2,3)
insert Book values('P68102',N'D?y Con L�m Gi�u - T?p 9: Nh?ng B� M?t V? Ti?n B?c M� B?n Kh�ng H?c ? Nh� Tr�?ng!',N'Robert T. Kiyosaki',2015,32000,N'ch�a c� m� t?','images/books/P68102.jpg',1,1)
insert Book values('P68101',N'D?y Con L�m Gi�u - T?p 8: �? C� Nh?ng �?ng Ti?n T�ch C?c',N'Robert T. Kiyosaki',2015,32000,N'ch�a c� m� t?','images/books/P68101.jpg',1,1)
insert Book values('P67957',N'36 K? Trong Kinh Doanh Hi?n �?i',N'Lan Bercu',2016,95000,N'ch�a c� m� t?','images/books/P67957.jpg',1,1)
insert Book values('P67821',N'M?t M? Champa - Ph�t H�nh D? Ki?n',N'Gi?n T� H?i',2016,113000,N'ch�a c� m� t?','images/books/P67821.jpg',1,5)
insert Book values('P67687',N'Vui bu?n trong h?p',N'�o�n B?o Ch�u',2015,250000,N'ch�a c� m� t?','images/books/P67687.jpg',1,5)

insert into Account values(NEWID(),'admin',lower(CONVERT(VARCHAR(32), HashBytes('md5', 'admin123456'), 2)),N'L?i �?c Chung','images/accounts/chunngld.jpg','chungld.hanam@gmail.com','H� Nam','0968018161',1,1)
insert into Account values(NEWID(),'member01',lower(CONVERT(VARCHAR(32), HashBytes('md5', 'member01123456'), 2)),N'Nguy?n Th? H?a','images/members/hoant.jpg','baohoa@gmail.com','H� Nam','0968018162',0,1)
insert into OrderBook values('20200526102704','2020-05-26','56EDA78A-FBBD-4D29-8115-8D5DC366503F','H� Nam','0968018162',getdate(),N'Giao h�ng gi? h�nh ch�nh','New')
insert into OrderDetail(OrderId,BookId,Quantity,Price) values('20200526102704','P68050',2,95000)
insert into OrderDetail(OrderId,BookId,Quantity,Price) values('20200526102704','P67934',2,250000)
insert into OrderDetail(OrderId,BookId,Quantity,Price) values('20200526102704','P68102',1,32000)