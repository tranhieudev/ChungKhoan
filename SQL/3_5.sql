USE [master]
GO
/****** Object:  Database [CHUNGKHOAN]    Script Date: 03-May-20 5:52:44 PM ******/
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
ALTER DATABASE [CHUNGKHOAN] SET  ENABLE_BROKER 
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
/****** Object:  Table [dbo].[GIATRUCTUYEN]    Script Date: 03-May-20 5:52:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIATRUCTUYEN](
	[MACP] [char](7) NOT NULL,
	[MG2] [float] NULL,
	[MK2] [int] NULL,
	[MG1] [float] NULL,
	[MK1] [int] NULL,
	[GKHOP] [float] NULL,
	[KLKHOP] [int] NULL,
	[BG1] [float] NULL,
	[BK1] [int] NULL,
	[BG2] [float] NULL,
	[BK2] [int] NULL,
 CONSTRAINT [PK_GIATRUCTUYEN] PRIMARY KEY CLUSTERED 
(
	[MACP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LENHDAT]    Script Date: 03-May-20 5:52:44 PM ******/
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
/****** Object:  Table [dbo].[LENHKHOP]    Script Date: 03-May-20 5:52:44 PM ******/
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
INSERT [dbo].[GIATRUCTUYEN] ([MACP], [MG2], [MK2], [MG1], [MK1], [GKHOP], [KLKHOP], [BG1], [BK1], [BG2], [BK2]) VALUES (N'ACB    ', -1, -1, 4950, 200, 4950, 1000, 5000, 1000, 5000, 1000)
INSERT [dbo].[GIATRUCTUYEN] ([MACP], [MG2], [MK2], [MG1], [MK1], [GKHOP], [KLKHOP], [BG1], [BK1], [BG2], [BK2]) VALUES (N'ACC    ', 5800, 1200, 6200, 300, 6200, 900, -1, -1, -1, -1)
SET IDENTITY_INSERT [dbo].[LENHDAT] ON 

INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (90, N'ACB    ', CAST(N'2020-05-03T17:17:02.000' AS DateTime), N'B', N'LO        ', 1000, 5000, N'CK                            ')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (91, N'ACB    ', CAST(N'2020-05-03T17:17:19.000' AS DateTime), N'B', N'LO        ', 0, 4900, N'CK                            ')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (92, N'ACB    ', CAST(N'2020-05-03T17:18:24.000' AS DateTime), N'M', N'LO        ', 200, 4950, N'K1P                           ')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (93, N'ACC    ', CAST(N'2020-05-03T17:46:41.000' AS DateTime), N'B', N'LO        ', 0, 5000, N'CK                            ')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (94, N'ACC    ', CAST(N'2020-05-03T17:46:47.000' AS DateTime), N'B', N'LO        ', 0, 5500, N'CK                            ')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (95, N'ACC    ', CAST(N'2020-05-03T17:46:53.000' AS DateTime), N'B', N'LO        ', 0, 6000, N'CK                            ')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (96, N'ACC    ', CAST(N'2020-05-03T17:48:00.000' AS DateTime), N'M', N'LO        ', 200, 5200, N'K1P                           ')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (97, N'ACC    ', CAST(N'2020-05-03T17:48:44.000' AS DateTime), N'M', N'LO        ', 200, 5700, N'K1P                           ')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (98, N'ACC    ', CAST(N'2020-05-03T17:49:43.000' AS DateTime), N'M', N'LO        ', 1200, 5800, N'CK                            ')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (99, N'ACC    ', CAST(N'2020-05-03T17:50:28.000' AS DateTime), N'M', N'LO        ', 300, 6200, N'K1P                           ')
SET IDENTITY_INSERT [dbo].[LENHDAT] OFF
SET IDENTITY_INSERT [dbo].[LENHKHOP] ON 

INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (83, CAST(N'2020-05-03T17:18:24.827' AS DateTime), 1000, 4950, 91)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (84, CAST(N'2020-05-03T17:48:00.590' AS DateTime), 1000, 5200, 93)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (85, CAST(N'2020-05-03T17:48:44.673' AS DateTime), 1000, 5700, 94)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (86, CAST(N'2020-05-03T17:49:59.943' AS DateTime), 100, 6000, 95)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (87, CAST(N'2020-05-03T17:50:28.650' AS DateTime), 900, 6200, 95)
SET IDENTITY_INSERT [dbo].[LENHKHOP] OFF
ALTER TABLE [dbo].[GIATRUCTUYEN] ADD  CONSTRAINT [DF_GIATRUCTUYEN_MG2]  DEFAULT ((-1)) FOR [MG2]
GO
ALTER TABLE [dbo].[GIATRUCTUYEN] ADD  CONSTRAINT [DF_GIATRUCTUYEN_MK2]  DEFAULT ((-1)) FOR [MK2]
GO
ALTER TABLE [dbo].[GIATRUCTUYEN] ADD  CONSTRAINT [DF_GIATRUCTUYEN_MG1]  DEFAULT ((-1)) FOR [MG1]
GO
ALTER TABLE [dbo].[GIATRUCTUYEN] ADD  CONSTRAINT [DF_GIATRUCTUYEN_MK1]  DEFAULT ((-1)) FOR [MK1]
GO
ALTER TABLE [dbo].[GIATRUCTUYEN] ADD  CONSTRAINT [DF_GIATRUCTUYEN_GKHOP]  DEFAULT ((-1)) FOR [GKHOP]
GO
ALTER TABLE [dbo].[GIATRUCTUYEN] ADD  CONSTRAINT [DF_GIATRUCTUYEN_KLKHOP]  DEFAULT ((-1)) FOR [KLKHOP]
GO
ALTER TABLE [dbo].[GIATRUCTUYEN] ADD  CONSTRAINT [DF_GIATRUCTUYEN_BG1]  DEFAULT ((-1)) FOR [BG1]
GO
ALTER TABLE [dbo].[GIATRUCTUYEN] ADD  CONSTRAINT [DF_GIATRUCTUYEN_BK1]  DEFAULT ((-1)) FOR [BK1]
GO
ALTER TABLE [dbo].[GIATRUCTUYEN] ADD  CONSTRAINT [DF_GIATRUCTUYEN_BG2]  DEFAULT ((-1)) FOR [BG2]
GO
ALTER TABLE [dbo].[GIATRUCTUYEN] ADD  CONSTRAINT [DF_GIATRUCTUYEN_BK2]  DEFAULT ((-1)) FOR [BK2]
GO
ALTER TABLE [dbo].[LENHDAT] ADD  CONSTRAINT [DF_LENHDAT_NGAYDAT]  DEFAULT (getdate()) FOR [NGAYDAT]
GO
ALTER TABLE [dbo].[LENHKHOP]  WITH CHECK ADD  CONSTRAINT [FK_LENHKHOP_LENHDAT] FOREIGN KEY([IDLENHDAT])
REFERENCES [dbo].[LENHDAT] ([ID])
GO
ALTER TABLE [dbo].[LENHKHOP] CHECK CONSTRAINT [FK_LENHKHOP_LENHDAT]
GO
/****** Object:  StoredProcedure [dbo].[CursorLoaiGD]    Script Date: 03-May-20 5:52:44 PM ******/
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
	SELECT ID, NGAYDAT,SOLUONG, GIADAT FROM LENHDAT
	WHERE MACP =@macp AND DAY(NGAYDAT)=DAY(@ngay) AND MONTH(NGAYDAT) = MONTH(@ngay)  AND YEAR(NGAYDAT) = YEAR(@ngay) AND LOAIGD=@LoaiGD AND SOLUONG>0
	ORDER BY GIADAT DESC, NGAYDAT --  GIÁ ĐẶT GIẢM DẦN, NGÀY ĐẶT TĂNG DẦN
ELSE
	SET @OurCrsr =CURSOR KEYSET FOR
	SELECT ID, NGAYDAT,SOLUONG, GIADAT FROM LENHDAT
	WHERE MACP =@macp AND DAY(NGAYDAT)=DAY(@ngay) AND MONTH(NGAYDAT) = MONTH(@ngay)  AND YEAR(NGAYDAT) = YEAR(@ngay) AND LOAIGD=@LoaiGD AND SOLUONG>0 
	ORDER BY GIADAT , NGAYDAT --  GIÁ ĐẶT TĂNG DẦN, NGÀY ĐẶT TĂNG DẦN
