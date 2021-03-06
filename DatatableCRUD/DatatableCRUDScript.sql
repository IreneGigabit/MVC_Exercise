USE [C:\USERS\ITOY\DOCUMENTS\VISUAL STUDIO 2013\PROJECTS\MVC_EXERCISE\DATATABLECRUD\APP_DATA\MYDATABASE.MDF]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2018/9/7 下午 06:49:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[EmailID] [nvarchar](200) NULL,
	[City] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [EmailID], [City], [Country]) VALUES (1, N'Nancy', N'Davolio', N'nancy@gmail.com', N'507 - 20th Ave. E.', N'Seattle')
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [EmailID], [City], [Country]) VALUES (2, N'Janet', N'Leverling', N'janet@gmail.com', N'722 Moss Bay Blvd.', N'Kirkland')
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [EmailID], [City], [Country]) VALUES (3, N'Margaret', N'Peacock', N'margaret@gmail.com', N'4110 Old Redmond Rd.', N'Redmond')
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [EmailID], [City], [Country]) VALUES (4, N'Steven', N'Buchaan', N'steven@gmail.com', N'14 Garrett Hill', N'London')
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [EmailID], [City], [Country]) VALUES (5, N'Michael', N'Suyama', N'michael@gmail.com', N'Coventry House Miner Rd.', N'London')
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [EmailID], [City], [Country]) VALUES (6, N'Robert', N'King', N'robert@gmail.com', N'Edgeham Hollow Winchester Way', N'London')
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [EmailID], [City], [Country]) VALUES (7, N'Laura', N'Callahan', N'laura@gmail.com', N'4726 - 11th Ave. N.E.', N'Seattle')
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [EmailID], [City], [Country]) VALUES (8, N'Anne', N'Dodsworth', N'Anne@gmail.com', N'7 Houndstooth Rd.', N'London')
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [EmailID], [City], [Country]) VALUES (9, N'Irene', N'Chang', N'gigabit001@hotmail.com', N'New Taipei', N'Taiwan')
SET IDENTITY_INSERT [dbo].[Employees] OFF
