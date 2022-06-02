/*The practical use of 
the INNER JOIN keyword is shown below. 
The databases related to services 
in the passenger car workshop were created here.*/


CREATE DATABASE INNER
GO

USE INNER
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wlasciciel](
	[WlascicielID] [int] IDENTITY(1,1) NOT NULL,
	[Imie] [nvarchar](20) NOT NULL,
	[Nazwisko] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Wlasciciel] PRIMARY KEY CLUSTERED 
(
	[WlascicielID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/**********************/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UslugaRodzaje](
	[UslugaRodzajeID] [int] IDENTITY(1,1) NOT NULL,
	[UslugaRodzaje] [varchar](30) NOT NULL,
 CONSTRAINT [PK_UslugaRodzaje] PRIMARY KEY CLUSTERED 
(
	[UslugaRodzajeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/*********/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stanowisko](
	[StanowiskoID] [int] IDENTITY(1,1) NOT NULL,
	[Stanowisko] [varchar](15) NOT NULL
	CONSTRAINT [PK_Stanowisko] PRIMARY KEY CLUSTERED 
	(
	[StanowiskoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/**********/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warsztat](
	[UslugaID] [int] IDENTITY(1,1) NOT NULL,
	[Marka] [nvarchar](150) NOT NULL,
	[idWlasciciel] [int] NOT NULL,
	[idUslugaRodzaj] [int] NOT NULL,
	[NumerRej] [varchar](15) NULL,
	[idStanowisko] [int] NULL,
 CONSTRAINT [PK_Warsztat] PRIMARY KEY CLUSTERED 
(
	[UslugaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/**********/
SET IDENTITY_INSERT [dbo].[Wlasciciel] ON 
GO
INSERT [dbo].[Wlasciciel] ([WlascicielID], [Imie], [Nazwisko]) VALUES (1, N'Marek', N'Nowacki')
GO
INSERT [dbo].[Wlasciciel] ([WlascicielID], [Imie], [Nazwisko]) VALUES (2, N'Piotr', N'Mazur')
GO
INSERT [dbo].[Wlasciciel] ([WlascicielID], [Imie], [Nazwisko]) VALUES (3, N'Jaroslaw', N'Rak')
GO
SET IDENTITY_INSERT [dbo].[Wlasciciel] OFF
GO

/**********/
SET IDENTITY_INSERT [dbo].[UslugaRodzaje] ON 
GO
INSERT [dbo].[UslugaRodzaje] ([UslugaRodzajeID], [UslugaRodzaje]) VALUES (1, N'Przeglad letni')
GO
INSERT [dbo].[UslugaRodzaje] ([UslugaRodzajeID], [UslugaRodzaje]) VALUES (2, N'Przeglad zimowy')
GO
INSERT [dbo].[UslugaRodzaje] ([UslugaRodzajeID], [UslugaRodzaje]) VALUES (3, N'Wymiana opon na letnie')
GO
INSERT [dbo].[UslugaRodzaje] ([UslugaRodzajeID], [UslugaRodzaje]) VALUES (4, N'Wymiana opon na zimowe')
GO
INSERT [dbo].[UslugaRodzaje] ([UslugaRodzajeID], [UslugaRodzaje]) VALUES (5, N'Przeglad gwarancyjny')
GO
INSERT [dbo].[UslugaRodzaje] ([UslugaRodzajeID], [UslugaRodzaje]) VALUES (6, N'Pranie tapicerki')
GO
SET IDENTITY_INSERT [dbo].[UslugaRodzaje] OFF
GO

/**********/
SET IDENTITY_INSERT [dbo].[Stanowisko] ON 
GO
INSERT [dbo].[Stanowisko] ([StanowiskoID], [Stanowisko]) VALUES (1, N'Stanowisko 1')
GO
INSERT [dbo].[Stanowisko] ([StanowiskoID], [Stanowisko]) VALUES (2, N'Stanowisko 2')
GO
INSERT [dbo].[Stanowisko] ([StanowiskoID], [Stanowisko]) VALUES (3, N'Stanowisko 3')
GO
INSERT [dbo].[Stanowisko] ([StanowiskoID], [Stanowisko]) VALUES (4, N'Stanowisko 4')
GO
INSERT [dbo].[Stanowisko] ([StanowiskoID], [Stanowisko]) VALUES (5, N'Stanowisko 5')
GO
INSERT [dbo].[Stanowisko] ([StanowiskoID], [Stanowisko]) VALUES (6, N'Stanowisko 6')
GO
SET IDENTITY_INSERT [dbo].[Stanowisko] OFF
GO

/********/
SET IDENTITY_INSERT [dbo].[Warsztat] ON 
GO
INSERT [dbo].[Warsztat] ([UslugaID], [Marka], [idWlasciciel], [idUslugaRodzaj], [NumerRej], [idStanowisko]) VALUES (1, N'OPEL ASTRA 2.0', 1, 4, N'DZA 19567', 1)
GO
INSERT [dbo].[Warsztat] ([UslugaID], [Marka], [idWlasciciel], [idUslugaRodzaj], [NumerRej], [idStanowisko]) VALUES (2, N'MAZDA 323 1.8', 2, 6, N'DW 12563', 2)
GO
INSERT [dbo].[Warsztat] ([UslugaID], [Marka], [idWlasciciel], [idUslugaRodzaj], [NumerRej], [idStanowisko]) VALUES (3, N'VW PASSAT 2.0', 1, 4, N'DLU 65987', null)
GO
SET IDENTITY_INSERT [dbo].[Warsztat] OFF
GO

/************/
SELECT * FROM dbo.Warsztat
SELECT * FROM dbo.Wlasciciel
GO
SET IDENTITY_INSERT [dbo].[Warsztat] ON 
GO
DELETE FROM dbo.Wlasciciel WHERE WlascicielID = 3
GO
SELECT * FROM dbo.Wlasciciel
GO
INSERT INTO dbo.Warsztat (UslugaID, Marka, idWlasciciel, idUslugaRodzaj, NumerRej, idStanowisko)
	VALUES(4,'FIAT PUNTO 1.2',3,2,'DLU 98763', 4);
GO	
SELECT * FROM dbo.Warsztat
SELECT * 
FROM [dbo].[Warsztat] as WAR 
INNER JOIN [dbo].[Wlasciciel] as WL
ON WAR.[idWlasciciel]=WL.[WlascicielID]
INNER JOIN [dbo].[Stanowisko] as S
ON WAR.[idStanowisko]=S.[StanowiskoID]
INNER JOIN [dbo].[UslugaRodzaje] as UR
ON WAR.[idUslugaRodzaj]=UR.[UslugaRodzajeID]
GO

CREATE VIEW vListaWarsztat
AS
	SELECT 
		WAR.UslugaID AS ID
		,WAR.Marka
		,WL.Imie AS WlascicielImie
		,WL.Nazwisko AS WlascicielNazwisko
		,US.UslugaRodzaje AS Serwis
		,S.Stanowisko AS Stanowisko
	FROM [dbo].[Warsztat] as WAR
	INNER JOIN [dbo].[Wlasciciel] as WL
	ON WAR.[idWlasciciel] = WL.[WlascicielID]
	INNER JOIN [dbo].[Stanowisko] as S
	ON WAR.[idStanowisko] = S.[StanowiskoID]
	INNER JOIN [dbo].[UslugaRodzaje] as US
	ON WAR.[idUslugaRodzaj] = US.[UslugaRodzajeID]
GO

SELECT * FROM vListaWarsztat
GO

SELECT ID, Marka, Stanowisko FROM vListaWarsztat


GO