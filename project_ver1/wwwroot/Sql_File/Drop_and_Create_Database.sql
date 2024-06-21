ALTER TABLE [dbo].[Rooms] DROP CONSTRAINT [FK_Rooms_Room_Category]
GO
ALTER TABLE [dbo].[Room_Order_Details] DROP CONSTRAINT [FK_Room_Order_Details_Rooms]
GO
ALTER TABLE [dbo].[Room_Order_Details] DROP CONSTRAINT [FK_Room_Order_Details_Room_Order]
GO
ALTER TABLE [dbo].[Room_Order] DROP CONSTRAINT [FK_Room_Order_Employee]
GO
ALTER TABLE [dbo].[Room_Order] DROP CONSTRAINT [FK_Room_Order_Customer]
GO
ALTER TABLE [dbo].[Meal_Order_Details] DROP CONSTRAINT [FK_Meal_Order_Details_Meals]
GO
ALTER TABLE [dbo].[Meal_Order_Details] DROP CONSTRAINT [FK_Meal_Order_Details_Meal_Order]
GO
ALTER TABLE [dbo].[Meal_Order] DROP CONSTRAINT [FK_Meal_Order_Employee]
GO
ALTER TABLE [dbo].[Meal_Order] DROP CONSTRAINT [FK_Meal_Order_Customer]
GO
ALTER TABLE [dbo].[Contact] DROP CONSTRAINT [FK_Contact_Employee]
GO
ALTER TABLE [dbo].[Agricultural_Products] DROP CONSTRAINT [FK_Agricultural_Products_Agricultural_Products_Category]
GO
ALTER TABLE [dbo].[Agricultural_Order_Details] DROP CONSTRAINT [FK_Agricultural_Order_Details_Agricultural_Products]
GO
ALTER TABLE [dbo].[Agricultural_Order_Details] DROP CONSTRAINT [FK_Agricultural_Order_Details_Agricultural_Order]
GO
ALTER TABLE [dbo].[Agricultural_Order] DROP CONSTRAINT [FK_Agricultural_Order_Employee]
GO
ALTER TABLE [dbo].[Agricultural_Order] DROP CONSTRAINT [FK_Agricultural_Order_Customer]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 2024/6/14 上午 10:11:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rooms]') AND type in (N'U'))
DROP TABLE [dbo].[Rooms]
GO
/****** Object:  Table [dbo].[Room_Order_Details]    Script Date: 2024/6/14 上午 10:11:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Room_Order_Details]') AND type in (N'U'))
DROP TABLE [dbo].[Room_Order_Details]
GO
/****** Object:  Table [dbo].[Room_Order]    Script Date: 2024/6/14 上午 10:11:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Room_Order]') AND type in (N'U'))
DROP TABLE [dbo].[Room_Order]
GO
/****** Object:  Table [dbo].[Room_Category]    Script Date: 2024/6/14 上午 10:11:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Room_Category]') AND type in (N'U'))
DROP TABLE [dbo].[Room_Category]
GO
/****** Object:  Table [dbo].[News]    Script Date: 2024/6/14 上午 10:11:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[News]') AND type in (N'U'))
DROP TABLE [dbo].[News]
GO
/****** Object:  Table [dbo].[Meals]    Script Date: 2024/6/14 上午 10:11:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Meals]') AND type in (N'U'))
DROP TABLE [dbo].[Meals]
GO
/****** Object:  Table [dbo].[Meal_Order_Details]    Script Date: 2024/6/14 上午 10:11:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Meal_Order_Details]') AND type in (N'U'))
DROP TABLE [dbo].[Meal_Order_Details]
GO
/****** Object:  Table [dbo].[Meal_Order]    Script Date: 2024/6/14 上午 10:11:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Meal_Order]') AND type in (N'U'))
DROP TABLE [dbo].[Meal_Order]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2024/6/14 上午 10:11:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
DROP TABLE [dbo].[Employee]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2024/6/14 上午 10:11:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
DROP TABLE [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 2024/6/14 上午 10:11:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contact]') AND type in (N'U'))
DROP TABLE [dbo].[Contact]
GO
/****** Object:  Table [dbo].[Agricultural_Products_Category]    Script Date: 2024/6/14 上午 10:11:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Agricultural_Products_Category]') AND type in (N'U'))
DROP TABLE [dbo].[Agricultural_Products_Category]
GO
/****** Object:  Table [dbo].[Agricultural_Products]    Script Date: 2024/6/14 上午 10:11:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Agricultural_Products]') AND type in (N'U'))
DROP TABLE [dbo].[Agricultural_Products]
GO
/****** Object:  Table [dbo].[Agricultural_Order_Details]    Script Date: 2024/6/14 上午 10:11:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Agricultural_Order_Details]') AND type in (N'U'))
DROP TABLE [dbo].[Agricultural_Order_Details]
GO
/****** Object:  Table [dbo].[Agricultural_Order]    Script Date: 2024/6/14 上午 10:11:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Agricultural_Order]') AND type in (N'U'))
DROP TABLE [dbo].[Agricultural_Order]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2024/6/14 上午 10:11:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2024/6/14 上午 10:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agricultural_Order]    Script Date: 2024/6/14 上午 10:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agricultural_Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[OderTime] [datetime] NOT NULL,
	[OrderFinished] [bit] NOT NULL,
	[EmployeeID] [int] NULL,
	[SumPrice] [int] NULL,
 CONSTRAINT [PK_Agricultural_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agricultural_Order_Details]    Script Date: 2024/6/14 上午 10:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agricultural_Order_Details](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_Agricultural_Order_Details] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agricultural_Products]    Script Date: 2024/6/14 上午 10:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agricultural_Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Stock] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Image] [varchar](50) NULL,
	[Price] [int] NOT NULL,
	[Discount] [int] NULL,
	[Description] [varchar](max) NULL,
	[Features] [varchar](max) NULL,
	[Made] [varchar](max) NULL,
 CONSTRAINT [PK_Agricultural_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agricultural_Products_Category]    Script Date: 2024/6/14 上午 10:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agricultural_Products_Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Agricultural_Products_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 2024/6/14 上午 10:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionCategory] [varchar](20) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Sex] [bit] NOT NULL,
	[Phone] [varchar](20) NOT NULL,
	[QuestionContent] [varchar](100) NOT NULL,
	[EmployeeID] [int] NULL,
	[SetTime] [datetime] NULL,
	[Finished] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2024/6/14 上午 10:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Pwd] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Phone] [varchar](20) NOT NULL,
	[Address] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2024/6/14 上午 10:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[BirthDate] [smalldatetime] NOT NULL,
	[HireDate] [smalldatetime] NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Phone] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Pwd] [varchar](50) NOT NULL,
	[Department] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meal_Order]    Script Date: 2024/6/14 上午 10:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meal_Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[OderTime] [datetime] NOT NULL,
	[LumpSum] [int] NOT NULL,
	[OrderFinished] [bit] NOT NULL,
	[EmployeeID] [int] NULL,
 CONSTRAINT [PK_Meal_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meal_Order_Details]    Script Date: 2024/6/14 上午 10:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meal_Order_Details](
	[OrderID] [int] NOT NULL,
	[MealID] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Finished] [bit] NOT NULL,
 CONSTRAINT [PK_Meal_Order_Details] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[MealID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meals]    Script Date: 2024/6/14 上午 10:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meals](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Stock] [int] NOT NULL,
 CONSTRAINT [PK_Meals] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 2024/6/14 上午 10:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[ID] [int] NOT NULL,
	[NewsTitle] [varchar](50) NOT NULL,
	[NewsContent] [varchar](max) NOT NULL,
	[SetTime] [datetime] NULL,
	[CategoryID] [int] NULL,
	[Image] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room_Category]    Script Date: 2024/6/14 上午 10:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room_Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Count] [int] NOT NULL,
	[OccupyNumber] [int] NOT NULL,
 CONSTRAINT [PK_Room_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room_Order]    Script Date: 2024/6/14 上午 10:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room_Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[OrderTime] [datetime] NOT NULL,
	[CheckIn] [smalldatetime] NOT NULL,
	[CheckOut] [smalldatetime] NOT NULL,
	[OrderFinished] [bit] NOT NULL,
	[EmployeeID] [int] NULL,
	[SumPrice] [int] NULL,
 CONSTRAINT [PK_Room_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room_Order_Details]    Script Date: 2024/6/14 上午 10:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room_Order_Details](
	[OrderID] [int] NOT NULL,
	[RoomID] [int] NOT NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_Room_Order_Details] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 2024/6/14 上午 10:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[HasReserved] [bit] NOT NULL,
	[HasOccupied] [bit] NOT NULL,
	[CanReserve] [bit] NOT NULL,
	[CanOccupy] [bit] NOT NULL,
	[Price] [int] NULL,
	[Discount] [int] NULL,
	[Image] [varchar](50) NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Agricultural_Order] ON 
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (1, 1, CAST(N'2020-02-21T21:04:02.000' AS DateTime), 1, 1, 514)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (2, 1, CAST(N'2020-03-22T03:14:27.000' AS DateTime), 1, 5, 584)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (3, 3, CAST(N'2020-06-28T13:47:37.000' AS DateTime), 1, 6, 60)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (4, 4, CAST(N'2020-10-11T22:13:51.000' AS DateTime), 1, 8, 87)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (5, 2, CAST(N'2020-10-19T23:04:34.000' AS DateTime), 1, 10, 430)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (6, 9, CAST(N'2020-11-07T18:55:40.000' AS DateTime), 1, 8, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (7, 17, CAST(N'2020-11-21T10:59:08.000' AS DateTime), 1, 6, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (8, 12, CAST(N'2021-01-07T12:48:15.000' AS DateTime), 1, 2, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (9, 4, CAST(N'2021-03-11T08:17:55.000' AS DateTime), 1, 1, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (10, 19, CAST(N'2021-04-25T06:42:43.000' AS DateTime), 1, 5, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (11, 11, CAST(N'2021-10-06T08:21:36.000' AS DateTime), 1, 14, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (12, 20, CAST(N'2021-10-23T04:32:32.000' AS DateTime), 1, 20, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (13, 16, CAST(N'2022-01-07T11:17:59.000' AS DateTime), 1, 11, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (14, 21, CAST(N'2022-06-15T18:15:11.000' AS DateTime), 1, 2, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (15, 6, CAST(N'2022-07-03T00:18:47.000' AS DateTime), 1, 5, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (16, 10, CAST(N'2022-07-05T09:17:44.000' AS DateTime), 1, 1, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (17, 5, CAST(N'2022-07-28T05:19:08.000' AS DateTime), 1, 8, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (18, 22, CAST(N'2022-09-11T05:50:17.000' AS DateTime), 1, 6, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (19, 9, CAST(N'2022-09-17T18:41:02.000' AS DateTime), 1, 12, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (20, 17, CAST(N'2022-09-21T21:42:04.000' AS DateTime), 1, 16, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (21, 2, CAST(N'2022-12-28T18:47:39.000' AS DateTime), 1, 17, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (22, 13, CAST(N'2023-01-29T00:19:26.000' AS DateTime), 1, 15, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (23, 8, CAST(N'2023-02-04T15:38:10.000' AS DateTime), 1, 5, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (24, 2, CAST(N'2023-03-22T12:59:02.000' AS DateTime), 1, 6, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (25, 23, CAST(N'2023-04-04T16:31:26.000' AS DateTime), 1, 1, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (26, 18, CAST(N'2023-06-27T16:32:18.000' AS DateTime), 1, 2, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (27, 24, CAST(N'2023-08-26T15:30:20.000' AS DateTime), 1, 8, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (28, 15, CAST(N'2023-09-19T03:37:23.000' AS DateTime), 1, 19, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (29, 7, CAST(N'2023-09-25T17:44:45.000' AS DateTime), 1, 20, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (30, 13, CAST(N'2023-11-13T08:55:44.000' AS DateTime), 1, 14, NULL)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (31, 4, CAST(N'2024-06-05T10:28:33.923' AS DateTime), 0, NULL, 430)
GO
INSERT [dbo].[Agricultural_Order] ([ID], [CustomerID], [OderTime], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (37, 1, CAST(N'2024-06-13T09:58:48.380' AS DateTime), 0, NULL, 846)
GO
SET IDENTITY_INSERT [dbo].[Agricultural_Order] OFF
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (1, 1, 4, 99)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (1, 3, 2, 199)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (2, 1, 5, 99)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (2, 5, 1, 89)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (3, 6, 1, 60)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (4, 8, 3, 29)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (5, 9, 1, 430)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (6, 5, 5, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (7, 2, 1, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (9, 6, 4, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (10, 9, 3, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (11, 4, 2, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (13, 3, 3, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (14, 7, 6, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (15, 7, 8, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (16, 2, 7, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (17, 4, 2, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (18, 3, 4, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (19, 9, 1, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (20, 1, 5, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (21, 8, 3, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (22, 6, 4, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (23, 5, 5, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (24, 5, 1, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (25, 6, 3, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (26, 1, 2, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (27, 9, 1, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (28, 3, 5, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (29, 4, 4, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (30, 7, 1, NULL)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (31, 7, 1, 430)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (37, 1, 1, 99)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (37, 2, 1, 199)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (37, 4, 1, 29)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (37, 5, 1, 89)
GO
INSERT [dbo].[Agricultural_Order_Details] ([OrderID], [ProductID], [Count], [Price]) VALUES (37, 7, 1, 430)
GO
SET IDENTITY_INSERT [dbo].[Agricultural_Products] ON 
GO
INSERT [dbo].[Agricultural_Products] ([ID], [CategoryID], [Stock], [Name], [Image], [Price], [Discount], [Description], [Features], [Made]) VALUES (1, 1, 8, N'台灣金鑽鳳梨1入
', N'~/image/pineapple.jpg
', 99, 0, N'每顆金鑽鳳梨都經過嚴格挑選，品質優異，適合鮮食或用於烹飪、製作果汁等多種料理。', N'甜美多汁，香氣濃郁，口感酥脆，且果肉金黃誘人', N'屏東')
GO
INSERT [dbo].[Agricultural_Products] ([ID], [CategoryID], [Stock], [Name], [Image], [Price], [Discount], [Description], [Features], [Made]) VALUES (2, 1, 13, N'台灣黑糖芭比蓮霧2入
', N'~/image/waxapple.jpg
', 199, 0, N'黑糖芭比蓮霧以其特有的清新口感，深受大眾喜愛，是夏季消暑的佳品。', N'外皮光滑紅潤，果肉清脆多汁，口感獨特', N'屏東')
GO
INSERT [dbo].[Agricultural_Products] ([ID], [CategoryID], [Stock], [Name], [Image], [Price], [Discount], [Description], [Features], [Made]) VALUES (3, 1, 7, N'台灣紅寶石芭樂1入
', N'~/image/guava.jpg', 59, 0, N'紅寶石芭樂不僅味道甜美，還具有良好的營養價值，是日常水果中的健康之選。', N'外皮綠中帶紅，果肉細嫩，香甜多汁，富含維生素C和纖維。', N'宜蘭')
GO
INSERT [dbo].[Agricultural_Products] ([ID], [CategoryID], [Stock], [Name], [Image], [Price], [Discount], [Description], [Features], [Made]) VALUES (4, 1, 4, N'黃檸檬1入', N'~/image/lemon.jpg
', 29, 0, N'黃檸檬是烹飪和調飲的好幫手，既可增添風味又能帶來健康益處。', N'外皮光滑，色澤鮮黃，酸度適中，富含維生素C，具有清新香氣', N'高雄')
GO
INSERT [dbo].[Agricultural_Products] ([ID], [CategoryID], [Stock], [Name], [Image], [Price], [Discount], [Description], [Features], [Made]) VALUES (5, 1, 5, N'富士蘋果2入', N'~/image/apple.jpg
', 89, 0, N'富士蘋果以其優異的口感和甜度成為蘋果中的上品，適合直接食用或用於沙拉、甜點。', N'果皮紅潤光滑，果肉甜脆多汁，香氣濃郁，口感絕佳', N'台中')
GO
INSERT [dbo].[Agricultural_Products] ([ID], [CategoryID], [Stock], [Name], [Image], [Price], [Discount], [Description], [Features], [Made]) VALUES (6, 1, 7, N'台灣百香果5入', N'~/image/passionfruit.jpg
', 60, 0, N'百香果適合直接食用或製作果汁、甜點，帶來清爽的口感和健康的營養。', N'果皮紫紅色，果汁酸甜適中，香氣濃郁，富含維生素C和抗氧化劑', N'南投')
GO
INSERT [dbo].[Agricultural_Products] ([ID], [CategoryID], [Stock], [Name], [Image], [Price], [Discount], [Description], [Features], [Made]) VALUES (7, 2, 10, N'金鑽鳳梨紅茶', N'~/image/tea1.jpg
', 430, 0, N'這款紅茶採用台灣優質金鑽鳳梨和精選紅茶葉製成，適合任何場合享用。', N'結合金鑽鳳梨的甜美與紅茶的醇香，風味獨特，口感豐富', N'南投')
GO
INSERT [dbo].[Agricultural_Products] ([ID], [CategoryID], [Stock], [Name], [Image], [Price], [Discount], [Description], [Features], [Made]) VALUES (8, 2, 13, N'柑橘草本茶', N'~/image/tea2.jpg
', 360, 0, N'柑橘草本茶融合了多種草本植物和新鮮柑橘，適合在忙碌的生活中享受片刻的寧靜。', N'柑橘香氣濃郁，草本味清新，茶湯甘甜爽口，具有放鬆的效果', N'南投')
GO
INSERT [dbo].[Agricultural_Products] ([ID], [CategoryID], [Stock], [Name], [Image], [Price], [Discount], [Description], [Features], [Made]) VALUES (9, 2, 10, N'清新柳丁茶', N'~/image/tea3.jpg
', 430, 0, N'採用新鮮柳丁和優質茶葉製成，柳丁的酸甜與茶葉的甘醇完美結合，讓人一飲難忘。', N'柳丁香氣撲鼻，茶味甘甜，入口清爽，是炎炎夏日的絕佳消暑飲品', N'南投')
GO
SET IDENTITY_INSERT [dbo].[Agricultural_Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Agricultural_Products_Category] ON 
GO
INSERT [dbo].[Agricultural_Products_Category] ([ID], [Name]) VALUES (1, N'水果')
GO
INSERT [dbo].[Agricultural_Products_Category] ([ID], [Name]) VALUES (2, N'果茶')
GO
SET IDENTITY_INSERT [dbo].[Agricultural_Products_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 
GO
INSERT [dbo].[Contact] ([ID], [QuestionCategory], [Name], [Sex], [Phone], [QuestionContent], [EmployeeID], [SetTime], [Finished]) VALUES (1, N'訂單問題', N'黃竣欽', 1, N'0958345678', N'我的訂單何時會出貨？', 1, CAST(N'2024-05-23T14:17:43.197' AS DateTime), 1)
GO
INSERT [dbo].[Contact] ([ID], [QuestionCategory], [Name], [Sex], [Phone], [QuestionContent], [EmployeeID], [SetTime], [Finished]) VALUES (2, N'園區資訊', N'邱舜逸', 1, N'0921987654', N'園區內有提供導覽服務嗎？', 2, CAST(N'2024-05-23T14:44:05.587' AS DateTime), 0)
GO
INSERT [dbo].[Contact] ([ID], [QuestionCategory], [Name], [Sex], [Phone], [QuestionContent], [EmployeeID], [SetTime], [Finished]) VALUES (3, N'商品', N'楊岳霖', 1, N'0912123456', N'可以增加商品種類嗎？', 8, CAST(N'2024-05-24T14:16:44.650' AS DateTime), 0)
GO
INSERT [dbo].[Contact] ([ID], [QuestionCategory], [Name], [Sex], [Phone], [QuestionContent], [EmployeeID], [SetTime], [Finished]) VALUES (4, N'園區資訊', N'池予穗', 0, N'0988765432', N'園區在春節期間有開放嗎？', 5, CAST(N'2024-05-24T14:16:44.650' AS DateTime), 0)
GO
INSERT [dbo].[Contact] ([ID], [QuestionCategory], [Name], [Sex], [Phone], [QuestionContent], [EmployeeID], [SetTime], [Finished]) VALUES (5, N'訂單問題', N'胡怡妃', 0, N'0934876543', N'我想取消訂單，請問要怎麼辦？', 6, CAST(N'2024-05-28T13:44:45.053' AS DateTime), 0)
GO
INSERT [dbo].[Contact] ([ID], [QuestionCategory], [Name], [Sex], [Phone], [QuestionContent], [EmployeeID], [SetTime], [Finished]) VALUES (6, N'餐飲業合作', N'詹國樑', 0, N'0910712708', N'我想合作', NULL, CAST(N'2024-06-12T13:25:44.123' AS DateTime), 0)
GO
INSERT [dbo].[Contact] ([ID], [QuestionCategory], [Name], [Sex], [Phone], [QuestionContent], [EmployeeID], [SetTime], [Finished]) VALUES (7, N'建議與意見', N'詹國樑', 0, N'0910712708', N'我想打人', NULL, CAST(N'2024-06-12T13:30:09.150' AS DateTime), 0)
GO
INSERT [dbo].[Contact] ([ID], [QuestionCategory], [Name], [Sex], [Phone], [QuestionContent], [EmployeeID], [SetTime], [Finished]) VALUES (8, N'餐飲業合作', N'詹國樑', 0, N'0910712708', N'我想打人', NULL, CAST(N'2024-06-12T13:31:36.747' AS DateTime), 0)
GO
INSERT [dbo].[Contact] ([ID], [QuestionCategory], [Name], [Sex], [Phone], [QuestionContent], [EmployeeID], [SetTime], [Finished]) VALUES (9, N'市場合作', N'詹國樑', 0, N'0910712708', N'我想要合作', NULL, CAST(N'2024-06-12T13:47:59.970' AS DateTime), 0)
GO
INSERT [dbo].[Contact] ([ID], [QuestionCategory], [Name], [Sex], [Phone], [QuestionContent], [EmployeeID], [SetTime], [Finished]) VALUES (10, N'餐飲業合作', N'詹國樑', 1, N'0910712708', N'我想合作', NULL, CAST(N'2024-06-12T14:25:05.747' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (1, N'張玉芬', N'pwHbtf59d123', N'zhangyufen@gmail.com', N'0912345678', N'台北市信義區忠孝東路四段100號')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (2, N'李明宇', N'abc4zhzt556', N'limingyu@gmail.com', N'0923456789', N'新北市板橋區中山路一段20號')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (3, N'王美玲', N'passwogxhx5962zhrd', N'wangmeiling@gmail.com', N'0934567890', N'桃園市中壢區中北路三段30號')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (4, N'趙偉光', N'19523pwsgaefd', N'zhaoweiguang@gmail.com', N'0945678901', N'台中市西屯區文心路二段200號')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (5, N'鄭佳玲', N'qwerasrg599ty', N'zhengjialing@gmail.com', N'0956789012', N'台南市安南區安中路一段10號')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (6, N'陳育男', N'wedwagr589e888', N'chenyunan@gmail.com', N'0967890123', N'高雄市三民區大昌二路40號')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (7, N'劉雅惠', N'iloveyarega2ou', N'liuyahui@gmail.com', N'0978901234', N'基隆市中正區仁愛路一段50號')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (8, N'黃俊賢', N'edwedeg855298862', N'huangjunxian@gmail.com', N'0989012345', N'新竹市東區光復路二段60號')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (9, N'林怡君', N'asdrgwr85889fgh', N'linyijun@gmail.com', N'0990123456', N'嘉義市西區興業西路三段70號')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (10, N'吳政宏', N'passethe9word12', N'wuzhenghong@gmail.com', N'0912345678', N'屏東縣屏東市民生路四段80號')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (11, N'楊衍呈
', N'ABDeth829614', N'randomemail1@gmail.com', N'0915123456
', N'台北市中山區復興北路100號
')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (12, N'范惟臻
', N'XYZZ9teh59876', N'myrandomemail23@gmail.com
', N'0978234567

', N'新北市板橋區文化路二段150巷20號
')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (13, N'孫振秀
', N'PQReth48S4567', N'testemail4567@gmail.com', N'
0987345678', N'高雄市前鎮區中華五路1000號')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (14, N'郭丞盈
', N'LMNOhet59eh7890
', N'emailuser789@gmail.com', N'0956543210', N'台中市西屯區文心路四段300號')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (15, N'李樂洋', N'vrsgrsQWF5PW', N'nestor8657@gmail.com', N'0931636398', N'苗栗縣,三灣鄉,下林坪87號')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (16, N'程寶育', N'68dsggse5ty9W', N'elijah7918@gmail.com', N'0955198990', N'桃園市桃園區南豐三街24號')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (17, N'邱瑞騏', N'G8q7sg3sge6S8', N'jillian9016@gmail.com', N'0953296887', N'臺中市北屯區河北二街9號5樓')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (18, N'潘勝恩', N'p785wsgrsegV63', N'davis3560@gmail.com', N'0920256761', N'新竹縣芎林鄉文忠街53號12樓')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (19, N'呂寶諄', N'v6kLsgeg2ypZ', N'caulfield332@gmail.com', N'0922564117', N'新北市泰山區明志路３段52號7樓')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (20, N'林光忠', N'uDW3gsggV7VD', N'baker215@gmail.com', N'0910813315', N'高雄市三民區建元路75號')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (21, N'李姿曄', N'NPs6uktG23m', N'price8123@gmail.com', N'0920342807', N'臺北市中山區民生東路２段13號')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (22, N'馬宛永', N'58595295srgsrg', N'melanie5743@gmail.com', N'0918247699', N'桃園市中壢區興國路73號5樓之15')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (23, N'簡帆謙', N'degase292996', N'torres3347@gmail.com', N'0919852261', N'新北市樹林區中和街71號')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (24, N'張冬言', N'k859aggdaup9L', N'kenneth2972@gmail.com', N'0988143349', N'桃園市桃園區泰昌七街76號5樓')
GO
INSERT [dbo].[Customer] ([ID], [Name], [Pwd], [Email], [Phone], [Address]) VALUES (25, N'曉華ABC', N'dav26296dav', N'285828kiu@gmail.com', N'0900000000', N'台中市地區')
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 
GO
INSERT [dbo].[Employee] ([ID], [Name], [BirthDate], [HireDate], [Address], [Phone], [Email], [Pwd], [Department]) VALUES (1, N'王成明', CAST(N'1985-03-15T00:00:00' AS SmallDateTime), CAST(N'2010-07-20T00:00:00' AS SmallDateTime), N'台北市信義區忠孝東路1段', N'0912345678', N'wang.chengming@gmail.com', N'5959sdvd', N'服務部門')
GO
INSERT [dbo].[Employee] ([ID], [Name], [BirthDate], [HireDate], [Address], [Phone], [Email], [Pwd], [Department]) VALUES (2, N'李玉美', CAST(N'1990-11-28T00:00:00' AS SmallDateTime), CAST(N'2015-02-10T00:00:00' AS SmallDateTime), N'新北市板橋區中山路2段', N'0987654321', N'li.yumei@gmail.com', N'599ss59sdvd', N'服務部門')
GO
INSERT [dbo].[Employee] ([ID], [Name], [BirthDate], [HireDate], [Address], [Phone], [Email], [Pwd], [Department]) VALUES (3, N'張明偉', CAST(N'1988-05-10T00:00:00' AS SmallDateTime), CAST(N'2012-09-15T00:00:00' AS SmallDateTime), N'桃園市中壢區中正路3段', N'0934567890', N'zhang.mingwei@gmail.com', N'3ssfsdvd', N'行銷部門')
GO
INSERT [dbo].[Employee] ([ID], [Name], [BirthDate], [HireDate], [Address], [Phone], [Email], [Pwd], [Department]) VALUES (4, N'陳美玲', CAST(N'1995-08-20T00:00:00' AS SmallDateTime), CAST(N'2018-04-05T00:00:00' AS SmallDateTime), N'高雄市三民區大昌路4段', N'0923456789', N'chen.meiling@gmail.com', N'595ht9sdvd', N'行銷部門')
GO
INSERT [dbo].[Employee] ([ID], [Name], [BirthDate], [HireDate], [Address], [Phone], [Email], [Pwd], [Department]) VALUES (5, N'劉大勇', CAST(N'1983-06-18T00:00:00' AS SmallDateTime), CAST(N'2009-12-12T00:00:00' AS SmallDateTime), N'台中市北區中清路5段', N'0978123456', N'liu.dayong@gmail.com', N'59s8859sdvd', N'服務部門')
GO
INSERT [dbo].[Employee] ([ID], [Name], [BirthDate], [HireDate], [Address], [Phone], [Email], [Pwd], [Department]) VALUES (6, N'林秀娟', CAST(N'1991-09-25T00:00:00' AS SmallDateTime), CAST(N'2016-03-08T00:00:00' AS SmallDateTime), N'彰化縣彰化市中山路6段', N'0922334455', N'lin.xiujuan@gmail.com', N'59f5559sdvd', N'服務部門')
GO
INSERT [dbo].[Employee] ([ID], [Name], [BirthDate], [HireDate], [Address], [Phone], [Email], [Pwd], [Department]) VALUES (7, N'蔡明德', CAST(N'1987-02-14T00:00:00' AS SmallDateTime), CAST(N'2011-08-18T00:00:00' AS SmallDateTime), N'嘉義市西區民生路7段', N'0938675309', N'tsai.mingde@gmail.com', N'5959sdd5vd', N'行銷部門')
GO
INSERT [dbo].[Employee] ([ID], [Name], [BirthDate], [HireDate], [Address], [Phone], [Email], [Pwd], [Department]) VALUES (8, N'鄭志明', CAST(N'1984-10-30T00:00:00' AS SmallDateTime), CAST(N'2013-05-22T00:00:00' AS SmallDateTime), N'台南市東區長榮路8段', N'0987654321', N'zheng.zhiming@gmail.com', N'5sdvs5dd', N'服務部門')
GO
INSERT [dbo].[Employee] ([ID], [Name], [BirthDate], [HireDate], [Address], [Phone], [Email], [Pwd], [Department]) VALUES (9, N'陳雨', CAST(N'1992-04-12T00:00:00' AS SmallDateTime), CAST(N'2017-10-03T00:00:00' AS SmallDateTime), N'苗栗縣苗栗市中正路9段', N'0912345678', N'xu.xiaomei@gmail.com', N'610hdb00', N'行銷部門')
GO
INSERT [dbo].[Employee] ([ID], [Name], [BirthDate], [HireDate], [Address], [Phone], [Email], [Pwd], [Department]) VALUES (10, N'黃偉強', CAST(N'1986-12-08T00:00:00' AS SmallDateTime), CAST(N'2014-11-28T00:00:00' AS SmallDateTime), N'宜蘭縣宜蘭市中山路10段', N'0987654321', N'huang.weiqiang@gmail.com', N'66lhfes000', N'服務部門')
GO
INSERT [dbo].[Employee] ([ID], [Name], [BirthDate], [HireDate], [Address], [Phone], [Email], [Pwd], [Department]) VALUES (11, N'洪尹茜', CAST(N'1980-02-21T00:00:00' AS SmallDateTime), CAST(N'2019-07-16T00:00:00' AS SmallDateTime), N'基隆市中山區文明路76號', N'0930871163', N'lannister2355@gmail.com', N'650qdqf00', N'服務部門')
GO
INSERT [dbo].[Employee] ([ID], [Name], [BirthDate], [HireDate], [Address], [Phone], [Email], [Pwd], [Department]) VALUES (12, N'潘奕得', CAST(N'1967-10-20T00:00:00' AS SmallDateTime), CAST(N'2004-02-11T00:00:00' AS SmallDateTime), N'臺中市太平區太平十六街88號', N'0925800677', N'ruiz4770@gmail.com', N'59555d', N'服務部門')
GO
INSERT [dbo].[Employee] ([ID], [Name], [BirthDate], [HireDate], [Address], [Phone], [Email], [Pwd], [Department]) VALUES (13, N'林材祟', CAST(N'1979-02-23T00:00:00' AS SmallDateTime), CAST(N'2009-06-10T00:00:00' AS SmallDateTime), N'雲林縣林內鄉三星14號', N'0971447787', N'george321@gmail.com', N'62fhws000', N'行銷部門')
GO
INSERT [dbo].[Employee] ([ID], [Name], [BirthDate], [HireDate], [Address], [Phone], [Email], [Pwd], [Department]) VALUES (14, N'鐘汝清', CAST(N'1975-06-05T00:00:00' AS SmallDateTime), CAST(N'2001-09-05T00:00:00' AS SmallDateTime), N'桃園市桃園區春日路97號', N'0922531865', N'witton8864@gmail.com', N'670gww00', N'服務部門')
GO
INSERT [dbo].[Employee] ([ID], [Name], [BirthDate], [HireDate], [Address], [Phone], [Email], [Pwd], [Department]) VALUES (15, N'陳思江', CAST(N'2001-08-02T00:00:00' AS SmallDateTime), CAST(N'2024-04-01T00:00:00' AS SmallDateTime), N'臺中市北區中華路２段3號', N'0927507570', N'anthony7871@gmail.com', N'590ggw00', N'服務部門')
GO
INSERT [dbo].[Employee] ([ID], [Name], [BirthDate], [HireDate], [Address], [Phone], [Email], [Pwd], [Department]) VALUES (16, N'趙俊泛', CAST(N'1972-05-24T00:00:00' AS SmallDateTime), CAST(N'2008-06-11T00:00:00' AS SmallDateTime), N'臺北市大安區復興南路１段72號', N'0914465746', N'richards3836@gmail.com', N' 64gwh000', N'服務部門')
GO
INSERT [dbo].[Employee] ([ID], [Name], [BirthDate], [HireDate], [Address], [Phone], [Email], [Pwd], [Department]) VALUES (17, N'吳理陽', CAST(N'1990-08-23T00:00:00' AS SmallDateTime), CAST(N'2021-09-02T00:00:00' AS SmallDateTime), N'南投縣竹山鎮頂橫街10號11樓', N'0916021190', N'sotomayor6698@gmail.com', N'610egw00', N'服務部門')
GO
INSERT [dbo].[Employee] ([ID], [Name], [BirthDate], [HireDate], [Address], [Phone], [Email], [Pwd], [Department]) VALUES (18, N'程承豐', CAST(N'1986-11-30T00:00:00' AS SmallDateTime), CAST(N'2020-12-16T00:00:00' AS SmallDateTime), N'臺中市南屯區萬和路１段66號5樓', N'0971806124', N'anderson1341@gmail.com', N' 6wgw6000', N'行銷部門')
GO
INSERT [dbo].[Employee] ([ID], [Name], [BirthDate], [HireDate], [Address], [Phone], [Email], [Pwd], [Department]) VALUES (19, N'尤召藍', CAST(N'1985-11-06T00:00:00' AS SmallDateTime), CAST(N'2009-01-21T00:00:00' AS SmallDateTime), N'屏東縣恆春鎮五里路28號8樓', N'0925178969', N'dorothy6360@gmail.com', N'60wgw000', N'服務部門')
GO
INSERT [dbo].[Employee] ([ID], [Name], [BirthDate], [HireDate], [Address], [Phone], [Email], [Pwd], [Department]) VALUES (20, N'陳慧穎', CAST(N'1990-09-19T00:00:00' AS SmallDateTime), CAST(N'2020-02-21T00:00:00' AS SmallDateTime), N'新北市瑞芳區中山路70號', N'0921718536', N'evie6202@gmail.com', N'65wgjiu000', N'服務部門')
GO
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Meal_Order] ON 
GO
INSERT [dbo].[Meal_Order] ([ID], [CustomerID], [OderTime], [LumpSum], [OrderFinished], [EmployeeID]) VALUES (1, 1, CAST(N'2024-05-13T08:30:00.000' AS DateTime), 110, 1, 1)
GO
INSERT [dbo].[Meal_Order] ([ID], [CustomerID], [OderTime], [LumpSum], [OrderFinished], [EmployeeID]) VALUES (2, 2, CAST(N'2024-05-13T10:45:00.000' AS DateTime), 180, 1, 10)
GO
INSERT [dbo].[Meal_Order] ([ID], [CustomerID], [OderTime], [LumpSum], [OrderFinished], [EmployeeID]) VALUES (3, 3, CAST(N'2024-05-13T13:15:00.000' AS DateTime), 200, 1, 8)
GO
INSERT [dbo].[Meal_Order] ([ID], [CustomerID], [OderTime], [LumpSum], [OrderFinished], [EmployeeID]) VALUES (4, 4, CAST(N'2024-05-13T15:45:00.000' AS DateTime), 75, 0, 2)
GO
INSERT [dbo].[Meal_Order] ([ID], [CustomerID], [OderTime], [LumpSum], [OrderFinished], [EmployeeID]) VALUES (5, 5, CAST(N'2024-05-13T18:00:00.000' AS DateTime), 240, 0, 5)
GO
SET IDENTITY_INSERT [dbo].[Meal_Order] OFF
GO
INSERT [dbo].[Meal_Order_Details] ([OrderID], [MealID], [Count], [Price], [Finished]) VALUES (1, 6, 1, 110, 1)
GO
INSERT [dbo].[Meal_Order_Details] ([OrderID], [MealID], [Count], [Price], [Finished]) VALUES (2, 11, 3, 60, 1)
GO
INSERT [dbo].[Meal_Order_Details] ([OrderID], [MealID], [Count], [Price], [Finished]) VALUES (3, 3, 2, 100, 1)
GO
INSERT [dbo].[Meal_Order_Details] ([OrderID], [MealID], [Count], [Price], [Finished]) VALUES (4, 14, 1, 75, 0)
GO
INSERT [dbo].[Meal_Order_Details] ([OrderID], [MealID], [Count], [Price], [Finished]) VALUES (5, 5, 1, 240, 0)
GO
SET IDENTITY_INSERT [dbo].[Meals] ON 
GO
INSERT [dbo].[Meals] ([ID], [Name], [Stock]) VALUES (1, N'蔬果沙拉', 25)
GO
INSERT [dbo].[Meals] ([ID], [Name], [Stock]) VALUES (2, N'水果拼盤', 10)
GO
INSERT [dbo].[Meals] ([ID], [Name], [Stock]) VALUES (3, N'蔬菜湯', 5)
GO
INSERT [dbo].[Meals] ([ID], [Name], [Stock]) VALUES (4, N'凱薩沙拉套餐', 10)
GO
INSERT [dbo].[Meals] ([ID], [Name], [Stock]) VALUES (5, N'番茄沙拉套餐', 8)
GO
INSERT [dbo].[Meals] ([ID], [Name], [Stock]) VALUES (6, N'水果冰沙', 6)
GO
INSERT [dbo].[Meals] ([ID], [Name], [Stock]) VALUES (7, N'蘋果沙拉套餐', 25)
GO
INSERT [dbo].[Meals] ([ID], [Name], [Stock]) VALUES (8, N'草莓甜品', 32)
GO
INSERT [dbo].[Meals] ([ID], [Name], [Stock]) VALUES (9, N'芒果冰沙', 47)
GO
INSERT [dbo].[Meals] ([ID], [Name], [Stock]) VALUES (10, N'蔬菜沙拉', 83)
GO
INSERT [dbo].[Meals] ([ID], [Name], [Stock]) VALUES (11, N'綠茶', 20)
GO
INSERT [dbo].[Meals] ([ID], [Name], [Stock]) VALUES (12, N'烏龍茶', 11)
GO
INSERT [dbo].[Meals] ([ID], [Name], [Stock]) VALUES (13, N'紅茶', 30)
GO
INSERT [dbo].[Meals] ([ID], [Name], [Stock]) VALUES (14, N'花果茶', 25)
GO
INSERT [dbo].[Meals] ([ID], [Name], [Stock]) VALUES (15, N'鐵觀音', 26)
GO
INSERT [dbo].[Meals] ([ID], [Name], [Stock]) VALUES (16, N'龍井茶', 8)
GO
SET IDENTITY_INSERT [dbo].[Meals] OFF
GO
INSERT [dbo].[News] ([ID], [NewsTitle], [NewsContent], [SetTime], [CategoryID], [Image]) VALUES (1, N'蘋果即將收成', N'我們的果樹即將迎來一輪新的採摘季節！目前園內有許多蘋果已快成熟。我們正忙碌地準備迎接這次豐收。除了有提供寄送服務，也歡迎您親自前往庄園採摘，我們期待您的蒞臨！', CAST(N'2024-07-02T10:45:20.000' AS DateTime), 1, N'~/image/news1.jpg')
GO
INSERT [dbo].[News] ([ID], [NewsTitle], [NewsContent], [SetTime], [CategoryID], [Image]) VALUES (2, N'品嚐新鮮水果', N'隨著夏日的到來，我們為您帶來了一場特別的活動！在本月，只要您前來果茶庄園，您將有機會品嚐到我們最新鮮的水果。帶上家人和朋友，一起來果茶庄園度過一個愉快的週末吧！', CAST(N'2024-06-29T09:20:10.000' AS DateTime), 1, N'~/image/news2.jpg')
GO
INSERT [dbo].[News] ([ID], [NewsTitle], [NewsContent], [SetTime], [CategoryID], [Image]) VALUES (3, N'家庭日，果茶庄園親子活動', N'果茶庄園將舉辦一場特別的家庭日活動！我們將為您和您的小朋友準備一系列有趣的親子活動，包括果實採摘、親子遊戲等等。邀請您與家人一同到果茶庄園體驗。', CAST(N'2024-06-25T08:30:20.000' AS DateTime), 1, N'~/image/news3.jpg')
GO
INSERT [dbo].[News] ([ID], [NewsTitle], [NewsContent], [SetTime], [CategoryID], [Image]) VALUES (4, N'果茶庄園免費試喝', N'我們提供果茶試喝活動，歡迎來試喝選購', CAST(N'2024-06-18T15:09:22.000' AS DateTime), 1, N'~/image/news4.jpg')
GO
INSERT [dbo].[News] ([ID], [NewsTitle], [NewsContent], [SetTime], [CategoryID], [Image]) VALUES (5, N'消費贈送活動', N'在本月期間，凡購買我們的柑橘草本茶，即可獲得免費蘋果一顆。', CAST(N'2024-05-29T13:35:40.000' AS DateTime), 1, N'~/image/news5.jpg')
GO
INSERT [dbo].[News] ([ID], [NewsTitle], [NewsContent], [SetTime], [CategoryID], [Image]) VALUES (6, N'新品推出', N'我們推出了新品——金鑽鳳梨紅茶。這款獨特的紅茶融合了我們農場的金鑽鳳梨，金鑽鳳梨的甜蜜風味和紅茶的香濃口感完美融合，將給您帶來一份清新、爽口的味覺享受。', CAST(N'2024-05-17T11:10:55.000' AS DateTime), 1, N'~/image/news6.jpg')
GO
INSERT [dbo].[News] ([ID], [NewsTitle], [NewsContent], [SetTime], [CategoryID], [Image]) VALUES (7, N'住宿優惠', N'平日入住享住宿優惠，詳情請洽客服人員', CAST(N'2024-03-05T09:15:30.000' AS DateTime), 2, N'~/image/news7.jpg')
GO
SET IDENTITY_INSERT [dbo].[Room_Category] ON 
GO
INSERT [dbo].[Room_Category] ([CategoryID], [Name], [Count], [OccupyNumber]) VALUES (1, N'單人房', 3, 1)
GO
INSERT [dbo].[Room_Category] ([CategoryID], [Name], [Count], [OccupyNumber]) VALUES (2, N'雙人房', 4, 2)
GO
INSERT [dbo].[Room_Category] ([CategoryID], [Name], [Count], [OccupyNumber]) VALUES (3, N'三人房', 2, 3)
GO
INSERT [dbo].[Room_Category] ([CategoryID], [Name], [Count], [OccupyNumber]) VALUES (4, N'四人房', 3, 4)
GO
SET IDENTITY_INSERT [dbo].[Room_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Room_Order] ON 
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (1, 1, CAST(N'2023-01-02T10:37:01.000' AS DateTime), CAST(N'2023-03-15T16:17:00' AS SmallDateTime), CAST(N'2023-03-16T08:41:00' AS SmallDateTime), 1, 2, 1800)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (2, 2, CAST(N'2023-01-09T14:20:44.000' AS DateTime), CAST(N'2023-03-16T19:53:00' AS SmallDateTime), CAST(N'2023-03-17T09:46:00' AS SmallDateTime), 1, 5, 1800)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (3, 3, CAST(N'2023-01-23T18:58:33.000' AS DateTime), CAST(N'2023-04-03T13:11:00' AS SmallDateTime), CAST(N'2023-04-05T05:18:00' AS SmallDateTime), 1, 6, 1800)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (4, 4, CAST(N'2023-01-30T09:14:15.000' AS DateTime), CAST(N'2023-04-06T16:19:00' AS SmallDateTime), CAST(N'2023-04-08T12:42:00' AS SmallDateTime), 1, 8, 2400)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (5, 5, CAST(N'2023-02-06T01:11:21.000' AS DateTime), CAST(N'2023-04-07T19:20:00' AS SmallDateTime), CAST(N'2023-04-08T10:11:00' AS SmallDateTime), 1, 10, 1800)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (6, 11, CAST(N'2023-02-08T02:27:18.000' AS DateTime), CAST(N'2023-04-08T18:18:00' AS SmallDateTime), CAST(N'2023-04-10T07:45:00' AS SmallDateTime), 1, 16, 1800)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (7, 5, CAST(N'2023-02-11T00:53:31.000' AS DateTime), CAST(N'2023-04-14T22:02:00' AS SmallDateTime), CAST(N'2023-04-18T10:15:00' AS SmallDateTime), 1, 10, 2400)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (8, 12, CAST(N'2023-02-18T22:58:47.000' AS DateTime), CAST(N'2023-04-18T17:00:00' AS SmallDateTime), CAST(N'2023-04-19T10:37:00' AS SmallDateTime), 1, 14, 3100)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (9, 16, CAST(N'2023-02-21T15:58:12.000' AS DateTime), CAST(N'2023-04-21T15:49:00' AS SmallDateTime), CAST(N'2023-04-23T06:53:00' AS SmallDateTime), 1, 1, 3100)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (10, 1, CAST(N'2023-02-25T10:54:08.000' AS DateTime), CAST(N'2023-04-27T22:51:00' AS SmallDateTime), CAST(N'2023-04-28T09:23:00' AS SmallDateTime), 1, 8, 5000)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (11, 24, CAST(N'2023-03-27T10:51:41.000' AS DateTime), CAST(N'2023-06-04T17:42:00' AS SmallDateTime), CAST(N'2023-06-06T12:41:00' AS SmallDateTime), 1, 15, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (12, 15, CAST(N'2023-04-16T18:16:43.000' AS DateTime), CAST(N'2023-06-12T13:09:00' AS SmallDateTime), CAST(N'2023-06-13T08:37:00' AS SmallDateTime), 1, 6, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (13, 4, CAST(N'2023-04-26T02:59:56.000' AS DateTime), CAST(N'2023-06-19T14:55:00' AS SmallDateTime), CAST(N'2023-06-20T09:08:00' AS SmallDateTime), 1, 5, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (14, 20, CAST(N'2023-05-05T00:43:53.000' AS DateTime), CAST(N'2023-07-08T16:10:00' AS SmallDateTime), CAST(N'2023-07-10T10:05:00' AS SmallDateTime), 1, 14, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (15, 22, CAST(N'2023-05-21T21:40:04.000' AS DateTime), CAST(N'2023-07-13T18:28:00' AS SmallDateTime), CAST(N'2023-07-14T09:19:00' AS SmallDateTime), 1, 10, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (16, 19, CAST(N'2023-06-09T08:35:03.000' AS DateTime), CAST(N'2023-08-06T13:48:00' AS SmallDateTime), CAST(N'2023-08-08T05:12:00' AS SmallDateTime), 1, 2, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (17, 23, CAST(N'2023-06-17T03:50:02.000' AS DateTime), CAST(N'2023-08-28T14:35:00' AS SmallDateTime), CAST(N'2023-08-29T04:09:00' AS SmallDateTime), 1, 5, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (18, 9, CAST(N'2023-06-30T01:22:47.000' AS DateTime), CAST(N'2023-09-11T15:24:00' AS SmallDateTime), CAST(N'2023-09-12T11:02:00' AS SmallDateTime), 1, 17, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (19, 17, CAST(N'2023-07-09T11:36:09.000' AS DateTime), CAST(N'2023-09-13T17:46:00' AS SmallDateTime), CAST(N'2023-09-14T12:30:00' AS SmallDateTime), 1, 19, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (20, 7, CAST(N'2023-07-10T01:29:30.000' AS DateTime), CAST(N'2023-09-24T15:59:00' AS SmallDateTime), CAST(N'2023-09-25T05:13:00' AS SmallDateTime), 1, 16, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (21, 18, CAST(N'2023-07-12T20:55:20.000' AS DateTime), CAST(N'2023-10-08T13:01:00' AS SmallDateTime), CAST(N'2023-10-10T06:18:00' AS SmallDateTime), 1, 11, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (22, 14, CAST(N'2023-07-21T01:58:08.000' AS DateTime), CAST(N'2023-10-09T21:56:00' AS SmallDateTime), CAST(N'2023-10-11T08:32:00' AS SmallDateTime), 1, 1, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (23, 1, CAST(N'2023-07-25T21:34:34.000' AS DateTime), CAST(N'2023-10-24T19:16:00' AS SmallDateTime), CAST(N'2023-10-25T06:23:00' AS SmallDateTime), 1, 12, 2400)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (24, 21, CAST(N'2023-07-26T06:00:17.000' AS DateTime), CAST(N'2023-11-12T12:29:00' AS SmallDateTime), CAST(N'2023-11-13T05:16:00' AS SmallDateTime), 1, 2, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (25, 10, CAST(N'2023-07-28T15:08:29.000' AS DateTime), CAST(N'2023-11-22T12:23:00' AS SmallDateTime), CAST(N'2023-11-23T10:00:00' AS SmallDateTime), 1, 15, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (26, 2, CAST(N'2023-08-07T13:46:12.000' AS DateTime), CAST(N'2023-12-22T22:26:00' AS SmallDateTime), CAST(N'2023-12-23T08:02:00' AS SmallDateTime), 1, 19, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (27, 13, CAST(N'2023-08-10T01:04:57.000' AS DateTime), CAST(N'2023-12-26T16:39:00' AS SmallDateTime), CAST(N'2023-12-27T09:04:00' AS SmallDateTime), 1, 6, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (28, 6, CAST(N'2023-08-10T02:12:47.000' AS DateTime), CAST(N'2023-12-29T15:18:00' AS SmallDateTime), CAST(N'2023-12-30T07:32:00' AS SmallDateTime), 1, 12, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (29, 8, CAST(N'2023-09-24T20:47:58.000' AS DateTime), CAST(N'2024-01-01T13:42:00' AS SmallDateTime), CAST(N'2024-01-02T12:17:00' AS SmallDateTime), 1, 11, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (30, 10, CAST(N'2023-09-29T09:59:51.000' AS DateTime), CAST(N'2024-01-17T21:24:00' AS SmallDateTime), CAST(N'2024-01-19T05:39:00' AS SmallDateTime), 1, 17, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (31, 15, CAST(N'2023-10-04T20:31:49.000' AS DateTime), CAST(N'2024-01-17T22:35:00' AS SmallDateTime), CAST(N'2024-01-20T10:06:00' AS SmallDateTime), 1, 20, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (32, 23, CAST(N'2023-10-16T09:18:55.000' AS DateTime), CAST(N'2024-02-19T21:37:00' AS SmallDateTime), CAST(N'2024-02-20T06:26:00' AS SmallDateTime), 1, 2, 1800)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (33, 19, CAST(N'2023-10-24T10:16:33.000' AS DateTime), CAST(N'2024-02-22T20:54:00' AS SmallDateTime), CAST(N'2024-02-23T08:43:00' AS SmallDateTime), 0, 10, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (34, 22, CAST(N'2023-11-25T10:26:20.000' AS DateTime), CAST(N'2024-02-26T20:55:00' AS SmallDateTime), CAST(N'2024-02-27T06:23:00' AS SmallDateTime), 1, 8, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (35, 19, CAST(N'2023-11-26T13:40:22.000' AS DateTime), CAST(N'2024-03-02T16:51:00' AS SmallDateTime), CAST(N'2024-03-03T08:09:00' AS SmallDateTime), 1, 20, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (36, 1, CAST(N'2023-12-02T14:58:44.000' AS DateTime), CAST(N'2024-03-09T23:40:00' AS SmallDateTime), CAST(N'2024-03-10T08:26:00' AS SmallDateTime), 1, 1, 2400)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (37, 18, CAST(N'2023-12-26T12:26:17.000' AS DateTime), CAST(N'2024-04-05T15:25:00' AS SmallDateTime), CAST(N'2024-04-06T10:58:00' AS SmallDateTime), 1, 5, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (38, 11, CAST(N'2024-01-02T18:17:25.000' AS DateTime), CAST(N'2024-04-10T22:36:00' AS SmallDateTime), CAST(N'2024-04-11T10:04:00' AS SmallDateTime), 1, 6, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (39, 20, CAST(N'2024-02-25T11:04:45.000' AS DateTime), CAST(N'2024-04-20T23:40:00' AS SmallDateTime), CAST(N'2024-04-21T08:26:00' AS SmallDateTime), 1, 14, NULL)
GO
INSERT [dbo].[Room_Order] ([ID], [CustomerID], [OrderTime], [CheckIn], [CheckOut], [OrderFinished], [EmployeeID], [SumPrice]) VALUES (40, 9, CAST(N'2024-03-15T10:23:12.000' AS DateTime), CAST(N'2024-05-07T20:22:00' AS SmallDateTime), CAST(N'2024-05-08T10:38:00' AS SmallDateTime), 1, 8, NULL)
GO
SET IDENTITY_INSERT [dbo].[Room_Order] OFF
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (1, 1, 1800)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (2, 2, 1800)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (3, 3, 1800)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (4, 4, 2400)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (5, 2, 1800)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (6, 1, 1800)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (7, 4, 2400)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (8, 8, 3300)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (9, 9, 3300)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (10, 10, 5500)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (11, 11, 5500)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (12, 12, 5500)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (13, 5, 2400)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (14, 6, 2400)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (15, 7, 2400)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (16, 3, 1800)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (17, 3, 1800)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (18, 2, 1800)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (19, 7, 2400)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (20, 9, 3300)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (21, 10, 5500)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (22, 4, 2400)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (23, 6, 2400)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (24, 9, 3300)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (25, 10, 5500)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (26, 1, 1800)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (27, 2, 1800)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (28, 4, 2400)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (29, 3, 1800)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (30, 1, 1800)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (31, 4, 2400)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (32, 2, 1800)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (33, 3, 1800)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (34, 2, 1800)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (35, 1, 1800)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (36, 4, 2400)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (37, 2, 1800)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (38, 3, 1800)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (39, 1, 1800)
GO
INSERT [dbo].[Room_Order_Details] ([OrderID], [RoomID], [Price]) VALUES (40, 4, 2400)
GO
SET IDENTITY_INSERT [dbo].[Rooms] ON 
GO
INSERT [dbo].[Rooms] ([ID], [CategoryID], [HasReserved], [HasOccupied], [CanReserve], [CanOccupy], [Price], [Discount], [Image]) VALUES (1, 1, 0, 0, 1, 1, 1800, 0, N'~/image/room11.jpg')
GO
INSERT [dbo].[Rooms] ([ID], [CategoryID], [HasReserved], [HasOccupied], [CanReserve], [CanOccupy], [Price], [Discount], [Image]) VALUES (2, 1, 0, 0, 1, 1, 1800, 0, N'~/image/room12.jpg')
GO
INSERT [dbo].[Rooms] ([ID], [CategoryID], [HasReserved], [HasOccupied], [CanReserve], [CanOccupy], [Price], [Discount], [Image]) VALUES (3, 1, 1, 1, 0, 0, 1800, 0, N'~/image/room13.jpg')
GO
INSERT [dbo].[Rooms] ([ID], [CategoryID], [HasReserved], [HasOccupied], [CanReserve], [CanOccupy], [Price], [Discount], [Image]) VALUES (4, 2, 1, 1, 0, 0, 2400, 0, N'~/image/room21.jpg')
GO
INSERT [dbo].[Rooms] ([ID], [CategoryID], [HasReserved], [HasOccupied], [CanReserve], [CanOccupy], [Price], [Discount], [Image]) VALUES (5, 2, 0, 0, 1, 1, 2400, 0, N'~/image/room22.jpg')
GO
INSERT [dbo].[Rooms] ([ID], [CategoryID], [HasReserved], [HasOccupied], [CanReserve], [CanOccupy], [Price], [Discount], [Image]) VALUES (6, 2, 1, 1, 0, 0, 2400, 0, N'~/image/room23.jpg')
GO
INSERT [dbo].[Rooms] ([ID], [CategoryID], [HasReserved], [HasOccupied], [CanReserve], [CanOccupy], [Price], [Discount], [Image]) VALUES (7, 2, 0, 0, 1, 1, 2400, 0, N'~/image/room24.jpg')
GO
INSERT [dbo].[Rooms] ([ID], [CategoryID], [HasReserved], [HasOccupied], [CanReserve], [CanOccupy], [Price], [Discount], [Image]) VALUES (8, 3, 0, 0, 1, 1, 3300, 200, N'~/image/room31.jpg')
GO
INSERT [dbo].[Rooms] ([ID], [CategoryID], [HasReserved], [HasOccupied], [CanReserve], [CanOccupy], [Price], [Discount], [Image]) VALUES (9, 3, 1, 1, 0, 0, 3300, 200, N'~/image/room32.jpg')
GO
INSERT [dbo].[Rooms] ([ID], [CategoryID], [HasReserved], [HasOccupied], [CanReserve], [CanOccupy], [Price], [Discount], [Image]) VALUES (10, 4, 0, 0, 1, 1, 5500, 500, N'~/image/room41.jpg')
GO
INSERT [dbo].[Rooms] ([ID], [CategoryID], [HasReserved], [HasOccupied], [CanReserve], [CanOccupy], [Price], [Discount], [Image]) VALUES (11, 4, 1, 1, 0, 0, 5500, 500, N'~/image/room42.jpg')
GO
INSERT [dbo].[Rooms] ([ID], [CategoryID], [HasReserved], [HasOccupied], [CanReserve], [CanOccupy], [Price], [Discount], [Image]) VALUES (12, 4, 1, 1, 0, 0, 5500, 500, N'~/image/room43.jpg')
GO
SET IDENTITY_INSERT [dbo].[Rooms] OFF
GO
ALTER TABLE [dbo].[Agricultural_Order]  WITH CHECK ADD  CONSTRAINT [FK_Agricultural_Order_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Agricultural_Order] CHECK CONSTRAINT [FK_Agricultural_Order_Customer]
GO
ALTER TABLE [dbo].[Agricultural_Order]  WITH CHECK ADD  CONSTRAINT [FK_Agricultural_Order_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Agricultural_Order] CHECK CONSTRAINT [FK_Agricultural_Order_Employee]
GO
ALTER TABLE [dbo].[Agricultural_Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_Agricultural_Order_Details_Agricultural_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Agricultural_Order] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Agricultural_Order_Details] CHECK CONSTRAINT [FK_Agricultural_Order_Details_Agricultural_Order]
GO
ALTER TABLE [dbo].[Agricultural_Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_Agricultural_Order_Details_Agricultural_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Agricultural_Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Agricultural_Order_Details] CHECK CONSTRAINT [FK_Agricultural_Order_Details_Agricultural_Products]
GO
ALTER TABLE [dbo].[Agricultural_Products]  WITH CHECK ADD  CONSTRAINT [FK_Agricultural_Products_Agricultural_Products_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Agricultural_Products_Category] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Agricultural_Products] CHECK CONSTRAINT [FK_Agricultural_Products_Agricultural_Products_Category]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_Employee]
GO
ALTER TABLE [dbo].[Meal_Order]  WITH CHECK ADD  CONSTRAINT [FK_Meal_Order_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Meal_Order] CHECK CONSTRAINT [FK_Meal_Order_Customer]
GO
ALTER TABLE [dbo].[Meal_Order]  WITH CHECK ADD  CONSTRAINT [FK_Meal_Order_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Meal_Order] CHECK CONSTRAINT [FK_Meal_Order_Employee]
GO
ALTER TABLE [dbo].[Meal_Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_Meal_Order_Details_Meal_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Meal_Order] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Meal_Order_Details] CHECK CONSTRAINT [FK_Meal_Order_Details_Meal_Order]
GO
ALTER TABLE [dbo].[Meal_Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_Meal_Order_Details_Meals] FOREIGN KEY([MealID])
REFERENCES [dbo].[Meals] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Meal_Order_Details] CHECK CONSTRAINT [FK_Meal_Order_Details_Meals]
GO
ALTER TABLE [dbo].[Room_Order]  WITH CHECK ADD  CONSTRAINT [FK_Room_Order_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Room_Order] CHECK CONSTRAINT [FK_Room_Order_Customer]
GO
ALTER TABLE [dbo].[Room_Order]  WITH CHECK ADD  CONSTRAINT [FK_Room_Order_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Room_Order] CHECK CONSTRAINT [FK_Room_Order_Employee]
GO
ALTER TABLE [dbo].[Room_Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_Room_Order_Details_Room_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Room_Order] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Room_Order_Details] CHECK CONSTRAINT [FK_Room_Order_Details_Room_Order]
GO
ALTER TABLE [dbo].[Room_Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_Room_Order_Details_Rooms] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Rooms] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Room_Order_Details] CHECK CONSTRAINT [FK_Room_Order_Details_Rooms]
GO
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD  CONSTRAINT [FK_Rooms_Room_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Room_Category] ([CategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [FK_Rooms_Room_Category]
GO
