-- MS SQL (SQL Server 2016 SP1 trở lên): tạo mới hoặc cập nhật view
CREATE OR ALTER VIEW [dbo].[UsrVwContactAgeDays]
AS
SELECT Id AS UsrId, Name AS UsrName, BirthDate AS UsrBirthDate,
       DATEDIFF(day, BirthDate, GETDATE()) AS UsrAgeDays
FROM Contact
GO
