USE [master]
GO

CREATE DATABASE [QUANLYTIECCUOI]

USE [QUANLYTIECCUOI]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAOCAONGAY](
	[MaBaoCaoThang] [int] NOT NULL,
	[Ngay] [int] NOT NULL,
	[SoLuongTiecCuoi] [int] NOT NULL,
	[DoanhThu] [money] NOT NULL,
	[TiLe] [float] NOT NULL,
 CONSTRAINT [PK_BCN] PRIMARY KEY CLUSTERED 
(
	[MaBaoCaoThang] ASC,
	[Ngay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAOCAOTHANG](
	[MaBaoCaoThang] [int] IDENTITY(1,1) NOT NULL,
	[Thang] [int] NOT NULL,
	[Nam] [int] NOT NULL,
	[TongDoanhThu] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBaoCaoThang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CA](
	[MaCa] [int] IDENTITY(1,1) NOT NULL,
	[TenCa] [nvarchar](max) NOT NULL,
	[BatDau] [time](7) NOT NULL,
	[KetThuc] [time](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUCNANG](
	[MaChucNang] [int] IDENTITY(1,1) NOT NULL,
	[TenChucNang] [nvarchar](max) NOT NULL,
	[TenManHinhDuocLoad] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChucNang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PHIEUDATBAN](
	[MaPhieuDatBan] [int] NOT NULL,
	[MaMonAn] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [money] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_CTPDB] PRIMARY KEY CLUSTERED 
(
	[MaPhieuDatBan] ASC,
	[MaMonAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICHVU](
	[MaDichVu] [int] IDENTITY(1,1) NOT NULL,
	[TenDichVu] [nvarchar](900) NOT NULL,
	[DonGia] [money] NOT NULL,
	[MoTa] [nvarchar](max) NOT NULL,
	[HinhAnh] [varchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
CONSTRAINT [PK_DV] PRIMARY KEY CLUSTERED 
(
	[TenDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[TongTienBan] [money] NOT NULL,
	[TongTienDichVu] [money] NOT NULL,
	[TongTienHoaDon] [money] NOT NULL,
	[ConLai] [money] NOT NULL,
	[NgayThanhToan] [smalldatetime] NOT NULL,
	[MaTiecCuoi] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISANH](
	[MaLoaiSanh] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSanh] [nvarchar](1) NOT NULL,
	[DonGiaBanToiThieu] [money] NOT NULL,
CONSTRAINT PK_LS PRIMARY KEY CLUSTERED 
(
	[TenLoaiSanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONAN](
	[MaMonAn] [int] IDENTITY(1,1) NOT NULL,
	[TenMonAn] [nvarchar](900) NOT NULL,
	[DonGia] [money] NOT NULL,
	[MoTa] [nvarchar](max) NOT NULL,
	[HinhAnh] [varchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[TenMonAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[Username] [varchar](20) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[TenNguoiDung] [nvarchar](max) NOT NULL,
	[MaNhomNguoiDung] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHOMNGUOIDUNG](
	[MaNhomNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[TenNhomNguoiDung] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhomNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANQUYEN](
	[MaChucNang] [int] NOT NULL,
	[MaNhomNguoiDung] [int] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_PQ] PRIMARY KEY CLUSTERED 
(
	[MaChucNang] ASC,
	[MaNhomNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUDATBAN](
	[MaPhieuDatBan] [int] IDENTITY(1,1) NOT NULL,
	[MaTiecCuoi] [int] NOT NULL,
	[LoaiBan] [nvarchar](max) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[SoLuongDuTru] [int] NOT NULL,
	[DonGiaBan] [money] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuDatBan] ASC,
	[MaTiecCuoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUDATDICHVU](
	[MaTiecCuoi] [int] NOT NULL,
	[MaDichVu] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [money] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_PDDV] PRIMARY KEY CLUSTERED 
(
	[MaTiecCuoi] ASC,
	[MaDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANH](
	[MaSanh] [int] IDENTITY(1,1) NOT NULL,
	[TenSanh] [nvarchar](900) NOT NULL,
	[SoLuongBanToiDa] [int] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
	[MaLoaiSanh] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TenSanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THAMSO](
	[TenThamSo] [varchar](100) NOT NULL,
	[GiaTri] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TenThamSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIECCUOI](
	[MaTiecCuoi] [int] IDENTITY(1,1) NOT NULL,
	[TenChuRe] [nvarchar](max) NOT NULL,
	[TenCoDau] [nvarchar](max) NOT NULL,
	[SoDienThoai] [varchar](20) NOT NULL,
	[NgayDatTiec] [smalldatetime] NOT NULL,
	[NgayDaiTiec] [smalldatetime] NOT NULL,
	[TienDatCoc] [money] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
	[MaSanh] [int] NOT NULL,
	[MaCa] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTiecCuoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[BAOCAONGAY]  WITH CHECK ADD FOREIGN KEY([MaBaoCaoThang])
REFERENCES [dbo].[BAOCAOTHANG] ([MaBaoCaoThang])
GO

CREATE UNIQUE NONCLUSTERED INDEX UIX_ID
ON [MONAN](MaMonAn)
ALTER TABLE [dbo].[CT_PHIEUDATBAN]  WITH CHECK ADD FOREIGN KEY([MaMonAn])
REFERENCES [dbo].[MONAN] ([MaMonAn])
GO

CREATE UNIQUE NONCLUSTERED INDEX UIX_ID
ON [PHIEUDATBAN](MaPhieuDatBan)
ALTER TABLE [dbo].[CT_PHIEUDATBAN]  WITH CHECK ADD FOREIGN KEY([MaPhieuDatBan])
REFERENCES [dbo].[PHIEUDATBAN] ([MaPhieuDatBan])
GO

ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([MaTiecCuoi])
REFERENCES [dbo].[TIECCUOI] ([MaTiecCuoi])
GO
ALTER TABLE [dbo].[NGUOIDUNG]  WITH CHECK ADD FOREIGN KEY([MaNhomNguoiDung])
REFERENCES [dbo].[NHOMNGUOIDUNG] ([MaNhomNguoiDung])
GO
ALTER TABLE [dbo].[PHANQUYEN]  WITH CHECK ADD FOREIGN KEY([MaChucNang])
REFERENCES [dbo].[CHUCNANG] ([MaChucNang])
GO
ALTER TABLE [dbo].[PHANQUYEN]  WITH CHECK ADD FOREIGN KEY([MaNhomNguoiDung])
REFERENCES [dbo].[NHOMNGUOIDUNG] ([MaNhomNguoiDung])
GO
ALTER TABLE [dbo].[PHIEUDATBAN]  WITH CHECK ADD FOREIGN KEY([MaTiecCuoi])
REFERENCES [dbo].[TIECCUOI] ([MaTiecCuoi])
GO

CREATE UNIQUE NONCLUSTERED INDEX UIX_ID
ON [DICHVU](MaDichVu)
ALTER TABLE [dbo].[PHIEUDATDICHVU]  WITH CHECK ADD FOREIGN KEY([MaDichVu])
REFERENCES [dbo].[DICHVU] ([MaDichVu])
GO
ALTER TABLE [dbo].[PHIEUDATDICHVU]  WITH CHECK ADD FOREIGN KEY([MaTiecCuoi])
REFERENCES [dbo].[TIECCUOI] ([MaTiecCuoi])
GO

CREATE UNIQUE NONCLUSTERED INDEX UIX_ID
ON [LOAISANH](MaLoaiSanh)
ALTER TABLE [dbo].[SANH]  WITH CHECK ADD FOREIGN KEY([MaLoaiSanh])
REFERENCES [dbo].[LOAISANH] ([MaLoaiSanh])
GO
ALTER TABLE [dbo].[TIECCUOI]  WITH CHECK ADD FOREIGN KEY([MaCa])
REFERENCES [dbo].[CA] ([MaCa])
GO

CREATE UNIQUE NONCLUSTERED INDEX UIX_ID
ON [Sanh](MaSanh)
ALTER TABLE [dbo].[TIECCUOI]  WITH CHECK ADD FOREIGN KEY([MaSanh])
REFERENCES [dbo].[SANH] ([MaSanh])
GO



INSERT INTO NHOMNGUOIDUNG VALUES(N'Nhân Viên');
INSERT INTO NHOMNGUOIDUNG VALUES(N'Quản Lý');
INSERT INTO NHOMNGUOIDUNG VALUES(N'Admin');

INSERT INTO CHUCNANG VALUES(N'Xem Sảnh',N'Thông Tin Sảnh');
INSERT INTO CHUCNANG VALUES(N'Thay Đổi Sảnh',N'Quản Lý Sảnh');
INSERT INTO CHUCNANG VALUES(N'Xem Tiệc',N'Thông Tin Tiệc');
INSERT INTO CHUCNANG VALUES(N'Thay Đổi Tiệc',N'Quản Lý Tiệc');
INSERT INTO CHUCNANG VALUES(N'Xem Hóa Đơn',N'Thông Tin Hóa Đơn');
INSERT INTO CHUCNANG VALUES(N'Thay Đổi Hóa Đơn',N'Quản Lý Hóa Đơn');
INSERT INTO CHUCNANG VALUES(N'Xem Doanh Thu',N'Thông Tin Doanh Thu');
INSERT INTO CHUCNANG VALUES(N'Thay Đổi Doanh Thu',N'Quản Lý Doanh Thu');
INSERT INTO CHUCNANG VALUES(N'Xem Dịch Vụ',N'Thông Tin Dịch Vụ');
INSERT INTO CHUCNANG VALUES(N'Thay Đổi Dịch Vụ',N'Quản Lý Dịch Vụ');
INSERT INTO CHUCNANG VALUES(N'Xem Món Ăn',N'Thông Tin Món Ăn');
INSERT INTO CHUCNANG VALUES(N'Thay Đổi Món Ăn',N'Quản Lý Món Ăn');
INSERT INTO CHUCNANG VALUES(N'Xem Qui Định',N'Thông Tin Qui Định');
INSERT INTO CHUCNANG VALUES(N'Thay Đổi Qui Định',N'Quản Lý Qui Định');
INSERT INTO CHUCNANG VALUES(N'Xem Phân Quyền',N'Thông Tin Phân Quyền');
INSERT INTO CHUCNANG VALUES(N'Thay Đổi Phân Quyền',N'Quản Lý Phân Quyền');

INSERT INTO NGUOIDUNG VALUES('admin',1,N'Admin',3);
INSERT INTO NGUOIDUNG VALUES('manager',1,N'Manager',2);
INSERT INTO NGUOIDUNG VALUES('staff',1,N'Staff',1);


INSERT INTO PHANQUYEN (MaChucNang,MaNhomNguoiDung) VALUES (1,2);
INSERT INTO PHANQUYEN (MaChucNang,MaNhomNguoiDung) VALUES (2,2);
INSERT INTO PHANQUYEN (MaChucNang,MaNhomNguoiDung) VALUES (3,1);
INSERT INTO PHANQUYEN (MaChucNang,MaNhomNguoiDung) VALUES (4,1);
INSERT INTO PHANQUYEN (MaChucNang,MaNhomNguoiDung) VALUES (5,1);
INSERT INTO PHANQUYEN (MaChucNang,MaNhomNguoiDung) VALUES (6,1);
INSERT INTO PHANQUYEN (MaChucNang,MaNhomNguoiDung) VALUES (7,2);
INSERT INTO PHANQUYEN (MaChucNang,MaNhomNguoiDung) VALUES (8,2);
INSERT INTO PHANQUYEN (MaChucNang,MaNhomNguoiDung) VALUES (9,1);
INSERT INTO PHANQUYEN (MaChucNang,MaNhomNguoiDung) VALUES (9,2);
INSERT INTO PHANQUYEN (MaChucNang,MaNhomNguoiDung) VALUES (10,2);
INSERT INTO PHANQUYEN (MaChucNang,MaNhomNguoiDung) VALUES (11,1);
INSERT INTO PHANQUYEN (MaChucNang,MaNhomNguoiDung) VALUES (11,2);
INSERT INTO PHANQUYEN (MaChucNang,MaNhomNguoiDung) VALUES (12,2);
INSERT INTO PHANQUYEN (MaChucNang,MaNhomNguoiDung) VALUES (13,2);
INSERT INTO PHANQUYEN (MaChucNang,MaNhomNguoiDung) VALUES (14,2);
INSERT INTO PHANQUYEN (MaChucNang,MaNhomNguoiDung) VALUES (15,3);
INSERT INTO PHANQUYEN (MaChucNang,MaNhomNguoiDung) VALUES (16,3);

INSERT INTO CA VALUES(N'Trưa','10:00:00','15:00:00');
INSERT INTO CA VALUES(N'Tối','17:00:00','22:00:00');

INSERT INTO THAMSO VALUES('ApDungQuiDinhPhat',1);
INSERT INTO THAMSO VALUES('TiLePhat',0.01);

INSERT INTO LOAISANH VALUES('A',1000000);
INSERT INTO LOAISANH VALUES('B',2000000);
INSERT INTO LOAISANH VALUES('C',3000000);
INSERT INTO LOAISANH VALUES('D',4000000);
INSERT INTO LOAISANH VALUES('E',5000000);

INSERT INTO MONAN VALUES(N'Súp cua',100000,N'Món khai vị','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\MonKhaiVi\SupCua.jpg','');
INSERT INTO MONAN VALUES(N'Cháo hải sản',100000,N'Món khai vị','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\MonKhaiVi\ChaoHaiSan.jpg','');
INSERT INTO MONAN VALUES(N'Gỏi đu đủ tôm thịt',100000,N'Món khai vị','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\MonKhaiVi\GoiDuDu.jpg','');
INSERT INTO MONAN VALUES(N'Gỏi gà bắp cải',100000,N'Món khai vị','','');
INSERT INTO MONAN VALUES(N'Gỏi củ hủ dừa',100000,N'Món khai vị','','');
INSERT INTO MONAN VALUES(N'Gỏi ngó sen tôm thịt',100000,N'Món khai vị','','');
INSERT INTO MONAN VALUES(N'Thịt nguội',100000,N'Món khai vị','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\MonKhaiVi\ThitNguoi.jpg','');
INSERT INTO MONAN VALUES(N'Gỏi tai heo',100000,N'Món khai vị','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\MonKhaiVi\GoiTaiHeo.jpg','');
INSERT INTO MONAN VALUES(N'Súp gà ngô nấm',100000,N'Món khai vị','','');
INSERT INTO MONAN VALUES(N'Gỏi bắp bò',100000,N'Món khai vị','','');
INSERT INTO MONAN VALUES(N'Giò thủ',100000,N'Món khai vị','','');

INSERT INTO MONAN VALUES(N'Bánh hỏi thịt quay',200000,N'Món chính','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\MonChinh\BanhHoiThitQuay.jpg','');
INSERT INTO MONAN VALUES(N'Gà ta rang muối',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Tôm sú nướng tiêu',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Vịt nấu tiêu xanh',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Bánh ướt thịt quay',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Gà hấp lá chanh',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Tôm đốt trái dừa',200000,N'Món chính','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\MonChinh\TomDotTraiDua.jpg','');
INSERT INTO MONAN VALUES(N'Chả mực Hạ Long',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Cá điêu hồng chiên giòn',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Cá tai tượng chiên giòn',200000,N'Món chính','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\MonChinh\CaTaiTuongChienGion.jpg','');
INSERT INTO MONAN VALUES(N'Lẩu gà sa tế',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Lẩu gà lá giang',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Lẩu gà ớt hiểm',200000,N'Món chính','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\MonChinh\LauGaOtHiem.jpg','');
INSERT INTO MONAN VALUES(N'Lẩu thái',200000,N'Món chính','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\MonChinh\LauThai.jpg','');
INSERT INTO MONAN VALUES(N'Lẩu gà lá é',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Lẩu bò',200000,N'Món chính','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\MonChinh\LauBo.jpg','');
INSERT INTO MONAN VALUES(N'Lẩu cá diêu hồng',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Lẩu cá basa',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Lẩu hải sản',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Bò sốt tiêu đen',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Bò né',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Bò kho',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Lẩu gà sa tế',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Xôi gà ngũ sắc',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Cơm chiên dương châu',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Cơm chiên hải sản',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Mực nhồi thịt',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Xôi xéo mỡ hành',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Cá hấp',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Cánh gà chiên nước mắm',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Đùi gà chiên nước mắm',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Gà bó xôi',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Gà quay mật ong',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Tôm xú hấp bia',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Đùi gà chiên nước mắm',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Tôm sú hấp bia',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Bò xào thiên lý',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Tôm sú hấp bia',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Tôm sú nướng phô mai',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Bò xào bông cải xanh',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Bò lúc lắc',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Xôi vò hạt sen',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Bò nấu rượu vang',200000,N'Món chính','','');

INSERT INTO MONAN VALUES(N'Càng Cua Xốt Kewpie Vị Tiêu',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Cua lột chiên giòn',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Lẩu cá bóp',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Nem công chả phượng',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Sườn cừu nướng BQQ',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Heo sữa quay giòn',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Cơm chiên cua',200000,N'Món chính','','');
INSERT INTO MONAN VALUES(N'Cơm chiên sò điệp',200000,N'Món chính','','');

INSERT INTO MONAN VALUES(N'Gỏi xoài nấm',100000,N'Món khai vị','','Món chay');
INSERT INTO MONAN VALUES(N'Súp rau củ',100000,N'Món khai vị','','Món chay');
INSERT INTO MONAN VALUES(N'Giò lụa chay',200000,N'Món chính','','Món chay');
INSERT INTO MONAN VALUES(N'Heo quay chay',200000,N'Món chính','','Món chay');
INSERT INTO MONAN VALUES(N'Đậu non sốt nấm',200000,N'Món chính','','Món chay');
INSERT INTO MONAN VALUES(N'Mì xào rau củ',200000,N'Món chính','','Món chay');
INSERT INTO MONAN VALUES(N'Lẩu nấm',200000,N'Món chính','','Món chay');
INSERT INTO MONAN VALUES(N'Đậu bắp nướng',200000,N'Món chính','','Món chay');

INSERT INTO MONAN VALUES(N'Gỏi bắp chuối',100000,N'Món khai vị','','Món chay');
INSERT INTO MONAN VALUES(N'Xôi đậu xanh',200000,N'Món chính','','Món chay');
INSERT INTO MONAN VALUES(N'Tàu hũ ky cuộn rau ngũ sắc',200000,N'Món chính','','Món chay');
INSERT INTO MONAN VALUES(N'Sườn non chay chiên giòn',200000,N'Món chính','','Món chay');
INSERT INTO MONAN VALUES(N'Cà chua nhồi đậu hũ',200000,N'Món chính','','Món chay');
INSERT INTO MONAN VALUES(N'Cà tím nướng mỡ hành',200000,N'Món chính','','Món chay');
INSERT INTO MONAN VALUES(N'Bì cuốn',200000,N'Món chính','','Món chay');
INSERT INTO MONAN VALUES(N'Cà ri nấm',200000,N'Món chính','','Món chay');
INSERT INTO MONAN VALUES(N'Đậu hủ non sốt cà',200000,N'Món chính','','Món chay');

INSERT INTO MONAN VALUES(N'Rau câu',80000,N'Tráng miệng','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\MonTrangMieng\RauCau.png','');
INSERT INTO MONAN VALUES(N'Trái cây',80000,N'Tráng miệng','','');
INSERT INTO MONAN VALUES(N'Bánh bò',80000,N'Tráng miệng','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\MonTrangMieng\BanhBo.jpg','');
INSERT INTO MONAN VALUES(N'Bánh da lợn',80000,N'Tráng miệng','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\MonTrangMieng\BanhDaLon.jpg','');

INSERT INTO MONAN VALUES(N'Chè trôi nước',80000,N'Tráng miệng','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\MonTrangMieng\CheTroiNuoc.jpg','');
INSERT INTO MONAN VALUES(N'Chè hạt sen long nhãn',80000,N'Tráng miệng','','');
INSERT INTO MONAN VALUES(N'Chè đông sương tuyết nhĩ',80000,N'Tráng miệng','','');
INSERT INTO MONAN VALUES(N'Xôi cốm dừa nạo',80000,N'Tráng miệng','','');
INSERT INTO MONAN VALUES(N'Xôi xoài',80000,N'Tráng miệng','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\MonTrangMieng\XoiXoai.png','');
INSERT INTO MONAN VALUES(N'Bánh bao nhân khoai môn',80000,N'Tráng miệng','','');
INSERT INTO MONAN VALUES(N'Chè đậu xanh nha đam',80000,N'Tráng miệng','','');

INSERT INTO MONAN VALUES(N'Nho Mỹ',80000,N'Tráng miệng','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\MonTrangMieng\NhoMy.jpg','');
INSERT INTO MONAN VALUES(N'Chè nhãn nhục thạch dừa',80000,N'Tráng miệng','','');
INSERT INTO MONAN VALUES(N'Bánh chuối nướng',80000,N'Tráng miệng','','');
INSERT INTO MONAN VALUES(N'Bánh chuối hấp',80000,N'Tráng miệng','','');
INSERT INTO MONAN VALUES(N'Chè tuyết nhĩ bạch quả',80000,N'Tráng miệng','','');
INSERT INTO MONAN VALUES(N'Chè dưỡng nhan',80000,N'Tráng miệng','','');
INSERT INTO MONAN VALUES(N'Chè khoai môn',80000,N'Tráng miệng','','');
INSERT INTO MONAN VALUES(N'Kiwi',80000,N'Tráng miệng','','');

INSERT INTO DICHVU VALUES(N'Combo trang trí 1',5000000,N'Trang trí với hoa hồng','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\DichVu\HoaHong.jpg','');
INSERT INTO DICHVU VALUES(N'Combo trang trí 2',5000000,N'Trang trí với hoa sen','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\DichVu\HoaSen.jpg','');
INSERT INTO DICHVU VALUES(N'Combo trang trí 3',5000000,N'Trang trí với hoa ly','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\DichVu\HoaLy.jpg','');
INSERT INTO DICHVU VALUES(N'Combo trang trí 4',5000000,N'Trang trí với hướng dương','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\DichVu\HoaHuongDuong.jpg','');
INSERT INTO DICHVU VALUES(N'Combo trang trí 5',5000000,N'Trang trí với hoa cẩm tú cầu','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\DichVu\HoaCamTuCau.jpg','');
INSERT INTO DICHVU VALUES(N'Combo trang trí 6',5000000,N'Trang trí với hoa lan','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\DichVu\HoaLan.png','');
INSERT INTO DICHVU VALUES(N'Combo trang trí 7',5000000,N'Trang trí với hoa baby','','');
INSERT INTO DICHVU VALUES(N'Bánh kem 1 tầng',200000,N'Bánh kem 1 tầng','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\DichVu\BanhKem1Tang.jpg','');
INSERT INTO DICHVU VALUES(N'Bánh kem 2 tầng',350000,N'Bánh kem 2 tầng','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\DichVu\BanhKem2Tang.jpg','');
INSERT INTO DICHVU VALUES(N'Bánh kem 3 tầng',500000,N'Bánh kem 3 tầng','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\DichVu\BanhKem3Tang.jpg','');
INSERT INTO DICHVU VALUES(N'Tháp rượu',500000,N'Rượu vang đỏ','C:\Users\Admin\Desktop\QuanLyTiecCuoi\photos\DichVu\ThapRuou.jpg','');

INSERT INTO DICHVU VALUES(N'Ban nhạc',3000000,N'Nhịp điệu cha cha cha','','');
INSERT INTO DICHVU VALUES(N'Quay phim',10000000,N'Quay phim buổi tiệc','','');
INSERT INTO DICHVU VALUES(N'Chụp ảnh',5000000,N'Chụp ảnh buổi tiệc','','');