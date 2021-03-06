USE [master]
GO
/****** Object:  Database [WardrobeClosetProject]    Script Date: 2/19/2017 8:31:34 PM ******/
CREATE DATABASE [WardrobeClosetProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WardrobeClosetProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeClosetProject.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WardrobeClosetProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeClosetProject_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WardrobeClosetProject] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardrobeClosetProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardrobeClosetProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardrobeClosetProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardrobeClosetProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardrobeClosetProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardrobeClosetProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardrobeClosetProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardrobeClosetProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardrobeClosetProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardrobeClosetProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardrobeClosetProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardrobeClosetProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardrobeClosetProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardrobeClosetProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardrobeClosetProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardrobeClosetProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardrobeClosetProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardrobeClosetProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardrobeClosetProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardrobeClosetProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardrobeClosetProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardrobeClosetProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardrobeClosetProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardrobeClosetProject] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardrobeClosetProject] SET  MULTI_USER 
GO
ALTER DATABASE [WardrobeClosetProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardrobeClosetProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardrobeClosetProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardrobeClosetProject] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardrobeClosetProject] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardrobeClosetProject]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 2/19/2017 8:31:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoriesID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ClothingType] [varchar](50) NOT NULL,
	[OutfitsID] [int] NULL,
	[Brand] [varchar](50) NULL,
	[Photo] [nvarchar](100) NULL,
	[Color] [varchar](80) NULL,
	[Occasion] [varchar](80) NULL,
	[Season] [varchar](50) NULL,
	[Favorite] [bit] NULL,
	[TimesWorn] [int] NULL,
	[Dirty] [bit] NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 2/19/2017 8:31:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ClothingType] [varchar](50) NOT NULL,
	[OutfitsID] [int] NULL,
	[Brand] [varchar](50) NULL,
	[Photo] [nvarchar](100) NULL,
	[Color] [varchar](80) NULL,
	[Occasion] [varchar](80) NULL,
	[Season] [varchar](50) NULL,
	[Favorite] [bit] NULL,
	[TimesWorn] [int] NULL,
	[Dirty] [bit] NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 2/19/2017 8:31:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitsID] [int] IDENTITY(1,1) NOT NULL,
	[OutfitName] [varchar](50) NOT NULL,
	[TopsID] [int] NULL,
	[BottomsID] [int] NULL,
	[ShoesID] [int] NULL,
	[AccessoriesID] [int] NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 2/19/2017 8:31:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoesID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ClothingType] [varchar](50) NOT NULL,
	[OutfitsID] [int] NULL,
	[Brand] [varchar](50) NULL,
	[Photo] [nvarchar](100) NULL,
	[Color] [varchar](80) NULL,
	[Occasion] [varchar](80) NULL,
	[Season] [varchar](50) NULL,
	[Favorite] [bit] NULL,
	[TimesWorn] [int] NULL,
	[Dirty] [bit] NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tops]    Script Date: 2/19/2017 8:31:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tops](
	[TopsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ClothingType] [varchar](50) NOT NULL,
	[OutfitsID] [int] NULL,
	[Brand] [varchar](50) NULL,
	[Photo] [nvarchar](100) NULL,
	[Color] [varchar](80) NULL,
	[Occasion] [varchar](80) NULL,
	[Season] [varchar](50) NULL,
	[Favorite] [bit] NULL,
	[TimesWorn] [int] NULL,
	[Dirty] [bit] NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Outfits] FOREIGN KEY([OutfitsID])
REFERENCES [dbo].[Outfits] ([OutfitsID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Outfits]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Outfits] FOREIGN KEY([OutfitsID])
REFERENCES [dbo].[Outfits] ([OutfitsID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Outfits]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Accessories] FOREIGN KEY([AccessoriesID])
REFERENCES [dbo].[Accessories] ([AccessoriesID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Accessories]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomsID])
REFERENCES [dbo].[Bottoms] ([BottomsID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([ShoesID])
REFERENCES [dbo].[Shoes] ([ShoesID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopsID])
REFERENCES [dbo].[Tops] ([TopsID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_Outfits] FOREIGN KEY([OutfitsID])
REFERENCES [dbo].[Outfits] ([OutfitsID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_Outfits]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Outfits] FOREIGN KEY([OutfitsID])
REFERENCES [dbo].[Outfits] ([OutfitsID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Outfits]
GO
USE [master]
GO
ALTER DATABASE [WardrobeClosetProject] SET  READ_WRITE 
GO
