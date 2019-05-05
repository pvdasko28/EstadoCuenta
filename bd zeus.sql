USE [Zeus]
GO
/****** Object:  UserDefinedDataType [dbo].[T_UDT_SINO]    Script Date: 05/05/2019 08:30:23 a. m. ******/
CREATE TYPE [dbo].[T_UDT_SINO] FROM [char](1) NOT NULL
GO
/****** Object:  Table [dbo].[MAEFOLIO]    Script Date: 05/05/2019 08:30:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAEFOLIO](
	[NFOLIO] [varchar](6) NOT NULL,
	[REGISTRO] [varchar](6) NOT NULL,
	[NOMBRE] [varchar](40) NOT NULL,
	[ESTADO] [tinyint] NOT NULL,
	[TIPOFOLIO] [char](1) NOT NULL,
	[FECHAPER] [smalldatetime] NOT NULL CONSTRAINT [DF_MAEFOLIO_FECHAPER]  DEFAULT (getdate()),
	[USUAPER] [char](10) NOT NULL CONSTRAINT [DF_MAEFOLIO_USUAPER]  DEFAULT (user_name()),
	[FECHAULMV] [smalldatetime] NULL CONSTRAINT [DF_MAEFOLIO_FECHAULMV]  DEFAULT (getdate()),
	[USUAULMV] [char](10) NULL CONSTRAINT [DF_MAEFOLIO_USUAULMV]  DEFAULT (user_name()),
	[FECHACIE] [smalldatetime] NULL,
	[USUACIE] [char](10) NULL CONSTRAINT [DF_MAEFOLIO_USUACIE]  DEFAULT (user_name()),
	[SALDOANTDI] [money] NOT NULL CONSTRAINT [DF_MAEFOLIO_SALDOANTDI]  DEFAULT ((0)),
	[MOVTODEBDI] [money] NOT NULL CONSTRAINT [DF_MAEFOLIO_MOVTODEBDI]  DEFAULT ((0)),
	[MOVTOCREDI] [money] NOT NULL CONSTRAINT [DF_MAEFOLIO_MOVTOCREDI]  DEFAULT ((0)),
	[SALDOACTDI] [money] NOT NULL CONSTRAINT [DF_MAEFOLIO_SALDOACTDI]  DEFAULT ((0)),
	[MOVTODEB] [money] NOT NULL CONSTRAINT [DF_MAEFOLIO_MOVTODEB]  DEFAULT ((0)),
	[MOVTOCRE] [money] NOT NULL CONSTRAINT [DF_MAEFOLIO_MOVTOCRE]  DEFAULT ((0)),
	[NUMTRANS] [int] NOT NULL CONSTRAINT [DF_MAEFOLIO_NUMTRANS]  DEFAULT ((0)),
	[NROHAB_HAB] [varchar](6) NULL,
	[FPAGO] [varchar](1) NULL,
	[TCRE] [varchar](15) NULL,
	[AUTOR] [varchar](15) NULL,
	[VCTO] [smalldatetime] NULL,
	[CHEQUE] [varchar](15) NULL,
	[BANCO] [varchar](2) NULL,
	[PLAZA] [varchar](15) NULL,
	[CTE] [varchar](15) NULL,
	[VOUCHE] [varchar](15) NULL,
	[CODIGA_AGE] [varchar](4) NULL,
	[COBERTURA] [varchar](1) NULL,
	[CODIGE_EMP] [varchar](4) NULL,
	[ALSALANTDI] [money] NOT NULL CONSTRAINT [DF_MAEFOLIO_ALSALANTDI]  DEFAULT ((0)),
	[ALMOVDEBDI] [money] NOT NULL CONSTRAINT [DF_MAEFOLIO_ALMOVDEBDI]  DEFAULT ((0)),
	[ALMOVCREDI] [money] NOT NULL CONSTRAINT [DF_MAEFOLIO_ALMOVCREDI]  DEFAULT ((0)),
	[ALSALACTDI] [money] NOT NULL CONSTRAINT [DF_MAEFOLIO_ALSALACTDI]  DEFAULT ((0)),
	[ALMOVDEB] [money] NOT NULL CONSTRAINT [DF_MAEFOLIO_ALMOVDEB]  DEFAULT ((0)),
	[ALMOVCRE] [money] NOT NULL CONSTRAINT [DF_MAEFOLIO_ALMOVCRE]  DEFAULT ((0)),
	[BLOQUEO] [dbo].[T_UDT_SINO] NULL,
	[TDCTO_CLI] [varchar](2) NULL,
	[IDENT_CLI] [varchar](25) NULL,
	[VLREFE] [money] NULL CONSTRAINT [DF_MAEFOLIO_VLREFE]  DEFAULT ((0)),
	[VLRVOU] [money] NULL CONSTRAINT [DF_MAEFOLIO_VLRVOU]  DEFAULT ((0)),
	[FACTURA] [varchar](25) NULL,
	[FACTURAE] [varchar](25) NULL,
	[LASTUSER] [varchar](10) NULL CONSTRAINT [Df_maefolio_lastuser]  DEFAULT (right(suser_sname(),(10))),
	[LASTDATE] [smalldatetime] NULL CONSTRAINT [DF_MAEFOLIO_LASTDATE]  DEFAULT (getdate()),
	[NOMFACTU] [char](40) NULL,
	[NITFACTU] [varchar](25) NULL,
	[FECHASIS] [smalldatetime] NULL,
	[IVAVOU31BONO] [money] NULL CONSTRAINT [DF_MAEFOLIO_IVAVOU31BONO]  DEFAULT ((0)),
	[IVAVOU31BONOAYER] [money] NULL CONSTRAINT [DF_MAEFOLIO_IVAVOU31BONOAYER]  DEFAULT ((0)),
	[REMISION] [varchar](25) NULL,
	[REMISIONE] [varchar](25) NULL,
	[PAZYSALVO] [varchar](10) NULL,
	[EXCLUIVA] [char](1) NULL CONSTRAINT [DF_MAEFOLIO_EXCLUIVA]  DEFAULT ('N'),
	[TASACHIN_US] [money] NULL CONSTRAINT [DF_MAEFOLIO_TASACHIN_US]  DEFAULT ((0)),
	[APLICA_TASACHIN_US] [char](1) NULL CONSTRAINT [DF_MAEFOLIO_APLICATASA_CHINUS]  DEFAULT ('N'),
	[CATEGORIA] [char](1) NULL,
	[CLASEFOLIO] [varchar](6) NULL,
	[SUSPENSION_FOLIO] [char](1) NULL CONSTRAINT [DF_MAEFOLIO_SUSPENSION_FOLIO]  DEFAULT ('N'),
	[CONSEC_DOCESPECIAL] [varchar](10) NULL,
	[CONTROLCONSUMOS] [varchar](1) NOT NULL CONSTRAINT [DF__MAEFOLIO__CONTRO__074E89E9]  DEFAULT ('N'),
	[FACTURACION_ANTICIPADA] [char](1) NULL CONSTRAINT [DF_MAEFOLIO_FACTURACION_ANTICIPADA]  DEFAULT ('N'),
	[fucOrte_aper] [smalldatetime] NULL,
	[Checkin_factcortecta] [char](1) NOT NULL CONSTRAINT [Df_maefolio_checkin_factcortecta]  DEFAULT ('N'),
	[Checkout_factcortecta] [char](1) NOT NULL CONSTRAINT [Df_maefolio_checkout_factcortecta]  DEFAULT ('N'),
	[Nfolio_factcortecta] [varchar](6) NULL,
	[Tdcto_cli_Ref] [varchar](2) NULL,
	[Ident_cli_Ref] [varchar](25) NULL,
	[FOLIORESTRINGIDO] [char](1) NULL CONSTRAINT [DF_MAEFOLIO_FOLIORESTRINGIDO]  DEFAULT ('N'),
	[Id_ntacontab] [int] NULL CONSTRAINT [Df_maefolio_id_ntacontab]  DEFAULT ((0)),
 CONSTRAINT [pk_maefolio_nfolio] PRIMARY KEY CLUSTERED 
(
	[NFOLIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MOVFOLIO]    Script Date: 05/05/2019 08:30:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MOVFOLIO](
	[NFOLIO] [varchar](6) NULL,
	[NRESER_RES] [varchar](6) NULL,
	[CCARGO_CAR] [smallint] NOT NULL,
	[DBCR] [varchar](1) NOT NULL CONSTRAINT [DF_MOVFOLIO_DBCR]  DEFAULT ('D'),
	[VALOR] [money] NOT NULL CONSTRAINT [DF_MOVFOLIO_VALOR]  DEFAULT ((0)),
	[FECHA] [smalldatetime] NOT NULL CONSTRAINT [DF_MOVFOLIO_FECHA]  DEFAULT (getdate()),
	[CCOSTO_CCO] [varchar](6) NULL,
	[NROHAB_HAB] [varchar](6) NULL,
	[CLASE] [char](1) NULL CONSTRAINT [DF_MOVFOLIO_CLASE]  DEFAULT ('M'),
	[TIQUETE] [char](8) NULL CONSTRAINT [DF_MOVFOLIO_TIQUETE]  DEFAULT (' '),
	[CTAPOS] [char](10) NULL,
	[IVA] [money] NULL CONSTRAINT [DF_MOVFOLIO_IVA]  DEFAULT ((0)),
	[PORCENTAJEIVA] [money] NULL CONSTRAINT [df_movfolio_porcentajeivab]  DEFAULT ((0)),
	[VALORIMPUESTO] [money] NULL CONSTRAINT [DF_MOVFOLIO_VALORIMPUESTO]  DEFAULT ((0)),
	[PORCENTAJEIMP] [money] NULL CONSTRAINT [df_movfolio_porcentajeimpb]  DEFAULT ((0)),
	[NFOLIOR] [varchar](6) NULL,
	[MOTIVO] [varchar](40) NULL,
	[CONTAB] [dbo].[T_UDT_SINO] NOT NULL CONSTRAINT [DF_MOVFOLIO_CONTAB]  DEFAULT ((0)),
	[USUARIO] [char](10) NOT NULL CONSTRAINT [DF_MOVFOLIO_USUARIO]  DEFAULT (right(suser_sname(),(10))),
	[FECHATRA] [smalldatetime] NOT NULL CONSTRAINT [DF_MOVFOLIO_FECHATRA]  DEFAULT (getdate()),
	[NROREGIS] [int] NOT NULL,
	[VALORUS] [money] NULL CONSTRAINT [DF_MOVFOLIO_VALORUS]  DEFAULT ((0)),
	[CODIGP_PLA] [varchar](6) NULL,
	[FPAGO] [varchar](1) NULL,
	[CAJA] [varchar](3) NULL,
	[CODIGO_MON] [varchar](2) NULL,
	[TRANSFERID] [varchar](1) NULL,
	[US_REG] [varchar](1) NULL CONSTRAINT [DF_MOVFOLIO_US_REG]  DEFAULT ('P'),
	[FORMAC_FOL] [varchar](1) NULL,
	[RECIBOCAJ] [varchar](6) NULL,
	[CHEQUE] [varchar](15) NULL,
	[BANCO] [varchar](2) NULL,
	[PLAZA] [varchar](15) NULL,
	[TCRE] [varchar](15) NULL,
	[AUTOR] [varchar](25) NULL,
	[VCTO] [smalldatetime] NULL,
	[CTE] [varchar](15) NULL,
	[VOUCHE] [varchar](15) NULL,
	[TDCTO_CLI] [varchar](2) NULL,
	[IDENT_CLI] [varchar](25) NULL,
	[CODIGA_AGE] [char](10) NULL,
	[CODGE_EMP] [varchar](4) NULL,
	[CODIGE_EMP] [varchar](4) NULL,
	[HAB_ORI] [char](6) NULL,
	[CONSUID] [int] NULL,
	[FUCORTE] [smalldatetime] NULL,
	[COMPLEJO] [varchar](6) NULL,
	[CANTIDAD] [int] NULL,
 CONSTRAINT [pk_movfolio] PRIMARY KEY CLUSTERED 
(
	[NROREGIS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MAEFOLIO] ([NFOLIO], [REGISTRO], [NOMBRE], [ESTADO], [TIPOFOLIO], [FECHAPER], [USUAPER], [FECHAULMV], [USUAULMV], [FECHACIE], [USUACIE], [SALDOANTDI], [MOVTODEBDI], [MOVTOCREDI], [SALDOACTDI], [MOVTODEB], [MOVTOCRE], [NUMTRANS], [NROHAB_HAB], [FPAGO], [TCRE], [AUTOR], [VCTO], [CHEQUE], [BANCO], [PLAZA], [CTE], [VOUCHE], [CODIGA_AGE], [COBERTURA], [CODIGE_EMP], [ALSALANTDI], [ALMOVDEBDI], [ALMOVCREDI], [ALSALACTDI], [ALMOVDEB], [ALMOVCRE], [BLOQUEO], [TDCTO_CLI], [IDENT_CLI], [VLREFE], [VLRVOU], [FACTURA], [FACTURAE], [LASTUSER], [LASTDATE], [NOMFACTU], [NITFACTU], [FECHASIS], [IVAVOU31BONO], [IVAVOU31BONOAYER], [REMISION], [REMISIONE], [PAZYSALVO], [EXCLUIVA], [TASACHIN_US], [APLICA_TASACHIN_US], [CATEGORIA], [CLASEFOLIO], [SUSPENSION_FOLIO], [CONSEC_DOCESPECIAL], [CONTROLCONSUMOS], [FACTURACION_ANTICIPADA], [fucOrte_aper], [Checkin_factcortecta], [Checkout_factcortecta], [Nfolio_factcortecta], [Tdcto_cli_Ref], [Ident_cli_Ref], [FOLIORESTRINGIDO], [Id_ntacontab]) VALUES (N'000001', N'      ', N'KWANGJEY HU AND BIK KEI YUE E101        ', 32, N'E', CAST(N'2009-05-07 19:04:00' AS SmallDateTime), N'dbo       ', CAST(N'2009-05-07 19:04:00' AS SmallDateTime), N'dbo       ', CAST(N'2010-11-11 18:30:00' AS SmallDateTime), N'dbo       ', 0.0000, 0.0000, 0.0000, 0.0000, 45181.8000, 45181.8000, 148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3554.0800, 0.0000, 0.0000, 3554.0800, 40520.8800, 36966.8000, N'N', N'P ', N'E101          ', 0.0000, 0.0000, NULL, NULL, N'dbo', CAST(N'2010-11-18 18:29:00' AS SmallDateTime), N'KWANGJEY HU AND BIK KEI YUE E101        ', N'E101          ', CAST(N'2009-05-07 19:04:00' AS SmallDateTime), 0.0000, 0.0000, NULL, NULL, NULL, N'N', 0.0000, N'N', NULL, NULL, N'N', NULL, N'N', NULL, NULL, N'N', N'N', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MAEFOLIO] ([NFOLIO], [REGISTRO], [NOMBRE], [ESTADO], [TIPOFOLIO], [FECHAPER], [USUAPER], [FECHAULMV], [USUAULMV], [FECHACIE], [USUACIE], [SALDOANTDI], [MOVTODEBDI], [MOVTOCREDI], [SALDOACTDI], [MOVTODEB], [MOVTOCRE], [NUMTRANS], [NROHAB_HAB], [FPAGO], [TCRE], [AUTOR], [VCTO], [CHEQUE], [BANCO], [PLAZA], [CTE], [VOUCHE], [CODIGA_AGE], [COBERTURA], [CODIGE_EMP], [ALSALANTDI], [ALMOVDEBDI], [ALMOVCREDI], [ALSALACTDI], [ALMOVDEB], [ALMOVCRE], [BLOQUEO], [TDCTO_CLI], [IDENT_CLI], [VLREFE], [VLRVOU], [FACTURA], [FACTURAE], [LASTUSER], [LASTDATE], [NOMFACTU], [NITFACTU], [FECHASIS], [IVAVOU31BONO], [IVAVOU31BONOAYER], [REMISION], [REMISIONE], [PAZYSALVO], [EXCLUIVA], [TASACHIN_US], [APLICA_TASACHIN_US], [CATEGORIA], [CLASEFOLIO], [SUSPENSION_FOLIO], [CONSEC_DOCESPECIAL], [CONTROLCONSUMOS], [FACTURACION_ANTICIPADA], [fucOrte_aper], [Checkin_factcortecta], [Checkout_factcortecta], [Nfolio_factcortecta], [Tdcto_cli_Ref], [Ident_cli_Ref], [FOLIORESTRINGIDO], [Id_ntacontab]) VALUES (N'000002', N'      ', N'AGUILO  MARIANO A101                    ', 32, N'E', CAST(N'2009-05-08 09:07:00' AS SmallDateTime), N'dbo       ', CAST(N'2009-05-08 09:07:00' AS SmallDateTime), N'dbo       ', CAST(N'2010-11-10 18:25:00' AS SmallDateTime), N'dbo       ', 0.0000, 0.0000, 0.0000, 0.0000, 60651.7400, 60651.7400, 244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 60651.7400, 60651.7400, N'N', N'P ', N'A101          ', 0.0000, 0.0000, NULL, NULL, N'dbo', CAST(N'2010-11-10 18:25:00' AS SmallDateTime), N'AGUILO  MARIANO A101                    ', N'A101          ', CAST(N'2009-05-08 09:07:00' AS SmallDateTime), 0.0000, 0.0000, NULL, NULL, NULL, N'N', 0.0000, N'N', NULL, NULL, N'N', NULL, N'N', NULL, NULL, N'N', N'N', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MAEFOLIO] ([NFOLIO], [REGISTRO], [NOMBRE], [ESTADO], [TIPOFOLIO], [FECHAPER], [USUAPER], [FECHAULMV], [USUAULMV], [FECHACIE], [USUACIE], [SALDOANTDI], [MOVTODEBDI], [MOVTOCREDI], [SALDOACTDI], [MOVTODEB], [MOVTOCRE], [NUMTRANS], [NROHAB_HAB], [FPAGO], [TCRE], [AUTOR], [VCTO], [CHEQUE], [BANCO], [PLAZA], [CTE], [VOUCHE], [CODIGA_AGE], [COBERTURA], [CODIGE_EMP], [ALSALANTDI], [ALMOVDEBDI], [ALMOVCREDI], [ALSALACTDI], [ALMOVDEB], [ALMOVCRE], [BLOQUEO], [TDCTO_CLI], [IDENT_CLI], [VLREFE], [VLRVOU], [FACTURA], [FACTURAE], [LASTUSER], [LASTDATE], [NOMFACTU], [NITFACTU], [FECHASIS], [IVAVOU31BONO], [IVAVOU31BONOAYER], [REMISION], [REMISIONE], [PAZYSALVO], [EXCLUIVA], [TASACHIN_US], [APLICA_TASACHIN_US], [CATEGORIA], [CLASEFOLIO], [SUSPENSION_FOLIO], [CONSEC_DOCESPECIAL], [CONTROLCONSUMOS], [FACTURACION_ANTICIPADA], [fucOrte_aper], [Checkin_factcortecta], [Checkout_factcortecta], [Nfolio_factcortecta], [Tdcto_cli_Ref], [Ident_cli_Ref], [FOLIORESTRINGIDO], [Id_ntacontab]) VALUES (N'000003', N'      ', N'TAVELLI  PAMELA A102                    ', 32, N'E', CAST(N'2009-05-08 09:09:00' AS SmallDateTime), N'dbo       ', CAST(N'2009-05-08 09:09:00' AS SmallDateTime), N'dbo       ', CAST(N'2010-11-11 17:58:00' AS SmallDateTime), N'dbo       ', 0.0000, 0.0000, 0.0000, 0.0000, 53206.8200, 53206.8200, 257, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -6.0400, 0.0000, 0.0000, -6.0400, 46736.5600, 46742.6000, N'N', N'P ', N'A102          ', 0.0000, 0.0000, N'000201', N'000201', N'dbo', CAST(N'2010-11-11 17:57:00' AS SmallDateTime), N'TAVELLI  PAMELA A102                    ', N'A102                     ', CAST(N'2009-05-08 09:09:00' AS SmallDateTime), 0.0000, 0.0000, NULL, NULL, NULL, N'N', 0.0000, N'N', NULL, NULL, N'N', NULL, N'N', NULL, NULL, N'N', N'N', NULL, NULL, NULL, NULL, NULL)
GO


SELECT F.NOMBRE, M.NFOLIO, M.FECHA, M.CCARGO_CAR, M.MOTIVO, M.TIQUETE,
CASE WHEN M.DBCR = 'D'  THEN M.VALOR ELSE M.VALOR * -1 END AS VALOR,
CASE WHEN M.DBCR = 'D'  THEN M.IVA ELSE M.IVA * -1 END AS IVA,
CASE WHEN M.DBCR = 'D'  THEN VALOR + IVA  ELSE (VALOR + IVA) * -1 END  AS TOTAL 
FROM MOVFOLIO M WITH(NOLOCK)
INNER JOIN MAEFOLIO F  WITH(NOLOCK) ON M.NFOLIO = F.NFOLIO
WHERE M.NFOLIO='000280' 
AND M.FECHA >= '2010-01-01' 
AND M.FECHA <= '2011-12-31' 
AND CLASE='M'
ORDER BY M.FECHA, M.CCARGO_CAR ASC