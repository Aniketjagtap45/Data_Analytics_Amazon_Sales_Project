select * from amazon_sales.amazon_sales_data_2025;
select * from amazon_sales.amazon_sales_data_2025 where Category="Footwear";
select * from amazon_sales.amazon_sales_data_2025 group by Category and Product;
SELECT sum("Total Sales") 
FROM amazon_sales.amazon_sales_data_2025 group by Category,Product;
SELECT 
  Category, 
  Product, 
  COUNT(*) AS Total_Orders
FROM amazon_sales.amazon_sales_data_2025
GROUP BY Category, Product;
select * from amazon_sales.amazon_sales_data_2025 where Category="Electronics" and Product="Headphones";
select * from amazon_sales.amazon_sales_data_2025 where "Customer Name" like "%ns%";
select * from amazon_sales.amazon_sales_data_2025 order by Category desc;
select * from amazon_sales.amazon_sales_data_2025 where Price between 600 and 1200;
select * from amazon_sales.amazon_sales_data_2025 where Status in ("Cancelled","Pending") and Category not in ("Electronics","Footwear");
select concat(Product,"-",Quantity) as Product_Details from amazon_sales.amazon_sales_data_2025;
select upper(Product) as Capital_Product from amazon_sales.amazon_sales_data_2025;
select lower(Product) as small_Product from amazon_sales.amazon_sales_data_2025;
select left(Category,4) as Short_Product from amazon_sales.amazon_sales_data_2025;
-- right()
-- mid()
select sum(Quantity) from amazon_sales.amazon_sales_data_2025;
-- count()
-- min()
-- max()
-- avg()
select truncate(Price,2) as amount from amazon_sales.amazon_sales_data_2025;
select ceil(Price) as amount from amazon_sales.amazon_sales_data_2025;
select floor(Price) as amount from amazon_sales.amazon_sales_data_2025;
-- select datediff(shippedDate,orderDate) as dates from classicmodels.orders;
select Product, Quantity,
case
	when Quantity < 5 then "Need to work on marketing and sales"
    else "Target Achieved. Good Sale"
end as Product_Sales_Status
from amazon_sales.amazon_sales_data_2025;

-- Group by clause
select Category, Product, sum(price) from amazon_sales.amazon_sales_data_2025 group by Category, Product;
select Category, Product, sum(price) from amazon_sales.amazon_sales_data_2025 group by Category, Product having sum(price) > 2000;

-- Joins
-- select products.productName, sum(orderdetails.quantityOrdered) from products inner join orderdetais on products.productCode=orderdetails.productCode;
-- select products.productName, sum(orderdetails.quantityOrdered) from products inner join orderdetais on products.productCode=orderdetails.productCode group by products.productName;
-- select products.productName, orderdetails.quantityOrdered from products left join orderdetails on products.productCode=orderdetails.productCode;
-- select products.productName, products.quantityInStock, orderdetails.quantityOrdered from products cross join orderdetails on products.productCode=orderdetails.productCode;

-- Sets Operations
-- select firstname,department from Employee2 union select firstname, department from Employee1;
-- select firstname,department from Employee2 intersect select firstname, department from Employee1;
-- select firstname,department from Employee2 where firstname in (select firstname from Employee1);
-- select * from Employee1 except select * from Employee2;

-- SubQuery
-- select employee1.FirstName,employee1.department from employeedb.employee1 where employee1.FirstName not in (select employee2.firstname from employeedb.employee2);

-- Views
-- create view count_of_customers as select country,count(customerNumber) from classicmodels.customers group by country; 

-- stored procedure
-- Delimiter &&
-- create procedure get_data(in var int)
-- begin
-- 		select * from classicmodels.customers limit var;
-- end &&
-- Delimiter;
-- call clasicmodels.get_data(3)

-- Window function
-- select FirstName,Occupation,EducationLevel, TotalChildren,sum(TotalChildren) over (partition by occupation order by EducationLevel) from customers_data;
-- select FirstName Occupation,EducationLevel,TotalChildren,dense_rank()