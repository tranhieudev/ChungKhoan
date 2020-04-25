USE [master]
GO
/****** Object:  Database [CHUNGKHOAN]    Script Date: 25-Apr-20 11:50:00 AM ******/
CREATE DATABASE [CHUNGKHOAN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CHUNGKHOAN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\CHUNGKHOAN.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ),
( NAME = N'CHUNGKHOAN2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\CHUNGKHOAN2.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CHUNGKHOAN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\CHUNGKHOAN_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CHUNGKHOAN] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CHUNGKHOAN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CHUNGKHOAN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET ARITHABORT OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CHUNGKHOAN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CHUNGKHOAN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CHUNGKHOAN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CHUNGKHOAN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET RECOVERY FULL 
GO
ALTER DATABASE [CHUNGKHOAN] SET  MULTI_USER 
GO
ALTER DATABASE [CHUNGKHOAN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CHUNGKHOAN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CHUNGKHOAN] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CHUNGKHOAN] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CHUNGKHOAN', N'ON'
GO
ALTER DATABASE [CHUNGKHOAN] SET QUERY_STORE = OFF
GO
USE [CHUNGKHOAN]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [CHUNGKHOAN]
GO
/****** Object:  Table [dbo].[ChiNhanh]    Script Date: 25-Apr-20 11:50:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiNhanh](
	[MACN] [nchar](10) NOT NULL,
	[ChiNhanh] [nvarchar](100) NOT NULL,
	[DIACHI] [nvarchar](100) NOT NULL,
	[SoDT] [nvarchar](15) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_ChiNhanh] PRIMARY KEY CLUSTERED 
(
	[MACN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTDDH]    Script Date: 25-Apr-20 11:50:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDDH](
	[MasoDDH] [nchar](8) NOT NULL,
	[MAVT] [nchar](4) NOT NULL,
	[SOLUONG] [int] NULL,
	[DONGIA] [float] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_CTDDH] PRIMARY KEY CLUSTERED 
(
	[MasoDDH] ASC,
	[MAVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPN]    Script Date: 25-Apr-20 11:50:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPN](
	[MAPN] [nchar](8) NOT NULL,
	[MAVT] [nchar](4) NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[DONGIA] [float] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_CTPN] PRIMARY KEY CLUSTERED 
(
	[MAPN] ASC,
	[MAVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPX]    Script Date: 25-Apr-20 11:50:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPX](
	[MAPX] [nchar](8) NOT NULL,
	[MAVT] [nchar](4) NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[DONGIA] [float] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_CTPX] PRIMARY KEY CLUSTERED 
(
	[MAPX] ASC,
	[MAVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatHang]    Script Date: 25-Apr-20 11:50:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatHang](
	[MasoDDH] [nchar](8) NOT NULL,
	[NGAY] [date] NOT NULL,
	[NhaCC] [nvarchar](100) NOT NULL,
	[MANV] [int] NOT NULL,
	[MAKHO] [nchar](4) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_DatHang] PRIMARY KEY CLUSTERED 
(
	[MasoDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kho]    Script Date: 25-Apr-20 11:50:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho](
	[MAKHO] [nchar](4) NOT NULL,
	[TENKHO] [nvarchar](30) NOT NULL,
	[DIACHI] [nvarchar](100) NULL,
	[MACN] [nchar](10) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_Kho] PRIMARY KEY CLUSTERED 
(
	[MAKHO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LENHDAT]    Script Date: 25-Apr-20 11:50:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LENHDAT](
	[ID] [int] NOT NULL,
	[MACP] [char](7) NOT NULL,
	[NGAYDAT] [datetime] NOT NULL,
	[LOAIGD] [nchar](1) NOT NULL,
	[LOAILENH] [nchar](10) NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[GIADAT] [float] NOT NULL,
	[TRANGTHAILENH] [nvarchar](30) NULL,
 CONSTRAINT [PK_LENHDAT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LENHKHOP]    Script Date: 25-Apr-20 11:50:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LENHKHOP](
	[IDKHOP] [int] IDENTITY(1,1) NOT NULL,
	[NGAYKHOP] [datetime] NOT NULL,
	[SOLUONGKHOP] [int] NOT NULL,
	[GIAKHOP] [float] NOT NULL,
	[INLENHDAT] [int] NULL,
 CONSTRAINT [PK_LENHKHOP] PRIMARY KEY CLUSTERED 
(
	[IDKHOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 25-Apr-20 11:50:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MANV] [int] NOT NULL,
	[HO] [nvarchar](40) NULL,
	[TEN] [nvarchar](10) NULL,
	[DIACHI] [nvarchar](100) NULL,
	[NGAYSINH] [datetime] NULL,
	[LUONG] [float] NULL,
	[MACN] [nchar](10) NULL,
	[TrangThaiXoa] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 25-Apr-20 11:50:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MAPN] [nchar](8) NOT NULL,
	[NGAY] [date] NOT NULL,
	[MasoDDH] [nchar](8) NOT NULL,
	[MANV] [int] NOT NULL,
	[MAKHO] [nchar](4) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MAPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 25-Apr-20 11:50:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuat](
	[MAPX] [nchar](8) NOT NULL,
	[NGAY] [date] NOT NULL,
	[HOTENKH] [nvarchar](100) NOT NULL,
	[MANV] [int] NOT NULL,
	[MAKHO] [nchar](4) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_PX] PRIMARY KEY CLUSTERED 
(
	[MAPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vattu]    Script Date: 25-Apr-20 11:50:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vattu](
	[MAVT] [nchar](4) NOT NULL,
	[TENVT] [nvarchar](30) NOT NULL,
	[DVT] [nvarchar](15) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_VatTu] PRIMARY KEY CLUSTERED 
(
	[MAVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiNhanh] ([MACN], [ChiNhanh], [DIACHI], [SoDT], [rowguid]) VALUES (N'CN1       ', N'Chi nhánh 1 TP HCM', N'35 Trần Hưng Đạo P1 Q1', N'999111888', N'a73a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[ChiNhanh] ([MACN], [ChiNhanh], [DIACHI], [SoDT], [rowguid]) VALUES (N'CN2       ', N'Chi nhánh 2 TP Cần Thơ', N'27 Nguyễn Huệ', N'333222111', N'a83a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[CTDDH] ([MasoDDH], [MAVT], [SOLUONG], [DONGIA], [rowguid]) VALUES (N'MDDH01  ', N'M01 ', 10, 400000, N'c53a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[CTDDH] ([MasoDDH], [MAVT], [SOLUONG], [DONGIA], [rowguid]) VALUES (N'MDDH02  ', N'MU01', 6, 500000, N'c63a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[CTDDH] ([MasoDDH], [MAVT], [SOLUONG], [DONGIA], [rowguid]) VALUES (N'MDDH03  ', N'MX02', 20, 700000, N'c73a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[CTPN] ([MAPN], [MAVT], [SOLUONG], [DONGIA], [rowguid]) VALUES (N'PN01    ', N'M01 ', 10, 500, N'ca3a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[CTPX] ([MAPX], [MAVT], [SOLUONG], [DONGIA], [rowguid]) VALUES (N'PX01    ', N'MX02', 4, 5600, N'c83a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[CTPX] ([MAPX], [MAVT], [SOLUONG], [DONGIA], [rowguid]) VALUES (N'PX03    ', N'M01 ', 5, 7000, N'c93a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[DatHang] ([MasoDDH], [NGAY], [NhaCC], [MANV], [MAKHO], [rowguid]) VALUES (N'MDDH01  ', CAST(N'2017-09-15' AS Date), N'CTY Điện máy xanh', 1, NULL, N'bd3a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[DatHang] ([MasoDDH], [NGAY], [NhaCC], [MANV], [MAKHO], [rowguid]) VALUES (N'MDDH02  ', CAST(N'2017-09-15' AS Date), N'CTY Panasonic', 1, NULL, N'be3a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[DatHang] ([MasoDDH], [NGAY], [NhaCC], [MANV], [MAKHO], [rowguid]) VALUES (N'MDDH03  ', CAST(N'2017-09-15' AS Date), N'CTY Samsung', 8, NULL, N'bf3a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[DatHang] ([MasoDDH], [NGAY], [NhaCC], [MANV], [MAKHO], [rowguid]) VALUES (N'MDDH04  ', CAST(N'2019-12-27' AS Date), N'CTY Samsung ', 13, NULL, N'3fe6cd2a-c628-ea11-b8f2-18dbf2400c6a')
INSERT [dbo].[DatHang] ([MasoDDH], [NGAY], [NhaCC], [MANV], [MAKHO], [rowguid]) VALUES (N'MDDH05  ', CAST(N'2019-12-29' AS Date), N'CTY Samsung ', 15, NULL, N'da3b37e9-f329-ea11-b8f2-18dbf2400c6a')
INSERT [dbo].[Kho] ([MAKHO], [TENKHO], [DIACHI], [MACN], [rowguid]) VALUES (N'K1N1', N'KHO A', N'28-30 Ngô Quyền P1 Q5', N'CN1       ', N'af3a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[Kho] ([MAKHO], [TENKHO], [DIACHI], [MACN], [rowguid]) VALUES (N'K1N2', N'LONG PHU', N'127 Ngô Thì Nhậm', N'CN2       ', N'b43a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[Kho] ([MAKHO], [TENKHO], [DIACHI], [MACN], [rowguid]) VALUES (N'K2N1', N'KHO B', N'78 Nguyen Trai, TPHCM', N'CN1       ', N'b03a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[Kho] ([MAKHO], [TENKHO], [DIACHI], [MACN], [rowguid]) VALUES (N'K2N2', N'KHO VT', N'23,Hoàng Diệu 2', N'CN2       ', N'b23a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[Kho] ([MAKHO], [TENKHO], [DIACHI], [MACN], [rowguid]) VALUES (N'K3N1', N'CONG NGHIEP', N'555 Trần Hưng đạo', N'CN1       ', N'ae3a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[Kho] ([MAKHO], [TENKHO], [DIACHI], [MACN], [rowguid]) VALUES (N'K3N2', N'KHO XD', N'34,Quang Trung THủ Đức TPHCM', N'CN2       ', N'b33a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[Kho] ([MAKHO], [TENKHO], [DIACHI], [MACN], [rowguid]) VALUES (N'K4N1', N'KHO HH', N'134 Đình Phong Phú ,Quận 9,TPHCM', N'CN1       ', N'b13a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[Kho] ([MAKHO], [TENKHO], [DIACHI], [MACN], [rowguid]) VALUES (N'K5  ', N'kho q9', NULL, N'CN1       ', N'3f74d4c7-c423-ea11-b8f2-18dbf2400c6a')
INSERT [dbo].[Kho] ([MAKHO], [TENKHO], [DIACHI], [MACN], [rowguid]) VALUES (N'K6  ', N'aaa', NULL, N'CN1       ', N'8b9eff89-c523-ea11-b8f2-18dbf2400c6a')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (1, N'ACB    ', CAST(N'2019-11-20T05:00:00.000' AS DateTime), N'M', N'LO        ', 500, 10000, N'CHỜ KHỚP')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (2, N'ACB    ', CAST(N'2019-11-20T06:00:00.000' AS DateTime), N'M', N'LO        ', 0, 10500, N'CHỜ KHỚP')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (3, N'ACB    ', CAST(N'2019-11-20T04:00:00.000' AS DateTime), N'M', N'LO        ', 1000, 9500, N'CHỜ KHỚP')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (4, N'ACB    ', CAST(N'2019-11-20T07:00:00.000' AS DateTime), N'M', N'LO        ', 0, 11000, N'CHỜ KHỚP')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (5, N'MBB    ', CAST(N'2019-11-20T09:00:00.000' AS DateTime), N'M', N'LO        ', 1000, 21000, N'CHỜ KHỚP')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (6, N'ACB    ', CAST(N'2019-11-20T00:00:00.000' AS DateTime), N'B', N'LO        ', 500, 9950, N'Chờ khớp')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (7, N'ACB    ', CAST(N'2019-11-20T00:00:00.000' AS DateTime), N'B', N'LO        ', 0, 9500, NULL)
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (8, N'ACB    ', CAST(N'2019-11-20T00:00:00.000' AS DateTime), N'B', N'LO        ', 0, 9500, N'C')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (9, N'ACB    ', CAST(N'2019-11-20T00:00:00.000' AS DateTime), N'M', N'LA        ', 0, 9500, N'CL')
SET IDENTITY_INSERT [dbo].[LENHKHOP] ON 

INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [INLENHDAT]) VALUES (23, CAST(N'2020-04-02T20:00:32.693' AS DateTime), 500, 10000, NULL)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [INLENHDAT]) VALUES (24, CAST(N'2020-04-02T20:23:36.100' AS DateTime), 500, 10000, NULL)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [INLENHDAT]) VALUES (25, CAST(N'2020-04-02T20:28:44.377' AS DateTime), 500, 11000, NULL)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [INLENHDAT]) VALUES (26, CAST(N'2020-04-02T20:29:59.203' AS DateTime), 500, 11000, NULL)
SET IDENTITY_INSERT [dbo].[LENHKHOP] OFF
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [DIACHI], [NGAYSINH], [LUONG], [MACN], [TrangThaiXoa], [rowguid]) VALUES (1, N'Lương', N'Trang', N'Thủ Đức', CAST(N'2000-05-05T00:00:00.000' AS DateTime), 7000000, N'CN1       ', 0, N'b53a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [DIACHI], [NGAYSINH], [LUONG], [MACN], [TrangThaiXoa], [rowguid]) VALUES (2, N'Nguyễn', N'Hà', N'Quận 9', CAST(N'2001-03-05T00:00:00.000' AS DateTime), 4000000, N'CN2       ', 0, N'b63a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [DIACHI], [NGAYSINH], [LUONG], [MACN], [TrangThaiXoa], [rowguid]) VALUES (3, N'Trần', N'Thanh', N'Quận 10', CAST(N'1994-07-04T00:00:00.000' AS DateTime), 5000000, N'CN1       ', 0, N'b73a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [DIACHI], [NGAYSINH], [LUONG], [MACN], [TrangThaiXoa], [rowguid]) VALUES (4, N'Thái', N'Hà', N'Quận 6', CAST(N'2001-07-06T00:00:00.000' AS DateTime), 7000000, N'CN1       ', 0, N'b83a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [DIACHI], [NGAYSINH], [LUONG], [MACN], [TrangThaiXoa], [rowguid]) VALUES (5, N'Hồ', N'Thái', N'Bình Thạnh', CAST(N'2001-02-05T00:00:00.000' AS DateTime), 6000000, N'CN2       ', 0, N'b93a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [DIACHI], [NGAYSINH], [LUONG], [MACN], [TrangThaiXoa], [rowguid]) VALUES (6, N'Hà', N'An', N'Gò Vấp', CAST(N'1996-04-06T00:00:00.000' AS DateTime), 5000000, N'CN1       ', 0, N'ba3a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [DIACHI], [NGAYSINH], [LUONG], [MACN], [TrangThaiXoa], [rowguid]) VALUES (7, N'Lê', N'Trà', N'Phú Nhuận', CAST(N'1996-03-07T00:00:00.000' AS DateTime), 7000000, N'CN2       ', 0, N'bb3a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [DIACHI], [NGAYSINH], [LUONG], [MACN], [TrangThaiXoa], [rowguid]) VALUES (8, N'Nguyễn', N'Hợp', N'Thủ Đức', CAST(N'1997-07-06T00:00:00.000' AS DateTime), 8000000, N'CN1       ', 0, N'bc3a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [DIACHI], [NGAYSINH], [LUONG], [MACN], [TrangThaiXoa], [rowguid]) VALUES (10, N'LE', N'DIEM', N'Quan9', CAST(N'1998-07-30T00:00:00.000' AS DateTime), 5000000, N'CN1       ', 0, N'5bb14f62-af20-ea11-b8f2-18dbf2400c6a')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [DIACHI], [NGAYSINH], [LUONG], [MACN], [TrangThaiXoa], [rowguid]) VALUES (11, N'LÊ', N'Anh', N'thủ đức', CAST(N'2000-05-01T00:00:00.000' AS DateTime), 79000000, N'CN1       ', 0, N'4ea7ff40-8324-ea11-b8f2-18dbf2400c6a')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [DIACHI], [NGAYSINH], [LUONG], [MACN], [TrangThaiXoa], [rowguid]) VALUES (13, N'Ngô', N'Khanh', N'quận 3', CAST(N'2000-09-03T00:00:00.000' AS DateTime), 6300000, N'CN1       ', 1, N'bd158a52-b527-ea11-b8f2-18dbf2400c6a')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [DIACHI], [NGAYSINH], [LUONG], [MACN], [TrangThaiXoa], [rowguid]) VALUES (14, N'Huỳnh', N'Linh', N'quận 6', CAST(N'1999-07-01T00:00:00.000' AS DateTime), 780000000, N'CN1       ', 0, N'ebd664fe-c827-ea11-b8f2-18dbf2400c6a')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [DIACHI], [NGAYSINH], [LUONG], [MACN], [TrangThaiXoa], [rowguid]) VALUES (15, N'Nguyen', N'Huy', N'tphcm', CAST(N'1998-02-04T00:00:00.000' AS DateTime), 5000000, N'CN2       ', 0, N'2ebec7a8-9429-ea11-b8f2-18dbf2400c6a')
INSERT [dbo].[NhanVien] ([MANV], [HO], [TEN], [DIACHI], [NGAYSINH], [LUONG], [MACN], [TrangThaiXoa], [rowguid]) VALUES (20, N'Ngô', N'Khanh', N'quận 3', CAST(N'2000-03-09T00:00:00.000' AS DateTime), 6300000, N'CN2       ', 0, N'7b76382e-4329-ea11-b8f2-18dbf2400c6a')
INSERT [dbo].[PhieuNhap] ([MAPN], [NGAY], [MasoDDH], [MANV], [MAKHO], [rowguid]) VALUES (N'PN01    ', CAST(N'2017-09-15' AS Date), N'MDDH01  ', 1, NULL, N'c33a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[PhieuNhap] ([MAPN], [NGAY], [MasoDDH], [MANV], [MAKHO], [rowguid]) VALUES (N'PN03    ', CAST(N'2017-09-15' AS Date), N'MDDH03  ', 3, NULL, N'c43a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[PhieuXuat] ([MAPX], [NGAY], [HOTENKH], [MANV], [MAKHO], [rowguid]) VALUES (N'PX01    ', CAST(N'2017-09-15' AS Date), N'Nguyễn Thị Ánh Hồng', 1, NULL, N'c03a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[PhieuXuat] ([MAPX], [NGAY], [HOTENKH], [MANV], [MAKHO], [rowguid]) VALUES (N'PX02    ', CAST(N'2017-09-15' AS Date), N'Trần Thị Mỹ Hà', 3, NULL, N'c13a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[PhieuXuat] ([MAPX], [NGAY], [HOTENKH], [MANV], [MAKHO], [rowguid]) VALUES (N'PX03    ', CAST(N'2017-09-15' AS Date), N'Trần Bích Phương', 7, NULL, N'c23a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[Vattu] ([MAVT], [TENVT], [DVT], [rowguid]) VALUES (N'M01 ', N'Máy giặt tự động cửa trước', N'Cái', N'a93a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[Vattu] ([MAVT], [TENVT], [DVT], [rowguid]) VALUES (N'M02 ', N'Bàn', N'cái', N'c304de32-cc23-ea11-b8f2-18dbf2400c6a')
INSERT [dbo].[Vattu] ([MAVT], [TENVT], [DVT], [rowguid]) VALUES (N'M03 ', N'ghế', N'cái', N'14cbacb7-cc23-ea11-b8f2-18dbf2400c6a')
INSERT [dbo].[Vattu] ([MAVT], [TENVT], [DVT], [rowguid]) VALUES (N'MU01', N'Máy uốn tóc', N'Cái', N'ac3a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[Vattu] ([MAVT], [TENVT], [DVT], [rowguid]) VALUES (N'MX02', N'Máy sấy', N'Cái', N'ab3a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[Vattu] ([MAVT], [TENVT], [DVT], [rowguid]) VALUES (N'MX07', N'Máy lạnh LG', N'Cái', N'aa3a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
INSERT [dbo].[Vattu] ([MAVT], [TENVT], [DVT], [rowguid]) VALUES (N'TV02', N'Ti vi Sam Sung', N'Cái', N'ad3a1bf8-c6e1-e911-b8f1-18dbf2400c6a')
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_ChiNhanh]    Script Date: 25-Apr-20 11:50:01 AM ******/
ALTER TABLE [dbo].[ChiNhanh] ADD  CONSTRAINT [UK_ChiNhanh] UNIQUE NONCLUSTERED 
(
	[ChiNhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_TENKHO]    Script Date: 25-Apr-20 11:50:01 AM ******/
ALTER TABLE [dbo].[Kho] ADD  CONSTRAINT [UK_TENKHO] UNIQUE NONCLUSTERED 
(
	[TENKHO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_MaSoDDH]    Script Date: 25-Apr-20 11:50:01 AM ******/
ALTER TABLE [dbo].[PhieuNhap] ADD  CONSTRAINT [UK_MaSoDDH] UNIQUE NONCLUSTERED 
(
	[MasoDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_TENVT]    Script Date: 25-Apr-20 11:50:01 AM ******/
ALTER TABLE [dbo].[Vattu] ADD  CONSTRAINT [UK_TENVT] UNIQUE NONCLUSTERED 
(
	[TENVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiNhanh] ADD  CONSTRAINT [MSmerge_df_rowguid_A1632D4FF39C4FA796B0992B3B90ABB7]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[CTDDH] ADD  CONSTRAINT [MSmerge_df_rowguid_2C9194891C404B6FBEC19570292813FD]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[CTPN] ADD  CONSTRAINT [MSmerge_df_rowguid_8260826231B5436B97D6F1674E275F10]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[CTPX] ADD  CONSTRAINT [MSmerge_df_rowguid_A0009F76F8CF4D4EA2A55924FA0D370C]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[DatHang] ADD  CONSTRAINT [DF_DatHang_MasoDDH]  DEFAULT (getdate()) FOR [MasoDDH]
GO
ALTER TABLE [dbo].[DatHang] ADD  CONSTRAINT [DF_DatHang_NGAY]  DEFAULT (getdate()) FOR [NGAY]
GO
ALTER TABLE [dbo].[DatHang] ADD  CONSTRAINT [MSmerge_df_rowguid_0DF6361B31B64C9BA4E7C78834B8C305]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[Kho] ADD  CONSTRAINT [MSmerge_df_rowguid_F313B67053194248BE83F12093183513]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [MSmerge_df_rowguid_2B20BC6E334449B695555FBF6983832D]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[PhieuNhap] ADD  CONSTRAINT [DF_PhieuNhap_MAPN]  DEFAULT (getdate()) FOR [MAPN]
GO
ALTER TABLE [dbo].[PhieuNhap] ADD  CONSTRAINT [DF_PhieuNhap_NGAY]  DEFAULT (getdate()) FOR [NGAY]
GO
ALTER TABLE [dbo].[PhieuNhap] ADD  CONSTRAINT [MSmerge_df_rowguid_BD3023E39C7542DE8B33CC5AFC197B74]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[PhieuXuat] ADD  CONSTRAINT [DF_PX_NGAY]  DEFAULT (getdate()) FOR [NGAY]
GO
ALTER TABLE [dbo].[PhieuXuat] ADD  CONSTRAINT [MSmerge_df_rowguid_962F70F43A87410F81F13A16B623B979]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[Vattu] ADD  CONSTRAINT [MSmerge_df_rowguid_5BB5B89180374B889BAB18D1A0B00E11]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[CTDDH]  WITH NOCHECK ADD  CONSTRAINT [FK_CTDDH_DatHang] FOREIGN KEY([MasoDDH])
REFERENCES [dbo].[DatHang] ([MasoDDH])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CTDDH] CHECK CONSTRAINT [FK_CTDDH_DatHang]
GO
ALTER TABLE [dbo].[CTDDH]  WITH NOCHECK ADD  CONSTRAINT [FK_CTDDH_VatTu] FOREIGN KEY([MAVT])
REFERENCES [dbo].[Vattu] ([MAVT])
ON UPDATE CASCADE
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CTDDH] CHECK CONSTRAINT [FK_CTDDH_VatTu]
GO
ALTER TABLE [dbo].[CTPN]  WITH NOCHECK ADD  CONSTRAINT [FK_CTPN_PhieuNhap] FOREIGN KEY([MAPN])
REFERENCES [dbo].[PhieuNhap] ([MAPN])
ON UPDATE CASCADE
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CTPN] CHECK CONSTRAINT [FK_CTPN_PhieuNhap]
GO
ALTER TABLE [dbo].[CTPN]  WITH NOCHECK ADD  CONSTRAINT [FK_CTPN_VatTu] FOREIGN KEY([MAVT])
REFERENCES [dbo].[Vattu] ([MAVT])
ON UPDATE CASCADE
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CTPN] CHECK CONSTRAINT [FK_CTPN_VatTu]
GO
ALTER TABLE [dbo].[CTPX]  WITH NOCHECK ADD  CONSTRAINT [FK_CTPX_PX] FOREIGN KEY([MAPX])
REFERENCES [dbo].[PhieuXuat] ([MAPX])
ON UPDATE CASCADE
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CTPX] CHECK CONSTRAINT [FK_CTPX_PX]
GO
ALTER TABLE [dbo].[CTPX]  WITH NOCHECK ADD  CONSTRAINT [FK_CTPX_VatTu] FOREIGN KEY([MAVT])
REFERENCES [dbo].[Vattu] ([MAVT])
ON UPDATE CASCADE
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CTPX] CHECK CONSTRAINT [FK_CTPX_VatTu]
GO
ALTER TABLE [dbo].[DatHang]  WITH CHECK ADD  CONSTRAINT [FK_DatHang_Kho] FOREIGN KEY([MAKHO])
REFERENCES [dbo].[Kho] ([MAKHO])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DatHang] CHECK CONSTRAINT [FK_DatHang_Kho]
GO
ALTER TABLE [dbo].[DatHang]  WITH NOCHECK ADD  CONSTRAINT [FK_DatHang_NhanVien] FOREIGN KEY([MANV])
REFERENCES [dbo].[NhanVien] ([MANV])
ON UPDATE CASCADE
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[DatHang] CHECK CONSTRAINT [FK_DatHang_NhanVien]
GO
ALTER TABLE [dbo].[Kho]  WITH NOCHECK ADD  CONSTRAINT [FK_Kho_Kho] FOREIGN KEY([MACN])
REFERENCES [dbo].[ChiNhanh] ([MACN])
ON UPDATE CASCADE
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Kho] CHECK CONSTRAINT [FK_Kho_Kho]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH NOCHECK ADD  CONSTRAINT [FK_PhieuNhap_DatHang] FOREIGN KEY([MasoDDH])
REFERENCES [dbo].[DatHang] ([MasoDDH])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_DatHang]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_Kho] FOREIGN KEY([MAKHO])
REFERENCES [dbo].[Kho] ([MAKHO])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_Kho]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH NOCHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien] FOREIGN KEY([MANV])
REFERENCES [dbo].[NhanVien] ([MANV])
ON UPDATE CASCADE
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhanVien]
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_PhieuXuat_Kho] FOREIGN KEY([MAKHO])
REFERENCES [dbo].[Kho] ([MAKHO])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PhieuXuat] CHECK CONSTRAINT [FK_PhieuXuat_Kho]
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH NOCHECK ADD  CONSTRAINT [FK_PX_NhanVien] FOREIGN KEY([MANV])
REFERENCES [dbo].[NhanVien] ([MANV])
ON UPDATE CASCADE
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[PhieuXuat] CHECK CONSTRAINT [FK_PX_NhanVien]
GO
ALTER TABLE [dbo].[CTDDH]  WITH NOCHECK ADD  CONSTRAINT [CK_DONGIA] CHECK NOT FOR REPLICATION (([DONGIA]>(0)))
GO
ALTER TABLE [dbo].[CTDDH] CHECK CONSTRAINT [CK_DONGIA]
GO
ALTER TABLE [dbo].[CTDDH]  WITH NOCHECK ADD  CONSTRAINT [CK_SOLUONG] CHECK NOT FOR REPLICATION (([SOLUONG]>(0)))
GO
ALTER TABLE [dbo].[CTDDH] CHECK CONSTRAINT [CK_SOLUONG]
GO
ALTER TABLE [dbo].[CTPN]  WITH NOCHECK ADD  CONSTRAINT [CK_DONGIACTPN] CHECK NOT FOR REPLICATION (([DONGIA]>=(0)))
GO
ALTER TABLE [dbo].[CTPN] CHECK CONSTRAINT [CK_DONGIACTPN]
GO
ALTER TABLE [dbo].[CTPN]  WITH NOCHECK ADD  CONSTRAINT [CK_SOLUONGCTPN] CHECK NOT FOR REPLICATION (([SOLUONG]>(0)))
GO
ALTER TABLE [dbo].[CTPN] CHECK CONSTRAINT [CK_SOLUONGCTPN]
GO
ALTER TABLE [dbo].[CTPX]  WITH NOCHECK ADD  CONSTRAINT [CK_DONGIACTPX] CHECK NOT FOR REPLICATION (([DONGIA]>=(0)))
GO
ALTER TABLE [dbo].[CTPX] CHECK CONSTRAINT [CK_DONGIACTPX]
GO
ALTER TABLE [dbo].[CTPX]  WITH NOCHECK ADD  CONSTRAINT [CK_SOLUONGCTPX] CHECK NOT FOR REPLICATION (([SOLUONG]>(0)))
GO
ALTER TABLE [dbo].[CTPX] CHECK CONSTRAINT [CK_SOLUONGCTPX]
GO
ALTER TABLE [dbo].[LENHDAT]  WITH CHECK ADD CHECK  (([LOAIGD]='M' OR [LOAIGD]='B'))
GO
ALTER TABLE [dbo].[NhanVien]  WITH NOCHECK ADD  CONSTRAINT [CK_LUONG] CHECK NOT FOR REPLICATION (([LUONG]>=(4000000)))
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [CK_LUONG]
GO
/****** Object:  StoredProcedure [dbo].[CursorLoaiGD]    Script Date: 25-Apr-20 11:50:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CursorLoaiGD]
	-- Add the parameters for the stored procedure here
	@OurCrsr Cursor varying output,
	@macp nvarchar (10), 
	@ngay nvarchar(50),
	@LoaiGD  char
AS
SET DATEFORMAT DMY
IF (@LoaiGD ='M')
	SET @OurCrsr =CURSOR KEYSET FOR
	SELECT NGAYDAT,SOLUONG, GIADAT FROM LENHDAT
	WHERE MACP =@macp AND DAY(NGAYDAT)=DAY(@ngay) AND MONTH(NGAYDAT) = MONTH(@ngay)  AND YEAR(NGAYDAT) = YEAR(@ngay) AND LOAIGD=@LoaiGD AND SOLUONG>0
	ORDER BY GIADAT DESC, NGAYDAT --  GIÁ ĐẶT GIẢM DẦN, NGÀY ĐẶT TĂNG DẦN
ELSE
	SET @OurCrsr =CURSOR KEYSET FOR
	SELECT NGAYDAT,SOLUONG, GIADAT FROM LENHDAT
	WHERE MACP =@macp AND DAY(NGAYDAT)=DAY(@ngay) AND MONTH(NGAYDAT) = MONTH(@ngay)  AND YEAR(NGAYDAT) = YEAR(@ngay) AND LOAIGD=@LoaiGD AND SOLUONG>0
	ORDER BY GIADAT , NGAYDAT --  GIÁ ĐẶT TĂNG DẦN, NGÀY ĐẶT TĂNG DẦN
OPEN @OurCrsr
GO
/****** Object:  StoredProcedure [dbo].[SP_KHOPLENH_LO]    Script Date: 25-Apr-20 11:50:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROC [dbo].[SP_KHOPLENH_LO]
	@macp  nvarchar(10),
	@ngay nvarchar (50),
	@LoaiGD char,
	@soluongMB int,
	@giadatMB float
as
set DATEFORMAT DMY
Declare @CrsrVar  cursor, 
@ngaydat nvarchar (50),
@soluong int,
@giadat float,
@soluongkhop int,
@giakhop float

IF (@LoaiGD ='B') 
	exec dbo.CursorLoaiGD  @CrsrVar output, @macp,@ngay,'M'
	Else
	exec dbo.CursorLoaiGD  @CrsrVar output, @macp,@ngay,'B'
Fetch next from @CrsrVar into @ngaydat,@soluong,@giadat
Select @ngaydat, @soluong,@giadat
while (@@FETCH_STATUS <>-1 and @soluong >0)
Begin
	if(@LoaiGD ='B')
		if(@giadatMB <=@giadat)
		begin
			if(@soluongMB >@soluong)
				Begin
					set @soluongkhop=@soluong
					set @giakhop =@giadat
					set @soluongMB =@soluongMB -@soluong
					update dbo.LENHDAT
						set SOLUONG =0
						where current of @CrsrVar
				end
			else
				begin
					set @soluongkhop =@soluongMB
					set @giakhop= @giadat
				
					update dbo.LENHDAT 
						set SOLUONG =SOLUONG -@soluongMB
						where current of @CrsrVar
					set @soluongMB =0
				end

			--select @soluongkhop, @giakhop 
			---- cap nhap table lenh khop ...
			if(@soluongkhop>0)
				begin
					INSERT INTO dbo.LENHKHOP(NGAYKHOP, SOLUONGKHOP, GIAKHOP)
					VALUES (GETDATE(), @soluongkhop, @giakhop);
				end

		end
	else
		--goto THOAT
		--Select Hanoi ='abc'
		select @soluongkhop, @giakhop 

		if(@giadatMB >=@giadat)
		begin
			if(@soluongMB >@soluong)
				Begin
					set @soluongkhop=@soluong
					set @giakhop =@giadatMB
					set @soluongMB =@soluongMB -@soluong
					update dbo.LENHDAT
						set SOLUONG =0
						where current of @CrsrVar
				end
			else
		
			begin
				set @soluongkhop =@soluongMB
				set @giakhop= @giadatMB
				update dbo.LENHDAT 
				set SOLUONG =SOLUONG -@soluongMB
				where current of @CrsrVar
				set @soluongMB =0

			end
			--select @soluongkhop, @giakhop
			select @soluongkhop, @giakhop 
			-- cap nhap table lenh khop ... -> cap nhap cho thang mua ban
			if(@soluongkhop>0)
			begin
				INSERT INTO dbo.LENHKHOP(NGAYKHOP, SOLUONGKHOP, GIAKHOP)
				VALUES (GETDATE(), @soluongkhop, @giakhop);
			end

		end
	
		Fetch next from @CrsrVar into @ngaydat, @soluong, @giadat 

	end
	THOAT: 
		close @CrsrVar
		deallocate @CrsrVar
GO
USE [master]
GO
ALTER DATABASE [CHUNGKHOAN] SET  READ_WRITE 
GO
