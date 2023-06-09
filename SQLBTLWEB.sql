Create database QL_TOURDL_N5
USE [QL_TOURDL_N5]
GO
/****** Object:  Table [dbo].[AnhTin]    Script Date: 4/13/2023 12:17:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnhTin](
	[TenFileAnh] [nvarchar](50) NOT NULL,
	[ViTri] [nvarchar](50) NULL,
	[MaTin] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TenFileAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnhTour]    Script Date: 4/13/2023 12:17:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnhTour](
	[TenFileAnh] [nvarchar](50) NOT NULL,
	[ViTri] [nvarchar](50) NULL,
	[MaTour] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TenFileAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 4/13/2023 12:17:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[MaBK] [nvarchar](50) NOT NULL,
	[NgayDi] [date] NOT NULL,
	[SoChoBooking] [int] NOT NULL,
	[NgayDat] [date] NOT NULL,
	[MaTour] [nvarchar](50) NOT NULL,
	[MaKH] [nvarchar](50) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIADIEM_TOUR]    Script Date: 4/13/2023 12:17:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIADIEM_TOUR](
	[MaDD] [nvarchar](50) NOT NULL,
	[MaTour] [nvarchar](50) NOT NULL,
	[TenFileAnh] [nvarchar](50) NULL,
	[ViTri] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDD] ASC,
	[MaTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiemThamQuan]    Script Date: 4/13/2023 12:17:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemThamQuan](
	[MaDD] [nvarchar](50) NOT NULL,
	[Mien] [nvarchar](50) NULL,
	[MoTa] [nvarchar](4000) NULL,
	[TenDiaDiem] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/13/2023 12:17:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[NgaySinh] [date] NOT NULL,
	[SDT] [nvarchar](50) NOT NULL,
	[MaKH] [nvarchar](50) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachSan]    Script Date: 4/13/2023 12:17:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachSan](
	[MaKS] [nvarchar](50) NOT NULL,
	[TenKS] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](50) NOT NULL,
	[XepHang_KS] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHSAN_TOUR]    Script Date: 4/13/2023 12:17:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHSAN_TOUR](
	[MaKS] [nvarchar](50) NOT NULL,
	[MaTour] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKS] ASC,
	[MaTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/13/2023 12:17:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[GioiTinh] [nvarchar](50) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[SoDienThoai] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 4/13/2023 12:17:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Loai] [int] NOT NULL,
	[ConfirmPassword] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 4/13/2023 12:17:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[MaTin] [nvarchar](50) NOT NULL,
	[Anh] [nvarchar](50) NULL,
	[NgayDang] [date] NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](4000) NULL,
	[Noi_Dung] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 4/13/2023 12:17:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[MaTour] [nvarchar](50) NOT NULL,
	[TenTour] [nvarchar](50) NOT NULL,
	[GiaCho] [int] NOT NULL,
	[Anh] [nvarchar](50) NULL,
	[DiemXuatPhat] [nvarchar](50) NOT NULL,
	[XepHangTour] [int] NOT NULL,
	[SoNgayDL] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AnhTin] ([TenFileAnh], [ViTri], [MaTin]) VALUES (N'anhtt10.jpg', NULL, N'TT10')
INSERT [dbo].[AnhTin] ([TenFileAnh], [ViTri], [MaTin]) VALUES (N'anhtt5.jpg', NULL, N'TT05')
INSERT [dbo].[AnhTin] ([TenFileAnh], [ViTri], [MaTin]) VALUES (N'anhtt6.jpg', NULL, N'TT06')
INSERT [dbo].[AnhTin] ([TenFileAnh], [ViTri], [MaTin]) VALUES (N'anhtt7.jpg', NULL, N'TT07')
INSERT [dbo].[AnhTin] ([TenFileAnh], [ViTri], [MaTin]) VALUES (N'anhtt8.jpg', NULL, N'TT08')
INSERT [dbo].[AnhTin] ([TenFileAnh], [ViTri], [MaTin]) VALUES (N'anhtt9.jpg', NULL, N'TT09')
GO
INSERT [dbo].[AnhTour] ([TenFileAnh], [ViTri], [MaTour]) VALUES (N'AnhT01', NULL, N'MT01')
INSERT [dbo].[AnhTour] ([TenFileAnh], [ViTri], [MaTour]) VALUES (N'AnhT02', NULL, N'MT02')
INSERT [dbo].[AnhTour] ([TenFileAnh], [ViTri], [MaTour]) VALUES (N'AnhT03', NULL, N'MT03')
INSERT [dbo].[AnhTour] ([TenFileAnh], [ViTri], [MaTour]) VALUES (N'AnhT04', NULL, N'MT04')
INSERT [dbo].[AnhTour] ([TenFileAnh], [ViTri], [MaTour]) VALUES (N'AnhT05', NULL, N'MT05')
INSERT [dbo].[AnhTour] ([TenFileAnh], [ViTri], [MaTour]) VALUES (N'AnhT06', NULL, N'MT06')
INSERT [dbo].[AnhTour] ([TenFileAnh], [ViTri], [MaTour]) VALUES (N'AnhT07', NULL, N'MT07')
INSERT [dbo].[AnhTour] ([TenFileAnh], [ViTri], [MaTour]) VALUES (N'AnhT08', NULL, N'MT08')
INSERT [dbo].[AnhTour] ([TenFileAnh], [ViTri], [MaTour]) VALUES (N'AnhT09', NULL, N'MT09')
INSERT [dbo].[AnhTour] ([TenFileAnh], [ViTri], [MaTour]) VALUES (N'AnhT10', NULL, N'MT10')
GO
INSERT [dbo].[Booking] ([MaBK], [NgayDi], [SoChoBooking], [NgayDat], [MaTour], [MaKH], [MaNV]) VALUES (N'BK03', CAST(N'2022-12-23' AS Date), 6, CAST(N'2022-12-23' AS Date), N'MT03', N'KH03', N'NV03')
INSERT [dbo].[Booking] ([MaBK], [NgayDi], [SoChoBooking], [NgayDat], [MaTour], [MaKH], [MaNV]) VALUES (N'BK04', CAST(N'2022-12-23' AS Date), 7, CAST(N'2022-12-23' AS Date), N'MT04', N'KH04', N'NV04')
INSERT [dbo].[Booking] ([MaBK], [NgayDi], [SoChoBooking], [NgayDat], [MaTour], [MaKH], [MaNV]) VALUES (N'BK05', CAST(N'2022-12-23' AS Date), 5, CAST(N'2022-12-23' AS Date), N'MT05', N'KH05', N'NV05')
INSERT [dbo].[Booking] ([MaBK], [NgayDi], [SoChoBooking], [NgayDat], [MaTour], [MaKH], [MaNV]) VALUES (N'BK06', CAST(N'2022-12-23' AS Date), 7, CAST(N'2022-12-23' AS Date), N'MT06', N'KH06', N'NV06')
INSERT [dbo].[Booking] ([MaBK], [NgayDi], [SoChoBooking], [NgayDat], [MaTour], [MaKH], [MaNV]) VALUES (N'BK07', CAST(N'2022-12-23' AS Date), 6, CAST(N'2022-12-23' AS Date), N'MT07', N'KH07', N'NV07')
INSERT [dbo].[Booking] ([MaBK], [NgayDi], [SoChoBooking], [NgayDat], [MaTour], [MaKH], [MaNV]) VALUES (N'BK08', CAST(N'2022-12-23' AS Date), 5, CAST(N'2022-12-23' AS Date), N'MT08', N'KH08', N'NV08')
INSERT [dbo].[Booking] ([MaBK], [NgayDi], [SoChoBooking], [NgayDat], [MaTour], [MaKH], [MaNV]) VALUES (N'BK09', CAST(N'2022-12-23' AS Date), 7, CAST(N'2022-12-23' AS Date), N'MT09', N'KH09', N'NV09')
INSERT [dbo].[Booking] ([MaBK], [NgayDi], [SoChoBooking], [NgayDat], [MaTour], [MaKH], [MaNV]) VALUES (N'BK10', CAST(N'2022-12-23' AS Date), 4, CAST(N'2022-12-23' AS Date), N'MT10', N'KH10', N'NV10')
GO
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD01', N'MT01', N'trangan1.jpg', NULL)
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD02', N'MT01', N'baidinh1.jpg', NULL)
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD02', N'MT10067', N'baidinh1.jpg', NULL)
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD03', N'MT02', N'vinhhalong1.jpg', NULL)
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD03', N'MT10067', N'vinhhalong1.jpg', NULL)
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD04', N'MT02', N'tuanchau1.jpg', NULL)
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD05', N'MT03', N'thunglungmuonghoa1.jpg', NULL)
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD06', N'MT03', N'bantavan1.jpg', NULL)
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD07', N'MT04', N'thacbandoc1.jpg', NULL)
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD07', N'MT10067565', N'bandaosontra1.jpg', NULL)
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD08', N'MT04', N'dongnguomngao1.jpg', NULL)
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD09', N'MT05', N'dinhphaluong1.jpg', NULL)
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD10', N'MT05', N'mocchau1.jpg', NULL)
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD11', N'MT06', N'paachai1.jpg', NULL)
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD12', N'MT06', N'deophadin1.jpg', NULL)
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD13', N'MT07', N'thanhnhamac1.jpg', NULL)
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD14', N'MT07', N'nuitothi1.jpg', NULL)
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD15', N'MT08', N'langvua1.jpg', NULL)
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD16', N'MT08', N'kinhthanhhue1.jpg', NULL)
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD17', N'MT09', N'bandaosontra1.jpg', NULL)
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD18', N'MT09', N'baibiendep1.jpg', NULL)
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD19', N'MT10', N'chonoicairang1.jpg', NULL)
INSERT [dbo].[DIADIEM_TOUR] ([MaDD], [MaTour], [TenFileAnh], [ViTri]) VALUES (N'DD20', N'MT10', N'giangua1.jpg', NULL)
GO
INSERT [dbo].[DiemThamQuan] ([MaDD], [Mien], [MoTa], [TenDiaDiem]) VALUES (N'DD01', N'Bắc', N'Khu du lịch sinh thái Tràng An là một khu du lịch sinh thái nằm trong Quần thể di sản thế giới Tràng An thuộc tỉnh Ninh Bình. Nơi đây đã được Chính phủ Việt Nam xếp hạng di tích quốc gia đặc biệt quan trọng và UNESCO công nhận là di sản thế giới kép từ năm 2014.', N'Tràng An')
INSERT [dbo].[DiemThamQuan] ([MaDD], [Mien], [MoTa], [TenDiaDiem]) VALUES (N'DD02', N'Bắc', N'Chùa Bái Đính là một quần thể chùa lớn với nhiều kỷ lục châu Á và Việt Nam được xác lập như chùa có tượng Phật bằng đồng dát vàng lớn nhất châu Á, chùa có hành lang La Hán dài nhất châu Á, có tượng Di lặc bằng đồng lớn nhất Đông Nam Á... Đây là ngôi chùa lớn nhất và sở hữu nhiều kỷ lục nhất ở Việt Nam.', N'Chùa Bái Đính')
INSERT [dbo].[DiemThamQuan] ([MaDD], [Mien], [MoTa], [TenDiaDiem]) VALUES (N'DD03', N'Bắc', N'Vịnh Hạ Long là một vịnh nhỏ thuộc phần bờ tây vịnh Bắc Bộ tại khu vực biển Đông Bắc Việt Nam, bao gồm vùng biển đảo của thành phố Hạ Long thuộc tỉnh Quảng Ninh', N'Vịnh Hạ Long')
INSERT [dbo].[DiemThamQuan] ([MaDD], [Mien], [MoTa], [TenDiaDiem]) VALUES (N'DD04', N'Bắc', N'Tuần Châu là một phường đảo thuộc thành phố Hạ Long, Quảng Ninh, Việt Nam. Tuần Châu hiện trở thành một khu du lịch, nghỉ dưỡng của Hạ Long, Hòn đảo đang phát triển với các điểm thu hút khách du lịch, bãi biển và các hoạt động vui chơi giải trí.', N'Tuần Châu')
INSERT [dbo].[DiemThamQuan] ([MaDD], [Mien], [MoTa], [TenDiaDiem]) VALUES (N'DD05', N'Bắc', N'Thung lũng Mường Hoa nằm ở xã Hầu Thào, cách trung tâm thị trấn Sapa chừng 10km theo hướng Đông Nam. Đây là nơi sinh sống của các đồng bào người dân tộc H’Mông đen, Dao đỏ, người Giáy…
Để đến được Mường Hoa bạn sẽ phải vượt qua các dãy núi cao. Tuy đường ngoằn ngoèo, không hề dễ đi xong giá trị mà bạn nhận được lại vô cùng tuyệt vời.', N'Thung Lũng Mường Hoa - Swing Sapa')
INSERT [dbo].[DiemThamQuan] ([MaDD], [Mien], [MoTa], [TenDiaDiem]) VALUES (N'DD06', N'Bắc', N'Bản Tả Van , một trong số ít các bản của người dân tộc miền núi tại Sapa mà ta có thể dễ dàng đến được. Tại Tả Van cuộc sống người dẫn vẫn rất bình dị , yên ả, không ồn ào và bị đô thị hóa như các bản khác. Hãy dành vài phút ngắn ngủ cùng Cuồng tìm hiểu về Tả Van cùng nét văn hóa của người dân tộc nơi đây nhé.', N'Bản Tả Van - Bản Sín Chải')
INSERT [dbo].[DiemThamQuan] ([MaDD], [Mien], [MoTa], [TenDiaDiem]) VALUES (N'DD07', N'Bắc', N'Theo quan điểm của Trung Quốc thì thác chính và thác phụ là hai thác riêng biệt, thác chính (Đức Thiên) có chiều rộng 100 m, độ sâu 60 m và độ cao là 70 m. Theo quan điểm của phía Việt Nam, thác Bản Giốc bao gồm cả thác chính và phụ với tổng chiều rộng là 208 m.[2] Thác Bản Giốc được chia thành hai phần, phần ở phía Nam gọi là thác Cao, đây là thác phụ vì lượng nước không lớn. Thác Thấp là thác chính nằm ở phía Bắc trên biên giới Việt Trung.', N'Thác Bản Dốc - Đèo Mã Phục')
INSERT [dbo].[DiemThamQuan] ([MaDD], [Mien], [MoTa], [TenDiaDiem]) VALUES (N'DD08', N'Bắc', N'Từ Thành phố Cao Bằng dọc theo quốc lộ 3 đến địa phận đèo Mã Phục, theo tỉnh lộ 205 về huyện Trà Lĩnh gần 10 km, du khách đến hồ Thang Hen sẽ được chiêm ngưỡng cảnh sắc thiên nhiên tuyệt đẹp. Với vách đá dựng đứng thuộc địa hình cacxtơ của những dãy núi trùng điệp bao quanh hồ, nhiều khối đá bị xẻ tạo thành những chiếc răng bừa khổng lồ. Có nơi, núi lô xô một sườn dựng đứng, một sườn thoai thoải tạo cảm giác như những dãy nhà một mái nối tiếp nhau. Hồ Thang Hen là một chuỗi liên hoàn các hồ nhỏ chạy dọc theo thung lũng đá vôi. Do quá trình đá trên trần kênh động ngầm của con sông Trà Lĩnh bị sụt xuống tạo thành hồ.', N'Hồ Thang Hen - Động Ngườm Ngao')
INSERT [dbo].[DiemThamQuan] ([MaDD], [Mien], [MoTa], [TenDiaDiem]) VALUES (N'DD09', N'Bắc', N'Được mệnh danh là cổng trời của Mộc Châu, đỉnh Pha Luông nằm giữa biên giới Việt - Lào. Chẳng thể nào tả hết nổi cảm xúc khi leo lên đây cả Đỉnh Pha Luông có độ cao gần 2.000m so với mực nước biển, nằm cách Mộc Châu khoảng 40km, thuộc xã Tân Xuân, Chiềng Xuân. Núi Pha Luông hay còn gọi là Bờ Lung, tiếp giáp với biên giới Việt  Lào về phái đông và thuộc huyện Mộc Châu, tỉnh Sơn La.', N'Đỉnh Pha Luông - Đồi Chè Trái Tim')
INSERT [dbo].[DiemThamQuan] ([MaDD], [Mien], [MoTa], [TenDiaDiem]) VALUES (N'DD10', N'Bắc', N'Cao nguyên Mộc Châu thuộc huyện Mộc Châu, tỉnh Sơn La. Cao nguyên Mộc Châu có độ cao trung bình 1.050 m so với mực nước biển, mang đặc trưng của khí hậu cận ôn đới, đất đai màu mỡ phì nhiêu, thuận lợi cho phát triển cây chè, cây ăn quả (mận, đào) và chăn nuôi bò sữa.

Cao nguyên Mộc Châu cách Hà Nội khoảng 200 km theo quốc lộ 6. Người Thái, người Mông là các dân tộc thiểu số chiếm số đông ở Mộc Châu. Vào ngày 1 tháng 9 hằng năm, người Mông từ khắp vùng Tây Bắc tập trung về Mộc Châu và biến thị trấn này thành một ngày hội đặc biệt. Ở Mộc Châu, các dịch vụ du lịch còn chưa phát triển, nếu không còn khách sạn có thể thuê nhà để ở với giá rẻ.', N'Cao Nguyên Mộc Châu ')
INSERT [dbo].[DiemThamQuan] ([MaDD], [Mien], [MoTa], [TenDiaDiem]) VALUES (N'DD11', N'Bắc', N'Nằm ở phía Tây Bắc, bản A Pa Chải đi khoảng 8km theo đường thẳng là đỉnh Khoan La San cao 1864 m so với mực nước biển. Đây đồng thời cũng là điểm đặt cột mốc biên giới của 3 nước Việt Nam, Trung Quốc và Lào (cột mốc số 0). Nơi này được mệnh danh là “nơi một con gà gáy cả ba nước đều nghe“. Cột mốc này cách tỉnh Điện Biên Phủ khoảng 250km. 

Nơi đây chủ yếu là người Hà Nhì (hay còn gọi là Ha Ni, U Ní, Xá U Ní) – một dân tộc sống ở Đông Nam Á và lân cận bên Trung Quốc. Họ cùng chung sống với các  dân tộc thiểu số khác ở A Pa Chải. Cái tên A Pa Chải trong tiếng Hà Nhì có nghĩa là vùng đất bằng phẳng và rộng lớn.', N'Pa A Chải - Mường Nhé')
INSERT [dbo].[DiemThamQuan] ([MaDD], [Mien], [MoTa], [TenDiaDiem]) VALUES (N'DD12', N'Bắc', N'Tên gọi đèo Pha Đin nguyên gốc xuất xứ từ tiếng Thái, Pha đin, trong đó Pha nghĩa là "Trời", Đin là "Đất" hàm nghĩa nơi đây là chỗ nơi đất trời gặp nhau.

Người Lai Châu cũ (nay là Điện Biên) và Sơn La từ xa xưa còn lưu truyền câu chuyện kể về cuộc bàn thảo tìm cách vạch định ranh giới của hai địa phương bằng một cuộc đua ngựa vượt dốc Pha Đin. Người và ngựa của cả hai phía đều đồng thời xuất phát từ hai dốc đèo. Hai dũng sĩ và hai con tuấn mã đều có sức mạnh và ý chí như nhau nên khoảng cách mà họ đi được cho tới địa điểm gặp nhau trên đèo không chênh lệch bao nhiêu. Tuy vậy, phần ngựa Lai Châu phi nhanh hơn nên phần đèo thuộc về Lai Châu dài hơn một chút so với phần phía Sơn La[4].', N'Đèo Pha Đin')
INSERT [dbo].[DiemThamQuan] ([MaDD], [Mien], [MoTa], [TenDiaDiem]) VALUES (N'DD13', N'Bắc', N'Thành nhà Mạc ở tỉnh Lạng Sơn là một di tích lịch sử văn hóa ở phường Tam Thanh, thành phố Lạng Sơn, tỉnh Lạng Sơn, Việt Nam. Đây là một trong số khá ít di tích còn lại của thời kỳ nhà Mạc trong lịch sử Việt Nam. Thành nhà Mạc cùng với núi Tô Thị được xem là hai di tích bộ mặt của tỉnh Lạng Sơn, Dấu tích hiện nay còn lại gồm 2 đoạn tường thành xây bằng đá giữa hẻm núi giữa ba ngọn núi cao, trong đó gồm hai ngọn núi Tô Thị và núi Lô Cốt. Bức tường thành phía tây bắc, xây bằng đá hộc miết mạch vôi cát có chiều dài 65m, chiều cao 4m, có cửa công, lỗ châu mai, cửa ra vào. Bức phía đông dài 75 m cũng có cổng ra vào, 15 lỗ châu mai, 7 cửa công.', N'Thành Nhà Mạc - Thành Cổ Lạng Sơn')
INSERT [dbo].[DiemThamQuan] ([MaDD], [Mien], [MoTa], [TenDiaDiem]) VALUES (N'DD14', N'Bắc', N'Núi Tô Thị (còn gọi là núi Vọng Phu) là một ngọn núi tại phường Tam Thanh, thành phố Lạng Sơn, tỉnh Lạng Sơn. Trên đỉnh núi có tảng đá tự nhiên giống hình người phụ nữ bồng con nhìn về phương xa. Núi Tô Thị không chỉ nổi bật ở cảnh quan tự nhiên, kiến trúc ngôi chùa động linh thiêng, độc đáo mà còn lưu giữ trong mình nhiều giá trị đặc biệt quan trọng về văn hóa, nghệ thuật và lịch sử gắn liền với các văn sĩ nổi tiếng như Ngô Thì Sĩ, Nguyễn Du.

Gần núi Tô Thị có các địa điểm tham quan nổi tiếng như: Chùa Thành, đền Kỳ Cùng, chùa Tiên, chợ Kỳ Lừa...', N'Núi Tô Thị - Ải Chi Lăng')
INSERT [dbo].[DiemThamQuan] ([MaDD], [Mien], [MoTa], [TenDiaDiem]) VALUES (N'DD15', N'Trung', N'Nhắc đến lăng tẩm Huế, chúng ta không thể bỏ qua lăng Gia Long. Nằm trong quần thể hệ thống lăng tẩm ở Huế, lăng Gia Long được xây dựng trong vòng 6 năm và có chu vi rộng đến gần 12.000 mét. Vì tọa lạc tại quần sơn Đại Thiên Thọ nên lăng Gia Long còn có tên gọi khác là Thiên Thọ Lăng. 

Bao quanh lăng là những thế núi hùng vĩ, tráng lệ với ngọn Đại Thiên Thọ “bảo vệ” phía trước cùng 28 dáng núi nhỏ bao bọc tả hữu xung quanh. Không gian quanh lăng xanh mát và yên tĩnh, gợi nên nét trang nghiêm, uy nghi của vị vua nhà Nguyễn đầu tiên của Việt Nam.', N'Quần thể các Lăng vua nhà Nguyễn')
INSERT [dbo].[DiemThamQuan] ([MaDD], [Mien], [MoTa], [TenDiaDiem]) VALUES (N'DD16', N'Trung', N'Kinh thành Huế được vua Gia Long tiến hành khảo sát từ năm 1803, khởi công xây dựng từ 1805 và hoàn chỉnh vào năm 1832 dưới triều vua Minh Mạng. Hiện nay, Kinh thành Huế thuộc địa phận bốn phường Đông Ba, Tây Lộc, Thuận Hòa, Thuận Lộc của thành phố Huế, có ranh giới như sau: phía nam giáp đường Trần Hưng Đạo và đường Lê Duẩn; phía tây giáp đường Lê Duẩn; phía bắc giáp đường Tăng Bạt Hổ và đường Đào Duy Anh; phía đông giáp đường Phan Đăng Lưu và đường Huỳnh Thúc Kháng.', N'Kinh Thành Huế')
INSERT [dbo].[DiemThamQuan] ([MaDD], [Mien], [MoTa], [TenDiaDiem]) VALUES (N'DD17', N'Trung', N'Bán đảo Sơn Trà nằm cách trung tâm thành phố Đà Nẵng chừng 10 km về hướng Đông Bắc. Sơn Trà có diện tích 60 kilômét vuông (23 dặm vuông Anh), chiều dài 13 kilômét (8,1 mi), chiều rộng 5 kilômét (3,1 mi), nơi hẹp nhất 2 kilômét (1,2 mi). Bán đảo Sơn Trà cùng với đèo Hải Vân bao bọc thành phố Đà Nẵng và vịnh Đà Nẵng. Cầu Thuận Phước - cầu treo đẹp nhất Đà Nẵng và kỷ lục của Việt Nam được bắc qua bán đảo này. Bán đảo Sơn Trà nhiều thắng cảnh thiên nhiên và trong tương lai không xa sẽ trở thành khu du lịch nổi tiếng của thành phố và của cả nước.', N'Bán Đảo Sơn Trà')
INSERT [dbo].[DiemThamQuan] ([MaDD], [Mien], [MoTa], [TenDiaDiem]) VALUES (N'DD18', N'Trung', N'Bãi biển Mỹ Khê Đà Nẵng cách trung tâm thành phố Đà Nẵng hơn 10km về phía Đông, cạnh bờ sông Kinh. Biển nổi tiếng với vẻ đẹp thơ mộng có biển xanh, cát trắng và nắng vàng. Bên cạnh đó, thiên nhiên cũng ưu ái ban tặng cho Mỹ Khê cánh rừng dương xanh ngát & hàng dừa thẳng tắp sừng sững giữa trời.

Chính vẻ đẹp nên thơ ấy đã đưa biển Mỹ Khê góp mặt trong danh sách “6 bãi biển quyến rũ nhất hành tinh” - theo tờ Forbes, tạp chí kinh tế hàng đầu tại Mỹ. Tờ “Sunday Herald Sun” từ Australia cũng từng khẳng định Mỹ Khê là một trong 10 bãi biển châu Á được yêu thích nhất trên thế giới.', N'Những bãi biển đẹp ở Đá nẵng')
INSERT [dbo].[DiemThamQuan] ([MaDD], [Mien], [MoTa], [TenDiaDiem]) VALUES (N'DD19', N'Nam', N'Chợ nổi Cái Răng là loại hình chợ độc đáo và đặc trưng của vùng đồng bằng sông Cửu Long mà không nơi nào trên đất nước Việt Nam có được. Và đây cũng là khu chợ tiêu biểu, sầm uất, nổi tiếng nhất cho nét văn hóa sông nước miền Tây.', N'Chợ nổi Cái Răng')
INSERT [dbo].[DiemThamQuan] ([MaDD], [Mien], [MoTa], [TenDiaDiem]) VALUES (N'DD20', N'Nam', N'Khu di tích Giàn Gừa thuộc ấp Nhơn Khánh, xã Nhơn Nghĩa, huyện Phong Điền, thành phố Cần Thơ. Cách trung tâm thành phố Cần Thơ 14km, có 2 con đường để đến Di tích lịch sử Giàn Gừa: một là đi theo hướng lộ Vòng Cung trên địa bàn xã Mỹ Khánh, huyện Phong Điền, qua phà đến xã Nhơn Nghĩa rồi hỏi thăm đường đi; hai là đi từ Cần Thơ về Hậu Giang, rẽ vào quốc lộ 61B (đường đi Vị Thanh), đến gần chân cầu Rạch Sung, quẹo trái, có bảng chỉ dẫn đường vào di tích.', N'Giàn Gừa - Cần Thơ')
GO
INSERT [dbo].[KhachHang] ([NgaySinh], [SDT], [MaKH], [TenKH], [DiaChi], [GioiTinh], [Email], [UserName]) VALUES (CAST(N'1998-12-02' AS Date), N'0988362445', N'KH01', N'Nguyen Van Manh', N'Ha Noi', N'Nam', N'asdasdas@gmail.com', N'Manh')
INSERT [dbo].[KhachHang] ([NgaySinh], [SDT], [MaKH], [TenKH], [DiaChi], [GioiTinh], [Email], [UserName]) VALUES (CAST(N'1998-12-02' AS Date), N'0654846845', N'KH02', N'Bui Van Tuan', N'Bac Giang', N'Nam', N'zxcxczxc@gmai.com', N'Tuan')
INSERT [dbo].[KhachHang] ([NgaySinh], [SDT], [MaKH], [TenKH], [DiaChi], [GioiTinh], [Email], [UserName]) VALUES (CAST(N'1994-10-02' AS Date), N'0468484968', N'KH03', N'Do Duc Viet', N'Hai Duong', N'Nam', N'czxc@gmail.com', N'Viet')
INSERT [dbo].[KhachHang] ([NgaySinh], [SDT], [MaKH], [TenKH], [DiaChi], [GioiTinh], [Email], [UserName]) VALUES (CAST(N'1994-10-25' AS Date), N'0687448114', N'KH04', N'Nguyen Huu But', N'Nam Dinh', N'Nam ', N'dsfmnn@gmail.com', N'But')
INSERT [dbo].[KhachHang] ([NgaySinh], [SDT], [MaKH], [TenKH], [DiaChi], [GioiTinh], [Email], [UserName]) VALUES (CAST(N'1994-10-29' AS Date), N'0564442145', N'KH05', N'Nguyen Ngoc Anh', N'Bac Ninh', N'Nu', N'savccv@gmail.com', N'Anh')
INSERT [dbo].[KhachHang] ([NgaySinh], [SDT], [MaKH], [TenKH], [DiaChi], [GioiTinh], [Email], [UserName]) VALUES (CAST(N'1994-10-20' AS Date), N'0456474874', N'KH06', N'Nguyen Hong ngoc', N'hai Duong', N'Nu', N'asaccxv@gmail.com', N'Ngoc')
INSERT [dbo].[KhachHang] ([NgaySinh], [SDT], [MaKH], [TenKH], [DiaChi], [GioiTinh], [Email], [UserName]) VALUES (CAST(N'1994-10-24' AS Date), N'0564844174', N'KH07', N'Bui Xuan Quynh', N'Vinh Phuc', N'Nu', N'sdvvcxb@gmail.com', N'Quynh')
INSERT [dbo].[KhachHang] ([NgaySinh], [SDT], [MaKH], [TenKH], [DiaChi], [GioiTinh], [Email], [UserName]) VALUES (CAST(N'1994-10-20' AS Date), N'0562548644', N'KH08', N'Nguyen Nam Tien', N'Nghe An', N'Nam', N'vfdgdg@gmail.com', N'Tien')
INSERT [dbo].[KhachHang] ([NgaySinh], [SDT], [MaKH], [TenKH], [DiaChi], [GioiTinh], [Email], [UserName]) VALUES (CAST(N'1994-10-20' AS Date), N'0356486487', N'KH09', N'Vu Trung Duc', N'Ha Tinh', N'Nam ', N'dfsvsdcv@gmail.com', N'Duc')
INSERT [dbo].[KhachHang] ([NgaySinh], [SDT], [MaKH], [TenKH], [DiaChi], [GioiTinh], [Email], [UserName]) VALUES (CAST(N'1994-10-20' AS Date), N'0564878944', N'KH10', N'Luu Van Vu', N'Thanh Hoa', N'Nam ', N'dsfvsjdf@gmail.com', N'Vu')
GO
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [DiaChi], [SDT], [XepHang_KS]) VALUES (N'KS01', N'Khách sạn Ninh Bình', N'Ninh BÌnh', N'0998556221', 5)
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [DiaChi], [SDT], [XepHang_KS]) VALUES (N'KS02', N'Khách sạn Hạ Long', N'Hạ Long', N'0951256132', 5)
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [DiaChi], [SDT], [XepHang_KS]) VALUES (N'KS03', N'Khách sạn SaPa', N'SaPa', N'0955653135', 5)
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [DiaChi], [SDT], [XepHang_KS]) VALUES (N'KS04', N'Khashc sạn Cao Bằng', N'Cao bằng', N'0951655421', 4)
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [DiaChi], [SDT], [XepHang_KS]) VALUES (N'KS05', N'Khách sạn Mộc Châu', N'Mộc Châu', N'0098956135', 5)
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [DiaChi], [SDT], [XepHang_KS]) VALUES (N'KS06', N'Khách sạn Điện Biên', N'Điện Biên', N'0941335444', 5)
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [DiaChi], [SDT], [XepHang_KS]) VALUES (N'KS07', N'Khách sạn Lạng Sơn', N'Lạng Sơn', N'0987554546', 5)
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [DiaChi], [SDT], [XepHang_KS]) VALUES (N'KS08', N'Khách sạn Huế', N'Huế', N'0098545644', 6)
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [DiaChi], [SDT], [XepHang_KS]) VALUES (N'KS09', N'Khách sạn Đà Nẵng', N'Đà Nẵng', N'0998486544', 6)
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [DiaChi], [SDT], [XepHang_KS]) VALUES (N'KS10', N'Khách sạn Cần Thơ', N'Cần Thơ', N'0985545466', 4)
GO
INSERT [dbo].[KHACHSAN_TOUR] ([MaKS], [MaTour]) VALUES (N'KS01', N'MT01')
INSERT [dbo].[KHACHSAN_TOUR] ([MaKS], [MaTour]) VALUES (N'KS02', N'MT02')
INSERT [dbo].[KHACHSAN_TOUR] ([MaKS], [MaTour]) VALUES (N'KS03', N'MT03')
INSERT [dbo].[KHACHSAN_TOUR] ([MaKS], [MaTour]) VALUES (N'KS04', N'MT04')
INSERT [dbo].[KHACHSAN_TOUR] ([MaKS], [MaTour]) VALUES (N'KS05', N'MT05')
INSERT [dbo].[KHACHSAN_TOUR] ([MaKS], [MaTour]) VALUES (N'KS06', N'MT06')
INSERT [dbo].[KHACHSAN_TOUR] ([MaKS], [MaTour]) VALUES (N'KS07', N'MT07')
INSERT [dbo].[KHACHSAN_TOUR] ([MaKS], [MaTour]) VALUES (N'KS08', N'MT08')
INSERT [dbo].[KHACHSAN_TOUR] ([MaKS], [MaTour]) VALUES (N'KS09', N'MT09')
INSERT [dbo].[KHACHSAN_TOUR] ([MaKS], [MaTour]) VALUES (N'KS10', N'MT10')
GO
INSERT [dbo].[NhanVien] ([GioiTinh], [MaNV], [TenNV], [SoDienThoai], [DiaChi], [UserName]) VALUES (N'Nam', N'NV01', N'Nguyen Van Chung', N'0982254336', N'Hai Duong', N'Chung')
INSERT [dbo].[NhanVien] ([GioiTinh], [MaNV], [TenNV], [SoDienThoai], [DiaChi], [UserName]) VALUES (N'Nu', N'NV02', N'Bui Thi Giang', N'0654166848', N'Nam Dinh', N'Giang')
INSERT [dbo].[NhanVien] ([GioiTinh], [MaNV], [TenNV], [SoDienThoai], [DiaChi], [UserName]) VALUES (N'Nu', N'NV03', N'Vu Thi Ha', N'0546465488', N'Hai Duong', N'Ha')
INSERT [dbo].[NhanVien] ([GioiTinh], [MaNV], [TenNV], [SoDienThoai], [DiaChi], [UserName]) VALUES (N'Nu', N'NV04', N'Bui Thi Lien', N'0456464587', N'Ha Noi', N'Lien')
INSERT [dbo].[NhanVien] ([GioiTinh], [MaNV], [TenNV], [SoDienThoai], [DiaChi], [UserName]) VALUES (N'Nam', N'NV05', N'Nguyen Van Loi', N'0564641484', N'Hai Duong', N'Loi')
INSERT [dbo].[NhanVien] ([GioiTinh], [MaNV], [TenNV], [SoDienThoai], [DiaChi], [UserName]) VALUES (N'Nam', N'NV06', N'Bui Tien Nam', N'0454684884', N'Nam Dinh', N'Nam')
INSERT [dbo].[NhanVien] ([GioiTinh], [MaNV], [TenNV], [SoDienThoai], [DiaChi], [UserName]) VALUES (N'Nu', N'NV07', N'Nguyen Ngoc Hiep', N'0568789447', N'Hai Duong', N'Hiep')
INSERT [dbo].[NhanVien] ([GioiTinh], [MaNV], [TenNV], [SoDienThoai], [DiaChi], [UserName]) VALUES (N'Nu', N'NV08', N'Nguyen Van Anh', N'0648418884', N'Hung Yen', N'Van')
INSERT [dbo].[NhanVien] ([GioiTinh], [MaNV], [TenNV], [SoDienThoai], [DiaChi], [UserName]) VALUES (N'Nu', N'NV09', N'Nguyen Ngoc Huyen', N'0655484547', N'Bac Ninh', N'Huyen')
INSERT [dbo].[NhanVien] ([GioiTinh], [MaNV], [TenNV], [SoDienThoai], [DiaChi], [UserName]) VALUES (N'Nu', N'NV10', N'Nguyen Thi Bich', N'0068448488', N'Vinh Phuc', N'Bich')
GO
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Anh', N'1', 0, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Bich', N'1', 1, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'But', N'1', 0, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Chung', N'1', 1, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Duc', N'1', 0, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Giang', N'1', 1, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Ha', N'1', 1, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Hiep', N'1', 1, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Huyen', N'1', 1, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Lien', N'1', 1, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Loi', N'1', 1, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Manh', N'1', 0, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Nam', N'1', 1, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Ngoc', N'1', 0, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'nhubinh2002', N'22', 0, N'22')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Quynh', N'1', 0, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Tien', N'1', 0, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Tuan', N'1', 0, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Van', N'1', 1, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Viet', N'1', 0, N'1')
INSERT [dbo].[TaiKhoan] ([UserName], [Password], [Loai], [ConfirmPassword]) VALUES (N'Vu', N'1', 0, N'1')
GO
INSERT [dbo].[TinTuc] ([MaTin], [Anh], [NgayDang], [MaNV], [MoTa], [Noi_Dung]) VALUES (N'TT05', N'anhtt5.jpg', CAST(N'2022-12-04' AS Date), N'NV05', N'Quan họ Bắc Ninh – di sản văn hóa phi vật thể', N'Quan họ Bắc Ninh là những làn điệu dân ca của vùng đồng bằng Bắc Bộ, tập trung chủ yếu ở vùng Kinh Bắc (Bắc Ninh và Bắc Giang). Đây là môn nghệ thuật được hợp thành bởi nhiều yếu tố như âm nhạc, lời ca, phục trang, lễ hội … với một lối hát giao duyên dân dã, thể hiện mối quan hệ gắn bó tình nghĩa giữa những “liền anh”, “liền chị” hát quan họ và là nét văn hóa tiêu biểu của người dân vùng Kinh Bắc.Quan họ là thể loại dân ca phong phú nhất về mặt giai điệu trong kho tàng dân ca Việt Nam và được lưu truyền từ đời này sang đời khác qua phương thức truyền khẩu. Muốn hát quan họ phải có “bọn”: “bọn nam” hoặc “bọn nữ”. Vì vậy trong một làng quan họ thường có nhiều “bọn nam” và “bọn nữ”. Mỗi “bọn” thường có 4, 5, 6 người và được đặt tên theo thứ tự: chị Hai, Ba, Tư, Năm, Sáu hoặc anh Hai, Ba, Tư, Năm, Sáu. Nếu số người đông tới 7, 8 người thì đặt tên là chị Ba, chị Tư (bé) hoặc anh Ba, anh Tư (bé)… mà không đặt chị Bảy, Tám hay anh Bảy, Tám. Trong các sinh hoạt quan họ, các thành viên của “bọn” quan họ không gọi nhau bằng tên thật mà gọi theo tên đặt trong “bọn”.Hát quan họ là hình thức hát đối đáp giữa “bọn nam” và “bọn nữ”. Một “bọn nữ” của làng này hát với một “bọn nam” của làng kia với một bài hát cùng giai điệu, khác về ca từ và đối giọng. “Bọn hát” phân công người hát dẫn, người hát luồn nhưng giọng của hai người hát cặp với nhau phải tương hợp thành một giọng để tạo ra một âm thanh thống nhất. Dân ca quan họ có 213 giọng khác nhau, với hơn 400 bài ca. Lời một bài ca có hai phần: lời chính và lời phụ. Lời chính là thể thơ và ca dao của Việt Nam, phần lớn là thể lục bát, lục bát biến thể, bốn từ hoặc bốn từ hỗn hợp với từ ngữ giàu tính ẩn dụ, trong sáng, mẫu mực. Đây là phần cốt lõi, phản ánh nội dung của bài ca là thể hiện tình yêu lứa đôi. Lời phụ gồm tất cả những tiếng nằm ngoài lời ca chính, là tiếng đệm, tiếng đưa hơi như i hi,ư hư, a ha v.v…Quan họ Bắc Ninh tồn tại trong một môi trường văn hóa với những tập quán xã hội riêng. Đầu tiên là tập quán “kết chạ” giữa các làng quan họ. Từ tục “kết chạ”, trong các “bọn” quan họ xuất hiện một tập quán xã hội đặc biệt là tục kết bạn quan họ. Mỗi “bọn” quan họ của một làng đều kết bạn với một “bọn” quan họ ở làng khác theo nguyên tắc quan họ nam kết bạn với quan họ nữ và ngược lại. Với các làng đã “kết chạ”, trai gái trong các “bọn” quan họ đã kết bạn không được cưới nhau.Hội Lim là một lễ hội lớn đầu xuân vùng Kinh Bắc được tổ chức trên địa bàn huyện Tiên Du tỉnh Bắc Ninh. Hội Lim được mở từ ngày 12 đến 14 tháng giêng Âm lịch hàng năm, trong đó ngày 13 là chính hội, thường được kéo dài trong khoảng thời gian 3-5 ngày (11/1 – 15/1 Âm lịch).
Đến hội Lim, du khách được xem và nghe hát trên đồi, hát sau chùa, hát trên thuyền và hát trong các tư gia (hát trong nhà); lại có thể nghe hát đối từng cặp (đôi nam, đôi nữ), hoặc “bọn” nam, nữ.
')
INSERT [dbo].[TinTuc] ([MaTin], [Anh], [NgayDang], [MaNV], [MoTa], [Noi_Dung]) VALUES (N'TT06', N'anhtt6.jpg', CAST(N'2022-12-04' AS Date), N'NV06', N'Tín ngưỡng thờ cúng Hùng Vương – di sản văn hóa phi vật thể', N'Tín ngưỡng thờ cúng Hùng Vương bắt nguồn từ thời đại các Vua Hùng với niềm tin cả dân tộc có cùng chung giống nòi “con Rồng cháu Tiên”, cùng chung một nguồn cội (Tổ); đồng thời thể hiện đạo lý “Uống nước nhớ nguồn”, tinh thần đại đoàn kết dân tộc và gắn kết cộng đồng.Theo truyền thuyết, Lạc Long Quân – con trai của Kinh Dương Vương Lộc Tục lấy nàng Âu Cơ – con gái Vua Đế Lai rồi sinh ra một bọc trăm trứng, nở thành trăm người con trai. Sau đó, năm mươi người con theo mẹ lên núi, năm mươi người theo cha xuống biển lập nghiệp. Người con cả theo mẹ lên vùng đất Phong Châu (nay là Phú Thọ) lập ra nước Văn Lang và được tôn làm Vua Hùng. Văn Lang là nhà nước đầu tiên trong lịch sử của người Việt, được cai trị bởi 18 đời vua. Các Vua Hùng đã dạy dân trồng lúa nước và chọn núi Nghĩa Lĩnh, ngọn núi cao nhất vùng để thực hiện những nghi lễ theo tín ngưỡng của cư dân nông nghiệp như thờ thần lúa, thần mặt trời để cầu mưa thuận gió hòa, mùa màng tốt tươi, vạn vật sinh sôi, nảy nở. Để ghi nhớ công lao to lớn của các Vua Hùng, nhân dân đã lập đền thờ tưởng niệm (khu di tích lịch sử đền Hùng) mà trung tâm là núi Nghĩa Lĩnh và lấy ngày 10 tháng 3 âm lịch hàng năm là ngày giỗ Tổ. Từ trung tâm thờ tự đầu tiên này, Tín ngưỡng thờ cúng Hùng Vương dần lan tỏa, có sức sống lâu bền từ đời này qua đời khác, từ đồng bằng lên miền núi, từ Bắc vào Nam, từ trong nước ra nước ngoài. Đất nước có lúc thịnh lúc suy, có lúc bị giặc ngoại xâm thống trị nhưng Tín ngưỡng thờ cúng Hùng Vương vẫn được các thế hệ duy trì đến tận ngày nay và còn mãi đến muôn đời sau.Các sử liệu cho thấy Tín ngưỡng thờ cúng Hùng Vương đã phát triển mạnh từ rất lâu trước khi chính thức được vinh danh vào thời Hậu Lê (1428 – 1788). Những triều đại phong kiến đều rất chú trọng và khuyến khích người dân duy trì Tín ngưỡng thờ cúng Hùng Vương. Nhà Hậu Lê, Tây Sơn và Nguyễn liên tục sắc phong cho các đền thờ Vua Hùng tại Phú Thọ, pháp điển hóa nghi thức thờ cúng, miễn thuế và cấp ruộng đất tại khu vực xung quanh đền để người dân canh tác, thu hoa lợi và coi sóc đền thờ. Cho đến nay, Đảng và Nhà nước đều rất quan tâm ')
INSERT [dbo].[TinTuc] ([MaTin], [Anh], [NgayDang], [MaNV], [MoTa], [Noi_Dung]) VALUES (N'TT07', N'anhtt7.jpg', CAST(N'2022-12-04' AS Date), N'NV07', N'Thống nhất lựa chọn hình ảnh để quảng bá du lịch tỉnh Thái Nguyên', N'Chiều ngày 21/3, Sở Văn hóa, Thể thao và Du lịch tỉnh Thái Nguyên đã tổ chức Hội nghị thống nhất lựa chọn hình ảnh, sản phẩm nông nghiệp tiêu biểu phục vụ quảng bá du lịch tỉnh Thái Nguyên. Dự Hội nghị có lãnh đạo một số sở, ngành và các cơ quan thông tấn, báo chí của tỉnh.Tại Hội nghị, lãnh đạo Sở Văn hóa, Thể thao và Du lịch đã trình chiếu và đề xuất một số hình ảnh theo các cụm chủ đề như: Tổng Bí thư thăm tỉnh Thái Nguyên tại vùng chè Tân Cương; du lịch sinh thái cộng đồng gắn với trà; các hồ nước và hang động; du lịch tâm linh, lịch sử; du lịch gắn với nông nghiệp. Bên cạnh đó, các đại biểu cũng lựa chọn ra các sản phẩm nông nghiệp tiêu biểu của tỉnh gồm: Trà, xôi ngũ sắc, bánh trứng kiến, cơm lam Định Hóa, bánh trưng Bờ Đậu, tương nếp Úc Kỳ, na La Hiên…Thông qua những thông tin, hình ảnh về thiên nhiên, con người, cùng bề dày văn hóa, lịch sử, truyền thống sẽ lan tỏa rộng rãi trên các kênh truyền thông, mạng xã hội, từ đó thu hút đầu tư vào các điểm du lịch cũng như du khách đến tham quan, trải nghiệm các sản phẩm du lịch của tỉnh.')
INSERT [dbo].[TinTuc] ([MaTin], [Anh], [NgayDang], [MaNV], [MoTa], [Noi_Dung]) VALUES (N'TT08', N'anhtt8.jpg', CAST(N'2022-12-04' AS Date), N'NV08', N'Trưng bày các giá trị, sản phẩm văn hóa tiêu biểu của Thăng Long - Hà Nội', N'Ngày 21/3, trong khuôn khổ Hội thảo Phát huy các giá trị và nguồn lực văn hóa xây dựng Thủ đô “Văn hiến - Văn minh - Hiện đại”, không gian trưng bày các giá trị, sản phẩm văn hóa tiêu biểu của Thăng Long - Hà Nội với nhiều sản phẩm đặc trưng đã thu hút được sự quan tâm của nhiều đại biểu.Các đồng chí: Ủy viên Bộ Chính trị, Bí thư Thành ủy, Trưởng đoàn đại biểu Quốc hội thành phố Hà Nội Đinh Tiến Dũng; Ủy viên Trung ương Đảng, Phó Bí thư Thường trực Thành ủy Hà Nội Nguyễn Thị Tuyến; Ủy viên Trung ương Đảng, Phó Bí thư Thành ủy, Chủ tịch UBND thành phố Hà Nội Trần Sỹ Thanh; Phó Bí thư Thành ủy, Chủ tịch HĐND thành phố Hà Nội Nguyễn Ngọc Tuấn; Phó Bí thư Thành ủy Hà Nội Nguyễn Văn Phong đã tới dự lễ ra mắt và tham quan không gian trưng bày.Không gian trưng bày các giá trị, sản phẩm văn hóa tiêu biểu của Thăng Long - Hà Nội được chia thành các không gian nhỏ, với nhiều chủ đề riêng biệt. Đó là không gian văn hóa của 6 làng nghề tiêu biểu, gồm: Gốm Bát Tràng, khảm trai Chuyên Ngọ, nón Chuông, sơn mài Hạ Thái, mây tre đan Phú Vinh, lụa Vạn Phúc.
Không gian trưng bày sách, với trên 200 tư liệu được tuyển chọn cho 2 nội dung chính, gồm: Quan điểm, đường lối của Đảng về xây dựng và phát triển nền văn hóa Việt Nam và văn hóa Thăng Long - Hà Nội, giá trị tinh thần, nguồn lực phát triển Thủ đô, giới thiệu quan điểm về xây dựng và phát triển văn hóa của Đảng ta, của Chủ tịch Hồ Chí Minh; khẳng định vai trò của văn hóa trong đời sống xã hội - nền tảng tinh thần, nguồn lực nội sinh phát triển Thủ đô và đất nước trong giai đoạn mới.
Ở mảng di tích lịch sử - văn hóa, Ban Tổ chức giới thiệu các giá trị nổi bật toàn cầu của Khu di sản Hoàng thành Thăng Long trong suốt chiều dài lịch sử với các hình ảnh tư liệu, hiện vật theo hai chủ đề chính: Các di tích còn trên mặt đất như Cột cờ Hà Nội, Đoan Môn, thềm Điện Kính Thiên và một số hiện vật tiêu biểu được khai quật tại khu khảo cổ học 18 Hoàng Diệu; các hoạt động, nghi thức lễ hội được bảo tồn, phát huy đến ngày hôm nay tại khu di sản.
Ngoài ra, còn có không gian trưng bày giới thiệu về khu di tích Văn Miếu - Quốc Tử Giám, theo hai nội dung là các sản phẩm ứng dụng công nghệ 4.0 đang triển khai tại khu di tích và các sản phẩm lưu niệm đang phục vụ du khách để tham quan, trải nghiệm; không gian trưng bày và trình diễn mô hình mô phỏng nỏ thần liên châu của An Dương Vương. 
')
INSERT [dbo].[TinTuc] ([MaTin], [Anh], [NgayDang], [MaNV], [MoTa], [Noi_Dung]) VALUES (N'TT09', N'anhtt9.jpg', CAST(N'2022-12-04' AS Date), N'NV09', N'Phú Quốc Hòn đảo có thiên nhiên hấp dẫn thế giới năm 2023', N'Theo tạp chí World Travel Awards 2022 đã xướng tên Phú Quốc Hòn đảo có thiên nhiên hấp dẫn thế giới năm 2023 .Tối 11/11, tại Oman, trong khuôn khổ lễ trao giải của Giải thưởng du lịch thế giới – World Travel Awards 2022, Phú Quốc của Việt Nam đã vinh dự được xướng tên đầy tự hào với giải thưởng “Hòn đảo có thiên nhiên hấp dẫn hàng đầu thế giới”.Đây là lần đầu tiên, Việt Nam có hòn đảo được World Travel Awards (WTA) – Giải thưởng được xem như “Oscar của ngành du lịch thế giới” vinh danh. Và Phú Quốc, Kiên Giang đã xuất sắc vượt qua 6 “đối thủ” đến từ các châu lục khác trên thế giới, trong đó có nhiều hòn đảo từng được mệnh danh “thiên đường” như Zanzibar của Tanzania hay quần đảo Lofoten của Na Uy, để đạt danh hiệu đầy tự hào này. Giải thưởng cũng khẳng định sức hấp dẫn đặc biệt của Phú Quốc, hòn đảo đang nổi lên như một điểm đến không chỉ có vẻ đẹp hoang sơ mà còn vô cùng đa dạng trải nghiệm.Phú Quốc là hòn đảo lớn nhất nước ta (567 km2) và cũng là hòn đảo đầu tiên trên cả nước chính thức trở thành thành phố biển đảo vào năm 2021. Hòn đảo này sở hữu điều kiện tự nhiên vô giá để phát triển du lịch như khí hậu ôn hòa, nắng ấm áp quanh năm, núi đồi trùng điệp và biển đảo rộng lớn với 28 hòn đảo lớn nhỏ, 150 km đường bờ biển, 14 bãi biển đa dạng cát vàng, cát trắng mịn như kem…. Trong đó, vườn Quốc gia Phú Quốc, Khu bảo tồn biển Phú Quốc chiếm hơn 2/3 diện tích tự nhiên là vùng lõi của Khu dự trữ sinh quyển thế giới Kiên Giang.Ông Huỳnh Quang Hưng – Chủ tịch UBND TP Phú Quốc cho biết: “Được nhiều tổ chức trong nước và quốc tế bình chọn Phú Quốc là điểm đến nhất nhì trong khu vực và thế giới, sánh với một số đảo lớn trên thế giới, có thể nói là điều kiện thuận lợi để Phú Quốc tiếp tục phát huy những kết quả, đặc biệt là tạo sức cạnh tranh về du lịch, dịch vụ.”
Lấy thiên nhiên làm gốc rễ để phát triển du lịch 
Với vẻ đẹp tự nhiên được ví von như thiên đường hạ giới của Phú Quốc, gần một thập niên qua, Phú Quốc đã không chỉ phát huy tiềm năng từ những tài nguyên thiên nhiên sẵn có, mà còn từng bước nâng tầm vẻ đẹp trời ban, với những công trình và sản phẩm du lịch đột phá, để có những bước phát triển mạnh mẽ từ một huyện đảo ít tiếng tăm thành ngôi sao sáng của ngành du lịch Việt Nam.
')
INSERT [dbo].[TinTuc] ([MaTin], [Anh], [NgayDang], [MaNV], [MoTa], [Noi_Dung]) VALUES (N'TT10', N'anhtt10.jpg', CAST(N'2022-12-04' AS Date), N'NV10', N'[Bình Định] Nghệ thuật bài chòi – Di sản văn hóa phi vật thể đại diện của nhân loại', N'Bài chòi là trò chơi mang đậm tính giải trí và mang đậm tính nghệ thuật của người dân Miền Trung. Nghệ thuật bài chòi ra đời từ nhu cầu liên lạc với nhau giữa các chòi canh trên nương rẫy và đã trở thành trò chơi không thể thiếu trong các dịp lễ hội.Là di sản chung của 9 tỉnh Trung Bộ từ Quảng Bình đến Ninh Thuận, nhưng Bình Định vẫn được xem là cái nôi của nghệ thuật bài chòi.
Theo như dân gian, thì bài chòi xuất hiện vào cuối thế kỷ 16, đầu thế kỷ 17. Để canh giữ nương rẫy cũng như đời sống do bị các thú dữ phá hoại, người dân đã cho dựng các chòi cao ở ven rừng và cho một thanh niên canh gác mỗi chòi. Để tiện liên lạc khi có thú rừng xuất hiện, các chòi sẽ tạo ra các âm thanh, đánh trống, hô to…Và để đỡ buồn chán, họ đã cất lên những câu hò, câu hát để liên lạc. Sau đó còn sáng tạo nên hát – hò đối đáp và chơi bài, bắt nguồn cho nghệ thuật bài chòi sau này.
Bài chòi thường được tổ chức ở những khoảng đất rộng hay sân đình, nơi mà mọi người thuận lợi đi hội chợ…Và để dễ dựng lên 9 hoặc 11 chòi bằng tre, lợp tranh, xếp theo hình chữ U, chòi ở đáy gọi là chòi Cái. Có người sẽ dẫn dắt cuộc chơi, người này sẽ rút con bài trong ống bài và hát những câu hát liên quan đến con bài đó, gọi là Hô Thai. Những người chơi sẽ ngồi trên chòi tre, mua 3 con bài và đợi. Nếu trùng hết 3 con bài mà người Hô Thai hát xướng đầu tiên sẽ là người thắng cuộc. Lượt chơi kết thúc và bắt đầu lượt chơi mới.Bộ bài để đánh gồm 33 lá, với những tên như là: nhứt nọc, nhì nghèo, lá liễu, ông ầm,…Mỗi lá đều có những câu hát để gọi tên, chẳng hạn: “Nửa đêm gà gáy le te/ Muốn đi rón rén đụng nghe cái ầm” – ám chỉ lá bài Ông Ầm…
Để chơi bài chòi thường có các nhạc cụ như: đàn nhị, song loan, kèn bóp và trống chiến. Khi người Hô Thái hát phải theo nhịp trống, sanh,…Làm cho điệu hát trở nên hấp dẫn.
')
GO
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT01', N'Hà Nội - Ninh Bình', 1500000, N'anhMT01.jpg', N'Hà Nội', 5, 3)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT02', N'Hà Nội - Hạ Long', 2000000, N'anhMT02.jpg', N'Hà Nội', 5, 2)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT03', N'Hà Nội - Sa Pa', 3000000, N'anhMT03.jpg', N'Hà Nội', 4, 3)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT04', N'Hà Nội - Cao Bằng', 2500000, N'anhMT04.jpg', N'Hà Nội', 5, 2)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT05', N'Hà Nội - Mộc Châu', 2000000, N'anhMT05.jpg', N'Hà Nội', 4, 3)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT06', N'Sơn La - Điện Biên', 2000000, N'anhMT06.jpg', N'Sơn La', 5, 2)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT07', N'Cao Bằng-Lạng Sơn', 3000000, N'anhMT05.jpg', N'Cao Bằng', 4, 3)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT08', N'Hà Nội - Huế', 4000000, N'anhMT08.jpg', N'Hà Nội', 5, 3)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT09', N'Huế - Đà Nẵng', 2000000, N'anhMT09.jpg', N'Huế', 4, 2)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT10', N'TP Hồ Chí Minh - Cần Thơ', 2000000, N'anhMT10.jpg', N'TP Hồ Chí Minh', 5, 3)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT10067', N'Hà Nam - Hải Phòng', 40000, N'anhMT02.jpg', N'Hà Nam', 4, 2)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [GiaCho], [Anh], [DiemXuatPhat], [XepHangTour], [SoNgayDL]) VALUES (N'MT10067565', N'Hà Nam - Hải Duong', 1, N'anhMT01.jpg', N'Hà Nam', 5, 2)
GO
ALTER TABLE [dbo].[AnhTin]  WITH CHECK ADD FOREIGN KEY([MaTin])
REFERENCES [dbo].[TinTuc] ([MaTin])
GO
ALTER TABLE [dbo].[AnhTour]  WITH CHECK ADD FOREIGN KEY([MaTour])
REFERENCES [dbo].[Tour] ([MaTour])
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([MaTour])
REFERENCES [dbo].[Tour] ([MaTour])
GO
ALTER TABLE [dbo].[DIADIEM_TOUR]  WITH CHECK ADD FOREIGN KEY([MaTour])
REFERENCES [dbo].[Tour] ([MaTour])
GO
ALTER TABLE [dbo].[DIADIEM_TOUR]  WITH CHECK ADD FOREIGN KEY([MaDD])
REFERENCES [dbo].[DiemThamQuan] ([MaDD])
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD FOREIGN KEY([UserName])
REFERENCES [dbo].[TaiKhoan] ([UserName])
GO
ALTER TABLE [dbo].[KHACHSAN_TOUR]  WITH CHECK ADD FOREIGN KEY([MaTour])
REFERENCES [dbo].[Tour] ([MaTour])
GO
ALTER TABLE [dbo].[KHACHSAN_TOUR]  WITH CHECK ADD FOREIGN KEY([MaKS])
REFERENCES [dbo].[KhachSan] ([MaKS])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([UserName])
REFERENCES [dbo].[TaiKhoan] ([UserName])
GO
ALTER TABLE [dbo].[TinTuc]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
