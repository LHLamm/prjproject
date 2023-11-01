USE [master]
GO
/****** Object:  Database [PRJ301]    Script Date: 20/07/2023 08:24:12 ******/
CREATE DATABASE [PRJ301]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ301', FILENAME = N'C:\Users\FPTSHOP\Desktop\MSSQL16.SQLEXPRESS\MSSQL\DATA\PRJ301.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ301_log', FILENAME = N'C:\Users\FPTSHOP\Desktop\MSSQL16.SQLEXPRESS\MSSQL\DATA\PRJ301_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [PRJ301] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PRJ301] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRJ301] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJ301] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PRJ301] SET QUERY_STORE = OFF
GO
USE [PRJ301]
GO
/****** Object:  UserDefinedFunction [dbo].[SplitStrings_Ordered]    Script Date: 20/07/2023 08:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[SplitStrings_Ordered]
(
  @List      nvarchar(max),
  @Delimiter nchar(1)
)
RETURNS table WITH SCHEMABINDING
AS
  RETURN
  (
    SELECT value, ordinal = [key]
    FROM OPENJSON(N'["' + REPLACE(@List, @Delimiter, N'","') + N'"]') AS x
  );
GO
/****** Object:  UserDefinedFunction [dbo].[STRING_SPLIT]    Script Date: 20/07/2023 08:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[STRING_SPLIT]
(
  @List      nvarchar(max),
  @Delimiter nchar(1)
)
RETURNS table WITH SCHEMABINDING
AS
  RETURN
  (
    SELECT value, ordinal = [key]
    FROM OPENJSON(N'["' + REPLACE(@List, @Delimiter, N'","') + N'"]') AS x
  );
GO
/****** Object:  Table [dbo].[Account_HE173007]    Script Date: 20/07/2023 08:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_HE173007](
	[roll] [bit] NULL,
	[FullName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[sdt] [nvarchar](10) NULL,
	[address] [nvarchar](max) NULL,
	[date] [date] NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart_HE173007]    Script Date: 20/07/2023 08:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart_HE173007](
	[Username] [nvarchar](50) NOT NULL,
	[iID] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_HE173007]    Script Date: 20/07/2023 08:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_HE173007](
	[ID] [nvarchar](10) NOT NULL,
	[name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback_HE173007]    Script Date: 20/07/2023 08:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback_HE173007](
	[ID] [nvarchar](10) NULL,
	[rate] [int] NULL,
	[content] [nvarchar](max) NULL,
	[Username] [nvarchar](50) NULL,
	[productID] [nvarchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[item_HE173007]    Script Date: 20/07/2023 08:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item_HE173007](
	[iID] [nvarchar](10) NOT NULL,
	[pID] [nvarchar](10) NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_HE173007]    Script Date: 20/07/2023 08:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_HE173007](
	[ID] [nvarchar](10) NULL,
	[Username] [nvarchar](50) NULL,
	[iID] [nvarchar](10) NULL,
	[Fullname] [nvarchar](max) NULL,
	[sdt] [nvarchar](10) NULL,
	[email] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[Date] [date] NULL,
	[status] [nvarchar](50) NULL,
	[TotalPrice] [money] NULL,
	[pid] [nvarchar](max) NULL,
	[quantity] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_HE173007]    Script Date: 20/07/2023 08:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_HE173007](
	[ID] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Image] [xml] NULL,
	[Price] [bigint] NULL,
	[Discount] [int] NULL,
	[Quantity] [int] NULL,
	[Detail] [nvarchar](max) NULL,
	[Rate] [int] NULL,
	[Information] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
	[SubCategory] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategory_HE173007]    Script Date: 20/07/2023 08:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategory_HE173007](
	[ID] [nvarchar](10) NOT NULL,
	[name] [nvarchar](100) NULL,
	[CategoryID] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account_HE173007] ([roll], [FullName], [Email], [sdt], [address], [date], [Username], [Password]) VALUES (1, N'Admin', N'lhlam2003@gmail.com', N'0917162559', N'FPT Hola', CAST(N'2003-02-18' AS Date), N'admin', N'123')
INSERT [dbo].[Account_HE173007] ([roll], [FullName], [Email], [sdt], [address], [date], [Username], [Password]) VALUES (1, N'Lâm', N'lhlam2003@gmail.com', N'0383078524', N'yenbai', CAST(N'2023-10-05' AS Date), N'lam', N'123')
INSERT [dbo].[Account_HE173007] ([roll], [FullName], [Email], [sdt], [address], [date], [Username], [Password]) VALUES (1, N'guest', N'guest@gmai.com', N'0917162559', N'hola', CAST(N'2023-07-13' AS Date), N'sa', N'123')
INSERT [dbo].[Account_HE173007] ([roll], [FullName], [Email], [sdt], [address], [date], [Username], [Password]) VALUES (0, N'Nguyễn Văn A', N'anhhoanq000@gmail.com', N'0123456789', N'Hưng Yên', CAST(N'2011-08-11' AS Date), N'ttnnguyen', N'admin')
GO
INSERT [dbo].[Cart_HE173007] ([Username], [iID]) VALUES (N'sa', N'3')
INSERT [dbo].[Cart_HE173007] ([Username], [iID]) VALUES (N'sa', N'1')
INSERT [dbo].[Cart_HE173007] ([Username], [iID]) VALUES (N'sa', N'2')
GO
INSERT [dbo].[Category_HE173007] ([ID], [name]) VALUES (N'1', N'Điện Thoại')
INSERT [dbo].[Category_HE173007] ([ID], [name]) VALUES (N'2', N'Laptop')
INSERT [dbo].[Category_HE173007] ([ID], [name]) VALUES (N'3', N'Máy tính bảng')
INSERT [dbo].[Category_HE173007] ([ID], [name]) VALUES (N'4', N'Tai Nghe')
INSERT [dbo].[Category_HE173007] ([ID], [name]) VALUES (N'5', N'Phụ kiện')
INSERT [dbo].[Category_HE173007] ([ID], [name]) VALUES (N'6', N'SmartWatch')
INSERT [dbo].[Category_HE173007] ([ID], [name]) VALUES (N'7', N'Hàng cũ')
GO
INSERT [dbo].[item_HE173007] ([iID], [pID], [quantity]) VALUES (N'1', N'1-1-1', 1)
INSERT [dbo].[item_HE173007] ([iID], [pID], [quantity]) VALUES (N'2', N'1-3-0', 1)
INSERT [dbo].[item_HE173007] ([iID], [pID], [quantity]) VALUES (N'3', N'2-1-0', 1)
GO
INSERT [dbo].[Order_HE173007] ([ID], [Username], [iID], [Fullname], [sdt], [email], [address], [Note], [Date], [status], [TotalPrice], [pid], [quantity]) VALUES (N'1', N'ttnnguyen', N'1', N'Nguyễn Văn A', N'0932817232', N'anhhoanq000@gmail.com', N'Hà Nội', N'12', CAST(N'2022-10-31' AS Date), N'Yes', 1210671000.0000, N'1-1-1', 1)
INSERT [dbo].[Order_HE173007] ([ID], [Username], [iID], [Fullname], [sdt], [email], [address], [Note], [Date], [status], [TotalPrice], [pid], [quantity]) VALUES (N'1', N'ttnnguyen', N'4', N'Nguyễn Văn A', N'0932817232', N'anhhoanq000@gmail.com', N'Hà Nội', N'12', CAST(N'2022-10-31' AS Date), N'Yes', 1210671000.0000, N'1-2-0', 111)
INSERT [dbo].[Order_HE173007] ([ID], [Username], [iID], [Fullname], [sdt], [email], [address], [Note], [Date], [status], [TotalPrice], [pid], [quantity]) VALUES (N'2', N'ttnnguyen', N'4', N'Nguyễn Văn A', N'123456789', N'anhhoanq000@gmail.com', N'Hà Nội', N'Nhanh, Hàng dễ vỡ', CAST(N'2022-10-31' AS Date), N'Yes', 45000000.0000, N'5-1-0', 100)
INSERT [dbo].[Order_HE173007] ([ID], [Username], [iID], [Fullname], [sdt], [email], [address], [Note], [Date], [status], [TotalPrice], [pid], [quantity]) VALUES (N'3', N'ttnnguyen', N'5', N'Nguyễn Văn A', N'0123456789', N'anhhoanq000@gmail.com', N'Hưng Yên', N'234555', CAST(N'2022-10-31' AS Date), N'Yes', 56871000.0000, N'1-1-1', 1)
INSERT [dbo].[Order_HE173007] ([ID], [Username], [iID], [Fullname], [sdt], [email], [address], [Note], [Date], [status], [TotalPrice], [pid], [quantity]) VALUES (N'3', N'ttnnguyen', N'4', N'Nguyễn Văn A', N'0123456789', N'anhhoanq000@gmail.com', N'Hưng Yên', N'234555', CAST(N'2022-10-31' AS Date), N'Yes', 56871000.0000, N'5-1-0', 100)
INSERT [dbo].[Order_HE173007] ([ID], [Username], [iID], [Fullname], [sdt], [email], [address], [Note], [Date], [status], [TotalPrice], [pid], [quantity]) VALUES (N'4', N'ttnnguyen', N'4', N'Nguyễn Văn A', N'0123456789', N'anhhoanq000@gmail.com', N'Hưng Yên', N'', CAST(N'2022-10-31' AS Date), N'Yes', 11871000.0000, N'1-1-1', 1)
INSERT [dbo].[Order_HE173007] ([ID], [Username], [iID], [Fullname], [sdt], [email], [address], [Note], [Date], [status], [TotalPrice], [pid], [quantity]) VALUES (N'5', N'lam', N'4', N'Lâm', N'0383078524', N'lhlam2003@gmail.com', N'yenbai', N'', CAST(N'2023-07-09' AS Date), N'Yes', 3520000.0000, N'1-6-1', 1)
INSERT [dbo].[Order_HE173007] ([ID], [Username], [iID], [Fullname], [sdt], [email], [address], [Note], [Date], [status], [TotalPrice], [pid], [quantity]) VALUES (N'6', N'lam', N'4', N'Lâm', N'0383078524', N'lhlam2003@gmail.com', N'yenbai', N'', CAST(N'2023-07-10' AS Date), N'Yes', 13020000.0000, N'1-6-1', 1)
INSERT [dbo].[Order_HE173007] ([ID], [Username], [iID], [Fullname], [sdt], [email], [address], [Note], [Date], [status], [TotalPrice], [pid], [quantity]) VALUES (N'6', N'lam', N'5', N'Lâm', N'0383078524', N'lhlam2003@gmail.com', N'yenbai', N'', CAST(N'2023-07-10' AS Date), N'Yes', 13020000.0000, N'1-4-0', 1)
INSERT [dbo].[Order_HE173007] ([ID], [Username], [iID], [Fullname], [sdt], [email], [address], [Note], [Date], [status], [TotalPrice], [pid], [quantity]) VALUES (N'7', N'lam', N'1', N'Lâm', N'0383078524', N'lhlam2003@gmail.com', N'yenbai', N'', CAST(N'2023-07-11' AS Date), N'Yes', 47500.0000, N'1-2-0', 1)
INSERT [dbo].[Order_HE173007] ([ID], [Username], [iID], [Fullname], [sdt], [email], [address], [Note], [Date], [status], [TotalPrice], [pid], [quantity]) VALUES (N'8', N'lam', N'1', N'Lâm', N'0383078524', N'lhlam2003@gmail.com', N'yenbai', N'', CAST(N'2023-07-12' AS Date), N'Yes', 9909.0000, N'1-1-0', 1)
INSERT [dbo].[Order_HE173007] ([ID], [Username], [iID], [Fullname], [sdt], [email], [address], [Note], [Date], [status], [TotalPrice], [pid], [quantity]) VALUES (N'9', N'sa', N'1', N'guest', N'0917162559', N'guest@gmai.com', N'hola', N'', CAST(N'2023-07-13' AS Date), N'Yes', 19011000.0000, N'1-1-1', 1)
INSERT [dbo].[Order_HE173007] ([ID], [Username], [iID], [Fullname], [sdt], [email], [address], [Note], [Date], [status], [TotalPrice], [pid], [quantity]) VALUES (N'9', N'sa', N'2', N'guest', N'0917162559', N'guest@gmai.com', N'hola', N'', CAST(N'2023-07-13' AS Date), N'Yes', 19011000.0000, N'1-3-0', 1)
INSERT [dbo].[Order_HE173007] ([ID], [Username], [iID], [Fullname], [sdt], [email], [address], [Note], [Date], [status], [TotalPrice], [pid], [quantity]) VALUES (N'10', N'sa', N'1', N'guest', N'0917162559', N'guest@gmai.com', N'hola', N'', CAST(N'2023-07-13' AS Date), N'Yes', 43652500.0000, N'1-1-1', 1)
INSERT [dbo].[Order_HE173007] ([ID], [Username], [iID], [Fullname], [sdt], [email], [address], [Note], [Date], [status], [TotalPrice], [pid], [quantity]) VALUES (N'10', N'sa', N'3', N'guest', N'0917162559', N'guest@gmai.com', N'hola', N'', CAST(N'2023-07-13' AS Date), N'Yes', 43652500.0000, N'2-1-0', 1)
INSERT [dbo].[Order_HE173007] ([ID], [Username], [iID], [Fullname], [sdt], [email], [address], [Note], [Date], [status], [TotalPrice], [pid], [quantity]) VALUES (N'10', N'sa', N'2', N'guest', N'0917162559', N'guest@gmai.com', N'hola', N'', CAST(N'2023-07-13' AS Date), N'Yes', 43652500.0000, N'1-3-0', 1)
GO
INSERT [dbo].[Product_HE173007] ([ID], [Name], [Image], [Price], [Discount], [Quantity], [Detail], [Rate], [Information], [Status], [SubCategory]) VALUES (N'1-1-1', N'Iphone 13', N'https://cdn-v2.didongviet.vn/files/media/catalog/product/i/p/iphone-14-plus-128gb-mau-tim-1-didongviet.jpg', 18490000, 10, 100, N'Phụ kiện đi kèm có dây sạc. Bảo hành 18 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất', 0, N'Màn hình:

OLED6.1"Super Retina XDR
Hệ điều hành:

iOS 16
Camera sau:

2 camera 12 MP
Camera trước:

12 MP
Chip:

Apple A15 Bionic
RAM:

6 GB
Dung lượng lưu trữ:

128 GB
SIM:

1 Nano SIM & 1 eSIMHỗ trợ 5G
Pin, Sạc:

3279 mAh20 W', N'No', N'1-1')
INSERT [dbo].[Product_HE173007] ([ID], [Name], [Image], [Price], [Discount], [Quantity], [Detail], [Rate], [Information], [Status], [SubCategory]) VALUES (N'1-3-0', N'Xiaomi Redmi Note 8', N'https://cdn.tgdd.vn/Products/Images/42/209535/xiaomi-redmi-note-8-blue-1-200x200.jpg', 3000000, 21, 100, N'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất
Bảo hành 18 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất', 3, N'Kích thước màn hình

6.3 inches
Hệ điều hành

Android 9.0 (Pie)
Pin

4000 mAh, sạc nhanh 18W
Trọng lượng

Đang cập nhật
Công nghệ màn hình

LCD FULL HD
Camera sau

4 camera, camera chính 48MP (f/1.7)
Chipset

Qualcomm Snapdragon 665
Dung lượng RAM

4 GB
Bộ nhớ trong

128 GB
Thẻ SIM

2 SIM (Nano-SIM)', N'No', N'1-3')
INSERT [dbo].[Product_HE173007] ([ID], [Name], [Image], [Price], [Discount], [Quantity], [Detail], [Rate], [Information], [Status], [SubCategory]) VALUES (N'1-4-0', N'Oppo reno 6', N'https://cdn.tgdd.vn/Products/Images/42/239747/oppo-reno6-z-5g-aurora-1-600x600.jpg', 10000000, 5, 100, N' Thiết kế ấn tượng, màu sắc cá tính - Thiết kế tràn viền, mỏng nhẹ chỉ 182g

 Tăng tốc kết nối, dẫn đầu xu hướng - Dimensity 900 5G (6 nm) mạnh mẽ, kết nối 5G siêu nhanh

 Chuyên gia nhiếp ảnh chân dung - Bộ 3 camera lên tới 64 MP, sắc nét, ấn tượng Chuyên gia nhiếp ảnh chân dung - Bộ 3 camera lên tới 64 MP, sắc nét, ấn tượng', 3, N'Kích thước màn hình

6.43 inches
Độ phân giải màn hình

1080 x 2400 pixels (FullHD+)
Hệ điều hành

Android 11, ColorOS 11.3
Pin

Li-P0 4300 mAh
Trọng lượng

182 g
Công nghệ màn hình

AMOLED
Camera sau

Camera góc rộng: 64 MP, f/1.7, PDAF
Camera góc siêu rộng: 8 MP, f/2.2
Camera macro: 2 MP, f/2.4
Camera trước

32 MP, f/2.4
Chipset

MT6877 Dimensity 900 5G (6 nm)
Dung lượng RAM

8 GB
Bộ nhớ trong

128 GB
Thẻ SIM

2 SIM (Nano-SIM)
Tính năng màn hình

Tần số quét 90Hz, 430nits, Corning Gorilla Glass 5', N'No', N'1-4')
INSERT [dbo].[Product_HE173007] ([ID], [Name], [Image], [Price], [Discount], [Quantity], [Detail], [Rate], [Information], [Status], [SubCategory]) VALUES (N'1-5-0', N'Vivo Y16', N'https://cdn.tgdd.vn/Products/Images/42/285223/vivo-y16-vang-thumb-600x600.jpg', 500, 21, 100, N'vitae velit egestas lacinia. Sed', 3, N'nulla vulputate dui, nec tempus', N'No', N'1-5')
INSERT [dbo].[Product_HE173007] ([ID], [Name], [Image], [Price], [Discount], [Quantity], [Detail], [Rate], [Information], [Status], [SubCategory]) VALUES (N'1-6-0', N'Realme 3', N'https://cdn.tgdd.vn/Products/Images/42/194952/realme-3-green-isaac-600x600.jpg', 5000000, 21, 100, N'Full box', 3, N'Màn hình:

IPS LCD6.22"HD+
Hệ điều hành:

Android 9 (Pie)
Camera sau:

Chính 13 MP & Phụ 2 MP
Camera trước:

13 MP
Chip:

MediaTek Helio P60
RAM:

3 GB
Dung lượng lưu trữ:

32 GB
SIM:

2 Nano SIMHỗ trợ 4G
Pin, Sạc:

4230 mAh', N'No', N'1-6')
INSERT [dbo].[Product_HE173007] ([ID], [Name], [Image], [Price], [Discount], [Quantity], [Detail], [Rate], [Information], [Status], [SubCategory]) VALUES (N'1-6-1', N'realme 4', N'./image/realme-4-600x600.jpg', 4000000, 12, 100, N'abc', 0, N'xyz', N'No', N'1-6')
INSERT [dbo].[Product_HE173007] ([ID], [Name], [Image], [Price], [Discount], [Quantity], [Detail], [Rate], [Information], [Status], [SubCategory]) VALUES (N'1-7-0', N'Tecno Pova 2', N'https://specs-tech.com/wp-content/uploads/2021/05/Tecno-Pova-2-1.jpg', 500, 21, 100, N'vitae velit egestas lacinia. Sed', 3, N'nulla vulputate dui, nec tempus', N'No', N'1-7')
INSERT [dbo].[Product_HE173007] ([ID], [Name], [Image], [Price], [Discount], [Quantity], [Detail], [Rate], [Information], [Status], [SubCategory]) VALUES (N'1-8-0', N'OnePlus 9 plus', N'https://cdn.tgdd.vn/Products/Images/42/230219/oneplus-9-600x600-600x600.jpg', 500, 21, 100, N'vitae velit egestas lacinia. Sed', 3, N'nulla vulputate dui, nec tempus', N'No', N'1-8')
INSERT [dbo].[Product_HE173007] ([ID], [Name], [Image], [Price], [Discount], [Quantity], [Detail], [Rate], [Information], [Status], [SubCategory]) VALUES (N'2-1-0', N'Macbook Air 2022', N'https://synnexfpt.com/wp-content/uploads/2022/07/41242_macbook_air_m1_2020_grey_ha1.jpeg', 28990000, 15, 90, N'Hiệu năng hàng đầu - Chip Apple m2, 8 nhân GPU, hỗ trợ tốt các phần mềm như Word, Axel, Adoble Premier', 3, N'Loại card đồ họa

8 nhân GPU, 16 nhân Neural Engine
Dung lượng RAM

8GB
Ổ cứng

256GB
Kích thước màn hình

13.6 inches
Độ phân giải màn hình

2560 x 1664 pixels
Cổng giao tiếp

2 x Thunderbolt 3
Jack tai nghe 3.5 mm
MagSafe 3
Hệ điều hành

MacOS
Pin

52,6 Wh
Trọng lượng

1.27 kg
Công nghệ màn hình

Liquid Retina Display', N'No', N'2-1')
INSERT [dbo].[Product_HE173007] ([ID], [Name], [Image], [Price], [Discount], [Quantity], [Detail], [Rate], [Information], [Status], [SubCategory]) VALUES (N'2-2-0', N'HP DQ2031TG', N'https://duylinhlaptop.vn/Images/image/laptop/HP%2014-DQ2031TG/4.jpg', 13999000, 20, 100, N'Bảo hành 12 tháng tại các trung tâm bảo hành FPT Service toàn quốc. Đổi mới trong 30 ngày đầu nếu bị lỗi phần cứng nhà sản xuất.', 3, N'Loại card đồ họa

Intel® UHD Graphics
Dung lượng RAM

4GB
Loại RAM

4GB DDR4-2666 MHz RAM (1 x 4 GB)
Ổ cứng

128GB SATA 3 TLC M.2 SSD
Kích thước màn hình

14 inches
Độ phân giải màn hình

1920 x 1080 pixels (FullHD)
Cổng giao tiếp

1x USB Type-C® 5Gbps
2x USB Type-A 5Gbps
1x HDMI 1.4b
1x AC smart pin
1x headphone/microphone combo
Hệ điều hành

Windows 10 Home ở chế độ S mode
Pin

3-cell, 41 Wh Li-ion
Trọng lượng

3.24 lb (1.47 kg)
Công nghệ màn hình

IPS, micro-edge, anti-glare, 250 nits, 45% NTSC', N'No', N'2-2')
INSERT [dbo].[Product_HE173007] ([ID], [Name], [Image], [Price], [Discount], [Quantity], [Detail], [Rate], [Information], [Status], [SubCategory]) VALUES (N'2-3-0', N'Laptop Dell Inspiron 14 7415', N'http://product.hstatic.net/1000374492/product/untitled-1_1bb2c1ca10b048319e505113229670e9_grande.gif', 21000000, 10, 300, N'Bảo hành 12 tháng tại các trung tâm bảo hành FPT Service toàn quốc. Đổi mới trong 30 ngày đầu nếu bị lỗi phần cứng nhà sản xuất', 3, N'Loại card đồ họa

AMD Radeon Graphics
Dung lượng RAM

8GB
Loại RAM

DDR4, 3200 MHz
Ổ cứng

256GB M.2 PCIe NVMe SSD
Kích thước màn hình

14 inches
Độ phân giải màn hình

1920 x 1080 pixels (FullHD)
Cổng giao tiếp

1 x USB-C với Power Delivery + DisplayPort
2 x USB A 3.1
1 x 3.5 Audio Jack
1 x HDMI 1.4b
Hệ điều hành

Windows 11
Trọng lượng

1.59kg
Công nghệ màn hình

Màn hình chống loá
Đô phủ màu', N'No', N'2-3')
INSERT [dbo].[Product_HE173007] ([ID], [Name], [Image], [Price], [Discount], [Quantity], [Detail], [Rate], [Information], [Status], [SubCategory]) VALUES (N'2-4-0', N'ASUS vivobook R5R565EA', N'https://cdn2.cellphones.com.vn/358x/media/catalog/product/2/2/22_1_9.jpg', 10000000, 12, 100, N'Bảo hành 12 tháng tại các trung tâm bảo hành FPT Service toàn quốc. Đổi mới trong 30 ngày đầu nếu bị lỗi phần cứng nhà sản xuất.', 3, N'Loại card đồ họa

Intel UHD Graphics
Dung lượng RAM

4GB
Loại RAM

4GB (onboard) DDR4 2666 MHz, trống 1 khe tối đa 12GB
Ổ cứng

128GB SSD, dư 1 khe HDD
Kích thước màn hình

15.6 inches
Độ phân giải màn hình

1920 x 1080 pixels (FullHD)
Cổng giao tiếp

1 x USB 3.2 Gen 1 Type-C
1 x USB 3.2 Gen 1 Type-A
2 x USB 2.0 Type-A
1 x HDMI 1.4
1 x 3.5mm combo audio jack
Hệ điều hành

Windows 10 Home SL
Pin

37 WHrs, 2S1P, 2-cell
Trọng lượng

1.80 kg
Công nghệ màn hình

60Hz', N'No', N'2-4')
INSERT [dbo].[Product_HE173007] ([ID], [Name], [Image], [Price], [Discount], [Quantity], [Detail], [Rate], [Information], [Status], [SubCategory]) VALUES (N'2-5-0', N'Lenovo ideapad 3i', N'https://laptoplenovo.vn/wp-content/uploads/2022/07/laptop-lenovo-ideapad-3-15alc6-82ku00tcvn-vang-600x600.jpg', 17000000, 50, 10, N'8GB Ram - Không lo tràn Ram khi mở nhiều ứng dụng cùng lúc
Card onboard Intel UHD - Cho phép chỉnh sửa ảnh cơ bản trên PTS,AI
Hiển thị sắc nét - Màn hình 14 inch Full HD', 3, N'Loại card đồ họa

Intel UHD Graphics
Dung lượng RAM

8GB
Loại RAM

DDR4 RAM
Ổ cứng

512GB NVMe TLC SSD
Kích thước màn hình

14 inches
Độ phân giải màn hình

1920 x 1080 pixels (FullHD)
Hệ điều hành

Windows 10 Home SL
Pin

45Wh
Công nghệ màn hình

Màn hình chống loá', N'No', N'2-5')
INSERT [dbo].[Product_HE173007] ([ID], [Name], [Image], [Price], [Discount], [Quantity], [Detail], [Rate], [Information], [Status], [SubCategory]) VALUES (N'2-7-0', N'Xiaomi redmibook 15', N'https://anphat.com.vn/media/product/42297_laptop_xiaomi_redmibook_15_jyu4506ap__core_i5_11300h__8gb__512gb__15_6_inch_fhd__windows_11_home____en___7_.jpg', 10000000, 10, 320, N'Ram 8GB, Chip Intel Core i3 thế hệ 11 - Xử lý liền mạch các tác vụ hằng ngày
Lưu trữ thoải mái, khởi động nhanh  - 256GB SSD
Màn hình FHD, kích thước 15.6 inch - Màn hình lớn cải thiện chất lượng làm việc', 3, N'Loại card đồ họa

Intel Iris UHD
Dung lượng RAM

8GB
Loại RAM

DDR4 Tốc độ bus 3200MHz
Ổ cứng

SSD 256 GB
Kích thước màn hình

15.6 inches
Độ phân giải màn hình

1920 x 1080 pixels (FullHD)
Cổng giao tiếp

1 x Cổng HDMI 1.4
2 x USB 3,2 Gen1, 1 x USB 2,0
Khóa Kensington: Có
Ethernet (Lan): RJ45
Cổng ra âm thanh kỹ thuật số quang học: Có
1 x Đầu cắm tai nghe 3,5 mm
Khe SD: SD 3.0
Hệ điều hành

Windows 11 Home SL
Pin

46Wh
Trọng lượng

1.8 kg
Công nghệ màn hình

Độ sáng: 220 nit
Tỷ lệ tương phản: 500:1
Gam màu: NTSC 45%
Góc xem: 90°(H)', N'No', N'2-7')
INSERT [dbo].[Product_HE173007] ([ID], [Name], [Image], [Price], [Discount], [Quantity], [Detail], [Rate], [Information], [Status], [SubCategory]) VALUES (N'2-8-0', N'LG Gram 2022', N'http://product.hstatic.net/1000233206/product/lg-gram-2022-16z90q-g-ah78a5_a662cf5df42e4b7eab00430ce51a63f0_grande.png', 43000000, 10, 19, N'"Chip i7-1260P cùng card đồ họa Intel Iris Xe Graphics xử lý tốt các tác vụ văn phòng nặng, 
Ram 16GB cùng ổ cứng 512GB SSD + 1 khe cắm mang đến tốc độ xử lý nhanh cùng đa nhiệm mượt mà
Màn hình 14.0 inches cùng độ phủ màu DCI-P3 lên đến 99% cho chất lượng hiển thị hình ảnh rõ nét', 3, N'Loại card đồ họa

Intel Iris Xe Graphics
Dung lượng RAM

16GB
Loại RAM

16 GB LPDDR5 (Hai kênh, 5200MHz)
Ổ cứng

512 GB SSD NVMe PCIE
(Hỗ trợ M.2 (2280) hai khe cắm SSD)
Kích thước màn hình

14 inches
Độ phân giải màn hình

1920 x 1200 pixels (FullHD+)
Cổng giao tiếp

2x USB 3.2 Gen2x1
1x HDMI
1x DC-in
2x USB 4 Gen 3x2 Type C (USB PD, cổng hiển thị, Thunderbolt 4)
1x Headphone-Out
Hệ điều hành

Windows 11 Home Plus
Pin

72 Wh Li-Ion
Trọng lượng

999g
Công nghệ màn hình

Tấm nền IPS
Độ sáng 350 nit
99% DCI-P3
Màn hình chống lóa mắt', N'No', N'2-8')
GO
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'1-1', N'iPhone', N'1')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'1-2', N'Samsung', N'1')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'1-3', N'Xiaomi', N'1')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'1-4', N'OPPO', N'1')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'1-5', N'Vivo', N'1')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'1-6', N'Realme', N'1')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'1-7', N'Tecno', N'1')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'1-8', N'OnePlus', N'1')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'2-1', N'Mac', N'2')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'2-2', N'HP', N'2')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'2-3', N'Dell', N'2')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'2-4', N'ASUS', N'2')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'2-5', N'Lenovo', N'2')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'2-6', N'Acer', N'2')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'2-7', N'Xiaomi', N'2')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'2-8', N'LG', N'2')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'2-9', N'Huawei', N'2')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'3-1', N'iPad', N'3')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'3-2', N'Samsung', N'3')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'3-3', N'Xiaomi', N'3')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'3-4', N'Lenovo', N'3')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'3-5', N'Nokia', N'3')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'4-1', N'Apple', N'4')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'4-2', N'JBL', N'4')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'4-3', N'Xiaomi', N'4')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'4-4', N'Samsung', N'4')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'4-5', N'Sony', N'4')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'4-6', N'LG', N'4')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'5-1', N'Tai Nghe', N'5')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'5-2', N'Chuột', N'5')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'5-3', N'Bàn phím', N'5')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'5-4', N'Ốp', N'5')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'5-5', N'Sạc', N'5')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'5-6', N'Tai Nghe', N'5')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'6-1', N'Apple', N'6')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'6-2', N'Samsung', N'6')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'6-3', N'Xiaomi', N'6')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'6-4', N'Huawei', N'6')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'7-1', N'ĐT Cũ', N'7')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'7-2', N'iPad Cũ', N'7')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'7-3', N'Laptop Cũ', N'7')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'7-4', N'Mac Cũ', N'7')
INSERT [dbo].[SubCategory_HE173007] ([ID], [name], [CategoryID]) VALUES (N'7-5', N'Loa - Tai nghe Cũ', N'7')
GO
ALTER TABLE [dbo].[Cart_HE173007]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[Account_HE173007] ([Username])
GO
ALTER TABLE [dbo].[Cart_HE173007]  WITH CHECK ADD FOREIGN KEY([iID])
REFERENCES [dbo].[item_HE173007] ([iID])
GO
ALTER TABLE [dbo].[Feedback_HE173007]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Product_HE173007] ([ID])
GO
ALTER TABLE [dbo].[Feedback_HE173007]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[Account_HE173007] ([Username])
GO
ALTER TABLE [dbo].[item_HE173007]  WITH CHECK ADD FOREIGN KEY([pID])
REFERENCES [dbo].[Product_HE173007] ([ID])
GO
ALTER TABLE [dbo].[Order_HE173007]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[Account_HE173007] ([Username])
GO
ALTER TABLE [dbo].[Product_HE173007]  WITH CHECK ADD FOREIGN KEY([SubCategory])
REFERENCES [dbo].[SubCategory_HE173007] ([ID])
GO
ALTER TABLE [dbo].[SubCategory_HE173007]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category_HE173007] ([ID])
GO
/****** Object:  StoredProcedure [dbo].[totalofcart]    Script Date: 20/07/2023 08:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[totalofcart]
as
select sum(c.quantity*p.Price) from product p, cart c
where p.ID = c.pID
GO
USE [master]
GO
ALTER DATABASE [PRJ301] SET  READ_WRITE 
GO
