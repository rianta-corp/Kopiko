USE [master]
GO
/****** Object:  Database [Kopiko]    Script Date: 30/03/2021 09:19:18 CH ******/
CREATE DATABASE [Kopiko]
GO
USE [Kopiko]
GO
/****** Object:  Table [dbo].[account]    Script Date: 30/03/2021 09:19:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[account](
	[account_id] [bigint] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](250) NULL,
	[avatar] [varchar](255) NULL,
	[date_created] [datetime] NULL CONSTRAINT [DF_account_date_created]  DEFAULT (getdate()),
	[email] [varchar](255) NULL,
	[full_name] [nvarchar](30) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[phone] [varchar](255) NOT NULL,
	[role] [varchar](255) NULL CONSTRAINT [DF__account__role__3F466844]  DEFAULT (user_name()),
	[status] [int] NULL CONSTRAINT [DF__account__status__403A8C7D]  DEFAULT ((1)),
	[username] [varchar](255) NOT NULL,
	[gender] [nvarchar](10) NULL,
	[birthday] [date] NULL,
 CONSTRAINT [PK__account__46A222CDDF6E8AA7] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[brand]    Script Date: 30/03/2021 09:19:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[category]    Script Date: 30/03/2021 09:19:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [bigint] IDENTITY(1,1) NOT NULL,
	[category_code] [varchar](255) NOT NULL,
	[category_name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[comment]    Script Date: 30/03/2021 09:19:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[comment_id] [bigint] IDENTITY(1,1) NOT NULL,
	[content] [ntext] NOT NULL,
	[date_created] [datetime] NULL CONSTRAINT [DF_comment_date_created]  DEFAULT (getdate()),
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
/****** Object:  Table [dbo].[comment_image]    Script Date: 30/03/2021 09:19:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[order]    Script Date: 30/03/2021 09:19:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[order_id] [bigint] IDENTITY(1,1) NOT NULL,
	[date_created] [datetime] NOT NULL CONSTRAINT [DF_order_date_created]  DEFAULT (getdate()),
	[delivery_info] [nvarchar](250) NOT NULL,
	[account_id] [bigint] NOT NULL,
	[order_status_id] [bigint] NOT NULL CONSTRAINT [DF_order_order_status_id]  DEFAULT ((1)),
	[payment_method_id] [bigint] NOT NULL,
	[shipping_fee] [money] NULL,
 CONSTRAINT [PK__order__46596229D5EA9820] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 30/03/2021 09:19:18 CH ******/
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
/****** Object:  Table [dbo].[order_status]    Script Date: 30/03/2021 09:19:18 CH ******/
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
/****** Object:  Table [dbo].[payment_method]    Script Date: 30/03/2021 09:19:18 CH ******/
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
/****** Object:  Table [dbo].[Persistent_Logins]    Script Date: 30/03/2021 09:19:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[product]    Script Date: 30/03/2021 09:19:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [bigint] IDENTITY(1,1) NOT NULL,
	[date_created] [datetime] NULL CONSTRAINT [DF_product_date_created]  DEFAULT (getdate()),
	[description] [ntext] NULL,
	[product_name] [nvarchar](255) NOT NULL,
	[status] [int] NULL CONSTRAINT [DF__product__status__5070F446]  DEFAULT ((1)),
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
/****** Object:  Table [dbo].[product_detail]    Script Date: 30/03/2021 09:19:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_detail](
	[product_detail_id] [bigint] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NOT NULL,
	[size] [nvarchar](20) NOT NULL,
	[product_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product_image]    Script Date: 30/03/2021 09:19:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[product_image](
	[product_image_id] [bigint] IDENTITY(1,1) NOT NULL,
	[image_url] [varchar](255) NOT NULL,
	[product_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[province]    Script Date: 30/03/2021 09:19:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[temp_month]    Script Date: 30/03/2021 09:19:18 CH ******/
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

