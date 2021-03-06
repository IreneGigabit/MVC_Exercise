USE [C:\USERS\ITOY\DOCUMENTS\VISUAL STUDIO 2013\PROJECTS\MVC_EXERCISE\EDITABLELISTMVC\APP_DATA\DATABASE.MDF]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 2018/9/7 下午 06:49:57 ******/
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
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2018/9/7 下午 06:49:57 ******/
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
/****** Object:  Table [dbo].[SequenceDict]    Script Date: 2018/9/7 下午 06:49:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SequenceDict](
	[SequqnceKey] [varchar](50) NOT NULL,
	[SequenceNo] [int] NOT NULL,
 CONSTRAINT [PK_SequenceList] PRIMARY KEY CLUSTERED 
(
	[SequqnceKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderNo], [OrderDate], [Description]) VALUES (2, N'20180623002', CAST(N'2018-06-24T00:00:00.000' AS DateTime), N'test2')
INSERT [dbo].[Order] ([OrderID], [OrderNo], [OrderDate], [Description]) VALUES (3, N'20180624001', CAST(N'2018-06-24T00:00:00.000' AS DateTime), N'2555556578')
INSERT [dbo].[Order] ([OrderID], [OrderNo], [OrderDate], [Description]) VALUES (4, N'2018060001', CAST(N'2018-06-24T00:00:00.000' AS DateTime), N'test sequqnceno')
INSERT [dbo].[Order] ([OrderID], [OrderNo], [OrderDate], [Description]) VALUES (5, N'2018060002', CAST(N'2018-06-25T00:00:00.000' AS DateTime), N'test2 seqno')
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderItemsID], [OrderID], [ItemName], [Quantity], [Rate], [TotalAmount]) VALUES (3, 2, N'AA2', 4, CAST(1.00 AS Numeric(12, 2)), CAST(4.00 AS Numeric(12, 2)))
INSERT [dbo].[OrderDetails] ([OrderItemsID], [OrderID], [ItemName], [Quantity], [Rate], [TotalAmount]) VALUES (4, 2, N'BB2', 3, CAST(2.00 AS Numeric(12, 2)), CAST(6.00 AS Numeric(12, 2)))
INSERT [dbo].[OrderDetails] ([OrderItemsID], [OrderID], [ItemName], [Quantity], [Rate], [TotalAmount]) VALUES (5, 3, N'AA56', 2, CAST(14.00 AS Numeric(12, 2)), CAST(0.00 AS Numeric(12, 2)))
INSERT [dbo].[OrderDetails] ([OrderItemsID], [OrderID], [ItemName], [Quantity], [Rate], [TotalAmount]) VALUES (6, 3, N'BB78', 3, CAST(24.00 AS Numeric(12, 2)), CAST(0.00 AS Numeric(12, 2)))
INSERT [dbo].[OrderDetails] ([OrderItemsID], [OrderID], [ItemName], [Quantity], [Rate], [TotalAmount]) VALUES (8, 4, N'AA5', 4, CAST(1.00 AS Numeric(12, 2)), CAST(4.00 AS Numeric(12, 2)))
INSERT [dbo].[OrderDetails] ([OrderItemsID], [OrderID], [ItemName], [Quantity], [Rate], [TotalAmount]) VALUES (9, 4, N'BB5', 3, CAST(2.00 AS Numeric(12, 2)), CAST(6.00 AS Numeric(12, 2)))
INSERT [dbo].[OrderDetails] ([OrderItemsID], [OrderID], [ItemName], [Quantity], [Rate], [TotalAmount]) VALUES (10, 5, N'AA2', 7, CAST(3.00 AS Numeric(12, 2)), CAST(21.00 AS Numeric(12, 2)))
INSERT [dbo].[OrderDetails] ([OrderItemsID], [OrderID], [ItemName], [Quantity], [Rate], [TotalAmount]) VALUES (11, 5, N'BB2', 8, CAST(4.00 AS Numeric(12, 2)), CAST(32.00 AS Numeric(12, 2)))
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
INSERT [dbo].[SequenceDict] ([SequqnceKey], [SequenceNo]) VALUES (N'ORD201806', 2)
ALTER TABLE [dbo].[SequenceDict] ADD  DEFAULT ((0)) FOR [SequenceNo]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Order]
GO
