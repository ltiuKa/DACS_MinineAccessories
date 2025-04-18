USE [Accessories_Store]
GO
/****** Object:  Schema [HangFire]    Script Date: 6/2/2024 3:40:35 PM ******/
CREATE SCHEMA [HangFire]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[Birthday] [datetime2](7) NULL,
	[Address] [nvarchar](max) NULL,
	[Avatar] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[Deleted] [bit] NULL,
	[Active] [bit] NULL,
	[RoleId] [int] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Scontent] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[Thumb] [nvarchar](max) NULL,
	[Published] [bit] NOT NULL,
	[Alias] [nvarchar](max) NULL,
	[Author] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
	[Views] [int] NULL,
	[Status] [int] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ParentId] [int] NULL,
	[TypeId] [int] NOT NULL,
	[Thumb] [nvarchar](max) NULL,
	[Hot] [bit] NULL,
	[Published] [bit] NOT NULL,
	[Alias] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryTypes]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_CategoryTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
	[ProductId] [int] NULL,
	[Status] [int] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[BlogId] [int] NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KeywordProduct]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KeywordProduct](
	[KeywordsId] [int] NOT NULL,
	[ProductsId] [int] NOT NULL,
 CONSTRAINT [PK_KeywordProduct] PRIMARY KEY CLUSTERED 
(
	[KeywordsId] ASC,
	[ProductsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Keywords]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Keywords](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[Hot] [bit] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Keywords] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[Price] [float] NULL,
	[ProductSize] [int] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Price] [float] NULL,
	[TotalPrice] [float] NULL,
	[TotalDiscount] [float] NULL,
	[OrderStatusPayment] [int] NULL,
	[OrderStatusTransport] [int] NULL,
	[TotalQuantity] [int] NULL,
	[Notes] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentCoupons]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentCoupons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CouponCode] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NOT NULL,
	[DiscountValue] [int] NOT NULL,
	[DiscountUnit] [int] NOT NULL,
	[MinimumOrder] [int] NOT NULL,
	[MaximumDiscount] [float] NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[ValidUntil] [datetime2](7) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_PaymentCoupons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[Path] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMaterials]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMaterials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[Thumb] [nvarchar](max) NULL,
	[Alias] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_ProductMaterials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Thumb] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[ProductMaterialId] [int] NOT NULL,
	[ProductObjectId] [int] NULL,
	[ProductCollectionId] [int] NULL,
	[Sale] [int] NULL,
	[Newfeed] [bit] NOT NULL,
	[Homeflag] [bit] NOT NULL,
	[Hot] [bit] NOT NULL,
	[Published] [bit] NOT NULL,
	[Alias] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[TransactionId] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductVariants]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductVariants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[ProductSize] [int] NULL,
	[Price] [float] NULL,
	[Quantity] [int] NULL,
	[Status] [int] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_ProductVariants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ratings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[NumberStars] [int] NULL,
	[UserId] [nvarchar](450) NULL,
	[ProductId] [int] NULL,
	[Status] [int] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Ratings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slides]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slides](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
	[Thumb] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Slides] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[Price] [float] NULL,
	[Quantity] [int] NULL,
	[TotalPrice] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[CreatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[AggregatedCounter]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[AggregatedCounter](
	[Key] [nvarchar](100) NOT NULL,
	[Value] [bigint] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_CounterAggregated] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Counter]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Counter](
	[Key] [nvarchar](100) NOT NULL,
	[Value] [int] NOT NULL,
	[ExpireAt] [datetime] NULL,
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_HangFire_Counter] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Hash]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Hash](
	[Key] [nvarchar](100) NOT NULL,
	[Field] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime2](7) NULL,
 CONSTRAINT [PK_HangFire_Hash] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Field] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Job]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Job](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StateId] [bigint] NULL,
	[StateName] [nvarchar](20) NULL,
	[InvocationData] [nvarchar](max) NOT NULL,
	[Arguments] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[JobParameter]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobParameter](
	[JobId] [bigint] NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_JobParameter] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[JobQueue]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobQueue](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobId] [bigint] NOT NULL,
	[Queue] [nvarchar](50) NOT NULL,
	[FetchedAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_JobQueue] PRIMARY KEY CLUSTERED 
