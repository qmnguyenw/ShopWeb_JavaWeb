USE [master]
GO
/****** Object:  Database [BanHang]    Script Date: 3/27/2019 7:44:18 PM ******/
CREATE DATABASE [BanHang]
GO
ALTER DATABASE [BanHang] SET COMPATIBILITY_LEVEL = 100
GO
ALTER DATABASE [BanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [BanHang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BanHang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BanHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BanHang] SET  MULTI_USER 
GO
ALTER DATABASE [BanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BanHang] SET DB_CHAINING OFF 
GO
USE [BanHang]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 3/27/2019 7:44:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin](
	[username] [varchar](30) NOT NULL,
	[password] [varchar](32) NULL,
	[status] [bit] NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HangSanXuat]    Script Date: 3/27/2019 7:44:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HangSanXuat](
	[hid] [int] IDENTITY(1,1) NOT NULL,
	[hname] [nvarchar](30) NULL,
	[website] [varchar](100) NULL,
	[status] [bit] NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[hid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 3/27/2019 7:44:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDon](
	[hid] [varchar](30) NOT NULL,
	[date] [datetime] NULL DEFAULT (getdate()),
	[cid] [int] NULL,
	[Rcname] [nvarchar](50) NULL,
	[Raddress] [nvarchar](50) NULL,
	[Rphone] [varchar](20) NULL,
	[total] [money] NULL,
	[status] [int] NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[hid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 3/27/2019 7:44:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[hid] [varchar](30) NOT NULL,
	[sid] [varchar](30) NOT NULL,
	[quantity] [int] NULL,
	[price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[hid] ASC,
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 3/27/2019 7:44:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[cname] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[phone] [varchar](20) NULL,
	[username] [varchar](30) NULL,
	[password] [varchar](32) NULL,
	[status] [bit] NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 3/27/2019 7:44:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[sid] [varchar](30) NOT NULL,
	[sname] [nvarchar](50) NOT NULL,
	[quantity] [int] NULL,
	[price] [money] NULL,
	[picture] [varchar](200) NULL,
	[description] [nvarchar](max) NULL,
	[status] [int] NULL DEFAULT ((1)),
	[hid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO


INSERT [dbo].[admin] ([username], [password], [status]) VALUES (N'admin', N'admin', 1)
INSERT [dbo].[admin] ([username], [password], [status]) VALUES (N'staff', N'staff', 1)
SET IDENTITY_INSERT [dbo].[HangSanXuat] ON 

INSERT [dbo].[HangSanXuat] ([hid], [hname], [website], [status]) VALUES (1, N'DELL', N'www1.ap.dell.com', 1)
INSERT [dbo].[HangSanXuat] ([hid], [hname], [website], [status]) VALUES (2, N'HP', N'www8.hp.com', 1)
INSERT [dbo].[HangSanXuat] ([hid], [hname], [website], [status]) VALUES (3, N'LENOVO', N'www.lenovo.com', 1)
INSERT [dbo].[HangSanXuat] ([hid], [hname], [website], [status]) VALUES (4, N'ACER', N'www.acervietnam.com.vn', 1)
INSERT [dbo].[HangSanXuat] ([hid], [hname], [website], [status]) VALUES (5, N'MSI', N'vn.msi.com', 1)
SET IDENTITY_INSERT [dbo].[HangSanXuat] OFF

INSERT [dbo].[HoaDon] ([hid], [date], [cid], [Rcname], [Raddress], [Rphone], [total], [status]) VALUES (N'fswrwclrmk', CAST(N'2019-03-26 19:10:19.027' AS DateTime), 3, N'sang', N'Lao Cai', N'012345678', 2549.0000, 0)
INSERT [dbo].[HoaDonChiTiet] ([hid], [sid], [quantity], [price]) VALUES (N'fswrwclrmk', N'1', 1, 2549.0000)
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([cid], [cname], [address], [phone], [username], [password], [status]) VALUES (1, N'Hien', N'Bacninh', N'0964437021', N'hienbn', N'hien1899', 1)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF

INSERT [dbo].[SanPham] ([sid], [sname], [quantity], [price], [picture], [description], [status], [hid]) VALUES (N'1', N'Dell Vostro V7580', 1, 3299.0000, N'dellVostro7580.png', N'Core i7-8750H/GTX 1050Ti', 1, 1)
INSERT [dbo].[SanPham] ([sid], [sname], [quantity], [price], [picture], [description], [status], [hid]) VALUES (N'2', N'Dell XPS15', 1, 5399.0000, N'dellXPS15.png', N'i7-8750H/GTX 1050', 1, 1)
INSERT [dbo].[SanPham] ([sid], [sname], [quantity], [price], [picture], [description], [status], [hid]) VALUES (N'3', N'Dell Vostro 3578', 1, 1899.0000, N'dellVostro3578.png', N'i7-8550U/AMD Radeon 520', 1, 1)
INSERT [dbo].[SanPham] ([sid], [sname], [quantity], [price], [picture], [description], [status], [hid]) VALUES (N'4', N'Dell G7 7588-NCR6R1', 1, 2599.0000, N'dellG7.png', N'i5-8300H/GTX 1050Ti', 1, 1)
INSERT [dbo].[SanPham] ([sid], [sname], [quantity], [price], [picture], [description], [status], [hid]) VALUES (N'5', N'Hp Pavilion 15-cb541TX', 1, 2319.0000, N'hpPavilion15.jpg', N'i5-7300HQ/GTX 1050', 1, 2)
INSERT [dbo].[SanPham] ([sid], [sname], [quantity], [price], [picture], [description], [status], [hid]) VALUES (N'6', N'Hp EliteBook 1050 G1', 1, 3899.0000, N'hpEliteBookG1.jpg', N'i5-8300H/GTX 1050', 1, 2)
INSERT [dbo].[SanPham] ([sid], [sname], [quantity], [price], [picture], [description], [status], [hid]) VALUES (N'7', N'Hp Pavilion 15-cx0177TX', 1, 2579.0000, N'hpPavilion15cx0177tx.jpg', N'i5-8300H/GTX 1050', 1, 2)
INSERT [dbo].[SanPham] ([sid], [sname], [quantity], [price], [picture], [description], [status], [hid]) VALUES (N'8', N'Lenovo Legion Y530', 1, 2300.0000, N'lenovoY53023m.jpg', N'i5-8300H/GTX 1050', 1, 3)
INSERT [dbo].[SanPham] ([sid], [sname], [quantity], [price], [picture], [description], [status], [hid]) VALUES (N'9', N'Lenovo Legion Y530', 1, 2500.0000, N'lenovoY53025m.jpg', N'i7-8750H/GTX 1050', 1, 3)
INSERT [dbo].[SanPham] ([sid], [sname], [quantity], [price], [picture], [description], [status], [hid]) VALUES (N'10', N'Lenovo Legion Y520', 1, 2000.0000, N'lenovoY520.jpg', N'i7-7700HQ/GTX 1050', 1, 3)
INSERT [dbo].[SanPham] ([sid], [sname], [quantity], [price], [picture], [description], [status], [hid]) VALUES (N'11', N'Acer Nitro 5 AN515-52-70TD', 1, 2999.0000, N'acerNitro570TD.jpg', N'i7-8750H/GTX 1050Ti', 1, 4)
INSERT [dbo].[SanPham] ([sid], [sname], [quantity], [price], [picture], [description], [status], [hid]) VALUES (N'12', N'Acer Aspire 7 A717-72G-57Y3', 1, 2199.0000, N'acerAspire57Y3.jpeg', N'i5-8300H/GTX 1050', 1, 4)
INSERT [dbo].[SanPham] ([sid], [sname], [quantity], [price], [picture], [description], [status], [hid]) VALUES (N'13', N'Acer Nitro 5 AN515-52-51LW', 1, 2404.0000, N'acerNitro551LW.jpg', N'i5-8300H/GTX 1050Ti', 1, 4)
INSERT [dbo].[SanPham] ([sid], [sname], [quantity], [price], [picture], [description], [status], [hid]) VALUES (N'14', N'MSI GL73 8RC-230VN', 1, 2599.0000, N'msiGL73.jpg', N'i7-8750H/GTX 1050', 1, 5)
INSERT [dbo].[SanPham] ([sid], [sname], [quantity], [price], [picture], [description], [status], [hid]) VALUES (N'15', N'MSI GF63 8RD-221VN', 1, 2749.0000, N'msiGF638RD.jpg', N'i7-8750H/GTX 1050Ti', 1, 5)
INSERT [dbo].[SanPham] ([sid], [sname], [quantity], [price], [picture], [description], [status], [hid]) VALUES (N'16', N'MSI GL63 8RC-436VN', 1, 2549.0000, N'msiGL638RC.jpg', N'i7-8750H/GTX 1050', 1, 5)
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__KhachHan__F3DBC5720DA24172]    Script Date: 3/27/2019 7:44:18 PM ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[KhachHang] ([cid])
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([hid])
REFERENCES [dbo].[HoaDon] ([hid])
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([sid])
REFERENCES [dbo].[SanPham] ([sid])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([hid])
REFERENCES [dbo].[HangSanXuat] ([hid])
GO
USE [master]
GO
ALTER DATABASE [BanHang] SET  READ_WRITE 
GO

Data loi hay sao day
Hoa don vs hách hàng không gom lai đc vs nhau??
WTF??
cai hoa don no ko nhan khoa ngoai vs thang khanh hang 
ý
Uh chờ tôi 1 p

Nhung cai phan anh kia ko load dc t nghĩ ko liên quan tới phần này đâu
Phần này chỉ ảnh hưởng đến lúc in ra hoa don thôi đúng ko 
Uh

