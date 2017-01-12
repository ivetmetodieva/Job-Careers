CREATE PROCEDURE InsertEmployer
@email NVARCHAR(40),
@CompanyPassword NVARCHAR(20),
@ComapnyName NVARCHAR(40),
@CompanyAddress NVARCHAR (50),
@EIK NVARCHAR(20),
@Sector NVARCHAR(20),
@CompanySite NVARCHAR (50),
@History NVARCHAR(400)
AS
INSERT INTO Employer
VALUES
(@email, @CompanyPassword, @ComapnyName, @CompanyAddress, @EIK, @Sector, @CompanySite, @History)
GO
EXEC dbo.InsertEmployer 'company@abv.bg', 'abv123', 'VMware', 'Sofia', '45678954', 'IT', 'VMwareSitecom', 'company information'
SELECT * FROM Employer
GO


CREATE PROCEDURE UpdateEmployerPassword
@email NVARCHAR(20),
@CompanyPassword NVARCHAR(20)
AS
BEGIN
UPDATE dbo.Employer
	SET CompanyPassword = @CompanyPassword
	WHERE email = @email
END
GO
EXEC dbo.UpdateEmployerPassword 'company@abv.bg', UpdatedPass
SELECT * FROM Employer
GO


CREATE PROCEDURE UpdateEmployerName
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
SELECT * FROM Employer
GO


CREATE PROCEDURE UpdateEmployerAddress
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
SELECT * FROM Employer
GO

CREATE PROCEDURE UpdateEmployerEIK
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


CREATE PROCEDURE UpdateEmployerSector
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
SELECT * FROM Employer
GO


CREATE PROCEDURE UpdateEmployerSite
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
SELECT * FROM Employer
GO


CREATE PROCEDURE UpdateEmployerHistory
@email NVARCHAR(20),
@History NVARCHAR(400)
AS
BEGIN
UPDATE dbo.Employer
	SET History = @History
	WHERE email = @email
END
GO
EXEC dbo.UpdateEmployerHistory 'company@abv.bg', 'updated message'
SELECT * 
FROM Employer
GO

CREATE PROCEDURE DeleteEmployer
@email NVARCHAR(20)
AS
BEGIN
DELETE dbo.Employer
where email = @email
END
GO
EXEC dbo.DeleteEmployer 'company@abv.bg'
SELECT * FROM Employer
GO



ALTER TABLE Employer
ADD advert NVARCHAR(4000)
GO

CREATE PROCEDURE AddTicket
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
SELECT * FROM Employer
GO
-------------------------------------------------
CREATE PROCEDURE UpdateAdert
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
SELECT * FROM Employer
GO



CREATE PROCEDURE InsertAdmin
@emailAdmin NVARCHAR(20),
@AdminPassword NVARCHAR(20),
@SecretCode NVARCHAR(10)
AS
INSERT INTO Administrator
VALUES(@emailAdmin, @AdminPassword, @SecretCode)
GO
EXEC dbo.InsertAdmin 'admin@abv.bg','1111','code456'
SELECT * FROM Administrator
GO


--CREATE PROCEDURE DeleteAdmin
--@emailAdmin NVARCHAR(20)

--AS
--BEGIN
--DELETE dbo.Administrator
--where emailAdmin = @emailAdmin
--END
--GO

--EXEC dbo.DeleteAdmin 'admin@mail.bg'
--SELECT * FROM Administrator
--GO

------------------------------------------

CREATE VIEW CheckList 
AS
SELECT CompanyName 
FROM dbo.Employer
GROUP BY CompanyName
GO
SELECT * FROM CheckList
GO


CREATE VIEW CheckIsApproved
AS
SELECT email, advert, IsApproved
FROM dbo.AdvertisementM
WHERE IsApproved = 'yes'
GROUP BY email, advert, IsApproved
GO
SELECT * FROM CheckIsApproved
GO

----------------------------------------------
CREATE PROCEDURE DeleteAdvert
@email NVARCHAR(20),
@advPosition NVARCHAR(40)
AS
BEGIN
DELETE dbo.AdvertisementM
where email = @email and advPosition = @advPosition
END
GO
EXEC dbo.DeleteAdvert 'test@mail.bg', 'Developer c#'
SELECT * FROM AdvertisementM
GO


