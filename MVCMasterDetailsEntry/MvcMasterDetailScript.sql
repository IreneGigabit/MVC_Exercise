USE [C:\USERS\ITOY\DOCUMENTS\VISUAL STUDIO 2013\PROJECTS\MVC_EXERCISE\MVCMASTERDETAILSENTRY\APP_DATA\MYDATABASE.MDF]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 2018/9/7 下午 06:50:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNo] [varchar](20) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[Description] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2018/9/7 下午 06:50:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderItemsID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Rate] [numeric](12, 2) NOT NULL,
	[TotalAmount] [numeric](12, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderItemsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderNo], [OrderDate], [Description]) VALUES (1, N'20180612001', CAST(N'2018-06-20T00:00:00.000' AS DateTime), N'this is a test order')
INSERT [dbo].[Order] ([OrderID], [OrderNo], [OrderDate], [Description]) VALUES (2, N'20180616', CAST(N'2018-06-27T00:00:00.000' AS DateTime), N'test two')
INSERT [dbo].[Order] ([OrderID], [OrderNo], [OrderDate], [Description]) VALUES (3, N'20180616', CAST(N'2018-06-11T00:00:00.000' AS DateTime), N'test three')
INSERT [dbo].[Order] ([OrderID], [OrderNo], [OrderDate], [Description]) VALUES (4, N'20180616004', CAST(N'2018-06-01T00:00:00.000' AS DateTime), N'test four')
INSERT [dbo].[Order] ([OrderID], [OrderNo], [OrderDate], [Description]) VALUES (6, N'20180616004', CAST(N'2018-06-01T00:00:00.000' AS DateTime), N'test six')
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderItemsID], [OrderID], [ItemName], [Quantity], [Rate], [TotalAmount]) VALUES (1, 1, N'xx', 3, CAST(8.00 AS Numeric(12, 2)), CAST(0.00 AS Numeric(12, 2)))
INSERT [dbo].[OrderDetails] ([OrderItemsID], [OrderID], [ItemName], [Quantity], [Rate], [TotalAmount]) VALUES (2, 1, N'zz', 4, CAST(7.00 AS Numeric(12, 2)), CAST(0.00 AS Numeric(12, 2)))
INSERT [dbo].[OrderDetails] ([OrderItemsID], [OrderID], [ItemName], [Quantity], [Rate], [TotalAmount]) VALUES (3, 2, N'book', 3, CAST(20.00 AS Numeric(12, 2)), CAST(0.00 AS Numeric(12, 2)))
INSERT [dbo].[OrderDetails] ([OrderItemsID], [OrderID], [ItemName], [Quantity], [Rate], [TotalAmount]) VALUES (4, 2, N'backpack', 1, CAST(1020.00 AS Numeric(12, 2)), CAST(0.00 AS Numeric(12, 2)))
INSERT [dbo].[OrderDetails] ([OrderItemsID], [OrderID], [ItemName], [Quantity], [Rate], [TotalAmount]) VALUES (5, 3, N'234', 3, CAST(2.00 AS Numeric(12, 2)), CAST(0.00 AS Numeric(12, 2)))
INSERT [dbo].[OrderDetails] ([OrderItemsID], [OrderID], [ItemName], [Quantity], [Rate], [TotalAmount]) VALUES (6, 3, N'note', 15, CAST(20.00 AS Numeric(12, 2)), CAST(0.00 AS Numeric(12, 2)))
INSERT [dbo].[OrderDetails] ([OrderItemsID], [OrderID], [ItemName], [Quantity], [Rate], [TotalAmount]) VALUES (7, 6, N'rule', 2, CAST(20.00 AS Numeric(12, 2)), CAST(0.00 AS Numeric(12, 2)))
INSERT [dbo].[OrderDetails] ([OrderItemsID], [OrderID], [ItemName], [Quantity], [Rate], [TotalAmount]) VALUES (8, 6, N'cup', 1, CAST(450.00 AS Numeric(12, 2)), CAST(0.00 AS Numeric(12, 2)))
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Order]
GO
