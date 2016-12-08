DROP TABLE dbo.Employer;

CREATE TABLE Employer(
email NVARCHAR(20)NOT NULL PRIMARY KEY,
CompanyPassword NVARCHAR(20) NOT NULL,
CompanyName NVARCHAR(40) NOT NULL,
CompanyAddress NVARCHAR(50)NOT NULL,
EIK NVARCHAR(20)NOT NULL,
Sector NVARCHAR(20) NOT NULL,
CompanySite NVARCHAR(50) NOT NULL,
Telephone NVARCHAR(10) NOT NULL,
);

INSERT INTO Employer
VALUES ('test@mail.bg', 'abc', 'Nemetschek', 'Sofia 4km', 'BG123456789', 'IT', 'www.comanysite.com', '0879111111')
GO

SELECT * 
FROM Employer
GO

ALTER PROCEDURE InsertEmployer
@email NVARCHAR(40),
@CompanyPassword NVARCHAR(20),
@ComapnyName NVARCHAR(40),
@CompanyAddress NVARCHAR (50),
@EIK NVARCHAR(20),
@Sector NVARCHAR(20),
@CompanySite NVARCHAR (50),
@Telephone NVARCHAR(10)

AS
INSERT INTO Employer
VALUES(@email, @CompanyPassword, @ComapnyName, @CompanyAddress, @EIK, @Sector, @CompanySite, @Telephone)
GO

EXEC dbo.InsertEmployer 'company@abv.bg', 'abv123', 'VMware', 'Sofia', '45678954', 'IT', 'VMwareSitecom', '02111111'

SELECT * 
FROM Employer
GO


ALTER PROCEDURE UpdateEmployerPassword
@email NVARCHAR(20),
@CompanyPassword NVARCHAR(20)

AS
BEGIN
UPDATE dbo.Employer
	SET CompanyPassword = @CompanyPassword
	WHERE email = @email

END
GO

EXEC dbo.UpdateEmployerPassword "company@abv.bg", UpdatedPass
SELECT * 
FROM Employer
GO


ALTER PROCEDURE UpdateEmployerName
@email NVARCHAR(20),
@CompanyName NVARCHAR(40)

AS
BEGIN
UPDATE dbo.Employer
	SET CompanyName = @CompanyName
	WHERE email = @email

END
GO

EXEC dbo.UpdateEmployerName 'company@abv.bg', VMware_update
SELECT * 
FROM Employer
GO


ALTER PROCEDURE UpdateEmployerAddress
@email NVARCHAR(20),
@CompanyAddress NVARCHAR(20)

AS
BEGIN
UPDATE dbo.Employer
	SET CompanyAddress = @CompanyAddress
	WHERE email = @email

END
GO

EXEC dbo.UpdateEmployerAddress 'company@abv.bg', Sofia_up
SELECT * 
FROM Employer
GO


ALTER PROCEDURE UpdateEmployerEIK
@email NVARCHAR(20),
@EIK NVARCHAR(20)

AS
BEGIN
UPDATE dbo.Employer
	SET EIK = @EIK
	WHERE email = @email

END
GO

EXEC dbo.UpdateEmployerEIK 'company@abv.bg', BG45678954
SELECT * FROM Employer
GO


ALTER PROCEDURE UpdateEmployerSector
@email NVARCHAR(20),
@Sector NVARCHAR(20)

AS
BEGIN
UPDATE dbo.Employer
	SET Sector = @Sector
	WHERE email = @email

END
GO

EXEC dbo.UpdateEmployerSector 'company@abv.bg', IT_update
SELECT * 
FROM Employer
GO

ALTER PROCEDURE UpdateEmployerSite
@email NVARCHAR(20),
@CompanySite NVARCHAR(20)

AS
BEGIN
UPDATE dbo.Employer
	SET CompanySite = @CompanySite
	WHERE email = @email

END
GO