INSERT [dbo].[account] ([account_id], [address], [avatar], [date_created], [email], [full_name], [password], [phone], [role], [status], [username], [gender], [birthday]) VALUES (1, N'Huế, Việt Nam', N'avatar-admin.jpg', CAST(N'2021-03-23 14:56:44.110' AS DateTime), N'hqk@gmail.com', N'Hoàng Quốc Khánh', N'123456', N'0389829121', N'ADMIN', 1, N'admin', NULL, NULL)
INSERT [dbo].[account] ([account_id], [address], [avatar], [date_created], [email], [full_name], [password], [phone], [role], [status], [username], [gender], [birthday]) VALUES (2, N'Huế, Việt nam', N'avatar-user.png', CAST(N'2021-03-23 14:56:44.110' AS DateTime), N'user1@gmail.com', N'Trần Thiên', N'123456', N'0389829122', N'USER', 1, N'user1 thuan1101', NULL, NULL)
INSERT [dbo].[account] ([account_id], [address], [avatar], [date_created], [email], [full_name], [password], [phone], [role], [status], [username], [gender], [birthday]) VALUES (3, N'Đà Nẵng, Việt nam', N'avatar-user.png', CAST(N'2021-03-23 14:56:44.110' AS DateTime), N'user2@gmail.com', N'Lê Minh Long', N'123456', N'0337843104', N'USER', 1, N'user2', NULL, NULL)
INSERT [dbo].[account] ([account_id], [address], [avatar], [date_created], [email], [full_name], [password], [phone], [role], [status], [username], [gender], [birthday]) VALUES (4, N'TP HCM, Việt Nam', N'avatar-user.png', CAST(N'2021-03-23 14:57:26.997' AS DateTime), N'user3@gmail.com', N'Nguyễn Duy Quý', N'123456', N'0337895556', N'USER', 1, N'user3', NULL, NULL)
INSERT [dbo].[account] ([account_id], [address], [avatar], [date_created], [email], [full_name], [password], [phone], [role], [status], [username], [gender], [birthday]) VALUES (10, N'Hue, VietNam', N'avatar-user.png', CAST(N'2021-03-25 00:00:00.000' AS DateTime), N'tqt@gmail.com', N'Trương Đình Phong', N'123456', N'0389829121', N'USER', 1, N'ryantb', NULL, NULL)
SET IDENTITY_INSERT [dbo].[account] OFF
SET IDENTITY_INSERT [dbo].[brand] ON 

INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (1, N'img1.jsp', N'Adidas', NULL)
INSERT [dbo].[brand] ([brand_id], [brand_img_url], [brand_name], [info]) VALUES (2, N'img2.jsp', N'Quần tây', NULL)
SET IDENTITY_INSERT [dbo].[brand] OFF
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([category_id], [category_code], [category_name]) VALUES (1, N'ao-nam', N'Áo nam')
INSERT [dbo].[category] ([category_id], [category_code], [category_name]) VALUES (2, N'ao-nu', N'Áo nữ')
SET IDENTITY_INSERT [dbo].[category] OFF
SET IDENTITY_INSERT [dbo].[comment] ON 

