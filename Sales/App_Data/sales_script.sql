USE [master]
GO
/****** Object:  Database [Sales]    Script Date: 01/17/2016 23:44:48 ******/
CREATE DATABASE [Sales] ON  PRIMARY 
( NAME = N'Sales', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Sales.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Sales_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Sales_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Sales] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sales].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sales] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Sales] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Sales] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Sales] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Sales] SET ARITHABORT OFF
GO
ALTER DATABASE [Sales] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Sales] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Sales] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Sales] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Sales] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Sales] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Sales] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Sales] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Sales] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Sales] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Sales] SET  DISABLE_BROKER
GO
ALTER DATABASE [Sales] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Sales] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Sales] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Sales] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Sales] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Sales] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Sales] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Sales] SET  READ_WRITE
GO
ALTER DATABASE [Sales] SET RECOVERY FULL
GO
ALTER DATABASE [Sales] SET  MULTI_USER
GO
ALTER DATABASE [Sales] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Sales] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Sales', N'ON'
GO
USE [Sales]
GO
/****** Object:  Table [dbo].[VLDNAnchors]    Script Date: 01/17/2016 23:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VLDNAnchors](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_tbl_VLDNAnchor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Practises]    Script Date: 01/17/2016 23:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Practises](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_tbl_Practise] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmingAnchors]    Script Date: 01/17/2016 23:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmingAnchors](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_tbl_FarmingAnchor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryLeads]    Script Date: 01/17/2016 23:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryLeads](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_tbl_DeliveryLead] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryAnchors]    Script Date: 01/17/2016 23:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryAnchors](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_tbl_DeliveryAnchor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DealVerticals]    Script Date: 01/17/2016 23:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DealVerticals](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_tbl_DealVertical] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DealVerticals] ([Id], [Name], [IsDeleted], [CreatedDateTime], [UpdatedDateTime]) VALUES (1, N'ECS', 0, CAST(0x0000A59000F3ED24 AS DateTime), CAST(0x0000A59000F3ED24 AS DateTime))
INSERT [dbo].[DealVerticals] ([Id], [Name], [IsDeleted], [CreatedDateTime], [UpdatedDateTime]) VALUES (2, N'MFG', 0, CAST(0x0000A59000F3ED24 AS DateTime), CAST(0x0000A59000F3ED24 AS DateTime))
INSERT [dbo].[DealVerticals] ([Id], [Name], [IsDeleted], [CreatedDateTime], [UpdatedDateTime]) VALUES (3, N'RCL', 0, CAST(0x0000A59000F3ED24 AS DateTime), CAST(0x0000A59000F3ED24 AS DateTime))
INSERT [dbo].[DealVerticals] ([Id], [Name], [IsDeleted], [CreatedDateTime], [UpdatedDateTime]) VALUES (4, N'FSI', 0, CAST(0x0000A59000F3ED24 AS DateTime), CAST(0x0000A59000F3ED24 AS DateTime))
/****** Object:  Table [dbo].[Deals]    Script Date: 01/17/2016 23:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Deals](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](max) NULL,
	[OppurtunityName] [nvarchar](max) NULL,
	[OppurtunityDescription] [nvarchar](max) NULL,
	[CiarraID] [bigint] NULL,
	[DealOpportunityStatusId] [bigint] NULL,
	[DealOpportunityTypeId] [bigint] NULL,
	[DealVerticalId] [bigint] NULL,
	[DealRegionId] [bigint] NULL,
	[PractiseId] [bigint] NULL,
	[EstAdditionalTCV] [bigint] NULL,
	[Duration] [bigint] NULL,
	[DealExpClosureQtr] [varchar](150) NULL,
	[DealEngStartDate] [date] NULL,
	[DealCurrentStatusId] [bigint] NULL,
	[SubAdditionalTCV] [bigint] NULL,
	[FY16Revenue] [bigint] NULL,
	[Q1Revenue] [bigint] NULL,
	[Q2Revenue] [bigint] NULL,
	[Q3Revenue] [bigint] NULL,
	[Q4Revenue] [bigint] NULL,
	[Competition] [nvarchar](max) NULL,
	[CurrSupportReq] [nvarchar](max) NULL,
	[WklyRunningUpdates] [nvarchar](max) NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[DealFarmingLead] [bigint] NULL,
	[DealVLDNLead] [bigint] NULL,
	[DeliveryLeadId] [bigint] NULL,
	[FarmingAnchorId] [bigint] NULL,
	[VLDNAnchorId] [bigint] NULL,
	[DeliveryAnchorId] [bigint] NULL,
	[ContractSignDate] [date] NULL,
	[PractiseSME] [nvarchar](max) NULL,
	[ItemType] [nvarchar](max) NULL,
	[Path] [nvarchar](max) NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_tbl_DealMasterTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Deals] ON
INSERT [dbo].[Deals] ([Id], [CustomerName], [OppurtunityName], [OppurtunityDescription], [CiarraID], [DealOpportunityStatusId], [DealOpportunityTypeId], [DealVerticalId], [DealRegionId], [PractiseId], [EstAdditionalTCV], [Duration], [DealExpClosureQtr], [DealEngStartDate], [DealCurrentStatusId], [SubAdditionalTCV], [FY16Revenue], [Q1Revenue], [Q2Revenue], [Q3Revenue], [Q4Revenue], [Competition], [CurrSupportReq], [WklyRunningUpdates], [Remarks], [DealFarmingLead], [DealVLDNLead], [DeliveryLeadId], [FarmingAnchorId], [VLDNAnchorId], [DeliveryAnchorId], [ContractSignDate], [PractiseSME], [ItemType], [Path], [ModifiedBy], [IsDeleted], [CreatedDateTime], [UpdatedDateTime]) VALUES (9, N'a', N'w', N'w', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', NULL, NULL, NULL, NULL)
INSERT [dbo].[Deals] ([Id], [CustomerName], [OppurtunityName], [OppurtunityDescription], [CiarraID], [DealOpportunityStatusId], [DealOpportunityTypeId], [DealVerticalId], [DealRegionId], [PractiseId], [EstAdditionalTCV], [Duration], [DealExpClosureQtr], [DealEngStartDate], [DealCurrentStatusId], [SubAdditionalTCV], [FY16Revenue], [Q1Revenue], [Q2Revenue], [Q3Revenue], [Q4Revenue], [Competition], [CurrSupportReq], [WklyRunningUpdates], [Remarks], [DealFarmingLead], [DealVLDNLead], [DeliveryLeadId], [FarmingAnchorId], [VLDNAnchorId], [DeliveryAnchorId], [ContractSignDate], [PractiseSME], [ItemType], [Path], [ModifiedBy], [IsDeleted], [CreatedDateTime], [UpdatedDateTime]) VALUES (10, N's', N's', N's', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Deals] OFF
/****** Object:  Table [dbo].[DealRegions]    Script Date: 01/17/2016 23:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DealRegions](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_tbl_DealRegion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DealOpportunityTypes]    Script Date: 01/17/2016 23:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DealOpportunityTypes](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_tbl_DealOpportunityType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DealOpportunityTypes] ([Id], [Name], [IsDeleted], [CreatedDateTime], [UpdatedDateTime]) VALUES (1, N'ProActive', 0, CAST(0x0000A59000F3A5F9 AS DateTime), CAST(0x0000A59000F3A5F9 AS DateTime))
INSERT [dbo].[DealOpportunityTypes] ([Id], [Name], [IsDeleted], [CreatedDateTime], [UpdatedDateTime]) VALUES (2, N'Active', 0, CAST(0x0000A59000F3A5F9 AS DateTime), CAST(0x0000A59000F3A5F9 AS DateTime))
/****** Object:  Table [dbo].[DealOpportunityStatuses]    Script Date: 01/17/2016 23:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DealOpportunityStatuses](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_tbl_DealOpportunityStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DealOpportunityStatuses] ([Id], [Name], [IsDeleted], [CreatedDateTime], [UpdatedDateTime]) VALUES (1, N'New', 0, CAST(0x0000A59000F36BED AS DateTime), CAST(0x0000A59000F36BED AS DateTime))
INSERT [dbo].[DealOpportunityStatuses] ([Id], [Name], [IsDeleted], [CreatedDateTime], [UpdatedDateTime]) VALUES (2, N'Renew', 0, CAST(0x0000A59000F36BED AS DateTime), CAST(0x0000A59000F36BED AS DateTime))
/****** Object:  Table [dbo].[DealCurrentStatuses]    Script Date: 01/17/2016 23:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DealCurrentStatuses](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_tbl_DealCurrentStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DealCurrentStatuses] ([Id], [Name], [IsDeleted], [CreatedDateTime], [UpdatedDateTime]) VALUES (1, N'DealCurrentStatus 1', 0, CAST(0x0000A590012FBFAF AS DateTime), CAST(0x0000A590012FBFAF AS DateTime))
INSERT [dbo].[DealCurrentStatuses] ([Id], [Name], [IsDeleted], [CreatedDateTime], [UpdatedDateTime]) VALUES (2, N'DealCurrentStatus 2', 0, CAST(0x0000A590012FC592 AS DateTime), CAST(0x0000A590012FC592 AS DateTime))
/****** Object:  Default [DF_VLDNAnchors_IsDeleted]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[VLDNAnchors] ADD  CONSTRAINT [DF_VLDNAnchors_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_VLDNAnchors_CreatedDateTime]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[VLDNAnchors] ADD  CONSTRAINT [DF_VLDNAnchors_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
/****** Object:  Default [DF_VLDNAnchors_UpdatedDateTime]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[VLDNAnchors] ADD  CONSTRAINT [DF_VLDNAnchors_UpdatedDateTime]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
/****** Object:  Default [DF_Practises_IsDeleted]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[Practises] ADD  CONSTRAINT [DF_Practises_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Practises_CreatedDateTime]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[Practises] ADD  CONSTRAINT [DF_Practises_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
/****** Object:  Default [DF_Practises_UpdatedDateTime]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[Practises] ADD  CONSTRAINT [DF_Practises_UpdatedDateTime]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
/****** Object:  Default [DF_FarmingAnchors_IsDeleted]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[FarmingAnchors] ADD  CONSTRAINT [DF_FarmingAnchors_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_FarmingAnchors_CreatedDateTime]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[FarmingAnchors] ADD  CONSTRAINT [DF_FarmingAnchors_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
/****** Object:  Default [DF_FarmingAnchors_UpdatedDateTime]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[FarmingAnchors] ADD  CONSTRAINT [DF_FarmingAnchors_UpdatedDateTime]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
/****** Object:  Default [DF_DeliveryLeads_IsDeleted]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[DeliveryLeads] ADD  CONSTRAINT [DF_DeliveryLeads_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_DeliveryLeads_CreatedDateTime]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[DeliveryLeads] ADD  CONSTRAINT [DF_DeliveryLeads_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
/****** Object:  Default [DF_DeliveryLeads_UpdatedDateTime]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[DeliveryLeads] ADD  CONSTRAINT [DF_DeliveryLeads_UpdatedDateTime]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
/****** Object:  Default [DF_DeliveryAnchors_IsDeleted]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[DeliveryAnchors] ADD  CONSTRAINT [DF_DeliveryAnchors_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_DeliveryAnchors_CreatedDateTime]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[DeliveryAnchors] ADD  CONSTRAINT [DF_DeliveryAnchors_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
/****** Object:  Default [DF_DeliveryAnchors_UpdatedDateTime]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[DeliveryAnchors] ADD  CONSTRAINT [DF_DeliveryAnchors_UpdatedDateTime]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
/****** Object:  Default [DF_DealVerticals_IsDeleted]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[DealVerticals] ADD  CONSTRAINT [DF_DealVerticals_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_DealVerticals_CreatedDateTime]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[DealVerticals] ADD  CONSTRAINT [DF_DealVerticals_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
/****** Object:  Default [DF_DealVerticals_UpdatedDateTime]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[DealVerticals] ADD  CONSTRAINT [DF_DealVerticals_UpdatedDateTime]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
/****** Object:  Default [DF_Deals_IsDeleted]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[Deals] ADD  CONSTRAINT [DF_Deals_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Deals_CreatedDate]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[Deals] ADD  CONSTRAINT [DF_Deals_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
/****** Object:  Default [DF_Deals_UpdatedDate]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[Deals] ADD  CONSTRAINT [DF_Deals_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
/****** Object:  Default [DF_DealRegions_IsDeleted]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[DealRegions] ADD  CONSTRAINT [DF_DealRegions_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_DealRegions_CreatedDateTime]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[DealRegions] ADD  CONSTRAINT [DF_DealRegions_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
/****** Object:  Default [DF_DealRegions_UpdatedDateTime]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[DealRegions] ADD  CONSTRAINT [DF_DealRegions_UpdatedDateTime]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
/****** Object:  Default [DF_DealOpportunityTypes_IsDeleted]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[DealOpportunityTypes] ADD  CONSTRAINT [DF_DealOpportunityTypes_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_DealOpportunityTypes_CreatedDateTime]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[DealOpportunityTypes] ADD  CONSTRAINT [DF_DealOpportunityTypes_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
/****** Object:  Default [DF_DealOpportunityTypes_UpdatedDateTime]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[DealOpportunityTypes] ADD  CONSTRAINT [DF_DealOpportunityTypes_UpdatedDateTime]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
/****** Object:  Default [DF_DealOpportunityStatus_IsDeleted]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[DealOpportunityStatuses] ADD  CONSTRAINT [DF_DealOpportunityStatus_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_DealOpportunityStatus_CreatedDateTime]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[DealOpportunityStatuses] ADD  CONSTRAINT [DF_DealOpportunityStatus_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
/****** Object:  Default [DF_DealOpportunityStatus_UpdatedDateTime]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[DealOpportunityStatuses] ADD  CONSTRAINT [DF_DealOpportunityStatus_UpdatedDateTime]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
/****** Object:  Default [DF_DealCurrentStatus_IsDeleted]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[DealCurrentStatuses] ADD  CONSTRAINT [DF_DealCurrentStatus_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_DealCurrentStatus_CreatedDate]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[DealCurrentStatuses] ADD  CONSTRAINT [DF_DealCurrentStatus_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
/****** Object:  Default [DF_DealCurrentStatus_UpdatedDate]    Script Date: 01/17/2016 23:44:49 ******/
ALTER TABLE [dbo].[DealCurrentStatuses] ADD  CONSTRAINT [DF_DealCurrentStatus_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
