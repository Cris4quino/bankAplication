USE [dbbankaplication]
GO
/****** Object:  Table [dbo].[ACCOUNT]    Script Date: 11/27/2020 8:12:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACCOUNT](
	[accountnum] [nvarchar](50) NOT NULL,
	[codclient] [numeric](18, 0) NULL,
	[coddept] [numeric](18, 0) NULL,
	[balance] [decimal](18, 2) NULL,
	[correlative] [nvarchar](50) NULL,
	[states] [bit] NULL,
	[coin] [numeric](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[accountnum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CLIENT]    Script Date: 11/27/2020 8:12:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENT](
	[codcliente] [numeric](18, 0) NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COIN]    Script Date: 11/27/2020 8:12:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COIN](
	[idcoin] [numeric](18, 0) NOT NULL,
	[codcoin] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[codmov] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idcoin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DEPARTAMENT]    Script Date: 11/27/2020 8:12:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTAMENT](
	[iddept] [numeric](18, 0) NOT NULL,
	[coddept] [nvarchar](50) NULL,
	[description] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[iddept] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MOVEMENT]    Script Date: 11/27/2020 8:12:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MOVEMENT](
	[idmov] [numeric](18, 0) NOT NULL,
	[accountnum] [nvarchar](50) NULL,
	[codcoin] [numeric](18, 0) NULL,
	[amount] [decimal](18, 2) NULL,
	[type] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idmov] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ACCOUNT] ([accountnum], [codclient], [coddept], [balance], [correlative], [states], [coin]) VALUES (N'201-01-000001', CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2000.00 AS Decimal(18, 2)), N'000001', 1, CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ACCOUNT] ([accountnum], [codclient], [coddept], [balance], [correlative], [states], [coin]) VALUES (N'201-04-000002', CAST(3 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(100.10 AS Decimal(18, 2)), N'000002', 1, CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[CLIENT] ([codcliente], [name]) VALUES (CAST(0 AS Numeric(18, 0)), NULL)
INSERT [dbo].[CLIENT] ([codcliente], [name]) VALUES (CAST(1 AS Numeric(18, 0)), N'JUAN PEREZ')
INSERT [dbo].[CLIENT] ([codcliente], [name]) VALUES (CAST(2 AS Numeric(18, 0)), N'CRISTIAN AQUINO')
INSERT [dbo].[CLIENT] ([codcliente], [name]) VALUES (CAST(3 AS Numeric(18, 0)), N'MANUEL NEUER')
INSERT [dbo].[CLIENT] ([codcliente], [name]) VALUES (CAST(4 AS Numeric(18, 0)), N'GILBERT ALVARES')
INSERT [dbo].[COIN] ([idcoin], [codcoin], [type], [codmov]) VALUES (CAST(1 AS Numeric(18, 0)), N'201', N'BOL', N'1')
INSERT [dbo].[COIN] ([idcoin], [codcoin], [type], [codmov]) VALUES (CAST(2 AS Numeric(18, 0)), N'202', N'USD', N'2')
INSERT [dbo].[DEPARTAMENT] ([iddept], [coddept], [description]) VALUES (CAST(1 AS Numeric(18, 0)), N'01', N'LA PAZ')
INSERT [dbo].[DEPARTAMENT] ([iddept], [coddept], [description]) VALUES (CAST(2 AS Numeric(18, 0)), N'02', N'ORURO')
INSERT [dbo].[DEPARTAMENT] ([iddept], [coddept], [description]) VALUES (CAST(3 AS Numeric(18, 0)), N'03', N'POTOSI')
INSERT [dbo].[DEPARTAMENT] ([iddept], [coddept], [description]) VALUES (CAST(4 AS Numeric(18, 0)), N'04', N'PANDO')
INSERT [dbo].[DEPARTAMENT] ([iddept], [coddept], [description]) VALUES (CAST(5 AS Numeric(18, 0)), N'05', N'SANTA CRUZ')
INSERT [dbo].[DEPARTAMENT] ([iddept], [coddept], [description]) VALUES (CAST(6 AS Numeric(18, 0)), N'06', N'BENI')
INSERT [dbo].[DEPARTAMENT] ([iddept], [coddept], [description]) VALUES (CAST(7 AS Numeric(18, 0)), N'07', N'COCHABAMBA')
INSERT [dbo].[DEPARTAMENT] ([iddept], [coddept], [description]) VALUES (CAST(8 AS Numeric(18, 0)), N'08', N'TARIJA')
INSERT [dbo].[DEPARTAMENT] ([iddept], [coddept], [description]) VALUES (CAST(9 AS Numeric(18, 0)), N'09', N'CHUQUISACA')
