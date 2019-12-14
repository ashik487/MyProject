create database dbMonirEnterprise
go
use dbMonirEnterprise
go
/*SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cart](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[MemberId] [int] NULL,
	[CartStatusId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Tbl_Cart] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Tbl_CartStatus]    Script Date: 3/17/2019 2:50:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_CartStatus](
	[CartStatusId] [int] IDENTITY(1,1) NOT NULL,
	[CartStatus] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[CartStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Tbl_CartStatus] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Tbl_Category]    Script Date: 3/17/2019 2:50:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](500) NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Tbl_Category] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Tbl_MemberRole]    Script Date: 3/17/2019 2:50:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_MemberRole](
	[MemberRoleID] [int] IDENTITY(1,1) NOT NULL,
	[memberId] [int] NULL,
	[RoleId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MemberRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Tbl_MemberRole] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Tbl_Members]    Script Date: 3/17/2019 2:50:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Members](
	[MemberId] [int] IDENTITY(1,1) NOT NULL,
	[FristName] [varchar](200) NULL,
	[LastName] [varchar](200) NULL,
	[EmailId] [varchar](200) NULL,
	[Password] [varchar](500) NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Tbl_Members] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Tbl_Product]    Script Date: 3/17/2019 2:50:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](500) NULL,
	[CategoryId] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[ProductImage] [varchar](max) NULL,
	[IsFeatured] [bit] NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK__Tbl_Prod__B40CC6CD8F17BAF3] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Tbl_Product] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Tbl_Roles]    Script Date: 3/17/2019 2:50:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Tbl_Roles] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Tbl_ShippingDetails]    Script Date: 3/17/2019 2:50:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_ShippingDetails](
	[ShippingDetailId] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NULL,
	[Adress] [varchar](500) NULL,
	[City] [varchar](500) NULL,
	[State] [varchar](500) NULL,
	[Country] [varchar](50) NULL,
	[ZipCode] [varchar](50) NULL,
	[OrderId] [int] NULL,
	[AmountPaid] [decimal](18, 0) NULL,
	[PaymentType] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ShippingDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Tbl_ShippingDetails] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Tbl_SlideImage]    Script Date: 3/17/2019 2:50:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_SlideImage](
	[SlideId] [int] IDENTITY(1,1) NOT NULL,
	[SlideTitle] [varchar](500) NULL,
	[SlideImage] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[SlideId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Tbl_SlideImage] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[Tbl_Category] ON 

GO
INSERT [dbo].[Tbl_Category] ([CategoryId], [CategoryName], [IsActive], [IsDelete]) VALUES (1, N'Mobile', 1, 0)
GO
INSERT [dbo].[Tbl_Category] ([CategoryId], [CategoryName], [IsActive], [IsDelete]) VALUES (2, N'Laptop', 1, 0)
GO
INSERT [dbo].[Tbl_Category] ([CategoryId], [CategoryName], [IsActive], [IsDelete]) VALUES (3, N'Accessories', 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Tbl_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Product] ON 

GO
INSERT [dbo].[Tbl_Product] ([ProductId], [ProductName], [CategoryId], [IsActive], [IsDelete], [CreatedDate], [ModifiedDate], [ProductImage], [IsFeatured], [Quantity], [Price]) VALUES (1, N'Nokia 6', 1, 0, 0, CAST(N'2019-03-08 00:00:00.000' AS DateTime), CAST(N'2019-03-17 12:25:08.353' AS DateTime), N'download.jpg', 1, 6, CAST(6000 AS Decimal(18, 0)))
GO
INSERT [dbo].[Tbl_Product] ([ProductId], [ProductName], [CategoryId], [IsActive], [IsDelete], [CreatedDate], [ModifiedDate], [ProductImage], [IsFeatured], [Quantity], [Price]) VALUES (2, N'Samsung s9', 1, 1, 0, CAST(N'2019-03-08 00:00:00.000' AS DateTime), CAST(N'2019-03-17 12:25:59.347' AS DateTime), N'thumb_103692_product_td_300.jpeg', 0, 90, CAST(500 AS Decimal(18, 0)))
GO
INSERT [dbo].[Tbl_Product] ([ProductId], [ProductName], [CategoryId], [IsActive], [IsDelete], [CreatedDate], [ModifiedDate], [ProductImage], [IsFeatured], [Quantity], [Price]) VALUES (3, N'Lenovo G2345', 2, 1, 0, CAST(N'2019-03-17 11:19:12.000' AS DateTime), CAST(N'2019-03-17 11:26:27.337' AS DateTime), NULL, 1, 5, CAST(45000 AS Decimal(18, 0)))
GO
INSERT [dbo].[Tbl_Product] ([ProductId], [ProductName], [CategoryId], [IsActive], [IsDelete], [CreatedDate], [ModifiedDate], [ProductImage], [IsFeatured], [Quantity], [Price]) VALUES (4, N'test', 3, 1, NULL, CAST(N'2019-03-17 12:05:15.263' AS DateTime), NULL, NULL, 0, 4, CAST(44 AS Decimal(18, 0)))
GO
INSERT [dbo].[Tbl_Product] ([ProductId], [ProductName], [CategoryId], [IsActive], [IsDelete], [CreatedDate], [ModifiedDate], [ProductImage], [IsFeatured], [Quantity], [Price]) VALUES (5, N'sdfsdf', 3, 1, NULL, CAST(N'2019-03-17 12:06:46.763' AS DateTime), NULL, NULL, 0, 2, CAST(22 AS Decimal(18, 0)))
GO
INSERT [dbo].[Tbl_Product] ([ProductId], [ProductName], [CategoryId], [IsActive], [IsDelete], [CreatedDate], [ModifiedDate], [ProductImage], [IsFeatured], [Quantity], [Price]) VALUES (6, N'sdf', 3, 1, NULL, CAST(N'2019-03-17 12:22:01.790' AS DateTime), NULL, N'49838193_281668699171021_8996337024751370240_n.jpg', 1, 3, CAST(500 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[Tbl_Product] OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Tbl_Cate__8517B2E0DEB740A1]    Script Date: 3/17/2019 2:50:07 PM ******/
ALTER TABLE [dbo].[Tbl_Category] ADD UNIQUE NONCLUSTERED 
(
	[CategoryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Tbl_Memb__7449F399D5D8B9E3]    Script Date: 3/17/2019 2:50:07 PM ******/
ALTER TABLE [dbo].[Tbl_Members] ADD UNIQUE NONCLUSTERED 
(
	[LastName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Tbl_Memb__7ED91ACEA076F16C]    Script Date: 3/17/2019 2:50:07 PM ******/
ALTER TABLE [dbo].[Tbl_Members] ADD UNIQUE NONCLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Tbl_Prod__DD5A978A5ADE4141]    Script Date: 3/17/2019 2:50:07 PM ******/
ALTER TABLE [dbo].[Tbl_Product] ADD  CONSTRAINT [UQ__Tbl_Prod__DD5A978A5ADE4141] UNIQUE NONCLUSTERED 
(
	[ProductName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Tbl_Role__8A2B6160719691E0]    Script Date: 3/17/2019 2:50:07 PM ******/
ALTER TABLE [dbo].[Tbl_Roles] ADD UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tbl_Cart]  WITH CHECK ADD  CONSTRAINT [FK__Tbl_Cart__Produc__24927208] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Tbl_Product] ([ProductId])
GO
ALTER TABLE [dbo].[Tbl_Cart] CHECK CONSTRAINT [FK__Tbl_Cart__Produc__24927208]
GO
ALTER TABLE [dbo].[Tbl_Product]  WITH CHECK ADD  CONSTRAINT [FK__Tbl_Produ__Categ__25869641] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Tbl_Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Tbl_Product] CHECK CONSTRAINT [FK__Tbl_Produ__Categ__25869641]
GO
ALTER TABLE [dbo].[Tbl_ShippingDetails]  WITH CHECK ADD FOREIGN KEY([MemberId])
REFERENCES [dbo].[Tbl_Members] ([MemberId])
GO
*/
create table Tbl_Category(
CategoryId int identity primary key,
CategoryName varchar(500) unique,
IsActive bit null,
IsDelete bit null
)

