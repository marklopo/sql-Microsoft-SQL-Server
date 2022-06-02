/*The practical application 
of the DECLARE command along 
with setting conditions is presented below.*/



--1
DECLARE @liczba INT

SET @liczba = 7

PRINT @liczba
select @liczba

--2
DECLARE @liczba2 INT

SET @liczba2 = 12
PRINT @liczba2
IF ( @liczba2 > 13 ) 
  PRINT 'Liczba wieksza od 13'
ELSE IF ( @liczba2 < 12 )  
  PRINT 'Liczba mniejsza od 12'
ELSE 
BEGIN
   PRINT 'Liczba = 12'
END
