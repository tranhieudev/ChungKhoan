USE [master]
GO
/****** Object:  Database [CHUNGKHOAN]    Script Date: 02-May-20 10:21:37 AM ******/
CREATE DATABASE [CHUNGKHOAN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CHUNGKHOAN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\CHUNGKHOAN.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
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
/****** Object:  Table [dbo].[GIATRUCTUYEN]    Script Date: 02-May-20 10:21:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIATRUCTUYEN](
	[MACP] [char](7) NOT NULL,
	[MG2] [float] NOT NULL,
	[MK2] [int] NOT NULL,
	[MG1] [float] NOT NULL,
	[MK1] [int] NOT NULL,
	[GKHOP] [float] NOT NULL,
	[KLKHOP] [int] NOT NULL,
	[BG1] [float] NOT NULL,
	[BK1] [int] NOT NULL,
	[BG2] [float] NOT NULL,
	[BK2] [int] NOT NULL,
 CONSTRAINT [PK_GIATRUCTUYEN] PRIMARY KEY CLUSTERED 
(
	[MACP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LENHDAT]    Script Date: 02-May-20 10:21:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LENHDAT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MACP] [char](7) NULL,
	[NGAYDAT] [datetime] NULL,
	[LOAIGD] [nchar](1) NULL,
	[LOAILENH] [nchar](10) NULL,
	[SOLUONG] [int] NULL,
	[GIADAT] [float] NULL,
	[TRANGTHAILENH] [nchar](30) NULL,
 CONSTRAINT [PK_LENHDAT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LENHKHOP]    Script Date: 02-May-20 10:21:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LENHKHOP](
	[IDKHOP] [int] IDENTITY(1,1) NOT NULL,
	[NGAYKHOP] [datetime] NULL,
	[SOLUONGKHOP] [int] NULL,
	[GIAKHOP] [float] NULL,
	[IDLENHDAT] [int] NOT NULL,
 CONSTRAINT [PK_LENHKHOP] PRIMARY KEY CLUSTERED 
(
	[IDKHOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LENHDAT] ON 

INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (1, N'ACB    ', CAST(N'2019-02-07T17:06:28.217' AS DateTime), N'B', N'LO        ', 1000, 100222, N'sdad                          ')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (2, N'ACB    ', CAST(N'2019-02-07T17:06:54.050' AS DateTime), N'M', N'LO        ', 1000, 10501, N'KH                            ')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (3, N'ACB    ', CAST(N'2019-02-07T17:07:14.893' AS DateTime), N'B', N'LO        ', 1000, 9501, N'CK                            ')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (4, N'ACB    ', CAST(N'2019-02-07T17:07:28.863' AS DateTime), N'M', N'LO        ', 1000, 11000, N'KH                            ')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (5, N'MBB    ', CAST(N'2019-02-07T17:07:44.317' AS DateTime), N'M', N'LO        ', 1000, 24000, N'KH                            ')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (29, N'ACB    ', NULL, N'M', N'LO        ', 1000, 10000, N'CK                            ')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (30, N'ACB    ', CAST(N'2019-02-07T17:06:54.050' AS DateTime), N'B', N'LO        ', 1000, 12000, N'CK                            ')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (31, N'ACB    ', CAST(N'2019-02-07T17:06:54.050' AS DateTime), N'B', N'LO        ', 1000, 12000, N'CK                            ')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (32, N'MBB    ', CAST(N'2019-02-07T17:07:44.317' AS DateTime), N'B', N'LO        ', 1000, 15000, N'CK                            ')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (36, N'MBB    ', NULL, N'B', N'LO        ', 1000, 14000, N'CK                            ')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (37, N'ACB    ', CAST(N'2019-02-07T17:06:54.050' AS DateTime), N'B', N'LO        ', 1000, 9300, N'CK                            ')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (38, N'ACB    ', CAST(N'2019-02-07T17:06:00.000' AS DateTime), N'M', N'LO        ', 100, 2000, N'CK                            ')
SET IDENTITY_INSERT [dbo].[LENHDAT] OFF
SET IDENTITY_INSERT [dbo].[LENHKHOP] ON 

INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (1, CAST(N'2019-02-07T17:06:28.217' AS DateTime), 1000, 10000, 1)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (2, CAST(N'2019-02-07T17:07:14.893' AS DateTime), 1000, 9500, 3)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (3, CAST(N'2019-02-07T17:07:28.863' AS DateTime), 200, 11000, 4)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (4, CAST(N'2019-02-07T17:07:44.317' AS DateTime), 1000, 24000, 5)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (5, CAST(N'2019-02-07T17:07:28.863' AS DateTime), 600, 11000, 4)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (6, CAST(N'2019-02-07T17:07:28.863' AS DateTime), 200, 11000, 4)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (7, CAST(N'2019-02-07T17:06:54.050' AS DateTime), 400, 10501, 2)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (8, CAST(N'2019-02-07T17:06:54.050' AS DateTime), 1000, 10501, 2)
SET IDENTITY_INSERT [dbo].[LENHKHOP] OFF
ALTER TABLE [dbo].[LENHDAT] ADD  CONSTRAINT [DF_LENHDAT_NGAYDAT]  DEFAULT (getdate()) FOR [NGAYDAT]
GO
ALTER TABLE [dbo].[LENHKHOP]  WITH CHECK ADD  CONSTRAINT [FK_LENHKHOP_LENHDAT] FOREIGN KEY([IDLENHDAT])
REFERENCES [dbo].[LENHDAT] ([ID])
GO
ALTER TABLE [dbo].[LENHKHOP] CHECK CONSTRAINT [FK_LENHKHOP_LENHDAT]
GO
/****** Object:  StoredProcedure [dbo].[CursorLoaiGD]    Script Date: 02-May-20 10:21:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
/****** Object:  StoredProcedure [dbo].[SP_KHOPLENH_LO]    Script Date: 02-May-20 10:21:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_KHOPLENH_LO]
@macp NVARCHAR( 10), @Ngay NVARCHAR( 50),  @LoaiGD CHAR, 
 @soluongMB INT, @giadatMB FLOAT 

as
set DATEFORMAT DMY
Declare @CrsrVar  cursor, 
@ngaydat nvarchar (50),
@soluong int,
@giadat float,
@soluongkhop int,
@giakhop float,
@sum int,
@ID nvarchar(50),
@trangthailenh nvarchar(20)

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
	--				set @ID = SELECT ID FROM  LENHDAT
	--				FROM 
					INSERT INTO dbo.LENHKHOP(NGAYKHOP, SOLUONGKHOP, GIAKHOP,IDKHOP)
					VALUES (GETDATE(), @soluongkhop, @giakhop, @ID); -- get IDLENHDAT 
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
				INSERT INTO dbo.LENHKHOP(NGAYKHOP, SOLUONGKHOP, GIAKHOP,IDLENHDAT)
				VALUES (GETDATE(), @soluongkhop, @giakhop, @ID);
			end
		end
		Fetch next from @CrsrVar into @ngaydat, @soluong, @giadat 
	end
	THOAT:

	set @trangthailenh ='CK'; -- chua khop
	if( @soluongMB > @soluongkhop)
	begin
		 set @trangthailenh ='K1P'  -- khop 1 phan
	end 
	
	if( @soluongMB = @soluongkhop)
	begin
		 set @trangthailenh ='KTB'  -- khop toan bo
	end 
	
	--if

	if(@soluongMB>0)
	begin
		Insert into LENHDAT(MACP,NGAYDAT,LOAIGD,LOAILENH, SOLUONG,GIADAT,TRANGTHAILENH)
		values (@macp , @ngaydat, @LoaiGD,'LO' ,@soluongMB, @giadatMB, @trangthailenh )
	end

	close @CrsrVar
	deallocate @CrsrVar
GO
USE [master]
GO
ALTER DATABASE [CHUNGKHOAN] SET  READ_WRITE 
GO