create table	Tbl_Product(

ProductId int identity primary key,
ProductName varchar(500) unique,
CategoryId int,
IsActive bit null,
IsDelete bit null,
CreatedDate datetime null,
ModifiedDate datetime null,
Description datetime null,
ProductImage varchar(max),
IsFeatured bit null,
Quantity int,
foreign key (CategoryId) references Tbl_Category(CategoryId)
)


create table	Tbl_CartStatus
(
CartStatusId int identity primary key,
CartStatus varchar(500)
)


create table Tbl_Members
(

MemberId int identity primary key,
FirstName varchar(200),
LastName varchar(200) unique,
EmailId varchar(200) unique,
Password varchar(500),
IsActive bit null,
IsDelete bit null,
CreatedOn datetime,
ModifiedOn datetime,
)





create table Tbl_ShippingDetails
(
ShippingDetailId int identity primary key,
MemberId int,
Address varchar(500),
City varchar(500),
State varchar(500),
Country varchar(500),
Zipcode varchar(500),
OrderId int,
AmountPaid decimal,
PaymentType varchar(50)
foreign key (MemberId) references Tbl_Members(MemberId)
)
create table Tbl_Roles

(
RoleId int identity primary key,
RoleName varchar(200) unique
)

create table Tbl_Cart
(
CartId int identity primary key,
ProductId int,
MemberId int,
CartStatusId int,
foreign key (ProductId) references Tbl_Product(ProductId)
)

create table Tbl_MemberRole
(

MemberRoleID int identity primary key,
memberId int,
RoleId int,
)
create table Tbl_SlideImage
(

SlideId int identity primary key,
SlideTilte varchar(500),
SlideImage varchar(max)
)