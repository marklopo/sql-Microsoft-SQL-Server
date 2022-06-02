/*The practical application of the CREATE TABLE, UPDATE, DELETE, ALTER TABLE, DROP COLUMN commands is presented here.*/

CREATE DATABASE Tables;
GO

CREATE TABLE Osoba(
    ID int,
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
    Kolor varchar(20);
);
GO

CREATE TABLE Student(
    ID int,
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
) VALUES ('3','Pawel','Rybak','Berlin','Polska');
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
DELETE FROM Osoba WHERE ID='2';
GO
DELETE FROM Auto WHERE ID='3';
GO
ALTER TABLE Mieszkanie
ADD Cena int;
GO
ALTER TABLE Student
DROP COLUMN Rok;
ALTER TABLE Auto
    ALTER COLUMN Marka varchar(15) NOT NULL;
GO