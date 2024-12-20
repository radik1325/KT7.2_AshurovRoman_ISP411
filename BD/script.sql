USE [master]
GO
/****** Object:  Database [MasterPolData]    Script Date: 18.11.2024 16:06:45 ******/
CREATE DATABASE [MasterPolData]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MasterPolData', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\MasterPolData.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MasterPolData_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\MasterPolData_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MasterPolData] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MasterPolData].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MasterPolData] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MasterPolData] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MasterPolData] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MasterPolData] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MasterPolData] SET ARITHABORT OFF 
GO
ALTER DATABASE [MasterPolData] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MasterPolData] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MasterPolData] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MasterPolData] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MasterPolData] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MasterPolData] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MasterPolData] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MasterPolData] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MasterPolData] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MasterPolData] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MasterPolData] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MasterPolData] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MasterPolData] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MasterPolData] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MasterPolData] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MasterPolData] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MasterPolData] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MasterPolData] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MasterPolData] SET  MULTI_USER 
GO
ALTER DATABASE [MasterPolData] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MasterPolData] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MasterPolData] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MasterPolData] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MasterPolData] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MasterPolData] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MasterPolData] SET QUERY_STORE = OFF
GO
USE [MasterPolData]
GO
/****** Object:  Table [dbo].[Adress]    Script Date: 18.11.2024 16:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adress](
	[AdressId] [int] IDENTITY(1,1) NOT NULL,
	[AdressIndex] [int] NOT NULL,
	[AdressArea] [int] NOT NULL,
	[AdressCity] [int] NOT NULL,
	[AdressStreet] [int] NOT NULL,
	[AdressHouse] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Adress] PRIMARY KEY CLUSTERED 
(
	[AdressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 18.11.2024 16:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[AreaId] [int] IDENTITY(1,1) NOT NULL,
	[AreaName] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Area] PRIMARY KEY CLUSTERED 
(
	[AreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 18.11.2024 16:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Director]    Script Date: 18.11.2024 16:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Director](
	[DirectorId] [int] IDENTITY(1,1) NOT NULL,
	[DirectorName] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Director] PRIMARY KEY CLUSTERED 
(
	[DirectorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Index]    Script Date: 18.11.2024 16:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Index](
	[IndexId] [int] IDENTITY(1,1) NOT NULL,
	[IndexName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Index] PRIMARY KEY CLUSTERED 
(
	[IndexId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 18.11.2024 16:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[MaterialTypeId] [nvarchar](50) NOT NULL,
	[MaterialTypeProcent] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[MaterialTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 18.11.2024 16:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[PartnerId] [int] IDENTITY(1,1) NOT NULL,
	[PartnerTypeId] [int] NOT NULL,
	[PartnerName] [nvarchar](100) NOT NULL,
	[PartnerDirectorId] [int] NOT NULL,
	[PartnerEmail] [nvarchar](100) NOT NULL,
	[PartnerPhone] [nvarchar](50) NOT NULL,
	[PartnerAdressId] [int] NOT NULL,
	[PartnerINN] [nvarchar](50) NULL,
	[PartnerRating] [int] NOT NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[PartnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProduct]    Script Date: 18.11.2024 16:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProduct](
	[PartnerProductId] [int] NOT NULL,
	[PartnerProductProductId] [int] NOT NULL,
	[PartnerProductPartnerId] [int] NOT NULL,
	[PartnerProductCountProduct] [int] NOT NULL,
	[PartnerProductDate] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 18.11.2024 16:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] NOT NULL,
	[ProductTypeId] [int] NOT NULL,
	[ProductName] [nvarchar](150) NOT NULL,
	[ProductArticul] [nvarchar](50) NOT NULL,
	[ProductMinCost] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 18.11.2024 16:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[StreetId] [int] IDENTITY(1,1) NOT NULL,
	[StreetName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[StreetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypePartner]    Script Date: 18.11.2024 16:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypePartner](
	[TypePartnerId] [int] IDENTITY(1,1) NOT NULL,
	[TypePartnerName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypePartner] PRIMARY KEY CLUSTERED 
(
	[TypePartnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeProduct]    Script Date: 18.11.2024 16:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeProduct](
	[TypeProductId] [int] NOT NULL,
	[TypeProductName] [nvarchar](100) NOT NULL,
	[TypeProductKoef] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_TypeProduct] PRIMARY KEY CLUSTERED 
(
	[TypeProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Adress] ON 

INSERT [dbo].[Adress] ([AdressId], [AdressIndex], [AdressArea], [AdressCity], [AdressStreet], [AdressHouse]) VALUES (1, 5, 3, 5, 1, N'15')
INSERT [dbo].[Adress] ([AdressId], [AdressIndex], [AdressArea], [AdressCity], [AdressStreet], [AdressHouse]) VALUES (2, 4, 2, 4, 3, N'122')
INSERT [dbo].[Adress] ([AdressId], [AdressIndex], [AdressArea], [AdressCity], [AdressStreet], [AdressHouse]) VALUES (3, 2, 1, 3, 5, N'18')
INSERT [dbo].[Adress] ([AdressId], [AdressIndex], [AdressArea], [AdressCity], [AdressStreet], [AdressHouse]) VALUES (4, 1, 5, 2, 4, N'51')
INSERT [dbo].[Adress] ([AdressId], [AdressIndex], [AdressArea], [AdressCity], [AdressStreet], [AdressHouse]) VALUES (5, 3, 4, 1, 2, N'21')
SET IDENTITY_INSERT [dbo].[Adress] OFF
GO
SET IDENTITY_INSERT [dbo].[Area] ON 

INSERT [dbo].[Area] ([AreaId], [AreaName]) VALUES (1, N'Архангельская область')
INSERT [dbo].[Area] ([AreaId], [AreaName]) VALUES (2, N'Белгородская область')
INSERT [dbo].[Area] ([AreaId], [AreaName]) VALUES (3, N'Кемеровская область')
INSERT [dbo].[Area] ([AreaId], [AreaName]) VALUES (4, N'Ленинградская область')
INSERT [dbo].[Area] ([AreaId], [AreaName]) VALUES (5, N'Московская область')
SET IDENTITY_INSERT [dbo].[Area] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([CityId], [CityName]) VALUES (1, N'город Приморск')
INSERT [dbo].[City] ([CityId], [CityName]) VALUES (2, N'город Реутов')
INSERT [dbo].[City] ([CityId], [CityName]) VALUES (3, N'город Северодвинск')
INSERT [dbo].[City] ([CityId], [CityName]) VALUES (4, N'город Старый Оскол')
INSERT [dbo].[City] ([CityId], [CityName]) VALUES (5, N'город Юрга')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Director] ON 

INSERT [dbo].[Director] ([DirectorId], [DirectorName]) VALUES (1, N'Воробьева Екатерина Валерьевна')
INSERT [dbo].[Director] ([DirectorId], [DirectorName]) VALUES (2, N'Иванова Александра Ивановна')
INSERT [dbo].[Director] ([DirectorId], [DirectorName]) VALUES (3, N'Петров Василий Петрович')
INSERT [dbo].[Director] ([DirectorId], [DirectorName]) VALUES (4, N'Соловьев Андрей Николаевич')
INSERT [dbo].[Director] ([DirectorId], [DirectorName]) VALUES (5, N'Степанов Степан Сергеевич')
SET IDENTITY_INSERT [dbo].[Director] OFF
GO
SET IDENTITY_INSERT [dbo].[Index] ON 

INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (1, N'143960')
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (2, N'164500')
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (3, N'188910')
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (4, N'309500')
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (5, N'652050')
SET IDENTITY_INSERT [dbo].[Index] OFF
GO
INSERT [dbo].[MaterialType] ([MaterialTypeId], [MaterialTypeProcent]) VALUES (N'Тип материала 1', CAST(0.10 AS Decimal(18, 2)))
INSERT [dbo].[MaterialType] ([MaterialTypeId], [MaterialTypeProcent]) VALUES (N'Тип материала 2', CAST(0.95 AS Decimal(18, 2)))
INSERT [dbo].[MaterialType] ([MaterialTypeId], [MaterialTypeProcent]) VALUES (N'Тип материала 3', CAST(0.28 AS Decimal(18, 2)))
INSERT [dbo].[MaterialType] ([MaterialTypeId], [MaterialTypeProcent]) VALUES (N'Тип материала 4', CAST(0.55 AS Decimal(18, 2)))
INSERT [dbo].[MaterialType] ([MaterialTypeId], [MaterialTypeProcent]) VALUES (N'Тип материала 5', CAST(0.34 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[Partner] ON 

INSERT [dbo].[Partner] ([PartnerId], [PartnerTypeId], [PartnerName], [PartnerDirectorId], [PartnerEmail], [PartnerPhone], [PartnerAdressId], [PartnerINN], [PartnerRating]) VALUES (1, 1, N'База Строитель', 2, N'aleksandraivanova@ml.ru', N'4931234567', 1, N'2222455179', 7)
INSERT [dbo].[Partner] ([PartnerId], [PartnerTypeId], [PartnerName], [PartnerDirectorId], [PartnerEmail], [PartnerPhone], [PartnerAdressId], [PartnerINN], [PartnerRating]) VALUES (2, 1, N'МонтажПро', 5, N'stepanov@stepan.ru', N'9128883333', 2, N'5552431140', 10)
INSERT [dbo].[Partner] ([PartnerId], [PartnerTypeId], [PartnerName], [PartnerDirectorId], [PartnerEmail], [PartnerPhone], [PartnerAdressId], [PartnerINN], [PartnerRating]) VALUES (3, 3, N'Паркет 29', 3, N'vppetrov@vl.ru', N'9871235678', 3, N'3333888520', 7)
INSERT [dbo].[Partner] ([PartnerId], [PartnerTypeId], [PartnerName], [PartnerDirectorId], [PartnerEmail], [PartnerPhone], [PartnerAdressId], [PartnerINN], [PartnerRating]) VALUES (4, 2, N'Ремонт и отделка', 1, N'ekaterina.vorobeva@ml.ru', N'4442223311', 4, N'1111520857', 5)
INSERT [dbo].[Partner] ([PartnerId], [PartnerTypeId], [PartnerName], [PartnerDirectorId], [PartnerEmail], [PartnerPhone], [PartnerAdressId], [PartnerINN], [PartnerRating]) VALUES (5, 4, N'Стройсервис', 4, N'ansolovev@st.ru', N'8122233200', 5, N'4440391035', 7)
SET IDENTITY_INSERT [dbo].[Partner] OFF
GO
INSERT [dbo].[PartnerProduct] ([PartnerProductId], [PartnerProductProductId], [PartnerProductPartnerId], [PartnerProductCountProduct], [PartnerProductDate]) VALUES (1, 1, 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[PartnerProduct] ([PartnerProductId], [PartnerProductProductId], [PartnerProductPartnerId], [PartnerProductCountProduct], [PartnerProductDate]) VALUES (2, 3, 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[PartnerProduct] ([PartnerProductId], [PartnerProductProductId], [PartnerProductPartnerId], [PartnerProductCountProduct], [PartnerProductDate]) VALUES (3, 4, 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProduct] ([PartnerProductId], [PartnerProductProductId], [PartnerProductPartnerId], [PartnerProductCountProduct], [PartnerProductDate]) VALUES (4, 2, 3, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[PartnerProduct] ([PartnerProductId], [PartnerProductProductId], [PartnerProductPartnerId], [PartnerProductCountProduct], [PartnerProductDate]) VALUES (5, 5, 3, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[PartnerProduct] ([PartnerProductId], [PartnerProductProductId], [PartnerProductPartnerId], [PartnerProductCountProduct], [PartnerProductDate]) VALUES (6, 3, 3, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProduct] ([PartnerProductId], [PartnerProductProductId], [PartnerProductPartnerId], [PartnerProductCountProduct], [PartnerProductDate]) VALUES (7, 1, 3, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[PartnerProduct] ([PartnerProductId], [PartnerProductProductId], [PartnerProductPartnerId], [PartnerProductCountProduct], [PartnerProductDate]) VALUES (8, 1, 5, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[PartnerProduct] ([PartnerProductId], [PartnerProductProductId], [PartnerProductPartnerId], [PartnerProductCountProduct], [PartnerProductDate]) VALUES (9, 2, 5, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[PartnerProduct] ([PartnerProductId], [PartnerProductProductId], [PartnerProductPartnerId], [PartnerProductCountProduct], [PartnerProductDate]) VALUES (10, 4, 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[PartnerProduct] ([PartnerProductId], [PartnerProductProductId], [PartnerProductPartnerId], [PartnerProductCountProduct], [PartnerProductDate]) VALUES (11, 3, 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[PartnerProduct] ([PartnerProductId], [PartnerProductProductId], [PartnerProductPartnerId], [PartnerProductCountProduct], [PartnerProductDate]) VALUES (12, 5, 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[PartnerProduct] ([PartnerProductId], [PartnerProductProductId], [PartnerProductPartnerId], [PartnerProductCountProduct], [PartnerProductDate]) VALUES (13, 3, 2, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[PartnerProduct] ([PartnerProductId], [PartnerProductProductId], [PartnerProductPartnerId], [PartnerProductCountProduct], [PartnerProductDate]) VALUES (14, 4, 2, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[PartnerProduct] ([PartnerProductId], [PartnerProductProductId], [PartnerProductPartnerId], [PartnerProductCountProduct], [PartnerProductDate]) VALUES (15, 1, 2, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[PartnerProduct] ([PartnerProductId], [PartnerProductProductId], [PartnerProductPartnerId], [PartnerProductCountProduct], [PartnerProductDate]) VALUES (16, 2, 2, 25000, CAST(N'2024-06-12' AS Date))
GO
INSERT [dbo].[Products] ([ProductId], [ProductTypeId], [ProductName], [ProductArticul], [ProductMinCost]) VALUES (1, 3, N'Паркетная доска Ясень темный однополосная 14 мм', N'8758385', CAST(4456.90 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([ProductId], [ProductTypeId], [ProductName], [ProductArticul], [ProductMinCost]) VALUES (2, 3, N'Инженерная доска Дуб Французская елка однополосная 12 мм', N'8858958', CAST(7330.99 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([ProductId], [ProductTypeId], [ProductName], [ProductArticul], [ProductMinCost]) VALUES (3, 1, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', N'7750282', CAST(1799.33 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([ProductId], [ProductTypeId], [ProductName], [ProductArticul], [ProductMinCost]) VALUES (4, 1, N'Ламинат Дуб серый 32 класс 8 мм с фаской', N'7028748', CAST(3890.41 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([ProductId], [ProductTypeId], [ProductName], [ProductArticul], [ProductMinCost]) VALUES (5, 4, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', N'5012543', CAST(5450.59 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[Street] ON 

INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (1, N'улица Лесная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (2, N'улица Парковая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (3, N'улица Рабочая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (4, N'улица Свободы')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (5, N'улица Строителей')
SET IDENTITY_INSERT [dbo].[Street] OFF
GO
SET IDENTITY_INSERT [dbo].[TypePartner] ON 

INSERT [dbo].[TypePartner] ([TypePartnerId], [TypePartnerName]) VALUES (1, N'ЗАО')
INSERT [dbo].[TypePartner] ([TypePartnerId], [TypePartnerName]) VALUES (2, N'ОАО')
INSERT [dbo].[TypePartner] ([TypePartnerId], [TypePartnerName]) VALUES (3, N'ООО')
INSERT [dbo].[TypePartner] ([TypePartnerId], [TypePartnerName]) VALUES (4, N'ПАО')
SET IDENTITY_INSERT [dbo].[TypePartner] OFF
GO
INSERT [dbo].[TypeProduct] ([TypeProductId], [TypeProductName], [TypeProductKoef]) VALUES (1, N'Ламинат', CAST(2.35 AS Decimal(18, 2)))
INSERT [dbo].[TypeProduct] ([TypeProductId], [TypeProductName], [TypeProductKoef]) VALUES (2, N'Массивная доска', CAST(5.15 AS Decimal(18, 2)))
INSERT [dbo].[TypeProduct] ([TypeProductId], [TypeProductName], [TypeProductKoef]) VALUES (3, N'Паркетная доска', CAST(4.34 AS Decimal(18, 2)))
INSERT [dbo].[TypeProduct] ([TypeProductId], [TypeProductName], [TypeProductKoef]) VALUES (4, N'Пробковое покрытие', CAST(1.50 AS Decimal(18, 2)))
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_Area] FOREIGN KEY([AdressArea])
REFERENCES [dbo].[Area] ([AreaId])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_Area]
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_City] FOREIGN KEY([AdressCity])
REFERENCES [dbo].[City] ([CityId])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_City]
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_Index] FOREIGN KEY([AdressIndex])
REFERENCES [dbo].[Index] ([IndexId])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_Index]
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_Street] FOREIGN KEY([AdressStreet])
REFERENCES [dbo].[Street] ([StreetId])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_Street]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_Adress] FOREIGN KEY([PartnerAdressId])
REFERENCES [dbo].[Adress] ([AdressId])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_Adress]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_Director] FOREIGN KEY([PartnerDirectorId])
REFERENCES [dbo].[Director] ([DirectorId])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_Director]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_TypePartner] FOREIGN KEY([PartnerTypeId])
REFERENCES [dbo].[TypePartner] ([TypePartnerId])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_TypePartner]
GO
ALTER TABLE [dbo].[PartnerProduct]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProduct_Partner] FOREIGN KEY([PartnerProductPartnerId])
REFERENCES [dbo].[Partner] ([PartnerId])
GO
ALTER TABLE [dbo].[PartnerProduct] CHECK CONSTRAINT [FK_PartnerProduct_Partner]
GO
ALTER TABLE [dbo].[PartnerProduct]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProduct_Products] FOREIGN KEY([PartnerProductProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[PartnerProduct] CHECK CONSTRAINT [FK_PartnerProduct_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_TypeProduct] FOREIGN KEY([ProductTypeId])
REFERENCES [dbo].[TypeProduct] ([TypeProductId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_TypeProduct]
GO
USE [master]
GO
ALTER DATABASE [MasterPolData] SET  READ_WRITE 
GO