INSERT [dbo].[comment] ([comment_id], [content], [date_created], [parents_comment_id], [account_id], [product_id], [title]) VALUES (1, N'mình mới nhận hàng hôm sáng, ai cao cao thì nên đặt size XL rất vừa luôn á. Còn hình thì tùy vào góc độ ánh sáng nên mình kh chia sẻ lên được, tóm lại hàng rất ok nên mua nha😘
', CAST(N'2021-03-24 18:06:54.327' AS DateTime), NULL, 2, 2, N'Áo đẹp')
INSERT [dbo].[comment] ([comment_id], [content], [date_created], [parents_comment_id], [account_id], [product_id], [title]) VALUES (2, N'áo đẹp như hình, giao hàng nhanh , chất lượng tốt => nên mua :))
', CAST(N'2021-03-24 18:07:42.017' AS DateTime), NULL, 2, 2, N'Áo cực đẹp')
INSERT [dbo].[comment] ([comment_id], [content], [date_created], [parents_comment_id], [account_id], [product_id], [title]) VALUES (3, N'Sản phẩm tương xứng với giá tiền. Cute hạt me. Đóng gói kỹ, sạch, thơm. Hài lòng với sản phẩm này.
', CAST(N'2021-03-24 18:08:06.070' AS DateTime), NULL, 1, 2, N'Cực kỳ hài lòng')
INSERT [dbo].[comment] ([comment_id], [content], [date_created], [parents_comment_id], [account_id], [product_id], [title]) VALUES (4, N'sdvsdv', CAST(N'2021-03-26 00:00:00.000' AS DateTime), NULL, 1, 2, N'Sân khấu')
INSERT [dbo].[comment] ([comment_id], [content], [date_created], [parents_comment_id], [account_id], [product_id], [title]) VALUES (5, N'thôi a idhvvsdv', CAST(N'2021-03-26 00:00:00.000' AS DateTime), NULL, 1, 2, N'Sân khấu')
INSERT [dbo].[comment] ([comment_id], [content], [date_created], [parents_comment_id], [account_id], [product_id], [title]) VALUES (6, N'ahihi đồ ngốk', CAST(N'2021-03-26 00:00:00.000' AS DateTime), NULL, 1, 2, N'Sân khấu')
INSERT [dbo].[comment] ([comment_id], [content], [date_created], [parents_comment_id], [account_id], [product_id], [title]) VALUES (7, N'ái chà chà', CAST(N'2021-03-26 00:00:00.000' AS DateTime), NULL, 1, 2, N'Test thôi')
INSERT [dbo].[comment] ([comment_id], [content], [date_created], [parents_comment_id], [account_id], [product_id], [title]) VALUES (8, N'Ahihi đồ ngốc', CAST(N'2021-03-27 00:00:00.000' AS DateTime), NULL, 1, 2, N'MC')
INSERT [dbo].[comment] ([comment_id], [content], [date_created], [parents_comment_id], [account_id], [product_id], [title]) VALUES (9, N'ahihi dôdf nốc', CAST(N'2021-03-27 00:00:00.000' AS DateTime), NULL, 1, 2, N'Sân khấu')
INSERT [dbo].[comment] ([comment_id], [content], [date_created], [parents_comment_id], [account_id], [product_id], [title]) VALUES (10, N'...,âcs', CAST(N'2021-03-30 00:00:00.000' AS DateTime), NULL, 1, 2, N'Sân khấu')
INSERT [dbo].[comment] ([comment_id], [content], [date_created], [parents_comment_id], [account_id], [product_id], [title]) VALUES (11, N'ss pjsd ', CAST(N'2021-03-30 00:00:00.000' AS DateTime), NULL, 1, 2, N'Test thôi')
SET IDENTITY_INSERT [dbo].[comment] OFF
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([order_id], [date_created], [delivery_info], [account_id], [order_status_id], [payment_method_id], [shipping_fee]) VALUES (1, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'Tổ 1, Hương Chữ, Hương Trà, Huế, Việt Nam', 2, 4, 1, 50000.0000)
INSERT [dbo].[order] ([order_id], [date_created], [delivery_info], [account_id], [order_status_id], [payment_method_id], [shipping_fee]) VALUES (2, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'FPT Complex, Hải Hoà, Đà Nẵng, Việt Nam', 3, 2, 2, 50000.0000)
INSERT [dbo].[order] ([order_id], [date_created], [delivery_info], [account_id], [order_status_id], [payment_method_id], [shipping_fee]) VALUES (3, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'P.Vĩnh Ninh, TP Huế, Việt Nam', 4, 5, 3, 50000.0000)
INSERT [dbo].[order] ([order_id], [date_created], [delivery_info], [account_id], [order_status_id], [payment_method_id], [shipping_fee]) VALUES (10, CAST(N'2021-03-28 00:00:00.000' AS DateTime), N'Khách hàng: Hoàng Quốc Khánh;Sđt: 0123456789;Địa chỉ: Huế, Việt Nam', 1, 1, 5, 50000.0000)
INSERT [dbo].[order] ([order_id], [date_created], [delivery_info], [account_id], [order_status_id], [payment_method_id], [shipping_fee]) VALUES (11, CAST(N'2021-03-28 00:00:00.000' AS DateTime), N'Khách hàng: Hoàng Quốc Khánh;Sđt: 0123456789;Địa chỉ: Huế, Việt Nam', 1, 1, 1, 50000.0000)
INSERT [dbo].[order] ([order_id], [date_created], [delivery_info], [account_id], [order_status_id], [payment_method_id], [shipping_fee]) VALUES (12, CAST(N'2021-03-28 00:00:00.000' AS DateTime), N'Khách hàng: Hoàng Quốc Khánh;Sđt: 0123456789;Địa chỉ: Huế, Việt Nam', 1, 1, 5, 50000.0000)
SET IDENTITY_INSERT [dbo].[order] OFF
SET IDENTITY_INSERT [dbo].[order_detail] ON 

INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [sale_price], [order_id], [product_detail_id]) VALUES (1, 10, 100000.0000, 1, 2)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [sale_price], [order_id], [product_detail_id]) VALUES (2, 15, 200000.0000, 1, 3)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [sale_price], [order_id], [product_detail_id]) VALUES (3, 20, 150000.0000, 1, 4)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [sale_price], [order_id], [product_detail_id]) VALUES (5, 3, 500000.0000, 1, 6)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [sale_price], [order_id], [product_detail_id]) VALUES (7, 5, 1000000.0000, 2, 10)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [sale_price], [order_id], [product_detail_id]) VALUES (8, 20, 1500000.0000, 2, 2)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [sale_price], [order_id], [product_detail_id]) VALUES (11, 1, 100000.0000, 10, 1)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [sale_price], [order_id], [product_detail_id]) VALUES (12, 12, 100000.0000, 11, 1)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [sale_price], [order_id], [product_detail_id]) VALUES (13, 15, 100000.0000, 11, 2)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [sale_price], [order_id], [product_detail_id]) VALUES (14, 17, 100000.0000, 11, 4)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [sale_price], [order_id], [product_detail_id]) VALUES (15, 100, 100000.0000, 12, 1)
SET IDENTITY_INSERT [dbo].[order_detail] OFF
SET IDENTITY_INSERT [dbo].[order_status] ON 

