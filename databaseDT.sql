USE [master]
GO
/****** Object:  Database [QuanLybanDT]    Script Date: 6/5/2020 2:15:33 PM ******/
CREATE DATABASE [QuanLybanDT]
 
GO
ALTER DATABASE [QuanLybanDT] SET COMPATIBILITY_LEVEL = 110
GO


ALTER DATABASE [QuanLybanDT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLybanDT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLybanDT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLybanDT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLybanDT] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLybanDT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLybanDT] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLybanDT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLybanDT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLybanDT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLybanDT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLybanDT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLybanDT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLybanDT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLybanDT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLybanDT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLybanDT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLybanDT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLybanDT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLybanDT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLybanDT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLybanDT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLybanDT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLybanDT] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLybanDT] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLybanDT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLybanDT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLybanDT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLybanDT] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QuanLybanDT]
GO
/****** Object:  Table [dbo].[ChiTietHDBan]    Script Date: 6/5/2020 2:15:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDBan](
	[MaHDBan] [nvarchar](50) NOT NULL,
	[MaDienThoai] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
	[GiamGia] [float] NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK_ChiTietHDBan] PRIMARY KEY CLUSTERED 
(
	[MaHDBan] ASC,
	[MaDienThoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DienThoai]    Script Date: 6/5/2020 2:15:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DienThoai](
	[MaDienThoai] [nvarchar](50) NOT NULL,
	[TenDienThoai] [nvarchar](50) NULL,
	[MaHang] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[DonGiaNhap] [float] NULL,
	[DonGiaBan] [float] NULL,
	[Anh] [nvarchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_DienThoai] PRIMARY KEY CLUSTERED 
(
	[MaDienThoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hang]    Script Date: 6/5/2020 2:15:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hang](
	[MaHang] [nvarchar](50) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
 CONSTRAINT [PK_Hang] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HDBan]    Script Date: 6/5/2020 2:15:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDBan](
	[MaHDBan] [nvarchar](50) NOT NULL,
	[MaNhanVien] [nvarchar](50) NULL,
	[NgayBan] [datetime] NULL,
	[MaKhachHang] [nvarchar](50) NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_HDBan] PRIMARY KEY CLUSTERED 
(
	[MaHDBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/5/2020 2:15:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [nvarchar](50) NOT NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDT] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 6/5/2020 2:15:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[TaiKhoan] [nvarchar](50) NOT NULL,
	[Matkhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/5/2020 2:15:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5172020_162734', N'DT01', 5, 22000000, 1, 108900000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5172020_162734', N'DT02', 1, 31000000, 0, 31000000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5182020_132110', N'DT02', 9, 31000000, 0, 279000000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5202020_153813', N'DT01', 2, 22000000, 10, 39600000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5202020_153813', N'DT02', 6, 31000000, 15, 158100000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5202020_153925', N'DT01', 3, 22000000, 0, 66000000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5202020_153925', N'DT02', 1, 31000000, 0, 31000000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5202020_154553', N'DT01', 3, 22000000, 0, 66000000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5202020_154553', N'DT02', 1, 31000000, 0, 31000000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5202020_155144', N'DT01', 2, 22000000, 0, 44000000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5202020_155144', N'DT02', 1, 31000000, 0, 31000000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5202020_155556', N'DT02', 1, 31000000, 0, 31000000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5202020_155744', N'DT02', 3, 31000000, 0, 93000000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5202020_160358', N'DT01', 1, 22000000, 10, 19800000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5202020_160358', N'DT02', 2, 31000000, 30, 43400000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5202020_220603', N'DT01', 5, 22000000, 19, 89100000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5212020_221146', N'DT01', 1, 22000000, 10, 19800000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5232020_210916', N'DT03', 1, 50000000, 0, 50000000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5232020_210916', N'DT07', 1, 28000000, 10, 25200000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5232020_211009', N'DT06', 2, 26000000, 10, 46800000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5272020_163946', N'DT02', 8, 31000000, 10, 223200000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5272020_164259', N'DT01', 1, 22000000, 0, 22000000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5302020_155129', N'DT05', 1, 14000000, 0, 14000000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5302020_155207', N'DT07', 2, 28000000, 0, 56000000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5302020_155207', N'DT08', 3, 10000000, 0, 30000000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5302020_155242', N'DT06', 1, 26000000, 0, 26000000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5302020_155301', N'DT03', 1, 50000000, 0, 50000000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5302020_155329', N'DT05', 1, 14000000, 0, 14000000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5302020_155739', N'DT09', 1, 6300000, 0, 6300000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5302020_155739', N'DT11', 2, 6000000, 0, 12000000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5302020_155816', N'DT10', 1, 11000000, 0, 11000000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5302020_162610', N'DT14', 1, 22000000, 0, 22000000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB5302020_162652', N'DT12', 5, 36000000, 5, 171000000)
INSERT [dbo].[ChiTietHDBan] ([MaHDBan], [MaDienThoai], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB632020_105051', N'DT15', 1, 14000000, 5, 13300000)
INSERT [dbo].[DienThoai] ([MaDienThoai], [TenDienThoai], [MaHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu]) VALUES (N'DT01', N'Samsung Galaxy S10', N'SSVN', 80, 20000000, 22000000, N'D:\ImageDoAn\s10.jpg', N'SSVN')
INSERT [dbo].[DienThoai] ([MaDienThoai], [TenDienThoai], [MaHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu]) VALUES (N'DT02', N'Iphone 11 Promax', N'Apple', 64, 30000000, 31000000, N'D:\ImageDoAn\iphone11.jpg', N'apella')
INSERT [dbo].[DienThoai] ([MaDienThoai], [TenDienThoai], [MaHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu]) VALUES (N'DT03', N'Samsung Galaxy Fold', N'SSVN', 48, 46000000, 50000000, N'D:\ImageDoAn\ssfold.jpg', N'Được thiết kế có thể gập mở đẹp mắt')
INSERT [dbo].[DienThoai] ([MaDienThoai], [TenDienThoai], [MaHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu]) VALUES (N'DT04', N'Samsung Galaxy Note10+', N'SSVN', 60, 21000000, 22500000, N'D:\ImageDoAn\images (1).jpg', N'Thiết kế hiện đại với chiếc bút đa năng')
INSERT [dbo].[DienThoai] ([MaDienThoai], [TenDienThoai], [MaHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu]) VALUES (N'DT05', N'Xiaomi Mi Note10 Pro', N'Xiaomi', 18, 12000000, 14000000, N'D:\ImageDoAn\download.jpg', N'Sản phẩm flag xiaomi')
INSERT [dbo].[DienThoai] ([MaDienThoai], [TenDienThoai], [MaHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu]) VALUES (N'DT06', N'Huawei P40 Pro', N'Huawei', 47, 25000000, 26000000, N'D:\ImageDoAn\p40pro.jpg', N'sp mới nhất')
INSERT [dbo].[DienThoai] ([MaDienThoai], [TenDienThoai], [MaHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu]) VALUES (N'DT07', N'S20 Ultra', N'SSVN', 47, 26000000, 28000000, N'D:\ImageDoAn\s20 ulltra 25.jpg', N'ss thế hệ mới')
INSERT [dbo].[DienThoai] ([MaDienThoai], [TenDienThoai], [MaHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu]) VALUES (N'DT08', N'Samsung A90', N'SSVN', 47, 7000000, 10000000, N'D:\ImageDoAn\a90.jpg', N'')
INSERT [dbo].[DienThoai] ([MaDienThoai], [TenDienThoai], [MaHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu]) VALUES (N'DT09', N'Xiaomi Redmi Note 9s', N'Xiaomi', 49, 6000000, 6300000, N'D:\ImageDoAn\redminote9s.jpg', N'Dep')
INSERT [dbo].[DienThoai] ([MaDienThoai], [TenDienThoai], [MaHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu]) VALUES (N'DT10', N'Huawei Nova 7i', N'Huawei', 59, 10000000, 11000000, N'D:\ImageDoAn\nova7i.jpg', N'Huawei new')
INSERT [dbo].[DienThoai] ([MaDienThoai], [TenDienThoai], [MaHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu]) VALUES (N'DT11', N'Nokia 8.2', N'Nokia', 28, 5000000, 6000000, N'D:\ImageDoAn\nokia82.jpg', N'nokaskss')
INSERT [dbo].[DienThoai] ([MaDienThoai], [TenDienThoai], [MaHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu]) VALUES (N'DT12', N'Samsung Zlflip', N'SSVN', 45, 32000000, 36000000, N'D:\ImageDoAn\zflip36.jpg', N'Gap mh')
INSERT [dbo].[DienThoai] ([MaDienThoai], [TenDienThoai], [MaHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu]) VALUES (N'DT13', N'Redmi Note 8 Pro', N'Xiaomi', 30, 4900000, 5500000, N'D:\ImageDoAn\xiaomi-redmi-note-8-pro-white-56.jpg', N'sp moi nhap')
INSERT [dbo].[DienThoai] ([MaDienThoai], [TenDienThoai], [MaHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu]) VALUES (N'DT14', N'Iphone 11 Green', N'Apple', 49, 20000000, 22000000, N'D:\ImageDoAn\iphone-11-128gb-green-22.jpg', N'dt dep')
INSERT [dbo].[DienThoai] ([MaDienThoai], [TenDienThoai], [MaHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu]) VALUES (N'DT15', N'Iphone 8s Plus', N'Apple', 29, 12000000, 14000000, N'D:\ImageDoAn\iphone-8-plus-(12).jpg', N'sp dep')
INSERT [dbo].[DienThoai] ([MaDienThoai], [TenDienThoai], [MaHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu]) VALUES (N'DT16', N'Huawei Nova 5t', N'Huawei', 50, 7000000, 7600000, N'D:\ImageDoAn\huawei-nova-5t-8.jpg', N'')
INSERT [dbo].[Hang] ([MaHang], [TenHang]) VALUES (N'Apple', N'Apple')
INSERT [dbo].[Hang] ([MaHang], [TenHang]) VALUES (N'Huawei', N'Huawei')
INSERT [dbo].[Hang] ([MaHang], [TenHang]) VALUES (N'Nokia', N'Nokia')
INSERT [dbo].[Hang] ([MaHang], [TenHang]) VALUES (N'SSVN', N'SamSung')
INSERT [dbo].[Hang] ([MaHang], [TenHang]) VALUES (N'Xiaomi', N'Xiaomi Redmi')
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5172020_162734', N'NV01', CAST(0x0000ABBE010F3E48 AS DateTime), N'KH01', 143240000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5182020_132110', N'NV02', CAST(0x0000ABBF00DC0C08 AS DateTime), N'KH01', 279000000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5202020_153813', N'NV01', CAST(0x0000ABC10101B05C AS DateTime), N'KH01', 197700000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5202020_153925', N'NV01', CAST(0x0000ABC1010204BC AS DateTime), N'KH02', 123000000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5202020_154553', N'NV02', CAST(0x0000ABC10103CB6C AS DateTime), N'KH01', 88000000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5202020_155144', N'NV02', CAST(0x0000ABC1010566C0 AS DateTime), N'KH02', 75000000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5202020_155556', N'NV01', CAST(0x0000ABC101068E10 AS DateTime), N'KH02', 31000000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5202020_155744', N'NV02', CAST(0x0000ABC101070CA0 AS DateTime), N'KH02', 93000000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5202020_160358', N'NV02', CAST(0x0000ABC10108C2E8 AS DateTime), N'KH02', 63200000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5202020_220603', N'NV02', CAST(0x0000ABC1016C35E4 AS DateTime), N'KH01', 89100000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5212020_221146', N'NV08', CAST(0x0000ABC2016DC7D8 AS DateTime), N'KH01', 19800000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5232020_210916', N'NV08', CAST(0x0000ABC4015C9D50 AS DateTime), N'KH03', 75200000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5232020_211009', N'NV05', CAST(0x0000ABC4015CDB6C AS DateTime), N'KH04', 46800000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5272020_163946', N'NV10', CAST(0x0000ABC801129818 AS DateTime), N'KH06', 223200000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5272020_164259', N'NV04', CAST(0x0000ABC801137A44 AS DateTime), N'KH04', 22000000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5302020_155129', N'NV10', CAST(0x0000ABCB0105552C AS DateTime), N'KH10', 14000000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5302020_155207', N'NV10', CAST(0x0000ABCB010581B4 AS DateTime), N'KH09', 86000000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5302020_155242', N'NV05', CAST(0x0000ABCB0105AAB8 AS DateTime), N'KH06', 26000000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5302020_155301', N'NV07', CAST(0x0000ABCB0105C0FC AS DateTime), N'KH11', 50000000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5302020_155329', N'NV05', CAST(0x0000ABCB0105E1CC AS DateTime), N'KH07', 14000000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5302020_155739', N'NV08', CAST(0x0000ABCB010706C4 AS DateTime), N'KH08', 18300000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5302020_155816', N'NV05', CAST(0x0000ABCB01073220 AS DateTime), N'KH09', 11000000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5302020_162610', N'NV06', CAST(0x0000ABCB010EDBD8 AS DateTime), N'KH11', 22000000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB5302020_162652', N'NV07', CAST(0x0000ABCB010F0D10 AS DateTime), N'KH10', 171000000)
INSERT [dbo].[HDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhachHang], [TongTien]) VALUES (N'HDB632020_105051', N'NV05', CAST(0x0000ABCF00B2C2E4 AS DateTime), N'KH12', 13300000)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDT], [Email]) VALUES (N'KH01', N'Nguyễn Sơn', N'232 Hoàng Quốc Việt', N'098-252-5516', N'sonaj@gmail.com')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDT], [Email]) VALUES (N'KH02', N'Phan Tấn Trung', N'160 Cầu Giấy,Hà Nội', N'063-669-9918', N'trnand@gmail.com')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDT], [Email]) VALUES (N'KH03', N'Lê Trọng Bách', N'151 Quan Nhân', N'065-565-6566', N'dd265@gmail.com')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDT], [Email]) VALUES (N'KH04', N'Vũ Trọng Nghĩa', N'160 Hoàng Quốc Việt', N'055-941-3321', N'nahh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDT], [Email]) VALUES (N'KH05', N'Hoàng Sơn Thế', N'15 Kim Ngưu', N'065-152-3364', N'hssstttt@gmail.com')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDT], [Email]) VALUES (N'KH06', N'Dũng non', N'Hà Nội', N'095-555-1547', N'dung@gmail.com')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDT], [Email]) VALUES (N'KH07', N'Hùng', N'Cầu Giấy', N'095-554-523', N'ko@gmail.com')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDT], [Email]) VALUES (N'KH08', N'Huỳnh Tấn Vũ', N'Nghệ An', N'095-684-2221', N'ss@gmail.com')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDT], [Email]) VALUES (N'KH09', N'Huỳnh Mỹ Linh', N'159 Nghĩa Tân', N'068-845-1325', N'lop@gmail.com')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDT], [Email]) VALUES (N'KH10', N'Lê Mĩ Linh', N'VN', N'095-561-3621', N'lsss2@gmail.com')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDT], [Email]) VALUES (N'KH11', N'Trương Tuấn Phương', N'Hà Nội', N'095-112-5499', N'assdddd@gmail.com')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDT], [Email]) VALUES (N'KH12', N'Đào Quang Anh', N'Hồ Chí Minh', N'095-551-3548', N'null')
INSERT [dbo].[NguoiDung] ([TaiKhoan], [Matkhau]) VALUES (N'nhat', N'123')
INSERT [dbo].[NguoiDung] ([TaiKhoan], [Matkhau]) VALUES (N'nhat1', N'nhat')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh]) VALUES (N'NV01', N'Lê Minh Anh', N'Nữ', N'Cầu Giấy,Hà Nội', N'094-566-5522', CAST(0x00008D8900000000 AS DateTime))
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh]) VALUES (N'NV02', N'Nguyễn Quang Minh', N'Nam', N'Đống Đa ,Hà Nội', N'039-755-2441', CAST(0x00008BB300000000 AS DateTime))
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh]) VALUES (N'NV03', N'Lê Thị Tuyết', N'Nữ', N'Hoàng Mai,Hà Nội', N'069-125-1111', CAST(0x00008F53016AEDC4 AS DateTime))
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh]) VALUES (N'NV04', N'Lê Minh Nguyệt', N'Nam', N'Nghĩa Tân', N'094-555-6551', CAST(0x000086E6016BC690 AS DateTime))
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh]) VALUES (N'NV05', N'Huỳnh Tấn Trung', N'Nam', N'Phố Cổ', N'094-565-1222', CAST(0x00008F59016C20CC AS DateTime))
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh]) VALUES (N'NV06', N'Phạm Thu Trang', N'Nữ', N'Cầu Giấy,Hà Nội', N'094-555-1247', CAST(0x00008E5B016C4C28 AS DateTime))
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh]) VALUES (N'NV07', N'Nguyễn Minh Vũ', N'Nam', N'Hà Nam', N'039-888-1456', CAST(0x00008668016C8468 AS DateTime))
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh]) VALUES (N'NV08', N'Nguyễn Hồng Nhung', N'Nữ', N'Hoàng Quốc Việt', N'066-487-154', CAST(0x00008E64016CB348 AS DateTime))
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh]) VALUES (N'NV09', N'Nguyễn Ngọc Ánh', N'Nữ', N'Ba Đình,Hà Nội', N'049-555-1451', CAST(0x0000ABC2016CEDE0 AS DateTime))
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh]) VALUES (N'NV10', N'Trương Tuấn Tú', N'Nam', N'Hải Phòng', N'022-985-2245', CAST(0x0000893E016D3A0C AS DateTime))
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh]) VALUES (N'NV11', N'Nguyễn Ngọc Ánh', N'Nam', N'Việt Nam', N'046-684-4224', CAST(0x00008DD7016AD8AC AS DateTime))
ALTER TABLE [dbo].[ChiTietHDBan]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHDBan_DienThoai] FOREIGN KEY([MaDienThoai])
REFERENCES [dbo].[DienThoai] ([MaDienThoai])
GO
ALTER TABLE [dbo].[ChiTietHDBan] CHECK CONSTRAINT [FK_ChiTietHDBan_DienThoai]
GO
ALTER TABLE [dbo].[ChiTietHDBan]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHDBan_HDBan] FOREIGN KEY([MaHDBan])
REFERENCES [dbo].[HDBan] ([MaHDBan])
GO
ALTER TABLE [dbo].[ChiTietHDBan] CHECK CONSTRAINT [FK_ChiTietHDBan_HDBan]
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD  CONSTRAINT [FK_DienThoai_Hang] FOREIGN KEY([MaHang])
REFERENCES [dbo].[Hang] ([MaHang])
GO
ALTER TABLE [dbo].[DienThoai] CHECK CONSTRAINT [FK_DienThoai_Hang]
GO
ALTER TABLE [dbo].[HDBan]  WITH CHECK ADD  CONSTRAINT [FK_HDBan_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HDBan] CHECK CONSTRAINT [FK_HDBan_KhachHang]
GO
ALTER TABLE [dbo].[HDBan]  WITH CHECK ADD  CONSTRAINT [FK_HDBan_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[HDBan] CHECK CONSTRAINT [FK_HDBan_NhanVien]
GO
USE [master]
GO
ALTER DATABASE [QuanLybanDT] SET  READ_WRITE 
GO
