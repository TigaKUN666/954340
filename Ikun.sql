use w3schools;
select * from orders
where OrderDate BETWEEN "1996-11-01" AND "1996-11-30";

select * from shippers where
ShipperID in
(select ShipperID from orders where OrderDate BETWEEN '1996-11-01' AND '1996-11-30')

use w3schools;
select EmployeeID,count(OrderID),sum(Quantity*Price) as Total
from orders join order_details using(OrderID) join products using(ProductID)
group by EmployeeID
Order by Total desc
LIMIT 10;

use w3schools;
select * from orders where
OrderID in
(select OrderID from order_details
WHERE ProductID in
(select ProductID from products
WHERE SupplierID in
(select SupplierID from suppliers
WHERE SupplierName = "Tokyo Traders")));


