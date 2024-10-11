

Select
FirstName as 'First Name',
LastName as 'Last Name',
JobTitle as 'Job Title'
from
HumanResources.vEmployeeDepartment 
order by FirstName asc, [Last Name] desc


Select
FirstName as 'First Name',
LastName as 'Last Name',
CountryRegionName as 'Region Name'
from
Sales.vIndividualCustomer
ORDER BY CountryRegionName asc


Select
FirstName as 'First Name',
LastName as 'Last Name',
CountryRegionName as 'Region Name' 
from
Sales.vIndividualCustomer
where CountryRegionName <> 'United States' 
and CountryRegionName <> 'France'
order by CountryRegionName asc



Select 
Name,
AnnualSales as ' Annual Sales',
YearOpened as 'Opened Year',
SquareFeet as 'Store Size',
NumberEmployees as 'Total Employees'
from
Sales.vStoreWithDemographics 
where AnnualRevenue < 1000000 and
NumberEmployees >= 45 order by [Store Size],
[Total Employees] desc



















