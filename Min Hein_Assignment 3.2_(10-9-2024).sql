

select 
PurchaseOrderID,
OrderDate,
TotalDue
from
Purchasing.PurchaseOrderHeader where 
OrderDate between 2012-7-31 and 2012-6-1
and TotalDue > 10000


select 
GETDATE() as Today,
DATEADD(DAY,100, getdate()) as 'Date in 100Days'

select 
GETDATE() as Today,
DATEADD(MONTH,6, getdate()) as 'Date in 6 months'


select
OrderDate
from
Sales.SalesOrderHeader where
DATEDIFF(Day,OrderDate,'2011-9-19') <= 7
and Datediff(day,OrderDate,'2011-9-19') >= 0

select
OrderDate
from
Sales.SalesOrderHeader where
DATEDIFF(Day,OrderDate,'2011-9-19') between 0 and 7


select GETDATE(),
cast(dateadd(day,-1,getdate())as date) as yesterday


select DATEDIFF(DAY, GETDATE(), CAST(CONCAT(YEAR(GETDATE()), 
'-12-31') AS DATE)) AS DaysUntilEndOfYear


select 
Name, Color,
Weight
from
Production.Product
where ISNULL (Weight,0) < 10


select
Name,
ListPrice,
case 
	when ListPrice > 1000 then 'Premium'  
	when ListPrice  > 100 and ListPrice <= 1000 then 'Mid-Range' 
	when ListPrice < 100 then 'Value'
	else 'nothing'
end as 'Price Category'
from
Production.Product


select 
BusinessEntityID, HireDate, SalariedFlag,
case 
	WHEN SalariedFlag = 1 and DATEDIFF(Year, Hiredate, GETDATE()) >= 10 then 'Non-Exempt 10+ Year'
	WHEN SalariedFlag = 1 and DATEDIFF(Year, Hiredate, GETDATE()) < 10 then 'Non-Exempt <10 Year'
	WHEN SalariedFlag = 0 and DATEDIFF(Year, Hiredate, GETDATE()) >= 10 then 'Exempt 10+ Year'
	WHEN SalariedFlag = 0 and DATEDIFF(Year, Hiredate, GETDATE()) < 10 then 'Exempt <10 Year'
	else 'nothing'
end as 'Employee Tenure'
from
HumanResources.Employee







