/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [QLGiaoHang]
GO
/****** Object:  Table [dbo].[CTDonHang]    Script Date: 12/23/2018 12:25:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDonHang](
	[SoDH] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](9, 2) NULL,
	[ThanhTien] [decimal](20, 2) NULL,
 CONSTRAINT [PK_CTDonHang] PRIMARY KEY CLUSTERED 
(
	[SoDH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUAHANG]    Script Date: 12/23/2018 12:25:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUAHANG](
	[MaCH] [int] IDENTITY(1,1000) NOT NULL,
	[TenCH] [nvarchar](50) NULL,
	[ChuCH] [nvarchar](50) NULL,
	[SdtCH] [varchar](14) NULL,
	[DiaChiCH] [nvarchar](100) NULL,
	[TenDNCH] [varchar](30) NOT NULL,
	[Image] [varchar](50) NULL,
	[MatKhauCH] [varchar](30) NOT NULL,
	[ThanhToan] [bit] NULL,
 CONSTRAINT [PK_CUAHANG] PRIMARY KEY CLUSTERED 
(
	[MaCH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DICHVU]    Script Date: 12/23/2018 12:25:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICHVU](
	[MaDV] [int] IDENTITY(1,1) NOT NULL,
	[TenDV] [nvarchar](50) NULL,
 CONSTRAINT [PK_DICHVU] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DICHVUBANHANG]    Script Date: 12/23/2018 12:25:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICHVUBANHANG](
	[MaCH] [int] NOT NULL,
	[HinhMinhHoa] [varchar](60) NULL,
	[NgayBD] [datetime] NULL,
	[NgayKT] [datetime] NULL,
 CONSTRAINT [PK_DICHVUBANHANG] PRIMARY KEY CLUSTERED 
(
	[MaCH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONBANHANG]    Script Date: 12/23/2018 12:25:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONBANHANG](
	[SoDH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[NgayDH] [datetime] NULL,
	[TriGia] [money] NULL,
	[TenNguoiNhan] [nvarchar](50) NULL,
	[DiaChiNhan] [nvarchar](50) NULL,
	[SDTNguoiNhan] [nvarchar](50) NULL,
	[MaDV] [int] NULL,
	[DaThanhToan] [bit] NULL,
 CONSTRAINT [PK_DONBANHANG] PRIMARY KEY CLUSTERED 
(
	[SoDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 12/23/2018 12:25:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONHANG](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDV] [int] NULL,
	[MaKH] [int] NULL,
	[DCGiaoHang] [nvarchar](100) NULL,
	[TenNguoiGui] [nvarchar](50) NULL,
	[SDTNguoiNhan] [nvarchar](50) NULL,
	[TenNguoiNH] [nvarchar](50) NULL,
	[DCNhanHang] [nvarchar](100) NULL,
	[SDTNhanHang] [nvarchar](100) NULL,
	[DonGia] [money] NULL,
	[HTThanhToan] [bit] NULL,
 CONSTRAINT [PK_DONHANG] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/23/2018 12:25:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [bit] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDT] [varchar](14) NULL,
	[Email] [nvarchar](40) NULL,
	[TenDN] [varchar](30) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 12/23/2018 12:25:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [int] IDENTITY(1,1000) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDTNV] [varchar](14) NULL,
	[TenDNNV] [varchar](20) NOT NULL,
	[MatKhauNV] [varchar](30) NOT NULL,
	[GioiTinhNV] [bit] NULL,
	[EmailNV] [varchar](50) NULL,
	[QuyenAdmin] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANXET]    Script Date: 12/23/2018 12:25:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANXET](
	[MaNX] [int] NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[NoiDung] [ntext] NULL,
	[MaKH] [int] NULL,
	[Contents] [ntext] NULL,
 CONSTRAINT [PK_NHANXET] PRIMARY KEY CLUSTERED 
(
	[MaNX] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 12/23/2018 12:25:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [varchar](10) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[DonGiaSP] [money] NULL,
	[MaCH] [int] NOT NULL,
	[HinhMinhHoaSP] [varchar](50) NULL,
	[MoTaSP] [ntext] NULL,
	[NgayCapNhat] [datetime] NULL,
	[SoLuongban] [int] NULL,
	[SoLanXem] [int] NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CUAHANG] ON 

INSERT [dbo].[CUAHANG] ([MaCH], [TenCH], [ChuCH], [SdtCH], [DiaChiCH], [TenDNCH], [Image], [MatKhauCH], [ThanhToan]) VALUES (1001, N'Kim Dung', N'Nguyễn Văn A', N'0345678876', N'TDMU', N'anv', N'kimdung.jpg', N'1', 1)
INSERT [dbo].[CUAHANG] ([MaCH], [TenCH], [ChuCH], [SdtCH], [DiaChiCH], [TenDNCH], [Image], [MatKhauCH], [ThanhToan]) VALUES (2001, N'Gong Cha', N'Nguyễn Thị B', N'0123456789', N'TDM', N'Bnt', N'gongcha.jpg', N'1', NULL)
INSERT [dbo].[CUAHANG] ([MaCH], [TenCH], [ChuCH], [SdtCH], [DiaChiCH], [TenDNCH], [Image], [MatKhauCH], [ThanhToan]) VALUES (3001, N'Phúc Long', N'Nguyễn văn C', N'0987654321', N'TDM, Bình Dương', N'Cnv', N'phuclong.jpg', N'1', NULL)
INSERT [dbo].[CUAHANG] ([MaCH], [TenCH], [ChuCH], [SdtCH], [DiaChiCH], [TenDNCH], [Image], [MatKhauCH], [ThanhToan]) VALUES (4001, N'Trà Sữa Hẻm', N'Nguyễn Văn A', N'027444589', N'TDMU', N'hemts', N'feature-1.jpg', N'1', NULL)
SET IDENTITY_INSERT [dbo].[CUAHANG] OFF
SET IDENTITY_INSERT [dbo].[DICHVU] ON 

INSERT [dbo].[DICHVU] ([MaDV], [TenDV]) VALUES (1, N'Giao hàng nhanh')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV]) VALUES (2, N'giao hàng tiết kiệm')
SET IDENTITY_INSERT [dbo].[DICHVU] OFF
SET IDENTITY_INSERT [dbo].[DONBANHANG] ON 

INSERT [dbo].[DONBANHANG] ([SoDH], [MaKH], [NgayDH], [TriGia], [TenNguoiNhan], [DiaChiNhan], [SDTNguoiNhan], [MaDV], [DaThanhToan]) VALUES (1, 2, CAST(N'2018-12-23T00:00:00.000' AS DateTime), 8000.0000, N'Nguyễn Thành Đạt', N'TDMU', N'0348415888', 1, NULL)
INSERT [dbo].[DONBANHANG] ([SoDH], [MaKH], [NgayDH], [TriGia], [TenNguoiNhan], [DiaChiNhan], [SDTNguoiNhan], [MaDV], [DaThanhToan]) VALUES (2, 2, CAST(N'2018-12-23T00:00:00.000' AS DateTime), 50000.0000, N'Nguyễn Thành Đạt', N'TDMU', N'0348415888', 1, NULL)
INSERT [dbo].[DONBANHANG] ([SoDH], [MaKH], [NgayDH], [TriGia], [TenNguoiNhan], [DiaChiNhan], [SDTNguoiNhan], [MaDV], [DaThanhToan]) VALUES (3, 2, CAST(N'2018-12-23T00:00:00.000' AS DateTime), 22000.0000, N'Nguyễn Thành Đạt', N'TDMU', N'0348415888', 1, 0)
INSERT [dbo].[DONBANHANG] ([SoDH], [MaKH], [NgayDH], [TriGia], [TenNguoiNhan], [DiaChiNhan], [SDTNguoiNhan], [MaDV], [DaThanhToan]) VALUES (4, 2, CAST(N'2018-12-23T00:00:00.000' AS DateTime), 20000.0000, N'Nguyễn Thành Đạt', N'TDMU', N'0348415888', 1, 0)
SET IDENTITY_INSERT [dbo].[DONBANHANG] OFF
SET IDENTITY_INSERT [dbo].[DONHANG] ON 

INSERT [dbo].[DONHANG] ([MaDH], [MaDV], [MaKH], [DCGiaoHang], [TenNguoiGui], [SDTNguoiNhan], [TenNguoiNH], [DCNhanHang], [SDTNhanHang], [DonGia], [HTThanhToan]) VALUES (2, 1, 2, N'ĐH Thủ Dầu Một - Dĩ An', N'Nguyễn Thành Đạt', N'0248415888', N'Nguyễn Văn A', N'ĐH Thủ Dầu Một - Tp.Thủ Dầu Một', N'0123545678', 25500.0000, NULL)
SET IDENTITY_INSERT [dbo].[DONHANG] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SoDT], [Email], [TenDN], [MatKhau]) VALUES (2, N'Nguyễn Thành Đạt', CAST(N'1996-09-29T00:00:00.000' AS DateTime), 1, N'D16PM01-KTCN-TDMU', N'0348415888', N'datnt2996@gmail.com', N'datnt', N'1')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SoDT], [Email], [TenDN], [MatKhau]) VALUES (3, N'Nguyễn văn A', CAST(N'2018-12-31T00:00:00.000' AS DateTime), 1, N'tdm', N'0248415888', N'datnt@gmail.com', N'anv', N'1')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDTNV], [TenDNNV], [MatKhauNV], [GioiTinhNV], [EmailNV], [QuyenAdmin]) VALUES (1, N'Nguyễn Văn A', N'TDMU', N'0901640345', N'anv', N'1', 1, N'datprono1001@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [SoLuong], [DonGiaSP], [MaCH], [HinhMinhHoaSP], [MoTaSP], [NgayCapNhat], [SoLuongban], [SoLanXem]) VALUES (N'1001', N'Trà sữa Truyền Thống', 1000, 18000.0000, 1001, N'kdTSTruyenThong.jpg', N'Trà Sữa Truyền Thống Kim Dung', CAST(N'2018-12-12T00:00:00.000' AS DateTime), 10, 67)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [SoLuong], [DonGiaSP], [MaCH], [HinhMinhHoaSP], [MoTaSP], [NgayCapNhat], [SoLuongban], [SoLanXem]) VALUES (N'1002', N'Trà Sữa Thái Xanh', NULL, 14000.0000, 1001, N'kdTSThaiXanh.jpg', NULL, NULL, 0, 11)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [SoLuong], [DonGiaSP], [MaCH], [HinhMinhHoaSP], [MoTaSP], [NgayCapNhat], [SoLuongban], [SoLanXem]) VALUES (N'1003', N'Trà sữa Matcha Đá Xay', NULL, 28000.0000, 1001, N'kdTSMatChaCakeCream.jpg', NULL, NULL, 0, 10)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [SoLuong], [DonGiaSP], [MaCH], [HinhMinhHoaSP], [MoTaSP], [NgayCapNhat], [SoLuongban], [SoLanXem]) VALUES (N'1004', N'Cakao Sữa', NULL, 20000.0000, 1001, N'KDCacaoSua.jpg', NULL, NULL, 0, 13)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [SoLuong], [DonGiaSP], [MaCH], [HinhMinhHoaSP], [MoTaSP], [NgayCapNhat], [SoLuongban], [SoLanXem]) VALUES (N'1005', N'Cafe Đá', NULL, 12000.0000, 1001, N'kdCafeda.jpg', NULL, NULL, 0, 3)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [SoLuong], [DonGiaSP], [MaCH], [HinhMinhHoaSP], [MoTaSP], [NgayCapNhat], [SoLuongban], [SoLanXem]) VALUES (N'1006', N'Cam Vắt', NULL, 25000.0000, 1001, N'kdCamVat.jpg', NULL, NULL, 0, 7)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [SoLuong], [DonGiaSP], [MaCH], [HinhMinhHoaSP], [MoTaSP], [NgayCapNhat], [SoLuongban], [SoLanXem]) VALUES (N'1007', N'Cafe Sữa Đá', NULL, 15000.0000, 1001, N'kdCaPheSuaw.jpg', NULL, NULL, 0, 4)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [SoLuong], [DonGiaSP], [MaCH], [HinhMinhHoaSP], [MoTaSP], [NgayCapNhat], [SoLuongban], [SoLanXem]) VALUES (N'1008', N'Lục Trà Đào', NULL, 20000.0000, 1001, N'kdLuctraDao.jpg', NULL, NULL, 0, 39)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [SoLuong], [DonGiaSP], [MaCH], [HinhMinhHoaSP], [MoTaSP], [NgayCapNhat], [SoLuongban], [SoLanXem]) VALUES (N'1009', N'Soda Việt Quất', NULL, 25000.0000, 1001, N'kdSoda.jpg', NULL, NULL, 0, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [SoLuong], [DonGiaSP], [MaCH], [HinhMinhHoaSP], [MoTaSP], [NgayCapNhat], [SoLuongban], [SoLanXem]) VALUES (N'1010', N'Soda Sốt Dâu', NULL, 25000.0000, 1001, N'kdSodaDau.jpg', NULL, NULL, 0, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [SoLuong], [DonGiaSP], [MaCH], [HinhMinhHoaSP], [MoTaSP], [NgayCapNhat], [SoLuongban], [SoLanXem]) VALUES (N'1011', N'Sữa Chua Đá', NULL, 15000.0000, 1001, N'kdSuaChuaDa.jpg', NULL, NULL, 0, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [SoLuong], [DonGiaSP], [MaCH], [HinhMinhHoaSP], [MoTaSP], [NgayCapNhat], [SoLuongban], [SoLanXem]) VALUES (N'1012', N'Sữa Chua Sốt Dâu', NULL, 22000.0000, 1001, N'kdSuaChuaSotDau.jpg', NULL, NULL, 0, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [SoLuong], [DonGiaSP], [MaCH], [HinhMinhHoaSP], [MoTaSP], [NgayCapNhat], [SoLuongban], [SoLanXem]) VALUES (N'1013', N'Trà Đào Kim Dung', NULL, 25000.0000, 1001, N'kdTraDao.jpg', NULL, NULL, 0, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [SoLuong], [DonGiaSP], [MaCH], [HinhMinhHoaSP], [MoTaSP], [NgayCapNhat], [SoLuongban], [SoLanXem]) VALUES (N'1014', N'Trà Thái Kim Dung', NULL, 10000.0000, 1001, N'kdTraThaiXanh.jpg', NULL, NULL, 0, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [SoLuong], [DonGiaSP], [MaCH], [HinhMinhHoaSP], [MoTaSP], [NgayCapNhat], [SoLuongban], [SoLanXem]) VALUES (N'2001', N'Alisan Vải GongCha', NULL, 43000.0000, 2001, N'GCAliSan.png', NULL, NULL, 0, 24)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [SoLuong], [DonGiaSP], [MaCH], [HinhMinhHoaSP], [MoTaSP], [NgayCapNhat], [SoLuongban], [SoLanXem]) VALUES (N'2002', N'Đào Hồng Mận Hạt É', NULL, 43000.0000, 2001, N'GCHDDManHatE.png', NULL, NULL, NULL, 4)
ALTER TABLE [dbo].[DONBANHANG] ADD  CONSTRAINT [DF_DONBANHANG_DaThanhToan]  DEFAULT ((0)) FOR [DaThanhToan]
GO
ALTER TABLE [dbo].[CTDonHang]  WITH CHECK ADD  CONSTRAINT [FK_CTDonHang_CTDonHang] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CTDonHang] CHECK CONSTRAINT [FK_CTDonHang_CTDonHang]
GO
ALTER TABLE [dbo].[CTDonHang]  WITH CHECK ADD  CONSTRAINT [FK_CTDonHang_DONBANHANG] FOREIGN KEY([SoDH])
REFERENCES [dbo].[DONBANHANG] ([SoDH])
GO
ALTER TABLE [dbo].[CTDonHang] CHECK CONSTRAINT [FK_CTDonHang_DONBANHANG]
GO
ALTER TABLE [dbo].[DICHVUBANHANG]  WITH CHECK ADD  CONSTRAINT [FK_DICHVUBANHANG_CUAHANG] FOREIGN KEY([MaCH])
REFERENCES [dbo].[CUAHANG] ([MaCH])
GO
ALTER TABLE [dbo].[DICHVUBANHANG] CHECK CONSTRAINT [FK_DICHVUBANHANG_CUAHANG]
GO
ALTER TABLE [dbo].[DONBANHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONBANHANG_DICHVU] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DICHVU] ([MaDV])
GO
ALTER TABLE [dbo].[DONBANHANG] CHECK CONSTRAINT [FK_DONBANHANG_DICHVU]
GO
ALTER TABLE [dbo].[DONBANHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONBANHANG_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONBANHANG] CHECK CONSTRAINT [FK_DONBANHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONHANG_DICHVU] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DICHVU] ([MaDV])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_DONHANG_DICHVU]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONHANG_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_DONHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[NHANXET]  WITH CHECK ADD  CONSTRAINT [FK_NHANXET_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[NHANXET] CHECK CONSTRAINT [FK_NHANXET_KHACHHANG]
GO
ALTER TABLE [dbo].[NHANXET]  WITH CHECK ADD  CONSTRAINT [FK_NHANXET_SANPHAM] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[NHANXET] CHECK CONSTRAINT [FK_NHANXET_SANPHAM]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_CUAHANG] FOREIGN KEY([MaCH])
REFERENCES [dbo].[CUAHANG] ([MaCH])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_CUAHANG]
GO
