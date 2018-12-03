
-- drop procedure [dbo].[proce]



select * from sys.tables
CREATE PROCEDURE [dbo].[proce]
@FromDate DATE = '2004-01-01',
@ToDate DATE = '2020-12-31'

AS
BEGIN

--Setting language
SET LANGUAGE English


--Populating Dimension
WHILE @FromDate <= @ToDate
	BEGIN
		INSERT INTO Czas(
			[Id], 
			[Miesiac], 
			[Kwartal], 
			[Rok]
            )
            SELECT 
				FORMAT(@FromDate, 'MMyyyy') as [Id],
                MONTH(@FromDate) AS [Miesiac],
				DATENAME(QUARTER,@FromDate) AS [Kwartal],
                YEAR(@FromDate) AS [Rok]     
      SET @FromDate = DATEADD(MONTH, 1, @FromDate)
END
 
END
GO




SELECT * FROM Klienci

SELECT * FROM Regiony

SELECT * FROM Czas

SELECT * FROM Towary
