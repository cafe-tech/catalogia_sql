USE [CATALOGIA]
GO

/****** Object:  Table [dbo].[CatalogObject]     ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[CatalogObject](
	[CollectionID] [varchar](50) NULL,
	[ObjectID] [varchar](50) NOT NULL,
	[ObjectName] [varchar](50) NULL,
	[OtherName] [varchar](50) NULL,
	[OtherNumber] [varchar](50) NULL,
	[OldNumber] [varchar](50) NULL,
	[Accession] [varchar](50) NULL,
	[HomeLocation] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[YearRange] [varchar](50) NULL,
	[CatalogDate] [varchar](50) NULL,
	[CatalogedBy] [varchar](50) NULL,
	[StatusDate] [varchar](50) NULL,
	[StatusBy] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[AcquisitionDate] [varchar](50) NULL,
	[UpdatedBy] [varchar](50) NULL,
	[StatusCode] [varchar](50) NULL,
 CONSTRAINT [PK_CatalogObject] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


/****** Object:  Table [dbo].[Catalog]     ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Catalog](
	[CatalogID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Catalog] PRIMARY KEY CLUSTERED 
(
	[CatalogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



/****** Object:  Table [dbo].[Collection]     ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Collection](
	[CollectionID] [varchar](50) NOT NULL,
	[CollectionName] [varchar](50) NULL,
	[LongDescription] [varchar](50) NULL,
	[ShortDescription] [varchar](50) NULL,
 CONSTRAINT [PK_Collection] PRIMARY KEY CLUSTERED 
(
	[CollectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


/****** Object:  Table [dbo].[CatalogCustomFields]     ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[CatalogCustomFields](
	[CustomFieldID] [varchar](36) NOT NULL,
	[CategoryID] [varchar](50) NOT NULL,
	[ObjectID] [varchar](50) NOT NULL,
	[Collector] [varchar](50) NULL,
	[Title] [varchar](50) NULL,
	[Artist] [varchar](50) NULL,
	[SignedName] [varchar](50) NULL,
	[SigLocation] [varchar](50) NULL,
	[Medium] [varchar](50) NULL,
	[Technique] [varchar](50) NULL,
	[Material] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Culture] [varchar](50) NULL,
	[School] [varchar](50) NULL,
	[Accessories] [varchar](50) NULL,
	[ImageSize] [varchar](50) NULL,
	[FrameSize] [varchar](50) NULL,
	[FrameDesc] [varchar](50) NULL,
	[Provenance] [varchar](50) NULL,
 CONSTRAINT [PK_CatalogCustomFields] PRIMARY KEY CLUSTERED 
(
	[CustomFieldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



/****** Object:  Table [dbo].[CatalogCollection]    ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[CatalogCollection](
	[CatalogCollectionID] [varchar](50) NOT NULL,
	[CatalogID] [varchar](50) NULL,
	[CollectionID] [varchar](50) NULL,
 CONSTRAINT [PK_CatalogCollection] PRIMARY KEY CLUSTERED 
(
	[CatalogCollectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

