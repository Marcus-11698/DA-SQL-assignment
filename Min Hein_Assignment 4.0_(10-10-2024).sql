



select 
PP.FirstName,
PP.LastName,
PW.PasswordHash
from
Person.Person PP inner join 
Person.Password PW 
on PW.BusinessEntityID =PP.BusinessEntityID


select
HE.NationalIDNumber,
HE.JobTitle,
EDH.DepartmentID,
EDH.StartDate,
EDH.EndDate
from
HumanResources.Employee HE inner join
HumanResources.EmployeeDepartmentHistory EDH 
on EDH.BusinessEntityID = HE.BusinessEntityID 
-------- total row return 296


select 
PP.FirstName,
PP.LastName,
PEA.EmailAddress,
PW.PasswordHash
from
Person.Person PP inner join 
Person.Password PW 
on PW.BusinessEntityID =PP.BusinessEntityID 
inner join Person.EmailAddress PEA 
on PEA.BusinessEntityID = PW.BusinessEntityID






