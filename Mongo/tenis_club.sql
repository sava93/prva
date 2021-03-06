USE [master]
GO
/****** Object:  Database [tenis_club]    Script Date: 10/13/2017 4:26:46 PM ******/
CREATE DATABASE [tenis_club]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tenis_club', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\tenis_club.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'tenis_club_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\tenis_club_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [tenis_club] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tenis_club].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tenis_club] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tenis_club] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tenis_club] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tenis_club] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tenis_club] SET ARITHABORT OFF 
GO
ALTER DATABASE [tenis_club] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [tenis_club] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tenis_club] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tenis_club] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tenis_club] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tenis_club] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tenis_club] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tenis_club] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tenis_club] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tenis_club] SET  DISABLE_BROKER 
GO
ALTER DATABASE [tenis_club] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tenis_club] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tenis_club] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tenis_club] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tenis_club] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tenis_club] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tenis_club] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tenis_club] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [tenis_club] SET  MULTI_USER 
GO
ALTER DATABASE [tenis_club] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tenis_club] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tenis_club] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tenis_club] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [tenis_club] SET DELAYED_DURABILITY = DISABLED 
GO
USE [tenis_club]
GO
/****** Object:  Table [dbo].[clan]    Script Date: 10/13/2017 4:26:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clan](
	[clanid] [bigint] NOT NULL,
	[ime] [varchar](50) NOT NULL,
	[prezime] [varchar](50) NOT NULL,
	[mesto] [varchar](50) NOT NULL,
	[ulica] [varchar](50) NOT NULL,
	[broj] [varchar](50) NOT NULL,
	[email] [varchar](50) NULL,
	[kontaktTelefon] [varchar](50) NOT NULL,
 CONSTRAINT [PK_clan] PRIMARY KEY CLUSTERED 
(
	[clanid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[korisnik]    Script Date: 10/13/2017 4:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[korisnik](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[lastname] [varchar](50) NOT NULL,
 CONSTRAINT [PK_korisnik] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[oprema]    Script Date: 10/13/2017 4:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[oprema](
	[opremaid] [bigint] NOT NULL,
	[naziv] [varchar](50) NOT NULL,
	[tip] [varchar](50) NOT NULL,
	[velicina] [varchar](50) NULL,
	[proizvodjacid] [int] NOT NULL,
 CONSTRAINT [PK_oprema] PRIMARY KEY CLUSTERED 
(
	[opremaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[priozvodjac]    Script Date: 10/13/2017 4:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[priozvodjac](
	[proizvodjacid] [int] NOT NULL,
	[naziv] [varchar](50) NOT NULL,
	[mesto] [varchar](50) NOT NULL,
	[ulica] [varchar](50) NULL,
	[broj] [varchar](50) NULL,
 CONSTRAINT [PK_priozvodjac] PRIMARY KEY CLUSTERED 
(
	[proizvodjacid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rentiranje]    Script Date: 10/13/2017 4:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rentiranje](
	[rentiranjeid] [bigint] NOT NULL,
	[razduzenje] [bit] NULL,
	[vremeod] [datetime] NOT NULL,
	[vremedo] [datetime] NULL,
	[cena] [float] NULL,
	[clanid] [bigint] NOT NULL,
 CONSTRAINT [PK_rentiranje] PRIMARY KEY CLUSTERED 
(
	[rentiranjeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[stavkarentiranja]    Script Date: 10/13/2017 4:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stavkarentiranja](
	[rentiranjeid] [bigint] NOT NULL,
	[rbstavke] [int] NOT NULL,
	[cena] [float] NOT NULL,
	[stanjepre] [text] NOT NULL,
	[stanjeposle] [text] NULL,
	[opremaid] [bigint] NOT NULL,
 CONSTRAINT [PK_stavkarentiranja] PRIMARY KEY CLUSTERED 
(
	[rentiranjeid] ASC,
	[rbstavke] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[teren]    Script Date: 10/13/2017 4:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[teren](
	[terenid] [int] NOT NULL,
	[naziv] [varchar](50) NOT NULL,
	[podloga] [varchar](50) NOT NULL,
 CONSTRAINT [PK_teren] PRIMARY KEY CLUSTERED 
(
	[terenid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[termin]    Script Date: 10/13/2017 4:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[termin](
	[terminid] [bigint] NOT NULL,
	[vremeod] [datetime] NOT NULL,
	[vremedo] [datetime] NOT NULL,
	[rezervisan] [bit] NOT NULL,
	[cena] [float] NOT NULL,
	[napomena] [text] NOT NULL,
	[terenid] [int] NOT NULL,
	[clanid] [bigint] NOT NULL,
 CONSTRAINT [PK_termin] PRIMARY KEY CLUSTERED 
(
	[terminid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [tenis_club] SET  READ_WRITE 
GO
