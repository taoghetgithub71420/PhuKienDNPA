USE [master]
GO
/****** Object:  Database [QLBANPHUKIEN]    Script Date: 6/28/2021 1:37:58 PM ******/
CREATE DATABASE [QLBANPHUKIEN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBANSACH', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL12.ANDEPTRAI\MSSQL\DATA\QLBANSACH.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLBANSACH_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL12.ANDEPTRAI\MSSQL\DATA\QLBANSACH_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLBANPHUKIEN] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBANPHUKIEN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBANPHUKIEN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBANPHUKIEN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBANPHUKIEN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBANPHUKIEN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBANPHUKIEN] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBANPHUKIEN] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLBANPHUKIEN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBANPHUKIEN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBANPHUKIEN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBANPHUKIEN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBANPHUKIEN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBANPHUKIEN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBANPHUKIEN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBANPHUKIEN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBANPHUKIEN] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLBANPHUKIEN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBANPHUKIEN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBANPHUKIEN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBANPHUKIEN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBANPHUKIEN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBANPHUKIEN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBANPHUKIEN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBANPHUKIEN] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLBANPHUKIEN] SET  MULTI_USER 
GO
ALTER DATABASE [QLBANPHUKIEN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBANPHUKIEN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBANPHUKIEN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBANPHUKIEN] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLBANPHUKIEN] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QLBANPHUKIEN]
GO
/****** Object:  Table [dbo].[CHITIETDONTHANG]    Script Date: 6/28/2021 1:37:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONTHANG](
	[MaDonHang] [int] NOT NULL,
	[MaPK] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CTDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaPK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHUDE]    Script Date: 6/28/2021 1:37:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUDE](
	[MaCD] [int] IDENTITY(1,1) NOT NULL,
	[TenChuDe] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CHUDE_1] PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 6/28/2021 1:37:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[Dathanhtoan] [bit] NULL,
	[Tinhtranggiaohang] [bit] NULL,
	[Ngaydat] [datetime] NULL,
	[Ngaygiao] [datetime] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DONDATHANG] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 6/28/2021 1:37:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[Taikhoan] [varchar](50) NULL,
	[Matkhau] [varchar](50) NOT NULL,
	[Email] [varchar](100) NULL,
	[DiachiKH] [nvarchar](200) NULL,
	[DienthoaiKH] [varchar](50) NULL,
	[Ngaysinh] [datetime] NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHUKIEN]    Script Date: 6/28/2021 1:37:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHUKIEN](
	[MaPK] [int] IDENTITY(1,1) NOT NULL,
	[TenPK] [nvarchar](100) NOT NULL,
	[Giaban] [decimal](18, 0) NULL,
	[Mota] [nvarchar](max) NULL,
	[Anhbia] [varchar](50) NULL,
	[Ngaycapnhat] [datetime] NULL,
	[Soluongton] [int] NULL,
	[MaCD] [int] NULL,
	[IDParent] [int] NULL,
	[STT] [int] NULL,
 CONSTRAINT [PK_Phukien] PRIMARY KEY CLUSTERED 
(
	[MaPK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CHUDE] ON 

INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (1, N'Linh Kien PC')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (5, N'Bàn Phím')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (6, N'Chuột - Lót Chuột ')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (7, N'Tai Nghe ')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (8, N'Ghê Gaming')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (9, N'Thiết Bị Audio')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (10, N'Thiêt Bị Văn Phòng')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (11, N'Phụ Kiện Khác')
SET IDENTITY_INSERT [dbo].[CHUDE] OFF
SET IDENTITY_INSERT [dbo].[PHUKIEN] ON 

INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (4, N'Intel Core i7 10700 / 16MB / 2.9GHz / 8 Nhân 16 Luồng / LGA 1200', CAST(8590000 AS Decimal(18, 0)), N'Hãng sản xuất: Intel', N'lk1', NULL, 10, 1, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (5, N'AMD Ryzen 7 3700x /36MB /3.6GHz /8 nhân 16 luồng', CAST(8490000 AS Decimal(18, 0)), N'Nhà sản xuất : AMD', N'lk3', NULL, 10, 1, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (6, N'MSI H410M-A PRO', CAST(1790000 AS Decimal(18, 0)), N'Hãng Sản Xuất: MSI', N'lk4', NULL, 10, 1, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (7, N'Intel Core i9 10850KA / 20MB / 3.6GHz / 10 Nhân 20 Luồng', CAST(11390000 AS Decimal(18, 0)), N'Hãng sản xuất: Intel', N'lk2', NULL, 10, 1, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (8, N'Bàn phím Razer Blackwidow Green Switch - 2019', CAST(2690000 AS Decimal(18, 0)), N'Nhà sản xuất : Razer', N'Bp1', NULL, 9, 5, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (9, N'Bàn phím cơ Mistel X8 Bumblebee', CAST(2490000 AS Decimal(18, 0)), N'Hãng sản xuất: Mistel', N'bp2', NULL, 22, 5, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (10, N'Bàn phím Leopold FC660MPD Bluetooth', CAST(3150000 AS Decimal(18, 0)), N'Hãng sản xuất: Leopold ', N'bp3', NULL, 8, 5, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (11, N'Bàn phím cơ Leopold FC980M PD Dark Yellow', CAST(3650000 AS Decimal(18, 0)), N'Nhà sản xuất: Leopold', N'bp4', NULL, 16, 5, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (12, N'Chuột Logitech G502 Hero', CAST(990000 AS Decimal(18, 0)), N'Nhà Sản Xuất : Logitech', N'c1', NULL, 20, 6, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (13, N'Chuột Razer Viper Mini', CAST(880000 AS Decimal(18, 0)), N' Nhà Sản Xuất : Razer', N'c2', NULL, 11, 6, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (14, N'Chuột SteelSeries Sensei Ten', CAST(1390000 AS Decimal(18, 0)), N'Nhà Sản Xuất : Steelseries', N'c3', NULL, 8, 6, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (15, N'Chuột Corsair M55 RGB Pro', CAST(790000 AS Decimal(18, 0)), N'Nhà Sản Xuất: Corsair', N'c4', NULL, 2, 6, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (16, N'Tai nghe HyperX Cloud Earbuds', CAST(790000 AS Decimal(18, 0)), N'Hãng sản xuất : HyperX', N'tn1', NULL, 4, 7, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (17, N'Tai nghe HyperX Cloud II RED', CAST(2090000 AS Decimal(18, 0)), N'Nhà sản xuất : Kingston', N'tn2', NULL, 6, 7, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (18, N'Tai nghe Logitech G Pro X', CAST(2990000 AS Decimal(18, 0)), N'Nhà sản xuất : Logitech', N'tn3', NULL, 8, 7, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (19, N'DAREU EH469 7.1 RGB PINK', CAST(440000 AS Decimal(18, 0)), N'Thương hiệu: DareU', N'tn4', NULL, 10, 7, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (20, N'Ghế chơi game Warrior WGC102 Black', CAST(2450000 AS Decimal(18, 0)), N'Hãng sản xuất: Warrior', N'ghe1', NULL, 11, 8, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (21, N'Ghế chơi game E-Dra Ares EGC207 Pink', CAST(3190000 AS Decimal(18, 0)), N'Hãng sản xuất: E-Dra', N'ghe2', NULL, 16, 8, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (22, N'Ghế Cougar Armor K Black', CAST(4890000 AS Decimal(18, 0)), N'Hãng sản xuất: Cougar', N'ghe3', NULL, 1, 8, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (23, N'Ghế chơi game DXRacer G Series OH/GB001/NR', CAST(7690000 AS Decimal(18, 0)), N'Hãng sản xuất: DXRacer', N'ghe4', NULL, 8, 8, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (24, N'Tai nghe True Wireless Soundpeats Truengine 3 SE', CAST(950000 AS Decimal(18, 0)), N'Hãng sản xuất: Soundpeats', N'a2', NULL, 9, 9, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (25, N'Loa Ultimate Ears WonderBoom 2', CAST(1390000 AS Decimal(18, 0)), N'Nhà sản xuất: Ultimate Ears', N'a1', NULL, 7, 9, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (26, N'Loa Bluetooth JBL Flip 5', CAST(2100000 AS Decimal(18, 0)), N'Nhà sản xuất : JBL', N'a3', NULL, 6, 9, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (27, N'Loa bluetooth JBL PartyBox On The Go', CAST(7990000 AS Decimal(18, 0)), N'Hãng sản xuất: JBL ', N'a4', NULL, 5, 9, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (28, N'Máy in Brother In Phun đa chức năng DCP-T710W', CAST(5100000 AS Decimal(18, 0)), N'Nhà sản xuất      : Brother', N'vp1', NULL, 22, 10, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (29, N'Máy in laser BROTHER MFC-L6900DW', CAST(22990000 AS Decimal(18, 0)), N'Hãng sản xuất : Brother', N'vp2', NULL, 21, 10, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (30, N'Máy in phun màu BROTHER HL-T4000DW', CAST(12000000 AS Decimal(18, 0)), N'Nhà sản xuất      : Brother', N'vp3', NULL, 30, 10, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (31, N'Mực in Brother BT 5000Y', CAST(140000 AS Decimal(18, 0)), N'Nhà sản xuất      : Brother', N'vp4', NULL, 26, 10, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (32, N'Asus AI Noise-Canceling Mic Adapter', CAST(790000 AS Decimal(18, 0)), N'Hãng sản xuất: ASUS', N'pk1', NULL, 24, 11, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (33, N'Bộ chuyển đổi âm thanh Dolby Virtual 7.1', CAST(1100000 AS Decimal(18, 0)), N'Nhà sản xuất : HyperX', N'pk2', NULL, 25, 11, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (34, N'Bộ phụ kiện Razer L33t Pack V3', CAST(1500000 AS Decimal(18, 0)), N'Hãng sản xuất: Razer ', N'pk3', NULL, 26, 11, NULL, NULL)
INSERT [dbo].[PHUKIEN] ([MaPK], [TenPK], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [IDParent], [STT]) VALUES (35, N'Cáp Chia Audio 3.5mm ra 2 jack 3.5mm cao cấp Ugreen 10790', CAST(150000 AS Decimal(18, 0)), N' Nhà sản xuất : UGreen', N'pk4', NULL, 24, 11, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PHUKIEN] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__KHACHHAN__7FB3F64FD4BA1D1D]    Script Date: 6/28/2021 1:37:58 PM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[Taikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__KHACHHAN__A9D105342595C640]    Script Date: 6/28/2021 1:37:58 PM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONTHANG_DONDATHANG] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DONDATHANG] ([MaDonHang])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [FK_CHITIETDONTHANG_DONDATHANG]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONTHANG_PHUKIEN] FOREIGN KEY([MaPK])
REFERENCES [dbo].[PHUKIEN] ([MaPK])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [FK_CHITIETDONTHANG_PHUKIEN]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [CK__CHITIETDO__Dongi__1ED998B2] CHECK  (([Dongia]>=(0)))
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [CK__CHITIETDO__Dongi__1ED998B2]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [CK__CHITIETDO__Soluo__1DE57479] CHECK  (([Soluong]>(0)))
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [CK__CHITIETDO__Soluo__1DE57479]
GO
ALTER TABLE [dbo].[PHUKIEN]  WITH CHECK ADD CHECK  (([Giaban]>=(0)))
GO
USE [master]
GO
ALTER DATABASE [QLBANPHUKIEN] SET  READ_WRITE 
GO
