/*Below is a practical
 use of the PROCEDURE 
command in a warehouse database.*/



BEGIN
    CREATE DATABASE Hurtownia
END
GO

USE Hurtownia
GO 


SET NOCOUNT ON 
GO

--1

	CREATE TABLE [dbo].[Hurtownia](
		[ID] [int] IDENTITY(1,1) NOT NULL,
		[idProdukt] [int] NOT NULL,
		[Ilosc] [int] NOT NULL,
		[idProducenta] [int] NOT NULL,
	 CONSTRAINT [PK_Hurtownia] PRIMARY KEY CLUSTERED 
	(
		[ID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

GO


	CREATE TABLE [dbo].[DzialZam](
		[ID] [int] IDENTITY(1,1) NOT NULL,
		[idProdukt] [int] NOT NULL,
		[Ilosc] [int] NOT NULL,
		[idZamawiajacego] [int] ,
		[DataZamowienia] [smalldatetime] NOT NULL
	 CONSTRAINT [PK_DzialZam] PRIMARY KEY CLUSTERED 
	(
		[ID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

GO


INSERT INTO dbo.Hurtownia (idProdukt, Ilosc, idProducenta) VALUES (1, 300, 12)
GO
INSERT INTO dbo.DzialZam (idProdukt, Ilosc, idZamawiajacego, DataZamowienia) VALUES (1, 1,26, GETDATE())
GO

--2
CREATE TABLE #TabTymczasowa
(
	 Id int,
	 Produkt nvarchar(25) 
)
GO
INSERT INTO #TabTymczasowa (Id, Produkt) VALUES (1, 'Słuchawki Sony')
GO
SELECT * FROM #TabTymczasowa
GO
--3
CREATE PROCEDURE WygenerowaneZam 
@idProdukt int,
@ilosc int,
@idZamawiajacego int
AS
	INSERT INTO dbo.DzialZam (idProdukt, Ilosc,idZamawiajacego, DataZamowienia) VALUES (@idProdukt, @ilosc,@idZamawiajacego, GETDATE())
	SELECT SCOPE_IDENTITY();
	PRINT 'Zamówienie zostało dodane do bazy danych.'
GO 

--4
EXEC WygenerowaneZam @idProdukt = 5, @Ilosc = 5 , @idZamawiajacego = 03
select * from dbo.DzialZam 