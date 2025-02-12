USE [WebBanHang]
GO
/****** Object:  Table [dbo].[db_ChatLieu]    Script Date: 22/05/2024 11:47:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_ChatLieu](
	[ChatLieuID] [int] IDENTITY(1,1) NOT NULL,
	[TenChatLieu] [nvarchar](50) NULL,
 CONSTRAINT [PK_db_ChatLieu] PRIMARY KEY CLUSTERED 
(
	[ChatLieuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_ChiTietDonDatHang]    Script Date: 22/05/2024 11:47:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_ChiTietDonDatHang](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[MaDonDatHang] [int] NOT NULL,
	[SoLuongDat] [int] NULL,
	[DonGiaDat] [float] NULL,
 CONSTRAINT [PK_db_ChiTietDonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaDonDatHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_DangKy]    Script Date: 22/05/2024 11:47:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_DangKy](
	[TenDangNhap] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NULL,
	[EmailDK] [varchar](50) NULL,
	[DiaChiDK] [nvarchar](100) NULL,
	[TenDayDu] [nvarchar](50) NULL,
	[CauHoiBaoMat] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinhDK] [nchar](10) NULL,
	[MaQuyen] [int] NULL,
 CONSTRAINT [PK_db_DangKy] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_DanhMuc]    Script Date: 22/05/2024 11:47:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_DanhMuc](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](50) NULL,
	[AnhDaiDien] [nvarchar](100) NULL,
	[ThuTu] [int] NULL,
	[MaDMCha] [int] NULL,
 CONSTRAINT [PK_db_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_DonDatHang]    Script Date: 22/05/2024 11:47:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_DonDatHang](
	[MaDonDatHang] [int] IDENTITY(1,1) NOT NULL,
	[NgayTao] [datetime] NULL,
	[ThanhTienHD] [float] NULL,
	[TinhTrangDonHang] [nvarchar](300) NULL,
	[MaKH] [int] NULL,
	[TenKH] [nvarchar](50) NULL,
	[sdtKH] [varchar](15) NULL,
	[EmailKH] [varchar](50) NULL,
 CONSTRAINT [PK_db_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDonDatHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_KhachHang]    Script Date: 22/05/2024 11:47:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[sdtKH] [varchar](15) NULL,
	[EmailKH] [varchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_db_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_Mau]    Script Date: 22/05/2024 11:47:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_Mau](
	[MauID] [int] IDENTITY(1,1) NOT NULL,
	[TenMau] [nvarchar](50) NULL,
 CONSTRAINT [PK_db_Mau] PRIMARY KEY CLUSTERED 
(
	[MauID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_Menu]    Script Date: 22/05/2024 11:47:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_Menu](
	[MaMenu] [int] IDENTITY(1,1) NOT NULL,
	[TenMenu] [nvarchar](50) NULL,
	[LienKet] [varchar](200) NULL,
	[MaMenuCha] [int] NULL,
	[ThuTuMenu] [int] NULL,
 CONSTRAINT [PK_db_Menu] PRIMARY KEY CLUSTERED 
(
	[MaMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_NhomQuangCao]    Script Date: 22/05/2024 11:47:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_NhomQuangCao](
	[NhomQuangCaoID] [int] IDENTITY(1,1) NOT NULL,
	[TenNhomQuangCao] [nvarchar](50) NULL,
	[ViTriQC] [nvarchar](30) NULL,
	[ThuTuNhomQC] [int] NULL,
	[AnhDaiDienQC] [nvarchar](100) NULL,
 CONSTRAINT [PK_db_NhomQuangCao] PRIMARY KEY CLUSTERED 
(
	[NhomQuangCaoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_NhomSanPham]    Script Date: 22/05/2024 11:47:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_NhomSanPham](
	[NhomID] [int] IDENTITY(1,1) NOT NULL,
	[TenNhom] [nvarchar](100) NULL,
	[AnhDaiDien] [nvarchar](100) NULL,
	[ThuTu] [int] NULL,
	[SoSPHienThi] [int] NULL,
 CONSTRAINT [PK_db_NhomSanPham] PRIMARY KEY CLUSTERED 
(
	[NhomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_QuangCao]    Script Date: 22/05/2024 11:47:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_QuangCao](
	[QuangCaoID] [int] IDENTITY(1,1) NOT NULL,
	[TenQC] [nvarchar](50) NULL,
	[LoaiQC] [nvarchar](20) NULL,
	[AnhQC] [nvarchar](100) NULL,
	[LienKet] [nchar](100) NULL,
	[ThuTuQC] [int] NULL,
	[NhomQuangCaoID] [int] NULL,
 CONSTRAINT [PK_db_QuangCao] PRIMARY KEY CLUSTERED 
(
	[QuangCaoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_QuyenDangNhap]    Script Date: 22/05/2024 11:47:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_QuyenDangNhap](
	[MaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [varchar](10) NULL,
 CONSTRAINT [PK_db_QuyenDangNhap] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_SanPham]    Script Date: 22/05/2024 11:47:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[MauID] [int] NULL,
	[SizeID] [int] NULL,
	[ChatLieuID] [int] NULL,
	[AnhSP] [nvarchar](100) NULL,
	[SoLuongSP] [int] NULL,
	[GiaSP] [float] NULL,
	[MotaSP] [nvarchar](max) NULL,
	[NgayTao] [datetime] NULL,
	[NgayHuy] [datetime] NULL,
	[MaDM] [int] NULL,
	[NhomID] [int] NULL,
 CONSTRAINT [PK_db_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_Size]    Script Date: 22/05/2024 11:47:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_Size](
	[SizeID] [int] IDENTITY(1,1) NOT NULL,
	[TenSize] [varchar](10) NULL,
 CONSTRAINT [PK_db_Size] PRIMARY KEY CLUSTERED 
(
	[SizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[db_ChatLieu] ON 

INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (1, N'Cotton')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (2, N'Lụa')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (3, N'Da')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (4, N'Thô')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (5, N'Vải non bóng')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (6, N'Nhung tăm')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (7, N'Nỉ')
SET IDENTITY_INSERT [dbo].[db_ChatLieu] OFF
GO
SET IDENTITY_INSERT [dbo].[db_ChiTietDonDatHang] ON 

INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (1, 1, 17, 600000)
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (2, 2, 21, 123000)
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (3, 3, 6, 345500)
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (4, 4, 15, 345000)
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (5, 5, 11, 66600)
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (6, 6, 9, 134000)
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (7, 7, 6, 670000)
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (8, 8, 7, 345000)
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (9, 9, 5, 567000)
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (10, 10, 10, 234000)
SET IDENTITY_INSERT [dbo].[db_ChiTietDonDatHang] OFF
GO
INSERT [dbo].[db_DangKy] ([TenDangNhap], [MatKhau], [EmailDK], [DiaChiDK], [TenDayDu], [CauHoiBaoMat], [NgaySinh], [GioiTinhDK], [MaQuyen]) VALUES (N'anh', N'1234', N'anh@gmail.com', N'Hà Nội', N'Ngô Thi Anh', N'', CAST(N'2003-12-12' AS Date), N'nữ        ', 1)
INSERT [dbo].[db_DangKy] ([TenDangNhap], [MatKhau], [EmailDK], [DiaChiDK], [TenDayDu], [CauHoiBaoMat], [NgaySinh], [GioiTinhDK], [MaQuyen]) VALUES (N'cham', N'4567', N'cham@gmail.com', N'Hà Nội', N'Hoàng Kim Châm', N'', CAST(N'2003-10-01' AS Date), N'nữ        ', 1)
INSERT [dbo].[db_DangKy] ([TenDangNhap], [MatKhau], [EmailDK], [DiaChiDK], [TenDayDu], [CauHoiBaoMat], [NgaySinh], [GioiTinhDK], [MaQuyen]) VALUES (N'hao', N'2345', N'hao@gmail.com', N'Hà Nội', N'Nguyễn Anh Hào', N'', CAST(N'2003-03-16' AS Date), N'nam       ', 1)
INSERT [dbo].[db_DangKy] ([TenDangNhap], [MatKhau], [EmailDK], [DiaChiDK], [TenDayDu], [CauHoiBaoMat], [NgaySinh], [GioiTinhDK], [MaQuyen]) VALUES (N'tuyet', N'3456', N'tuyet@gmail.com', N'Bắc Giang', N'Trương Thị Tuyết', N'', CAST(N'2003-05-02' AS Date), N'nữ        ', 1)
GO
SET IDENTITY_INSERT [dbo].[db_DanhMuc] ON 

INSERT [dbo].[db_DanhMuc] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (1, N'Đầm,Váy', N'damvay.jpg', 1, 0)
INSERT [dbo].[db_DanhMuc] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (2, N'Áo Nữ', N'aonu.jpg', 2, 0)
INSERT [dbo].[db_DanhMuc] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (3, N'Quần nữ', N'quannu.jpg', 3, 0)
INSERT [dbo].[db_DanhMuc] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (4, N'Quần áo thể thao', N'quaaothethao.jpg', 4, 0)
INSERT [dbo].[db_DanhMuc] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (5, N'Áo 2 dây', N'1.jpg', 5, 1)
INSERT [dbo].[db_DanhMuc] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (6, N'váy', N'anh5.webp', 5, 1)
SET IDENTITY_INSERT [dbo].[db_DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[db_DonDatHang] ON 

INSERT [dbo].[db_DonDatHang] ([MaDonDatHang], [NgayTao], [ThanhTienHD], [TinhTrangDonHang], [MaKH], [TenKH], [sdtKH], [EmailKH]) VALUES (1, CAST(N'2024-01-05T00:00:00.000' AS DateTime), 100000, N'1', 1, N'Châm', N'0398475563', N'cham@gmail.com')
INSERT [dbo].[db_DonDatHang] ([MaDonDatHang], [NgayTao], [ThanhTienHD], [TinhTrangDonHang], [MaKH], [TenKH], [sdtKH], [EmailKH]) VALUES (2, CAST(N'2024-01-05T00:00:00.000' AS DateTime), 100000, N'0', 2, N'Châm', N'0398475563', N'cham@gmail.com')
INSERT [dbo].[db_DonDatHang] ([MaDonDatHang], [NgayTao], [ThanhTienHD], [TinhTrangDonHang], [MaKH], [TenKH], [sdtKH], [EmailKH]) VALUES (3, CAST(N'2024-01-05T00:00:00.000' AS DateTime), 90, N'1', 3, N'Châm', N'0398475563', N'cham@gmail.com')
INSERT [dbo].[db_DonDatHang] ([MaDonDatHang], [NgayTao], [ThanhTienHD], [TinhTrangDonHang], [MaKH], [TenKH], [sdtKH], [EmailKH]) VALUES (4, CAST(N'2024-01-05T00:00:00.000' AS DateTime), 900000, N'0', 4, N'Châm', N'0398475563', N'cham@gmail.com')
INSERT [dbo].[db_DonDatHang] ([MaDonDatHang], [NgayTao], [ThanhTienHD], [TinhTrangDonHang], [MaKH], [TenKH], [sdtKH], [EmailKH]) VALUES (5, CAST(N'2024-01-05T00:00:00.000' AS DateTime), 900000, N'Onepay', 5, N'Tuyết', N'0398475563', N'tuyet@gmail.com')
INSERT [dbo].[db_DonDatHang] ([MaDonDatHang], [NgayTao], [ThanhTienHD], [TinhTrangDonHang], [MaKH], [TenKH], [sdtKH], [EmailKH]) VALUES (6, CAST(N'2024-01-05T00:00:00.000' AS DateTime), 900000, N'1', 6, N'Tuyết', N'0398475563', N'tuyet@gmail.com')
INSERT [dbo].[db_DonDatHang] ([MaDonDatHang], [NgayTao], [ThanhTienHD], [TinhTrangDonHang], [MaKH], [TenKH], [sdtKH], [EmailKH]) VALUES (7, CAST(N'2024-01-05T00:00:00.000' AS DateTime), 900000, N'Onepay', 7, N'Tuyết', N'0398475563', N'tuyet@gmail.com')
SET IDENTITY_INSERT [dbo].[db_DonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[db_KhachHang] ON 

INSERT [dbo].[db_KhachHang] ([MaKH], [TenKH], [DiaChi], [sdtKH], [EmailKH], [MatKhau]) VALUES (1, N'Hoàng Kim Châm', N'Hà Nội', N'0327839847', N'cham@gmail.com', NULL)
INSERT [dbo].[db_KhachHang] ([MaKH], [TenKH], [DiaChi], [sdtKH], [EmailKH], [MatKhau]) VALUES (2, N'Nguyễn Anh Hào', N'Hà Nội', N'0398475869', N'hao@gmail.com', NULL)
INSERT [dbo].[db_KhachHang] ([MaKH], [TenKH], [DiaChi], [sdtKH], [EmailKH], [MatKhau]) VALUES (3, N'Ngô Thị Anh', N'Nghệ An', N'0384957263', N'anh@gmail.com', NULL)
INSERT [dbo].[db_KhachHang] ([MaKH], [TenKH], [DiaChi], [sdtKH], [EmailKH], [MatKhau]) VALUES (4, N'Trương Thị Tuyết', N'Bắc Giang', N'0938476253', N'tuyet@gmail.com', NULL)
INSERT [dbo].[db_KhachHang] ([MaKH], [TenKH], [DiaChi], [sdtKH], [EmailKH], [MatKhau]) VALUES (5, N'Nguyễn Việt Anh', N'Hà Nội', N'0983746473', N'vanh@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[db_KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[db_Mau] ON 

INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (1, N'Trắng ')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (2, N'Đen')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (3, N'Xám')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (4, N'Be')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (5, N'Hồng')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (6, N'Ghi')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (7, N'Vàng')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (8, N'Xanh')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (9, N'Đỏ')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (10, N'Tím')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (11, N'')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (12, N'Nâu')
SET IDENTITY_INSERT [dbo].[db_Mau] OFF
GO
SET IDENTITY_INSERT [dbo].[db_Menu] ON 

INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (1, N'Trang chủ', N'', 1, 1)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (2, N'Sản phẩm', N'/Default.aspx?modul=SanPham', 2, 2)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (3, N'Áo', N'', 3, 5)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (4, N'Quần', N'', 4, 4)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (5, N'Váy', N'', 5, 3)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (6, N'Chân váy', N'', 0, 1)
SET IDENTITY_INSERT [dbo].[db_Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[db_NhomQuangCao] ON 

INSERT [dbo].[db_NhomQuangCao] ([NhomQuangCaoID], [TenNhomQuangCao], [ViTriQC], [ThuTuNhomQC], [AnhDaiDienQC]) VALUES (1, N'logo', N'logo', 1, N'xing.jpg')
INSERT [dbo].[db_NhomQuangCao] ([NhomQuangCaoID], [TenNhomQuangCao], [ViTriQC], [ThuTuNhomQC], [AnhDaiDienQC]) VALUES (2, N'banner', N'banner', 2, N'bannerweb.png')
INSERT [dbo].[db_NhomQuangCao] ([NhomQuangCaoID], [TenNhomQuangCao], [ViTriQC], [ThuTuNhomQC], [AnhDaiDienQC]) VALUES (3, N'slide trang chu', N'slide', 3, N'')
SET IDENTITY_INSERT [dbo].[db_NhomQuangCao] OFF
GO
SET IDENTITY_INSERT [dbo].[db_NhomSanPham] ON 

INSERT [dbo].[db_NhomSanPham] ([NhomID], [TenNhom], [AnhDaiDien], [ThuTu], [SoSPHienThi]) VALUES (1, N'Hàng mới về', N'anh2.jpg', 1, 3)
INSERT [dbo].[db_NhomSanPham] ([NhomID], [TenNhom], [AnhDaiDien], [ThuTu], [SoSPHienThi]) VALUES (2, N'Sản phẩm mua nhiều nhất', N'anh4.jpg', 2, 3)
INSERT [dbo].[db_NhomSanPham] ([NhomID], [TenNhom], [AnhDaiDien], [ThuTu], [SoSPHienThi]) VALUES (3, N'Hàng Hot Tháng 5', N'aonu.jpg', 3, 3)
INSERT [dbo].[db_NhomSanPham] ([NhomID], [TenNhom], [AnhDaiDien], [ThuTu], [SoSPHienThi]) VALUES (4, N'Hàng giảm giá', N'quanaothethao.jpg', 4, 3)
INSERT [dbo].[db_NhomSanPham] ([NhomID], [TenNhom], [AnhDaiDien], [ThuTu], [SoSPHienThi]) VALUES (5, N'Siêu phẩm ', N'anh5.jpg', 5, 3)
SET IDENTITY_INSERT [dbo].[db_NhomSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[db_QuangCao] ON 

INSERT [dbo].[db_QuangCao] ([QuangCaoID], [TenQC], [LoaiQC], [AnhQC], [LienKet], [ThuTuQC], [NhomQuangCaoID]) VALUES (1, N'logo web', N'', N'xing.jpg', N'/                                                                                                   ', 1, 1)
INSERT [dbo].[db_QuangCao] ([QuangCaoID], [TenQC], [LoaiQC], [AnhQC], [LienKet], [ThuTuQC], [NhomQuangCaoID]) VALUES (2, N'banner web', N'', N'', N'                                                                                                    ', 1, 2)
INSERT [dbo].[db_QuangCao] ([QuangCaoID], [TenQC], [LoaiQC], [AnhQC], [LienKet], [ThuTuQC], [NhomQuangCaoID]) VALUES (3, N'slide1', N'', N'slide1.jpg', N'                                                                                                    ', 1, 3)
INSERT [dbo].[db_QuangCao] ([QuangCaoID], [TenQC], [LoaiQC], [AnhQC], [LienKet], [ThuTuQC], [NhomQuangCaoID]) VALUES (4, N'slide2', N'', N'slide2.jpg', N'                                                                                                    ', 2, 3)
INSERT [dbo].[db_QuangCao] ([QuangCaoID], [TenQC], [LoaiQC], [AnhQC], [LienKet], [ThuTuQC], [NhomQuangCaoID]) VALUES (5, N'slide3', N'', N'slide3.jpg', N'                                                                                                    ', 3, 3)
SET IDENTITY_INSERT [dbo].[db_QuangCao] OFF
GO
SET IDENTITY_INSERT [dbo].[db_SanPham] ON 

INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (1, N'vay hoa', 2, 2, 2, N'anh5.jpg', 3, 300, N'xinh', CAST(N'2024-05-15T00:00:00.000' AS DateTime), CAST(N'2024-05-15T00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (2, N'váy xinh', 1, 1, 1, N'anh4.jpg', 10, 100, N'váy đẹp', CAST(N'1900-01-08T00:00:00.000' AS DateTime), CAST(N'1900-01-08T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (3, N'quần', 3, 3, 3, N'anh10.jpg', 5, 567, N'xinh', CAST(N'2024-05-24T00:00:00.000' AS DateTime), CAST(N'2024-05-24T00:00:00.000' AS DateTime), 3, 3)
SET IDENTITY_INSERT [dbo].[db_SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[db_Size] ON 

INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (1, N'XXXL')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (2, N'XXL')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (3, N'XL')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (4, N'L')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (5, N'M')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (6, N'S')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (7, N'XS')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (8, N'Free size')
SET IDENTITY_INSERT [dbo].[db_Size] OFF
GO
ALTER TABLE [dbo].[db_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_db_SanPham_db_ChatLieu] FOREIGN KEY([ChatLieuID])
REFERENCES [dbo].[db_ChatLieu] ([ChatLieuID])
GO
ALTER TABLE [dbo].[db_SanPham] CHECK CONSTRAINT [FK_db_SanPham_db_ChatLieu]
GO
ALTER TABLE [dbo].[db_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_db_SanPham_db_DanhMuc] FOREIGN KEY([MaDM])
REFERENCES [dbo].[db_DanhMuc] ([MaDM])
GO
ALTER TABLE [dbo].[db_SanPham] CHECK CONSTRAINT [FK_db_SanPham_db_DanhMuc]
GO
ALTER TABLE [dbo].[db_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_db_SanPham_db_Mau] FOREIGN KEY([MauID])
REFERENCES [dbo].[db_Mau] ([MauID])
GO
ALTER TABLE [dbo].[db_SanPham] CHECK CONSTRAINT [FK_db_SanPham_db_Mau]
GO
ALTER TABLE [dbo].[db_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_db_SanPham_db_Mau1] FOREIGN KEY([ChatLieuID])
REFERENCES [dbo].[db_ChatLieu] ([ChatLieuID])
GO
ALTER TABLE [dbo].[db_SanPham] CHECK CONSTRAINT [FK_db_SanPham_db_Mau1]
GO
ALTER TABLE [dbo].[db_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_db_SanPham_db_NhomSanPham] FOREIGN KEY([NhomID])
REFERENCES [dbo].[db_NhomSanPham] ([NhomID])
GO
ALTER TABLE [dbo].[db_SanPham] CHECK CONSTRAINT [FK_db_SanPham_db_NhomSanPham]
GO
ALTER TABLE [dbo].[db_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_db_SanPham_db_Size] FOREIGN KEY([SizeID])
REFERENCES [dbo].[db_Size] ([SizeID])
GO
ALTER TABLE [dbo].[db_SanPham] CHECK CONSTRAINT [FK_db_SanPham_db_Size]
GO
/****** Object:  StoredProcedure [dbo].[chatlieu_delete]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[chatlieu_delete]
@chatlieuid int
AS
BEGIN
	delete from db_ChatLieu where ChatLieuID=@chatlieuid;
END;
GO
/****** Object:  StoredProcedure [dbo].[chatlieu_inser]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[chatlieu_inser]
@tenchatlieu nvarchar(50),
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_ChatLieu where @tenchatlieu=TenChatLieu))
	begin
	insert into db_ChatLieu(TenChatLieu) values(@tenchatlieu)
	set @ret=2
	end
END
GO
/****** Object:  StoredProcedure [dbo].[chatlieu_update]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[chatlieu_update]
@chatlieuid int,
@tenchatlieu nvarchar (50)
AS
BEGIN
	update db_ChatLieu set TenChatLieu=@tenchatlieu where ChatlieuID=@chatlieuid
END
GO
/****** Object:  StoredProcedure [dbo].[chitietdondathang_delete]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[chitietdondathang_delete]
@masp int,
@madondathang int
AS
BEGIN
	delete db_ChiTietDonDatHang where MaSP=@masp and MaDonDatHang=@madondathang
END
GO
/****** Object:  StoredProcedure [dbo].[chitietdondathang_inser]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[chitietdondathang_inser]
@masp int,
@madondathang int,
@soluongdat int,
@dongiadat float,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_ChiTietDonDatHang where @masp=MaSP and @madondathang=MaDonDatHang))
	begin
	insert into db_ChiTietDonDatHang(MaSP,MaDonDatHang,SoLuongDat,DonGiaDat) values(@masp,@madondathang,@soluongdat,@dongiadat)
	set @ret=2
	end
END
GO
/****** Object:  StoredProcedure [dbo].[chitietdondathang_update]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[chitietdondathang_update]
@masp int,
@madondathang int,
@soluongdat int,
@dongiadat float
AS
BEGIN
	update db_ChiTietDonDatHang set SoLuongDat=@soluongdat,DonGiaDat=@dongiadat where MaSP=@masp and MaDonDatHang=@madondathang
END
GO
/****** Object:  StoredProcedure [dbo].[chitietdonhang_delete]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[chitietdonhang_delete]
@masp int,
@mahoadon int
AS
BEGIN
	delete db_ChiTietDonHang where MaSP=@masp and MaHD=@mahoadon
END
GO
/****** Object:  StoredProcedure [dbo].[chitietdonhang_inser]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[chitietdonhang_inser]
@masp int,
@mahoadon int,
@soluong int,
@dongia float,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_ChiTietDonHang where @masp=MaSP and @mahoadon=MaHD))
	begin
	insert into db_ChiTietDonHang(MaHD,MaSP,SoLuong,DonGia) values(@mahoadon,@masp,@soluong,@dongia)
	set @ret=2
	end
END
GO
/****** Object:  StoredProcedure [dbo].[chitietdonhang_update]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[chitietdonhang_update]
@masp int,
@mahoadon int,
@soluong int,
@dongia float
AS
BEGIN
	update db_ChiTietDonHang set SoLuong=@soluong,DonGia=@dongia where MaSP=@masp and MaHD=@mahoadon
END
GO
/****** Object:  StoredProcedure [dbo].[dangky_delete]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[dangky_delete]
@tendangnhap varchar(50)
AS
BEGIN
	delete from db_DangKy where TenDangNhap=@tendangnhap
END
GO
/****** Object:  StoredProcedure [dbo].[dangky_inser]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[dangky_inser]
@tendangnhap varchar(50),
@matkhau varchar(50) ,
@emaildk varchar(50),
@diachidk nvarchar(50),
@tendaydu nvarchar(50),
@cauhoibaomat nvarchar(100),
@ngaysinh date,
@gioitinhdk nvarchar(10),
@maquyen int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_DangKy where @tendangnhap=TenDangNhap))
	begin
	insert into db_DangKy(TenDangNhap,MatKhau,EmailDK,DiaChiDK,TenDayDu,CauHoiBaoMat,NgaySinh,GioiTinhDK,MaQuyen) values(@tendangnhap,@matkhau,@emaildk,@diachidk,@tendaydu,@cauhoibaomat,@ngaysinh,@gioitinhdk,@maquyen)
	set @ret=2
	end
END
GO
/****** Object:  StoredProcedure [dbo].[dangky_update]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[dangky_update]
@tendangnhap varchar(50),
@matkhau varchar(50) ,
@emaildk varchar(50),
@diachidk nvarchar(50),
@tendaydu nvarchar(50),
@cauhoibaomat nvarchar(100),
@ngaysinh date,
@gioitinhdk nvarchar(10),
@maquyen int
AS
BEGIN
	update db_DangKy set MatKhau=@matkhau,EmailDK=@emaildk,DiaChiDK=@diachidk,TenDayDu=@tendaydu,CauHoiBaoMat=@cauhoibaomat,NgaySinh=@ngaysinh,GioiTinhDK=@gioitinhdk,MaQuyen=@maquyen where TenDangNhap=@tendangnhap
END
GO
/****** Object:  StoredProcedure [dbo].[danhmuc_delete]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[danhmuc_delete] 
	-- Add the parameters for the stored procedure here
	@madm int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from db_DanhMuc where MaDM=@madm;
	delete from db_SanPham where MaDM=@madm;
END;
GO
/****** Object:  StoredProcedure [dbo].[danhmuc_inser]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[danhmuc_inser]
@tendm nvarchar(50),
@anhdaidien nvarchar(100),
@thutu int,
@maDMcha int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_DanhMuc where @tendm=TenDM))
	begin
	insert into db_DanhMuc(TenDM,AnhDaiDien,ThuTu,MaDMCha) values(@tendm,@anhdaidien,@thutu,@maDMcha)
	set @ret=2
	end
END
GO
/****** Object:  StoredProcedure [dbo].[danhmuc_update]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[danhmuc_update]
@madm int,
@tendm nvarchar(50),
@anhdaidien nvarchar(100),
@thutu int,
@maDMcha int
AS
BEGIN
	update db_DanhMuc set TenDM=@tendm,AnhDaiDien=@anhdaidien,ThuTu=@thutu,MaDMCha=@maDMcha where MaDM=@madm
END
GO
/****** Object:  StoredProcedure [dbo].[khachang_delete]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[khachang_delete]
@makh int
AS
BEGIN
	delete from db_KhachHang where MaKH=@makh
END
GO
/****** Object:  StoredProcedure [dbo].[khachang_inser]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[khachang_inser]
@tenkh nvarchar(50),
@diachi nvarchar(100),
@sdtkh varchar(15),
@emailkh varchar(50),
@matkhau nvarchar(50),
@ret int out
AS
BEGIN
	set @ret=1
	begin
	insert into db_KhachHang(TenKh,DiaChi,sdtKH,EmailKH,MatKhau) values(@tenkh,@diachi,@sdtkh,@emailkh,@matkhau)
	set @ret=2
	end
END
GO
/****** Object:  StoredProcedure [dbo].[khachang_update]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[khachang_update]
@makh int,
@tenkh nvarchar(50),
@diachi nvarchar(100),
@sdtkh varchar(15),
@emailkh varchar(50),
@matkhau nvarchar(50)
AS
BEGIN
	update db_KhachHang set TenKh=@tenkh,DiaChi=@diachi,sdtKH=@sdtkh,EmailKH=@emailkh, MatKhau=@matkhau where MaKH=@makh
END

GO
/****** Object:  StoredProcedure [dbo].[mau_delete]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[mau_delete]
@mauid int
AS
BEGIN
	delete from db_Mau where MauID=@mauid
END
GO
/****** Object:  StoredProcedure [dbo].[mau_inser]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[mau_inser]
@tenmau nvarchar(50),
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_Mau where @tenmau=TenMau))
	begin
	insert into db_Mau(TenMau) values(@tenmau)
	set @ret=2
	end
END
GO
/****** Object:  StoredProcedure [dbo].[mau_update]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[mau_update]
@mauid int,
@tenmau nvarchar(50)
AS
BEGIN
	update db_Mau set TenMau=@tenmau where MauID=@mauid
END
GO
/****** Object:  StoredProcedure [dbo].[menu_delete]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[menu_delete]
@mamenu int
AS
BEGIN
	delete from db_Menu where MaMenu=@mamenu
END
GO
/****** Object:  StoredProcedure [dbo].[menu_inser]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[menu_inser]
@tenmenu nvarchar(50),
@lienket varchar(200),
@mamenucha int,
@thutumenu int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_Menu where @tenmenu=TenMenu))
	begin
	insert into db_Menu(TenMenu,LienKet,MaMenuCha,ThuTuMenu) values(@tenmenu,@lienket,@mamenucha,@thutumenu)
	set @ret=2
	end
END
GO
/****** Object:  StoredProcedure [dbo].[menu_update]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[menu_update]
@mamenu int,
@tenmenu nvarchar(50),
@lienket varchar(200),
@mamenucha int,
@thutumenu int
AS
BEGIN
	update db_Menu set TenMenu=@tenmenu,LienKet=@lienket,MaMenuCha=@mamenucha,ThuTuMenu=@thutumenu where MaMenu=@mamenu
END
GO
/****** Object:  StoredProcedure [dbo].[nhomquangcao_delete]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[nhomquangcao_delete]
@nhomquangcaoid int
AS
BEGIN
	delete from db_NhomQuangCao where NhomQuangCaoID=@nhomquangcaoid
END
GO
/****** Object:  StoredProcedure [dbo].[nhomquangcao_inser]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[nhomquangcao_inser]
@tennhomqc nvarchar(50),
@vitriqc nvarchar(30),
@thutunhomqc int,
@anhdaidienqc nvarchar(100),
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_NhomQuangCao where @tennhomqc=TenNhomQuangCao))
	begin
	insert into db_NhomQuangCao(TenNhomQuangCao,ViTriQC,ThuTuNhomQC,AnhDaiDienQC) values(@tennhomqc,@vitriqc,@thutunhomqc,@anhdaidienqc)
	set @ret=2
	end
END
GO
/****** Object:  StoredProcedure [dbo].[nhomquangcao_update]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[nhomquangcao_update]
@nhomquangcaoid int,
@tennhomquangcao nvarchar(50),
@vitriqc nvarchar(30),
@thutunhomqc int,
@anhdaidienqc nvarchar(100)
AS
BEGIN
	update db_NhomQuangCao set TenNhomQuangCao=@tennhomquangcao,ViTriQC=@vitriqc,ThuTuNhomQC=@thutunhomqc,AnhDaiDienQC=@anhdaidienqc where NhomQuangCaoID=@nhomquangcaoid
END
GO
/****** Object:  StoredProcedure [dbo].[nhomsanpham_delete]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[nhomsanpham_delete]
@nhomid int
AS
BEGIN
	delete from db_NhomSanPham where NhomID=@nhomid
END
GO
/****** Object:  StoredProcedure [dbo].[nhomsanpham_inser]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[nhomsanpham_inser]
@tennhom nvarchar(100),
@anhdaidien nvarchar(100),
@thutu int,
@soSPhienthi int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_NhomSanPham where @tennhom=TenNhom))
	begin
	insert into db_NhomSanPham(TenNhom,AnhDaiDien,ThuTu,SoSPHienThi) values(@tennhom,@anhdaidien,@thutu,@soSPhienthi)
	set @ret=2
	end
END
GO
/****** Object:  StoredProcedure [dbo].[nhomsanpham_update]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[nhomsanpham_update]
@nhomid int,
@tennhom nvarchar(100),
@anhdadien nvarchar(100),
@thutu int,
@solanhienthi int
AS
BEGIN
	update db_NhomSanPham set TenNhom=@tennhom,AnhDaiDien=@anhdadien,ThuTu=@thutu,SoSPHienThi=@solanhienthi where NhomID=@nhomid
END
GO
/****** Object:  StoredProcedure [dbo].[quangcao_delete]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[quangcao_delete]
@quangcaoid int
AS
BEGIN
	delete from db_QuangCao where QuangCaoID=@quangcaoid
END
GO
/****** Object:  StoredProcedure [dbo].[quangcao_inser]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[quangcao_inser]
@tenqc nvarchar(50),
@loaiqc nvarchar(20),
@anhqc nvarchar(100),
@lienket nchar(100),
@thutuqc int,
@nhomqcID  INT,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_QuangCao where @tenqc=TenQC))
	begin
	insert into db_QuangCao(TenQC,LoaiQC,AnhQC,LienKet,ThuTuQC,NhomQuangCaoID) values(@tenqc,@loaiqc,@anhqc,@lienket,@thutuqc,@nhomqcID)
	set @ret=2
	end
END
GO
/****** Object:  StoredProcedure [dbo].[quangcao_update]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[quangcao_update]
@quangcaoid int,
@tenquangcao nvarchar(50),
@loaiqc nvarchar(20),
@anhqc nvarchar(100),
@lienket nchar(100),
@thutuqc int,
@nhomquangcaoid int
AS
BEGIN
	update db_QuangCao set TenQC=@tenquangcao,LoaiQC=@loaiqc,AnhQC=@anhqc,LienKet=@lienket,ThuTuQC=@thutuqc,NhomQuangCaoID=@nhomquangcaoid where QuangCaoID=@quangcaoid
END
GO
/****** Object:  StoredProcedure [dbo].[sanpham_delete]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sanpham_delete]
@masp int
AS
BEGIN
	delete from db_SanPham where MaSP=@masp
END
GO
/****** Object:  StoredProcedure [dbo].[sanpham_inser]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sanpham_inser]
@tensp nvarchar(100),
@mauID int,
@sizeID int,
@chatieuID int,
@anhsanpham nvarchar(100),
@soluongsp int,
@giasp float,
@motasp nvarchar(MAX),
@ngaytao datetime,
@ngayhuy datetime,
@maDM int,
@nhomID int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_SanPham where @tensp=TenSP))
	begin
	insert into db_SanPham(TenSP,MauID,SizeID,ChatLieuID,AnhSP,SoLuongSP,GiaSP,MotaSP,NgayTao,NgayHuy,MaDM,NhomID) values(@tensp,@mauID,@sizeID,@chatieuID,@anhsanpham,@soluongsp,@giasp,@motasp,@ngaytao,@ngayhuy,@maDM,@nhomID)
	set @ret=2
	end
END
GO
/****** Object:  StoredProcedure [dbo].[sanpham_update]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sanpham_update]
@masp int,
@tensp nvarchar(100),
@mauid int,
@sizeid int,
@chatieuid int,
@anhsp nvarchar(100),
@soluongsp int,
@giasp float,
@motasp nvarchar(MAX),
@ngaytao datetime,
@ngayhuy datetime,
@madm int,
@nhomid int
AS
BEGIN
	update db_SanPham set TenSP=@tensp,MauID=@mauid,SizeID=@sizeid,ChatLieuID=@chatieuid,AnhSP=@anhsp,SoLuongSP=@soluongsp,GiaSP=@giasp,MotaSP=@motasp,NgayTao=@ngaytao,NgayHuy=@ngayhuy,MaDM=@madm,NhomID=@nhomid where MaSP=@masp
END
GO
/****** Object:  StoredProcedure [dbo].[size_delete]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[size_delete]
@sizeid int
AS
BEGIN
	delete from db_Size where SizeID=@sizeid
END
GO
/****** Object:  StoredProcedure [dbo].[size_inser]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[size_inser]
@tensize varchar(10),
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_Size where @tensize=TenSize ))
	begin
	insert into db_Size(TenSize) values(@tensize)
	set @ret=2
	end
END
GO
/****** Object:  StoredProcedure [dbo].[size_update]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[size_update]
@sizeid int,
@tensize varchar(10)
AS
BEGIN
	update db_Size set TenSize=@tensize where SizeID=@sizeid
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_chatlieu]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_chatlieu]
AS
BEGIN
	select * from db_ChatLieu
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_chatlieu_by_id]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_chatlieu_by_id]
@ChatLieuID INT
AS
BEGIN
	select * from db_ChatLieu where ChatLieuID=@ChatLieuID
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_chitietdondathang]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_chitietdondathang]
AS
BEGIN
	select * from db_ChiTietDonDatHang
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_chitietdondathang_by_madondathang]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_chitietdondathang_by_madondathang]
(
@madondathang int
)
AS
BEGIN
	select * from db_ChiTietDonDatHang where MaDonDatHang=@madondathang
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_chitietdonhang]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_chitietdonhang]
AS
BEGIN
	select * from db_ChiTietDonHang
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_dangky]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_dangky]
AS
BEGIN
	select * from db_DangKy
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_dangky_by_id]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_dangky_by_id]
@TenDangNhap varchar(50)
AS
BEGIN
	select * from db_DangKy where TenDangNhap=@TenDangNhap
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_dangky_by_id_matkhau]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_dangky_by_id_matkhau]
@TenDangNhap varchar(50),
@MatKhau varchar(50)
AS
BEGIN
	select * from db_DangKy where TenDangNhap=@TenDangNhap and MatKhau=@MatKhau
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_danhmuc]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_danhmuc]
AS
BEGIN
	select * from db_DanhMuc order by ThuTu
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_danhmuc_by_id]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_danhmuc_by_id]
(
@MaDM INT
)
AS
BEGIN
	select * from db_DanhMuc where MaDM=@MaDM
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_danhmuc_by_MaDMCha]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_danhmuc_by_MaDMCha]
(
@MaDMCha INT
)
AS
BEGIN
	select * from db_DanhMuc where MaDMCha=@MaDMCha
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_dondathang]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_dondathang]
AS
BEGIN
	select * from db_DonDatHang
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_dondathang_by_id]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_dondathang_by_id]
@MaDonDatHang int
AS
BEGIN
	select * from db_DonDatHang where MaDonDatHang=@MaDonDatHang
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_dondathang_by_mathanhtoan]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_dondathang_by_mathanhtoan]
@mathanhtoan nvarchar(300)
AS
BEGIN
	select * from db_DonDatHang where TinhTrangDonHang=@mathanhtoan
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_dondathang_desc]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_dondathang_desc]
AS
BEGIN
	select * from db_DonDatHang order by MaDonDatHang desc
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_khachhang]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_khachhang]
AS
BEGIN
	select * from db_KhachHang
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_khachhang_by_emailkh]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_khachhang_by_emailkh]
@emailkh nvarchar(50)
AS
BEGIN
	select * from db_KhachHang where EmailKH=@emailkh
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_khachhang_by_emailkh_matkhau]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_khachhang_by_emailkh_matkhau]
@emailkh nvarchar(50),
@matkhau nvarchar(50)
AS
BEGIN
	select * from db_KhachHang where EmailKH=@emailkh and MatKhau=@matkhau
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_khachhang_by_makh]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_khachhang_by_makh]
@makh nvarchar(50)
AS
BEGIN
	select * from db_KhachHang where MaKH=@makh
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_mau]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_mau]
AS
BEGIN
	select * from db_Mau
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_mau_by_id]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_mau_by_id]
@MauID INT
AS
BEGIN
	select * from db_Mau where MauID=@MauID
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_menu]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_menu]
AS
BEGIN
	select * from db_Menu
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_menu_by_id]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_menu_by_id]
@MaMenu int
AS
BEGIN
	select * from db_Menu where MaMenu=@MaMenu
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_menu_by_mamenucha]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_menu_by_mamenucha]
@MaMenuCha int
AS
BEGIN
	select * from db_Menu where MaMenuCha=@MaMenuCha
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_nhomquangcao]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_nhomquangcao]
AS
BEGIN
	select * from db_NhomQuangCao
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_nhomquangcao_by_id]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_nhomquangcao_by_id]
@NhomQuangCaoID int
AS
BEGIN
	select * from db_NhomQuangCao where NhomQuangCaoID=@NhomQuangCaoID
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_nhomquangcao_by_vitriqc]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_nhomquangcao_by_vitriqc]
@ViTriQC nvarchar(30)
AS
BEGIN
	select * from db_NhomQuangCao where ViTriQC=@ViTriQC
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_nhomsp]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_nhomsp]
AS
BEGIN
	select * from db_NhomSanPham order by ThuTu
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_nhomsp_by_id]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_nhomsp_by_id]
@NhomID int
AS
BEGIN
	select * from db_NhomSanPham where NhomID=@NhomID
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_quangcao]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_quangcao]
AS
BEGIN
	select * from db_QuangCao
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_quangcao_by_id]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_quangcao_by_id]
@QuangCaoID int
AS
BEGIN
	select * from db_QuangCao where QuangCaoID=@QuangCaoID
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_quangcao_by_nhomquangcaoid]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_quangcao_by_nhomquangcaoid]
@NhomQuangCaoID int
AS
BEGIN
	select * from db_QuangCao where NhomQuangCaoID=@NhomQuangCaoID
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_sanpham]
AS
BEGIN
	select * from db_SanPham
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham_by_id]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_sanpham_by_id]
@MaSP INT
AS
BEGIN
	select * from db_SanPham where MaSP=@MaSP
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham_by_madm]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_sanpham_by_madm]
@MaMD INT
AS
BEGIN
	select top 3 * from db_SanPham where MaDM=@MaMD
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham_by_madm_tatca]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_sanpham_by_madm_tatca]
@MaMD INT
AS
BEGIN
	select * from db_SanPham where MaDM=@MaMD
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham_by_nhomid]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_sanpham_by_nhomid]
@NhomID INT,
@SoSPHienThi INT
AS
BEGIN
	declare @sql nvarchar(300)
	set @sql='select top '+ CAST(@SoSPHienThi as varchar(10)) +' * from db_SanPham where NhomID='+CAST(@NhomID as varchar(10))
	exec sp_executesql @sql
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham_by_tukhoa]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[thongtin_sanpham_by_tukhoa]
@TuKhoa nvarchar(100)
AS
BEGIN
	select * from db_SanPham where TenSP like N'%'+@TuKhoa+'%'
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_size]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_size]
AS
BEGIN
	select * from db_Size;
END;
GO
/****** Object:  StoredProcedure [dbo].[thongtin_size_by_id]    Script Date: 22/05/2024 11:47:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_size_by_id]
@SizeID INT
AS
BEGIN
	select * from db_Size where SizeID=@SizeID;
END;
GO
