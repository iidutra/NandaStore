USE [master]
GO
/****** Object:  Database [NerdStoreEnterpriseDB]    Script Date: 27-06-20 00:27:37 ******/
CREATE DATABASE [NerdStoreEnterpriseDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NerdStoreEnterpriseDB', FILENAME = N'C:\Users\contaNerdStoreEnterpriseDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'contaNerdStoreEnterpriseDB_log', FILENAME = N'C:\Users\contaNerdStoreEnterpriseDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NerdStoreEnterpriseDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET  MULTI_USER 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET QUERY_STORE = OFF
GO
USE [NerdStoreEnterpriseDB]
GO
USE [NerdStoreEnterpriseDB]
GO
/****** Object:  Sequence [dbo].[MinhaSequencia]    Script Date: 27-06-20 00:27:38 ******/
CREATE SEQUENCE [dbo].[MinhaSequencia] 
 AS [int]
 START WITH 1000
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 27-06-20 00:27:38 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 27-06-20 00:27:38 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 27-06-20 00:27:38 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 27-06-20 00:27:38 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 27-06-20 00:27:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 27-06-20 00:27:38 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 27-06-20 00:27:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 27-06-20 00:27:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarrinhoCliente]    Script Date: 27-06-20 00:27:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarrinhoCliente](
	[Id] [uniqueidentifier] NOT NULL,
	[ClienteId] [uniqueidentifier] NOT NULL,
	[ValorTotal] [decimal](18, 2) NOT NULL,
	[Desconto] [decimal](18, 2) NOT NULL,
	[VoucherUtilizado] [bit] NOT NULL,
	[VoucherCodigo] [varchar](50) NULL,
	[Percentual] [decimal](18, 2) NULL,
	[TipoDesconto] [int] NULL,
	[ValorDesconto] [decimal](18, 2) NULL,
 CONSTRAINT [PK_CarrinhoCliente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarrinhoItens]    Script Date: 27-06-20 00:27:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarrinhoItens](
	[Id] [uniqueidentifier] NOT NULL,
	[ProdutoId] [uniqueidentifier] NOT NULL,
	[Nome] [varchar](100) NULL,
	[Quantidade] [int] NOT NULL,
	[Valor] [decimal](18, 2) NOT NULL,
	[Imagem] [varchar](100) NULL,
	[CarrinhoId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_CarrinhoItens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 27-06-20 00:27:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [varchar](200) NOT NULL,
	[Email] [varchar](254) NULL,
	[Cpf] [varchar](11) NULL,
	[Excluido] [bit] NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enderecos]    Script Date: 27-06-20 00:27:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enderecos](
	[Id] [uniqueidentifier] NOT NULL,
	[Logradouro] [varchar](200) NOT NULL,
	[Numero] [varchar](50) NOT NULL,
	[Complemento] [varchar](250) NULL,
	[Bairro] [varchar](100) NOT NULL,
	[Cep] [varchar](20) NOT NULL,
	[Cidade] [varchar](100) NOT NULL,
	[Estado] [varchar](50) NOT NULL,
	[ClienteId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Enderecos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoItems]    Script Date: 27-06-20 00:27:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoItems](
	[Id] [uniqueidentifier] NOT NULL,
	[PedidoId] [uniqueidentifier] NOT NULL,
	[ProdutoId] [uniqueidentifier] NOT NULL,
	[ProdutoNome] [varchar](250) NOT NULL,
	[Quantidade] [int] NOT NULL,
	[ValorUnitario] [decimal](18, 2) NOT NULL,
	[ProdutoImagem] [varchar](100) NULL,
 CONSTRAINT [PK_PedidoItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 27-06-20 00:27:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[Id] [uniqueidentifier] NOT NULL,
	[Codigo] [int] NOT NULL,
	[ClienteId] [uniqueidentifier] NOT NULL,
	[VoucherId] [uniqueidentifier] NULL,
	[VoucherUtilizado] [bit] NOT NULL,
	[Desconto] [decimal](18, 2) NOT NULL,
	[ValorTotal] [decimal](18, 2) NOT NULL,
	[DataCadastro] [datetime2](7) NOT NULL,
	[PedidoStatus] [int] NOT NULL,
	[Logradouro] [varchar](100) NULL,
	[Numero] [varchar](100) NULL,
	[Complemento] [varchar](100) NULL,
	[Bairro] [varchar](100) NULL,
	[Cep] [varchar](100) NULL,
	[Cidade] [varchar](100) NULL,
	[Estado] [varchar](100) NULL,
 CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produtos]    Script Date: 27-06-20 00:27:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produtos](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [varchar](250) NOT NULL,
	[Descricao] [varchar](500) NOT NULL,
	[Ativo] [bit] NOT NULL,
	[Valor] [decimal](18, 2) NOT NULL,
	[DataCadastro] [datetime2](7) NOT NULL,
	[Imagem] [varchar](250) NOT NULL,
	[QuantidadeEstoque] [int] NOT NULL,
 CONSTRAINT [PK_Produtos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vouchers]    Script Date: 27-06-20 00:27:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vouchers](
	[Id] [uniqueidentifier] NOT NULL,
	[Codigo] [varchar](100) NOT NULL,
	[Percentual] [decimal](18, 2) NULL,
	[ValorDesconto] [decimal](18, 2) NULL,
	[Quantidade] [int] NOT NULL,
	[TipoDesconto] [int] NOT NULL,
	[DataCriacao] [datetime2](7) NOT NULL,
	[DataUtilizacao] [datetime2](7) NULL,
	[DataValidade] [datetime2](7) NOT NULL,
	[Ativo] [bit] NOT NULL,
	[Utilizado] [bit] NOT NULL,
 CONSTRAINT [PK_Vouchers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200423030546_Initial', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200509021055_Initial', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200515030740_Clientes', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200528051357_Carrinho', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200618041246_Voucher', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200618053723_Voucher', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200623233053_pedidos', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200627005717_CarrinhoCascade', N'3.1.4')
INSERT [dbo].[Produtos] ([Id], [Nome], [Descricao], [Ativo], [Valor], [DataCadastro], [Imagem], [QuantidadeEstoque]) VALUES (N'7d67df76-2d4e-4a47-a19c-08eb80a9060b', N'Camiseta Code Life Preta', N'Camiseta 100% algodão, resistente a lavagens e altas temperaturas.', 0, CAST(50.00 AS Decimal(18, 2)), CAST(N'2019-07-19T00:00:00.0000000' AS DateTime2), N'camiseta2.jpg', 100)
INSERT [dbo].[Produtos] ([Id], [Nome], [Descricao], [Ativo], [Valor], [DataCadastro], [Imagem], [QuantidadeEstoque]) VALUES (N'78162be3-61c4-4959-89d7-5ebfb476427e', N'Caneca No Coffee No Code', N'Caneca de porcelana com impressão térmica de alta resistência.', 1, CAST(50.00 AS Decimal(18, 2)), CAST(N'2019-07-19T00:00:00.0000000' AS DateTime2), N'caneca4.jpg', 100)
INSERT [dbo].[Produtos] ([Id], [Nome], [Descricao], [Ativo], [Valor], [DataCadastro], [Imagem], [QuantidadeEstoque]) VALUES (N'6ecaaa6b-ad9f-422c-b3bb-6013ec27b4bb', N'Camiseta Debugar Preta', N'Camiseta 100% algodão, resistente a lavagens e altas temperaturas.', 1, CAST(75.00 AS Decimal(18, 2)), CAST(N'2019-07-19T00:00:00.0000000' AS DateTime2), N'camiseta4.jpg', 150)
INSERT [dbo].[Produtos] ([Id], [Nome], [Descricao], [Ativo], [Valor], [DataCadastro], [Imagem], [QuantidadeEstoque]) VALUES (N'6ecaaa6b-ad9f-422c-b3bb-6013ec27c4bb', N'Camiseta Code Life Cinza', N'Camiseta 100% algodão, resistente a lavagens e altas temperaturas.', 1, CAST(99.00 AS Decimal(18, 2)), CAST(N'2019-07-19T00:00:00.0000000' AS DateTime2), N'camiseta3.jpg', 7)
INSERT [dbo].[Produtos] ([Id], [Nome], [Descricao], [Ativo], [Valor], [DataCadastro], [Imagem], [QuantidadeEstoque]) VALUES (N'52dd696b-0882-4a73-9525-6af55dd416a4', N'Caneca Star Bugs Coffee', N'Caneca de porcelana com impressão térmica de alta resistência.', 1, CAST(20.00 AS Decimal(18, 2)), CAST(N'2019-07-19T00:00:00.0000000' AS DateTime2), N'caneca1.jpg', 0)
INSERT [dbo].[Produtos] ([Id], [Nome], [Descricao], [Ativo], [Valor], [DataCadastro], [Imagem], [QuantidadeEstoque]) VALUES (N'191ddd3e-acd4-4c3b-ae74-8e473993c5da', N'Caneca Programmer Code', N'Caneca de porcelana com impressão térmica de alta resistência.', 1, CAST(15.00 AS Decimal(18, 2)), CAST(N'2019-07-19T00:00:00.0000000' AS DateTime2), N'caneca2.jpg', 1)
INSERT [dbo].[Produtos] ([Id], [Nome], [Descricao], [Ativo], [Valor], [DataCadastro], [Imagem], [QuantidadeEstoque]) VALUES (N'fc184e11-014c-4978-aa10-9eb5e1af369b', N'Camiseta Software Developer', N'Camiseta 100% algodão, resistente a lavagens e altas temperaturas.', 0, CAST(100.00 AS Decimal(18, 2)), CAST(N'2019-07-19T00:00:00.0000000' AS DateTime2), N'camiseta1.jpg', 9)
INSERT [dbo].[Produtos] ([Id], [Nome], [Descricao], [Ativo], [Valor], [DataCadastro], [Imagem], [QuantidadeEstoque]) VALUES (N'20e08cd4-2402-4e76-a3c9-a026185b193d', N'Caneca Turn Coffee in Code', N'Caneca de porcelana com impressão térmica de alta resistência.', 1, CAST(20.00 AS Decimal(18, 2)), CAST(N'2019-07-19T00:00:00.0000000' AS DateTime2), N'caneca3.jpg', 0)
INSERT [dbo].[Vouchers] ([Id], [Codigo], [Percentual], [ValorDesconto], [Quantidade], [TipoDesconto], [DataCriacao], [DataUtilizacao], [DataValidade], [Ativo], [Utilizado]) VALUES (N'acffa74e-52a4-4567-a878-72921534d325', N'150-OFF-GERAL', NULL, CAST(150.00 AS Decimal(18, 2)), 50, 1, CAST(N'2020-06-12T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Vouchers] ([Id], [Codigo], [Percentual], [ValorDesconto], [Quantidade], [TipoDesconto], [DataCriacao], [DataUtilizacao], [DataValidade], [Ativo], [Utilizado]) VALUES (N'acffa74e-52a4-4567-a878-72921534d327', N'50-OFF-GERAL', CAST(50.00 AS Decimal(18, 2)), NULL, 44, 0, CAST(N'2020-06-12T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Vouchers] ([Id], [Codigo], [Percentual], [ValorDesconto], [Quantidade], [TipoDesconto], [DataCriacao], [DataUtilizacao], [DataValidade], [Ativo], [Utilizado]) VALUES (N'acffa74e-52a4-4567-a878-72921534d328', N'10-OFF-GERAL', CAST(10.00 AS Decimal(18, 2)), NULL, 50, 0, CAST(N'2020-06-12T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), 1, 0)
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 27-06-20 00:27:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 27-06-20 00:27:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 27-06-20 00:27:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 27-06-20 00:27:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 27-06-20 00:27:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 27-06-20 00:27:39 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 27-06-20 00:27:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_Cliente]    Script Date: 27-06-20 00:27:39 ******/
CREATE NONCLUSTERED INDEX [IDX_Cliente] ON [dbo].[CarrinhoCliente]
(
	[ClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarrinhoItens_CarrinhoId]    Script Date: 27-06-20 00:27:39 ******/
CREATE NONCLUSTERED INDEX [IX_CarrinhoItens_CarrinhoId] ON [dbo].[CarrinhoItens]
(
	[CarrinhoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Enderecos_ClienteId]    Script Date: 27-06-20 00:27:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Enderecos_ClienteId] ON [dbo].[Enderecos]
(
	[ClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedidoItems_PedidoId]    Script Date: 27-06-20 00:27:39 ******/
CREATE NONCLUSTERED INDEX [IX_PedidoItems_PedidoId] ON [dbo].[PedidoItems]
(
	[PedidoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pedidos_VoucherId]    Script Date: 27-06-20 00:27:39 ******/
CREATE NONCLUSTERED INDEX [IX_Pedidos_VoucherId] ON [dbo].[Pedidos]
(
	[VoucherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CarrinhoCliente] ADD  DEFAULT ((0.0)) FOR [Desconto]
GO
ALTER TABLE [dbo].[CarrinhoCliente] ADD  DEFAULT (CONVERT([bit],(0))) FOR [VoucherUtilizado]
GO
ALTER TABLE [dbo].[Pedidos] ADD  DEFAULT (NEXT VALUE FOR [MinhaSequencia]) FOR [Codigo]
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
ALTER TABLE [dbo].[CarrinhoItens]  WITH CHECK ADD  CONSTRAINT [FK_CarrinhoItens_CarrinhoCliente_CarrinhoId] FOREIGN KEY([CarrinhoId])
REFERENCES [dbo].[CarrinhoCliente] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarrinhoItens] CHECK CONSTRAINT [FK_CarrinhoItens_CarrinhoCliente_CarrinhoId]
GO
ALTER TABLE [dbo].[Enderecos]  WITH CHECK ADD  CONSTRAINT [FK_Enderecos_Clientes_ClienteId] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Clientes] ([Id])
GO
ALTER TABLE [dbo].[Enderecos] CHECK CONSTRAINT [FK_Enderecos_Clientes_ClienteId]
GO
ALTER TABLE [dbo].[PedidoItems]  WITH CHECK ADD  CONSTRAINT [FK_PedidoItems_Pedidos_PedidoId] FOREIGN KEY([PedidoId])
REFERENCES [dbo].[Pedidos] ([Id])
GO
ALTER TABLE [dbo].[PedidoItems] CHECK CONSTRAINT [FK_PedidoItems_Pedidos_PedidoId]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Vouchers_VoucherId] FOREIGN KEY([VoucherId])
REFERENCES [dbo].[Vouchers] ([Id])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Vouchers_VoucherId]
GO
USE [master]
GO
ALTER DATABASE [NerdStoreEnterpriseDB] SET  READ_WRITE 
GO
