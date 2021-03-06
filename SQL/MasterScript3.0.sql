USE [FoodieAndTheBlowFish]
GO
/****** Object:  StoredProcedure [dbo].[InsertBlogPost]    Script Date: 5/4/2016 10:23:08 PM ******/
DROP PROCEDURE [dbo].[InsertBlogPost]
GO
/****** Object:  StoredProcedure [dbo].[CreateStaticPage]    Script Date: 5/4/2016 10:23:08 PM ******/
DROP PROCEDURE [dbo].[CreateStaticPage]
GO
ALTER TABLE [dbo].[SubCategories] DROP CONSTRAINT [FK_SubCategories_Categories]
GO
ALTER TABLE [dbo].[IdentityUserRole] DROP CONSTRAINT [FK_dbo.IdentityUserRole_dbo.IdentityUser_UserId]
GO
ALTER TABLE [dbo].[IdentityUserRole] DROP CONSTRAINT [FK_dbo.IdentityUserRole_dbo.IdentityRole_RoleId]
GO
ALTER TABLE [dbo].[IdentityProfile] DROP CONSTRAINT [FK_IdentityProfile_IdentityUser]
GO
ALTER TABLE [dbo].[IdentityLogin] DROP CONSTRAINT [FK_dbo.IdentityLogin_dbo.IdentityUser_UserId]
GO
ALTER TABLE [dbo].[IdentityClaim] DROP CONSTRAINT [FK_dbo.IdentityClaim_dbo.IdentityUser_UserId]
GO
ALTER TABLE [dbo].[DeniedPosts] DROP CONSTRAINT [FK_DeniedPosts_BlogPosts]
GO
ALTER TABLE [dbo].[BlogPostsTags] DROP CONSTRAINT [FK_BlogPost_Tag_Tags]
GO
ALTER TABLE [dbo].[BlogPostsTags] DROP CONSTRAINT [FK_BlogPost_Tag_BlogPosts]
GO
ALTER TABLE [dbo].[BlogPosts] DROP CONSTRAINT [FK_BlogPosts_SubCategories]
GO
ALTER TABLE [dbo].[BlogPosts] DROP CONSTRAINT [FK_BlogPosts_Statuses]
GO
ALTER TABLE [dbo].[BlogPosts] DROP CONSTRAINT [FK_BlogPosts_IdentityUser]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 5/4/2016 10:23:08 PM ******/
DROP TABLE [dbo].[Tags]
GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 5/4/2016 10:23:08 PM ******/
DROP TABLE [dbo].[SubCategories]
GO
/****** Object:  Table [dbo].[Statuses]    Script Date: 5/4/2016 10:23:08 PM ******/
DROP TABLE [dbo].[Statuses]
GO
/****** Object:  Table [dbo].[IdentityUserRole]    Script Date: 5/4/2016 10:23:08 PM ******/
DROP TABLE [dbo].[IdentityUserRole]
GO
/****** Object:  Table [dbo].[IdentityUser]    Script Date: 5/4/2016 10:23:08 PM ******/
DROP TABLE [dbo].[IdentityUser]
GO
/****** Object:  Table [dbo].[IdentityRole]    Script Date: 5/4/2016 10:23:08 PM ******/
DROP TABLE [dbo].[IdentityRole]
GO
/****** Object:  Table [dbo].[IdentityProfile]    Script Date: 5/4/2016 10:23:08 PM ******/
DROP TABLE [dbo].[IdentityProfile]
GO
/****** Object:  Table [dbo].[IdentityLogin]    Script Date: 5/4/2016 10:23:08 PM ******/
DROP TABLE [dbo].[IdentityLogin]
GO
/****** Object:  Table [dbo].[IdentityClaim]    Script Date: 5/4/2016 10:23:08 PM ******/
DROP TABLE [dbo].[IdentityClaim]
GO
/****** Object:  Table [dbo].[DeniedPosts]    Script Date: 5/4/2016 10:23:08 PM ******/
DROP TABLE [dbo].[DeniedPosts]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 5/4/2016 10:23:08 PM ******/
DROP TABLE [dbo].[Categories]
GO
/****** Object:  Table [dbo].[BlogPostsTags]    Script Date: 5/4/2016 10:23:08 PM ******/
DROP TABLE [dbo].[BlogPostsTags]
GO
/****** Object:  Table [dbo].[BlogPosts]    Script Date: 5/4/2016 10:23:08 PM ******/
DROP TABLE [dbo].[BlogPosts]
GO
/****** Object:  Table [dbo].[AdminStaticPages]    Script Date: 5/4/2016 10:23:08 PM ******/
DROP TABLE [dbo].[AdminStaticPages]
GO
USE [master]
GO
/****** Object:  Database [FoodieAndTheBlowFish]    Script Date: 5/4/2016 10:23:08 PM ******/
DROP DATABASE [FoodieAndTheBlowFish]
GO
/****** Object:  Database [FoodieAndTheBlowFish]    Script Date: 5/4/2016 10:23:08 PM ******/
CREATE DATABASE [FoodieAndTheBlowFish]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FoodieAndTheBlowFish', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2014\MSSQL\DATA\FoodieAndTheBlowFish.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FoodieAndTheBlowFish_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2014\MSSQL\DATA\FoodieAndTheBlowFish_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FoodieAndTheBlowFish].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET ARITHABORT OFF 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET  MULTI_USER 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET DELAYED_DURABILITY = DISABLED 
GO
USE [FoodieAndTheBlowFish]
GO
/****** Object:  Table [dbo].[AdminStaticPages]    Script Date: 5/4/2016 10:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminStaticPages](
	[AdminPageId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[MiniTitle] [varchar](20) NOT NULL,
	[AdminPageContent] [varchar](max) NOT NULL,
	[CreatedOn] [date] NOT NULL,
 CONSTRAINT [PK_AdminStaticPages] PRIMARY KEY CLUSTERED 
(
	[AdminPageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BlogPosts]    Script Date: 5/4/2016 10:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BlogPosts](
	[BlogId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[SubCategoryId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[MainPictureUrl] [varchar](125) NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[PostContent] [varchar](max) NOT NULL,
	[Summary] [varchar](255) NOT NULL,
	[CreatedOn] [date] NOT NULL,
	[PublishDate] [date] NULL,
	[ExpirationDate] [date] NULL,
	[ApprovedOn] [date] NULL,
 CONSTRAINT [PK_BlogPosts] PRIMARY KEY CLUSTERED 
(
	[BlogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BlogPostsTags]    Script Date: 5/4/2016 10:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogPostsTags](
	[BlogId] [int] NOT NULL,
	[TagId] [int] NOT NULL,
 CONSTRAINT [PK_BlogPost_Tag] PRIMARY KEY CLUSTERED 
(
	[BlogId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 5/4/2016 10:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Category] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeniedPosts]    Script Date: 5/4/2016 10:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeniedPosts](
	[DenialId] [int] IDENTITY(1,1) NOT NULL,
	[BlogId] [int] NOT NULL,
	[Reason] [varchar](max) NOT NULL,
	[DeniedOn] [date] NOT NULL,
 CONSTRAINT [PK_DeniedPosts] PRIMARY KEY CLUSTERED 
(
	[DenialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IdentityClaim]    Script Date: 5/4/2016 10:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityClaim](
	[ClaimId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.IdentityClaim] PRIMARY KEY CLUSTERED 
(
	[ClaimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IdentityLogin]    Script Date: 5/4/2016 10:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityLogin](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_IdentityLogin] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IdentityProfile]    Script Date: 5/4/2016 10:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IdentityProfile](
	[UserId] [uniqueidentifier] NOT NULL,
	[FirstName] [varchar](128) NULL,
	[MiddleName] [varchar](128) NULL,
	[LastName] [varchar](128) NULL,
	[CreateBy] [uniqueidentifier] NOT NULL,
	[CreateDate] [smalldatetime] NOT NULL CONSTRAINT [DF_IdentityUserProfile_CreateDate]  DEFAULT (getutcdate()),
	[ModifyBy] [uniqueidentifier] NOT NULL,
	[ModifyDate] [smalldatetime] NOT NULL CONSTRAINT [DF_IdentityUserProfile_ModifyDate]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_IdentityProfile] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IdentityRole]    Script Date: 5/4/2016 10:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityRole](
	[RoleId] [int] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.IdentityRole] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IdentityUser]    Script Date: 5/4/2016 10:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityUser](
	[UserId] [uniqueidentifier] NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[CreateBy] [uniqueidentifier] NOT NULL,
	[CreateDate] [smalldatetime] NOT NULL CONSTRAINT [DF_IdentityUser_CreateDate]  DEFAULT (getutcdate()),
	[ModifyBy] [uniqueidentifier] NOT NULL,
	[ModifyDate] [smalldatetime] NOT NULL CONSTRAINT [DF_IdentityUser_ModifyDate]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_dbo.IdentityUser] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IdentityUserRole]    Script Date: 5/4/2016 10:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityUserRole](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.IdentityUserRole] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Statuses]    Script Date: 5/4/2016 10:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Statuses](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Statuses] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 5/4/2016 10:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubCategories](
	[SubCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SubCategory] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SubCategories] PRIMARY KEY CLUSTERED 
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 5/4/2016 10:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tags](
	[TagId] [int] IDENTITY(1,1) NOT NULL,
	[Tag] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AdminStaticPages] ON 

GO
INSERT [dbo].[AdminStaticPages] ([AdminPageId], [Title], [MiniTitle], [AdminPageContent], [CreatedOn]) VALUES (2, N'Takeru Kobayashi VS. Hamster', N'Hamsterashi', N'<h1 style="text-align: center;"><strong>Kobayashi may be the most amazing eating machine humanity has known, but the animal kingdom has a new contender...</strong></h1>
<p>&nbsp;</p>
<p style="text-align: center;"><strong><img src="https://media.giphy.com/media/KuEFn1MMt3ZZe/giphy.gif" alt="" width="318" height="179" /></strong></p>
<p style="text-align: center;">Full video below</p>
<hr />
<h3>&nbsp;</h3>
<h3>Enter the hamster.</h3>
<p>Weighing in at an impressive 1.6 ounces, this mini monster mauls man made meat sticks like nobody''s business.&nbsp;This hamster is no eating rookie, having previously devoured&nbsp;a bunch of bite-size burritos,&nbsp;expertly stuffing them into his giant puffed up cheeks.</p>
<p>&nbsp;</p>
<p style="text-align: center;"><img src="https://media.giphy.com/media/IqtL4SISwcPm0/giphy.gif" alt="burr" width="244" height="225" /></p>
<p style="text-align: center;">&nbsp;</p>
<p style="text-align: left;">What a pro.</p>
<p>Hams took on the the Japanese speed-eating legend in a hot dog eating contest. The outcome?</p>
<p>&nbsp;</p>
<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://sociorocketnewsen.files.wordpress.com/2014/09/kh-61.png?w=580&amp;h=315" alt="" width="500" height="272" /></p>
<p>&nbsp;</p>
<p>In the end, it&rsquo;s another heart-breaking loss for Kobayashi, whose record against four-legged rivals now stands at 0-2. There&rsquo;s no shame in his most recent defeat, though, as he seems to have gone up against the most focused hamster in existence. He was so committed to devouring everything in sight that&nbsp;when his trainer was too slow slapping another hot dog on his plate, he went ahead and ate one of the cups. Check out the full video here:</p>
<p>&nbsp;</p>
<p style="text-align: center;"><iframe src="//www.youtube.com/embed/XPHlHuhBVFI" width="560" height="314" allowfullscreen="allowfullscreen"></iframe></p>', CAST(N'2016-05-04' AS Date))
GO
SET IDENTITY_INSERT [dbo].[AdminStaticPages] OFF
GO
SET IDENTITY_INSERT [dbo].[BlogPosts] ON 

GO
INSERT [dbo].[BlogPosts] ([BlogId], [UserId], [SubCategoryId], [StatusId], [MainPictureUrl], [Title], [PostContent], [Summary], [CreatedOn], [PublishDate], [ExpirationDate], [ApprovedOn]) VALUES (1, N'd4cdc38c-5e60-4238-9c36-bbe39ec4e018', 7, 2, N'https://grubamericana.files.wordpress.com/2012/08/hamburger_love-normal.jpg', N'Best Burger Ever!', N'<p>Best Hamburger Evar!&nbsp;</p>
<p><img src="https://grubamericana.files.wordpress.com/2012/08/hamburger_love-normal.jpg" alt="" width="650" height="551" /></p>
<p>Bacon ipsum dolor amet consectetur ex ullamco tail. Turducken duis shankle, pork belly fugiat culpa cow dolore pork loin tri-tip quis short ribs doner. Aliquip ribeye capicola, in short ribs irure rump cupidatat. Bacon jerky tongue pork chop incididunt reprehenderit. Proident exercitation beef frankfurter.</p>
<p>Chicken voluptate pancetta, in reprehenderit dolore dolore aute tenderloin occaecat deserunt. Boudin drumstick capicola, elit ex voluptate culpa. Sint tongue salami, occaecat filet mignon irure ground round labore ball tip. Duis cupidatat pig aute biltong chicken. Swine est consectetur venison, pig salami mollit porchetta adipisicing officia pariatur kevin ex. Esse deserunt bacon ut labore sed, magna adipisicing picanha pork loin. Ball tip tri-tip ut chicken nisi.</p>
<p>&nbsp;</p>
<p><img src="http://www.gannett-cdn.com/-mm-/de0a34e464f1c8b5b0737ec2a91519fc37e97b79/c=1-0-767-1022&amp;r=537&amp;c=0-0-534-712/local/-/media/2016/01/07/Livonia/B9320422051Z.1_20160107223802_000_GFAD3CS9I.1-0.jpg" alt="" width="400" height="533" /></p>
<p>Fugiat nulla sint ut alcatra, beef ribs adipisicing. Venison dolor incididunt irure. Capicola laborum venison, officia boudin sint sunt est kielbasa fatback cillum pastrami. Ea et andouille, landjaeger reprehenderit t-bone esse. Exercitation cow magna, turkey adipisicing id mollit proident. Alcatra ea dolore pancetta aliquip.</p>
<p>Rump short ribs jowl dolor ad laborum alcatra biltong beef ribs nulla pastrami. Swine short ribs venison cupim ad. Anim deserunt cupidatat tempor. Rump cupidatat pork belly sirloin voluptate ut doner venison shank dolore beef ribs picanha andouille. Jowl anim deserunt magna velit meatloaf. Tail aliqua in pork capicola picanha.</p>
<p>Drumstick chuck fatback eu bacon, chicken aliquip ad irure venison turducken laborum tempor. Porchetta nulla ipsum veniam, pork chop cupim drumstick quis jerky in aliqua cupidatat ball tip andouille nostrud. Chicken in aute short ribs beef ribs. Bacon brisket mollit, tempor pig qui commodo drumstick dolore laboris pork chop chuck landjaeger doner. Biltong kevin prosciutto, sirloin chuck laboris tempor mollit dolore pork belly nulla quis velit ut sausage. Nisi non qui rump venison reprehenderit est.</p>', N'Best Hamburger in the world!', CAST(N'2016-04-23' AS Date), NULL, NULL, CAST(N'2016-04-23' AS Date))
GO
INSERT [dbo].[BlogPosts] ([BlogId], [UserId], [SubCategoryId], [StatusId], [MainPictureUrl], [Title], [PostContent], [Summary], [CreatedOn], [PublishDate], [ExpirationDate], [ApprovedOn]) VALUES (2, N'd4cdc38c-5e60-4238-9c36-bbe39ec4e018', 1, 2, N'http://cfile7.uf.tistory.com/image/2136B73451773EAC2D88B6', N'Korea BBQ Buffet', N'<p>South Korea: Seoul: BBQ Buffet!</p>
<p><img src="http://mblogthumb4.phinf.naver.net/20120806_283/barbies01_13442212527361jGeA_JPEG/IMG_7583_copy.JPG?type=w2" alt="" width="550" height="366" /></p>
<p>Bacon ipsum dolor amet consectetur ex ullamco tail. Turducken duis shankle, pork belly fugiat culpa cow dolore pork loin tri-tip quis short ribs doner. Aliquip ribeye capicola, in short ribs irure rump cupidatat. Bacon jerky tongue pork chop incididunt reprehenderit. Proident exercitation beef frankfurter.</p>
<p>Chicken voluptate pancetta, in reprehenderit dolore dolore aute tenderloin occaecat deserunt. Boudin drumstick capicola, elit ex voluptate culpa. Sint tongue salami, occaecat filet mignon irure ground round labore ball tip. Duis cupidatat pig aute biltong chicken. Swine est consectetur venison, pig salami mollit porchetta adipisicing officia pariatur kevin ex. Esse deserunt bacon ut labore sed, magna adipisicing picanha pork loin. Ball tip tri-tip ut chicken nisi.</p>
<p><img src="http://cfile9.uf.tistory.com/image/27373C355271B9103693D5" alt="" width="500" height="333" /></p>
<p>Fugiat nulla sint ut alcatra, beef ribs adipisicing. Venison dolor incididunt irure. Capicola laborum venison, officia boudin sint sunt est kielbasa fatback cillum pastrami. Ea et andouille, landjaeger reprehenderit t-bone esse. Exercitation cow magna, turkey adipisicing id mollit proident. Alcatra ea dolore pancetta aliquip.</p>
<p>Rump short ribs jowl dolor ad laborum alcatra biltong beef ribs nulla pastrami. Swine short ribs venison cupim ad. Anim deserunt cupidatat tempor. Rump cupidatat pork belly sirloin voluptate ut doner venison shank dolore beef ribs picanha andouille. Jowl anim deserunt magna velit meatloaf. Tail aliqua in pork capicola picanha.</p>
<p>Drumstick chuck fatback eu bacon, chicken aliquip ad irure venison turducken laborum tempor. Porchetta nulla ipsum veniam, pork chop cupim drumstick quis jerky in aliqua cupidatat ball tip andouille nostrud. Chicken in aute short ribs beef ribs. Bacon brisket mollit, tempor pig qui commodo drumstick dolore laboris pork chop chuck landjaeger doner. Biltong kevin prosciutto, sirloin chuck laboris tempor mollit dolore pork belly nulla quis velit ut sausage. Nisi non qui rump venison reprehenderit est.</p>', N'Unlimited Meat! BBQ Buffet in Seoul', CAST(N'2016-04-24' AS Date), NULL, NULL, CAST(N'2016-04-24' AS Date))
GO
INSERT [dbo].[BlogPosts] ([BlogId], [UserId], [SubCategoryId], [StatusId], [MainPictureUrl], [Title], [PostContent], [Summary], [CreatedOn], [PublishDate], [ExpirationDate], [ApprovedOn]) VALUES (3, N'd4cdc38c-5e60-4238-9c36-bbe39ec4e018', 5, 2, N'http://www.driscolls.com/content/images/recipe-images/recipe_detail_b94987bd0119a8f390b4899555208b6c.jpg', N'Strawberry Shortcake', N'<p>Strawberry Shortcake!&nbsp;</p>
<p><img src="http://www.easyproteinshakes.com/wp-content/uploads/2013/06/strawberryshortcake100.jpg" alt="" width="500" height="332" /></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Oat cake chocolate bar sweet chupa chups lollipop sweet roll oat cake sweet marshmallow. Gingerbread cookie toffee gingerbread liquorice. Jelly beans pie bonbon chocolate bar halvah. Pie danish sugar plum sesame snaps biscuit icing gummi bears gingerbread. Biscuit cake gingerbread. Biscuit icing cotton candy cheesecake.</span></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Liquorice candy biscuit chocolate. Icing gummi bears sweet sesame snaps tootsie roll bonbon sweet roll. Pie chupa chups brownie tootsie roll sesame snaps brownie tiramisu. Jelly muffin lemon drops. Croissant pudding danish gingerbread toffee marzipan sesame snaps. Cake wafer sweet roll halvah danish lemon drops carrot cake.</span></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding"><img src="https://i.ytimg.com/vi/UoMiCDp_dTc/maxresdefault.jpg" alt="" width="500" height="281" /></span></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Macaroon apple pie tiramisu marzipan muffin caramels sweet roll pie chupa chups. Jelly beans marzipan apple pie cake donut topping marshmallow topping brownie. Topping dessert drag&eacute;e chocolate bar. Powder croissant lollipop pastry macaroon. Toffee bonbon jelly beans cheesecake sugar plum. Donut cotton candy icing ice cream donut.</span></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Gummies dessert bonbon liquorice cookie pudding sugar plum. Sugar plum toffee danish jelly chocolate liquorice croissant marzipan. Carrot cake wafer cotton candy wafer donut souffl&eacute; souffl&eacute; icing. Cake jelly-o icing lemon drops. Chocolate jelly beans sugar plum. Brownie oat cake biscuit candy canes jelly. Liquorice tiramisu tootsie roll carrot cake sweet roll jelly beans fruitcake.</span></p>', N'All Stawberry Lovers Rejoice!', CAST(N'2016-04-24' AS Date), NULL, NULL, CAST(N'2016-04-24' AS Date))
GO
INSERT [dbo].[BlogPosts] ([BlogId], [UserId], [SubCategoryId], [StatusId], [MainPictureUrl], [Title], [PostContent], [Summary], [CreatedOn], [PublishDate], [ExpirationDate], [ApprovedOn]) VALUES (4, N'd4cdc38c-5e60-4238-9c36-bbe39ec4e018', 1, 1, N'http://www.newyorker.com/wp-content/uploads/2015/03/Sushi-Cat-1200.jpg', N'Sushi Making for Dummies', N'<p>Sushi Making for Dummies</p><p><img src="http://www-tc.pbs.org/food/files/2012/09/Sushi-5-1.jpg" alt="" width="600" height="450" data-mce-src="http://www-tc.pbs.org/food/files/2012/09/Sushi-5-1.jpg"></p><p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Oat cake chocolate bar sweet chupa chups lollipop sweet roll oat cake sweet marshmallow. Gingerbread cookie toffee gingerbread liquorice. Jelly beans pie bonbon chocolate bar halvah. Pie danish sugar plum sesame snaps biscuit icing gummi bears gingerbread. Biscuit cake gingerbread. Biscuit icing cotton candy cheesecake.</span></p><p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Liquorice candy biscuit chocolate. Icing gummi bears sweet sesame snaps tootsie roll bonbon sweet roll. Pie chupa chups brownie tootsie roll sesame snaps brownie tiramisu. Jelly muffin lemon drops. Croissant pudding danish gingerbread toffee marzipan sesame snaps. Cake wafer sweet roll halvah danish lemon drops carrot cake.</span></p><p class="paragraph ng-attr-widget"><img src="http://www.asianabistroct.com/resources/1p1l0596rbxwz3rnlvzvnvk8292r.jpg" alt="" width="664" height="378" data-mce-src="http://www.asianabistroct.com/resources/1p1l0596rbxwz3rnlvzvnvk8292r.jpg"></p><p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Macaroon apple pie tiramisu marzipan muffin caramels sweet roll pie chupa chups. Jelly beans marzipan apple pie cake donut topping marshmallow topping brownie. Topping dessert dragée chocolate bar. Powder croissant lollipop pastry macaroon. Toffee bonbon jelly beans cheesecake sugar plum. Donut cotton candy icing ice cream donut.</span></p><p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Gummies dessert bonbon liquorice cookie pudding sugar plum. Sugar plum toffee danish jelly chocolate liquorice croissant marzipan. Carrot cake wafer cotton candy wafer donut soufflé soufflé icing. Cake jelly-o icing lemon drops. Chocolate jelly beans sugar plum. Brownie oat cake biscuit candy canes jelly. Liquorice tiramisu tootsie roll carrot cake sweet roll jelly beans fruitcake.</span></p>', N'Make Sushi Using this One Weird Method. All Sushi Chefs Hate Us!', CAST(N'2016-04-24' AS Date), NULL, NULL, CAST(N'2016-05-04' AS Date))
GO
INSERT [dbo].[BlogPosts] ([BlogId], [UserId], [SubCategoryId], [StatusId], [MainPictureUrl], [Title], [PostContent], [Summary], [CreatedOn], [PublishDate], [ExpirationDate], [ApprovedOn]) VALUES (5, N'87e8fca7-c2fa-40d6-b9de-b226056455ac', 12, 5, N'http://desigrub.com/wp-content/uploads/2010/03/ethiopian_platter.jpg', N'Ethiopian Food: The New Hip Dish', N'<p><img src="https://s-media-cache-ak0.pinimg.com/736x/12/c7/a0/12c7a0293db7f4bf89bc23127f4417a8.jpg" alt="" width="400" height="467" /></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Oat cake chocolate bar sweet chupa chups lollipop sweet roll oat cake sweet marshmallow. Gingerbread cookie toffee gingerbread liquorice. Jelly beans pie bonbon chocolate bar halvah. Pie danish sugar plum sesame snaps biscuit icing gummi bears gingerbread. Biscuit cake gingerbread. Biscuit icing cotton candy cheesecake.</span></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Liquorice candy biscuit chocolate. Icing gummi bears sweet sesame snaps tootsie roll bonbon sweet roll. Pie chupa chups brownie tootsie roll sesame snaps brownie tiramisu. Jelly muffin lemon drops. Croissant pudding danish gingerbread toffee marzipan sesame snaps. Cake wafer sweet roll halvah danish lemon drops carrot cake.</span></p>
<p class="paragraph ng-attr-widget"><img src="http://www.howtocookgreatethiopian.com/new/wp-content/uploads/ethiopian-food-vegan-spinach-potato-gomen-addis-ababa-injera1.jpg" alt="" width="450" height="299" /></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Macaroon apple pie tiramisu marzipan muffin caramels sweet roll pie chupa chups. Jelly beans marzipan apple pie cake donut topping marshmallow topping brownie. Topping dessert drag&eacute;e chocolate bar. Powder croissant lollipop pastry macaroon. Toffee bonbon jelly beans cheesecake sugar plum. Donut cotton candy icing ice cream donut.</span></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Gummies dessert bonbon liquorice cookie pudding sugar plum. Sugar plum toffee danish jelly chocolate liquorice croissant marzipan. Carrot cake wafer cotton candy wafer donut souffl&eacute; souffl&eacute; icing. Cake jelly-o icing lemon drops. Chocolate jelly beans sugar plum. Brownie oat cake biscuit candy canes jelly. Liquorice tiramisu tootsie roll carrot cake sweet roll jelly beans fruitcake.</span></p>', N'Ethiopian dishes are the new craze in town', CAST(N'2016-04-24' AS Date), NULL, NULL, CAST(N'2016-04-24' AS Date))
GO
INSERT [dbo].[BlogPosts] ([BlogId], [UserId], [SubCategoryId], [StatusId], [MainPictureUrl], [Title], [PostContent], [Summary], [CreatedOn], [PublishDate], [ExpirationDate], [ApprovedOn]) VALUES (6, N'd4cdc38c-5e60-4238-9c36-bbe39ec4e018', 13, 5, N'http://cfile221.uf.daum.net/image/145A36534DD3C741089AA3', N'Korea''s Many Noodles..In Antarctica??', N'<p><img src="http://img.lifestyler.co.kr/uploads/program/cheditor/2011/08/SNRIFA9ATUG16PSBLDSC.jpg" alt="" width="600" height="403" /></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Oat cake chocolate bar sweet chupa chups lollipop sweet roll oat cake sweet marshmallow. Gingerbread cookie toffee gingerbread liquorice. Jelly beans pie bonbon chocolate bar halvah. Pie danish sugar plum sesame snaps biscuit icing gummi bears gingerbread. Biscuit cake gingerbread. Biscuit icing cotton candy cheesecake.</span></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Liquorice candy biscuit chocolate. Icing gummi bears sweet sesame snaps tootsie roll bonbon sweet roll. Pie chupa chups brownie tootsie roll sesame snaps brownie tiramisu. Jelly muffin lemon drops. Croissant pudding danish gingerbread toffee marzipan sesame snaps. Cake wafer sweet roll halvah danish lemon drops carrot cake.</span></p>
<p class="paragraph ng-attr-widget"><img src="https://t1.daumcdn.net/thumb/R1280x0/?fname=http://t1.daumcdn.net/brunch/service/user/zYX/image/QvEyv6KVqSCALrK7pYjyRO4zCJI.jpg" alt="" width="600" height="360" /></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Macaroon apple pie tiramisu marzipan muffin caramels sweet roll pie chupa chups. Jelly beans marzipan apple pie cake donut topping marshmallow topping brownie. Topping dessert drag&eacute;e chocolate bar. Powder croissant lollipop pastry macaroon. Toffee bonbon jelly beans cheesecake sugar plum. Donut cotton candy icing ice cream donut.</span></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding"><img src="http://cfile8.uf.tistory.com/image/22532F3E50F5DE06293FB1" alt="" width="600" height="400" /></span></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Gummies dessert bonbon liquorice cookie pudding sugar plum. Sugar plum toffee danish jelly chocolate liquorice croissant marzipan. Carrot cake wafer cotton candy wafer donut souffl&eacute; souffl&eacute; icing. Cake jelly-o icing lemon drops. Chocolate jelly beans sugar plum. Brownie oat cake biscuit candy canes jelly. Liquorice tiramisu tootsie roll carrot cake sweet roll jelly beans fruitcake.</span></p>', N'Koreans sure love Noodles!', CAST(N'2016-04-24' AS Date), NULL, NULL, CAST(N'2016-04-24' AS Date))
GO
INSERT [dbo].[BlogPosts] ([BlogId], [UserId], [SubCategoryId], [StatusId], [MainPictureUrl], [Title], [PostContent], [Summary], [CreatedOn], [PublishDate], [ExpirationDate], [ApprovedOn]) VALUES (7, N'87e8fca7-c2fa-40d6-b9de-b226056455ac', 1, 5, N'http://images-cdn.9gag.com/photo/anK1wAL_700b_v2.jpg', N'Omelette Du Fromage', N'<p><img src="https://i.ytimg.com/vi/Y72nEd3ZpBs/maxresdefault.jpg" alt="" width="600" height="300" /></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Oat cake chocolate bar sweet chupa chups lollipop sweet roll oat cake sweet marshmallow. Gingerbread cookie toffee gingerbread liquorice. Jelly beans pie bonbon chocolate bar halvah. Pie danish sugar plum sesame snaps biscuit icing gummi bears gingerbread. Biscuit cake gingerbread. Biscuit icing cotton candy cheesecake.</span></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Liquorice candy biscuit chocolate. Icing gummi bears sweet sesame snaps tootsie roll bonbon sweet roll. Pie chupa chups brownie tootsie roll sesame snaps brownie tiramisu. Jelly muffin lemon drops. Croissant pudding danish gingerbread toffee marzipan sesame snaps. Cake wafer sweet roll halvah danish lemon drops carrot cake.</span></p>
<p class="paragraph ng-attr-widget"><img src="http://www.fromagesbergeron.com/upload/2013/07/presentation-omelette-fromage-bergeron-classique-tastevino-1024x679.jpg" alt="" width="600" height="398" /></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Macaroon apple pie tiramisu marzipan muffin caramels sweet roll pie chupa chups. Jelly beans marzipan apple pie cake donut topping marshmallow topping brownie. Topping dessert drag&eacute;e chocolate bar. Powder croissant lollipop pastry macaroon. Toffee bonbon jelly beans cheesecake sugar plum. Donut cotton candy icing ice cream donut.</span></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Gummies dessert bonbon liquorice cookie pudding sugar plum. Sugar plum toffee danish jelly chocolate liquorice croissant marzipan. Carrot cake wafer cotton candy wafer donut souffl&eacute; souffl&eacute; icing. Cake jelly-o icing lemon drops. Chocolate jelly beans sugar plum. Brownie oat cake biscuit candy canes jelly. Liquorice tiramisu tootsie roll carrot cake sweet roll jelly beans fruitcake.</span></p>', N'Omlette Du Fromage!!', CAST(N'2016-04-05' AS Date), NULL, NULL, CAST(N'2016-04-05' AS Date))
GO
INSERT [dbo].[BlogPosts] ([BlogId], [UserId], [SubCategoryId], [StatusId], [MainPictureUrl], [Title], [PostContent], [Summary], [CreatedOn], [PublishDate], [ExpirationDate], [ApprovedOn]) VALUES (8, N'87e8fca7-c2fa-40d6-b9de-b226056455ac', 3, 5, N'http://www.hawaiimagazine.com/images/content/Hawaii_udon_saimin_broth_recipe_noodles_mail_order/Saimin.JPG.jpeg', N'Saimin, Brah-!', N'<p><img src="https://chroniccravings.files.wordpress.com/2013/10/wp_20130824_003-800x450.jpg" alt="" width="600" height="338" /></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Oat cake chocolate bar sweet chupa chups lollipop sweet roll oat cake sweet marshmallow. Gingerbread cookie toffee gingerbread liquorice. Jelly beans pie bonbon chocolate bar halvah. Pie danish sugar plum sesame snaps biscuit icing gummi bears gingerbread. Biscuit cake gingerbread. Biscuit icing cotton candy cheesecake.</span></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Liquorice candy biscuit chocolate. Icing gummi bears sweet sesame snaps tootsie roll bonbon sweet roll. Pie chupa chups brownie tootsie roll sesame snaps brownie tiramisu. Jelly muffin lemon drops. Croissant pudding danish gingerbread toffee marzipan sesame snaps. Cake wafer sweet roll halvah danish lemon drops carrot cake.</span></p>
<p class="paragraph ng-attr-widget"><img src="http://www.tastyislandhawaii.com/images/sun_saimin2.jpg" alt="" width="600" height="575" /></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Macaroon apple pie tiramisu marzipan muffin caramels sweet roll pie chupa chups. Jelly beans marzipan apple pie cake donut topping marshmallow topping brownie. Topping dessert drag&eacute;e chocolate bar. Powder croissant lollipop pastry macaroon. Toffee bonbon jelly beans cheesecake sugar plum. Donut cotton candy icing ice cream donut.</span></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Gummies dessert bonbon liquorice cookie pudding sugar plum. Sugar plum toffee danish jelly chocolate liquorice croissant marzipan. Carrot cake wafer cotton candy wafer donut souffl&eacute; souffl&eacute; icing. Cake jelly-o icing lemon drops. Chocolate jelly beans sugar plum. Brownie oat cake biscuit candy canes jelly. Liquorice tiramisu tootsie roll carrot cake sweet roll jelly beans fruitcake.</span></p>', N'Aloha from Hawaii! And Saimin! ', CAST(N'2016-04-01' AS Date), NULL, NULL, CAST(N'2016-04-01' AS Date))
GO
INSERT [dbo].[BlogPosts] ([BlogId], [UserId], [SubCategoryId], [StatusId], [MainPictureUrl], [Title], [PostContent], [Summary], [CreatedOn], [PublishDate], [ExpirationDate], [ApprovedOn]) VALUES (9, N'87e8fca7-c2fa-40d6-b9de-b226056455ac', 8, 2, N'http://2.bp.blogspot.com/-Nc1XQPuvR8c/TtfEMHy1qwI/AAAAAAAACuc/jsCPUBT6ynk/s1600/moqueca-de-peixe.jpg', N'Gumbo? No! Moqueca! ', N'<p><img src="https://img.peixeurbano.com.br/?img=https://s3.amazonaws.com/pu-mgr/default/a0RG000000i171LMAQ/55e43e37e4b00d323e74a327.jpg&amp;w=620&amp;h=400" alt="" width="600" height="387" /></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Oat cake chocolate bar sweet chupa chups lollipop sweet roll oat cake sweet marshmallow. Gingerbread cookie toffee gingerbread liquorice. Jelly beans pie bonbon chocolate bar halvah. Pie danish sugar plum sesame snaps biscuit icing gummi bears gingerbread. Biscuit cake gingerbread. Biscuit icing cotton candy cheesecake.</span></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Liquorice candy biscuit chocolate. Icing gummi bears sweet sesame snaps tootsie roll bonbon sweet roll. Pie chupa chups brownie tootsie roll sesame snaps brownie tiramisu. Jelly muffin lemon drops. Croissant pudding danish gingerbread toffee marzipan sesame snaps. Cake wafer sweet roll halvah danish lemon drops carrot cake.</span></p>
<p class="paragraph ng-attr-widget"><img src="https://legrandvin.files.wordpress.com/2012/11/makro_speciale_moqueca_com_vinhos1.jpeg" alt="" width="600" height="364" /></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Macaroon apple pie tiramisu marzipan muffin caramels sweet roll pie chupa chups. Jelly beans marzipan apple pie cake donut topping marshmallow topping brownie. Topping dessert drag&eacute;e chocolate bar. Powder croissant lollipop pastry macaroon. Toffee bonbon jelly beans cheesecake sugar plum. Donut cotton candy icing ice cream donut.</span></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Gummies dessert bonbon liquorice cookie pudding sugar plum. Sugar plum toffee danish jelly chocolate liquorice croissant marzipan. Carrot cake wafer cotton candy wafer donut souffl&eacute; souffl&eacute; icing. Cake jelly-o icing lemon drops. Chocolate jelly beans sugar plum. Brownie oat cake biscuit candy canes jelly. Liquorice tiramisu tootsie roll carrot cake sweet roll jelly beans fruitcake.</span></p>', N'Brazil''s popular traditional dish, Fish Moqueca-.', CAST(N'2016-03-16' AS Date), NULL, NULL, CAST(N'2016-03-16' AS Date))
GO
INSERT [dbo].[BlogPosts] ([BlogId], [UserId], [SubCategoryId], [StatusId], [MainPictureUrl], [Title], [PostContent], [Summary], [CreatedOn], [PublishDate], [ExpirationDate], [ApprovedOn]) VALUES (10, N'd4cdc38c-5e60-4238-9c36-bbe39ec4e018', 11, 5, N'http://www.taste.com.au/images/recipes/sfi/2003/09/aussie-meat-pies-7273_l.jpeg', N'Have some Meat Pie, Mate!', N'<p><img src="http://www.foodlve.com/dailymotion/saved_images/img53c1260936bfb6.51659073.jpg" alt="" width="600" height="338" /></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Oat cake chocolate bar sweet chupa chups lollipop sweet roll oat cake sweet marshmallow. Gingerbread cookie toffee gingerbread liquorice. Jelly beans pie bonbon chocolate bar halvah. Pie danish sugar plum sesame snaps biscuit icing gummi bears gingerbread. Biscuit cake gingerbread. Biscuit icing cotton candy cheesecake.</span></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Liquorice candy biscuit chocolate. Icing gummi bears sweet sesame snaps tootsie roll bonbon sweet roll. Pie chupa chups brownie tootsie roll sesame snaps brownie tiramisu. Jelly muffin lemon drops. Croissant pudding danish gingerbread toffee marzipan sesame snaps. Cake wafer sweet roll halvah danish lemon drops carrot cake.</span></p>
<p class="paragraph ng-attr-widget"><img src="http://images.goodfood.com.au/2013/01/21/3969146/GF_729_oz_pies-620x0.jpg" alt="" width="600" height="338" /></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Macaroon apple pie tiramisu marzipan muffin caramels sweet roll pie chupa chups. Jelly beans marzipan apple pie cake donut topping marshmallow topping brownie. Topping dessert drag&eacute;e chocolate bar. Powder croissant lollipop pastry macaroon. Toffee bonbon jelly beans cheesecake sugar plum. Donut cotton candy icing ice cream donut.</span></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Gummies dessert bonbon liquorice cookie pudding sugar plum. Sugar plum toffee danish jelly chocolate liquorice croissant marzipan. Carrot cake wafer cotton candy wafer donut souffl&eacute; souffl&eacute; icing. Cake jelly-o icing lemon drops. Chocolate jelly beans sugar plum. Brownie oat cake biscuit candy canes jelly. Liquorice tiramisu tootsie roll carrot cake sweet roll jelly beans fruitcake.</span></p>', N'After running away from gigantic spiders and angry Emus, why not have a meat pie?', CAST(N'2016-04-24' AS Date), NULL, NULL, CAST(N'2016-04-24' AS Date))
GO
INSERT [dbo].[BlogPosts] ([BlogId], [UserId], [SubCategoryId], [StatusId], [MainPictureUrl], [Title], [PostContent], [Summary], [CreatedOn], [PublishDate], [ExpirationDate], [ApprovedOn]) VALUES (11, N'87e8fca7-c2fa-40d6-b9de-b226056455ac', 10, 1, N'http://bestguidedtoursinrome.com/wp-content/uploads/2014/11/italian-pizza-cooking-classes.jpg', N'Best Pizza from Rome! ', N'<p><img src="http://foodloversodyssey.com/wp-content/uploads/2010/08/6a010536a07d60970b01348656eb46970c-800wi.jpg" alt="" width="600" height="376" /></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Oat cake chocolate bar sweet chupa chups lollipop sweet roll oat cake sweet marshmallow. Gingerbread cookie toffee gingerbread liquorice. Jelly beans pie bonbon chocolate bar halvah. Pie danish sugar plum sesame snaps biscuit icing gummi bears gingerbread. Biscuit cake gingerbread. Biscuit icing cotton candy cheesecake.</span></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Liquorice candy biscuit chocolate. Icing gummi bears sweet sesame snaps tootsie roll bonbon sweet roll. Pie chupa chups brownie tootsie roll sesame snaps brownie tiramisu. Jelly muffin lemon drops. Croissant pudding danish gingerbread toffee marzipan sesame snaps. Cake wafer sweet roll halvah danish lemon drops carrot cake.</span></p>
<p class="paragraph ng-attr-widget"><img src="http://www.noodlesandcurry.com/wp-content/uploads/2014/05/DSCF3675.jpg" alt="" width="600" height="400" /></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Macaroon apple pie tiramisu marzipan muffin caramels sweet roll pie chupa chups. Jelly beans marzipan apple pie cake donut topping marshmallow topping brownie. Topping dessert drag&eacute;e chocolate bar. Powder croissant lollipop pastry macaroon. Toffee bonbon jelly beans cheesecake sugar plum. Donut cotton candy icing ice cream donut.</span></p>
<p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Gummies dessert bonbon liquorice cookie pudding sugar plum. Sugar plum toffee danish jelly chocolate liquorice croissant marzipan. Carrot cake wafer cotton candy wafer donut souffl&eacute; souffl&eacute; icing. Cake jelly-o icing lemon drops. Chocolate jelly beans sugar plum. Brownie oat cake biscuit candy canes jelly. Liquorice tiramisu tootsie roll carrot cake sweet roll jelly beans fruitcake.</span></p>', N'Let''s get Pizza from Rome. Seems logical enough. ', CAST(N'2016-04-23' AS Date), NULL, NULL, CAST(N'2016-05-04' AS Date))
GO
INSERT [dbo].[BlogPosts] ([BlogId], [UserId], [SubCategoryId], [StatusId], [MainPictureUrl], [Title], [PostContent], [Summary], [CreatedOn], [PublishDate], [ExpirationDate], [ApprovedOn]) VALUES (12, N'd4cdc38c-5e60-4238-9c36-bbe39ec4e018', 1, 1, N'http://www.bottlemart.com.au/Assets/9663/1/Strawberry-Daiquiri-Desktop.jpg', N'How to make the best Strawberry Daiquiri', N'<p><img src="http://unsophisticook.com/wp-content/uploads/2012/05/Easy-Strawberry-Daiquiri-Recipe.jpg" alt="" width="529" height="353" data-mce-src="http://unsophisticook.com/wp-content/uploads/2012/05/Easy-Strawberry-Daiquiri-Recipe.jpg"></p><p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Oat cake chocolate bar sweet chupa chups lollipop sweet roll oat cake sweet marshmallow. Gingerbread cookie toffee gingerbread liquorice. Jelly beans pie bonbon chocolate bar halvah. Pie danish sugar plum sesame snaps biscuit icing gummi bears gingerbread. Biscuit cake gingerbread. Biscuit icing cotton candy cheesecake.</span></p><p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Liquorice candy biscuit chocolate. Icing gummi bears sweet sesame snaps tootsie roll bonbon sweet roll. Pie chupa chups brownie tootsie roll sesame snaps brownie tiramisu. Jelly muffin lemon drops. Croissant pudding danish gingerbread toffee marzipan sesame snaps. Cake wafer sweet roll halvah danish lemon drops carrot cake.</span></p><p class="paragraph ng-attr-widget"><img src="http://www.westsideliquor.com/wp-content/uploads/2013/05/Strawberry-Daiquiri.jpg" alt="" width="600" height="402" data-mce-src="http://www.westsideliquor.com/wp-content/uploads/2013/05/Strawberry-Daiquiri.jpg"></p><p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Macaroon apple pie tiramisu marzipan muffin caramels sweet roll pie chupa chups. Jelly beans marzipan apple pie cake donut topping marshmallow topping brownie. Topping dessert dragée chocolate bar. Powder croissant lollipop pastry macaroon. Toffee bonbon jelly beans cheesecake sugar plum. Donut cotton candy icing ice cream donut.</span></p><p class="paragraph ng-attr-widget"><span class="ng-directive ng-binding">Gummies dessert bonbon liquorice cookie pudding sugar plum. Sugar plum toffee danish jelly chocolate liquorice croissant marzipan. Carrot cake wafer cotton candy wafer donut soufflé soufflé icing. Cake jelly-o icing lemon drops. Chocolate jelly beans sugar plum. Brownie oat cake biscuit candy canes jelly. Liquorice tiramisu tootsie roll carrot cake sweet roll jelly beans fruitcake.</span></p>', N'Strawberry Daiquiri to cool you down in summer!', CAST(N'2016-04-25' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[BlogPosts] ([BlogId], [UserId], [SubCategoryId], [StatusId], [MainPictureUrl], [Title], [PostContent], [Summary], [CreatedOn], [PublishDate], [ExpirationDate], [ApprovedOn]) VALUES (13, N'd4cdc38c-5e60-4238-9c36-bbe39ec4e018', 1, 2, N'http://www.simplyrealmoms.com/wp-content/uploads/2015/11/IMG_5344-640x395.jpg', N'Blue Sky Donuts', N'<div id="lipsum"><p style="text-align: center;" data-mce-style="text-align: center;"><img src="http://www.mauronewmedia.com/blog/wp-content/uploads/2013/10/breaking-bad-walt-jesse-cooking.jpg" alt="blu" width="626" height="469" data-mce-src="http://www.mauronewmedia.com/blog/wp-content/uploads/2013/10/breaking-bad-walt-jesse-cooking.jpg"></p><p>Look... I feel like I''m running out of ways to explain this to you but once more, I shall try. This fly is a major problem for us. It will ruin our batch. And we need to destroy it and every trace of it, so we can cook. Failing that, we''re dead. There''s no more room for error. Not with these people.</p><p>You asked me if we were in the meth business or the money business. Neither, I’m in the empire business. I was under the impression that you had this under control. Well, that''s what this is - problem solving. Skyler this is a simple division of labor - I bring in the money, you launder the money. This is what you wanted.</p><p style="text-align: center;" data-mce-style="text-align: center;"><img src="http://img2-1.timeinc.net/people/i/2013/news/130715/bb-aaron-paul-600.jpg" alt="yum" width="600" height="450" data-mce-src="http://img2-1.timeinc.net/people/i/2013/news/130715/bb-aaron-paul-600.jpg"></p><p>Who are you talking to right now? Who is it you think you see? Do you know how much I make a year? I mean, even if I told you, you wouldn''t believe it. Do you know what would happen if I suddenly decided to stop going into work?</p><p>A business big enough that it could be listed on the NASDAQ goes belly up. Disappears! It ceases to exist without me. No, you clearly don''t know who you''re talking to, so let me clue you in. I am not in danger, Skyler. I AM the danger! A guy opens his door and gets shot and you think that of me? No. I am the one who knocks!</p></div>', N'The Sky Is The Limit With These Delicacies ', CAST(N'2016-05-04' AS Date), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[BlogPosts] OFF
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (1, 1)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (2, 2)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (2, 7)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (2, 24)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (3, 9)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (3, 10)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (3, 11)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (4, 4)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (4, 5)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (4, 6)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (5, 3)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (6, 2)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (6, 12)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (7, 13)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (7, 14)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (8, 12)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (9, 16)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (9, 17)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (9, 23)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (10, 20)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (10, 22)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (11, 18)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (11, 19)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (12, 10)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (12, 15)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (13, 25)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (13, 26)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (13, 27)
GO
INSERT [dbo].[BlogPostsTags] ([BlogId], [TagId]) VALUES (13, 28)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

GO
INSERT [dbo].[Categories] ([CategoryId], [Category]) VALUES (1, N'Recipes')
GO
INSERT [dbo].[Categories] ([CategoryId], [Category]) VALUES (2, N'Reviews')
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
INSERT [dbo].[IdentityProfile] ([UserId], [FirstName], [MiddleName], [LastName], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (N'87e8fca7-c2fa-40d6-b9de-b226056455ac', N'Jeane', NULL, N'Hong', N'00000000-0000-0000-0000-000000000000', CAST(N'2016-04-24 00:42:00' AS SmallDateTime), N'00000000-0000-0000-0000-000000000000', CAST(N'2016-04-24 00:42:00' AS SmallDateTime))
GO
INSERT [dbo].[IdentityProfile] ([UserId], [FirstName], [MiddleName], [LastName], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (N'd4cdc38c-5e60-4238-9c36-bbe39ec4e018', N'Chuck', NULL, N'Norris', N'00000000-0000-0000-0000-000000000000', CAST(N'2016-04-25 13:07:00' AS SmallDateTime), N'00000000-0000-0000-0000-000000000000', CAST(N'2016-04-25 13:07:00' AS SmallDateTime))
GO
INSERT [dbo].[IdentityProfile] ([UserId], [FirstName], [MiddleName], [LastName], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (N'6c445490-fb64-49a7-ad34-edd6bf885445', N'Foodie', NULL, N'Blowfish', N'00000000-0000-0000-0000-000000000000', CAST(N'2016-05-04 19:09:00' AS SmallDateTime), N'00000000-0000-0000-0000-000000000000', CAST(N'2016-05-04 19:09:00' AS SmallDateTime))
GO
INSERT [dbo].[IdentityRole] ([RoleId], [Name]) VALUES (1, N'Admin')
GO
INSERT [dbo].[IdentityRole] ([RoleId], [Name]) VALUES (2, N'Contributor')
GO
INSERT [dbo].[IdentityRole] ([RoleId], [Name]) VALUES (3, N'User')
GO
INSERT [dbo].[IdentityUser] ([UserId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (N'87e8fca7-c2fa-40d6-b9de-b226056455ac', N'hisuida@me.com', 0, N'APtZMtSev5OwwVfhdNNbdY5sCXxkX0/gS+sXxzfmW8+6TLpzzUzok+kp6j3rrmB3uw==', N'7387b2ca-32f6-4b70-90dd-60a3ab7ad4cc', NULL, 0, 0, CAST(N'1753-01-01 00:00:00.000' AS DateTime), 1, 0, N'hisuida@me.com', N'00000000-0000-0000-0000-000000000000', CAST(N'2016-04-24 00:42:00' AS SmallDateTime), N'00000000-0000-0000-0000-000000000000', CAST(N'2016-04-24 00:42:00' AS SmallDateTime))
GO
INSERT [dbo].[IdentityUser] ([UserId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (N'd4cdc38c-5e60-4238-9c36-bbe39ec4e018', N'chuck@you.up', 0, N'AL6YNhSyHum+kCreOoDNDXe5Ba6icTkUQ4bZdsX+t8JlLNz6+6Zz9JvwFzKzGQxpdA==', N'd24cb409-a2ea-45bb-8651-5df3a92da910', NULL, 0, 0, CAST(N'1753-01-01 00:00:00.000' AS DateTime), 1, 0, N'chuck@you.up', N'00000000-0000-0000-0000-000000000000', CAST(N'2016-04-25 13:07:00' AS SmallDateTime), N'00000000-0000-0000-0000-000000000000', CAST(N'2016-04-25 13:07:00' AS SmallDateTime))
GO
INSERT [dbo].[IdentityUser] ([UserId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (N'6c445490-fb64-49a7-ad34-edd6bf885445', N'admin@admin.edu', 0, N'AFycPWM3qnuXHut4MmFS9vbQUmWWDClLfnfsDyn7dc+XkfGolO8jHC1LoO3GHBpAaQ==', N'82a03653-5d58-4d54-854a-a4cf4be6350d', NULL, 0, 0, CAST(N'1753-01-01 00:00:00.000' AS DateTime), 1, 0, N'admin@admin.edu', N'00000000-0000-0000-0000-000000000000', CAST(N'2016-05-04 19:09:00' AS SmallDateTime), N'00000000-0000-0000-0000-000000000000', CAST(N'2016-05-04 19:09:00' AS SmallDateTime))
GO
INSERT [dbo].[IdentityUserRole] ([UserId], [RoleId]) VALUES (N'87e8fca7-c2fa-40d6-b9de-b226056455ac', 2)
GO
INSERT [dbo].[IdentityUserRole] ([UserId], [RoleId]) VALUES (N'd4cdc38c-5e60-4238-9c36-bbe39ec4e018', 2)
GO
INSERT [dbo].[IdentityUserRole] ([UserId], [RoleId]) VALUES (N'6c445490-fb64-49a7-ad34-edd6bf885445', 1)
GO
SET IDENTITY_INSERT [dbo].[Statuses] ON 

GO
INSERT [dbo].[Statuses] ([StatusId], [Type]) VALUES (1, N'Pending')
GO
INSERT [dbo].[Statuses] ([StatusId], [Type]) VALUES (2, N'Active')
GO
INSERT [dbo].[Statuses] ([StatusId], [Type]) VALUES (3, N'Inactive')
GO
INSERT [dbo].[Statuses] ([StatusId], [Type]) VALUES (4, N'Denied')
GO
INSERT [dbo].[Statuses] ([StatusId], [Type]) VALUES (5, N'Featured')
GO
SET IDENTITY_INSERT [dbo].[Statuses] OFF
GO
SET IDENTITY_INSERT [dbo].[SubCategories] ON 

GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (1, 1, N'Breakfast')
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (3, 1, N'Lunch')
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (4, 1, N'Dinner')
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (5, 1, N'Dessert')
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (6, 1, N'Drinks')
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (7, 2, N'NorthAmerica')
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (8, 2, N'SouthAmerica')
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (9, 2, N'Asia')
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (10, 2, N'Europe')
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (11, 2, N'Australia')
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (12, 2, N'Africa')
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [CategoryId], [SubCategory]) VALUES (13, 2, N'Antarctica')
GO
SET IDENTITY_INSERT [dbo].[SubCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[Tags] ON 

GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (1, N'Hamburger')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (2, N'Korean food')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (3, N'Ethiopian food')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (4, N'Japanese food')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (5, N'Fish')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (6, N'Sushi')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (7, N'BBQ')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (8, N'Meatzilla')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (9, N'Cake')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (10, N'Strawberry')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (11, N'Fruit cake')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (12, N'Noodles')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (13, N'Eggs')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (14, N'Cheese')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (15, N'Cocktail')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (16, N'Fish')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (17, N'Shrimp')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (18, N'Pizza')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (19, N'Italian food')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (20, N'Austrialian food')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (21, N'Soup')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (22, N'Pie')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (23, N'Stew')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (24, N'Bomb Ass Ribz')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (25, N'Donuts')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (26, N'Blu')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (27, N'Blue')
GO
INSERT [dbo].[Tags] ([TagId], [Tag]) VALUES (28, N'Not Meth')
GO
SET IDENTITY_INSERT [dbo].[Tags] OFF
GO
ALTER TABLE [dbo].[BlogPosts]  WITH CHECK ADD  CONSTRAINT [FK_BlogPosts_IdentityUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[IdentityUser] ([UserId])
GO
ALTER TABLE [dbo].[BlogPosts] CHECK CONSTRAINT [FK_BlogPosts_IdentityUser]
GO
ALTER TABLE [dbo].[BlogPosts]  WITH CHECK ADD  CONSTRAINT [FK_BlogPosts_Statuses] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Statuses] ([StatusId])
GO
ALTER TABLE [dbo].[BlogPosts] CHECK CONSTRAINT [FK_BlogPosts_Statuses]
GO
ALTER TABLE [dbo].[BlogPosts]  WITH CHECK ADD  CONSTRAINT [FK_BlogPosts_SubCategories] FOREIGN KEY([SubCategoryId])
REFERENCES [dbo].[SubCategories] ([SubCategoryId])
GO
ALTER TABLE [dbo].[BlogPosts] CHECK CONSTRAINT [FK_BlogPosts_SubCategories]
GO
ALTER TABLE [dbo].[BlogPostsTags]  WITH CHECK ADD  CONSTRAINT [FK_BlogPost_Tag_BlogPosts] FOREIGN KEY([BlogId])
REFERENCES [dbo].[BlogPosts] ([BlogId])
GO
ALTER TABLE [dbo].[BlogPostsTags] CHECK CONSTRAINT [FK_BlogPost_Tag_BlogPosts]
GO
ALTER TABLE [dbo].[BlogPostsTags]  WITH CHECK ADD  CONSTRAINT [FK_BlogPost_Tag_Tags] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([TagId])
GO
ALTER TABLE [dbo].[BlogPostsTags] CHECK CONSTRAINT [FK_BlogPost_Tag_Tags]
GO
ALTER TABLE [dbo].[DeniedPosts]  WITH CHECK ADD  CONSTRAINT [FK_DeniedPosts_BlogPosts] FOREIGN KEY([BlogId])
REFERENCES [dbo].[BlogPosts] ([BlogId])
GO
ALTER TABLE [dbo].[DeniedPosts] CHECK CONSTRAINT [FK_DeniedPosts_BlogPosts]
GO
ALTER TABLE [dbo].[IdentityClaim]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IdentityClaim_dbo.IdentityUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[IdentityUser] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityClaim] CHECK CONSTRAINT [FK_dbo.IdentityClaim_dbo.IdentityUser_UserId]
GO
ALTER TABLE [dbo].[IdentityLogin]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IdentityLogin_dbo.IdentityUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[IdentityUser] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityLogin] CHECK CONSTRAINT [FK_dbo.IdentityLogin_dbo.IdentityUser_UserId]
GO
ALTER TABLE [dbo].[IdentityProfile]  WITH CHECK ADD  CONSTRAINT [FK_IdentityProfile_IdentityUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[IdentityUser] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityProfile] CHECK CONSTRAINT [FK_IdentityProfile_IdentityUser]
GO
ALTER TABLE [dbo].[IdentityUserRole]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IdentityUserRole_dbo.IdentityRole_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[IdentityRole] ([RoleId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityUserRole] CHECK CONSTRAINT [FK_dbo.IdentityUserRole_dbo.IdentityRole_RoleId]
GO
ALTER TABLE [dbo].[IdentityUserRole]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IdentityUserRole_dbo.IdentityUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[IdentityUser] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityUserRole] CHECK CONSTRAINT [FK_dbo.IdentityUserRole_dbo.IdentityUser_UserId]
GO
ALTER TABLE [dbo].[SubCategories]  WITH CHECK ADD  CONSTRAINT [FK_SubCategories_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[SubCategories] CHECK CONSTRAINT [FK_SubCategories_Categories]
GO
/****** Object:  StoredProcedure [dbo].[CreateStaticPage]    Script Date: 5/4/2016 10:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateStaticPage]
	-- Add the parameters for the stored procedure here
	@Title varchar(100),
	@MiniTitle varchar(20),
	@AdminPageContent varchar(max),
	@CreatedOn date,
	@AdminPageId int output
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into AdminStaticPages (Title, MiniTitle, AdminPageContent, CreatedOn)
	Values (@Title, @MiniTitle, @AdminPageContent, @CreatedOn)
	
	SET @AdminPageId = SCOPE_IDENTITY();

END



GO
/****** Object:  StoredProcedure [dbo].[InsertBlogPost]    Script Date: 5/4/2016 10:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertBlogPost] 
	-- Add the parameters for the stored procedure here
	@UserId uniqueidentifier, 
	@SubCategoryId int,
	@StatusId int,
	@MainPictureUrl varchar(125),
	@Title varchar(100),
	@PostContent varchar(max),
	@Summary varchar(255),
	@CreatedOn date,
	@PublishDate date,
	@ExpirationDate date,
	@ApprovedOn date,
	@BlogId int output
AS
BEGIN
	INSERT INTO BlogPosts (UserId, SubCategoryId, StatusId, MainPictureUrl, Title, PostContent, Summary, CreatedOn, PublishDate, ExpirationDate, ApprovedOn)
	VALUES (@UserId, @SubCategoryId, @StatusId, @MainPictureUrl, @Title, @PostContent, @Summary, @CreatedOn, @PublishDate, @ExpirationDate, @ApprovedOn);

	SET @BlogId = SCOPE_IDENTITY();

END


GO
USE [master]
GO
ALTER DATABASE [FoodieAndTheBlowFish] SET  READ_WRITE 
GO
