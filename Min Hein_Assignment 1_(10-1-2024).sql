select 
NationalIDNumber
from HumanResources.Employee


select 
NationalIDNumber,
JobTitle
from HumanResources.Employee


select Top 20 PERCENT
NationalIDNumber,
JobTitle,
BirthDate
from HumanResources.Employee


select Top 500
NationalIDNumber as 'SSN',
JobTitle as 'Job Title',
BirthDate
from HumanResources.Employee


Select * from
Sales.SalesOrderHeader


Select Top 50 percent
* from Sales.Customer


Select 
Name as "Product's Name"
from 
Production.vProductAndDescription


Select Top 400 
* from HumanResources.Department


Select * from 
Production.BillOfMaterials


Select Top 1500 * from
Sales.vPersonDemographics