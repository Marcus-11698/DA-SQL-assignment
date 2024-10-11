
Select LastName,
FirstName
from Person.Person
where FirstName like '%Mark%'


Select Top 100 
ListPrice From
Production.Product where
ListPrice Like '<> 0.00'


Select * from
HumanResources.vEmployee 
where LastName > 'D'


Select * from
Person.StateProvince
where CountryRegionCode = 'CA'


Select 
FirstName as 'Customer First Name',
LastName as 'Customer Last Name'
 from Sales.vIndividualCustomer


 select * from
 Sales.vIndividualCustomer where
 CountryRegionName = 'Australia' 
 or PhoneNumberType = 'Cell' 
 and EmailPromotion = '0'


select * from
HumanResources.vEmployeeDepartment
where Department in 
('Executive', 'Tool Design', 'Engineering')

select * from
HumanResources.vEmployeeDepartment
where Department = 'Executive'or 
Department = 'Tool Design' or 
Department ='Engineering'


Select StartDate from
HumanResources.vEmployeeDepartment
where StartDate between '1990-07-01' and
'1991-06-30'

Select StartDate from
HumanResources.vEmployeeDepartment
where StartDate >= '1990-07-01' and
StartDate <= '1991-06-30'


Select LastName
from Sales.vIndividualCustomer where
LastName like 'R%'

Select LastName
from Sales.vIndividualCustomer where
LastName like '%R'


Select FirstName,
LastName
from Sales.vIndividualCustomer where
LastName like '%Lopez%' or 
LastName like '%Martin%' or
LastName like '%Wood%' and
FirstName like '[C-L]%'


SELECT * FROM 
Sales.SalesOrderHeader
WHERE SalesPersonID IS NOT NULL


select SalesPersonID,
TotalDue from 
Sales.SalesOrderHeader 
where SalesPersonID is not null
and TotalDue > 70000





