CREATE PROCEDURE InsertEmployee
@e_mail NVARCHAR(40),
@name NVARCHAR(40),
@UserPassword NVARCHAR(40),
@HighSchool NVARCHAR(40),
@University NVARCHAR(40),
@PreviousWork1 NVARCHAR(40),
@PreviousWork2 NVARCHAR(40),
@PreviousWork3 NVARCHAR(40),
@ForeignLanguage NVARCHAR(20),
@Age NVARCHAR(2),
@UserAddress NVARCHAR (40),
@WhyQuestion NVARCHAR (50)

AS
INSERT INTO Employee
VALUES(@e_mail, @name, @UserPassword, @HighSchool, @University, @PreviousWork1, @PreviousWork2, @PreviousWork3, @ForeignLanguage, @Age, @UserAddress, @WhyQuestion)
GO
EXEC InsertEmployee 'berta@mail.bg', 'Berta', '7777', 'HighSchool', 'NBU', 'OpenCode', '', '', '', '26', 'Sofia', 'I want to participate because'
SELECT * 
FROM Employee
GO


CREATE PROCEDURE DeleteEmployee
@e_mail NVARCHAR(40)

AS
BEGIN
DELETE dbo.Employee
where e_mail = @e_mail
END
GO

EXEC dbo.DeleteEmployee 'gertruda@mail.bg'
SELECT * FROM Employee
GO

-------

CREATE PROCEDURE UpdateHighSchool
@e_mail NVARCHAR(40),
@HighSchool NVARCHAR(40)

AS
BEGIN
UPDATE dbo.Employee
	SET HighSchool = @HighSchool
	WHERE e_mail = @e_mail

END
GO

EXEC dbo.UpdateHighSchool 'berta@mail.bg', HighSchool_update

SELECT * 
FROM Employee
GO

----------
CREATE PROCEDURE UpdateUniversity
@e_mail NVARCHAR(40),
@University NVARCHAR(40)

AS
BEGIN
UPDATE Employee
	SET University = @University
	WHERE e_mail = @e_mail

END
GO

EXEC UpdateUniversity 'berta@mail.bg', HighSchool_update

SELECT * 
FROM Employee
GO

-------
CREATE PROCEDURE UpdatePreviousWork1
@e_mail NVARCHAR(40),
@PreviousWork1 NVARCHAR(40)

AS
BEGIN
UPDATE dbo.Employee
	SET PreviousWork1 = @PreviousWork1
	WHERE e_mail = @e_mail

END
GO

EXEC dbo.UpdatePreviousWork1 'stavri@mail.bg', SBTech1_up

SELECT * 
FROM Employee
GO

------
CREATE PROCEDURE UpdatePreviousWork2
@e_mail NVARCHAR(40),
@PreviousWork2 NVARCHAR(40)

AS
BEGIN
UPDATE dbo.Employee
	SET PreviousWork2 = @PreviousWork2
	WHERE e_mail = @e_mail

END
GO

EXEC dbo.UpdatePreviousWork2 'stavri@mail.bg', SBTech2_up

SELECT * 
FROM Employee
GO

------
CREATE PROCEDURE UpdatePreviousWork3
@e_mail NVARCHAR(40),
@PreviousWork3 NVARCHAR(40)

AS
BEGIN
UPDATE dbo.Employee
	SET PreviousWork3 = @PreviousWork3
	WHERE e_mail = @e_mail

END
GO

EXEC dbo.UpdatePreviousWork3 'stavri@mail.bg', SBTech3_up

SELECT * 
FROM Employee
GO


---------------------------
CREATE PROCEDURE UpdateForeignLanguage
@e_mail NVARCHAR(40),
@ForeignLanguage NVARCHAR(40)

AS
BEGIN
UPDATE dbo.Employee
	SET ForeignLanguage = @ForeignLanguage
	WHERE e_mail = @e_mail

END
GO

EXEC dbo.UpdateForeignLanguage 'stavri@mail.bg', Deutsch

SELECT * 
FROM Employee
GO


ALTER VIEW CheckList
AS
SELECT e_mail, name, UserPassword, HighSchool, University, PreviousWork1, PreviousWork2, PreviousWork3, ForeignLanguage, Age, UserAddress, WhyQuestion
FROM dbo.Employee
GROUP BY e_mail, name, UserPassword, HighSchool, University, PreviousWork1, PreviousWork2, PreviousWork3, ForeignLanguage, Age, UserAddress, WhyQuestion
GO

SELECT *
FROM CheckList
GO