EXEC dbo.UpdateEmployerSite 'company@abv.bg', VMwareSiteUpdate
SELECT * 
FROM Employer
GO


ALTER PROCEDURE UpdateEmployerPhone
@email NVARCHAR(20),
@Telephone NVARCHAR(10)

AS
BEGIN
UPDATE dbo.Employer
	SET Telephone = @Telephone
	WHERE email = @email

END
GO

EXEC dbo.UpdateEmployerPhone 'company@abv.bg', 02333333
SELECT * 
FROM Employer
GO

-----------------------------------------
--------- Delete Employer

--ALTER PROCEDURE DeleteEmployer
--@email NVARCHAR(20)

--AS
--BEGIN
--DELETE dbo.Employer
--where email = @email
--END
--GO

--EXEC dbo.DeleteEmployer 'company@abv.bg'
--SELECT * FROM Employer
--GO
---------------------------------------
---


ALTER TABLE Employer
ADD advert NVARCHAR(4000)
GO

ALTER PROCEDURE AddTicket
@email NVARCHAR(20),
@advert NVARCHAR(4000)

AS 
BEGIN
UPDATE dbo.Employer
SET advert = @advert
WHERE email = @email
END
GO

EXEC dbo.AddTicket 'test@mail.bg', 'advertisemet 4000 signs'

SELECT * 
FROM Employer
GO

-----------------------------------------------
--- update advertisement

ALTER PROCEDURE UpdateAdert
@email NVARCHAR(20),
@advert NVARCHAR(4000)

AS
BEGIN
UPDATE dbo.Employer
	SET advert = @advert
	WHERE email = @email

END
GO

EXEC dbo.UpdateAdert 'test@mail.bg', 'updated advertisement 4000'

SELECT * 
FROM Employer
GO
----------------------------------------------------------------------
--- Advert

CREATE TABLE AdvertisementM (
advTitle NVARCHAR(40) NOT NULL,
advSector NVARCHAR(20) NOT NULL,
advPosition NVARCHAR(40) NOT NULL,
advTown NVARCHAR(20) NOT NULL,
advert NVARCHAR (4000) NOT NULL,
advBusyness NVARCHAR(20) NOT NULL,
advLevel NVARCHAR(20) NOT NULL,
email NVARCHAR(40) NOT NULL);

INSERT INTO AdvertisementM
VALUES ('Senior C# Developer', 'IT', 'Developer C#', 'Sofia', 'Long advertisement description', 'Full Time', 'Senior', 'test@mail.bg'),
       ('Senior C# Developer', 'IT', 'Developer C#', 'Sofia', 'This is advertisement description', 'Full Time', 'Junior', 'test@mail.bg')
GO

SELECT * 
FROM AdvertisementM
GO

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--- admin
DROP TABLE dbo.Administrator;

CREATE TABLE Administrator(
emailAdmin NVARCHAR(20)NOT NULL PRIMARY KEY,
AdminPassword NVARCHAR(20) NOT NULL,
SecretCode NVARCHAR(10),
);

INSERT INTO Administrator
VALUES ('admin@mail.bg', '0000', 'code123')
GO

SELECT * 
FROM Administrator
GO

ALTER PROCEDURE InsertAdmin
@emailAdmin NVARCHAR(20),
@AdminPassword NVARCHAR(20),
@SecretCode NVARCHAR(10)

AS
INSERT INTO Administrator
VALUES(@emailAdmin, @AdminPassword, @SecretCode)
GO

EXEC dbo.InsertAdmin 'admin@abv.bg','1111','code456'

SELECT * 
FROM Administrator
GO

-------------------------------------------------------
--- create view

ALTER VIEW CheckList 
AS
SELECT CompanyName 
FROM dbo.Employer
GROUP BY CompanyName
GO

SELECT *
FROM CheckList
GO

ALTER VIEW CheckList
AS
SELECT email, advert 
FROM dbo.AdvertisementM
GROUP BY email, advert
GO

SELECT *
FROM CheckList
GO