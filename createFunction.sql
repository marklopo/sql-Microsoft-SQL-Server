/*The following is a
 practical application 
of the CREATE FUNCTION 
command in a math operation.*/


--1
CREATE FUNCTION Odejmowanie (@L1 INT, @L2 INT)

RETURNS INT
AS
BEGIN
    RETURN (@L1 - @L2)
END
GO

SELECT dbo.Odejmowanie(22,2)

