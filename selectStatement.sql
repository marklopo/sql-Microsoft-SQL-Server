/*The practical application of 
the SELECT statement is shown below.*/


--CREATE DATABASE Select;
GO

CREATE TABLE Osoba(
    ID int PRIMARY KEY,
    Imie varchar(20),
    Nazwisko varchar(20),
    Miasto varchar(40),
    Kraj varchar(20)
);
GO

CREATE TABLE Auto(
    ID int,
    Marka varchar(30),
    Model varchar(30),
    Rocznik varchar(10),
    Kolor varchar(20)
);
GO

CREATE TABLE Student(
    ID int PRIMARY KEY,
    Imie varchar(20),
    Nazwisko varchar(20),
    Kierunek varchar(20),
    Rok int
);
GO

CREATE TABLE Mieszkanie(
    ID int,
    Miasto varchar(30),
    Dzielnica varchar(30),
    Pomieszczenia int,
    Pietro int
);
GO
INSERT INTO Osoba(
    ID,
    Imie,
    Nazwisko,
    Miasto,
    Kraj
) VALUES ('1','Tomasz','Nowak','Wroclaw','Polska');
GO
INSERT INTO Osoba(
    ID,
    Imie,
    Nazwisko,
    Miasto,
    Kraj
) VALUES ('2','Jan','Kowalski','Poznan','Polska');
GO
INSERT INTO Osoba(
    ID,
    Imie,
    Nazwisko,
    Miasto,
    Kraj
) VALUES ('3','Pawe³','Rybak','Berlin','Polska');
GO
INSERT INTO Auto(
    ID,
    Marka,
    Model,
    Rocznik,
    Kolor
) VALUES ('1','audi','a4','2002','Bialy');
GO
INSERT INTO Auto(
    ID,
    Marka,
    Model,
    Rocznik,
    Kolor
) VALUES ('2','opel','astra','2000','Czerwony');
GO

INSERT INTO Auto(
    ID,
    Marka,
    Model,
    Rocznik,
    Kolor
) VALUES ('3','fiat','punto','2006','Niebieski');
GO

UPDATE Auto
SET Model='Zafira'
WHERE ID='2';
GO
UPDATE Osoba
SET Kraj='Niemcy'
WHERE ID='3';
GO

ALTER TABLE Mieszkanie
ADD Cena int;
GO
ALTER TABLE Student
DROP COLUMN Rok;
ALTER TABLE Auto
    ALTER COLUMN Marka varchar(15) NOT NULL;
GO
INSERT INTO Osoba(
    ID,
    Imie,
    Nazwisko,
    Miasto,
    Kraj
) VALUES ('3','Micha³','Nowak','Olawa','Polska');

GO
INSERT INTO Osoba(
    ID,
    Imie,
    Nazwisko,
    Miasto,
    Kraj
) VALUES ('4','Piotr','Kowalski','Olesnica','Polska');

GO
INSERT INTO Osoba(
    ID,
    Imie,
    Nazwisko,
    Miasto,
    Kraj
) VALUES ('5','Artur','Zawada','Luban','Polska');

GO
INSERT INTO Mieszkanie(
    ID,
    Miasto,
    Dzielnica,
    Pomieszczenia,
    Pietro,
	Cena

) VALUES ('1','Wroc³aw','Fabryczna','4','1','120000');
GO
INSERT INTO Mieszkanie(
    ID,
    Miasto,
    Dzielnica,
    Pomieszczenia,
    Pietro,
	Cena

) VALUES ('2','Wroc³aw','Fabryczna','5','10','90000');
GO
INSERT INTO Mieszkanie(
    ID,
    Miasto,
    Dzielnica,
    Pomieszczenia,
    Pietro,
	Cena

) VALUES ('3','Wroc³aw','Fabryczna','3','1','100000');
GO
INSERT INTO Auto(
    ID,
    Marka,
    Model,
    Rocznik,
    Kolor
) VALUES ('3','audi','a6','2008','Czerwony');
GO

--1
SELECT Miasto, Dzielnica FROM Mieszkanie
GO

--2
SELECT Marka +', '+Model AS Samochód From dbo.Auto
GO

--3
SELECT Imie, Nazwisko FROM Osoba ORDER BY Nazwisko ASC
GO

--4
SELECT COUNT(DISTINCT 'Nazwisko') FROM Student
GO

--5
SELECT * from Osoba
SELECT * FROM Osoba WHERE Nazwisko = 'Nowak';

--6
SELECT AVG(Cena)
FROM Mieszkanie;

--7
SELECT Nazwisko AS Osoba FROM Osoba GROUP BY Nazwisko ;
GO

--8
SELECT Miasto, Cena,
CASE
    WHEN Cena > 100000 THEN 'Cena powyzej 100 tys.'
    WHEN Cena = 100000 THEN 'Cena 100 tys.'
    ELSE 'Cena ponizej 100 tys.'
END AS Lokalizacja
FROM Mieszkanie; 

--9
SELECT Miasto, Cena * 1,23
 
FROM Mieszkanie; 

--10
SELECT * from Auto
SELECT DISTINCT Marka FROM Auto
GO