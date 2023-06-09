USE [MFC]
GO
/****** Object:  Table [dbo].[TInstruments]    Script Date: 20/02/2018 22:37:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TInstruments](
	[RefId] [int] IDENTITY(1,1) NOT NULL,
	[InstrumentId] [varchar](50) NULL,
	[MarketId] [varchar](50) NULL,
	[Description] [varchar](100) NULL,
	[TipoInstrumento] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMarkets]    Script Date: 20/02/2018 22:37:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMarkets](
	[MarketId] [varchar](50) NULL,
	[Description] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TPrices]    Script Date: 20/02/2018 22:37:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TPrices](
	[RefId] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Valor] [float] NULL,
 CONSTRAINT [PK_TPrices] PRIMARY KEY CLUSTERED 
(
	[RefId] ASC,
	[Fecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[TInstruments] ON 

INSERT [dbo].[TInstruments] ([RefId], [InstrumentId], [MarketId], [Description], [TipoInstrumento]) VALUES (1, N'BBVA:SM', N'MDR Stock', N'BBVA Bank', N'Equity')
INSERT [dbo].[TInstruments] ([RefId], [InstrumentId], [MarketId], [Description], [TipoInstrumento]) VALUES (2, N'TEF:SM', N'MDR Stock', N'Telefonica', N'Equity')
INSERT [dbo].[TInstruments] ([RefId], [InstrumentId], [MarketId], [Description], [TipoInstrumento]) VALUES (3, N'SAN:SM', N'MDR Stock', N'Banco Santander', N'Equity')
INSERT [dbo].[TInstruments] ([RefId], [InstrumentId], [MarketId], [Description], [TipoInstrumento]) VALUES (4, N'USDEUR:CUR', N'NY Stock', N'Tipo USD/EUR', N'FX')
INSERT [dbo].[TInstruments] ([RefId], [InstrumentId], [MarketId], [Description], [TipoInstrumento]) VALUES (5, N'TSCO:LN', N'LN Stock', N'Tesco', N'Equity')
INSERT [dbo].[TInstruments] ([RefId], [InstrumentId], [MarketId], [Description], [TipoInstrumento]) VALUES (6, N'TSLA:US', N'NY Stock', N'Tesla', N'Equity')
INSERT [dbo].[TInstruments] ([RefId], [InstrumentId], [MarketId], [Description], [TipoInstrumento]) VALUES (7, N'IBE5Y:CORP', N'MDR Stock', N'Bono Iberdrola 5Y', N'Bond')
SET IDENTITY_INSERT [dbo].[TInstruments] OFF
INSERT [dbo].[TMarkets] ([MarketId], [Description]) VALUES (N'MDR Stock', N'Bolsa de Madrid')
INSERT [dbo].[TMarkets] ([MarketId], [Description]) VALUES (N'NY Stock', N'Bolsa de Nueva York')
INSERT [dbo].[TMarkets] ([MarketId], [Description]) VALUES (N'LN Stock', N'Bolsa de Londres')
INSERT [dbo].[TMarkets] ([MarketId], [Description]) VALUES (N'PA Stock', N'Bolsa de Paris')
INSERT [dbo].[TMarkets] ([MarketId], [Description]) VALUES (N'TK Stock', N'Bolsa de Tokio')
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (1, CAST(N'2018-02-19' AS Date), 7.06)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (1, CAST(N'2018-02-20' AS Date), 7.0522787591298988)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (1, CAST(N'2018-02-21' AS Date), 6.9249590872771885)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (1, CAST(N'2018-02-22' AS Date), 6.8378188872940013)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (1, CAST(N'2018-02-23' AS Date), 6.8548502923778543)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (1, CAST(N'2018-02-26' AS Date), 6.8874886661640558)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (1, CAST(N'2018-02-27' AS Date), 6.9237896869345441)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (1, CAST(N'2018-02-28' AS Date), 6.7739478968206113)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (1, CAST(N'2018-03-01' AS Date), 6.8774691521026856)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (1, CAST(N'2018-03-02' AS Date), 6.9221917798778065)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (1, CAST(N'2018-03-05' AS Date), 6.9239636693399)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (1, CAST(N'2018-03-06' AS Date), 7.0372763274568868)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (1, CAST(N'2018-03-07' AS Date), 7.0285848580916559)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (1, CAST(N'2018-03-08' AS Date), 7.0865409524329648)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (1, CAST(N'2018-03-09' AS Date), 7.0289594311339432)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (1, CAST(N'2018-03-12' AS Date), 6.997914083745389)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (1, CAST(N'2018-03-13' AS Date), 6.9852356425459572)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (1, CAST(N'2018-03-14' AS Date), 6.9745079636447169)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (1, CAST(N'2018-03-15' AS Date), 6.9484491695316706)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (1, CAST(N'2018-03-16' AS Date), 7.0033048833222793)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (1, CAST(N'2018-03-19' AS Date), 6.854376735004613)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (2, CAST(N'2018-02-19' AS Date), 7.64)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (2, CAST(N'2018-02-20' AS Date), 7.6898508698827195)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (2, CAST(N'2018-02-21' AS Date), 7.6562701491092007)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (2, CAST(N'2018-02-22' AS Date), 7.6290091852995356)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (2, CAST(N'2018-02-23' AS Date), 7.5518112931330785)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (2, CAST(N'2018-02-26' AS Date), 7.5455737234293085)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (2, CAST(N'2018-02-27' AS Date), 7.6132879714622437)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (2, CAST(N'2018-02-28' AS Date), 7.7189146947926632)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (2, CAST(N'2018-03-01' AS Date), 7.8077195846211822)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (2, CAST(N'2018-03-02' AS Date), 7.7985488544246895)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (2, CAST(N'2018-03-05' AS Date), 7.8470082731486857)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (2, CAST(N'2018-03-06' AS Date), 7.8652667378197361)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (2, CAST(N'2018-03-07' AS Date), 7.7840747573998614)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (2, CAST(N'2018-03-08' AS Date), 7.8406633964138477)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (2, CAST(N'2018-03-09' AS Date), 7.8232179101766626)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (2, CAST(N'2018-03-12' AS Date), 7.798519744670994)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (2, CAST(N'2018-03-13' AS Date), 7.7964361834541593)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (2, CAST(N'2018-03-14' AS Date), 7.7720028097004814)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (2, CAST(N'2018-03-15' AS Date), 7.7261160005657183)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (2, CAST(N'2018-03-16' AS Date), 7.797836267866626)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (2, CAST(N'2018-03-19' AS Date), 7.775759425681243)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (3, CAST(N'2018-02-19' AS Date), 5.62)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (3, CAST(N'2018-02-20' AS Date), 5.61222154683023)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (3, CAST(N'2018-02-21' AS Date), 5.609278822341798)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (3, CAST(N'2018-02-22' AS Date), 5.5816308273613471)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (3, CAST(N'2018-02-23' AS Date), 5.6909437845360547)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (3, CAST(N'2018-02-26' AS Date), 5.7820542059925319)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (3, CAST(N'2018-02-27' AS Date), 5.763769279715377)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (3, CAST(N'2018-02-28' AS Date), 5.8620907724283668)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (3, CAST(N'2018-03-01' AS Date), 5.8798155016635985)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (3, CAST(N'2018-03-02' AS Date), 5.8745701080051749)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (3, CAST(N'2018-03-05' AS Date), 5.9024625076633948)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (3, CAST(N'2018-03-06' AS Date), 5.8669689991377947)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (3, CAST(N'2018-03-07' AS Date), 5.7693897098661546)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (3, CAST(N'2018-03-08' AS Date), 5.7801892108880688)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (3, CAST(N'2018-03-09' AS Date), 5.798316326108556)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (3, CAST(N'2018-03-12' AS Date), 5.7704768584127129)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (3, CAST(N'2018-03-13' AS Date), 5.8333392565430549)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (3, CAST(N'2018-03-14' AS Date), 5.7217125640902626)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (3, CAST(N'2018-03-15' AS Date), 5.6922255124501682)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (3, CAST(N'2018-03-16' AS Date), 5.6524755892238092)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (3, CAST(N'2018-03-19' AS Date), 5.5949635531312394)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (4, CAST(N'2018-02-19' AS Date), 1.17)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (4, CAST(N'2018-02-20' AS Date), 1.1812408312610139)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (4, CAST(N'2018-02-21' AS Date), 1.1761465540720428)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (4, CAST(N'2018-02-22' AS Date), 1.1636896938263079)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (4, CAST(N'2018-02-23' AS Date), 1.1583033517134178)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (4, CAST(N'2018-02-26' AS Date), 1.1502343690193368)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (4, CAST(N'2018-02-27' AS Date), 1.14658233925481)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (4, CAST(N'2018-02-28' AS Date), 1.1523781048077377)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (4, CAST(N'2018-03-01' AS Date), 1.1569091069599407)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (4, CAST(N'2018-03-02' AS Date), 1.1874542737763492)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (4, CAST(N'2018-03-05' AS Date), 1.1913561023580148)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (4, CAST(N'2018-03-06' AS Date), 1.1999769161395502)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (4, CAST(N'2018-03-07' AS Date), 1.1962030878816197)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (4, CAST(N'2018-03-08' AS Date), 1.1904997308630927)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (4, CAST(N'2018-03-09' AS Date), 1.1661585921003317)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (4, CAST(N'2018-03-12' AS Date), 1.1562090426386544)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (4, CAST(N'2018-03-13' AS Date), 1.1518708917696212)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (4, CAST(N'2018-03-14' AS Date), 1.1537256449604036)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (4, CAST(N'2018-03-15' AS Date), 1.1522917281744043)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (4, CAST(N'2018-03-16' AS Date), 1.1465069911031984)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (4, CAST(N'2018-03-19' AS Date), 1.1297033854410341)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (5, CAST(N'2018-02-19' AS Date), 204.2)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (5, CAST(N'2018-02-20' AS Date), 203.18416832432214)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (5, CAST(N'2018-02-21' AS Date), 202.06077064180678)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (5, CAST(N'2018-02-22' AS Date), 200.69892451321113)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (5, CAST(N'2018-02-23' AS Date), 203.00417470562871)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (5, CAST(N'2018-02-26' AS Date), 199.99564408202375)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (5, CAST(N'2018-02-27' AS Date), 201.30642167048069)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (5, CAST(N'2018-02-28' AS Date), 196.87702439646344)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (5, CAST(N'2018-03-01' AS Date), 197.99558962211594)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (5, CAST(N'2018-03-02' AS Date), 199.53434147106358)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (5, CAST(N'2018-03-05' AS Date), 201.4890160133304)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (5, CAST(N'2018-03-06' AS Date), 200.13920867901803)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (5, CAST(N'2018-03-07' AS Date), 196.739713604375)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (5, CAST(N'2018-03-08' AS Date), 200.312960588886)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (5, CAST(N'2018-03-09' AS Date), 201.98080721374396)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (5, CAST(N'2018-03-12' AS Date), 203.43118739613942)
GO
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (5, CAST(N'2018-03-13' AS Date), 206.16748124510107)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (5, CAST(N'2018-03-14' AS Date), 206.7779458948844)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (5, CAST(N'2018-03-15' AS Date), 204.99054800418051)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (5, CAST(N'2018-03-16' AS Date), 203.7090415924508)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (5, CAST(N'2018-03-19' AS Date), 202.85596408520709)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (6, CAST(N'2018-02-19' AS Date), 335.49)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (6, CAST(N'2018-02-20' AS Date), 335.84323828343827)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (6, CAST(N'2018-02-21' AS Date), 333.70738207356965)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (6, CAST(N'2018-02-22' AS Date), 330.74580582888376)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (6, CAST(N'2018-02-23' AS Date), 329.01637439870359)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (6, CAST(N'2018-02-26' AS Date), 333.60229312143053)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (6, CAST(N'2018-02-27' AS Date), 335.12393756685742)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (6, CAST(N'2018-02-28' AS Date), 334.87540533764235)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (6, CAST(N'2018-03-01' AS Date), 338.62216659625642)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (6, CAST(N'2018-03-02' AS Date), 338.83208287428926)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (6, CAST(N'2018-03-05' AS Date), 338.22943088893282)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (6, CAST(N'2018-03-06' AS Date), 338.56504994046986)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (6, CAST(N'2018-03-07' AS Date), 339.7241987050499)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (6, CAST(N'2018-03-08' AS Date), 338.98472974331537)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (6, CAST(N'2018-03-09' AS Date), 337.89911246755275)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (6, CAST(N'2018-03-12' AS Date), 344.60782152918694)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (6, CAST(N'2018-03-13' AS Date), 347.37980668540689)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (6, CAST(N'2018-03-14' AS Date), 342.49768195109078)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (6, CAST(N'2018-03-15' AS Date), 345.89819407770551)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (6, CAST(N'2018-03-16' AS Date), 349.00668200673175)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (6, CAST(N'2018-03-19' AS Date), 349.91329918755588)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (7, CAST(N'2018-02-19' AS Date), 97.25)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (7, CAST(N'2018-02-20' AS Date), 97.7466733031622)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (7, CAST(N'2018-02-21' AS Date), 98.029067713209841)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (7, CAST(N'2018-02-22' AS Date), 99.253030653368143)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (7, CAST(N'2018-02-23' AS Date), 99.553690192164538)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (7, CAST(N'2018-02-26' AS Date), 99.982309371280564)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (7, CAST(N'2018-02-27' AS Date), 97.9050601457055)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (7, CAST(N'2018-02-28' AS Date), 98.405707393075261)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (7, CAST(N'2018-03-01' AS Date), 98.18753587108263)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (7, CAST(N'2018-03-02' AS Date), 98.372943170113217)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (7, CAST(N'2018-03-05' AS Date), 99.527746398275085)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (7, CAST(N'2018-03-06' AS Date), 98.862343083481036)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (7, CAST(N'2018-03-07' AS Date), 98.624397662934186)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (7, CAST(N'2018-03-08' AS Date), 100.28300677300253)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (7, CAST(N'2018-03-09' AS Date), 100.09134038412827)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (7, CAST(N'2018-03-12' AS Date), 99.479694635226636)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (7, CAST(N'2018-03-13' AS Date), 98.555264234042852)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (7, CAST(N'2018-03-14' AS Date), 98.308216828646508)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (7, CAST(N'2018-03-15' AS Date), 98.502468561117027)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (7, CAST(N'2018-03-16' AS Date), 99.504181914180577)
INSERT [dbo].[TPrices] ([RefId], [Fecha], [Valor]) VALUES (7, CAST(N'2018-03-19' AS Date), 100.75731169551176)
