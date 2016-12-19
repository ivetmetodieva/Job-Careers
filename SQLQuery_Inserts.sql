USE JobsBG;

INSERT INTO Employer
VALUES ('test@mail.bg', 'abc1', 'Nemetschek', 'Sofia 4km', 'BG123456789', 'IT', 'www.comanysite.com', 'something about the company')
GO

INSERT INTO AdvertisementM
VALUES ('Senior C# Developer', 'IT', 'Developer C#', 'Sofia', 'Long advertisement description', 'Full Time', 'Senior', 'test@mail.bg'),
       ('Senior C# Developer', 'IT', 'Developer C++', 'Sofia', 'This is advertisement description', 'Full Time', 'Junior', 'test@mail.bg')
GO

INSERT INTO Administrator
VALUES ('admin@mail.bg', '0000', 'code123')
GO

INSERT INTO Employee
VALUES ('stavri@mail.bg', 'Stavri', '0000', 'HighSchool', 'NBU', 'SBTech1', 'SBTech2', 'SBTech3', 'English', '23', 'Sofia', 'I want to'),
       ('gertruda@mail.bg', 'Gertruda', '1111', 'HighSchool', 'NBU', 'VMware', '', '', 'English', '26', 'Sofia', '')
GO


SELECT * 
FROM Employer
GO

SELECT * 
FROM AdvertisementM
GO

SELECT * 
FROM Administrator
GO

SELECT * 
FROM Employee
GO










