USE [C:\USERS\ITOY\DOCUMENTS\VISUAL STUDIO 2013\PROJECTS\MVC_EXERCISE\MVCANGULARHOTELBOOKING\APP_DATA\HOTELDB.MDF]
GO
/****** Object:  Table [dbo].[apcust]    Script Date: 2018/9/7 下午 06:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[apcust](
	[apsqlno] [int] NOT NULL,
	[apcust_no] [varchar](10) NULL,
	[apclass] [varchar](2) NULL,
	[cust_area] [varchar](1) NULL,
	[cust_seq] [int] NULL,
	[ap_cname1] [varchar](60) NULL,
	[ap_cname2] [varchar](60) NULL,
	[ap_ename1] [varchar](100) NULL,
	[ap_ename2] [varchar](100) NULL,
	[ap_crep] [varchar](40) NULL,
	[ap_erep] [varchar](80) NULL,
	[ap_country] [varchar](6) NULL,
	[ap_zip] [varchar](8) NULL,
	[ap_addr1] [varchar](120) NULL,
	[ap_addr2] [varchar](120) NULL,
	[ap_eaddr1] [varchar](120) NULL,
	[ap_eaddr2] [varchar](120) NULL,
	[ap_eaddr3] [varchar](120) NULL,
	[ap_eaddr4] [varchar](120) NULL,
	[apatt_zip] [varchar](8) NULL,
	[apatt_addr1] [varchar](120) NULL,
	[apatt_addr2] [varchar](120) NULL,
	[apatt_tel0] [varchar](4) NULL,
	[apatt_tel] [varchar](15) NULL,
	[apatt_tel1] [varchar](10) NULL,
	[apatt_fax] [varchar](20) NULL,
	[in_date] [smalldatetime] NULL,
	[ap_code] [varchar](2) NULL,
	[tran_date] [smalldatetime] NULL,
	[tran_scode] [varchar](5) NULL,
	[dmp_seq] [varchar](10) NULL,
	[exp_seq] [varchar](10) NULL,
	[dmt_seq] [varchar](10) NULL,
	[ext_seq] [varchar](10) NULL,
	[mark] [varchar](1) NULL,
	[ap_title] [varchar](50) NULL,
	[ap_fcname] [varchar](60) NULL,
	[ap_lcname] [varchar](60) NULL,
	[ap_fename] [varchar](60) NULL,
	[ap_lename] [varchar](60) NULL,
	[apatt_email] [varchar](100) NULL,
 CONSTRAINT [PK_apcust] PRIMARY KEY CLUSTERED 
(
	[apsqlno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[custz]    Script Date: 2018/9/7 下午 06:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[custz](
	[cust_area] [varchar](1) NOT NULL,
	[cust_seq] [int] NOT NULL,
	[id_no] [varchar](10) NULL,
	[www] [varchar](100) NULL,
	[email] [varchar](100) NULL,
	[con_code] [varchar](4) NULL,
	[con_term] [smalldatetime] NULL,
	[acc_zip] [varchar](8) NULL,
	[acc_addr1] [varchar](60) NULL,
	[acc_addr2] [varchar](60) NULL,
	[acc_tel0] [varchar](4) NULL,
	[acc_tel] [varchar](10) NULL,
	[acc_tel1] [varchar](10) NULL,
	[acc_fax] [varchar](20) NULL,
	[rmark_code] [varchar](4) NULL,
	[ref_seq] [int] NULL,
	[ref_no] [varchar](8) NULL,
	[mag] [char](1) NULL,
	[pscode] [varchar](5) NULL,
	[plevel] [varchar](1) NULL,
	[pdis_type] [varchar](3) NULL,
	[ppay_type] [varchar](3) NULL,
	[tscode] [varchar](5) NULL,
	[tlevel] [varchar](1) NULL,
	[tdis_type] [varchar](3) NULL,
	[tpay_type] [varchar](3) NULL,
	[dmt_date] [smalldatetime] NULL,
	[ext_date] [smalldatetime] NULL,
	[dmp_date] [smalldatetime] NULL,
	[exp_date] [smalldatetime] NULL,
	[in_date] [smalldatetime] NULL,
	[in_scode] [varchar](5) NULL,
	[tran_code] [varchar](2) NULL,
	[ttran_date] [smalldatetime] NULL,
	[ttran_scode] [varchar](5) NULL,
	[ptran_date] [smalldatetime] NULL,
	[ptran_scode] [varchar](5) NULL,
	[cust_remark] [text] NULL,
	[mark] [varchar](1) NULL,
	[tran_remark] [varchar](100) NULL,
	[tran_ctrl] [varchar](100) NULL,
	[tran_output] [datetime] NULL,
	[tran_upmail] [datetime] NULL,
	[pacc_email] [varchar](100) NULL,
	[tacc_email] [varchar](100) NULL,
	[tacc_zip] [varchar](8) NULL,
	[tacc_addr1] [varchar](60) NULL,
	[tacc_addr2] [varchar](60) NULL,
	[tacc_tel0] [varchar](4) NULL,
	[tacc_tel] [varchar](10) NULL,
	[tacc_tel1] [varchar](10) NULL,
	[tacc_fax] [varchar](20) NULL,
	[acc_remark] [varchar](500) NULL,
	[pspay_flag] [varchar](2) NULL,
	[pspay_mm] [smallint] NULL,
	[tspay_flag] [varchar](2) NULL,
	[tspay_mm] [smallint] NULL,
	[pacc_chkcode] [varchar](10) NULL,
	[tacc_chkcode] [varchar](10) NULL,
	[pacc_attention] [varchar](60) NULL,
	[pacc_title] [varchar](40) NULL,
	[tacc_attention] [varchar](60) NULL,
	[tacc_title] [varchar](40) NULL,
	[tax_zip] [varchar](8) NULL,
	[tax_addr1] [varchar](60) NULL,
	[tax_addr2] [varchar](60) NULL,
	[tax_tel0] [varchar](4) NULL,
	[tax_tel] [varchar](10) NULL,
	[tax_tel1] [varchar](10) NULL,
	[tax_fax] [varchar](20) NULL,
	[payout_mark] [varchar](2) NULL,
	[tpay_typem] [int] NULL,
	[ppay_typem] [int] NULL,
	[pspay_source] [varchar](20) NULL,
	[pspay_seq] [varchar](15) NULL,
	[pspay_refno] [varchar](50) NULL,
	[tspay_source] [varchar](20) NULL,
	[tspay_seq] [varchar](15) NULL,
	[tspay_refno] [varchar](50) NULL,
	[tax_attention] [varchar](60) NULL,
	[tax_email] [varchar](100) NULL,
	[taxacc_attention] [varchar](60) NULL,
	[taxacc_email] [varchar](100) NULL,
	[taxacc_zip] [varchar](8) NULL,
	[taxacc_addr1] [varchar](60) NULL,
	[taxacc_addr2] [varchar](60) NULL,
	[taxacc_tel0] [varchar](4) NULL,
	[taxacc_tel] [varchar](10) NULL,
	[taxacc_tel1] [varchar](10) NULL,
	[taxacc_fax] [varchar](20) NULL,
 CONSTRAINT [PK_custz] PRIMARY KEY CLUSTERED 
(
	[cust_area] ASC,
	[cust_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HotelMaster]    Script Date: 2018/9/7 下午 06:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelMaster](
	[RoomID] [int] IDENTITY(1,1) NOT NULL,
	[RoomNo] [varchar](100) NOT NULL,
	[RoomType] [varchar](100) NOT NULL,
	[Prize] [varchar](100) NOT NULL,
	[Flag] [varchar](1) NOT NULL,
 CONSTRAINT [PK_HotelMaster] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoomBooking]    Script Date: 2018/9/7 下午 06:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomBooking](
	[BookingID] [int] IDENTITY(1,1) NOT NULL,
	[RoomID] [int] NOT NULL,
	[BookedDateFR] [varchar](20) NOT NULL,
	[BookedDateTO] [varchar](20) NOT NULL,
	[BookingStatus] [varchar](100) NOT NULL,
	[PaymentStatus] [varchar](100) NOT NULL,
	[AdvancePayed] [varchar](100) NOT NULL,
	[TotalAmountPayed] [varchar](100) NOT NULL,
 CONSTRAINT [PK_RoomBooking] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ValueSet]    Script Date: 2018/9/7 下午 06:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValueSet](
	[VLS_ID] [int] IDENTITY(1,1) NOT NULL,
	[VLK_CODE] [varchar](20) NOT NULL,
	[VLS_CODE] [varchar](20) NOT NULL,
	[VLS_NAME] [varchar](100) NOT NULL,
	[SORT] [int] NOT NULL,
	[FLAG] [varchar](1) NOT NULL,
	[IN_DATE] [datetime] NOT NULL,
	[TRAN_DATE] [datetime] NULL,
	[END_DATE] [datetime] NULL,
	[ATTRIBUTE1] [varchar](50) NULL,
	[ATTRIBUTE2] [varchar](50) NULL,
	[ATTRIBUTE3] [varchar](50) NULL,
	[ATTRIBUTE4] [varchar](50) NULL,
	[ATTRIBUTE5] [varchar](50) NULL,
	[ATTRIBUTE6] [varchar](50) NULL,
	[ATTRIBUTE7] [varchar](50) NULL,
	[ATTRIBUTE8] [varchar](50) NULL,
	[ATTRIBUTE9] [varchar](50) NULL,
	[ATTRIBUTE10] [varchar](50) NULL,
	[ATTRIBUTE11] [varchar](50) NULL,
	[ATTRIBUTE12] [varchar](50) NULL,
	[ATTRIBUTE13] [varchar](50) NULL,
	[ATTRIBUTE14] [varchar](50) NULL,
	[ATTRIBUTE15] [varchar](50) NULL,
 CONSTRAINT [PK_ValueSet] PRIMARY KEY CLUSTERED 
(
	[VLK_CODE] ASC,
	[VLS_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ValueSetKind]    Script Date: 2018/9/7 下午 06:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValueSetKind](
	[VLK_ID] [int] IDENTITY(1,1) NOT NULL,
	[VLK_CODE] [varchar](20) NOT NULL,
	[VLK_NAME] [varchar](50) NOT NULL,
	[FLAG] [varchar](1) NOT NULL,
	[IN_DATE] [datetime] NOT NULL,
	[TRAN_DATE] [datetime] NULL,
	[END_DATE] [datetime] NULL,
	[ATTRIBUTE1] [varchar](50) NULL,
	[ATTRIBUTE2] [varchar](50) NULL,
	[ATTRIBUTE3] [varchar](50) NULL,
	[ATTRIBUTE4] [varchar](50) NULL,
	[ATTRIBUTE5] [varchar](50) NULL,
	[ATTRIBUTE6] [varchar](50) NULL,
	[ATTRIBUTE7] [varchar](50) NULL,
	[ATTRIBUTE8] [varchar](50) NULL,
	[ATTRIBUTE9] [varchar](50) NULL,
	[ATTRIBUTE10] [varchar](50) NULL,
	[ATTRIBUTE11] [varchar](50) NULL,
	[ATTRIBUTE12] [varchar](50) NULL,
	[ATTRIBUTE13] [varchar](50) NULL,
	[ATTRIBUTE14] [varchar](50) NULL,
	[ATTRIBUTE15] [varchar](50) NULL,
 CONSTRAINT [PK_ValueSetKind] PRIMARY KEY CLUSTERED 
(
	[VLK_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[apcust] ([apsqlno], [apcust_no], [apclass], [cust_area], [cust_seq], [ap_cname1], [ap_cname2], [ap_ename1], [ap_ename2], [ap_crep], [ap_erep], [ap_country], [ap_zip], [ap_addr1], [ap_addr2], [ap_eaddr1], [ap_eaddr2], [ap_eaddr3], [ap_eaddr4], [apatt_zip], [apatt_addr1], [apatt_addr2], [apatt_tel0], [apatt_tel], [apatt_tel1], [apatt_fax], [in_date], [ap_code], [tran_date], [tran_scode], [dmp_seq], [exp_seq], [dmt_seq], [ext_seq], [mark], [ap_title], [ap_fcname], [ap_lcname], [ap_fename], [ap_lename], [apatt_email]) VALUES (1569, N'04322046  ', N'AB', N'N', 1624, N'英業達股份有限公司            ', N'', N'INVENTEC CORPORATION', N'', N'卓桐華', N'Lee Richard', N'T', N'11170', N'台北市士林區後港街66號', N'', N'No. 66, Hou Kang Street, Shih Lin ', N'District, Taipei, Taiwan, R.O.C. ', N' ', N' ', N'11170', N'台北市士林區後港街66號D棟4樓', N'', N'02', N'28810721', N'28968', N'02-28816706', CAST(N'1990-07-25T00:00:00' AS SmallDateTime), N'NO', CAST(N'2018-06-15T00:00:00' AS SmallDateTime), N'n1571', N'NP13140', N'', N'NT71635', N'NTE27809-1', N'', N'Chairman', N'', N'', N'', N'', N'')
INSERT [dbo].[custz] ([cust_area], [cust_seq], [id_no], [www], [email], [con_code], [con_term], [acc_zip], [acc_addr1], [acc_addr2], [acc_tel0], [acc_tel], [acc_tel1], [acc_fax], [rmark_code], [ref_seq], [ref_no], [mag], [pscode], [plevel], [pdis_type], [ppay_type], [tscode], [tlevel], [tdis_type], [tpay_type], [dmt_date], [ext_date], [dmp_date], [exp_date], [in_date], [in_scode], [tran_code], [ttran_date], [ttran_scode], [ptran_date], [ptran_scode], [cust_remark], [mark], [tran_remark], [tran_ctrl], [tran_output], [tran_upmail], [pacc_email], [tacc_email], [tacc_zip], [tacc_addr1], [tacc_addr2], [tacc_tel0], [tacc_tel], [tacc_tel1], [tacc_fax], [acc_remark], [pspay_flag], [pspay_mm], [tspay_flag], [tspay_mm], [pacc_chkcode], [tacc_chkcode], [pacc_attention], [pacc_title], [tacc_attention], [tacc_title], [tax_zip], [tax_addr1], [tax_addr2], [tax_tel0], [tax_tel], [tax_tel1], [tax_fax], [payout_mark], [tpay_typem], [ppay_typem], [pspay_source], [pspay_seq], [pspay_refno], [tspay_source], [tspay_seq], [tspay_refno], [tax_attention], [tax_email], [taxacc_attention], [taxacc_email], [taxacc_zip], [taxacc_addr1], [taxacc_addr2], [taxacc_tel0], [taxacc_tel], [taxacc_tel1], [taxacc_fax]) VALUES (N'N', 1624, N'04322046  ', N'', N'', N'', CAST(N'2000-06-30T00:00:00' AS SmallDateTime), N'11170', N'台北市士林區後港街66號1樓', N'', N'02', N'28810721', N'1768', N'02-28816706', N'', 11322, N'', N'Y', N'n896', N'C', N'01', N'04', N'n428', N'A', N'01', N'04', CAST(N'2018-06-15T00:00:00' AS SmallDateTime), CAST(N'2017-01-12T00:00:00' AS SmallDateTime), CAST(N'2016-03-07T00:00:00' AS SmallDateTime), CAST(N'2012-08-22T00:00:00' AS SmallDateTime), CAST(N'1990-07-25T00:00:00' AS SmallDateTime), N'', N'AU', CAST(N'2018-01-02T10:31:00' AS SmallDateTime), N'n1571', CAST(N'2011-07-08T09:16:00' AS SmallDateTime), N'n1331', N'國內商標延展:僅通知(需附圖).(101年延展100.7.28以mail通知-田珮珍).  英業達的窗口為張菁芬小姐,.(102年延展101.7.17營洽以mail通知-駱淑娟),102年延展客戶擇辦16件.  張菁芬小姐表示:有關英業達專利年費繳納通知需改用E-mail通知，不要再寄紙本  107.01.02變更代表人(原:李詩欽)', N'C', N'', N'', NULL, NULL, N'', N'', N'11170', N'台北市士林區後港街66號D棟4樓', N'', N'02', N'28810721', N'28967', N'02-28816706', N'', N'', NULL, N'', NULL, N'', N'', N'', N'', N'何姿攸', N'', N'11170', N'台北市士林區後港街66號D棟4樓', N'', N'02', N'28810721', N'28967', N'02-28816706', N'', 0, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[HotelMaster] ON 

INSERT [dbo].[HotelMaster] ([RoomID], [RoomNo], [RoomType], [Prize], [Flag]) VALUES (1, N'101', N'Single', N'50$', N'A')
INSERT [dbo].[HotelMaster] ([RoomID], [RoomNo], [RoomType], [Prize], [Flag]) VALUES (2, N'102', N'Double', N'80$', N'A')
INSERT [dbo].[HotelMaster] ([RoomID], [RoomNo], [RoomType], [Prize], [Flag]) VALUES (3, N'103', N'Double', N'33', N'A')
INSERT [dbo].[HotelMaster] ([RoomID], [RoomNo], [RoomType], [Prize], [Flag]) VALUES (4, N'', N'', N'', N'A')
INSERT [dbo].[HotelMaster] ([RoomID], [RoomNo], [RoomType], [Prize], [Flag]) VALUES (5, N'104', N'Twin', N'222', N'A')
INSERT [dbo].[HotelMaster] ([RoomID], [RoomNo], [RoomType], [Prize], [Flag]) VALUES (6, N'5', N'Double', N'222', N'A')
INSERT [dbo].[HotelMaster] ([RoomID], [RoomNo], [RoomType], [Prize], [Flag]) VALUES (7, N'6', N'Twin', N'777', N'A')
INSERT [dbo].[HotelMaster] ([RoomID], [RoomNo], [RoomType], [Prize], [Flag]) VALUES (8, N'8', N'Double', N'22', N'D')
INSERT [dbo].[HotelMaster] ([RoomID], [RoomNo], [RoomType], [Prize], [Flag]) VALUES (9, N'88', N'Suite', N'3333', N'D')
INSERT [dbo].[HotelMaster] ([RoomID], [RoomNo], [RoomType], [Prize], [Flag]) VALUES (10, N'224', N'Single', N'333', N'D')
INSERT [dbo].[HotelMaster] ([RoomID], [RoomNo], [RoomType], [Prize], [Flag]) VALUES (11, N'204', N'Duplex', N'098', N'D')
INSERT [dbo].[HotelMaster] ([RoomID], [RoomNo], [RoomType], [Prize], [Flag]) VALUES (12, N'225', N'Twin', N'\n\""&#35596;''/', N'U')
SET IDENTITY_INSERT [dbo].[HotelMaster] OFF
SET IDENTITY_INSERT [dbo].[ValueSet] ON 

INSERT [dbo].[ValueSet] ([VLS_ID], [VLK_CODE], [VLS_CODE], [VLS_NAME], [SORT], [FLAG], [IN_DATE], [TRAN_DATE], [END_DATE], [ATTRIBUTE1], [ATTRIBUTE2], [ATTRIBUTE3], [ATTRIBUTE4], [ATTRIBUTE5], [ATTRIBUTE6], [ATTRIBUTE7], [ATTRIBUTE8], [ATTRIBUTE9], [ATTRIBUTE10], [ATTRIBUTE11], [ATTRIBUTE12], [ATTRIBUTE13], [ATTRIBUTE14], [ATTRIBUTE15]) VALUES (2, N'RoomType', N'Double', N'雙人房', 99, N'A', CAST(N'2018-08-26T14:41:00.830' AS DateTime), NULL, NULL, N'單床', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ValueSet] ([VLS_ID], [VLK_CODE], [VLS_CODE], [VLS_NAME], [SORT], [FLAG], [IN_DATE], [TRAN_DATE], [END_DATE], [ATTRIBUTE1], [ATTRIBUTE2], [ATTRIBUTE3], [ATTRIBUTE4], [ATTRIBUTE5], [ATTRIBUTE6], [ATTRIBUTE7], [ATTRIBUTE8], [ATTRIBUTE9], [ATTRIBUTE10], [ATTRIBUTE11], [ATTRIBUTE12], [ATTRIBUTE13], [ATTRIBUTE14], [ATTRIBUTE15]) VALUES (6, N'RoomType', N'Duplex', N'雙層房', 99, N'A', CAST(N'2018-08-26T15:02:33.670' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ValueSet] ([VLS_ID], [VLK_CODE], [VLS_CODE], [VLS_NAME], [SORT], [FLAG], [IN_DATE], [TRAN_DATE], [END_DATE], [ATTRIBUTE1], [ATTRIBUTE2], [ATTRIBUTE3], [ATTRIBUTE4], [ATTRIBUTE5], [ATTRIBUTE6], [ATTRIBUTE7], [ATTRIBUTE8], [ATTRIBUTE9], [ATTRIBUTE10], [ATTRIBUTE11], [ATTRIBUTE12], [ATTRIBUTE13], [ATTRIBUTE14], [ATTRIBUTE15]) VALUES (4, N'RoomType', N'Family', N'家庭房', 99, N'A', CAST(N'2018-08-26T14:58:19.260' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ValueSet] ([VLS_ID], [VLK_CODE], [VLS_CODE], [VLS_NAME], [SORT], [FLAG], [IN_DATE], [TRAN_DATE], [END_DATE], [ATTRIBUTE1], [ATTRIBUTE2], [ATTRIBUTE3], [ATTRIBUTE4], [ATTRIBUTE5], [ATTRIBUTE6], [ATTRIBUTE7], [ATTRIBUTE8], [ATTRIBUTE9], [ATTRIBUTE10], [ATTRIBUTE11], [ATTRIBUTE12], [ATTRIBUTE13], [ATTRIBUTE14], [ATTRIBUTE15]) VALUES (3, N'RoomType', N'Quad', N'四人房', 99, N'A', CAST(N'2018-08-26T14:52:16.033' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ValueSet] ([VLS_ID], [VLK_CODE], [VLS_CODE], [VLS_NAME], [SORT], [FLAG], [IN_DATE], [TRAN_DATE], [END_DATE], [ATTRIBUTE1], [ATTRIBUTE2], [ATTRIBUTE3], [ATTRIBUTE4], [ATTRIBUTE5], [ATTRIBUTE6], [ATTRIBUTE7], [ATTRIBUTE8], [ATTRIBUTE9], [ATTRIBUTE10], [ATTRIBUTE11], [ATTRIBUTE12], [ATTRIBUTE13], [ATTRIBUTE14], [ATTRIBUTE15]) VALUES (1, N'RoomType', N'Single', N'單人房', 99, N'A', CAST(N'2018-08-26T14:40:45.943' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ValueSet] ([VLS_ID], [VLK_CODE], [VLS_CODE], [VLS_NAME], [SORT], [FLAG], [IN_DATE], [TRAN_DATE], [END_DATE], [ATTRIBUTE1], [ATTRIBUTE2], [ATTRIBUTE3], [ATTRIBUTE4], [ATTRIBUTE5], [ATTRIBUTE6], [ATTRIBUTE7], [ATTRIBUTE8], [ATTRIBUTE9], [ATTRIBUTE10], [ATTRIBUTE11], [ATTRIBUTE12], [ATTRIBUTE13], [ATTRIBUTE14], [ATTRIBUTE15]) VALUES (7, N'RoomType', N'Suite', N'套房', 99, N'A', CAST(N'2018-08-26T15:04:18.040' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ValueSet] ([VLS_ID], [VLK_CODE], [VLS_CODE], [VLS_NAME], [SORT], [FLAG], [IN_DATE], [TRAN_DATE], [END_DATE], [ATTRIBUTE1], [ATTRIBUTE2], [ATTRIBUTE3], [ATTRIBUTE4], [ATTRIBUTE5], [ATTRIBUTE6], [ATTRIBUTE7], [ATTRIBUTE8], [ATTRIBUTE9], [ATTRIBUTE10], [ATTRIBUTE11], [ATTRIBUTE12], [ATTRIBUTE13], [ATTRIBUTE14], [ATTRIBUTE15]) VALUES (8, N'RoomType', N'Triple', N'三人房', 99, N'A', CAST(N'2018-08-26T15:04:31.733' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ValueSet] ([VLS_ID], [VLK_CODE], [VLS_CODE], [VLS_NAME], [SORT], [FLAG], [IN_DATE], [TRAN_DATE], [END_DATE], [ATTRIBUTE1], [ATTRIBUTE2], [ATTRIBUTE3], [ATTRIBUTE4], [ATTRIBUTE5], [ATTRIBUTE6], [ATTRIBUTE7], [ATTRIBUTE8], [ATTRIBUTE9], [ATTRIBUTE10], [ATTRIBUTE11], [ATTRIBUTE12], [ATTRIBUTE13], [ATTRIBUTE14], [ATTRIBUTE15]) VALUES (5, N'RoomType', N'Twin', N'雙人房', 99, N'A', CAST(N'2018-08-26T15:01:34.350' AS DateTime), NULL, NULL, N'雙床', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ValueSet] OFF
SET IDENTITY_INSERT [dbo].[ValueSetKind] ON 

INSERT [dbo].[ValueSetKind] ([VLK_ID], [VLK_CODE], [VLK_NAME], [FLAG], [IN_DATE], [TRAN_DATE], [END_DATE], [ATTRIBUTE1], [ATTRIBUTE2], [ATTRIBUTE3], [ATTRIBUTE4], [ATTRIBUTE5], [ATTRIBUTE6], [ATTRIBUTE7], [ATTRIBUTE8], [ATTRIBUTE9], [ATTRIBUTE10], [ATTRIBUTE11], [ATTRIBUTE12], [ATTRIBUTE13], [ATTRIBUTE14], [ATTRIBUTE15]) VALUES (1, N'RoomType', N'房型', N'A', CAST(N'2018-08-26T13:25:17.567' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ValueSetKind] OFF
ALTER TABLE [dbo].[HotelMaster] ADD  CONSTRAINT [DF__HotelMaste__Flag__34C8D9D1]  DEFAULT ('A') FOR [Flag]
GO
ALTER TABLE [dbo].[ValueSet] ADD  CONSTRAINT [DF_ValueSet_SORT]  DEFAULT ((99)) FOR [SORT]
GO
ALTER TABLE [dbo].[ValueSet] ADD  CONSTRAINT [DF__tmp_ms_xx___FLAG__73BA3083]  DEFAULT ('A') FOR [FLAG]
GO
ALTER TABLE [dbo].[ValueSet] ADD  CONSTRAINT [DF__tmp_ms_xx__IN_DA__74AE54BC]  DEFAULT (getdate()) FOR [IN_DATE]
GO
ALTER TABLE [dbo].[ValueSetKind] ADD  CONSTRAINT [DF__tmp_ms_xx___FLAG__6FE99F9F]  DEFAULT ('A') FOR [FLAG]
GO
ALTER TABLE [dbo].[ValueSetKind] ADD  CONSTRAINT [DF__tmp_ms_xx__IN_DA__70DDC3D8]  DEFAULT (getdate()) FOR [IN_DATE]
GO
/****** Object:  StoredProcedure [dbo].[USP_Hotel_Delete]    Script Date: 2018/9/7 下午 06:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- To insert
-- EXEC [USP_Hotel_Delete] ''  
-- =============================================                                
CREATE PROCEDURE [dbo].[USP_Hotel_Delete]                                                
   ( 
   @RoomID  int=0
      )                                                          
AS                                                                  
BEGIN         


        IF NOT EXISTS (SELECT * FROM HotelMaster WHERE RoomID=@RoomID)  
            BEGIN  
                Select 'Error- Not Found!!' as results  
            END  
         ELSE  
             begin
                UPDATE  HotelMaster
                SET     Flag='D'
                        WHERE      RoomID = @RoomID

                Select 'Deleted' as results  
            end
                
END
GO
/****** Object:  StoredProcedure [dbo].[USP_Hotel_Insert]    Script Date: 2018/9/7 下午 06:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- To insert
-- EXEC [USP_Hotel_Insert] ''  
-- =============================================                                
CREATE PROCEDURE [dbo].[USP_Hotel_Insert]                                                
   ( 
   @RoomID  int=0,
     @RoomNo            VARCHAR(100)     = '',  
     @RoomType      VARCHAR(100)     = '',
      @Prize      VARCHAR(100)     = ''
      )                                                          
AS                                                                  
BEGIN         


    IF NOT EXISTS (SELECT * FROM HotelMaster WHERE RoomNo=@RoomNo)  
    BEGIN  
        IF NOT EXISTS (SELECT * FROM HotelMaster WHERE RoomID=@RoomID)  
            BEGIN  
                INSERT INTO HotelMaster (RoomNo,RoomType,Prize)
                                     VALUES   (@RoomNo,@RoomType,@Prize)
                    Select 'Inserted' as results  
            END  
         ELSE  
         begin
            UPDATE  HotelMaster
            SET     RoomNo     = @RoomNo , 
                    RoomType     = @RoomType, 
                    Prize    = @Prize,
                    Flag='U'
                    WHERE      RoomID = @RoomID

            Select 'Updated' as results  
        end
    END  
    ELSE  
    begin
        Select 'Error- Exists!!' as results  
    END  

                
END
GO
/****** Object:  StoredProcedure [dbo].[USP_HotelMaster_Select]    Script Date: 2018/9/7 下午 06:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================    
-- To Select all Hotels   
-- EXEC USP_HotelMaster_Select ''  
-- =============================================    
CREATE PROCEDURE [dbo].[USP_HotelMaster_Select]     
(    
     @RoomNo            VARCHAR(100)     = ''      
      )         
AS                                                                  
BEGIN         
        SELECT  RoomID,RoomNo , RoomType,Prize,flag
        FROM HotelMaster  
        WHERE  
                RoomNo like  @RoomNo +'%'  
                 Order By RoomNo
END
GO
/****** Object:  StoredProcedure [dbo].[USP_HotelStatus_Select]    Script Date: 2018/9/7 下午 06:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================    
-- To Select all Hotels   
-- EXEC USP_HotelStatus_Select ''  
-- =============================================    
Create PROCEDURE [dbo].[USP_HotelStatus_Select]     
(    
     @RoomNo            VARCHAR(100)     = ''      
      )         
AS                                                                  
BEGIN         
       SELECT   A.RoomNo,          
               ISNULL(B.BookedDateFR, '' ) as BookedDateFR, 
               ISNULL(B.BookedDateTO, '' ) as BookedDateTO, 
               ISNULL(B.BookingStatus, 'Free' ) as BookingStatus,  
               ISNULL(B.PaymentStatus, '' ) as PaymentStatus,  
               ISNULL(B.AdvancePayed, '0' ) as AdvancePayed, 
               ISNULL(B.TotalAmountPayed, '0$' ) as TotalAmountPayed
        FROM HotelMaster A
        Left Outer join RoomBooking B
        ON A.RoomNo=B.RoomID
        Order By  A.RoomNo
END 
GO
/****** Object:  StoredProcedure [dbo].[USP_RoomBooking_Delete]    Script Date: 2018/9/7 下午 06:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================    
-- To Select all user roles   
-- EXEC USP_RoomBooking_Delete ''  
-- =============================================   
Create PROCEDURE [dbo].[USP_RoomBooking_Delete]                                                
   (  
     @BookingID       VARCHAR(20)     = ''
      )                                                          
AS                                                                  
BEGIN         
         Delete from  RoomBooking  WHERE  BookingID  = @BookingID                 
            Select 'Deleted' as results  
END 
GO
/****** Object:  StoredProcedure [dbo].[USP_RoomBooking_Insert]    Script Date: 2018/9/7 下午 06:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- To insert
-- EXEC USP_RoomBooking_Insert ''  
-- =============================================                                
CREATE PROCEDURE [dbo].[USP_RoomBooking_Insert]                                                
   (                         
     @BookingID  VARCHAR(100)     = '',  
     @RoomID   VARCHAR(100)     = '',    
    @BookedDateFR  VARCHAR(100)     = '',  
    @BookedDateTO  VARCHAR(100)     = '',  
    @BookingStatus   VARCHAR(100)     = '',    
    @PaymentStatus  VARCHAR(100)     = '',   
    @AdvancePayed VARCHAR(100)     = '',  
    @TotalAmountPayed   VARCHAR(100)     = '' 
      )                                                          
AS                                                                  
BEGIN       
        IF NOT EXISTS (SELECT * FROM RoomBooking WHERE RoomID=@RoomID )
            BEGIN  
  
                INSERT INTO RoomBooking
           (RoomID ,  BookedDateFR,  BookedDateTO, BookingStatus , PaymentStatus, AdvancePayed, TotalAmountPayed )
     VALUES
            ( @RoomID ,  @BookedDateFR,  @BookedDateTO, @BookingStatus , @PaymentStatus, @AdvancePayed, @TotalAmountPayed )
                                 
                    Select 'Inserted' as results  
                          
            END  
         ELSE  
             BEGIN  
                     UPDATE  RoomBooking
                     SET     BookedDateFR     = @BookedDateFR , 
                            BookedDateTO     = @BookedDateTO, 
                            BookingStatus    = @BookingStatus,  
                            PaymentStatus    = @PaymentStatus,  
                            AdvancePayed     = @AdvancePayed, 
                            TotalAmountPayed = @TotalAmountPayed
                         WHERE   
                        RoomID = @RoomID
                              
               Select 'Updated' as results  
                      
              END   
END  

         
GO
/****** Object:  StoredProcedure [dbo].[USP_RoomBooking_SelectALL]    Script Date: 2018/9/7 下午 06:46:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================    
-- To Select all RoomBooking  
-- EXEC USP_RoomBooking_SelectALL ''  
-- =============================================    
CREATE PROCEDURE [dbo].[USP_RoomBooking_SelectALL]     
(    
     @RoomID            VARCHAR(100)     = ''      
      )         
AS                                                                  
BEGIN         
        SELECT   A.RoomNo,
                B.BookingID, 
                B.RoomID ,  
                B.BookedDateFR, 
                B.BookedDateTO, 
                B.BookingStatus ,  
                B.PaymentStatus,  
                B.AdvancePayed, 
                B.TotalAmountPayed 
        FROM HotelMaster A
            Inner join RoomBooking B
            ON A.RoomID=B.RoomID
        WHERE  
                A.RoomID like  @RoomID +'%'  
          
END 
GO