(
	[Queue] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[List]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[List](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_List] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Schema]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Schema](
	[Version] [int] NOT NULL,
 CONSTRAINT [PK_HangFire_Schema] PRIMARY KEY CLUSTERED 
(
	[Version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Server]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Server](
	[Id] [nvarchar](200) NOT NULL,
	[Data] [nvarchar](max) NULL,
	[LastHeartbeat] [datetime] NOT NULL,
 CONSTRAINT [PK_HangFire_Server] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Set]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Set](
	[Key] [nvarchar](100) NOT NULL,
	[Score] [float] NOT NULL,
	[Value] [nvarchar](256) NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Set] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[State]    Script Date: 6/2/2024 3:40:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[State](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobId] [bigint] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Reason] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[Data] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_State] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240519095745_init', N'7.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240525075931_init-voucher', N'7.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240525082659_init-voucher-1', N'7.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240525094811_init-voucher-12', N'7.0.18')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'17f8e03a-974f-4d0e-b35f-2ec06eae771d', N'Admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'69ae8b33-9d96-49c3-a39a-468b96c5f0fa', N'Customer', N'CUSTOMER', NULL)
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'101083477700249064039', N'Google', N'960baf9f-17de-4a73-9f81-67fa2f5a9c0d')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'107035279011641246988', N'Google', N'd65dceda-2b02-47c0-bc7d-6d2d37131ed0')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'110861313682865064792', N'Google', N'668f2f1f-8be0-4453-b7dd-631519a2f704')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'115314011442048536265', N'Google', N'46116f86-3401-4df1-9812-5edfd314b9fb')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7e533599-a013-424b-b5f5-80030ce71954', N'17f8e03a-974f-4d0e-b35f-2ec06eae771d')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Name], [Password], [Phone], [Gender], [Birthday], [Address], [Avatar], [Status], [Deleted], [Active], [RoleId], [CreatedAt], [UpdatedAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'46116f86-3401-4df1-9812-5edfd314b9fb', N'ApplicationUser', N'Phạm Thu Trang', NULL, NULL, NULL, CAST(N'2024-05-11T00:00:00.0000000' AS DateTime2), N'371 Nguyễn Kiệm, Gò Vấp, TP Hồ Chí Minh', N'thup31515gmailcom.jpg', 1, NULL, 1, NULL, NULL, NULL, N'thup31515@gmail.com', N'THUP31515@GMAIL.COM', N'thup31515@gmail.com', N'THUP31515@GMAIL.COM', 0, NULL, N'BE7IRAV3JMZ5444BCSS7WBHO7HHIYDKV', N'd3525134-a689-4233-af01-6f22ca0c4a79', N'0892331115', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Name], [Password], [Phone], [Gender], [Birthday], [Address], [Avatar], [Status], [Deleted], [Active], [RoleId], [CreatedAt], [UpdatedAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'668f2f1f-8be0-4453-b7dd-631519a2f704', N'ApplicationUser', N'Đoàn Kiều Loan', NULL, NULL, NULL, CAST(N'2024-04-30T00:00:00.0000000' AS DateTime2), N'191 Nguyễn Văn Cừ, Lộc Phát', N'hoandd111gmailcom.jpg', NULL, NULL, NULL, NULL, NULL, NULL, N'hoandd111@gmail.com', N'HOANDD111@GMAIL.COM', N'hoandd111@gmail.com', N'HOANDD111@GMAIL.COM', 0, NULL, N'YRXZXWT6V6TZNNLDEJHRRAMOPA4VE4LJ', N'7091034a-b8a3-4f13-94f2-f5a941778e50', N'0765189285', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Name], [Password], [Phone], [Gender], [Birthday], [Address], [Avatar], [Status], [Deleted], [Active], [RoleId], [CreatedAt], [UpdatedAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7e533599-a013-424b-b5f5-80030ce71954', N'ApplicationUser', N'Ngo Thai Hoan', NULL, NULL, NULL, CAST(N'2024-05-02T00:00:00.0000000' AS DateTime2), N'526 Nguyễn Văn Cừ, Lộc Phát', N'hoanthai1103gmailcom.jpg', 1, NULL, 1, NULL, NULL, NULL, N'hoanthai1103@gmail.com', N'HOANTHAI1103@GMAIL.COM', N'hoanthai1103@gmail.com', N'HOANTHAI1103@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEJJcxvHR9xCuzGidaZdjZZOShZfkBMIy1+vT3p6G+C1apT7+PlOx8ZcEVBzy3IQMYw==', N'SGMGEAJUUCTVJ5OVELNLN5M7Q6WFQJYT', N'c3e8caf8-3d01-4abb-a350-2b608205ad31', N'0916491863', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Name], [Password], [Phone], [Gender], [Birthday], [Address], [Avatar], [Status], [Deleted], [Active], [RoleId], [CreatedAt], [UpdatedAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'960baf9f-17de-4a73-9f81-67fa2f5a9c0d', N'ApplicationUser', N'Bùi Trọng Tấn', NULL, NULL, NULL, CAST(N'2024-05-10T00:00:00.0000000' AS DateTime2), N'139 Chu Văn An, Bảo Lộc, Lâm Đồng', N'ngoh07266gmailcom.jpg', 1, NULL, 1, NULL, NULL, NULL, N'ngoh07266@gmail.com', N'NGOH07266@GMAIL.COM', N'ngoh07266@gmail.com', N'NGOH07266@GMAIL.COM', 0, NULL, N'CEIFUTSW2AEXWMRLI72UI7FOUSBETJSR', N'dd26c1fc-1047-463a-ac97-eccfae778777', N'0946048541', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Name], [Password], [Phone], [Gender], [Birthday], [Address], [Avatar], [Status], [Deleted], [Active], [RoleId], [CreatedAt], [UpdatedAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd65dceda-2b02-47c0-bc7d-6d2d37131ed0', N'ApplicationUser', N'Pham van a', NULL, NULL, NULL, CAST(N'2024-05-29T00:00:00.0000000' AS DateTime2), N'TP Hồ Chí Minh', N'kukun1503gmailcom.jpg', NULL, NULL, NULL, NULL, NULL, NULL, N'kukun1503@gmail.com', N'KUKUN1503@GMAIL.COM', N'kukun1503@gmail.com', N'KUKUN1503@GMAIL.COM', 0, NULL, N'I5ZT7PX6J6LPQAIYO77XX64XRG5GJATE', N'7d5afc94-c892-4e53-ae51-3f19b03b87a6', N'0942311883', 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([Id], [Title], [Scontent], [Content], [Thumb], [Published], [Alias], [Author], [UserId], [Views], [Status], [CreatedAt], [UpdatedAt]) VALUES (1, N'Lan tỏa giá trị văn hóa truyền thống cùng BST trang sức kim cương lấy ý tưởng từ tác phẩm đan lát tre nứa Việt Nam', N'Từ lâu, kim cương đã được mệnh danh là “nữ hoàng đá quý” với vẻ đẹp lấp lánh huyền ảo và trường tồn theo thời gian. Trong BST Timeless Diamond, Minine đem đến sự kết hợp độc đáo giữa kim cương rực rỡ và tinh hoa văn hóa Việt Nam, tạo nên những món trang sức không chỉ sang trọng mà còn mang đậm bản sắc dân tộc.

Lấy cảm hứng từ nghệ thuật đan lát tre nứa truyền thống, những thiết kế Timeless Diamond tái hiện hình ảnh những thanh tre mảnh mai tưởng chừng yếu ớt, nhưng khi đan xen vào nhau lại tạo nên sức mạnh và sự bền bỉ đáng kinh ngạc. Giống như kim cương, tuy trong trẻo, mỏng manh nhưng thực chất lại cứng cáp vô cùng.', N'Quý cô có thể kết hợp cả 2 món trang sức để tạo nên vẻ đẹp rạng rỡ, thu hút trong những bữa tiệc sang trọng. Hoặc nàng có thể tách lẻ từng món, biến tấu thành điểm nhấn thanh lịch cho những trang phục ngày thường. Biểu tượng ống tre mộc mạc được cách điệu tinh tế trên trang sức không chỉ mang đến vẻ đẹp độc đáo mà còn tiếp thêm cho người phụ nữ niềm tự hào về quê hương Việt Nam thân yêu.
Nhẫn Kim Cương Vàng 14K Minine  Timeless Diamond DDDDC001130 là một trong những mẫu nhẫn kinh điển phù hợp cho mọi hoàn cảnh từ đi làm, dự tiệc hay hẹn hò ngọt ngào. Thiết kế nhẫn sử dụng 18 viên kim cương phụ để tôn lên sự lấp lánh của viên kim cương chính vô cùng đặc sắc. Phần đai nhẫn được nhấn nhá bởi chi tiết nút tre đan chéo đậm chất Việt Nam. Với thiết kế rất dễ ứng dựng, nàng có thể rủ rê cạ cứng hoặc người thân cùng nhau đeo nhẫn đôi, vừa tăng thêm tình cảm, vừa cùng nhau thể hiện sự yêu thích văn hóa Việt Nam.

Chúng tôi tin rằng với những gợi ý trên, quý cô có thể dễ dàng lựa chọn được sản phẩm ưng ý cho mình. Ngoài ra, Minine còn mang đến cho quý khách hàng vô số thiết kế đa dạng khác trong BST Timeless Diamond tại website, sẵn sàng đáp ứng mọi nhu cầu và sở thích của nàng. Hãy cùng PNJ lan tỏa nét đẹp truyền thống văn hóa Việt Nam và tỏa sáng rực rỡ với BST Timeless Diamond ngay nhé!', N'getuseriduser-1122.jpg', 1, N'lan-toa-gia-tri-van-hoa-truyen-thong-cung-bst-trang-suc-kim-cuong-lay-y-tuong-tu-tac-pham-dan-lat-tre-nua-viet-nam', NULL, N'7e533599-a013-424b-b5f5-80030ce71954', NULL, 1, CAST(N'2024-05-20T18:49:10.0000000' AS DateTime2), CAST(N'2024-05-21T21:12:19.5557506' AS DateTime2))
INSERT [dbo].[Blogs] ([Id], [Title], [Scontent], [Content], [Thumb], [Published], [Alias], [Author], [UserId], [Views], [Status], [CreatedAt], [UpdatedAt]) VALUES (2, N'Gợi ý 5 mẫu vòng tay bán chạy nhất từ STYLE by Minine cho nàng tự do “flexing” cá tính', N'Chọn được món trang sức “hợp gu” tựa như khoác lên mình nguồn năng lượng tích cực, giúp bạn tự tin tỏa sáng trong cuộc sống hằng ngày. Với thông điệp “TUYÊN NGÔN YÊU BẢN THÂN – TỰ TIN ĐỂ KHÔNG NGỪNG TÁI TẠO NĂNG LƯỢNG TÍCH CỰC TRONG CUỘC SỐNG”, STYLE by PNJ mang đến cho các cô nàng BST LUCKY ME những mẫu vòng tay đa dạng, trendy, giúp bạn tự tin “flex” cá tính và khẳng định bản thân.', N'Vòng tay này có thể phối “chất như nước cất” với nhiều loại trang phục khác nhau: từ trang phục thanh lịch đến những bộ cánh cá tính. Chắc chắn rằng, diện “em” này đi chơi, đi tiệc hay đi làm, bạn sẽ “auto nổi bật” để lan tỏa năng lượng đến mọi người xung quanh!
Bạn có thể biến hóa phong cách đa dạng với chiếc vòng tay này. Phối hợp cùng áo khoác da, boots, choker để tạo nên vẻ ngoài trẻ trung, phá cách. Hoặc kết hợp với váy đầm, áo sơ mi, sandal cao gót để hoàn thiện phong cách nữ tính, ngọt ngào. Hãy tự tin thể hiện cá tính và tỏa sáng rạng ngời với món phụ kiện đặc biệt này nhé!
Nàng có thể tự tin diện chiếc lắc chân này với giày thể thao cá tính hoặc giày cao gót quyến rũ. Chắc chắn món phụ kiện “độc lạ” này sẽ là điểm nhấn nổi bật, tạo nên cá tính độc đáo cho nàng!

Hãy “tậu” ngay cho mình những mẫu vòng tay, lắc chân “hot trend” từ nhà STYLE by Minine để “flex” phong cách riêng của mình! Với thiết kế đa dạng, chất liệu cao cấp, những thiết kế gợi ý trên sẽ là món phụ kiện hoàn hảo cho mọi cô gái. Truy cập ngay website Minine  để khám phá thêm nhé!', N'goi-y-5-mau-vong-tay-ban-chay-nhat-tu-style-by-pnj-cho-nang-tu-do-flexing-ca-tinh.jpg', 1, N'goi-y-5-mau-vong-tay-ban-chay-nhat-tu-style-by-minine-cho-nang-tu-do-flexing-ca-tinh', NULL, N'7e533599-a013-424b-b5f5-80030ce71954', NULL, 1, CAST(N'2024-05-20T18:40:44.0000000' AS DateTime2), CAST(N'2024-05-21T21:12:33.3295150' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Description], [ParentId], [TypeId], [Thumb], [Hot], [Published], [Alias], [Status], [CreatedAt], [UpdatedAt]) VALUES (1, N'Nhẫn', N'Nhẫn', -1, 1, N'nhan.jpg', NULL, 0, N'nhan', 1, CAST(N'2024-05-19T17:01:41.0000000' AS DateTime2), NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [ParentId], [TypeId], [Thumb], [Hot], [Published], [Alias], [Status], [CreatedAt], [UpdatedAt]) VALUES (2, N'Moment Collection', N'Moment Collection', -1, 3, N'moment-collection.jpg', NULL, 0, N'moment-collection', 1, CAST(N'2024-05-19T17:02:09.0698021' AS DateTime2), CAST(N'2024-05-19T17:02:09.0698044' AS DateTime2))
INSERT [dbo].[Categories] ([Id], [Name], [Description], [ParentId], [TypeId], [Thumb], [Hot], [Published], [Alias], [Status], [CreatedAt], [UpdatedAt]) VALUES (3, N'Dành cho phụ nữ', N'Dành cho phụ nữ', -1, 2, N'danh-cho-phu-nu.jpg', NULL, 0, N'danh-cho-phu-nu', 1, CAST(N'2024-05-19T17:02:31.0000000' AS DateTime2), NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [ParentId], [TypeId], [Thumb], [Hot], [Published], [Alias], [Status], [CreatedAt], [UpdatedAt]) VALUES (4, N'Dây chuyền', N'Dây chuyền', -1, 1, N'vong-co.jpg', NULL, 0, N'day-chuyen', 1, CAST(N'2024-05-19T17:03:52.0000000' AS DateTime2), NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [ParentId], [TypeId], [Thumb], [Hot], [Published], [Alias], [Status], [CreatedAt], [UpdatedAt]) VALUES (5, N'Summer Collection', N'Bộ sưu tập mùa hè', -1, 3, N'summer-collection.jpg', NULL, 0, N'summer-collection', 1, CAST(N'2024-05-22T07:57:21.7698218' AS DateTime2), CAST(N'2024-05-22T07:57:21.7699166' AS DateTime2))
INSERT [dbo].[Categories] ([Id], [Name], [Description], [ParentId], [TypeId], [Thumb], [Hot], [Published], [Alias], [Status], [CreatedAt], [UpdatedAt]) VALUES (6, N'Dark Heart Collection ', N'Dark Heart Collection Dark Heart Collection ', -1, 3, N'dark-heart-collection.jpg', NULL, 0, N'dark-heart-collection', 1, CAST(N'2024-05-22T08:08:42.2028681' AS DateTime2), CAST(N'2024-05-22T08:08:42.2028715' AS DateTime2))
INSERT [dbo].[Categories] ([Id], [Name], [Description], [ParentId], [TypeId], [Thumb], [Hot], [Published], [Alias], [Status], [CreatedAt], [UpdatedAt]) VALUES (7, N'Dành cho Nam', N'Dành cho Nam', -1, 2, N'danh-cho-nam.jpg', NULL, 0, N'danh-cho-nam', 1, CAST(N'2024-05-22T08:09:48.0000000' AS DateTime2), NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [ParentId], [TypeId], [Thumb], [Hot], [Published], [Alias], [Status], [CreatedAt], [UpdatedAt]) VALUES (8, N'Khuyên tai', NULL, -1, 1, N'khuyen-tai.jpg', NULL, 0, N'khuyen-tai', 1, CAST(N'2024-05-22T08:15:08.0013928' AS DateTime2), CAST(N'2024-05-22T08:15:08.0013998' AS DateTime2))
INSERT [dbo].[Categories] ([Id], [Name], [Description], [ParentId], [TypeId], [Thumb], [Hot], [Published], [Alias], [Status], [CreatedAt], [UpdatedAt]) VALUES (9, N'Lắc tay', N'Lắc tay', -1, 1, N'lac-tay.jpg', NULL, 0, N'lac-tay', 1, CAST(N'2024-05-22T08:15:35.7549402' AS DateTime2), CAST(N'2024-05-22T08:15:35.7549419' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[CategoryTypes] ON 

INSERT [dbo].[CategoryTypes] ([Id], [Name], [Description], [Status], [CreatedAt], [UpdatedAt]) VALUES (1, N'Danh mục', NULL, NULL, CAST(N'2024-05-19T17:00:11.5194236' AS DateTime2), CAST(N'2024-05-19T17:00:11.5194671' AS DateTime2))
INSERT [dbo].[CategoryTypes] ([Id], [Name], [Description], [Status], [CreatedAt], [UpdatedAt]) VALUES (2, N'Đối tượng mua', NULL, NULL, CAST(N'2024-05-19T17:00:21.0471005' AS DateTime2), CAST(N'2024-05-19T17:00:21.0471024' AS DateTime2))
INSERT [dbo].[CategoryTypes] ([Id], [Name], [Description], [Status], [CreatedAt], [UpdatedAt]) VALUES (3, N'Bộ sưu tập', NULL, NULL, CAST(N'2024-05-19T17:00:28.6550633' AS DateTime2), CAST(N'2024-05-19T17:00:28.6550651' AS DateTime2))
SET IDENTITY_INSERT [dbo].[CategoryTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Id], [Content], [UserId], [ProductId], [Status], [CreatedAt], [UpdatedAt], [BlogId]) VALUES (1, N'rat tuyet', N'7e533599-a013-424b-b5f5-80030ce71954', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Comments] ([Id], [Content], [UserId], [ProductId], [Status], [CreatedAt], [UpdatedAt], [BlogId]) VALUES (2, N'bai rat hay', N'7e533599-a013-424b-b5f5-80030ce71954', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Comments] ([Id], [Content], [UserId], [ProductId], [Status], [CreatedAt], [UpdatedAt], [BlogId]) VALUES (3, N'Can noi chi tiet hon', N'7e533599-a013-424b-b5f5-80030ce71954', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Comments] ([Id], [Content], [UserId], [ProductId], [Status], [CreatedAt], [UpdatedAt], [BlogId]) VALUES (4, N'dfadsfasd', N'7e533599-a013-424b-b5f5-80030ce71954', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Comments] ([Id], [Content], [UserId], [ProductId], [Status], [CreatedAt], [UpdatedAt], [BlogId]) VALUES (5, N'rất hữu ích cho tôi', N'7e533599-a013-424b-b5f5-80030ce71954', NULL, NULL, NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([Id], [Name], [Phone], [Email], [Title], [Message], [CreatedAt], [UpdatedAt]) VALUES (1, N'Ngô Thái Hoàn', N'0916491863', N'hoanthai1103@gmail.com', N'Thật là tuyệt sao', N'Thật là tuyệt saoThật là tuyệt saoThật là tuyệt saoThật là tuyệt saoThật là tuyệt saoThật là tuyệt saoThật là tuyệt sao', CAST(N'2024-05-20T17:47:14.1825099' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (1, 1, 1, 1, 3000000, 31)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (2, 2, 1, 4, 3000000, 31)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (3, 2, 1, 4, 230000, 29)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (4, 3, 2, 1, 230000, 7)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (5, 4, 1, 1, 3000000, 31)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (6, 4, 2, 1, 230000, 7)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (7, 5, 8, 1, 290000, 25)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (8, 6, 5, 13, 380000, 25)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (9, 7, 12, 1, 920000, 3)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (10, 8, 2, 1, 230000, 7)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (11, 9, 7, 1, 390000, 27)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (12, 10, 15, 1, 1200000, 3)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (13, 11, 15, 1, 1200000, 3)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (14, 11, 12, 1, 920000, 3)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (15, 11, 9, 1, 320000, 25)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (16, 12, 5, 2, 380000, 25)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (17, 13, 1, 1, 360000, 27)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (18, 13, 1, 1, 230000, 29)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (19, 13, 8, 1, 290000, 25)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (20, 13, 4, 1, 420000, 27)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (21, 14, 15, 1, 1200000, 3)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (22, 14, 12, 1, 920000, 3)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (23, 15, 2, 1, 230000, 7)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (24, 16, 4, 1, 400000, 25)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (25, 16, 4, 1, 420000, 27)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (26, 17, 14, 1, 210000, 3)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (27, 17, 13, 1, 190000, 3)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (28, 18, 2, 1, 230000, 7)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (29, 19, 2, 1, 230000, 7)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price], [ProductSize]) VALUES (30, 19, 1, 1, 360000, 27)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [Name], [Address], [Phone], [Price], [TotalPrice], [TotalDiscount], [OrderStatusPayment], [OrderStatusTransport], [TotalQuantity], [Notes], [Status], [CreatedAt], [UpdatedAt]) VALUES (1, N'7e533599-a013-424b-b5f5-80030ce71954', N'Ngô Thái Hoàn', N'Tp. Bảo Lộc', N'0916491863', NULL, 3000000, 0, 1, NULL, 1, NULL, 1, CAST(N'2024-05-19T17:08:02.8706144' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [Name], [Address], [Phone], [Price], [TotalPrice], [TotalDiscount], [OrderStatusPayment], [OrderStatusTransport], [TotalQuantity], [Notes], [Status], [CreatedAt], [UpdatedAt]) VALUES (2, N'7e533599-a013-424b-b5f5-80030ce71954', N'Ngô Thái Hoàn', N'Tp. Bảo Lộc', N'0916491863', NULL, 12920000, 0, 2, NULL, 8, NULL, 1, CAST(N'2024-05-19T21:59:58.7044481' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [Name], [Address], [Phone], [Price], [TotalPrice], [TotalDiscount], [OrderStatusPayment], [OrderStatusTransport], [TotalQuantity], [Notes], [Status], [CreatedAt], [UpdatedAt]) VALUES (3, N'7e533599-a013-424b-b5f5-80030ce71954', N'Ngô Thái Hoàn', N'Tp. Bảo Lộc', N'0916491863', NULL, 230000, 0, 1, NULL, 1, NULL, 1, CAST(N'2024-05-19T22:04:37.9179718' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [Name], [Address], [Phone], [Price], [TotalPrice], [TotalDiscount], [OrderStatusPayment], [OrderStatusTransport], [TotalQuantity], [Notes], [Status], [CreatedAt], [UpdatedAt]) VALUES (4, N'7e533599-a013-424b-b5f5-80030ce71954', N'Ngô Thái Hoàn', N'Tp. Bảo Lộc', N'0916491863', NULL, 3230000, 0, 2, NULL, 2, NULL, 1, CAST(N'2024-05-21T14:58:27.9766167' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [Name], [Address], [Phone], [Price], [TotalPrice], [TotalDiscount], [OrderStatusPayment], [OrderStatusTransport], [TotalQuantity], [Notes], [Status], [CreatedAt], [UpdatedAt]) VALUES (5, N'7e533599-a013-424b-b5f5-80030ce71954', N'Ngô Thái Hoàn', N'Tp. Bảo Lộc', N'0916491863', NULL, 290000, 0, 1, NULL, 1, NULL, 1, CAST(N'2024-05-22T21:38:16.3560409' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [Name], [Address], [Phone], [Price], [TotalPrice], [TotalDiscount], [OrderStatusPayment], [OrderStatusTransport], [TotalQuantity], [Notes], [Status], [CreatedAt], [UpdatedAt]) VALUES (6, N'7e533599-a013-424b-b5f5-80030ce71954', N'Ngô Thái Hoàn', N'Tp. Bảo Lộc', N'0916491863', NULL, 4940000, 0, 1, NULL, 13, NULL, 1, CAST(N'2024-05-24T14:16:03.9491172' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [Name], [Address], [Phone], [Price], [TotalPrice], [TotalDiscount], [OrderStatusPayment], [OrderStatusTransport], [TotalQuantity], [Notes], [Status], [CreatedAt], [UpdatedAt]) VALUES (7, N'7e533599-a013-424b-b5f5-80030ce71954', N'Ngô Thái Hoàn', N'Tp. Bảo Lộc', N'0916491863', NULL, 920000, 92000, 2, NULL, 1, NULL, 2, CAST(N'2024-05-25T16:47:52.4150171' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [Name], [Address], [Phone], [Price], [TotalPrice], [TotalDiscount], [OrderStatusPayment], [OrderStatusTransport], [TotalQuantity], [Notes], [Status], [CreatedAt], [UpdatedAt]) VALUES (8, N'7e533599-a013-424b-b5f5-80030ce71954', N'Ngô Thái Hoànsd', N'Tp. Bảo Lộc', N'0916491863', NULL, 230000, 0, 1, NULL, 1, NULL, 1, CAST(N'2024-05-25T16:54:23.0462992' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [Name], [Address], [Phone], [Price], [TotalPrice], [TotalDiscount], [OrderStatusPayment], [OrderStatusTransport], [TotalQuantity], [Notes], [Status], [CreatedAt], [UpdatedAt]) VALUES (9, N'7e533599-a013-424b-b5f5-80030ce71954', N'Ngô Thái Hoàn', N'Tp. Bảo Lộc', N'0916491863', NULL, 390000, 39000, 1, NULL, 1, NULL, 1, CAST(N'2024-05-25T19:11:14.4593594' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [Name], [Address], [Phone], [Price], [TotalPrice], [TotalDiscount], [OrderStatusPayment], [OrderStatusTransport], [TotalQuantity], [Notes], [Status], [CreatedAt], [UpdatedAt]) VALUES (10, N'7e533599-a013-424b-b5f5-80030ce71954', N'Thái Hoàn Ngô', N'526 Nguyễn Văn Cừ, Lộc Phát', N'0916491863', NULL, 1200000, 100000, 2, NULL, 1, NULL, 1, CAST(N'2024-05-25T19:12:31.6626217' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [Name], [Address], [Phone], [Price], [TotalPrice], [TotalDiscount], [OrderStatusPayment], [OrderStatusTransport], [TotalQuantity], [Notes], [Status], [CreatedAt], [UpdatedAt]) VALUES (11, N'7e533599-a013-424b-b5f5-80030ce71954', N'Nguyen ngoc Trang', N'22 thống nhất', N'0948046541', NULL, 2440000, 100000, 1, NULL, 3, NULL, 2, CAST(N'2024-05-25T19:32:35.6352022' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [Name], [Address], [Phone], [Price], [TotalPrice], [TotalDiscount], [OrderStatusPayment], [OrderStatusTransport], [TotalQuantity], [Notes], [Status], [CreatedAt], [UpdatedAt]) VALUES (12, N'7e533599-a013-424b-b5f5-80030ce71954', N'Lê Văn Trí', N'Tân Hòa Đồng Nai', N'0876544778', NULL, 760000, 91200, 1, NULL, 2, NULL, 2, CAST(N'2024-05-27T20:15:38.1366117' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [Name], [Address], [Phone], [Price], [TotalPrice], [TotalDiscount], [OrderStatusPayment], [OrderStatusTransport], [TotalQuantity], [Notes], [Status], [CreatedAt], [UpdatedAt]) VALUES (13, N'960baf9f-17de-4a73-9f81-67fa2f5a9c0d', N'Nguyễn Thị Trúc Quỳnh', N'139 Chu Văn An, Lộc Phát, Bảo Lộc, Lâm Đồng', N'0765189285', NULL, 1300000, 130000, 2, NULL, 4, NULL, 2, CAST(N'2024-05-27T20:41:31.2024032' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [Name], [Address], [Phone], [Price], [TotalPrice], [TotalDiscount], [OrderStatusPayment], [OrderStatusTransport], [TotalQuantity], [Notes], [Status], [CreatedAt], [UpdatedAt]) VALUES (14, N'7e533599-a013-424b-b5f5-80030ce71954', N'Đỗ Ngọc Sơn', N'Bình Tân', N'09145888223', NULL, 2120000, 120000, 1, NULL, 2, NULL, 2, CAST(N'2024-05-28T12:45:11.1267416' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [Name], [Address], [Phone], [Price], [TotalPrice], [TotalDiscount], [OrderStatusPayment], [OrderStatusTransport], [TotalQuantity], [Notes], [Status], [CreatedAt], [UpdatedAt]) VALUES (15, N'7e533599-a013-424b-b5f5-80030ce71954', N'Thái Hoàn Ngô', N'526 Nguyễn Văn Cừ, Lộc Phát', N'0916491863', NULL, 230000, NULL, 2, NULL, 1, NULL, 1, CAST(N'2024-05-29T22:25:41.5112307' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [Name], [Address], [Phone], [Price], [TotalPrice], [TotalDiscount], [OrderStatusPayment], [OrderStatusTransport], [TotalQuantity], [Notes], [Status], [CreatedAt], [UpdatedAt]) VALUES (16, N'7e533599-a013-424b-b5f5-80030ce71954', N'Ngô Thái Tuấn', N'Tp. Bảo Lộc', N'0916491863', NULL, 820000, 0, 1, NULL, 2, NULL, 2, CAST(N'2024-05-29T22:28:23.2510935' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [Name], [Address], [Phone], [Price], [TotalPrice], [TotalDiscount], [OrderStatusPayment], [OrderStatusTransport], [TotalQuantity], [Notes], [Status], [CreatedAt], [UpdatedAt]) VALUES (17, N'7e533599-a013-424b-b5f5-80030ce71954', N'Thái Hoàn Ngô', N'526 Nguyễn Văn Cừ, Lộc Phát', N'0916491863', NULL, 400000, 0, 2, NULL, 2, NULL, 2, CAST(N'2024-05-29T22:29:22.7708335' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [Name], [Address], [Phone], [Price], [TotalPrice], [TotalDiscount], [OrderStatusPayment], [OrderStatusTransport], [TotalQuantity], [Notes], [Status], [CreatedAt], [UpdatedAt]) VALUES (18, N'7e533599-a013-424b-b5f5-80030ce71954', N'Ngô Thái Hoàn', N'Tp. Bảo Lộc', N'0916491863', NULL, 230000, 23000, 1, NULL, 1, NULL, 2, CAST(N'2024-05-31T11:32:38.4337308' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [Name], [Address], [Phone], [Price], [TotalPrice], [TotalDiscount], [OrderStatusPayment], [OrderStatusTransport], [TotalQuantity], [Notes], [Status], [CreatedAt], [UpdatedAt]) VALUES (19, N'7e533599-a013-424b-b5f5-80030ce71954', N'Ngô Thái Hoàn', N'Tp. Bảo Lộc', N'0916491863', NULL, 590000, 59000, 2, NULL, 2, NULL, 2, CAST(N'2024-06-01T19:17:27.6336171' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentCoupons] ON 

INSERT [dbo].[PaymentCoupons] ([Id], [CouponCode], [Description], [DiscountValue], [DiscountUnit], [MinimumOrder], [MaximumDiscount], [CreatedAt], [ValidUntil], [Status]) VALUES (3, N'4CEEEBF8', N'Ưu đãi cho đơn hàng khi mua từ 1 sản phẩm', 10, 6, 1, 200000, CAST(N'2024-05-25T15:30:53.0000000' AS DateTime2), CAST(N'2024-06-25T15:30:53.0000000' AS DateTime2), 0)
INSERT [dbo].[PaymentCoupons] ([Id], [CouponCode], [Description], [DiscountValue], [DiscountUnit], [MinimumOrder], [MaximumDiscount], [CreatedAt], [ValidUntil], [Status]) VALUES (4, N'D37DEC24', N'Ưu đãi cho đơn hàng khi mua từ 2 sản phẩm', 12, 11, 2, 120000, CAST(N'2024-05-25T18:30:51.0000000' AS DateTime2), CAST(N'2024-06-25T18:30:51.0000000' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[PaymentCoupons] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImages] ON 

INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (21, 3, NULL, N'fdsf-0-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (22, 3, NULL, N'fdsf-0-2.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (23, 3, NULL, N'fdsf-0-3.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (24, 3, NULL, N'fdsf-3-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (25, 3, NULL, N'fdsf-3-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (26, 3, NULL, N'fdsf-3-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (33, 1, NULL, N'day-chuyen-bac-disney-mat-day-xe-bi-ngo-doi-non-1-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (34, 1, NULL, N'day-chuyen-bac-disney-mat-day-xe-bi-ngo-doi-non-1-2.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (35, 1, NULL, N'day-chuyen-bac-disney-mat-day-xe-bi-ngo-doi-non-1-3.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (36, 1, NULL, N'day-chuyen-bac-disney-mat-day-xe-bi-ngo-doi-non-1-4.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (37, 2, NULL, N'nhan-bac-mo-hinh-hoa-herbarium-2-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (38, 2, NULL, N'nhan-bac-mo-hinh-hoa-herbarium-2-2.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (39, 2, NULL, N'nhan-bac-mo-hinh-hoa-herbarium-2-3.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (40, 2, NULL, N'nhan-bac-mo-hinh-hoa-herbarium-2-4.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (41, 4, NULL, N'day-chuyen-vang-hinh-co-bon-la-0-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (42, 4, NULL, N'day-chuyen-vang-hinh-co-bon-la-0-2.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (43, 4, NULL, N'day-chuyen-vang-hinh-co-bon-la-0-3.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (44, 4, NULL, N'day-chuyen-vang-hinh-co-bon-la-0-4.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (45, 5, NULL, N'day-chuyen-bac-vong-hoa-trai-tim-0-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (46, 5, NULL, N'day-chuyen-bac-vong-hoa-trai-tim-0-2.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (47, 5, NULL, N'day-chuyen-bac-vong-hoa-trai-tim-0-3.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (48, 5, NULL, N'day-chuyen-bac-vong-hoa-trai-tim-0-4.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (49, 6, NULL, N'day-chuyen-vang-co-may-man-0-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (50, 6, NULL, N'day-chuyen-vang-co-may-man-0-2.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (51, 6, NULL, N'day-chuyen-vang-co-may-man-0-3.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (52, 6, NULL, N'day-chuyen-vang-co-may-man-0-4.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (53, 7, NULL, N'day-chuyen-bac-trai-tim-0-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (54, 7, NULL, N'day-chuyen-bac-trai-tim-0-2.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (55, 7, NULL, N'day-chuyen-bac-trai-tim-0-3.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (56, 8, NULL, N'day-chuyen-bac-ma-vang-bong-hoa-sen-0-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (57, 8, NULL, N'day-chuyen-bac-ma-vang-bong-hoa-sen-0-2.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (58, 8, NULL, N'day-chuyen-bac-ma-vang-bong-hoa-sen-0-3.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (59, 8, NULL, N'day-chuyen-bac-ma-vang-bong-hoa-sen-0-4.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (60, 9, NULL, N'day-chuyen-bac-dinh-hot-ngoc-trai-0-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (61, 9, NULL, N'day-chuyen-bac-dinh-hot-ngoc-trai-0-2.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (62, 10, NULL, N'day-chuyen-vang-mat-nhan-dinh-da-0-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (63, 10, NULL, N'day-chuyen-vang-mat-nhan-dinh-da-0-2.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (64, 10, NULL, N'day-chuyen-vang-mat-nhan-dinh-da-0-3.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (65, 10, NULL, N'day-chuyen-vang-mat-nhan-dinh-da-0-4.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (66, 11, NULL, N'khuyen-tai-bac-hinh-canh-buom-dinh-da-0-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (67, 11, NULL, N'khuyen-tai-bac-hinh-canh-buom-dinh-da-0-2.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (68, 11, NULL, N'khuyen-tai-bac-hinh-canh-buom-dinh-da-0-3.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (69, 12, NULL, N'khuyen-tai-vang-dinh-ngoc-trai-0-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (70, 12, NULL, N'khuyen-tai-vang-dinh-ngoc-trai-0-2.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (71, 12, NULL, N'khuyen-tai-vang-dinh-ngoc-trai-0-3.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (72, 13, NULL, N'khuyen-tai-bac-canh-hoa-xoan-0-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (73, 13, NULL, N'khuyen-tai-bac-canh-hoa-xoan-0-2.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (74, 13, NULL, N'khuyen-tai-bac-canh-hoa-xoan-0-3.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (75, 14, NULL, N'khuyen-tai-bac-vuong-mien-dinh-da-0-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (76, 14, NULL, N'khuyen-tai-bac-vuong-mien-dinh-da-0-2.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (77, 14, NULL, N'khuyen-tai-bac-vuong-mien-dinh-da-0-3.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (78, 15, NULL, N'khuyen-tai-vang-hoa-dinh-da-5-canh-0-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (79, 15, NULL, N'khuyen-tai-vang-hoa-dinh-da-5-canh-0-2.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (80, 15, NULL, N'khuyen-tai-vang-hoa-dinh-da-5-canh-0-3.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (81, 16, NULL, N'lac-tay-vang-double-d-0-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (82, 16, NULL, N'lac-tay-vang-double-d-0-2.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (83, 17, NULL, N'lac-tay-vang-bong-hoa-5-canh-0-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (84, 17, NULL, N'lac-tay-vang-bong-hoa-5-canh-0-2.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (85, 18, NULL, N'lac-tay-vang-vo-so-song-danh-0-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (86, 18, NULL, N'lac-tay-vang-vo-so-song-danh-0-2.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (87, 18, NULL, N'lac-tay-vang-vo-so-song-danh-0-3.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (88, 19, NULL, N'lac-tay-vang-in-hinh-mickey-way-0-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (89, 19, NULL, N'lac-tay-vang-in-hinh-mickey-way-0-2.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (90, 19, NULL, N'lac-tay-vang-in-hinh-mickey-way-0-3.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (91, 20, NULL, N'bong-tai-vang-dinh-hat-luu-0-1.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (92, 20, NULL, N'bong-tai-vang-dinh-hat-luu-0-2.jpg', NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Name], [Path], [CreatedAt], [UpdatedAt]) VALUES (93, 20, NULL, N'bong-tai-vang-dinh-hat-luu-0-3.jpg', NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductMaterials] ON 

INSERT [dbo].[ProductMaterials] ([Id], [Name], [Description], [Status], [Thumb], [Alias], [CreatedAt], [UpdatedAt]) VALUES (1, N'Sterling Sliver', N'Sterling Sliver', 1, N'sterling-sliver.jpg', N'sterling-sliver', CAST(N'2024-05-19T17:03:03.1778727' AS DateTime2), CAST(N'2024-05-19T17:03:03.1779070' AS DateTime2))
INSERT [dbo].[ProductMaterials] ([Id], [Name], [Description], [Status], [Thumb], [Alias], [CreatedAt], [UpdatedAt]) VALUES (2, N'Vàng 24K', N'Vàng thuần khiết', 1, N'vang-24k.jpg', N'vang-24k', CAST(N'2024-05-19T22:27:11.7031884' AS DateTime2), CAST(N'2024-05-19T22:27:11.7032211' AS DateTime2))
INSERT [dbo].[ProductMaterials] ([Id], [Name], [Description], [Status], [Thumb], [Alias], [CreatedAt], [UpdatedAt]) VALUES (3, N'Vàng 18K', NULL, 1, N'vang-18k.jpg', N'vang-18k', CAST(N'2024-05-22T07:51:48.9935428' AS DateTime2), CAST(N'2024-05-22T07:51:48.9936719' AS DateTime2))
INSERT [dbo].[ProductMaterials] ([Id], [Name], [Description], [Status], [Thumb], [Alias], [CreatedAt], [UpdatedAt]) VALUES (4, N'Bạc', N'Bạc', 1, N'bac.jpg', N'bac', CAST(N'2024-05-22T07:58:04.1588276' AS DateTime2), CAST(N'2024-05-22T07:58:04.1588314' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ProductMaterials] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Description], [Thumb], [Content], [ProductMaterialId], [ProductObjectId], [ProductCollectionId], [Sale], [Newfeed], [Homeflag], [Hot], [Published], [Alias], [Status], [Deleted], [CreatedAt], [UpdatedAt], [TransactionId]) VALUES (1, 4, N'Dây Chuyền Bạc Disney Mặt Dây Trái Tim', N'Dây Chuyền Bạc Disney Mặt Dây Xe Bí Ngô', N'day-chuyen-bac-disney-mat-day-xe-bi-ngo-0.jpg', NULL, 1, 3, 2, NULL, 0, 1, 0, 1, N'day-chuyen-bac-disney-mat-day-trai-tim', 1, 0, CAST(N'2024-05-19T17:05:12.0000000' AS DateTime2), CAST(N'2024-05-22T08:04:23.0970747' AS DateTime2), NULL)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Description], [Thumb], [Content], [ProductMaterialId], [ProductObjectId], [ProductCollectionId], [Sale], [Newfeed], [Homeflag], [Hot], [Published], [Alias], [Status], [Deleted], [CreatedAt], [UpdatedAt], [TransactionId]) VALUES (2, 1, N'Nhẫn Bạc Mở Hình Hoa Herbarium', N'Nhẫn Bạc Mở Hình Hoa Herbarium', N'nhan-bac-mo-hinh-hoa-herbarium-0.jpg', NULL, 1, 3, 2, NULL, 0, 1, 0, 1, N'nhan-bac-mo-hinh-hoa-herbarium', 1, 0, CAST(N'2024-05-19T18:46:02.0000000' AS DateTime2), CAST(N'2024-05-19T21:35:32.6211905' AS DateTime2), NULL)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Description], [Thumb], [Content], [ProductMaterialId], [ProductObjectId], [ProductCollectionId], [Sale], [Newfeed], [Homeflag], [Hot], [Published], [Alias], [Status], [Deleted], [CreatedAt], [UpdatedAt], [TransactionId]) VALUES (3, 4, N'fdsf', N'sdfsdf', N'fdsf-0.jpg', NULL, 1, 3, 2, NULL, 0, 0, 0, 1, N'fdsf', 0, 0, CAST(N'2024-05-19T19:31:58.0000000' AS DateTime2), CAST(N'2024-05-19T20:15:22.8315267' AS DateTime2), NULL)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Description], [Thumb], [Content], [ProductMaterialId], [ProductObjectId], [ProductCollectionId], [Sale], [Newfeed], [Homeflag], [Hot], [Published], [Alias], [Status], [Deleted], [CreatedAt], [UpdatedAt], [TransactionId]) VALUES (4, 4, N'Dây Chuyền Vàng Hình Cỏ Bốn Lá', N'Dây Chuyền Vàng Hình Cỏ Bốn Lá Dây Chuyền Vàng Hình Cỏ Bốn LáDây Chuyền Vàng Hình Cỏ Bốn LáDây Chuyền Vàng Hình Cỏ Bốn LáDây Chuyền Vàng Hình Cỏ Bốn Lá', N'day-chuyen-vang-hinh-co-bon-la-0.jpg', NULL, 3, 3, 2, NULL, 0, 1, 0, 1, N'day-chuyen-vang-hinh-co-bon-la', 1, 0, CAST(N'2024-05-22T07:54:23.7288523' AS DateTime2), CAST(N'2024-05-22T07:54:23.7289511' AS DateTime2), NULL)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Description], [Thumb], [Content], [ProductMaterialId], [ProductObjectId], [ProductCollectionId], [Sale], [Newfeed], [Homeflag], [Hot], [Published], [Alias], [Status], [Deleted], [CreatedAt], [UpdatedAt], [TransactionId]) VALUES (5, 4, N'Dây Chuyền Bạc Vòng Hoa Trái Tim', N'Dây Chuyền Bạc Vòng Hoa Trái Tim Dây Chuyền Bạc Vòng Hoa Trái Tim Dây Chuyền Bạc Vòng Hoa Trái Tim', N'day-chuyen-bac-vong-hoa-trai-tim-0.jpg', NULL, 1, 3, 2, NULL, 1, 0, 0, 1, N'day-chuyen-bac-vong-hoa-trai-tim', 1, 0, CAST(N'2024-05-22T07:56:27.3203390' AS DateTime2), CAST(N'2024-05-22T07:56:27.3203429' AS DateTime2), NULL)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Description], [Thumb], [Content], [ProductMaterialId], [ProductObjectId], [ProductCollectionId], [Sale], [Newfeed], [Homeflag], [Hot], [Published], [Alias], [Status], [Deleted], [CreatedAt], [UpdatedAt], [TransactionId]) VALUES (6, 4, N'Dây Chuyền Vàng Cỏ May Mắn', N'Dây Chuyền Vàng Cỏ May MắnDây Chuyền Vàng Cỏ May MắnDây Chuyền Vàng Cỏ May Mắn', N'day-chuyen-vang-co-may-man-0.jpg', NULL, 2, 3, 5, NULL, 0, 0, 0, 1, N'day-chuyen-vang-co-may-man', 1, 0, CAST(N'2024-05-22T07:59:26.0000000' AS DateTime2), CAST(N'2024-05-22T07:59:33.6612956' AS DateTime2), NULL)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Description], [Thumb], [Content], [ProductMaterialId], [ProductObjectId], [ProductCollectionId], [Sale], [Newfeed], [Homeflag], [Hot], [Published], [Alias], [Status], [Deleted], [CreatedAt], [UpdatedAt], [TransactionId]) VALUES (7, 4, N'Dây Chuyền Bạc Trái Tim ', N'Dây Chuyền Bạc Trái Tim Dây Chuyền Bạc Trái Tim Dây Chuyền Bạc Trái Tim ', N'day-chuyen-bac-trai-tim-0.jpg', NULL, 1, 3, 2, NULL, 0, 1, 0, 1, N'day-chuyen-bac-trai-tim', 1, 0, CAST(N'2024-05-22T08:04:03.1972567' AS DateTime2), CAST(N'2024-05-22T08:04:03.1972620' AS DateTime2), NULL)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Description], [Thumb], [Content], [ProductMaterialId], [ProductObjectId], [ProductCollectionId], [Sale], [Newfeed], [Homeflag], [Hot], [Published], [Alias], [Status], [Deleted], [CreatedAt], [UpdatedAt], [TransactionId]) VALUES (8, 4, N'Dây Chuyền Bạc Mạ Vàng Bông Hoa Sen ', N'Dây Chuyền Bạc Mạ Vàng Bông Hoa Sen Dây Chuyền Bạc Mạ Vàng Bông Hoa Sen ', N'day-chuyen-bac-ma-vang-bong-hoa-sen-0.jpg', NULL, 1, 3, 5, NULL, 0, 0, 0, 1, N'day-chuyen-bac-ma-vang-bong-hoa-sen', 1, 0, CAST(N'2024-05-22T08:05:51.2773551' AS DateTime2), CAST(N'2024-05-22T08:05:51.2773578' AS DateTime2), NULL)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Description], [Thumb], [Content], [ProductMaterialId], [ProductObjectId], [ProductCollectionId], [Sale], [Newfeed], [Homeflag], [Hot], [Published], [Alias], [Status], [Deleted], [CreatedAt], [UpdatedAt], [TransactionId]) VALUES (9, 4, N'Dây Chuyền Bạc Đính Hột Ngọc Trai ', N'Dây Chuyền Bạc Đính Hột Ngọc Trai Dây Chuyền Bạc Đính Hột Ngọc Trai Dây Chuyền Bạc Đính Hột Ngọc Trai ', N'day-chuyen-bac-dinh-hot-ngoc-trai-0.jpg', NULL, 1, 3, 5, NULL, 0, 0, 0, 1, N'day-chuyen-bac-dinh-hot-ngoc-trai', 1, 0, CAST(N'2024-05-22T08:07:34.0261030' AS DateTime2), CAST(N'2024-05-22T08:07:34.0261076' AS DateTime2), NULL)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Description], [Thumb], [Content], [ProductMaterialId], [ProductObjectId], [ProductCollectionId], [Sale], [Newfeed], [Homeflag], [Hot], [Published], [Alias], [Status], [Deleted], [CreatedAt], [UpdatedAt], [TransactionId]) VALUES (10, 4, N'Dây Chuyền Vàng Mặt Nhẫn Đính Đá', N'Dây Chuyền Vàng Mặt Nhẫn Đính Đá', N'day-chuyen-vang-mat-nhan-dinh-da-0.jpg', NULL, 2, 3, 5, NULL, 0, 0, 0, 1, N'day-chuyen-vang-mat-nhan-dinh-da', 1, 0, CAST(N'2024-05-22T08:12:43.0000000' AS DateTime2), CAST(N'2024-05-22T08:13:26.4312099' AS DateTime2), NULL)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Description], [Thumb], [Content], [ProductMaterialId], [ProductObjectId], [ProductCollectionId], [Sale], [Newfeed], [Homeflag], [Hot], [Published], [Alias], [Status], [Deleted], [CreatedAt], [UpdatedAt], [TransactionId]) VALUES (11, 8, N'Khuyên Tai Bạc Hình Cánh Bướm Đính Đá', N'Khuyên Tai Bạc Hình Cánh Bướm Đính ĐáKhuyên Tai Bạc Hình Cánh Bướm Đính Đá', N'khuyen-tai-bac-hinh-canh-buom-dinh-da-11.jpg', NULL, 1, 3, 2, NULL, 0, 0, 0, 1, N'khuyen-tai-bac-hinh-canh-buom-dinh-da', 1, 0, CAST(N'2024-05-22T08:14:39.0000000' AS DateTime2), CAST(N'2024-05-22T08:16:02.3453895' AS DateTime2), NULL)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Description], [Thumb], [Content], [ProductMaterialId], [ProductObjectId], [ProductCollectionId], [Sale], [Newfeed], [Homeflag], [Hot], [Published], [Alias], [Status], [Deleted], [CreatedAt], [UpdatedAt], [TransactionId]) VALUES (12, 8, N'Khuyên Tai Vàng Đính Ngọc Trai', N'Khuyên Tai Vàng Đính Ngọc Trai', N'khuyen-tai-vang-dinh-ngoc-trai-0.jpg', NULL, 2, 3, 6, NULL, 0, 0, 0, 1, N'khuyen-tai-vang-dinh-ngoc-trai', 1, 0, CAST(N'2024-05-22T08:17:11.8593598' AS DateTime2), CAST(N'2024-05-22T08:17:11.8593618' AS DateTime2), NULL)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Description], [Thumb], [Content], [ProductMaterialId], [ProductObjectId], [ProductCollectionId], [Sale], [Newfeed], [Homeflag], [Hot], [Published], [Alias], [Status], [Deleted], [CreatedAt], [UpdatedAt], [TransactionId]) VALUES (13, 8, N'Khuyên Tai Bạc Cánh Hoa Xoắn', N'Khuyên Tai Bạc Xoắn ốc', N'khuyen-tai-bac-canh-hoa-xoan-0.jpg', NULL, 4, 3, 5, NULL, 0, 0, 0, 1, N'khuyen-tai-bac-canh-hoa-xoan', 1, 0, CAST(N'2024-05-22T08:19:40.6403647' AS DateTime2), CAST(N'2024-05-22T08:19:40.6403664' AS DateTime2), NULL)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Description], [Thumb], [Content], [ProductMaterialId], [ProductObjectId], [ProductCollectionId], [Sale], [Newfeed], [Homeflag], [Hot], [Published], [Alias], [Status], [Deleted], [CreatedAt], [UpdatedAt], [TransactionId]) VALUES (14, 8, N'Khuyên Tai Bạc Vương Miện Đính Đá', N'Khuyên Tai Bạc Vương Miện Đính Đá', N'khuyen-tai-bac-vuong-mien-dinh-da-0.jpg', NULL, 4, 3, 6, NULL, 0, 1, 0, 1, N'khuyen-tai-bac-vuong-mien-dinh-da', 1, 0, CAST(N'2024-05-22T08:21:04.1613499' AS DateTime2), CAST(N'2024-05-22T08:21:04.1613513' AS DateTime2), NULL)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Description], [Thumb], [Content], [ProductMaterialId], [ProductObjectId], [ProductCollectionId], [Sale], [Newfeed], [Homeflag], [Hot], [Published], [Alias], [Status], [Deleted], [CreatedAt], [UpdatedAt], [TransactionId]) VALUES (15, 8, N'Khuyên Tai Vàng Hoa Đính Đá 5 Cánh  ', N'Khuyên Tai Vàng Hoa Đính Đá 5 Cánh  ', N'khuyen-tai-vang-hoa-dinh-da-5-canh-0.jpg', NULL, 2, 3, 5, NULL, 0, 1, 0, 1, N'khuyen-tai-vang-hoa-dinh-da-5-canh', 1, 0, CAST(N'2024-05-22T08:37:47.8335418' AS DateTime2), CAST(N'2024-05-22T08:37:47.8337114' AS DateTime2), NULL)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Description], [Thumb], [Content], [ProductMaterialId], [ProductObjectId], [ProductCollectionId], [Sale], [Newfeed], [Homeflag], [Hot], [Published], [Alias], [Status], [Deleted], [CreatedAt], [UpdatedAt], [TransactionId]) VALUES (16, 9, N'Lắc Tay Vàng Double D', N'Lắc Tay Vàng Double D', N'lac-tay-vang-double-d-0.jpg', NULL, 3, 3, 6, NULL, 0, 0, 0, 1, N'lac-tay-vang-double-d', 1, 0, CAST(N'2024-05-22T08:41:45.8064479' AS DateTime2), CAST(N'2024-05-22T08:41:45.8064518' AS DateTime2), NULL)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Description], [Thumb], [Content], [ProductMaterialId], [ProductObjectId], [ProductCollectionId], [Sale], [Newfeed], [Homeflag], [Hot], [Published], [Alias], [Status], [Deleted], [CreatedAt], [UpdatedAt], [TransactionId]) VALUES (17, 9, N'Lắc Tay Vàng Bông Hoa 5 Cánh', N'Lắc Tay Vàng Bông Hoa 5 Cánh', N'lac-tay-vang-bong-hoa-5-canh-0.jpg', NULL, 3, 3, 5, NULL, 0, 0, 0, 1, N'lac-tay-vang-bong-hoa-5-canh', 1, 0, CAST(N'2024-05-22T08:43:45.3632383' AS DateTime2), CAST(N'2024-05-22T08:43:45.3632429' AS DateTime2), NULL)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Description], [Thumb], [Content], [ProductMaterialId], [ProductObjectId], [ProductCollectionId], [Sale], [Newfeed], [Homeflag], [Hot], [Published], [Alias], [Status], [Deleted], [CreatedAt], [UpdatedAt], [TransactionId]) VALUES (18, 9, N'Lắc tay Vàng Vỏ Sò Sóng Đánh', N'Lắc tay Vàng Vỏ Sò Sóng Đánh', N'lac-tay-vang-vo-so-song-danh-0.jpg', NULL, 2, 3, 5, NULL, 0, 0, 0, 1, N'lac-tay-vang-vo-so-song-danh', 1, 0, CAST(N'2024-05-22T08:45:23.4021241' AS DateTime2), CAST(N'2024-05-22T08:45:23.4021269' AS DateTime2), NULL)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Description], [Thumb], [Content], [ProductMaterialId], [ProductObjectId], [ProductCollectionId], [Sale], [Newfeed], [Homeflag], [Hot], [Published], [Alias], [Status], [Deleted], [CreatedAt], [UpdatedAt], [TransactionId]) VALUES (19, 9, N'Lắc Tay Vàng In Hình Mickey Way', N'Lắc Tay Vàng In Hình Mickey Way', N'lac-tay-vang-in-hinh-mickey-way-0.jpg', NULL, 3, 3, 2, NULL, 0, 0, 0, 1, N'lac-tay-vang-in-hinh-mickey-way', 1, 0, CAST(N'2024-05-22T08:46:32.0122068' AS DateTime2), CAST(N'2024-05-22T08:46:32.0122101' AS DateTime2), NULL)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Description], [Thumb], [Content], [ProductMaterialId], [ProductObjectId], [ProductCollectionId], [Sale], [Newfeed], [Homeflag], [Hot], [Published], [Alias], [Status], [Deleted], [CreatedAt], [UpdatedAt], [TransactionId]) VALUES (20, 8, N'Bông Tai Vàng Đính Hạt Lựu', N'Bông Tai Vàng Đính Hạt Lựu', N'bong-tai-vang-dinh-hat-luu-0.jpg', NULL, 3, 3, 2, NULL, 0, 0, 0, 1, N'bong-tai-vang-dinh-hat-luu', 1, 0, CAST(N'2024-05-22T08:48:06.0511623' AS DateTime2), CAST(N'2024-05-22T08:48:06.0511653' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductVariants] ON 

INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (1, 1, 27, 360000, 23, 1, CAST(N'2024-05-19T17:05:26.0000000' AS DateTime2), CAST(N'2024-05-22T16:12:37.4121292' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (2, 2, 7, 230000, 31, 1, CAST(N'2024-05-19T20:22:12.4087679' AS DateTime2), CAST(N'2024-05-19T20:22:12.4089593' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (3, 1, 29, 230000, 123, 1, CAST(N'2024-05-19T21:47:17.6656056' AS DateTime2), CAST(N'2024-05-19T21:47:17.6657988' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (4, 4, 25, 400000, 50, 1, CAST(N'2024-05-22T08:50:10.3981878' AS DateTime2), CAST(N'2024-05-22T08:50:10.3984517' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (5, 4, 27, 420000, 30, 1, CAST(N'2024-05-22T08:50:22.5888330' AS DateTime2), CAST(N'2024-05-22T08:50:22.5888362' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (6, 5, 25, 380000, 20, 1, CAST(N'2024-05-22T08:50:43.6085005' AS DateTime2), CAST(N'2024-05-22T08:50:43.6085065' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (7, 6, 25, 420000, 10, 1, CAST(N'2024-05-22T08:52:17.3327548' AS DateTime2), CAST(N'2024-05-22T08:52:17.3329855' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (8, 7, 27, 390000, 20, 1, CAST(N'2024-05-22T08:52:38.8724748' AS DateTime2), CAST(N'2024-05-22T08:52:38.8724779' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (9, 8, 25, 290000, 44, 1, CAST(N'2024-05-22T08:52:56.0589815' AS DateTime2), CAST(N'2024-05-22T08:52:56.0589847' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (10, 9, 25, 320000, 20, 1, CAST(N'2024-05-22T08:53:22.4594662' AS DateTime2), CAST(N'2024-05-22T08:53:22.4594696' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (11, 10, 37, 380000, 40, 1, CAST(N'2024-05-22T08:53:39.5514299' AS DateTime2), CAST(N'2024-05-22T08:53:39.5514341' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (12, 11, 3, 190000, 44, 1, CAST(N'2024-05-22T08:54:09.2340949' AS DateTime2), CAST(N'2024-05-22T08:54:09.2340980' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (13, 12, 3, 920000, 41, 1, CAST(N'2024-05-22T08:54:28.2651718' AS DateTime2), CAST(N'2024-05-22T08:54:28.2651746' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (14, 13, 3, 190000, 23, 1, CAST(N'2024-05-22T08:54:48.8453369' AS DateTime2), CAST(N'2024-05-22T08:54:48.8453406' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (15, 14, 3, 210000, 13, 1, CAST(N'2024-05-22T08:55:05.1562064' AS DateTime2), CAST(N'2024-05-22T08:55:05.1562102' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (16, 15, 3, 1200000, 41, 1, CAST(N'2024-05-22T08:55:22.3321855' AS DateTime2), CAST(N'2024-05-22T08:55:22.3321889' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (17, 16, 15, 1300000, 50, 1, CAST(N'2024-05-22T08:55:54.0422171' AS DateTime2), CAST(N'2024-05-22T08:55:54.0422203' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (18, 17, 15, 1100000, 31, 1, CAST(N'2024-05-22T08:56:35.0691967' AS DateTime2), CAST(N'2024-05-22T08:56:35.0692005' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (19, 18, 15, 999000, 56, 1, CAST(N'2024-05-22T08:57:04.4891177' AS DateTime2), CAST(N'2024-05-22T08:57:04.4891222' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (20, 19, 15, 920000, 41, 1, CAST(N'2024-05-22T08:57:21.8163617' AS DateTime2), CAST(N'2024-05-22T08:57:21.8163653' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (21, 20, 2, 790000, 23, 1, CAST(N'2024-05-22T08:57:49.5547667' AS DateTime2), CAST(N'2024-05-22T08:57:49.5550541' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (22, 6, 27, 410000, 22, 1, CAST(N'2024-05-22T16:13:06.6710484' AS DateTime2), CAST(N'2024-05-22T16:13:06.6710504' AS DateTime2))
INSERT [dbo].[ProductVariants] ([Id], [ProductId], [ProductSize], [Price], [Quantity], [Status], [CreatedAt], [UpdatedAt]) VALUES (23, 9, 28, 230000, 11, 1, CAST(N'2024-05-22T16:13:20.5071367' AS DateTime2), CAST(N'2024-05-22T16:13:20.5071388' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ProductVariants] OFF
GO
SET IDENTITY_INSERT [dbo].[Ratings] ON 

INSERT [dbo].[Ratings] ([Id], [Content], [NumberStars], [UserId], [ProductId], [Status], [CreatedAt], [UpdatedAt]) VALUES (1, N'Rất đẹp', 3, N'7e533599-a013-424b-b5f5-80030ce71954', 1, 1, CAST(N'2024-05-19T21:50:54.5018323' AS DateTime2), NULL)
INSERT [dbo].[Ratings] ([Id], [Content], [NumberStars], [UserId], [ProductId], [Status], [CreatedAt], [UpdatedAt]) VALUES (2, N'vo cung tuyet', 5, N'7e533599-a013-424b-b5f5-80030ce71954', 1, 1, CAST(N'2024-05-19T22:29:21.7762128' AS DateTime2), NULL)
INSERT [dbo].[Ratings] ([Id], [Content], [NumberStars], [UserId], [ProductId], [Status], [CreatedAt], [UpdatedAt]) VALUES (3, NULL, 0, N'7e533599-a013-424b-b5f5-80030ce71954', 2, 1, CAST(N'2024-05-20T02:35:44.3346853' AS DateTime2), NULL)
INSERT [dbo].[Ratings] ([Id], [Content], [NumberStars], [UserId], [ProductId], [Status], [CreatedAt], [UpdatedAt]) VALUES (4, N'xau vai', 3, N'7e533599-a013-424b-b5f5-80030ce71954', 2, 1, CAST(N'2024-05-21T13:56:16.7301780' AS DateTime2), NULL)
INSERT [dbo].[Ratings] ([Id], [Content], [NumberStars], [UserId], [ProductId], [Status], [CreatedAt], [UpdatedAt]) VALUES (5, N'Chất liệu rất là ok', 4, N'7e533599-a013-424b-b5f5-80030ce71954', 4, 1, CAST(N'2024-05-22T09:08:18.3647938' AS DateTime2), NULL)
INSERT [dbo].[Ratings] ([Id], [Content], [NumberStars], [UserId], [ProductId], [Status], [CreatedAt], [UpdatedAt]) VALUES (6, N'Đẹp xuất sắc', 0, N'7e533599-a013-424b-b5f5-80030ce71954', 4, 1, CAST(N'2024-05-22T16:37:22.5678145' AS DateTime2), NULL)
INSERT [dbo].[Ratings] ([Id], [Content], [NumberStars], [UserId], [ProductId], [Status], [CreatedAt], [UpdatedAt]) VALUES (7, N'aaaaa', 4, N'7e533599-a013-424b-b5f5-80030ce71954', 5, 1, CAST(N'2024-05-22T16:39:49.0957216' AS DateTime2), NULL)
INSERT [dbo].[Ratings] ([Id], [Content], [NumberStars], [UserId], [ProductId], [Status], [CreatedAt], [UpdatedAt]) VALUES (8, N'dsdsdsđâs', 3, N'7e533599-a013-424b-b5f5-80030ce71954', 1, 1, CAST(N'2024-05-24T19:27:44.7620612' AS DateTime2), NULL)
INSERT [dbo].[Ratings] ([Id], [Content], [NumberStars], [UserId], [ProductId], [Status], [CreatedAt], [UpdatedAt]) VALUES (9, N'dep dep', 4, N'7e533599-a013-424b-b5f5-80030ce71954', 2, 1, CAST(N'2024-05-24T19:50:47.2391264' AS DateTime2), NULL)
INSERT [dbo].[Ratings] ([Id], [Content], [NumberStars], [UserId], [ProductId], [Status], [CreatedAt], [UpdatedAt]) VALUES (10, N'Derp', 5, N'7e533599-a013-424b-b5f5-80030ce71954', 11, 1, CAST(N'2024-05-26T21:55:43.3954130' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Ratings] OFF
GO
SET IDENTITY_INSERT [dbo].[Slides] ON 

INSERT [dbo].[Slides] ([Id], [Name], [Link], [Thumb], [Status], [CreatedAt], [UpdatedAt]) VALUES (1, N'Siêu Sale', NULL, N'sieu-sale.jpg', 1, CAST(N'2024-05-19T21:45:08.3988315' AS DateTime2), CAST(N'2024-05-19T21:45:08.3988709' AS DateTime2))
INSERT [dbo].[Slides] ([Id], [Name], [Link], [Thumb], [Status], [CreatedAt], [UpdatedAt]) VALUES (2, N'Moment Collection', NULL, N'moment-collection.jpg', 1, CAST(N'2024-05-19T21:45:29.5647205' AS DateTime2), CAST(N'2024-05-19T21:45:29.5647231' AS DateTime2))
INSERT [dbo].[Slides] ([Id], [Name], [Link], [Thumb], [Status], [CreatedAt], [UpdatedAt]) VALUES (3, N'Đặc biệt', NULL, N'dac-biet.jpg', 1, CAST(N'2024-05-19T21:46:02.0749817' AS DateTime2), CAST(N'2024-05-19T21:46:02.0749849' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Slides] OFF
GO
INSERT [HangFire].[Schema] ([Version]) VALUES (9)
GO
INSERT [HangFire].[Server] ([Id], [Data], [LastHeartbeat]) VALUES (N'msi:12264:d30a088a-b514-410a-a756-3fe6e7d0595a', N'{"WorkerCount":20,"Queues":["default"],"StartedAt":"2024-06-02T08:32:28.4423123Z"}', CAST(N'2024-06-02T08:34:28.770' AS DateTime))
GO
ALTER TABLE [dbo].[Blogs] ADD  DEFAULT (N'') FOR [Title]
GO
ALTER TABLE [dbo].[Blogs] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Published]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_CategoryTypes_TypeId] FOREIGN KEY([TypeId])
REFERENCES [dbo].[CategoryTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_CategoryTypes_TypeId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Blogs_BlogId] FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blogs] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Blogs_BlogId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Products_ProductId]
GO
ALTER TABLE [dbo].[KeywordProduct]  WITH CHECK ADD  CONSTRAINT [FK_KeywordProduct_Keywords_KeywordsId] FOREIGN KEY([KeywordsId])
REFERENCES [dbo].[Keywords] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KeywordProduct] CHECK CONSTRAINT [FK_KeywordProduct_Keywords_KeywordsId]
GO
ALTER TABLE [dbo].[KeywordProduct]  WITH CHECK ADD  CONSTRAINT [FK_KeywordProduct_Products_ProductsId] FOREIGN KEY([ProductsId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KeywordProduct] CHECK CONSTRAINT [FK_KeywordProduct_Products_ProductsId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductMaterials_ProductMaterialId] FOREIGN KEY([ProductMaterialId])
REFERENCES [dbo].[ProductMaterials] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductMaterials_ProductMaterialId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Transactions_TransactionId] FOREIGN KEY([TransactionId])
REFERENCES [dbo].[Transactions] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Transactions_TransactionId]
GO
ALTER TABLE [dbo].[ProductVariants]  WITH CHECK ADD  CONSTRAINT [FK_ProductVariants_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductVariants] CHECK CONSTRAINT [FK_ProductVariants_Products_ProductId]
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_Products_ProductId]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Orders_OrderId]
GO
ALTER TABLE [HangFire].[JobParameter]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_JobParameter_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[JobParameter] CHECK CONSTRAINT [FK_HangFire_JobParameter_Job]
GO
ALTER TABLE [HangFire].[State]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_State_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[State] CHECK CONSTRAINT [FK_HangFire_State_Job]
GO
