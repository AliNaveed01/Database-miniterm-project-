-- USING THE GIVEN ASP.NET LOGIN DATABASE
-- THE REST OF THE DATABASE WILL BE BUILT OFF THE GIVEN TABLE
-- MAINLY THE AspNetUsers TABLE
USE master
CREATE DATABASE WebisteDB
GO

USE WebsiteDB

CREATE TABLE Users
(
	AspId nvarchar(450) FOREIGN KEY 
	REFERENCES AspNetUsers(Id) -- Generated From Visual Studio
	ON DELETE CASCADE
	ON UPDATE CASCADE,

	UserId int IDENTITY(10000,1) PRIMARY KEY,
	PublicUserName varchar(64) NOT NULL
)

CREATE TABLE Products
(
	UserId int FOREIGN KEY 
	REFERENCES Users(UserID)
	ON DELETE CASCADE
	ON UPDATE CASCADE,

	ProductId int IDENTITY(50000,2) PRIMARY KEY,
	PoductName varchar(64) NOT NULL,
	ProductDescription varchar(64) NULL,
	ProductPrice float DEFAULT 00.00
)

CREATE TABLE ProductRating
(
	ProductId int FOREIGN KEY 
	REFERENCES Products(ProductId)
	ON DELETE CASCADE
	ON UPDATE CASCADE,

	Rating int NOT NULL
	CHECK (Rating >= 0 AND Rating <= 5)
)

CREATE TABLE ProductTransactions
(
	BuyerId int FOREIGN KEY 
	REFERENCES Users(UserId)
	ON DELETE CASCADE
	ON UPDATE CASCADE,

	SellerId int FOREIGN KEY
	REFERENCES Users(UserId)
	ON DELETE CASCADE
	ON UPDATE CASCADE,

	ProductId int FOREIGN KEY 
	REFERENCES Products(ProductId)
	ON DELETE CASCADE
	ON UPDATE CASCADE,

	PRIMARY KEY(BuyerId, SellerId, ProductId)

)


CREATE TABLE [Services]
(
	UserId int FOREIGN KEY 
	REFERENCES Users(UserID)
	ON DELETE CASCADE
	ON UPDATE CASCADE,

	ServiceId int IDENTITY(50001,2) PRIMARY KEY,
	ServiceName varchar(64) NOT NULL,
	ServiceDescription varchar(64) NULL,
	ServicePrice float DEFAULT 00.00
)

CREATE TABLE ServicesRating
(
	ServiceId int FOREIGN KEY 
	REFERENCES [Services](ServiceId)
	ON DELETE CASCADE
	ON UPDATE CASCADE,

	Rating int NOT NULL
	CHECK (Rating >= 0 AND Rating <= 5)
)


CREATE TABLE ServiceTransactions
(
	BuyerId int FOREIGN KEY 
	REFERENCES Users(UserId)
	ON DELETE CASCADE
	ON UPDATE CASCADE,

	SellerId int FOREIGN KEY
	REFERENCES Users(UserId)
	ON DELETE CASCADE
	ON UPDATE CASCADE,

	ServiceId int FOREIGN KEY 
	REFERENCES [Services](ServiceId)
	ON DELETE CASCADE
	ON UPDATE CASCADE,

	PRIMARY KEY(BuyerId, SellerId, ServiceId)

)