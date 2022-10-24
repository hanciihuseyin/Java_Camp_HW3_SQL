--select	
--ANSII
Select ContactName Adi, CompanyName Sirketadi, City Sehir from Customers

Select * from Customers where City = 'Berlin'

-- case insensitive
Select * from Products where CategoryID = 1 or CategoryID = 3

Select * from Products where CategoryID = 1 and UnitPrice > 10

select * from Products where CategoryID=1 order by UnitPrice desc    --ascending  --descending

select COUNT(*) from Products where CategoryID = 2

select CategoryID, count(*) from products where UnitPrice>20 group by CategoryID having count(*)<10

select products.ProductID, products.ProductName, Products.UnitPrice, Categories.CategoryName
from products inner join Categories on Products.CategoryID=categories.CategoryID
where Products.UnitPrice>10
-- DTO Data Transformation object

select * from Products p inner join  [Order Details] od
on p.ProductID = od.ProductID

select count(*) from [Order Details]

select * from Products p left join  [Order Details] od
on p.ProductID = od.ProductID


select * from Customers c  left join Orders o 
on c.CustomerID=o.CustomerID
where o.CustomerID is null