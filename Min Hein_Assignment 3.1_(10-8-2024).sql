

select 
FirstName+ ' '+
LastName+ ' '+
PersonType as 'Person Title'
from 
Person.Person


select
BusinessEntityID, VacationHours,
SickLeaveHours,
(VacationHours + SickLeaveHours) as 'Total Time Off'
from
HumanResources.Employee where SalariedFlag = 0 
order by [Total Time Off] asc


Select
BusinessEntityID, Rate,
PayFrequency
from
HumanResources.EmployeePayHistory

SELECT 
BusinessEntityID, PayFrequency,
Rate, 
(Rate * 
	CASE 
	WHEN PayFrequency = 1 THEN 40
	WHEN PayFrequency = 2 THEN 80
	ELSE 0 
END) AS "Amount Per Paycheck"
FROM HumanResources.EmployeePayHistory


select
CardNumber,
Right(CardNumber,4) as 'Last Four Digits'
from 
Sales.CreditCard


select
ReviewerName,
Comments,
REPLACE(Comments,',','') as 'Cleaned Comments'
from
Production.ProductReview


select 
FirstName,
LastName
from
Person.Person where len(LastName) >= 10 order by FirstName ASC


SELECT 
FirstName,
LastName,
LEFT(FirstName, 1)+ '-'+ LEFT(LastName, 3) AS Nickname
FROM 
Person.Person



select
ReviewerName,
Comments,
Replace(REPLACE(Comments,',',''),'.','') as 'Cleaned Comments'
from
Production.ProductReview


select 
getdate()

select 
month(getdate())

select 
year(getdate())









