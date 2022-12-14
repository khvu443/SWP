USE [master]
GO
/****** Object:  Database [Ciklodtb]    Script Date: 10/26/2022 11:41:38 PM ******/
CREATE DATABASE [Ciklodtb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ciklodtb', FILENAME = N'D:\SQL\SQL_Server_2019\MSSQL15.MSSQLSERVER\MSSQL\DATA\Ciklodtb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Ciklodtb_log', FILENAME = N'D:\SQL\SQL_Server_2019\MSSQL15.MSSQLSERVER\MSSQL\DATA\Ciklodtb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Ciklodtb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ciklodtb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ciklodtb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ciklodtb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ciklodtb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ciklodtb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ciklodtb] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ciklodtb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ciklodtb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ciklodtb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ciklodtb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ciklodtb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ciklodtb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ciklodtb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ciklodtb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ciklodtb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ciklodtb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Ciklodtb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ciklodtb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ciklodtb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ciklodtb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ciklodtb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ciklodtb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ciklodtb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ciklodtb] SET RECOVERY FULL 
GO
ALTER DATABASE [Ciklodtb] SET  MULTI_USER 
GO
ALTER DATABASE [Ciklodtb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ciklodtb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ciklodtb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ciklodtb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Ciklodtb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Ciklodtb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Ciklodtb', N'ON'
GO
ALTER DATABASE [Ciklodtb] SET QUERY_STORE = OFF
GO
USE [Ciklodtb]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 10/26/2022 11:41:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[adID] [nvarchar](10) NOT NULL,
	[adName] [nvarchar](50) NULL,
	[adUserName] [nvarchar](50) NULL,
	[adPass] [nvarchar](50) NULL,
	[adMail] [nvarchar](50) NULL,
	[adPhone] [nvarchar](10) NULL,
	[adAvatar] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[adID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 10/26/2022 11:41:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[billID] [nvarchar](10) NOT NULL,
	[cusID] [nvarchar](10) NULL,
	[driverID] [nvarchar](10) NULL,
	[detailID] [nvarchar](10) NULL,
	[Total] [float] NULL,
	[Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[billID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[billdetail]    Script Date: 10/26/2022 11:41:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[billdetail](
	[detailID] [nvarchar](10) NOT NULL,
	[routeID] [nvarchar](10) NOT NULL,
	[price] [money] NULL,
	[OrderOfRoute] [int] NULL,
 CONSTRAINT [PK__billdeta__830778395352621F] PRIMARY KEY CLUSTERED 
(
	[detailID] ASC,
	[routeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 10/26/2022 11:41:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[cusID] [nvarchar](10) NOT NULL,
	[cusName] [nvarchar](50) NULL,
	[cusMail] [nvarchar](50) NULL,
	[cusUserName] [nvarchar](50) NULL,
	[cusPass] [nvarchar](50) NULL,
	[cusPhone] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[cusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[driver]    Script Date: 10/26/2022 11:41:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[driver](
	[driverID] [nvarchar](10) NOT NULL,
	[driverName] [nvarchar](50) NULL,
	[driverUserName] [nvarchar](50) NULL,
	[driverPass] [nvarchar](50) NULL,
	[driverMail] [nvarchar](50) NULL,
	[driverPhone] [nvarchar](10) NULL,
	[driverAvatar] [nvarchar](max) NULL,
	[driverCCCD] [varchar](20) NULL,
	[driverGender] [bit] NULL,
	[driverStatus] [bit] NULL,
	[CurrentStation] [nvarchar](10) NULL,
	[isActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[driverID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[place]    Script Date: 10/26/2022 11:41:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[place](
	[placeID] [nvarchar](10) NOT NULL,
	[typeID] [nvarchar](10) NULL,
	[routeID] [nvarchar](10) NULL,
	[placeLocation] [nvarchar](50) NULL,
	[placeImage] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[placeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[route]    Script Date: 10/26/2022 11:41:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[route](
	[routeID] [nvarchar](10) NOT NULL,
	[routeBegin] [nvarchar](10) NULL,
	[routeEnd] [nvarchar](10) NULL,
	[distance] [int] NULL,
	[routePrice] [money] NULL,
	[adID] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[routeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[station]    Script Date: 10/26/2022 11:41:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[station](
	[stationID] [nvarchar](10) NOT NULL,
	[Location] [nvarchar](50) NULL,
	[stationName] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[stationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type]    Script Date: 10/26/2022 11:41:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type](
	[typeID] [nvarchar](10) NOT NULL,
	[typeName] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD FOREIGN KEY([cusID])
REFERENCES [dbo].[customer] ([cusID])
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD FOREIGN KEY([driverID])
REFERENCES [dbo].[driver] ([driverID])
GO
ALTER TABLE [dbo].[billdetail]  WITH CHECK ADD  CONSTRAINT [FK__billdetai__route__37A5467C] FOREIGN KEY([routeID])
REFERENCES [dbo].[route] ([routeID])
GO
ALTER TABLE [dbo].[billdetail] CHECK CONSTRAINT [FK__billdetai__route__37A5467C]
GO
ALTER TABLE [dbo].[driver]  WITH CHECK ADD FOREIGN KEY([CurrentStation])
REFERENCES [dbo].[station] ([stationID])
GO
ALTER TABLE [dbo].[place]  WITH CHECK ADD FOREIGN KEY([routeID])
REFERENCES [dbo].[route] ([routeID])
GO
ALTER TABLE [dbo].[place]  WITH CHECK ADD FOREIGN KEY([typeID])
REFERENCES [dbo].[type] ([typeID])
GO
ALTER TABLE [dbo].[route]  WITH CHECK ADD FOREIGN KEY([adID])
REFERENCES [dbo].[admin] ([adID])
GO
ALTER TABLE [dbo].[route]  WITH CHECK ADD FOREIGN KEY([routeBegin])
REFERENCES [dbo].[station] ([stationID])
GO
ALTER TABLE [dbo].[route]  WITH CHECK ADD FOREIGN KEY([routeEnd])
REFERENCES [dbo].[station] ([stationID])
GO
USE [master]
GO
ALTER DATABASE [Ciklodtb] SET  READ_WRITE 
GO
