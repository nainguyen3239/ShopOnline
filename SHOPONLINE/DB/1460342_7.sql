USE [master]
GO
/****** Object:  Database [MiniShop]    Script Date: 4/25/2017 20:52:02 PM ******/
CREATE DATABASE [MiniShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MiniShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.NAINGUYEN3239\MSSQL\DATA\MiniShop.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MiniShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.NAINGUYEN3239\MSSQL\DATA\MiniShop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MiniShop] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MiniShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MiniShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MiniShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MiniShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MiniShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MiniShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [MiniShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MiniShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MiniShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MiniShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MiniShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MiniShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MiniShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MiniShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MiniShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MiniShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MiniShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MiniShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MiniShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MiniShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MiniShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MiniShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MiniShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MiniShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MiniShop] SET  MULTI_USER 
GO
ALTER DATABASE [MiniShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MiniShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MiniShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MiniShop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MiniShop] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MiniShop]
GO
/****** Object:  Table [dbo].[LOAISANPHAM]    Script Date: 4/25/2017 20:52:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISANPHAM](
	[MaLoaiSanPham] [nvarchar](50) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL,
	[TinhTrang] [nchar](10) NULL CONSTRAINT [DF_LOAISANPHAM_TinhTrang]  DEFAULT ((0)),
 CONSTRAINT [PK_LOAISANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHASANXUAT]    Script Date: 4/25/2017 20:52:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHASANXUAT](
	[MaNhaSanXuat] [nvarchar](50) NOT NULL,
	[TenNhaSanXuat] [nvarchar](50) NULL,
	[TinhTrang] [nchar](10) NULL CONSTRAINT [DF_NHASANXUAT_TinhTrang]  DEFAULT ((0)),
 CONSTRAINT [PK_NHASANXUAT] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 4/25/2017 20:52:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSanPham] [nvarchar](50) NOT NULL,
	[MaLoaiSanPham] [nvarchar](50) NULL,
	[MaNhaSanXuat] [nvarchar](50) NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[MoTaSanPham] [nvarchar](max) NULL,
	[HinhChinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Hinh4] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoLuong] [int] NULL,
	[LuotView] [int] NULL,
	[TinhTrang] [nchar](10) NULL,
	[GhiChu] [nvarchar](50) NULL CONSTRAINT [DF_SANPHAM_GhiChu]  DEFAULT (N'New'),
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[LOAISANPHAM] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP01', N'Amine', N'0         ')
INSERT [dbo].[LOAISANPHAM] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP02', N'Mini', N'0         ')
INSERT [dbo].[LOAISANPHAM] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP03', N'BupBe', N'0         ')
INSERT [dbo].[LOAISANPHAM] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP04', N'AoQuan', N'0         ')
INSERT [dbo].[NHASANXUAT] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'1', N'Yongzhi', N'0         ')
INSERT [dbo].[NHASANXUAT] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'2', N'Blue Me And You', N'0         ')
INSERT [dbo].[NHASANXUAT] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'3', N'Flickr', N'0         ')
INSERT [dbo].[NHASANXUAT] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'4', N'YooGuo', N'0         ')
INSERT [dbo].[NHASANXUAT] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'5', N'Nine9Style', N'0         ')
INSERT [dbo].[NHASANXUAT] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'6', N'Conan', N'1         ')
INSERT [dbo].[NHASANXUAT] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'7', N'Kyo', N'1         ')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [MoTaSanPham], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuong], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'01', N'LSP01', N'1', N'Miku Hatsune', N'Sản phẩm mô hình đồ chơi trẻ em', N'MikuHatsune.jpg', N'MIKUNENDOROID.jpg', N'SakuraMiku.jpg', N'MikuNgayMua.jpg', N'MikuNgayMua01.jpg', 250000, 10000, 0, N'0         ', NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [MoTaSanPham], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuong], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'02', N'LSP01', N'1', N'Girls Und Panzer', N'Sản phẩm mô hình đồ chơi trẻ em', N'GirlsundPanzer.jpg', N'HirazawaYuiDanDan.jpg', N'TakaneManaka.jpg', N'Utano.jpg', N'UtaHocSinh.jpg', 250000, 1000, 0, N'0         ', NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [MoTaSanPham], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuong], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'03', N'LSP01', N'1', N'Marvel', N'Sản phẩm mô hình đồ chơi trẻ em', N'Joker1.jpg', N'Joker2.jpg', N'Joker3.jpg', N'CAP1.jpg', N'CAP2.jpg', 260000, 10000, 0, N'0         ', NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [MoTaSanPham], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuong], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'04', N'LSP01', N'1', N'Asakura', N'Sản phẩm mô hình đồ chơi trẻ em', N'Asakura2.jpg', N'Asakura1.jpg', N'Asakura3.jpg', N'Asakura4.jpg', N'Asakura5.jpg', 510000, 1000, 0, N'0         ', NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [MoTaSanPham], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuong], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'05', N'LSP03', N'5', N'Doll Girl', N'Sản phẩm mô hình đồ chơi trẻ em', N'bupbe1.jpg', N'bupbe2.jpg', N'bupbe3.jpg', N'bupbe4.jpg', N'bupbe5.jpg', 2950000, 100, 0, N'0         ', NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [MoTaSanPham], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuong], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'06', N'LSP03', N'5', N'Doll Boy', N'Sản phẩm mô hình đồ chơi trẻ em', N'bupbeboy01.jpg', N'bupbeboy02.jpg', N'bupbeboy03.jpg', N'bupbeboy04.jpg', N'bupbeboy05.jpg', 3900000, 100, 1, N'0         ', NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [MoTaSanPham], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuong], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'07', N'LSP03', N'5', N'Baby Girl', N'Sản phẩm mô hình đồ chơi trẻ em', N'bupbe01.jpg', N'bupbe02.jpg', N'bupbe03.jpg', N'bupbe04.jpg', N'bupbe05.jpg', 1550000, 1000, 2, N'0         ', NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [MoTaSanPham], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuong], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'08', N'LSP02', N'3', N'Paper(Mini)', N'Sản phẩm mô hình đồ chơi trẻ em', N'Dep02.jpg', N'Dep01.jpg', N'Dep01.jpg', N'Dep02.jpg', N'Dep01.jpg', 310000, 100, 3, N'0         ', NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [MoTaSanPham], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuong], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'09', N'LSP02', N'2', N'Balo(Mini)', N'Sản phẩm mô hình đồ chơi trẻ em', N'Balo01.jpg', N'Balo02.jpg', N'Balo03.jpg', N'Balo04.jpg', N'Balo05.jpg', 190000, 100, 4, N'0         ', NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [MoTaSanPham], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuong], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'10', N'LSP02', N'4', N'Bong Tai Thu', N'San Pham danh cho nguoi lon', N'bongtai02.jpg', N'bongtai01.jpg', N'bongtai03.jpg', N'bongtai04.jpg', N'bongtai02.jpg', 150000, 150, 0, N'0         ', N'New')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [MoTaSanPham], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuong], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'11', N'LSP01', N'1', N'Naruto', N'Sản phẩm mô hình đồ chơi trẻ em', N'Naruto01.jpg', N'Naruto02.jpg', N'Naruto01.jpg', N'Naruto02.jpg', N'Naruto01.jpg', 250000, 1000, 0, N'0         ', N'New')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [MoTaSanPham], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuong], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'12', N'LSP01', N'1', N'Saitama', N'Sản phẩm mô hình đồ chơi trẻ em', N'Saitama1.jpg', N'Saitama2.jpg', N'Saitama3.jpg', N'Saitama4.jpg', N'Saitama5.jpg', 250000, 1000, 9, N'0         ', N'New')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [MoTaSanPham], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuong], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'13', N'LSP01', N'1', N'Aoba And Ren', N'Sản phẩm mô hình đồ chơi trẻ em', N'AobaAndRen01.jpg', N'AobaAndRen02.jpg', N'AobaAndRen03.jpg', N'AobaAndRen01.jpg', N'AobaAndRen02.jpg', 250000, 1000, 0, N'0         ', N'New')
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [MoTaSanPham], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuong], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'15', NULL, NULL, N'amin212', N'san pham cho tre em123', NULL, NULL, NULL, NULL, NULL, 120001, 1001, NULL, N'0         ', NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [MoTaSanPham], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuong], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'16', N'LSP01', N'1', N'mo hinhq', N'do choi tre em12', NULL, NULL, NULL, NULL, NULL, 121212, 12121, NULL, N'0         ', NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [MoTaSanPham], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuong], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'18', N'LSP04', N'5', N'nainguyen1', N'1', NULL, NULL, NULL, NULL, NULL, 1212121, 21211, NULL, N'0         ', NULL)
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_LOAISANPHAM] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LOAISANPHAM] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_LOAISANPHAM]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_NHASANXUAT] FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[NHASANXUAT] ([MaNhaSanXuat])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_NHASANXUAT]
GO
USE [master]
GO
ALTER DATABASE [MiniShop] SET  READ_WRITE 
GO
