USE [master]
GO
/****** Object:  Database [Kopiko]    Script Date: 28/04/2021 02:53:34 CH ******/
CREATE DATABASE [Kopiko]
GO
USE [Kopiko]
GO
/****** Object:  Table [dbo].[account]    Script Date: 28/04/2021 02:53:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[account_id] [bigint] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](250) NULL,
	[avatar] [varchar](255) NULL,
	[date_created] [datetime] NULL,
	[email] [varchar](255) NULL,
	[full_name] [nvarchar](30) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[phone] [varchar](255) NOT NULL,
	[role] [varchar](255) NULL,
	[status] [int] NULL,
	[username] [varchar](255) NOT NULL,
	[gender] [nvarchar](10) NULL,
	[birthday] [date] NULL,
 CONSTRAINT [PK__account__46A222CDDF6E8AA7] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brand]    Script Date: 28/04/2021 02:53:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand](
	[brand_id] [bigint] IDENTITY(1,1) NOT NULL,
	[brand_img_url] [varchar](255) NOT NULL,
	[brand_name] [nvarchar](50) NOT NULL,
	[info] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 28/04/2021 02:53:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [bigint] IDENTITY(1,1) NOT NULL,
	[category_code] [varchar](255) NOT NULL,
	[category_name] [nvarchar](50) NOT NULL,
	[parents_category_id] [bigint] NULL,
 CONSTRAINT [PK__category__D54EE9B4C6D7E6B7] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 28/04/2021 02:53:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[comment_id] [bigint] IDENTITY(1,1) NOT NULL,
	[content] [ntext] NOT NULL,
	[date_created] [datetime] NULL,
	[parents_comment_id] [bigint] NULL,
	[account_id] [bigint] NULL,
	[product_id] [bigint] NOT NULL,
	[title] [ntext] NOT NULL,
 CONSTRAINT [PK__comment__E79576874C39EE4E] PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment_image]    Script Date: 28/04/2021 02:53:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment_image](
	[comment_image_id] [bigint] NOT NULL,
	[image_url] [varchar](255) NULL,
	[comment_id] [bigint] NULL,
 CONSTRAINT [PK_comment_image] PRIMARY KEY CLUSTERED 
(
	[comment_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 28/04/2021 02:53:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[order_id] [bigint] IDENTITY(1,1) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[delivery_info] [nvarchar](250) NOT NULL,
	[account_id] [bigint] NOT NULL,
	[order_status_id] [bigint] NOT NULL,
	[payment_method_id] [bigint] NOT NULL,
	[shipping_fee] [money] NULL,
 CONSTRAINT [PK__order__46596229D5EA9820] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 28/04/2021 02:53:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[order_detail_id] [bigint] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NOT NULL,
	[sale_price] [money] NOT NULL,
	[order_id] [bigint] NOT NULL,
	[product_detail_id] [bigint] NULL,
 CONSTRAINT [PK__order_de__3C5A408087CB8967] PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_status]    Script Date: 28/04/2021 02:53:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_status](
	[order_status_id] [bigint] IDENTITY(1,1) NOT NULL,
	[status_name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[order_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment_method]    Script Date: 28/04/2021 02:53:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment_method](
	[payment_method_id] [bigint] IDENTITY(1,1) NOT NULL,
	[payment_method_name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[payment_method_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persistent_Logins]    Script Date: 28/04/2021 02:53:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persistent_Logins](
	[username] [varchar](64) NULL,
	[series] [varchar](64) NOT NULL,
	[token] [varchar](64) NULL,
	[last_used] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[series] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 28/04/2021 02:53:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [bigint] IDENTITY(1,1) NOT NULL,
	[date_created] [datetime] NULL,
	[description] [ntext] NULL,
	[product_name] [nvarchar](255) NOT NULL,
	[status] [int] NULL,
	[brand_id] [bigint] NOT NULL,
	[category_id] [bigint] NOT NULL,
	[price] [money] NOT NULL,
	[sale_price] [money] NOT NULL,
 CONSTRAINT [PK__product__47027DF58182CBF0] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_detail]    Script Date: 28/04/2021 02:53:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_detail](
	[product_detail_id] [bigint] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NOT NULL,
	[size] [nvarchar](20) NOT NULL,
	[product_id] [bigint] NOT NULL,
 CONSTRAINT [PK__product___DDB4AD33A439F051] PRIMARY KEY CLUSTERED 
(
	[product_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_image]    Script Date: 28/04/2021 02:53:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_image](
	[product_image_id] [bigint] IDENTITY(1,1) NOT NULL,
	[image_url] [varchar](255) NOT NULL,
	[product_id] [bigint] NOT NULL,
 CONSTRAINT [PK__product___DC9AC955F99CB2B6] PRIMARY KEY CLUSTERED 
(
	[product_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[province]    Script Date: 28/04/2021 02:53:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[province](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](10) NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_province] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp_month]    Script Date: 28/04/2021 02:53:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_month](
	[month] [int] NOT NULL,
	[name] [nvarchar](10) NULL,
 CONSTRAINT [PK_temp_month] PRIMARY KEY CLUSTERED 
(
	[month] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([account_id], [address], [avatar], [date_created], [email], [full_name], [password], [phone], [role], [status], [username], [gender], [birthday]) VALUES (1, N'Huế, Việt Nam', N'avatar-admin.jpg', CAST(N'2021-03-23T14:56:44.110' AS DateTime), N'hqk@gmail.com', N'Hoàng Quốc Khánh', N'123456', N'0389829121', N'ADMIN', 1, N'admin', NULL, NULL)
INSERT [dbo].[account] ([account_id], [address], [avatar], [date_created], [email], [full_name], [password], [phone], [role], [status], [username], [gender], [birthday]) VALUES (2, N'Huế, Việt nam', N'avatar-user.png', CAST(N'2021-03-23T14:56:44.110' AS DateTime), N'user1@gmail.com', N'Trần Thiên', N'123456', N'0389829122', N'USER', 1, N'thuan', NULL, NULL)
INSERT [dbo].[account] ([account_id], [address], [avatar], [date_created], [email], [full_name], [password], [phone], [role], [status], [username], [gender], [birthday]) VALUES (3, N'Đà Nẵng, Việt nam', N'avatar-user.png', CAST(N'2021-03-23T14:56:44.110' AS DateTime), N'user2@gmail.com', N'Lê Minh Long', N'123456', N'0337843104', N'USER', 1, N'nghia', NULL, NULL)
INSERT [dbo].[account] ([account_id], [address], [avatar], [date_created], [email], [full_name], [password], [phone], [role], [status], [username], [gender], [birthday]) VALUES (4, N'TP HCM, Việt Nam', N'avatar-user.png', CAST(N'2021-03-23T14:57:26.997' AS DateTime), N'user3@gmail.com', N'Nguyễn Duy Quý', N'123456', N'0337895556', N'USER', 1, N'lam', NULL, NULL)
INSERT [dbo].[account] ([account_id], [address], [avatar], [date_created], [email], [full_name], [password], [phone], [role], [status], [username], [gender], [birthday]) VALUES (10, N'Hue, VietNam', N'avatar-user.png', CAST(N'2021-03-25T00:00:00.000' AS DateTime), N'tqt@gmail.com', N'Trương Đình Phong', N'123456', N'0389829120', N'USER', 1, N'trung', NULL, NULL)
INSERT [dbo].[account] ([account_id], [address], [avatar], [date_created], [email], [full_name], [password], [phone], [role], [status], [username], [gender], [birthday]) VALUES (13, N'Đà Nẵng, Việt Nam', N'avatar-user.png', CAST(N'2021-03-31T08:59:13.150' AS DateTime), N'tpvh@gmail.com', N'Trần Phan Vĩnh Hoàng', N'123456', N'0389829200', N'USER', 1, N'hoang', NULL, NULL)
SET IDENTITY_INSERT [dbo].[account] OFF
GO
SET IDENTITY_INSERT [dbo].[brand] ON 

INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (1, N'3e259b22-a039-4e96-a7d9-db2d57ca588d.jpg', N'PRADA', N'')
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (2, N'img2.jsp', N'GUCCI', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (4, N'i', N'Dior', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (5, N'e', N'LACOSTE', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (6, N'r', N'BOSS', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (7, N'e', N'Calvin Klein', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (8, N'r', N'D&G', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (9, N'd', N'Balenciaga', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (10, N'e', N'VERSACE', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (11, N'r', N'HERMES', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (12, N'r', N'OWEN', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (13, N'e', N'Viettien', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (14, N'v', N'novelty', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (15, N's', N'mattana', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (16, N'r', N'LOUIS VUITTON', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (17, N'd', N'FENDI', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (18, N't', N'K&K', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (19, N'd', N'ZARA', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (20, N'e', N'ELISE', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (21, N'e', N'REN', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (22, N'f', N'Nosbyn', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (23, N't', N'The BlueTShirt', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (24, N'f', N'MAGONN', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (25, N'f', N'LIBE', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (26, N'f', N'TOCHIE', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (27, N'd', N'LANE JT', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (28, N'COSETTE', N'COSETTE', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (29, N'CANARY', N'CANARY', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (30, N'ELPIS', N'ELPIS', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (31, N'HIGHCUT', N'HIGHCUT', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (33, N'a4abeb29-31f3-42db-b21c-c79e7ed6f3d7.jpg', N'Nike', N'd')
SET IDENTITY_INSERT [dbo].[brand] OFF
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (1, N'thoi-trang-nam', N'Thời trang nam', NULL)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (2, N'thoi-trang-nu', N'Thời trang nữ', NULL)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (3, N'ao-thun-nu', N'Áo thun nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (4, N'ao-thun-dai-tay', N'Áo thun dài tay', 3)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (5, N'ao-thun-ngan-tay', N'Áo thun ngắn tay', 3)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (6, N'ao-so-mi-nam', N'Áo sơ mi nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (7, N'ao-len-nam', N'Áo len nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (8, N'vay', N'Váy', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (9, N'dam', N'Đầm', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (10, N'do-bo-nu', N'Đồ bộ nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (11, N'jumpsuit', N'Bộ đồ jumpsuit', 10)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (12, N'do-bo-the-thao', N'Bộ đồ thể thao', 10)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (13, N'ao-khoac-nam', N'Áo khoác nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (14, N'ao-ni-nu', N'Áo nỉ nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (15, N'ao-khoac-jean-nam', N'Áo khoác jean nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (16, N'ao-vest-nu', N'Áo vest nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (17, N'ao-vest-nam', N'Áo vest nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (18, N'quan-jean-nu', N'Quần jean nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (19, N'quan-jean-nam', N'Quần jean nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (20, N'quan-short-nu', N'Quần short nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (21, N'quan-short-nam', N'Quần short nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (22, N'ao-thun-nam', N'Áo thun nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (23, N'ao-so-mi-nu', N'Áo sơ mi nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (24, N'ao-len-nu', N'Áo len nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (25, N'ao-gio-nam', N'Áo gió nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (26, N'ao-gio-nu', N'Áo gió nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (27, N'ao-phao-nam', N'Áo phao nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (28, N'ao-phao-nu', N'Áo phao nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (29, N'quan-tay-nam', N'Quần tây nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (30, N'quan-tay-nu', N'Quần tây nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (31, N'giay-nu', N'Giày nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (32, N'giay-nam', N'Giày nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (33, N'giay-sandan-nu', N'Giày sandan nữ', 31)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (34, N'giay-sandan-nam', N'Giày sandan nam', 32)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (35, N'giay-sneaker-nam', N'Giày sneaker nam', 32)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (36, N'giay-sneaker-nu', N'Giày sneaker nữ', 31)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (37, N'boots-nu', N'Boots nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (38, N'boots-nam', N'Boots nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (39, N'dep-nam', N'Dép nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (40, N'dep-nu', N'Dép nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (41, N'dong-ho-nam', N'Đồng hồ nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (42, N'dong-ho-nu', N'Đồng hồ nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (43, N'that-lung-nam', N'Thắt lưng nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (44, N'that-lung-nu', N'Thắt lưng nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (45, N'mu-nam', N'Mũ nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (46, N'mu-nu', N'Mũ nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (47, N'kinh-ram-nam', N'Kính râm nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (48, N'kinh-ram-nu', N'Kính râm nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (49, N'day-chuyen-nam', N'Dây chuyền nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (50, N'day-chuyen-nu', N'Dây chuyền nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (51, N'vong-tay-nam', N'Vòng tay nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (52, N'vong-tay-nu', N'Vòng tay nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (53, N'nhan-nam', N'Nhẫn nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (54, N'nhan-nu', N'Nhẫn nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (55, N'khuyen-tai-nam', N'Khuyên tai nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (56, N'khuyen-tai-nu', N'Khuyên tai nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (57, N'do-doi', N'Đồ đôi', NULL)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (58, N'ao-doi', N'Áo đôi', 57)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (59, N'quan-doi', N'Quần đôi', 57)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (60, N'bo-do-doi', N'Bộ đồ đôi', 57)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (61, N'giay-doi', N'Giày đôi', 57)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (62, N'vong-tay-doi', N'Vòng tay đôi', 57)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (63, N'nhan-doi', N'Nhẫn đôi', 57)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (64, N'day-chuyen-doi', N'Dây chuyền đôi', 57)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (65, N'balo-nam', N'Balo nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (66, N'balo-nu', N'Balo nữ', 2)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (67, N'ao-thun-nam', N'Áo thun nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (68, N'dong-ho-nam', N'Đồng hồ nam', 1)
INSERT [dbo].[category] ([category_id], [category_code], [category_name], [parents_category_id]) VALUES (69, N'dong-ho-nu', N'Đồng hồ nữ', 2)
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[comment] ON 

INSERT [dbo].[comment] ([comment_id], [content], [date_created], [parents_comment_id], [account_id], [product_id], [title]) VALUES (1, N'một cộng một bằng hai', CAST(N'2021-03-31T00:00:00.000' AS DateTime), NULL, 1, 2, N'b')
SET IDENTITY_INSERT [dbo].[comment] OFF
GO
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([order_id], [date_created], [delivery_info], [account_id], [order_status_id], [payment_method_id], [shipping_fee]) VALUES (1, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'Khách hàng: Hoàng Quốc Khánh;Sđt: 0389829121;Địa chỉ: Huế, Việt Nam', 1, 4, 1, NULL)
INSERT [dbo].[order] ([order_id], [date_created], [delivery_info], [account_id], [order_status_id], [payment_method_id], [shipping_fee]) VALUES (2, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'Khách hàng: Hoàng Quốc Khánh;Sđt: 0389829121;Địa chỉ: Huế, Việt Nam', 1, 2, 1, NULL)
SET IDENTITY_INSERT [dbo].[order] OFF
GO
SET IDENTITY_INSERT [dbo].[order_detail] ON 

INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [sale_price], [order_id], [product_detail_id]) VALUES (1, 1, 139000.0000, 1, 1)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [sale_price], [order_id], [product_detail_id]) VALUES (2, 1, 199000.0000, 1, 2)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [sale_price], [order_id], [product_detail_id]) VALUES (3, 1, 750000.0000, 2, 5)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [sale_price], [order_id], [product_detail_id]) VALUES (4, 7, 750000.0000, 2, 7)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [sale_price], [order_id], [product_detail_id]) VALUES (5, 6, 499000.0000, 2, 15)
SET IDENTITY_INSERT [dbo].[order_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[order_status] ON 

INSERT [dbo].[order_status] ([order_status_id], [status_name]) VALUES (1, N'Chờ xác nhận')
INSERT [dbo].[order_status] ([order_status_id], [status_name]) VALUES (2, N'Đã xác nhận')
INSERT [dbo].[order_status] ([order_status_id], [status_name]) VALUES (3, N'Đang giao hàng')
INSERT [dbo].[order_status] ([order_status_id], [status_name]) VALUES (4, N'Đã giao hàng')
INSERT [dbo].[order_status] ([order_status_id], [status_name]) VALUES (5, N'Huỷ đơn hàng')
SET IDENTITY_INSERT [dbo].[order_status] OFF
GO
SET IDENTITY_INSERT [dbo].[payment_method] ON 

INSERT [dbo].[payment_method] ([payment_method_id], [payment_method_name]) VALUES (1, N'Nhận hàng và thanh toán')
INSERT [dbo].[payment_method] ([payment_method_id], [payment_method_name]) VALUES (2, N'Thanh toán bằng thẻ quốc tế Visa, Master, JCB')
INSERT [dbo].[payment_method] ([payment_method_id], [payment_method_name]) VALUES (3, N'Thang toán bằng thẻ ATM nội địa/Internet Banking')
INSERT [dbo].[payment_method] ([payment_method_id], [payment_method_name]) VALUES (4, N'Thanh toán bằng ví Momo')
INSERT [dbo].[payment_method] ([payment_method_id], [payment_method_name]) VALUES (5, N'Thanh toán bằng ZaloPay')
INSERT [dbo].[payment_method] ([payment_method_id], [payment_method_name]) VALUES (6, N'Thanh toán bằng ViettelPay')
SET IDENTITY_INSERT [dbo].[payment_method] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (1, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'Áo thun thời trang nam nữ in hình form rộng được may từ chất liệu vải thun mềm và thoáng mát mang lại sự thoải mái cho người mặc. Áo may từ vải thun cao cấp nên rất mềm mại, co giãn và thấm hút mồ hôi tốt mang lại sự thoáng mát khi mặc, phù hợp với những bạn cần phải vận động thường xuyên. Vải dễ giặt sạch bằng tay hoặc máy, rất nhanh khô, giúp bạn tiết kiệm thời gian giặt giũ. Đường may tinh tế, tỉ mỉ và chắc chắn khẳng định chất lượng của sản phẩm.

 
<br>
MÔ TẢ SẢN PHẨM
<br>
️ Chất liệu áo thun trơn in hình cao cấp, vải mềm mịn, mặc thoáng mát
<br>
️ Hình in to, rõ nét, Giặt KHÔNG hư hình nhờ công nghệ Printer mới nhất
<br>
️ Nhiều size lựa chọn từ 25kg đến 94kg phù hợp cho mọi lứa tuổi
<br>
️ XS - S - M - L - XL - 2XL - 3XL (Unisex phù hợp cho Nam và Nữ)
<br>
️ Kết hợp cùng quần jeans dài, quần âu. Thích hợp đi làm, đi chơi, dạo phố, du lịch
<br>
 

HƯỚNG DẪN CHỌN SIZE ÁO
<br>
(Size XS): 25-34kg , dưới 1m4 -> (nếu cao 1m4 nên tăng size thành S)
<br>
️ (Size S): 35-44kg , 1m4-1m5
<br>
️ (Size M): 45-54kg , 1m4-1m65 -> (nếu cao 1m7 nên tăng size thành L)
<br>
️ (Size L): 55-64kg , 1m5-1m7
<br>
️ (Size XL): 65-74kg , 1m5-1m7
<br>
️ (Size 2XL): 75-84kg , 1m6-1m7
<br>
️ (Size 3XL): 84-90kg , 1m6-1m7 ️', N'Áo thun One Piece Zoro T01 , áo phông One Piece Zoro Unisex Nam Nữ có Size bé từ 25-95kg', 1, 1, 1, 150000.0000, 139000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (2, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'Hình in sắc nét, công nghệ in mới không phai màu hay bong tróc hình in
<br>
Sử dụng được cả giặt tay và giặt máy
<br>
Có nhiều loại hình để lựa chọn tham khảo ở phẩn sản phẩm<br>
Có đủ size từ 30-90kg<br>
Với chiếc áo Free Fire, mọi hình in đều được chúng tôi xử lý theo công nghệ Hàn Quốc nên độ bền của hình in rất cao, kể cả khi bạn giặt tay hay giặt máy.<br>
Nhưng theo khuyến cáo của nhà sản xuất, vì là chiếc áo màu đen nên bạn không nên ngâm quá lâu trong xà phòng nhé. Khi bạn giặt máy thì nên lộn ngược mặt in hình vào trong đảm bảo hơn nhé.<br>
Ngoài áo đen Free Fire huyền thoại, thì chúng tôi còn có áo khoác in hình Free Fire, áo khoác màu ghi xám cổ tròn Free Fire và áo khoác Free Fire.<br>
Với nhiều mẫu mã đã dạng, phong phú, chúng tôi tự tin sẽ mang lại cho bạn trải nghiệm tuyệt vời nhất khi mặc lên mình chiếc áo mang phong cách cá nhân này.<br>
Đừng quên ấn theo dõi shop để nhận nhiều ưu đãi khi nhận hàng bạn nhé.<br>', N'Áo Heavy Free Fire Áo Thun Cộc Tay Màu Đen Mẫu Đẹp, Áo Heavy in hình không phai màu chất thun mềm mại', 1, 2, 67, 250000.0000, 199000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (3, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'Áo thun nam Phản Quang 7 màu cao cấp<br>
Nổi bật khi chụp bằng flash với hiệu ứng 7 màu cực đặc sắc<br>
Dành riêng cho các bạn trẻ năng động, cá tính, trẻ trung<br>
Phù hợp khi đi dạo chơi, đi phượt, đi café, trà sữa …<br>

Xin giới thiệu với các bạn mẫu áo thun Phản Quang 7 Màu cực hot "Chú ý: Hàng Dễ Vỡ - Xin Nhẹ Tay".<br>

Sự khác biệt giữa áo in thường và áo thun in Phản Quang 7 Màu là khi đi trời tối, decal sẽ phản chiếu ánh sáng tạo hiệu ứng đặc biệt.<br>

Còn nữa, khi chụp bằng flash điện thoại sẽ nổi bật lên ánh sáng 7 màu lung linh không thể đẹp hơn. <br>
<img src="https://salt.tikicdn.com/ts/tmp/5c/f5/44/6b3d3d43cefd8f04a7f9e914f1d68d04.jpg"/>', N'Áo Thun Nam Tay Lỡ Unisex cổ Tròn chất liệu vải cotton màu trắng form rộng in chữ Japan 3 phong cách độc chất TheNgaustyle', 1, 4, 67, 230000.0000, 159000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (4, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'Chất lụa trơn, không nhăn, không xù, không bai, không phai màu.<br>
Form body Hàn Quốc, dễ kết hợp với các loại quần.<br>
Size: M, L, XL,XXL,<br>
Được sử dụng nhiềutrên thị trường.<br>
Thích hợp mặc trong nhiều môi trường khác nhau như công sở, tiệc, event, du lịch...<br>
Chất lụa trơn, không nhăn, không xù, không bai, không phai màu.<br>
Form body Hàn Quốc, dễ kết hợp với các loại quần.<br>
Size: M, L, XL,XXL,<br>
Được sử dụng nhiềutrên thị trường.<br>
Thích hợp mặc trong nhiều môi trường khác nhau như công sở, tiệc, event, du lịch.<br>

Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', N'Áo sơ mi nam trắng trơn cao cấp 100% Cotton hàng QUẢNG CHÂU', 1, 7, 6, 299000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (5, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 8, 22, 1000000.0000, 750000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (6, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 16, 2, 1000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (7, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 8, 1, 1000000.0000, 750000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (16, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 16, 1, 1000000.0000, 750000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (30, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 8, 2, 499000.0000, 499000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (31, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 67, 499000.0000, 499000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (32, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 22, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (33, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 499000.0000, 499000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (34, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (35, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 8, 1, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (36, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 67, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (37, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam', 1, 16, 2, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (38, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (39, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo Heavy Free Fire Áo Thun Cộc Tay Màu Đen Mẫu Đẹp, Áo Heavy in hình không phai màu chất thun mềm mại', 1, 8, 1, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (40, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'Áo thun thời trang nam nữ in hình form rộng được may từ chất liệu vải thun mềm và thoáng mát mang lại sự thoải mái cho người mặc. Áo may từ vải thun cao cấp nên rất mềm mại, co giãn và thấm hút mồ hôi tốt mang lại sự thoáng mát khi mặc, phù hợp với những bạn cần phải vận động thường xuyên. Vải dễ giặt sạch bằng tay hoặc máy, rất nhanh khô, giúp bạn tiết kiệm thời gian giặt giũ. Đường may tinh tế, tỉ mỉ và chắc chắn khẳng định chất lượng của sản phẩm.

 
<br>
MÔ TẢ SẢN PHẨM
<br>
️ Chất liệu áo thun trơn in hình cao cấp, vải mềm mịn, mặc thoáng mát
<br>
️ Hình in to, rõ nét, Giặt KHÔNG hư hình nhờ công nghệ Printer mới nhất
<br>
️ Nhiều size lựa chọn từ 25kg đến 94kg phù hợp cho mọi lứa tuổi
<br>
️ XS - S - M - L - XL - 2XL - 3XL (Unisex phù hợp cho Nam và Nữ)
<br>
️ Kết hợp cùng quần jeans dài, quần âu. Thích hợp đi làm, đi chơi, dạo phố, du lịch
<br>
 

HƯỚNG DẪN CHỌN SIZE ÁO
<br>
(Size XS): 25-34kg , dưới 1m4 -> (nếu cao 1m4 nên tăng size thành S)
<br>
️ (Size S): 35-44kg , 1m4-1m5
<br>
️ (Size M): 45-54kg , 1m4-1m65 -> (nếu cao 1m7 nên tăng size thành L)
<br>
️ (Size L): 55-64kg , 1m5-1m7
<br>
️ (Size XL): 65-74kg , 1m5-1m7
<br>
️ (Size 2XL): 75-84kg , 1m6-1m7
<br>
️ (Size 3XL): 84-90kg , 1m6-1m7 ️', N'Áo thun One Piece Zoro T01 , áo phông One Piece Zoro Unisex Nam Nữ có Size bé từ 25-95kg', 1, 16, 22, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (41, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam', 1, 8, 67, 250000.0000, 199000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (42, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo Thun Nam Tay Lỡ Unisex cổ Tròn chất liệu vải cotton màu trắng form rộng in chữ Japan 3 phong cách độc chất TheNgaustyle', 1, 16, 2, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (43, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 8, 1, 230000.0000, 139000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (44, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 6, 1, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (45, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam', 1, 6, 1, 250000.0000, 199000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (46, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo Thun Nam Tay Lỡ Unisex cổ Tròn chất liệu vải cotton màu trắng form rộng in chữ Japan 3 phong cách độc chất TheNgaustyle', 1, 16, 22, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (47, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 6, 1, 230000.0000, 139000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (48, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 4, 22, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (49, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 16, 1, 1000000.0000, 750000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (50, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 16, 1, 1000000.0000, 750000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (51, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 8, 67, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (52, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (53, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 8, 12, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (54, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 2, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (55, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (56, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 8, 1, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (57, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 6, 1, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (66, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 6, 1, 1000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (67, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 8, 22, 1000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (68, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 16, 22, 1000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (69, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 8, 67, 1000000.0000, 750000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (70, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 8, 1, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (71, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 8, 1, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (72, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 2, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (73, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (74, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 8, 1, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (75, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 22, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (76, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 6, 1, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (77, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam', 1, 6, 22, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (78, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 6, 67, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (79, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo Heavy Free Fire Áo Thun Cộc Tay Màu Đen Mẫu Đẹp, Áo Heavy in hình không phai màu chất thun mềm mại', 1, 4, 1, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (90, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 16, 1, 1000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (91, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 6, 1, 1000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (92, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 16, 22, 1000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (93, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 9, 1, 1000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (94, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 2, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (95, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 7, 22, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (96, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 2, 1, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (97, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 6, 1, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (98, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 5, 1, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (99, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (100, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 5, 67, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (101, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam', 1, 16, 1, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (102, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (103, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo Heavy Free Fire Áo Thun Cộc Tay Màu Đen Mẫu Đẹp, Áo Heavy in hình không phai màu chất thun mềm mại', 1, 4, 1, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (106, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 6, 4, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (107, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam', 1, 16, 1, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (108, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 6, 1, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (109, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo Heavy Free Fire Áo Thun Cộc Tay Màu Đen Mẫu Đẹp, Áo Heavy in hình không phai màu chất thun mềm mại', 1, 4, 22, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (112, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam', 1, 4, 1, 250000.0000, 199000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (113, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo Thun Nam Tay Lỡ Unisex cổ Tròn chất liệu vải cotton màu trắng form rộng in chữ Japan 3 phong cách độc chất TheNgaustyle', 1, 4, 67, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (114, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 230000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (115, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 4, 4, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (116, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam', 1, 4, 4, 250000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (117, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo Thun Nam Tay Lỡ Unisex cổ Tròn chất liệu vải cotton màu trắng form rộng in chữ Japan 3 phong cách độc chất TheNgaustyle', 1, 16, 1, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (118, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 6, 1, 230000.0000, 139000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (119, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 4, 1, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (120, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 16, 1, 1000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (121, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 16, 1, 1000000.0000, 750000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (122, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 67, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (131, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 4, 3, 1000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (132, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 16, 1, 1000000.0000, 750000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (133, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 6, 4, 1000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (134, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 6, 1, 1000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (135, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 4, 1, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (136, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (137, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (138, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (139, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 67, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (140, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (141, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 4, 4, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (142, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam', 1, 16, 1, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (143, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 6, 1, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (144, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo Heavy Free Fire Áo Thun Cộc Tay Màu Đen Mẫu Đẹp, Áo Heavy in hình không phai màu chất thun mềm mại', 1, 4, 1, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (147, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam', 1, 4, 33, 250000.0000, 199000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (148, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo Thun Nam Tay Lỡ Unisex cổ Tròn chất liệu vải cotton màu trắng form rộng in chữ Japan 3 phong cách độc chất TheNgaustyle', 1, 16, 4, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (149, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 230000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (150, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 4, 67, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (151, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam', 1, 4, 1, 250000.0000, 199000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (152, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo Thun Nam Tay Lỡ Unisex cổ Tròn chất liệu vải cotton màu trắng form rộng in chữ Japan 3 phong cách độc chất TheNgaustyle', 1, 16, 67, 9000000.0000, 8000000.0000)
GO
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (153, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 6, 3, 230000.0000, 139000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (154, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 4, 1, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (155, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 16, 1, 1000000.0000, 750000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (156, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 16, 3, 1000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (157, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (158, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 4, 1, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (159, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 67, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (160, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (161, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 6, 3, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (162, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (163, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 6, 67, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (164, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 16, 3, 1000000.0000, 750000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (165, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 16, 1, 1000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (166, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 16, 1, 1000000.0000, 750000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (167, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 6, 3, 1000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (168, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 6, 1, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (169, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 3, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (170, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 67, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (171, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 6, 1, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (172, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (173, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 3, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (174, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 67, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (175, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam', 1, 16, 67, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (176, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 3, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (177, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo Heavy Free Fire Áo Thun Cộc Tay Màu Đen Mẫu Đẹp, Áo Heavy in hình không phai màu chất thun mềm mại', 1, 4, 1, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (178, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 16, 1, 1000000.0000, 750000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (179, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 16, 67, 1000000.0000, 750000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (180, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 16, 3, 1000000.0000, 200000200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (181, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 4, 1, 1000000.0000, 750000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (182, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (183, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (184, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 3, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (185, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 67, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (186, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 3, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (187, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (188, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 67, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (189, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam', 1, 16, 1, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (190, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 4, 67, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (191, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo Heavy Free Fire Áo Thun Cộc Tay Màu Đen Mẫu Đẹp, Áo Heavy in hình không phai màu chất thun mềm mại', 1, 4, 1, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (192, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (193, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam', 1, 16, 1, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (194, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (195, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo Heavy Free Fire Áo Thun Cộc Tay Màu Đen Mẫu Đẹp, Áo Heavy in hình không phai màu chất thun mềm mại', 1, 4, 3, 9000000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (196, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam', 1, 4, 67, 250000.0000, 199000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (197, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo Thun Nam Tay Lỡ Unisex cổ Tròn chất liệu vải cotton màu trắng form rộng in chữ Japan 3 phong cách độc chất TheNgaustyle', 1, 16, 1, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (198, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 230000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (199, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 4, 67, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (200, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam', 1, 4, 1, 250000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (201, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo Thun Nam Tay Lỡ Unisex cổ Tròn chất liệu vải cotton màu trắng form rộng in chữ Japan 3 phong cách độc chất TheNgaustyle', 1, 16, 67, 9000000.0000, 8000000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (202, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 3, 230000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (203, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 4, 1, 9000000.0000, 200000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (204, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 16, 67, 1000000.0000, 750000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (205, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Chất lượng là thứ là chúng tôi đang cần ', N'Áo quần nam cá tính', 1, 4, 1, 1000000.0000, 750000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (206, CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'- Áo đẹp tạo nên sự chất lượng', N'Áo quần nam', 1, 16, 1, 9000000.0000, 8000000.0000)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[product_detail] ON 

INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (1, 99, N'Mặc định', 1)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (2, 9, N'Mặc định', 2)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (3, 1, N'Mặc định', 3)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (4, 2, N'Mặc định', 4)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (5, 2, N'Mặc định', 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (6, 10, N'XL', 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (7, 3, N'XL', 7)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (11, 10, N'XL', 16)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (15, 4, N'XL', 30)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (17, 10, N'XL', 31)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (18, 100, N'XL', 32)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (19, 10, N'XL', 33)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (20, 10, N'XL', 34)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (21, 10, N'XL', 35)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (22, 10, N'XL', 36)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (23, 10, N'XL', 37)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (40, 10, N'XL', 38)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (41, 10, N'XL', 39)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (42, 10, N'XL', 40)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (43, 10, N'XL', 41)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (44, 10, N'XL', 42)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (45, 10, N'XL', 43)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (46, 10, N'XL', 44)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (47, 10, N'XL', 45)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (48, 10, N'XL', 46)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (49, 10, N'XL', 47)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (50, 10, N'XL', 48)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (51, 10, N'XL', 49)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (52, 10, N'XL', 50)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (53, 10, N'XL', 51)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (54, 10, N'XL', 52)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (55, 10, N'XL', 53)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (56, 10, N'XL', 54)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (57, 10, N'XL', 55)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (58, 10, N'XL', 56)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (59, 10, N'XL', 57)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (61, 10, N'XL', 66)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (62, 10, N'XL', 67)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (63, 10, N'XL', 68)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (64, 10, N'XL', 69)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (65, 10, N'XL', 70)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (66, 10, N'XL', 71)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (67, 10, N'XL', 72)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (68, 10, N'XL', 73)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (69, 10, N'XL', 74)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (70, 10, N'XL', 75)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (71, 10, N'XL', 76)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (72, 10, N'XL', 77)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (73, 10, N'XL', 78)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (74, 10, N'XL', 79)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (76, 10, N'XL', 90)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (77, 10, N'XL', 91)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (78, 10, N'XL', 92)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (79, 10, N'XL', 93)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (80, 10, N'XL', 94)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (81, 10, N'XL', 95)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (82, 10, N'XL', 96)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (83, 10, N'XL', 97)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (84, 10, N'XL', 98)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (85, 10, N'XL', 99)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (86, 10, N'XL', 100)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (87, 10, N'L', 101)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (88, 10, N'L', 102)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (89, 10, N'L', 103)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (91, 10, N'L', 106)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (92, 10, N'L', 107)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (93, 10, N'L', 108)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (94, 10, N'L', 109)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (96, 10, N'L', 112)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (97, 10, N'L', 113)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (98, 10, N'L', 114)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (99, 10, N'L', 115)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (100, 10, N'L', 116)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (101, 10, N'L', 117)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (102, 10, N'L', 118)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (103, 10, N'L', 119)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (104, 10, N'L', 120)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (105, 10, N'L', 121)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (106, 10, N'L', 122)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (108, 10, N'L', 131)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (109, 10, N'L', 132)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (110, 10, N'L', 133)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (111, 10, N'L', 134)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (112, 10, N'L', 135)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (113, 10, N'L', 136)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (114, 10, N'L', 137)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (115, 10, N'L', 138)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (116, 10, N'L', 139)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (117, 5, N'L', 140)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (118, 5, N'L', 141)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (119, 5, N'L', 142)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (120, 5, N'L', 143)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (121, 5, N'L', 144)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (123, 5, N'L', 147)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (124, 10, N'XL', 147)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (315, 99, N'Mặc định', 148)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (316, 9, N'Mặc định', 149)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (317, 1, N'Mặc định', 150)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (318, 2, N'Mặc định', 151)
GO
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (319, 3, N'Mặc định', 152)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (320, 99, N'Mặc định', 153)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (321, 9, N'Mặc định', 154)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (322, 1, N'Mặc định', 155)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (323, 2, N'Mặc định', 156)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (324, 3, N'Mặc định', 157)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (325, 10, N'XL', 158)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (326, 10, N'XL', 159)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (327, 10, N'XL', 160)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (328, 10, N'XL', 161)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (329, 10, N'XL', 162)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (330, 100, N'XL', 163)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (331, 10, N'XL', 164)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (332, 10, N'XL', 165)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (333, 10, N'XL', 166)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (334, 10, N'XL', 167)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (335, 10, N'XL', 168)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (336, 10, N'XL', 169)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (337, 10, N'XL', 170)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (338, 10, N'XL', 171)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (339, 10, N'XL', 172)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (340, 10, N'XL', 173)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (341, 10, N'XL', 174)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (342, 10, N'XL', 175)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (343, 10, N'XL', 176)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (344, 10, N'XL', 177)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (345, 10, N'XL', 178)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (346, 10, N'XL', 179)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (347, 10, N'XL', 180)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (348, 10, N'XL', 181)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (349, 10, N'XL', 182)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (350, 10, N'XL', 183)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (351, 10, N'XL', 184)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (352, 10, N'XL', 185)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (353, 10, N'XL', 186)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (354, 10, N'XL', 187)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (355, 10, N'XL', 188)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (356, 10, N'XL', 189)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (357, 10, N'XL', 190)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (358, 10, N'XL', 91)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (359, 10, N'XL', 192)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (360, 10, N'XL', 193)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (361, 10, N'XL', 194)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (362, 10, N'XL', 195)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (363, 10, N'XL', 196)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (364, 10, N'XL', 197)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (365, 10, N'XL', 198)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (366, 10, N'XL', 199)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (367, 10, N'XL', 200)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (369, 10, N'XL', 201)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (370, 10, N'XL', 202)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (371, 10, N'XL', 203)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (372, 10, N'XL', 204)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (373, 10, N'XL', 205)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (374, 10, N'XL', 206)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (376, 10, N'L', 206)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (379, 10, N'L', 165)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (380, 10, N'L', 2)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (381, 10, N'XL', 1)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (382, 10, N'L', 1)
SET IDENTITY_INSERT [dbo].[product_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[product_image] ON 

INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (1, N'ddea6a74-09be-424f-ad60-8c05dcc5049c.png', 1)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (2, N'c42d632d-595e-4aed-8882-a8a653c9dc92.png', 1)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (3, N'd02f0ab1-4873-4c5c-816a-e27704115fcb.jpg', 2)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (4, N'5d18a817-7ec5-4f0a-b08c-01e62b5a148d.jpg', 2)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (5, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 3)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (6, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 3)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (7, N'28ac5894-9166-447c-83a6-365958248901.jpg', 3)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (8, N'184de0e8-70ba-44d8-b3e5-29ea76f32dbd.jpg', 4)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (9, N'6920113e-d356-42d0-8c06-4ebe9beb4480.jpg', 4)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (10, N'e8028277-e67d-4c5a-846b-839b0dd8c691.jpg', 5)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (11, N'e4834fd0-d65f-486f-8c64-a68f3d1c0248.jpg', 6)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (12, N'1df96d83-e8fd-4c50-ba44-9c27bf0e1fc4.jpg', 7)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (13, N'4e156c1b-a285-4eda-9946-93f741e2206d.jpg', 7)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (17, N'4e156c1b-a285-4eda-9946-93f741e2206d.jpg', 16)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (19, N'4e156c1b-a285-4eda-9946-93f741e2206d.jpg', 30)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (20, N'4e156c1b-a285-4eda-9946-93f741e2206d.jpg', 31)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (21, N'4e156c1b-a285-4eda-9946-93f741e2206d.jpg', 32)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (22, N'4e156c1b-a285-4eda-9946-93f741e2206d.jpg', 33)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (23, N'4e156c1b-a285-4eda-9946-93f741e2206d.jpg', 34)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (24, N'4e156c1b-a285-4eda-9946-93f741e2206d.jpg', 35)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (25, N'4e156c1b-a285-4eda-9946-93f741e2206d.jpg', 36)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (26, N'4e156c1b-a285-4eda-9946-93f741e2206d.jpg', 37)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (27, N'4e156c1b-a285-4eda-9946-93f741e2206d.jpg', 38)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (28, N'4e156c1b-a285-4eda-9946-93f741e2206d.jpg', 39)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (29, N'4e156c1b-a285-4eda-9946-93f741e2206d.jpg', 40)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (30, N'4e156c1b-a285-4eda-9946-93f741e2206d.jpg', 41)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (31, N'4e156c1b-a285-4eda-9946-93f741e2206d.jpg', 42)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (32, N'd02f0ab1-4873-4c5c-816a-e27704115fcb.jpg', 43)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (33, N'd02f0ab1-4873-4c5c-816a-e27704115fcb.jpg', 44)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (34, N'd02f0ab1-4873-4c5c-816a-e27704115fcb.jpg', 45)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (35, N'd02f0ab1-4873-4c5c-816a-e27704115fcb.jpg', 46)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (36, N'd02f0ab1-4873-4c5c-816a-e27704115fcb.jpg', 47)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (37, N'd02f0ab1-4873-4c5c-816a-e27704115fcb.jpg', 48)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (38, N'd02f0ab1-4873-4c5c-816a-e27704115fcb.jpg', 49)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (39, N'd02f0ab1-4873-4c5c-816a-e27704115fcb.jpg', 50)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (40, N'd02f0ab1-4873-4c5c-816a-e27704115fcb.jpg', 51)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (41, N'd02f0ab1-4873-4c5c-816a-e27704115fcb.jpg', 52)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (42, N'd02f0ab1-4873-4c5c-816a-e27704115fcb.jpg', 53)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (43, N'd02f0ab1-4873-4c5c-816a-e27704115fcb.jpg', 54)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (44, N'd02f0ab1-4873-4c5c-816a-e27704115fcb.jpg', 55)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (45, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 56)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (46, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 57)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (49, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 66)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (50, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 67)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (51, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 68)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (52, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 69)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (53, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 70)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (54, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 71)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (55, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 72)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (56, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 73)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (57, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 74)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (58, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 75)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (59, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 76)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (60, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 77)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (61, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 78)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (62, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 79)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (64, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 90)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (65, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 91)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (66, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 92)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (67, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 93)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (68, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 94)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (69, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 95)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (70, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 96)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (71, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 97)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (72, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 97)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (73, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 99)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (75, N'cad8d316-005e-4dd4-97c0-0d206b7c2be0.jpg', 100)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (76, N'ddea6a74-09be-424f-ad60-8c05dcc5049c.png', 101)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (77, N'ddea6a74-09be-424f-ad60-8c05dcc5049c.png', 102)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (78, N'ddea6a74-09be-424f-ad60-8c05dcc5049c.png', 103)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (81, N'ddea6a74-09be-424f-ad60-8c05dcc5049c.png', 106)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (82, N'ddea6a74-09be-424f-ad60-8c05dcc5049c.png', 107)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (83, N'ddea6a74-09be-424f-ad60-8c05dcc5049c.png', 108)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (84, N'ddea6a74-09be-424f-ad60-8c05dcc5049c.png', 109)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (86, N'ddea6a74-09be-424f-ad60-8c05dcc5049c.png', 112)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (87, N'ddea6a74-09be-424f-ad60-8c05dcc5049c.png', 113)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (88, N'ddea6a74-09be-424f-ad60-8c05dcc5049c.png', 114)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (89, N'ddea6a74-09be-424f-ad60-8c05dcc5049c.png', 115)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (90, N'ddea6a74-09be-424f-ad60-8c05dcc5049c.png', 116)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (91, N'ddea6a74-09be-424f-ad60-8c05dcc5049c.png', 117)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (92, N'ddea6a74-09be-424f-ad60-8c05dcc5049c.png', 118)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (93, N'ddea6a74-09be-424f-ad60-8c05dcc5049c.png', 119)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (94, N'ddea6a74-09be-424f-ad60-8c05dcc5049c.png', 120)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (95, N'ddea6a74-09be-424f-ad60-8c05dcc5049c.png', 121)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (96, N'ddea6a74-09be-424f-ad60-8c05dcc5049c.png', 122)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (98, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 131)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (99, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 132)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (100, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 133)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (101, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 134)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (102, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 135)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (103, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 136)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (104, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 137)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (105, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 138)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (106, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 139)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (107, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 140)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (108, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 141)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (109, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 142)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (110, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 143)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (111, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 144)
GO
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (113, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 149)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (114, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 148)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (115, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 147)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (117, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 150)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (118, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 151)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (119, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 152)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (120, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 153)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (121, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 154)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (122, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 155)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (123, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 156)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (124, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 157)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (125, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 158)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (126, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 159)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (127, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 160)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (128, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 161)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (129, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 162)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (130, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 163)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (131, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 164)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (132, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 165)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (133, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 166)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (134, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 167)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (135, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 168)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (136, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 169)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (137, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 170)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (138, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 171)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (139, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 172)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (140, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 173)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (141, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 174)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (142, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 175)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (143, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 176)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (144, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 177)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (145, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 178)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (146, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 179)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (147, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 180)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (148, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 181)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (149, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 182)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (150, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 183)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (151, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 184)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (152, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 185)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (153, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 186)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (154, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 187)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (155, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 188)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (156, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 189)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (157, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 190)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (158, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 191)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (159, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 192)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (160, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 193)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (161, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 194)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (162, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 195)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (163, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 196)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (164, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 197)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (165, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 198)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (166, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 199)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (167, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 200)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (168, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 201)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (169, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 202)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (170, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 203)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (171, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 204)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (172, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 205)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (173, N'235f783e-5c34-4575-ac98-f67631afbe3d.jpg', 206)
SET IDENTITY_INSERT [dbo].[product_image] OFF
GO
SET IDENTITY_INSERT [dbo].[province] ON 

INSERT [dbo].[province] ([id], [code], [name]) VALUES (1, N'VN-44', N'An Giang')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (2, N'VN-43', N'Bà Rịa–Vũng Tàu')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (3, N'VN-54', N'Bắc Giang')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (4, N'VN-53', N'Bắc Kạn')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (5, N'VN-55', N'Bạc Liêu')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (6, N'VN-56', N'Bắc Ninh')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (7, N'VN-50', N'Bến Tre')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (8, N'VN-31', N'Bình Định')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (9, N'VN-57', N'Bình Dương')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (10, N'VN-58', N'Bình Phước')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (11, N'VN-40', N'Bình Thuận')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (12, N'VN-59', N'Cà Mau')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (13, N'VN-CT', N'Cần Thơ')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (14, N'VN-04', N'Cao Bằng')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (15, N'VN-DN', N'Đà Nẵng')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (16, N'VN-33', N'Đắk Lắk')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (17, N'VN-72', N'Đắk Nông')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (18, N'VN-71', N'Điện Biên')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (19, N'VN-39', N'Đồng Nai')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (20, N'VN-45', N'Đồng Tháp')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (21, N'VN-30', N'Gia Lai')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (22, N'VN-03', N'Hà Giang')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (23, N'VN-63', N'Hà Nam')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (24, N'VN-HN', N'Hà Nội')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (25, N'VN-23', N'Hà Tĩnh')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (26, N'VN-61', N'Hải Dương')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (27, N'VN-HP', N'Hải Phòng')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (28, N'VN-73', N'Hậu Giang')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (29, N'VN-SG', N'Hồ Chí Minh')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (30, N'VN-14', N'Hòa Bình')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (31, N'VN-66', N'Hưng Yên')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (32, N'VN-34', N'Khánh Hòa')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (33, N'VN-47', N'Kiên Giang')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (34, N'VN-28', N'Kon Tum')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (35, N'VN-01', N'Lai Châu')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (36, N'VN-35', N'Lâm Đồng')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (37, N'VN-09', N'Lạng Sơn')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (38, N'VN-02', N'Lào Cai')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (39, N'VN-41', N'Long An')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (40, N'VN-67', N'Nam Định')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (41, N'VN-22', N'Nghệ An')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (42, N'VN-18', N'Ninh Bình')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (43, N'VN-36', N'Ninh Thuận')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (44, N'VN-68', N'Phú Thọ')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (45, N'VN-32', N'Phú Yên')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (46, N'VN-24', N'Quảng Bình')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (47, N'VN-27', N'Quảng Nam')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (48, N'VN-29', N'Quảng Ngãi')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (49, N'VN-13', N'Quảng Ninh')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (50, N'VN-25', N'Quảng Trị')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (51, N'VN-52', N'Sóc Trăng')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (52, N'VN-05', N'Sơn La')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (53, N'VN-37', N'Tây Ninh')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (54, N'VN-20', N'Thái Bình')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (55, N'VN-69', N'Thái Nguyên')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (56, N'VN-21', N'Thanh Hóa')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (57, N'VN-26', N'Thừa Thiên Huế')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (58, N'VN-46', N'Tiền Giang')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (59, N'VN-51', N'Trà Vinh')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (60, N'VN-07', N'Tuyên Quang')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (61, N'VN-49', N'Vĩnh Long')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (62, N'VN-70', N'Vĩnh Phúc')
INSERT [dbo].[province] ([id], [code], [name]) VALUES (63, N'VN-06', N'Yên Bái')
SET IDENTITY_INSERT [dbo].[province] OFF
GO
INSERT [dbo].[temp_month] ([month], [name]) VALUES (1, N'Jan')
INSERT [dbo].[temp_month] ([month], [name]) VALUES (2, N'feb')
INSERT [dbo].[temp_month] ([month], [name]) VALUES (3, N'mar')
INSERT [dbo].[temp_month] ([month], [name]) VALUES (4, N'apr')
INSERT [dbo].[temp_month] ([month], [name]) VALUES (5, N'may')
INSERT [dbo].[temp_month] ([month], [name]) VALUES (6, N'jun')
INSERT [dbo].[temp_month] ([month], [name]) VALUES (7, N'jul')
INSERT [dbo].[temp_month] ([month], [name]) VALUES (8, N'aug')
INSERT [dbo].[temp_month] ([month], [name]) VALUES (9, N'sep')
INSERT [dbo].[temp_month] ([month], [name]) VALUES (10, N'oct')
INSERT [dbo].[temp_month] ([month], [name]) VALUES (11, N'nov')
INSERT [dbo].[temp_month] ([month], [name]) VALUES (12, N'dec')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UN_province]    Script Date: 28/04/2021 02:53:34 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [UN_province] ON [dbo].[province]
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[account] ADD  CONSTRAINT [DF_account_date_created]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[account] ADD  CONSTRAINT [DF__account__role__3F466844]  DEFAULT (user_name()) FOR [role]
GO
ALTER TABLE [dbo].[account] ADD  CONSTRAINT [DF__account__status__403A8C7D]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[comment] ADD  CONSTRAINT [DF_comment_date_created]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[order] ADD  CONSTRAINT [DF_order_date_created]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[order] ADD  CONSTRAINT [DF_order_order_status_id]  DEFAULT ((1)) FOR [order_status_id]
GO
ALTER TABLE [dbo].[product] ADD  CONSTRAINT [DF_product_date_created]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[product] ADD  CONSTRAINT [DF__product__status__5070F446]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FKm1rmnfcvq5mk26li4lit88pc5] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FKm1rmnfcvq5mk26li4lit88pc5]
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FKp41h5al2ajp1q0u6ox3i68w61] FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([account_id])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FKp41h5al2ajp1q0u6ox3i68w61]
GO
ALTER TABLE [dbo].[comment_image]  WITH CHECK ADD  CONSTRAINT [FK_comment_image_comment] FOREIGN KEY([comment_id])
REFERENCES [dbo].[comment] ([comment_id])
GO
ALTER TABLE [dbo].[comment_image] CHECK CONSTRAINT [FK_comment_image_comment]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FKcxpcc11kb45j9kjf2qol0pmvm] FOREIGN KEY([order_status_id])
REFERENCES [dbo].[order_status] ([order_status_id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FKcxpcc11kb45j9kjf2qol0pmvm]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FKfir2cy59xrrxiv1w7bok6pv7e] FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([account_id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FKfir2cy59xrrxiv1w7bok6pv7e]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FKgyqbmqrism0pkm2fuesc66ajp] FOREIGN KEY([payment_method_id])
REFERENCES [dbo].[payment_method] ([payment_method_id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FKgyqbmqrism0pkm2fuesc66ajp]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK4onmghajt9jh9quh6ed3lipdn] FOREIGN KEY([product_detail_id])
REFERENCES [dbo].[product_detail] ([product_detail_id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK4onmghajt9jh9quh6ed3lipdn]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FKlb8mofup9mi791hraxt9wlj5u] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([order_id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FKlb8mofup9mi791hraxt9wlj5u]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK1mtsbur82frn64de7balymq9s] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK1mtsbur82frn64de7balymq9s]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FKs6cydsualtsrprvlf2bb3lcam] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brand] ([brand_id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FKs6cydsualtsrprvlf2bb3lcam]
GO
ALTER TABLE [dbo].[product_detail]  WITH CHECK ADD  CONSTRAINT [FKilxoi77ctyin6jn9robktb16c] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[product_detail] CHECK CONSTRAINT [FKilxoi77ctyin6jn9robktb16c]
GO
ALTER TABLE [dbo].[product_image]  WITH CHECK ADD  CONSTRAINT [FK6oo0cvcdtb6qmwsga468uuukk] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[product_image] CHECK CONSTRAINT [FK6oo0cvcdtb6qmwsga468uuukk]
GO
USE [master]
GO
ALTER DATABASE [Kopiko] SET  READ_WRITE 
GO
