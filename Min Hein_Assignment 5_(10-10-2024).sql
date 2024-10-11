


select 
PP.ProductID,
PP.Name as 'Product Name',
PP.ListPrice,
PSC.Name as 'Product Sub Category',
PC.Name as 'Product Category'
from
Production.Product PP
inner join Production.ProductSubcategory PSC on
PSC.ProductCategoryID = PP.ProductID
inner join Production.ProductCategory PC on
PC.ProductCategoryID = PSC.ProductCategoryID











select 
PP.ProductID,
PP.Name as 'Product Name',
PP.ListPrice,
Rank () Over (Order by PP.ListPrice desc) AS 'Price Rank',
PSC.Name as 'Product Sub Category',
PC.Name as 'Product Category'
from
Production.Product PP
inner join Production.ProductSubcategory PSC on
PSC.ProductCategoryID = PP.ProductID
inner join Production.ProductCategory PC on
PC.ProductCategoryID = PSC.ProductCategoryID
order by 'Price Rank' desc












select 
PP.ProductID,
PP.Name as 'Product Name',
PP.ListPrice,
Rank () Over (Order by PP.ListPrice desc) AS 'Price Rank',
Rank () Over (Partition by PC.Name Order by PP.ListPrice desc) AS 'Category Price Rank',
PSC.Name as 'Product Sub Category',
PC.Name as 'Product Category'
from
Production.Product PP
inner join Production.ProductSubcategory PSC on
PSC.ProductCategoryID = PP.ProductID
inner join Production.ProductCategory PC on
PC.ProductCategoryID = PSC.ProductCategoryID
order by 'Price Rank' desc











select 
PP.ProductID,
PP.Name as 'Product Name',
PP.ListPrice,
Rank () Over (Order by PP.ListPrice desc) AS 'Price Rank',
Rank () Over (Partition by PC.Name Order by PP.ListPrice desc) AS 'Category Price Rank',
case 
	when Rank () Over (Partition by PC.Name Order by PP.ListPrice desc) <= 5 then 'Yes'
	else 'No'
	end as 'Top 5 Price in Category',
PSC.Name as 'Product Sub Category',
PC.Name as 'Product Category'
from
Production.Product PP
inner join Production.ProductSubcategory PSC on
PSC.ProductCategoryID = PP.ProductID
inner join Production.ProductCategory PC on
PC.ProductCategoryID = PSC.ProductCategoryID
order by 'Price Rank' desc












select 
PP.ProductID,
PP.Name as 'Product Name',
PP.ListPrice,
Rank () Over (Order by PP.ListPrice desc) AS 'Price Rank',
Rank () Over (Partition by PC.Name Order by PP.ListPrice desc) AS 'Category Price Rank',
Row_Number () Over (Partition by PC.Name Order by PP.ListPrice desc) as 'Category Price Rank with Rnak',
case 
	when Rank () Over (Partition by PC.Name Order by PP.ListPrice desc) <= 5 then 'Yes'
	else 'No'
	end as 'Top 5 Price in Category',
PSC.Name as 'Product Sub Category',
PC.Name as 'Product Category'
from
Production.Product PP
inner join Production.ProductSubcategory PSC on
PSC.ProductCategoryID = PP.ProductID
inner join Production.ProductCategory PC on
PC.ProductCategoryID = PSC.ProductCategoryID
order by 'Price Rank' desc












select 
PP.ProductID,
PP.Name as 'Product Name',
PP.ListPrice,
Rank () Over (Order by PP.ListPrice desc) AS 'Price Rank',
Rank () Over (Partition by PC.Name Order by PP.ListPrice desc) AS 'Category Price Rank',
Row_Number () Over (Partition by PC.Name Order by PP.ListPrice desc) as 'Category Price Rank with Rnak',
Dense_Rank () Over (Partition by PC.Name Order by PP.ListPrice DESC) as 'Category Price Rank With Dense Rank',
case 
	when Rank () Over (Partition by PC.Name Order by PP.ListPrice desc) <= 5 then 'Yes'
	else 'No'
	end as 'Top 5 Price in Category',
PSC.Name as 'Product Sub Category',
PC.Name as 'Product Category'
from
Production.Product PP
inner join Production.ProductSubcategory PSC on
PSC.ProductCategoryID = PP.ProductID
inner join Production.ProductCategory PC on
PC.ProductCategoryID = PSC.ProductCategoryID
order by 'Price Rank' desc












------ Dense Rank is the best to clasify the Top 5 Price in Category -------
------ According to this Question --------
select 
PP.ProductID,
PP.Name as 'Product Name',
PP.ListPrice,
Dense_Rank () Over (Partition by PC.Name Order by PP.ListPrice DESC) as 'Category Price Rank With Dense Rank',
case 
	when Rank () Over (Partition by PC.Name Order by PP.ListPrice desc) <= 5 then 'Yes'
	else 'No'
	end as 'Top 5 Price in Category',
PSC.Name as 'Product Sub Category',
PC.Name as 'Product Category'
from
Production.Product PP
inner join Production.ProductSubcategory PSC on
PSC.ProductCategoryID = PP.ProductID
inner join Production.ProductCategory PC on
PC.ProductCategoryID = PSC.ProductCategoryID











select 
POH.PurchaseOrderID,
POH.OrderDate,
POH.TotalDue, 
PV.Name as 'Vendor Name'
from 
Purchasing.PurchaseOrderHeader POH join
Purchasing.Vendor PV on PV.BusinessEntityID = POH.VendorID
where POH.TotalDue > 500 and POH.OrderDate >= '2013-01-01' 












select 
POH.PurchaseOrderID,
POH.OrderDate,
POH.TotalDue,
LAG	(POH.TotalDue) Over (partition by POH.VendorID order by POH.OrderDate) 
as 'Prev Order From Vendor Amt', 
PV.Name as 'Vendor Name'
from 
Purchasing.PurchaseOrderHeader POH join
Purchasing.Vendor PV on PV.BusinessEntityID = POH.VendorID
where POH.TotalDue > 500 and POH.OrderDate >= '2013-01-01' 
order by POH.VendorID, POH.OrderDate














select 
POH.PurchaseOrderID,
POH.OrderDate,
POH.TotalDue,
LAG	(POH.TotalDue) Over (partition by POH.VendorID order by POH.OrderDate) 
as 'Prev Order From Vendor Amt', 
LEAD (POH.TotalDue) Over (partition by POH.vendorID order by POH.OrderDate)
as 'Next Order by Employee Vendor',
PV.Name as 'Vendor Name'
from 
Purchasing.PurchaseOrderHeader POH join
Purchasing.Vendor PV on PV.BusinessEntityID = POH.VendorID
where POH.TotalDue > 500 and POH.OrderDate >= '2013-01-01' 
order by POH.VendorID, POH.OrderDate














select 
POH.PurchaseOrderID,
POH.OrderDate,
POH.TotalDue,
LAG	(POH.TotalDue) Over (partition by POH.VendorID order by POH.OrderDate) 
as 'Prev Order From Vendor Amt', 
LEAD (PV.Name,2) Over (partition by POH.vendorID order by POH.OrderDate)
as 'Next Order by Employee Vendor',
PV.Name as 'Vendor Name'
from 
Purchasing.PurchaseOrderHeader POH join
Purchasing.Vendor PV on PV.BusinessEntityID = POH.VendorID
where POH.TotalDue > 500 and POH.OrderDate >= '2013-01-01' 
order by POH.VendorID, POH.OrderDate













select 
BusinessEntityID,
JobTitle,
VacationHours,
MAX(VacationHours) Over () as 'Max Vacation Hours'
from
HumanResources.Employee









