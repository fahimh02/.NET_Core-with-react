USE [master]
GO
/****** Object:  Database [TRSProd]    Script Date: 7/16/2024 4:51:28 PM ******/
CREATE DATABASE [TRSProd]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TRSProd', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.DEVSQL\MSSQL\DATA\TRSProd.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TRSProd_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.DEVSQL\MSSQL\DATA\TRSProd_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TRSProd] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TRSProd].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TRSProd] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TRSProd] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TRSProd] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TRSProd] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TRSProd] SET ARITHABORT OFF 
GO
ALTER DATABASE [TRSProd] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TRSProd] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TRSProd] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TRSProd] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TRSProd] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TRSProd] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TRSProd] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TRSProd] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TRSProd] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TRSProd] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TRSProd] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TRSProd] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TRSProd] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TRSProd] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TRSProd] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TRSProd] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TRSProd] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TRSProd] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TRSProd] SET  MULTI_USER 
GO
ALTER DATABASE [TRSProd] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TRSProd] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TRSProd] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TRSProd] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TRSProd] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TRSProd] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TRSProd] SET QUERY_STORE = ON
GO
ALTER DATABASE [TRSProd] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TRSProd]
GO
/****** Object:  Table [dbo].[ArticleInfo]    Script Date: 7/16/2024 4:51:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Length] [nchar](10) NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[AuthorId] [bigint] NULL,
	[EditorId] [bigint] NULL,
 CONSTRAINT [PK_ArticleInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalculatedThreadInfo]    Script Date: 7/16/2024 4:51:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalculatedThreadInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StyleId] [bigint] NOT NULL,
	[UnitId] [bigint] NULL,
	[CurrencyId] [bigint] NULL,
	[NetConsumption] [numeric](18, 0) NULL,
	[SewingAllowance] [numeric](18, 0) NULL,
	[TotalConsumption] [numeric](18, 0) NULL,
	[PricePerCone] [numeric](18, 0) NULL,
	[ThreadCosting] [numeric](18, 0) NULL,
	[TotalCone] [numeric](18, 0) NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[AuthorId] [bigint] NULL,
	[EditorId] [bigint] NULL,
 CONSTRAINT [PK_CalculatedThreadInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/16/2024 4:51:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contribution]    Script Date: 7/16/2024 4:51:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contribution](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StichId] [bigint] NULL,
	[Needle] [numeric](18, 0) NULL,
	[Bobbin] [numeric](18, 0) NULL,
	[Cover] [numeric](18, 0) NULL,
	[Total] [numeric](18, 0) NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[EditorId] [bigint] NULL,
	[AuthorId] [bigint] NULL,
 CONSTRAINT [PK_Contribution] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobInfo]    Script Date: 7/16/2024 4:51:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StyleId] [bigint] NOT NULL,
	[UnitId] [bigint] NULL,
	[Job] [varchar](50) NOT NULL,
	[StitchType] [varchar](50) NULL,
	[StitchDescription] [varchar](max) NULL,
	[StichPerUnit] [numeric](18, 0) NOT NULL,
	[NeedleThread] [varchar](150) NULL,
	[BobbinThread] [varchar](150) NULL,
	[CoverThread] [varchar](150) NULL,
	[SeamLength] [numeric](18, 0) NULL,
	[NumberOfLayers] [numeric](18, 0) NULL,
	[StitchRow] [numeric](18, 0) NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[AuthorId] [bigint] NOT NULL,
	[EditorId] [bigint] NOT NULL,
 CONSTRAINT [PK_JobInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/16/2024 4:51:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[CategoryId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StitchInfos]    Script Date: 7/16/2024 4:51:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StitchInfos](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StitchType] [varchar](150) NULL,
	[StitchName] [nchar](10) NULL,
	[SeamWidth] [decimal](18, 0) NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[AuthorId] [bigint] NULL,
	[EditorId] [bigint] NULL,
 CONSTRAINT [PK_StichInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StyleInfo]    Script Date: 7/16/2024 4:51:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StyleInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StyleCode] [varchar](50) NOT NULL,
	[StyleName] [varchar](max) NULL,
	[StyleNumber] [varchar](max) NULL,
	[StyleDescription] [varchar](max) NULL,
	[ThicknessFabric] [numeric](18, 0) NULL,
	[Season] [varchar](50) NULL,
	[BuyerName] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[GeneralAllowance] [numeric](18, 0) NULL,
	[TotalGarments] [numeric](18, 0) NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[AuthorId] [bigint] NOT NULL,
	[EditorId] [bigint] NOT NULL,
 CONSTRAINT [PK_StyleInfoTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/16/2024 4:51:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[PasswordHash] [nvarchar](1000) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[Role] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Electrónica')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Hogar')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Jardín')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (4, N'testcat')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (5, N'test')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId]) VALUES (1, N'Smartphone', N'Teléfono inteligente avanzado', CAST(599.99 AS Decimal(18, 2)), 1)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId]) VALUES (2, N'Cafetera', N'Máquina de café automática', CAST(129.99 AS Decimal(18, 2)), 2)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[StitchInfos] ON 

INSERT [dbo].[StitchInfos] ([Id], [StitchType], [StitchName], [SeamWidth], [Created], [Modified], [AuthorId], [EditorId]) VALUES (1, N'test', N'we        ', CAST(32 AS Decimal(18, 0)), CAST(N'2024-07-16T12:54:38.040' AS DateTime), CAST(N'2024-07-16T12:54:38.290' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[StitchInfos] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [Email], [Role]) VALUES (2, N'maliha', N'$2a$10$WKZWSvjz8vW1uHbpree3KeOdloWvFBtvy6alF3h1DMC2XJZKhD5Gm', N'maliha@gmai.com', N'user')
INSERT [dbo].[User] ([Id], [Username], [PasswordHash], [Email], [Role]) VALUES (3, N'fahim', N'$2a$10$Svi79NmyXs9Ov2v0Z3Haw.9.qRv8LBiaxKK5.jgTOkG7odyMZy0NW', N'fahimh02@gmai.com', N'admin')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ('user') FOR [Role]
GO
ALTER TABLE [dbo].[CalculatedThreadInfo]  WITH CHECK ADD  CONSTRAINT [FK_CalculatedThreadInfo_StyleInfoTbl] FOREIGN KEY([StyleId])
REFERENCES [dbo].[StyleInfo] ([Id])
GO
ALTER TABLE [dbo].[CalculatedThreadInfo] CHECK CONSTRAINT [FK_CalculatedThreadInfo_StyleInfoTbl]
GO
ALTER TABLE [dbo].[JobInfo]  WITH CHECK ADD  CONSTRAINT [FK_JobInfo_StyleInfoTbl] FOREIGN KEY([StyleId])
REFERENCES [dbo].[StyleInfo] ([Id])
GO
ALTER TABLE [dbo].[JobInfo] CHECK CONSTRAINT [FK_JobInfo_StyleInfoTbl]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Category]
GO
USE [master]
GO
ALTER DATABASE [TRSProd] SET  READ_WRITE 
GO
