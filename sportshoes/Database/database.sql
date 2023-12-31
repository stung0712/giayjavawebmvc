	create database qlbh
	go
USE qlbh
GO
/****** Object:  Table [dbo].[admin_users]    Script Date: 12/11/2019 3:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[level] [nvarchar](255) NULL,
	[remember_token] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 12/11/2019 3:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[slug] [nvarchar](255) NULL,
	[parent_id] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detail_imgs]    Script Date: 12/11/2019 3:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detail_imgs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[images_url] [text] NULL,
	[pro_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_details]    Script Date: 12/11/2019 3:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pro_id] [int] NOT NULL,
	[qty] [int] NULL,
	[o_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 12/11/2019 3:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[qty] [int] NULL,
	[sub_total] [float] NULL,
	[total] [float] NULL,
	[status] [int] NULL,
	[type] [nvarchar](50) NULL,
	[note] [text] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pro_details]    Script Date: 12/11/2019 3:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pro_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cpu] [nvarchar](255) NULL,
	[ram] [nvarchar](255) NULL,
	[screen] [nvarchar](255) NULL,
	[vga] [nvarchar](255) NULL,
	[storage] [nvarchar](255) NULL,
	[exten_memmory] [nvarchar](255) NULL,
	[cam1] [nvarchar](255) NULL,
	[cam2] [nvarchar](255) NULL,
	[connect] [nvarchar](255) NULL,
	[pin] [nvarchar](255) NULL,
	[os] [nvarchar](255) NULL,
	[note] [ntext] NULL,
	[pro_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[sim] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 12/11/2019 3:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[slug] [nvarchar](255) NULL,
	[intro] [nvarchar](255) NULL,
	[packet] [nvarchar](255) NULL,
	[promo1] [nvarchar](255) NULL,
	[promo2] [nvarchar](255) NULL,
	[promo3] [nvarchar](255) NULL,
	[images] [nvarchar](255) NULL,
	[price] [float] NULL,
	[tag] [nvarchar](255) NULL,
	[status] [int] NULL,
	[review] [ntext] NULL,
	[cat_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 12/11/2019 3:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[status] [int] NULL,
	[remember_token] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin_users] ON 

INSERT [dbo].[admin_users] ([id], [name], [email], [password], [level], [remember_token], [created_at], [updated_at]) VALUES (1, N'Admin', N'admin@gmail.com', N'123', N'1', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[admin_users] OFF
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([id], [name], [slug], [parent_id], [created_at], [updated_at]) VALUES (1, N'Adidas', N'adidas', 0, NULL, CAST(N'2019-12-07T15:22:27.930' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [slug], [parent_id], [created_at], [updated_at]) VALUES (2, N'Nike', N'nike', 0, NULL, CAST(N'2019-12-07T15:22:32.453' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [slug], [parent_id], [created_at], [updated_at]) VALUES (3, N'Converes', N'converes', 0, NULL, CAST(N'2019-12-07T15:22:43.193' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [slug], [parent_id], [created_at], [updated_at]) VALUES (4, N'Puma''s', N'puma''s', 0, NULL, CAST(N'2019-12-07T15:22:50.207' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [slug], [parent_id], [created_at], [updated_at]) VALUES (11, N'Vans', N'vans', 0, CAST(N'2019-12-07T15:23:09.103' AS DateTime), NULL)
INSERT [dbo].[categories] ([id], [name], [slug], [parent_id], [created_at], [updated_at]) VALUES (12, N'Gucci', N'gucci', 0, CAST(N'2019-12-07T15:23:33.173' AS DateTime), NULL)
INSERT [dbo].[categories] ([id], [name], [slug], [parent_id], [created_at], [updated_at]) VALUES (13, N'Balenciaga', N'balenciaga', 0, CAST(N'2019-12-07T15:23:44.227' AS DateTime), CAST(N'2019-12-07T15:23:53.137' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [slug], [parent_id], [created_at], [updated_at]) VALUES (14, N'New Balance', N'new-balance', 0, CAST(N'2019-12-07T15:24:06.567' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[categories] OFF
SET IDENTITY_INSERT [dbo].[detail_imgs] ON 

INSERT [dbo].[detail_imgs] ([id], [images_url], [pro_id], [created_at], [updated_at]) VALUES (6, N'giaynike2.jpg', 27, CAST(N'2019-12-08T23:13:47.957' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[detail_imgs] OFF
SET IDENTITY_INSERT [dbo].[order_details] ON 

INSERT [dbo].[order_details] ([id], [pro_id], [qty], [o_id], [created_at], [updated_at]) VALUES (13, 18, 2, 9, CAST(N'2019-12-06T22:36:44.127' AS DateTime), NULL)
INSERT [dbo].[order_details] ([id], [pro_id], [qty], [o_id], [created_at], [updated_at]) VALUES (14, 18, 1, 10, CAST(N'2019-12-07T14:09:22.767' AS DateTime), NULL)
INSERT [dbo].[order_details] ([id], [pro_id], [qty], [o_id], [created_at], [updated_at]) VALUES (15, 18, 2, 11, CAST(N'2019-12-07T16:37:58.980' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[order_details] OFF
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([id], [qty], [sub_total], [total], [status], [type], [note], [created_at], [updated_at], [user_id]) VALUES (9, NULL, NULL, 600000, 1, NULL, NULL, CAST(N'2019-12-06T22:36:44.067' AS DateTime), CAST(N'2019-12-06T22:37:31.390' AS DateTime), 3)
INSERT [dbo].[orders] ([id], [qty], [sub_total], [total], [status], [type], [note], [created_at], [updated_at], [user_id]) VALUES (10, NULL, NULL, 300000, 1, NULL, NULL, CAST(N'2019-12-07T14:09:22.753' AS DateTime), CAST(N'2019-12-07T14:09:42.457' AS DateTime), 3)
INSERT [dbo].[orders] ([id], [qty], [sub_total], [total], [status], [type], [note], [created_at], [updated_at], [user_id]) VALUES (11, NULL, NULL, 600000, NULL, NULL, NULL, CAST(N'2019-12-07T16:37:58.890' AS DateTime), NULL, 3)
SET IDENTITY_INSERT [dbo].[orders] OFF
SET IDENTITY_INSERT [dbo].[pro_details] ON 

INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (21, N'đủ loại size', N'Đen, Đỏ', N'', N'', N'10', N'', N'', N'', N'', N'', N'', NULL, 19, CAST(N'2019-12-07T13:52:28.167' AS DateTime), CAST(N'2019-12-11T14:52:57.443' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (22, N'Full size', N'Trắng và Xanh', N'', N'', N'20', N'', N'', N'', N'', N'', N'', NULL, 20, CAST(N'2019-12-07T14:14:52.133' AS DateTime), CAST(N'2019-12-11T14:53:10.567' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (23, N'Full Size', N'Xám', N'', N'', N'10', N'', N'', N'', N'', N'', N'', NULL, 21, CAST(N'2019-12-07T14:21:35.420' AS DateTime), CAST(N'2019-12-11T14:53:23.003' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (24, N'Full Size', N'Trắng đỏ', N'', N'', N'25', N'', N'', N'', N'', N'', N'', NULL, 22, CAST(N'2019-12-07T14:51:16.097' AS DateTime), CAST(N'2019-12-11T14:53:35.363' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (28, N'Full SIze', N'Trắng', N'', N'', N'20', N'', N'', N'', N'', N'', N'', NULL, 26, CAST(N'2019-12-07T15:16:28.307' AS DateTime), CAST(N'2019-12-11T14:53:47.107' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (29, N'Full Size', N'Đen', N'', N'', N'10 Đôi', N'', N'', N'', N'', N'', N'', NULL, 27, CAST(N'2019-12-07T15:27:49.800' AS DateTime), CAST(N'2019-12-11T14:53:58.310' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (30, N'Full Size', N'Đen', N'', N'', N'20 Đôi', N'', N'', N'', N'', N'', N'', NULL, 28, CAST(N'2019-12-07T15:33:33.617' AS DateTime), CAST(N'2019-12-11T14:54:12.420' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (31, N'Full Size', N'Trắng Đen', N'', N'', N'20', N'', N'', N'', N'', N'', N'', NULL, 29, CAST(N'2019-12-07T15:37:34.987' AS DateTime), CAST(N'2019-12-11T14:54:23.337' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (32, N'Full Size', N'Xám', N'', N'', N'10', N'', N'', N'', N'', N'', N'', NULL, 30, CAST(N'2019-12-07T15:46:12.977' AS DateTime), CAST(N'2019-12-11T14:54:34.467' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (33, N'Full Size', N'Trắng', N'', N'', N'10', N'', N'', N'', N'', N'', N'', NULL, 31, CAST(N'2019-12-07T15:53:03.413' AS DateTime), CAST(N'2019-12-11T14:54:48.807' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (34, N'Full Size', N'Trắng ', N'', N'', N'10', N'', N'', N'', N'', N'', N'', NULL, 32, CAST(N'2019-12-07T15:54:50.220' AS DateTime), CAST(N'2019-12-11T14:55:00.480' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (37, N'Full Size từ 36-43', N'Đen', N'', N'', N'10', N'', N'', N'', N'', N'', N'', NULL, 18, CAST(N'2019-12-08T23:10:18.390' AS DateTime), CAST(N'2019-12-11T14:52:45.833' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (38, N'Size 39,40', N'Trắng kem', N'', N'', N'10', N'', N'', N'', N'', N'', N'', NULL, 34, CAST(N'2019-12-08T23:19:01.097' AS DateTime), CAST(N'2019-12-11T14:55:14.223' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (39, N'Full Size', N'Trắng Đen', N'', N'', N'10', N'', N'', N'', N'', N'', N'', NULL, 35, CAST(N'2019-12-11T10:04:25.530' AS DateTime), CAST(N'2019-12-11T14:55:26.757' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (40, N'Full Size', N'Trắng Xám', N'', N'', N'20', N'', N'', N'', N'', N'', N'', NULL, 36, CAST(N'2019-12-11T10:06:25.063' AS DateTime), CAST(N'2019-12-11T14:55:44.017' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (41, N'Full Size', N'Đen', N'', N'', N'25', N'', N'', N'', N'', N'', N'', NULL, 37, CAST(N'2019-12-11T10:08:54.510' AS DateTime), CAST(N'2019-12-11T14:56:06.667' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (42, N'Full Size', N'Đen Trắng', N'', N'', N'26', N'', N'', N'', N'', N'', N'', NULL, 38, CAST(N'2019-12-11T10:10:35.053' AS DateTime), CAST(N'2019-12-11T14:56:17.307' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (43, N'Full Size', N'Đen Xám', NULL, NULL, N'30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, CAST(N'2019-12-11T10:12:14.823' AS DateTime), NULL, NULL)
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (44, N'37, 38, 39.5', N'Đen và Xanh', N'', N'', N'20', N'', N'', N'', N'', N'', N'', NULL, 40, CAST(N'2019-12-11T10:17:13.060' AS DateTime), CAST(N'2019-12-11T14:56:27.343' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (45, N'EU', N'Đen và Trắng', N'', N'', N'30', N'', N'', N'', N'', N'', N'', NULL, 41, CAST(N'2019-12-11T10:21:51.593' AS DateTime), CAST(N'2019-12-11T14:56:36.700' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (46, N'US và EU', N'Đen và Trắng', N'', N'', N'20', N'', N'', N'', N'', N'', N'', NULL, 42, CAST(N'2019-12-11T10:24:29.913' AS DateTime), CAST(N'2019-12-11T14:56:47.020' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (47, N'EU', N'1.400.000', N'', N'', N'20', N'', N'', N'', N'', N'', N'', NULL, 43, CAST(N'2019-12-11T10:26:21.837' AS DateTime), CAST(N'2019-12-11T14:56:59.677' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (48, N'Full Size', N'Xanh', N'', N'', N'20', N'', N'', N'', N'', N'', N'', NULL, 44, CAST(N'2019-12-11T10:28:32.233' AS DateTime), CAST(N'2019-12-11T14:57:12.037' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (49, N'Full Size', N'Trắng', N'', N'', N'20', N'', N'', N'', N'', N'', N'', NULL, 45, CAST(N'2019-12-11T10:33:41.127' AS DateTime), CAST(N'2019-12-11T14:57:21.857' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (50, N'EU', N'Đen', N'', N'', N'30', N'', N'', N'', N'', N'', N'', NULL, 46, CAST(N'2019-12-11T10:35:32.980' AS DateTime), CAST(N'2019-12-11T14:57:33.557' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (51, N'EU', N'Trắng', N'', N'', N'20', N'', N'', N'', N'', N'', N'', NULL, 47, CAST(N'2019-12-11T10:36:28.093' AS DateTime), CAST(N'2019-12-11T14:57:43.550' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (52, N'EU', N'Trắng', N'', N'', N'30', N'', N'', N'', N'', N'', N'', NULL, 48, CAST(N'2019-12-11T10:37:26.363' AS DateTime), CAST(N'2019-12-11T14:58:01.410' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (53, N'36-42', N'Xanh', N'', N'', N'10', N'', N'', N'', N'', N'', N'', NULL, 49, CAST(N'2019-12-11T10:40:17.430' AS DateTime), CAST(N'2019-12-11T14:58:12.890' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (54, N'13', N'Đen', NULL, NULL, N'10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, CAST(N'2019-12-11T10:41:38.107' AS DateTime), NULL, NULL)
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (55, N'Full Size', N'Xám Hồng', N'', N'', N'10', N'', N'', N'', N'', N'', N'', NULL, 51, CAST(N'2019-12-11T10:43:04.967' AS DateTime), CAST(N'2019-12-11T14:58:23.140' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (56, N'Size 38-43', N'Vàng', N'', N'', N'20', N'', N'', N'', N'', N'', N'', NULL, 52, CAST(N'2019-12-11T10:46:13.033' AS DateTime), CAST(N'2019-12-11T14:58:33.637' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (57, N'Size 36-39', N'Trắng Hồng', N'', N'', N'10', N'', N'', N'', N'', N'', N'', NULL, 53, CAST(N'2019-12-11T10:47:18.577' AS DateTime), CAST(N'2019-12-11T14:58:42.117' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (58, N'Size từ 38-44', N'Trắng đen', N'', N'', N'10', N'', N'', N'', N'', N'', N'', NULL, 54, CAST(N'2019-12-11T10:48:53.967' AS DateTime), CAST(N'2019-12-11T14:58:51.717' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (59, N'Size từ 36-39', N'Trắng Kem', N'', N'', N'10', N'', N'', N'', N'', N'', N'', NULL, 55, CAST(N'2019-12-11T11:01:54.613' AS DateTime), CAST(N'2019-12-11T14:59:00.900' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (60, N'Size 36-44', N'Trắng', N'', N'', N'20', N'', N'', N'', N'', N'', N'', NULL, 56, CAST(N'2019-12-11T11:04:40.973' AS DateTime), CAST(N'2019-12-11T14:59:11.257' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (61, N'Size 46-43', N'Trắng', N'', N'', N'20', N'', N'', N'', N'', N'', N'', NULL, 57, CAST(N'2019-12-11T11:06:13.410' AS DateTime), CAST(N'2019-12-11T14:59:20.890' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (62, N'Size 36-44', N'Trắng', N'', N'', N'10', N'', N'', N'', N'', N'', N'', NULL, 58, CAST(N'2019-12-11T11:07:57.917' AS DateTime), CAST(N'2019-12-11T14:59:30.323' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (63, N'Size 36-43', N'Trắng Đen', N'', N'', N'5', N'', N'', N'', N'', N'', N'', NULL, 59, CAST(N'2019-12-11T11:11:29.510' AS DateTime), CAST(N'2019-12-11T14:59:40.520' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (64, N'Size 36-43', N'Đen', N'', N'', N'10', N'', N'', N'', N'', N'', N'', NULL, 60, CAST(N'2019-12-11T11:12:38.673' AS DateTime), CAST(N'2019-12-11T14:59:48.873' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (65, N'Full Size 36-43', N'Kem', N'', N'', N'20', N'', N'', N'', N'', N'', N'', NULL, 61, CAST(N'2019-12-11T11:14:18.390' AS DateTime), CAST(N'2019-12-11T14:59:59.047' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (66, N'Full Size từ 36-43', N'Đen', N'', N'', N'10', N'', N'', N'', N'', N'', N'', NULL, 62, CAST(N'2019-12-11T11:18:07.547' AS DateTime), CAST(N'2019-12-11T15:00:07.167' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (67, N'Size từ 36-43', N'Má Đỏ', N'', N'', N'10', N'', N'', N'', N'', N'', N'', NULL, 63, CAST(N'2019-12-11T11:20:11.660' AS DateTime), CAST(N'2019-12-11T15:00:15.577' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (68, N'Size từ 36-39', N'Hồng phản quang', N'', N'', N'10', N'', N'', N'', N'', N'', N'', NULL, 64, CAST(N'2019-12-11T11:21:53.180' AS DateTime), CAST(N'2019-12-11T15:00:24.630' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (69, N'Size EU từ 36-43', N'Trắng Xám', N'', N'', N'10', N'', N'', N'', N'', N'', N'', NULL, 65, CAST(N'2019-12-11T11:23:49.087' AS DateTime), CAST(N'2019-12-11T15:00:34.177' AS DateTime), N'')
INSERT [dbo].[pro_details] ([id], [cpu], [ram], [screen], [vga], [storage], [exten_memmory], [cam1], [cam2], [connect], [pin], [os], [note], [pro_id], [created_at], [updated_at], [sim]) VALUES (70, N'Size : 36 - 43', N'Trắng Xám', N'', N'', N'10', N'', N'', N'', N'', N'', N'', NULL, 66, CAST(N'2019-12-11T11:25:01.377' AS DateTime), CAST(N'2019-12-11T15:00:43.607' AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[pro_details] OFF
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (18, N'Adidas Continental 80 “Black/Scarlet”', N'adidas-continental-80-dblack/scarletd', N'', N'', N'', N'', N'', N'14.jpg', 1390000000, N'', 1, N'Đôi giày đế thấp này được lấy cảm hứng từ giày thể thao đầu những năm 1980. Chúng được làm bằng da nguyên hạt siêu mềm. Một dải hai tông màu tinh tế ở bên thân giày và logo gần dây buộc mang đến một phong cách cổ điển. Đế cao su đặc biệt cho cảm giác cực kỳ linh hoạt, thoải mái.', 1, CAST(N'2019-12-06T15:40:36.527' AS DateTime), CAST(N'2019-12-11T14:52:45.733' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (19, N'Adidas Barricade 2018', N'adidas-barricade-2018', N'', N'', N'', N'', N'', N'111.jpg', 90000000, N'', 1, N'không có', 1, CAST(N'2019-12-07T13:52:28.057' AS DateTime), CAST(N'2019-12-11T14:52:57.437' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (20, N'adidas [Full Box] Giày thể thao Prophere Trắng Xám', N'adidas-[full-box]-giady-thed-thao-prophere-tradng-xadm', N'', N'', N'', N'', N'', N'giayadidas1.jpg', 60000000, N'', 1, N'Hàng luôn CÓ SẴN, Full Size: 36-44
Full Box: gồm Hộp + Tag khi đóng gói
Liên hệ: Không chín 67.024.456 hoặc nhắn tin cho shop', 1, CAST(N'2019-12-07T14:14:52.123' AS DateTime), CAST(N'2019-12-11T14:53:10.560' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (21, N'Adidas Women''s Alphabounce Beyond Running', N'adidas-women''s-alphabounce-beyond-running', N'', N'', N'', N'', N'', N'giayadidas2.jpg', 29000000, N'', 1, N'lưới thép
Phù hợp thường xuyên
Ren đóng cửa
Khoanh vùng Forgedmesh trên
Đệm midsole Bounce linh hoạt
Xây dựng giống như sock ôm chân', 1, CAST(N'2019-12-07T14:21:35.413' AS DateTime), CAST(N'2019-12-11T14:53:22.953' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (22, N'Adidas Men''s Barricade Court 3 Tennis Shoe', N'adidas-men''s-barricade-court-3-tennis-shoe', N'', N'', N'', N'', N'', N'giaya.jpg', 10000000, N'', 1, N'Với phần đế bằng lưới thoáng khí và đế giữa dạng mây tạo cảm giác bước chân siêu mềm mại, những đôi giày tennis nam này cho phép bạn tiếp tục với trò chơi của mình mà không bị phân tâm. Hỗ trợ giữa bàn chân tăng thêm sự ổn định để kiểm soát tốt hơn trong các cuộc biểu tình dữ dội, trong khi đế ngoài Adiwear mang lại khả năng phục hồi tối cao.', 1, CAST(N'2019-12-07T14:51:16.080' AS DateTime), CAST(N'2019-12-11T14:53:35.353' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (26, N'Nike Air Max 97 9 Vàng', N'nike-air-max-97-9-vadng', N'', N'', N'', N'', N'', N'giaynike1.jpg', 46792500, N'', 1, N'không', 2, CAST(N'2019-12-07T15:16:28.287' AS DateTime), CAST(N'2019-12-11T14:53:47.087' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (27, N'Nike Vapor Max 95', N'nike-vapor-max-95', N'', N'', N'', N'', N'', N'giaynike2.jpg', 50000000, N'', 1, N'Không có', 2, CAST(N'2019-12-07T15:27:49.797' AS DateTime), CAST(N'2019-12-11T14:53:58.297' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (28, N'Nike Joyride Dual Run', N'nike-joyride-dual-run', N'', N'', N'', N'', N'', N'giaynike3.jpg', 20000000, N'', 1, N'Nike Joyride Dual Run được thiết kế để giúp cho việc chạy bộ trở nên dễ dàng hơn và mang lại cho đôi chân của bạn một ngày nghỉ. Các hạt bọt nhỏ li ti dưới đường viền chân của bạn để đệm đứng lên theo số dặm của bạn.', 2, CAST(N'2019-12-07T15:33:33.603' AS DateTime), CAST(N'2019-12-11T14:54:12.223' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (29, N'Nike Joyride Dual Run', N'nike-joyride-dual-run', N'', N'', N'', N'', N'', N'giaynike4.jpg', 40000000, N'', 1, N'Nike Joyride Dual Run làm bùng nổ tuyến đường riêng của nó. Các hạt xốp nhỏ dưới chân kết hợp với đệm truyền thống ở bàn chân trước mang lại cảm giác cực kỳ mịn màng cho đường chân của bạn', 2, CAST(N'2019-12-07T15:37:34.980' AS DateTime), CAST(N'2019-12-11T14:54:23.330' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (30, N'Adidas LeBron  Go Shoes Men\''s', N'adidas-lebron--go-shoes-men\''s', N'', N'', N'', N'', N'', N'giayadidas6.jpg', 26000000, N'', 1, N'LeBron 17 khai thác sức mạnh và tốc độ của LeBron với sự ngăn chặn và hỗ trợ cho sự thống trị của tất cả các tòa án. Nó có một sự pha trộn nhẹ của các sợi đan và đúc nhiệt mang lại cho mỗi người một cái nhìn và cảm giác bền. Đệm kết hợp cung cấp cho LeBron khả năng hỗ trợ tác động và phản hồi năng lượng đáp ứng mà anh ta cần để cung cấp năng lượng trong suốt mùa giải dài.', 1, CAST(N'2019-12-07T15:46:12.967' AS DateTime), CAST(N'2019-12-11T14:54:34.460' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (31, N'Adidas Women\''s Barricade Court Tennis Shoe', N'adidas-women\''s-barricade-court-tennis-shoe', N'', N'', N'', N'', N'', N'giayadidas7.jpg', 10000000, N'', 1, N'Barricade khai thác sức mạnh và tốc độ của Barricadevới sự ngăn chặn và hỗ trợ cho sự thống trị của tất cả các tòa án. Nó có một sự pha trộn nhẹ của các sợi đan và đúc nhiệt mang lại cho mỗi người một cái nhìn và cảm giác bền. Đệm kết hợp cung cấp cho Barricadekhả năng hỗ trợ tác động và phản hồi năng lượng đáp ứng mà anh ta cần để cung cấp năng lượng trong suốt mùa giải dài.', 1, CAST(N'2019-12-07T15:53:03.407' AS DateTime), CAST(N'2019-12-11T14:54:48.780' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (32, N'Adidas Barricade Classic Bounce Tennis Shoe', N'adidas-barricade-classic-bounce-tennis-shoe', N'', N'', N'', N'', N'', N'giayadidas8.jpg', 12000000, N'', 1, N'Adidas Barricade Classic Bounce có một bước tiến so với người tiền nhiệm với hiệu năng mượt mà, nhẹ và vẻ ngoài táo bạo. Một đường viền trên Flyknit được cập nhật đến chân của bạn với thiết kế tối giản, hỗ trợ. Dưới chân, công nghệ Nike React bền bỉ thách thức tỷ lệ cược bằng cách vừa mềm mại vừa nhạy bén, cho sự thoải mái kéo dài miễn là bạn có thể chạy.', 1, CAST(N'2019-12-07T15:54:50.210' AS DateTime), CAST(N'2019-12-11T14:55:00.467' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (34, N'Adidas Duramo 9 W “Beige”', N'adidas-duramo-9-w-dbeiged', N'', N'', N'', N'', N'', N'giayadidas10.jpg', 9900000, N'', 1, N'Đôi giày chạy đa năng dành cho nam này rất lý tưởng cho máy chạy bộ hoặc đường mòn. Chúng có thân giày đan lưới dễ thở và lớp phủ in liền mạch để hỗ trợ chân. Đế Cloudfoam mềm mại mỗi sải chân, trong khi đế ngoài bền bỉ giữ cho mặc hàng ngày.', 1, CAST(N'2019-12-08T23:19:01.090' AS DateTime), CAST(N'2019-12-11T14:55:14.217' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (35, N'Nike Air Max 97', N'nike-air-max-97', N'', N'', N'', N'', N'', N'giaynike6.jpg', 13924000, N'', 1, N'Màu mới Ocean Heart Bullet Co đã ký # nike của quy trình tần số cao sáu luồng màu xanh trắng tối đa 97 màu xanh bạc.
* Nhà cung cấp này hoạt động trên thị trường Vì số lượng lớn các kiểu, bạn không thể đi khắp các kệ. Các ông chủ cần nó có thể gửi một bức tranh và nói về nó

:: Giá cả hàng hóa công bằng, Chất lượng cũng được đảm bảo. Chúng tôi sẽ kiểm tra cẩn thận từng sản phẩm trước khi giao hàng. Người mua có thể mua nó một cách an toàn.', 2, CAST(N'2019-12-11T10:04:25.507' AS DateTime), CAST(N'2019-12-11T14:55:26.750' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (36, N'Nike Air Force 1 Mid', N'nike-air-force-1-mid', N'', N'', N'', N'', N'', N'giaynike7.jpg', 23400000, N'', 1, N'✔️Đủ size nam nữ : 36-43
✔️Full box
✔️Hàng chất
✔️Giá rẻ
✔️Quý khách cứ yên tâm , chúng tôi đem đến cho quý khách những sản phẩm chất lượng nhất với giá thành hợp lý nhất
✔️Bảo hành do lỗi sản sản xuất : 1 tháng
✔️Cam kết:
💠Hàng 100% như hình
💠Giá siêu cạnh tranh
💠Kiểm hàng TRƯỚC - thu tiền SAU
💠Giao hàng toàn quốc
❌ Quy định đổi trả hàng:
✅Quý khách có thể đổi trả sản phẩm trong vòng 3 ngày ngay sau khi nhận được đơn hàng cho những trường hợp sau (Sản phẩm chưa qua sử dụng)
1️⃣Hàng lỗi do sản xuất
2️⃣Hàng giao sai
3️⃣Trường hợp khách muốn đổi do không ưng,không hợp,không thích,đổi size .... Shop chúng tôi chỉ đổi hoặc hoàn lại 70% giá trị sản phẩm . Chi phí vận chuyển đổi trả khách hàng sẽ chịu 100%.', 2, CAST(N'2019-12-11T10:06:25.057' AS DateTime), CAST(N'2019-12-11T14:55:44.007' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (37, N'Nike Air Force 1 Low', N'nike-air-force-1-low', N'', N'', N'', N'', N'', N'giaynike8.jpg', 23187380, N'', 1, N'Nike Air Force 1 ''07 AF1 Candy Powder Air Force 1 Giày đế thấp

# Giày, # Nike, # NikeForces, # AJ1, # sneakers, # Puma, # Adidas, # AF1, # Boots, # Dunksb, # airjordan1, # airmax, # adv, # nikeairforce1, # tba, # nikeb, # m2ktek ,

Chào mừng đến với QueenPandora Queen❤!

Giới thiệu về vận chuyển: Tất cả các sản phẩm là vận chuyển xuyên biên giới. vì vậy nó sẽ mất 10-20 ngày về phía bạn.

Ef Tiền hoàn lại hoặc trao đổi bây giờ không có sẵn, vì chi phí vận chuyển và thời gian thực sự dài.

Ny Dù sao, tôi hy vọng bạn có thể tìm thấy điều gì đó đặc biệt. Nếu bạn có bất kỳ câu hỏi hoặc nhận xét nào, tôi rất thích nghe chúng.

Hãy vui mừng thời gian của bạn ở đây!', 2, CAST(N'2019-12-11T10:08:54.500' AS DateTime), CAST(N'2019-12-11T14:56:06.647' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (38, N'Nike Air Force 1 High', N'nike-air-force-1-high', N'', N'', N'', N'', N'', N'giaynike10.jpg', 23199990, N'', 1, N'Được phát hành lần đầu vào năm 1982, Nike Air Force 1 là mẫu Nike đầu tiên có công nghệ "Air". Giày sneaker bóng rổ huyền thoại này được thiết kế bởi Bruce Kilgore, và được đặt theo tên của chiếc máy bay chở Tổng thống Hoa Kỳ, Air Force One. Air Force 1 là sneaker phổ biến nhất của Nike cho đến nay, đã được sản xuất trong gần 2.000 màu sắc khác nhau, và có sẵn trong các mẫu thấp, trung bình và cao cấp.', 2, CAST(N'2019-12-11T10:10:35.043' AS DateTime), CAST(N'2019-12-11T14:56:17.300' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (39, N'Nike Vapor Max 2019', N'nike-vapor-max-2019', NULL, NULL, NULL, NULL, NULL, N'giaynike10.jpg', 2611241, NULL, 1, N' nhãn hiệu Nike / Nike; 
 không có chức năngSố mục ar6631; Thời gian 
 ra thị trường vào mùa hè năm 2019; 
 có thể giải trí và đi bộ trong cảnh 
, nam giới', 2, CAST(N'2019-12-11T10:12:14.817' AS DateTime), NULL)
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (40, N'Converse Chuck Taylor All Star II Đen', N'converse-chuck-taylor-all-star-ii-den', N'', N'', N'', N'', N'', N'converse1.jpg', 15300000, N'', 1, N'Màu sắc đa dạng cho bạn dễ lựa chọn

Đường may vô cùng tỉ mỉ, tinh tế

Chất vải canvas nhẹ, tạo cảm giác thoải mái

Logo thương hiệu được bố trí nổi bật trên sản phẩm', 3, CAST(N'2019-12-11T10:17:13.050' AS DateTime), CAST(N'2019-12-11T14:56:27.337' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (41, N'Converse Giày Chuck All Star Classic 121186', N'converse-giady-chuck-all-star-classic-121186', N'', N'', N'', N'', N'', N'converse2.jpg', 14500000, N'', 1, N'HÀNG CHÍNH HÃNG
- Thiết kế cổ điển
- Chất liệu: Canvas
- Lớp lót trong: Textlie
- Chất liệu đế: Đế bằng cao su tổng hợp, xẻ rãnh chống trơn trượt.
- Khoen tròn giúp thoáng khí.
- Biểu tượng logo ở lưỡi và gót chân.
- Size US : 3-12, Size EU: 35-46
- Thời gian bảo hành: 1 tháng
- Loại hình bảo hành: Cửa hàng
- Xuất xứ: Việt Nam
GÓI KÈM HỘP ĐỘC QUYỀN DRAKE', 3, CAST(N'2019-12-11T10:21:51.583' AS DateTime), CAST(N'2019-12-11T14:56:36.697' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (42, N'Converse Giày Chuck Taylor All Star Classic 121178', N'converse-giady-chuck-taylor-all-star-classic-121178', N'', N'', N'', N'', N'', N'converse3.jpg', 1350000000, N'', 1, N'HÀNG CHÍNH HÃNG
- Thiết kế cổ điển
- Chất liệu: Canvas
- Lớp lót trong: Textlie
- Chất liệu đế: Đế bằng cao su tổng hợp, xẻ rãnh chống trơn trượt.
- Khoen tròn giúp thoáng khí.
- Biểu tượng logo ở lưỡi và gót chân.
- Size US : 3-12, Size EU: 35-46
- Thời gian bảo hành: 1 tháng
- Loại hình bảo hành: Cửa hàng
- Xuất xứ: Việt Nam
GÓI KÈM HỘP ĐỘC QUYỀN DRAKE', 3, CAST(N'2019-12-11T10:24:29.907' AS DateTime), CAST(N'2019-12-11T14:56:47.013' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (43, N'Converse Giày Chuck Taylor All Star Glam Dunk Hi 565213C', N'converse-giady-chuck-taylor-all-star-glam-dunk-hi-565213c', N'', N'', N'', N'', N'', N'converse4.jpg', 9500000, N'', 1, N'Họa tiết Chevron độc đáo.Chất liệu vải canvas dày dặn, bền đẹp.Đường may tinh tế, tỉ mỉ.Phần đế trắng mang nét cổ điển hoàn hảo.Màu sắc cơ bản, phối đồ dễ dàng cho mọi hoàn cảnh.', 3, CAST(N'2019-12-11T10:26:21.833' AS DateTime), CAST(N'2019-12-11T14:56:59.670' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (44, N'Converse Kids\'' Street Heather Canvas Slip on Sneaker', N'converse-kids\''-street-heather-canvas-slip-on-sneaker', N'', N'', N'', N'', N'', N'converse5.jpg', 11351380, N'', 1, N'Một sắc sảo trên chuck taylor cổ điển tất cả hình bóng ngôi sao. Được xây dựng bằng vải bạt bền trong một thiết kế trượt để dễ dàng bật và tắt. Một cổ áo độn và lưỡi cung cấp thêm sự thoải mái, đế ngoài bằng cao su mang lại lực kéo bền bỉ và đế eva mang lại cho họ lớp đệm cả ngày mà họ cần.', 3, CAST(N'2019-12-11T10:28:32.227' AS DateTime), CAST(N'2019-12-11T14:57:12.023' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (45, N'Converse Men\''s Point Man Ox White/Red Fashion Sneaker', N'converse-men\''s-point-man-ox-white/red-fashion-sneaker', N'', N'', N'', N'', N'', N'converse6.jpg', 14701180, N'', 1, N'Chất liệu canvas dày dặn, bền đẹp, dễ dàng vệ sinh.

Đường chỉ may tinh tế.

Phối đồ dễ dàng cho mọi hoàn cảnh.

Mũi giày được bọc lớp da với màu bạc ánh kim

Logo bên hông thân giày kết hợp với chất liệu đặc biệt lạ mắt', 3, CAST(N'2019-12-11T10:33:41.120' AS DateTime), CAST(N'2019-12-11T14:57:21.850' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (46, N'Puma Giày Suede Classic Metallic', N'puma-giady-suede-classic-metallic', N'', N'', N'', N'', N'', N'puma1.jpg', NULL, N'', 1, N'Mã sản phẩm: 367397-03
Phần trên của PUMA Suede Classic Metallic được làm từ chất liệu da lộn cao cấp, mềm mịn kết hợp cấu trúc dạng tất giúp chân ôm khít
Phần đế giày được làm bằng cao su lưu hóa, êm ái và ma sát tốt.
Lót giày dày dặn, êm ái giúp chân luôn thoải mái dù mang giày suốt cả ngày.
Các đường chỉ khâu thẳng hàng rất tinh tế và chắc chắn.
Logo Puma được đặt tinh tế và tạo điểm nhấn riêng cho đôi giày.', 4, CAST(N'2019-12-11T10:35:32.977' AS DateTime), CAST(N'2019-12-11T14:57:33.547' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (47, N'Puma Giày Roma Classic', N'puma-giady-roma-classic', N'', N'', N'', N'', N'', N'puma2.jpg', 17500000, N'', 1, N'Mã sản phẩm: 365598-03
Phần trên của Giày Puma Roma Classic được làm từ chất liệu da cao cấp, mềm mại, dễ vệ sinh
Phần đế giày được làm từ cao su lưu hóa với độ bền cao, đế thiết kế xương cá mang lại độ ma sát tốt.
Lót giày dày dặn, êm ái giúp chân luôn thoải mái dù mang giày suốt cả ngày.
Các đường chỉ khâu thẳng hàng rất tinh tế và chắc chắn.
Logo Puma và chữ Puma Roma ở mặt trên rất tinh tế và tạo điểm nhấn riêng cho đôi giày.
Trọng lượng của đôi giày rất nhẹ.', 4, CAST(N'2019-12-11T10:36:28.087' AS DateTime), CAST(N'2019-12-11T14:57:43.540' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (48, N'PUMA Giày BMW MMS Speed Evo Synth', N'puma-giady-bmw-mms-speed-evo-synth', N'', N'', N'', N'', N'', N'puma3.jpg', 19900000, N'', 1, N'Phần trên của Giày Puma BMW Motorsport SpeedCat Evo Synth được làm từ chất liệu tổng hợp, mềm, nhẹ và dễ vệ sinh.
Phần đế giày đàn hồi tốt, êm ái và tăng sự thoải mái mỗi bước đi.
Lót giày dày dặn, êm ái giúp chân luôn thoải mái dù mang giày suốt cả ngày.
Các đường chỉ khâu thẳng hàng rất tinh tế và chắc chắn.
Logo PUMA Cat ở lưỡi gà
PUMA Formstripe ở các mặt bên
Thương hiệu BMW Motorsport ở gót
Trọng lượng của đôi giày rất nhẹ.', 4, CAST(N'2019-12-11T10:37:26.353' AS DateTime), CAST(N'2019-12-11T14:58:01.403' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (49, N'PUMA Women\''s Thunder Fashion Sneakers', N'puma-women\''s-thunder-fashion-sneakers', N'', N'', N'', N'', N'', N'puma5.jpg', 14317260, N'', 1, N'Chưa có bài đánh giá về loại giày này', 4, CAST(N'2019-12-11T10:40:17.423' AS DateTime), CAST(N'2019-12-11T14:58:12.883' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (50, N'PUMA Men\''s Turin Fashion Sneaker', N'puma-men\''s-turin-fashion-sneaker', NULL, NULL, NULL, NULL, NULL, N'puma5.jpg', 1707613, NULL, 1, N'Chưa có bài đánh giá chi tiết về sản phẩm này', 4, CAST(N'2019-12-11T10:41:38.100' AS DateTime), NULL)
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (51, N'PUMA Men\''s Pacer Next CAGE Slip ON Sneaker', N'puma-men\''s-pacer-next-cage-slip-on-sneaker', N'', N'', N'', N'', N'', N'puma6.jpg', 10808430, N'', 1, N'Chưa có bài đánh giá chi tiết về sản phẩm này', 4, CAST(N'2019-12-11T10:43:04.963' AS DateTime), CAST(N'2019-12-11T14:58:23.137' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (52, N'Vans Giày Old Skool Vàng Nam Nữ', N'vans-giady-old-skool-vadng-nam-nud', N'', N'', N'', N'', N'', N'vans1.jpg', 4500000, N'', 1, N'Giày Vans Old Skool Vàng Nam Nữ
- Đi êm chân, form chuẩn, ôm chân.
- Có độ chống dính, chống trơn trượt tốt.
- Giá thành phù hợp cho học sinh, sinh viên.', 11, CAST(N'2019-12-11T10:46:13.027' AS DateTime), CAST(N'2019-12-11T14:58:33.630' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (53, N'Vans GIÀY VANS OLD SKOOL MADEWELL', N'vans-giady-vans-old-skool-madewell', N'', N'', N'', N'', N'', N'vans2.jpg', 9600000, N'', 1, N'Vans Old Skool
⌨️Các bạn chỉ cần để lại “.” Bobe Storesẽ inbox tư vấn tận tình luôn nhé
Tone xanh tươi mát cho ngày dài thêm năng động với mẫu Old Skool được phối với 3 mảng màu đen/xanh/trắng cực kỳ ấn tượng.
Chất liệu Canvas được kết hợp cùng phần da lộn ở gót chân và mũi chân giúp bạn có những trải nghiệm tốt hơn.
Phần sidestripe bằng da quen thuộc ở hai bên thân giày tạo thêm nét độc đáo.Giày Vans đang hót nhận hiện nay, nhanh tay để đặt hàng các bạn nhé.', 11, CAST(N'2019-12-11T10:47:18.567' AS DateTime), CAST(N'2019-12-11T14:58:42.110' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (54, N'Vans Giày thể thao Classic full size nam nữ', N'vans-giady-thed-thao-classic-full-size-nam-nud', N'', N'', N'', N'', N'', N'vans3.jpg', 3200000, N'', 1, N'Cam kết giá rẻ hơn thị trường từ 50k-200k
✔️ Full size 38-44 +full box + Tag + Giấy Gói
🚀 Bảo hành 06 tháng , hô trợ đổi hàng 3-5 ngày 
♻️ Inbox mình gửi thêm ảnh chi tiết + video', 11, CAST(N'2019-12-11T10:48:53.960' AS DateTime), CAST(N'2019-12-11T14:58:51.713' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (55, N'Gucci Bata Rhyton Sneaker GG Cat', N'gucci-bata-rhyton-sneaker-gg-cat', N'', N'', N'', N'', N'', N'gucci1.jpg', 2900000, N'', 1, N'Giày Shoes Bata Gucci Rhyton Sneaker GG Cat Đơn giản nhưng đẳng cấp  thời thượng, dể dàng kết hợp cùng nhiều trang phục với  Giày Shoes Bata Gucci Rhyton Sneaker GG Ca (như hình và vi deo), phản quang với ánh sáng : giá cả rẻ hơn rất nhiều so với giá trên thị trường', 12, CAST(N'2019-12-11T11:01:54.597' AS DateTime), CAST(N'2019-12-11T14:59:00.897' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (56, N'Gucci Ace Bee (ong )', N'gucci-ace-bee-(ong-)', N'', N'', N'', N'', N'', N'gucci2.jpg', 11700000, N'', 1, N'📍Size: 36- 37- 38- 39- 40- 41- 42- 43- 44
📍Price: 12xx
📍Fullbox
📍Freeship
Ở ĐÂU RẺ NHẤT- CHÚNG TÔI RẺ HƠN', 12, CAST(N'2019-12-11T11:04:40.960' AS DateTime), CAST(N'2019-12-11T14:59:11.250' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (57, N'Giày thể thao Gucci ACE', N'giady-thed-thao-gucci-ace', N'', N'', N'', N'', N'', N'gucci3.jpg', 8550000, N'', 1, N'Vua Sneaker với phương châm UY TÍN – CHẤT LƯỢNG,Shop cam kết các sản phẩm
⛔️ Ảnh thật tại kho hàng - cam đoan chụp bằng cam thường và không hề chỉnh sửa , nên các bạn miễn hỏi cho xem ảnh thật nhé!
🔸Fullbox, tags - giấy gói, hộp cứng cáp có thể dùng làm quà tặng
🔸Size: 36 37 38 39 40 41 42 43 44 45
🔸Màu: Inbox màu cho shop ở phần Chat
➖ GIAO HÀNG - XEM HÀNG - ƯNG Ý - TRẢ TIỀN. Đó là quy trình bán hang của Shop để đập tan mối lo về việc mua hang qua mạng.
➖ FreeShip toàn quốc.
➖ KHÔNG VỪA ĐỔI SIZE, KHÔNG ƯNG ĐỔI MẪU.
➖ Thời gian giao hàng : từ 1-3 ngày tùy tỉnh , huyện hay nội thành Giao nội tỉnh HCM – HN thường 1-2 ngày, tỉnh và huyện thường lâu hơn 1 chút 
➖  CHẾ ĐỘ BẢO HÀNH RÕ RÀNG, 1 ĐỔI 1 trong vòng 7 ngày , Bảo hành sản phẩm 6 tháng. Chi tiết bảo hành vào phần mô tả shop.
Inbox để biết rõ chi tiết ạ.', 12, CAST(N'2019-12-11T11:06:13.407' AS DateTime), CAST(N'2019-12-11T14:59:20.877' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (58, N'Gucci Ace Floral (hoa )', N'gucci-ace-floral-(hoa-)', N'', N'', N'', N'', N'', N'gucci4.jpg', 13000000, N'', 1, N'📍Size: 36- 37- 38- 39- 40- 41- 42- 43- 44
📍Price: 12xx
📍Fullbox
📍Freeship
Ở ĐÂU RẺ NHẤT- CHÚNG TÔI RẺ HƠN', 12, CAST(N'2019-12-11T11:07:57.910' AS DateTime), CAST(N'2019-12-11T14:59:30.317' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (59, N'Gucci Men''s Bloom Flower Print Blue 407343 8470', N'gucci-men''s-bloom-flower-print-blue-407343-8470', N'', N'', N'', N'', N'', N'gucci5.jpg', 56500000, N'', 1, N'Chưa có bài đánh giá chi tiết về sản phẩm', 12, CAST(N'2019-12-11T11:11:29.503' AS DateTime), CAST(N'2019-12-11T14:59:40.513' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (60, N'Gucci Women''s Black Leather Canvas GG 10 IT 40', N'gucci-women''s-black-leather-canvas-gg-10-it-40', N'', N'', N'', N'', N'', N'gucci6.jpg', 86900000, N'', 1, N'Chưa có bài đánh giá về sản phẩm', 12, CAST(N'2019-12-11T11:12:38.667' AS DateTime), CAST(N'2019-12-11T14:59:48.867' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (61, N'Balenciaga Giày Sneaker BL Triple', N'balenciaga-giady-sneaker-bl-triple', N'', N'', N'', N'', N'', N'balenciaga1.jpg', 13500000, N'', 1, N'Tên : Giày Sneaker BL Triple S trắng( đế phân tầng)
Size : 36-43
Bộ sp đi kèm : box, tag, giấy gói và phụ kiện ( nếu sp có phụ kiện )
Giày rất phù hợp với Gym, nhảy, hay cả đi học đi chơi, hay đơn giản làm quà tặng cho người thân =))
Tuyển CTV, Sỉ ( chấp hết số lượng ) toàn quốc ( inbox để trao đổi )
Mọi sản phẩm đều có ảnh thật chụp nhiều góc cạnh khác nhau giúp khách hàng có cái nhìn toàn diện về đôi giày yêu thích!
Đội ngũ nhân viên chăm sóc khách hàng nhiệt tình, chu đáo => hãy chat ngay vs shop để được giải đáp mọi thắc mắc của bạn.
Chất lượng của giày luôn là niềm tự hào của chúng tôi
Thanks All So Much =)))))', 13, CAST(N'2019-12-11T11:14:18.387' AS DateTime), CAST(N'2019-12-11T14:59:59.040' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (62, N'Balenciaga Giày Triple S', N'balenciaga-giady-triple-s', N'', N'', N'', N'', N'', N'balenciaga2.jpg', 11000000, N'', 1, N'-cá tính, nổi bật', 13, CAST(N'2019-12-11T11:18:07.540' AS DateTime), CAST(N'2019-12-11T15:00:07.160' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (63, N'Giày Sneaker BL Triple S', N'giady-sneaker-bl-triple-s', N'', N'', N'', N'', N'', N'balenciaga3.jpg', 13500000, N'', 1, N'Tên :Giày Sneaker BL Triple S má đỏ( đế phân tầng)
Size : 36-43
Bộ sp đi kèm : box, tag, giấy gói và phụ kiện ( nếu sp có phụ kiện )
Giày rất phù hợp với Gym, nhảy, hay cả đi học đi chơi, hay đơn giản làm quà tặng cho người thân =))
Tuyển CTV, Sỉ ( chấp hết số lượng ) toàn quốc ( inbox để trao đổi )
Mọi sản phẩm đều có ảnh thật chụp nhiều góc cạnh khác nhau giúp khách hàng có cái nhìn toàn diện về đôi giày yêu thích!
Đội ngũ nhân viên chăm sóc khách hàng nhiệt tình, chu đáo => hãy chat ngay vs shop để được giải đáp mọi thắc mắc của bạn.
Chất lượng của giày luôn là niềm tự hào của chúng tôi
Thanks All So Much =)))))', 13, CAST(N'2019-12-11T11:20:11.657' AS DateTime), CAST(N'2019-12-11T15:00:15.573' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (64, N'Giày Triple S hồng phản quang', N'giady-triple-s-hodng-phadn-quang', N'', N'', N'', N'', N'', N'balenciaga4.jpg', 11000000, N'', 1, N'Thương hiệuNo BrandSKU327124074_VNAMZ-523338110
Loại bảo hànhNo Warranty
Chất liệu Không chứa da
Bộ sản phẩm gồm: full box', 13, CAST(N'2019-12-11T11:21:53.177' AS DateTime), CAST(N'2019-12-11T15:00:24.613' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (65, N'Giày Triple S xám trắng', N'giady-triple-s-xadm-tradng', N'', N'', N'', N'', N'', N'balenciaga5.jpg', 11000000, N'', 1, N'Thương hiệuNo Brand SKU327102568_VNAMZ-523312479
Địa điểm ứng dụng Phù hợp cho mọi dịp
Loại bảo hành No Warranty
Bộ sản phẩm gồm: 	full box', 13, CAST(N'2019-12-11T11:23:49.080' AS DateTime), CAST(N'2019-12-11T15:00:34.170' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (66, N'Giày thể thao Balenciaga Triple S SNS', N'giady-thed-thao-balenciaga-triple-s-sns', N'', N'', N'', N'', N'', N'balenciaga6.jpg', 6000000, N'', 1, N'GIÀY THỂ THAO BALENCIAGA TRIPLE S 👟👟

Size : 36 - 43

🤔Trong khu vực Đông Nam Á, thương hiệu Balenciaga cũng gia tăng sự hiện diện của mình tại các quốc gia như Thái Lan, Indonesia, Philippines,… Từ tháng 1/2016, thương hiệu Balenciaga mở boutique thứ 2 tại Malaysia, đặt tại The Gardens Mall. Đây là cửa hàng đầu tiên cung cấp cả 2 dòng sản phẩm dành cho nam và nữ cho quốc gia này. Đối với thị trường Việt Nam, từ tháng 4/2013, thương hiệu Balenciaga chính thức khai trương cửa hàng đầu tiên. Cửa hàng thời trang xa xỉ này tọa lạc trong khách sạn Rex, nằm trên vị trí sang trọng và đắt đỏ bậc nhất TP.HCM 👟👟

📛 CAM KẾT :
☑️ Đủ size, đủ số như bài viết

☑️ Hình thật , hàng thật, khác hình hoàn gấp 10 lần tiền

☑️ Ship hàng COD trên toàn quốc

☑️ Mua 2 đôi trở lên free ship trong khu vực Hà Nội.

☑️ Mua 3 đôi trở lên free ship cả nước.', 13, CAST(N'2019-12-11T11:25:01.373' AS DateTime), CAST(N'2019-12-11T15:00:43.597' AS DateTime))
SET IDENTITY_INSERT [dbo].[products] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [name], [email], [password], [phone], [address], [status], [remember_token], [created_at], [updated_at]) VALUES (3, N'Nguyễn Đa Min', N'josnguyen1999@gmail.com', N'1999', N'0969557712', N'141 nguyễn chích', NULL, NULL, CAST(N'2019-11-30T18:05:07.307' AS DateTime), NULL)
INSERT [dbo].[users] ([id], [name], [email], [password], [phone], [address], [status], [remember_token], [created_at], [updated_at]) VALUES (5, N'Đa Min', N'damin@gmail.com', N'123', N'0989832983', N'Đà Nẵng', NULL, NULL, CAST(N'2019-12-08T14:21:14.433' AS DateTime), NULL)
INSERT [dbo].[users] ([id], [name], [email], [password], [phone], [address], [status], [remember_token], [created_at], [updated_at]) VALUES (6, N'mẫn mẫn', N'manhoang2101@gmail.com', N'2101', N'0969557713', N'da nang', NULL, NULL, CAST(N'2019-12-08T15:34:27.073' AS DateTime), NULL)
INSERT [dbo].[users] ([id], [name], [email], [password], [phone], [address], [status], [remember_token], [created_at], [updated_at]) VALUES (7, N'Nguyễn Hoàng Mẫn', N'mannhpd02258@fpt.edu.vn', N'2101', N'01662771653', N'Huế', NULL, NULL, CAST(N'2019-12-11T09:52:59.143' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[users] OFF
ALTER TABLE [dbo].[detail_imgs]  WITH CHECK ADD FOREIGN KEY([pro_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD FOREIGN KEY([pro_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD FOREIGN KEY([o_id])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[pro_details]  WITH CHECK ADD FOREIGN KEY([pro_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD FOREIGN KEY([cat_id])
REFERENCES [dbo].[categories] ([id])
GO
