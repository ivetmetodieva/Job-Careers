DROP TABLE Employer;

CREATE TABLE Employer(
email NVARCHAR(20)NOT NULL PRIMARY KEY,
CompanyPassword NVARCHAR(20) NOT NULL,
CompanyName NVARCHAR(40) NOT NULL,
CompanyAddress NVARCHAR(50)NOT NULL,
EIK NVARCHAR(20)NOT NULL,
Sector NVARCHAR(20) NOT NULL,
CompanySite NVARCHAR(50) NOT NULL,
History NVARCHAR(400),
);

INSERT INTO Employer
VALUES ('test@mail.bg', 'abc', 'Nemetschek', 'Sofia 4km', 'BG123456789', 'IT', 'www.comanysite.com', 'something about the company')
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
@History NVARCHAR(400)
AS
INSERT INTO Employer
VALUES
(@email, @CompanyPassword, @ComapnyName, @CompanyAddress, @EIK, @Sector, @CompanySite, @History)
GO

EXEC dbo.InsertEmployer 'company@abv.bg', 'abv123', 'VMware', 'Sofia', '45678954', 'IT', 'VMwareSitecom', 'company information'

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

EXEC dbo.UpdateEmployerPassword 'company@abv.bg', UpdatedPass
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


ALTER PROCEDURE UpdateEmployerHistory
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


ALTER PROCEDURE DeleteEmployer
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

---------------------------------------
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

-------
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
---------------------------------------
--- Advert table
DROP TABLE AdvertisementM;

CREATE TABLE AdvertisementM(
advTitle NVARCHAR(40) NOT NULL,
advSalary NVARCHAR(5),
advPosition NVARCHAR(40),
advTown NVARCHAR(20),
advert NVARCHAR (4000) NOT NULL,
advBusyness NVARCHAR(20),
advLevel NVARCHAR(20) NOT NULL,
email NVARCHAR(40),
IsApproved NVARCHAR (3) NOT NULL,
);

INSERT INTO AdvertisementM
VALUES ('Senior C# Developer', '3000', 'Developer C#', 'Sofia', 'Long advertisement description', 'Full Time', 'Senior', 'test@mail.bg', 'yes', '1'),
       ('Senior C# Developer', '2500', 'Developer C++', 'Sofia', 'This is advertisement description', 'Full Time', 'Junior', 'test@mail.bg', 'no', '2')
GO

SELECT * 
FROM AdvertisementM
GO




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

ALTER VIEW CheckIsApproved
AS
SELECT email, advert, IsApproved
FROM dbo.AdvertisementM
WHERE IsApproved = 'yes'
GROUP BY email, advert, IsApproved
GO
SELECT * FROM CheckIsApproved
GO


ALTER PROCEDURE DeleteAdvert
@email NVARCHAR(20),
@P_ID int
AS
BEGIN
DELETE dbo.AdvertisementM
where email = @email and P_ID = @P_ID
END
GO
EXEC dbo.DeleteAdvert 'test@mail.bg', '1'
SELECT * FROM AdvertisementM
GO

-------------------------
--- Employee
DROP TABLE Employee;

CREATE TABLE Employee(
e_mail NVARCHAR(40) NOT NULL PRIMARY KEY,
name NVARCHAR(40) NOT NULL,
UserPassword NVARCHAR(40) NOT NULL,
HighSchool NVARCHAR(40) NOT NULL,
University NVARCHAR(40) NOT NULL,
PreviousWork1 NVARCHAR(40),
PreviousWork2 NVARCHAR(40),
PreviousWork3 NVARCHAR(40),
ForeignLanguage NVARCHAR(20),
Age NVARCHAR(2) NOT NULL,
UserAddress NVARCHAR (40) NOT NULL,
WhyQuestion NVARCHAR (50),
);

INSERT INTO Employee
VALUES ('stavri@mail.bg', 'Stavri', '0000', 'HighSchool', 'NBU', 'SBTech1', 'SBTech2', 'SBTech3', 'English', '23', 'Sofia', 'I want to'),
       ('gertruda@mail.bg', 'Gertruda', '1111', 'HighSchool', 'NBU', 'VMware', '', '', 'English', '26', 'Sofia', '')
GO

SELECT * 
FROM Employee
GO


ALTER PROCEDURE InsertEmployee
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



ALTER PROCEDURE DeleteEmployee
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

ALTER PROCEDURE UpdateHighSchool
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
ALTER PROCEDURE UpdateUniversity
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
ALTER PROCEDURE UpdatePreviousWork1
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
ALTER PROCEDURE UpdatePreviousWork2
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
ALTER PROCEDURE UpdatePreviousWork3
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
ALTER PROCEDURE UpdateForeignLanguage
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

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--- admin


DROP TABLE Administrator;

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


--ALTER PROCEDURE DeleteAdmin
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