OPEN @OurCrsr
GO
/****** Object:  StoredProcedure [dbo].[SP_CLEAR_BANG_GIA_TRUC_TUYEN]    Script Date: 03-May-20 5:52:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_CLEAR_BANG_GIA_TRUC_TUYEN]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	delete from GIATRUCTUYEN
END
GO
/****** Object:  StoredProcedure [dbo].[SP_KHOPLENH_LO]    Script Date: 03-May-20 5:52:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_KHOPLENH_LO] @macp nvarchar(10),
@Ngay nvarchar(50),
@LoaiGD char,
@soluongMB int,
@giadatMB float

AS
  SET DATEFORMAT DMY
  DECLARE @CrsrVar CURSOR,
          @ngaydat nvarchar(50),
          @soluong int,
          @giadat float,
          @soluongkhop int,
          @giakhop float,
          @ID int,
          @trangthailenh nvarchar(20)


  -- init
  SET @trangthailenh = 'CK'
  SET @soluongMB = @soluongMB

  -- Nếu lệnh Bán thì khớp với lệnh mua. Ưu tiên theo nguyên tắc đấu giá.
  -- Nếu lệnh Mua thì khớp với lệnh bán. Ưu tiên theo nguyên tắc đấu giá.
  IF (@LoaiGD = 'B')
    EXEC dbo.CursorLoaiGD @CrsrVar OUTPUT,
                          @macp,
                          @ngay,
                          'M' -- add table into cursor 
  ELSE
    EXEC dbo.CursorLoaiGD @CrsrVar OUTPUT,
                          @macp,
                          @ngay,
                          'B'

  FETCH NEXT FROM @CrsrVar INTO @ID, @ngaydat, @soluong, @giadat



  -- State  : FETCH_STATUS : 0  statement was successful
  -- State  :  FETCH_STATUs : -1	statement fail or  row beyond the result set
  -- Sate   : FETCH_STATUS : -2 row fetch is missing
  -- State  : FETCH_Status: -9	the curson is not peformance a fetch operation 

  BEGIN TRY
    WHILE (@@FETCH_STATUS <> -1
      AND @soluongMB > 0)
    BEGIN
      -- truong hop lenh ban
      IF (@LoaiGD = 'B')
      BEGIN
        IF (@giadatMB <= @giadat)
        BEGIN
          IF (@soluongMB > @soluong) -- Khop lennh 1 phan
          BEGIN
            SET @soluongkhop = @soluong
            SET @giakhop = @giadat
            SET @soluongMB = @soluongMB - @soluong

            UPDATE dbo.LENHDAT
            SET SOLUONG = 0
            WHERE CURRENT OF @CrsrVar  -- waring bug, no T-SQL

            -- update trang thai khop
            SET @trangthailenh = 'K1P'
          END

          ELSE --Khop toan bo
          BEGIN

            SET @soluongkhop = @soluongMB
            SET @giakhop = @giadat

            UPDATE dbo.LENHDAT
            SET SOLUONG = SOLUONG - @soluongMB
            WHERE CURRENT OF @CrsrVar

            SET @soluongMB = 0
            SET @trangthailenh = 'KTB'
          END



          -- insert khop lenh
          SELECT
            'loaiGD1' = @LoaiGD
          SELECT
            'giamuaban1' = @giadatMB  --debug
          SELECT
            'giadat1' = @giadat		--debug

          INSERT INTO dbo.LENHKHOP (NGAYKHOP, SOLUONGKHOP, GIAKHOP, IDLENHDAT)
            VALUES (GETDATE(), @soluongkhop, @giakhop, @ID);

          FETCH NEXT FROM @CrsrVar INTO @ID, @ngaydat, @soluong, @giadat

        END

		FETCH NEXT FROM @CrsrVar INTO @ID, @ngaydat, @soluong, @giadat
      END

      --else  -- truong hop  gia ca khong phu hop  (gia ban > gia mua)  
      --Fetch next from @CrsrVar into @ID, @ngaydat, @soluong, @giadat 

      -- truong hop la lenh M
      ELSE
      BEGIN
        SELECT
          'loaiGD2' = @LoaiGD
        SELECT
          'giamuaban2' = @giadatMB  --debug
        SELECT
          'giadat2' = @giadat      --debug
        --select @soluongkhop, @giakhop 
        IF (@giadatMB >= @giadat) -- gian mua cao hon gia ban (OK) 
        BEGIN
          IF (@soluongMB > @soluong) -- Khop lenh 1 phan
          BEGIN
            SET @soluongkhop = @soluong
            SET @giakhop = @giadatMB
            SET @soluongMB = @soluongMB - @soluong

            UPDATE dbo.LENHDAT
            SET SOLUONG = 0
            WHERE CURRENT OF @CrsrVar
            SET @trangthailenh = 'K1P'
          END
          -- truong hop khop het
          ELSE
          BEGIN
            SET @soluongkhop = @soluongMB
            SET @giakhop = @giadatMB

            UPDATE dbo.LENHDAT
            SET SOLUONG = SOLUONG - @soluongMB
            WHERE CURRENT OF @CrsrVar

            SET @soluongMB = 0
            SET @trangthailenh = 'KTB'
          END

          -- insert khop lenh
          INSERT INTO dbo.LENHKHOP (NGAYKHOP, SOLUONGKHOP, GIAKHOP, IDLENHDAT)
            VALUES (GETDATE(), @soluongkhop, @giakhop, @ID);
          FETCH NEXT FROM @CrsrVar INTO @ID, @ngaydat, @soluong, @giadat
        END

      else 
      Fetch next from @CrsrVar into @ID, @ngaydat, @soluong, @giadat 
      END
    END
  THOAT:

    IF (@trangthailenh != 'KTB')
    BEGIN
      INSERT INTO LENHDAT (MACP, NGAYDAT, LOAIGD, LOAILENH, SOLUONG, GIADAT, TRANGTHAILENH)
        VALUES (@macp, @ngay, @LoaiGD, 'LO', @soluongMB, @giadatMB, @trangthailenh);
    END

    CLOSE @CrsrVar
    DEALLOCATE @CrsrVar
    RETURN 0;

  END TRY
  BEGIN CATCH
    RETURN -1;
  END CATCH
GO
USE [master]
GO
ALTER DATABASE [CHUNGKHOAN] SET  READ_WRITE 
GO
