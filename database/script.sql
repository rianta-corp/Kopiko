USE [master]
GO
/****** Object:  Database [Kopiko]    Script Date: 26/03/2021 04:45:55 CH ******/
CREATE DATABASE [Kopiko]
GO
USE [Kopiko]
GO
/****** Object:  Table [dbo].[account]    Script Date: 26/03/2021 04:45:55 CH ******/
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
	[date_created] [datetime] NOT NULL CONSTRAINT [DF_account_date_created]  DEFAULT (getdate()),
	[email] [varchar](255) NULL,
	[full_name] [nvarchar](30) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[phone] [varchar](255) NOT NULL,
	[role] [varchar](255) NOT NULL CONSTRAINT [DF__account__role__3F466844]  DEFAULT (user_name()),
	[status] [int] NOT NULL CONSTRAINT [DF__account__status__403A8C7D]  DEFAULT ((1)),
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
/****** Object:  Table [dbo].[brand]    Script Date: 26/03/2021 04:45:56 CH ******/
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
/****** Object:  Table [dbo].[category]    Script Date: 26/03/2021 04:45:56 CH ******/
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
/****** Object:  Table [dbo].[comment]    Script Date: 26/03/2021 04:45:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[comment_id] [bigint] IDENTITY(1,1) NOT NULL,
	[content] [ntext] NOT NULL,
	[date_created] [datetime] NOT NULL CONSTRAINT [DF_comment_date_created]  DEFAULT (getdate()),
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
/****** Object:  Table [dbo].[comment_image]    Script Date: 26/03/2021 04:45:56 CH ******/
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
/****** Object:  Table [dbo].[employee]    Script Date: 26/03/2021 04:45:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee](
	[id] [numeric](19, 0) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[phone] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hibernate_sequence]    Script Date: 26/03/2021 04:45:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hibernate_sequence](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[order]    Script Date: 26/03/2021 04:45:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[order_id] [bigint] IDENTITY(1,1) NOT NULL,
	[date_created] [datetime] NOT NULL CONSTRAINT [DF_order_date_created]  DEFAULT (getdate()),
	[delivery_info] [nvarchar](250) NOT NULL,
	[account_id] [bigint] NOT NULL,
	[order_status_id] [bigint] NOT NULL,
	[payment_method_id] [bigint] NOT NULL,
 CONSTRAINT [PK__order__46596229D5EA9820] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 26/03/2021 04:45:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[order_detail_id] [bigint] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NOT NULL,
	[sale_price] [money] NOT NULL,
	[order_id] [bigint] NOT NULL,
	[product_id] [bigint] NOT NULL,
	[product_size] [nvarchar](20) NULL,
 CONSTRAINT [PK__order_de__3C5A408087CB8967] PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[order_status]    Script Date: 26/03/2021 04:45:56 CH ******/
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
/****** Object:  Table [dbo].[payment_method]    Script Date: 26/03/2021 04:45:56 CH ******/
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
/****** Object:  Table [dbo].[product]    Script Date: 26/03/2021 04:45:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [bigint] IDENTITY(1,1) NOT NULL,
	[date_created] [datetime] NOT NULL CONSTRAINT [DF_product_date_created]  DEFAULT (getdate()),
	[description] [ntext] NULL,
	[product_name] [nvarchar](255) NOT NULL,
	[status] [int] NOT NULL CONSTRAINT [DF__product__status__5070F446]  DEFAULT ((1)),
	[brand_id] [bigint] NULL,
	[category_id] [bigint] NULL,
	[price] [money] NOT NULL,
	[sale_price] [money] NOT NULL,
 CONSTRAINT [PK__product__47027DF58182CBF0] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product_detail]    Script Date: 26/03/2021 04:45:56 CH ******/
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
/****** Object:  Table [dbo].[product_image]    Script Date: 26/03/2021 04:45:56 CH ******/
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
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([account_id], [address], [avatar], [date_created], [email], [full_name], [password], [phone], [role], [status], [username], [gender], [birthday]) VALUES (1, N'Huế, Việt Nam', NULL, CAST(N'2021-03-01 00:00:06.670' AS DateTime), N'admin@gmail.com', N'Đại k', N'123456', N'0123456789', N'ADMIN', 1, N'admin', NULL, NULL)
INSERT [dbo].[account] ([account_id], [address], [avatar], [date_created], [email], [full_name], [password], [phone], [role], [status], [username], [gender], [birthday]) VALUES (2, N'Huế, Việt nam', NULL, CAST(N'2021-03-01 00:00:06.673' AS DateTime), N'user1@gmail.com', N'User 1', N'123456', N'0389829122', N'USER', 1, N'user1', NULL, NULL)
INSERT [dbo].[account] ([account_id], [address], [avatar], [date_created], [email], [full_name], [password], [phone], [role], [status], [username], [gender], [birthday]) VALUES (3, N'Đà Nẵng, Việt nam', NULL, CAST(N'2021-03-23 14:56:44.110' AS DateTime), N'user2@gmail.com', N'User 2', N'123456', N'0337843104', N'USER', 1, N'user2', NULL, NULL)
INSERT [dbo].[account] ([account_id], [address], [avatar], [date_created], [email], [full_name], [password], [phone], [role], [status], [username], [gender], [birthday]) VALUES (4, N'TP HCM, Việt Nam', NULL, CAST(N'2021-03-23 14:57:26.997' AS DateTime), N'user3@gmail.com', N'User 3', N'123456', N'0337895556', N'USER', 1, N'user3', NULL, NULL)
INSERT [dbo].[account] ([account_id], [address], [avatar], [date_created], [email], [full_name], [password], [phone], [role], [status], [username], [gender], [birthday]) VALUES (10, N'Hue, VietNam', NULL, CAST(N'2021-03-25 00:00:00.000' AS DateTime), N'tqt@gmail.com', N'Hoang Quoc Khanh', N'123456', N'0389829121', N'USER', 1, N'ryantb', NULL, NULL)
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
SET IDENTITY_INSERT [dbo].[comment] OFF
INSERT [dbo].[hibernate_sequence] ([next_val]) VALUES (CAST(1 AS Numeric(19, 0)))
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([order_id], [date_created], [delivery_info], [account_id], [order_status_id], [payment_method_id]) VALUES (1, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'Tổ 1, Hương Chữ, Hương Trà, Huế, Việt Nam', 2, 4, 1)
INSERT [dbo].[order] ([order_id], [date_created], [delivery_info], [account_id], [order_status_id], [payment_method_id]) VALUES (2, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'FPT Complex, Hải Hoà, Đà Nẵng, Việt Nam', 3, 2, 2)
INSERT [dbo].[order] ([order_id], [date_created], [delivery_info], [account_id], [order_status_id], [payment_method_id]) VALUES (3, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'P.Vĩnh Ninh, TP Huế, Việt Nam', 4, 5, 3)
SET IDENTITY_INSERT [dbo].[order] OFF
SET IDENTITY_INSERT [dbo].[order_detail] ON 

INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [sale_price], [order_id], [product_id], [product_size]) VALUES (1, 10, 100000.0000, 1, 2, NULL)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [sale_price], [order_id], [product_id], [product_size]) VALUES (2, 15, 200000.0000, 1, 3, NULL)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [sale_price], [order_id], [product_id], [product_size]) VALUES (3, 20, 150000.0000, 1, 4, NULL)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [sale_price], [order_id], [product_id], [product_size]) VALUES (5, 3, 500000.0000, 1, 6, NULL)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [sale_price], [order_id], [product_id], [product_size]) VALUES (7, 5, 1000000.0000, 2, 10, NULL)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [sale_price], [order_id], [product_id], [product_size]) VALUES (8, 20, 1500000.0000, 2, 2, NULL)
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
SET IDENTITY_INSERT [dbo].[payment_method] OFF
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (2, CAST(N'2020-03-03 00:00:00.000' AS DateTime), N'gút chóp em đầu cắt moi gút chóp em đầu cắt moi gút chóp em đầu cắt moi gút chóp em đầu cắt moi gút chóp em đầu cắt moi', N'Áo khoác jeans nam in hình cún dễ thương mặt cười', 0, 1, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (3, CAST(N'2021-03-20 00:00:00.000' AS DateTime), N'ok ok', N'Tau sẽ đặt một cái tên dài dằng dặc dằng dặc dằng dặc dằng dặc dằng dặc dằng dặc dằng dặc dằng dặc dằng dặc dằng dặc dằng dặc', 0, 2, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (4, CAST(N'2021-03-20 00:00:00.000' AS DateTime), N'ừ thì ', N'Áo ko xấu ko đẹp', 0, 1, 2, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (6, CAST(N'2021-03-22 00:00:00.000' AS DateTime), N'còn gì nữa đâu mà khóc với sầu', N'còn gì nữa đâu mà khóc với sầu', 0, 1, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (10, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'sdvsdsd', N'sdvsdv', 0, 1, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (11, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'sdvsdvsd', N'sdvsd', 0, 1, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (12, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'svsdv', N'sdvsd', 1, 1, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (13, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'sdvsdv', N'sdvsd', 1, 1, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (20, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'ÁVSADVSADV', N'SADVSADVSDAV', 1, 1, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (21, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'ÁVDSADGEẢGAV', N'ÁDVSADVSADV', 1, 1, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (22, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'BEBFDBEARA', N'SAVÁVADV', 1, 1, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (23, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'gút chóp em đầu cắt moi gút chóp em đầu cắt moi gút chóp em đầu cắt moi gút chóp em đầu cắt moi gút chóp em đầu cắt moi', N'Áo đẹp nè', 1, 2, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (24, CAST(N'2021-03-23 00:00:00.000' AS DateTime), N'gút chóp em đầu cắt moi gút chóp em đầu cắt moi gút chóp em đầu cắt moi gút chóp em đầu cắt moi gút chóp em đầu cắt moi', N'Áo đẹp nè', 1, 2, 1, 100000.0000, 100000.0000)
INSERT [dbo].[product] ([product_id], [date_created], [description], [product_name], [status], [brand_id], [category_id], [price], [sale_price]) VALUES (25, CAST(N'2021-03-25 00:00:00.000' AS DateTime), N'Ahihi hihihi', N'còn gì nữa đâu mà khóc với sầu hihi', 0, 2, 1, 200000.0000, 175000.0000)
SET IDENTITY_INSERT [dbo].[product] OFF
SET IDENTITY_INSERT [dbo].[product_detail] ON 

INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (1, 10, N'10', 2)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (2, 10, N'15', 3)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (3, 10, N'10', 2)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [size], [product_id]) VALUES (4, 10, N'10', 4)
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
SET IDENTITY_INSERT [dbo].[product_image] OFF
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
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FKb8bg2bkty0oksa3wiq5mp5qnc] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FKb8bg2bkty0oksa3wiq5mp5qnc]
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
