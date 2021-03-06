USE [C:\USERS\ITOY\DOCUMENTS\VISUAL STUDIO 2013\PROJECTS\MVC_EXERCISE\ADVMASTERDETAILS\APP_DATA\MYDATABASE.MDF]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2018/9/7 下午 06:47:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2018/9/7 下午 06:47:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Rate] [numeric](12, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderMaster]    Script Date: 2018/9/7 下午 06:47:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderMaster](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNo] [varchar](50) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[Description] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 2018/9/7 下午 06:47:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[ProductName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (1, N'Ebook')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'Electronics')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Rate], [Quantity]) VALUES (1, 11, 2, CAST(357.00 AS Numeric(12, 2)), 3)
INSERT [dbo].[OrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Rate], [Quantity]) VALUES (2, 11, 3, CAST(27890.00 AS Numeric(12, 2)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Rate], [Quantity]) VALUES (3, 12, 2, CAST(2355.00 AS Numeric(12, 2)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [Rate], [Quantity]) VALUES (4, 12, 4, CAST(467.00 AS Numeric(12, 2)), 2)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[OrderMaster] ON 

INSERT [dbo].[OrderMaster] ([OrderID], [OrderNo], [OrderDate], [Description]) VALUES (11, N'33455', CAST(N'2018-01-25T00:07:00.000' AS DateTime), N'FIRST')
INSERT [dbo].[OrderMaster] ([OrderID], [OrderNo], [OrderDate], [Description]) VALUES (12, N'234555', CAST(N'2018-07-25T00:00:00.000' AS DateTime), N'second')
SET IDENTITY_INSERT [dbo].[OrderMaster] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [CategoryID], [ProductName]) VALUES (1, 1, N'ASP.NET MVC5')
INSERT [dbo].[Products] ([ProductID], [CategoryID], [ProductName]) VALUES (2, 1, N'AngularJS 2.0')
INSERT [dbo].[Products] ([ProductID], [CategoryID], [ProductName]) VALUES (3, 2, N'DELL Ins.M0012 Leaptop')
INSERT [dbo].[Products] ([ProductID], [CategoryID], [ProductName]) VALUES (4, 2, N'Logitech Mouse')
INSERT [dbo].[Products] ([ProductID], [CategoryID], [ProductName]) VALUES (5, 2, N'Logitech Keyboard')
SET IDENTITY_INSERT [dbo].[Products] OFF
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_OrderMaster] FOREIGN KEY([OrderID])
REFERENCES [dbo].[OrderMaster] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_OrderMaster]
GO