INSERT [dbo].[order_status] ([order_status_id], [status_name]) VALUES (1, N'Chờ xác nhận')
INSERT [dbo].[order_status] ([order_status_id], [status_name]) VALUES (2, N'Đã xác nhận')
INSERT [dbo].[order_status] ([order_status_id], [status_name]) VALUES (3, N'Đang giao hàng')
INSERT [dbo].[order_status] ([order_status_id], [status_name]) VALUES (4, N'Đã giao hàng')
INSERT [dbo].[order_status] ([order_status_id], [status_name]) VALUES (5, N'Huỷ đơn hàng')
SET IDENTITY_INSERT [dbo].[order_status] OFF
SET IDENTITY_INSERT [dbo].[payment_method] ON 

INSERT [dbo].[payment_method] ([payment_method_id], [payment_method_name]) VALUES (1, N'Nhận hàng và thanh toán')
INSERT [dbo].[payment_method] ([payment_method_id], [payment_method_name]) VALUES (2, N'Thanh toán bằng thẻ quốc tế Visa, Master, JCB')
INSERT [dbo].[payment_method] ([payment_method_id], [payment_method_name]) VALUES (3, N'Thang toán bằng thẻ ATM nội địa/Internet Banking')
INSERT [dbo].[payment_method] ([payment_method_id], [payment_method_name]) VALUES (4, N'Thanh toán bằng ví Momo')
INSERT [dbo].[payment_method] ([payment_method_id], [payment_method_name]) VALUES (5, N'Thanh toán bằng ZaloPay')
INSERT [dbo].[payment_method] ([payment_method_id], [payment_method_name]) VALUES (6, N'Thanh toán bằng ViettelPay')
SET IDENTITY_INSERT [dbo].[payment_method] OFF
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (2, CAST(N'2020-03-03 00:00:00.000' AS DateTime), N'gút chóp em đầu cắt moi gút chóp em đầu cắt moi gút chóp em đầu cắt moi gút chóp em đầu cắt moi gút chóp em đầu cắt moi', N'Áo khoác jeans nam in hình cún dễ thương mặt cười cc', 1, 1, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (3, CAST(N'2021-03-20 00:00:00.000' AS DateTime), N'ok ok', N'Tau sẽ đặt một cái tên dài dằng dặc dằng dặc dằng dặc dằng dặc dằng dặc dằng dặc dằng dặc dằng dặc dằng dặc dằng dặc dằng dặc', 1, 2, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (4, CAST(N'2021-03-20 00:00:00.000' AS DateTime), N'ừ thì ', N'Áo ko xấu ko đẹp', 1, 1, 2, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (6, CAST(N'2021-03-22 00:00:00.000' AS DateTime), N'còn gì nữa đâu mà khóc với sầu', N'còn gì nữa đâu mà khóc với sầu', 1, 1, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (10, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'sdvsdsd', N'sdvsdv', 1, 1, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (11, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'sdvsdvsd', N'sdvsd', 1, 1, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (12, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'svsdv', N'sdvsd', 1, 1, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (13, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'sdvsdv', N'sdvsd', 1, 1, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (20, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'ÁVSADVSADV', N'SADVSADVSDAV', 1, 1, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (21, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'ÁVDSADGEẢGAV', N'ÁDVSADVSADV', 1, 1, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (22, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'BEBFDBEARA', N'SAVÁVADV', 1, 1, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (23, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'gút chóp em đầu cắt moi gút chóp em đầu cắt moi gút chóp em đầu cắt moi gút chóp em đầu cắt moi gút chóp em đầu cắt moi', N'Áo đẹp nè', 1, 2, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (24, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'gút chóp em đầu cắt moi gút chóp em đầu cắt moi gút chóp em đầu cắt moi gút chóp em đầu cắt moi gút chóp em đầu cắt moi', N'Áo đẹp nè', 1, 2, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (25, CAST(N'2021-03-25 00:00:00.000' AS DateTime), N'Ahihi hihihi', N'còn gì nữa đâu mà khóc với sầu hihi', 1, 2, 1, 200000.0000, 175000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (26, CAST(N'2021-03-30 00:00:00.000' AS DateTime), N'không chê', N'còn gì nữa đâu mà khóc với sầu update', 1, 1, 1, 200.0000, 100.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (27, CAST(N'2021-03-30 00:00:00.000' AS DateTime), N'không chê', N'còn gì nữa đâu mà khóc với sầu update', 1, 1, 1, 200.0000, 100.0000)
SET IDENTITY_INSERT [dbo].[product] OFF
SET IDENTITY_INSERT [dbo].[product_detail] ON 

INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (1, 10, N'10', 2)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (2, 10, N'15', 3)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (3, 10, N'10', 2)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (4, 10, N'10', 4)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (5, 10, N'XL', 2)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (6, 10, N'XXL', 3)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (7, 15, N'L', 4)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (8, 10, N'XL', 3)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (9, 15, N'XL', 4)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (10, 15, N'XXL', 2)
SET IDENTITY_INSERT [dbo].[product_detail] OFF
SET IDENTITY_INSERT [dbo].[product_image] ON 

INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (5, N'53a25d2c-9d0d-4791-b883-ee251bc1e8fe.jpg', 3)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (6, N'ce08169c-678f-4a61-bbd6-38fcac0d63b2.jpg', 3)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (7, N'9a8970e5-3862-4e40-80a0-e2cd29aca227.jpg', 3)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (8, N'63a42a53-3ad0-4d73-91e8-876029f9769e.jpg', 3)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (9, N'32a397aa-bf67-48cb-b896-c0d29634a068.jpg', 2)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (10, N'29a60b6c-655d-455b-a25a-7dafe532ffa5.jpg', 2)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (11, N'69ff02c3-64de-463f-a2bf-b76022fb7f10.jpg', 2)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (12, N'5ab4cbca-25e8-4580-ad0b-01cf4bc4ed4b.jpg', 2)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (13, N'ba0d7a09-4d16-4b36-bcff-7644fd215526.jpg', 4)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (14, N'70314583-b932-4fae-bdea-845910c7ac97.jpg', 4)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (15, N'89e88967-8d7d-461b-8ef3-aacbbbc40a4b.jpg', 4)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (16, N'dcf46dec-f0c7-4ef5-935c-fb75540bad5c.jpg', 4)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (17, N'99cd94e3-bc3e-4951-ac1a-718655cff479.jpg', 6)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (18, N'85d83f04-b5d6-4e5b-8574-c4c6beb127ac.jpg', 6)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (19, N'ef8232b5-7d7c-406a-b38b-5e1dcb487ed9.jpg', 10)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (20, N'1649b29d-b2ef-4349-8e69-0945d9877cc3.jpg', 10)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (21, N'884409be-4bb7-4ae0-bfd9-80f0ae7145e9.jpg', 11)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (22, N'6af8810f-71a3-460e-ad2b-609b6b66a4e2.jpg', 11)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (23, N'6c858a36-9d4e-4a89-9503-0d499275e654.jpg', 11)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (24, N'00896f3e-b531-4479-8645-0448b0a7d55e.jpg', 21)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (25, N'e99080de-d948-42b4-b523-e5b91064ddc4.jpg', 21)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (26, N'df885a9a-f81a-4bfc-b9b8-efc0cf56334d.jpg', 21)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (27, N'6da64c34-52df-4ea4-85e1-789999592ad2.jpg', 20)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (28, N'7d2857b0-709d-4d22-a868-4fd33e13cc3a.jpg', 20)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (29, N'85d62a72-4a3b-460a-a3a8-3bf940c2f39f.jpg', 20)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (30, N'd8bf090b-7e1a-40f6-b124-4c6caa7af37a.jpg', 13)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (31, N'336ae940-43c8-45a2-afb2-5e24ee1924a0.jpg', 13)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (32, N'd0eb22d4-2f48-4d23-9034-931cc86a9fca.jpg', 12)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (33, N'a9ab822c-70fc-4024-a8f9-b4f155490ae3.jpg', 12)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (34, N'b6b4dd8a-45e4-46c1-8c0a-709adaea824a.jpg', 25)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (35, N'084507f7-eec0-4fe6-a101-042623385baa.jpg', 25)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (36, N'2d933ce3-9178-4295-a641-03d3f06f929b.jpg', 25)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (37, N'b408c55c-4a5c-46ae-b408-9d27bf927d4b.jpg', 22)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (38, N'acab16ac-0e34-4936-a268-a013756d3bf3.jpg', 26)
INSERT [dbo].[product_image] ([product_image_id], [image_url], [product_id]) VALUES (39, N'e0826b49-0ee5-419e-b91c-ffdf110c0adb.jpg', 27)
SET IDENTITY_INSERT [dbo].[product_image] OFF
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
SET ANSI_PADDING ON

GO
/****** Object:  Index [UN_province]    Script Date: 30/03/2021 09:19:18 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [UN_province] ON [dbo].[province]
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
