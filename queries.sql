-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT productid, productname, categoryname
FROM product p
JOIN categories c
    ON p.categoryid = c.categoryid;
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT id, companyname
FROM 'order' as o
JOIN 'shipper' as s
    ON o.shipvia = s.id
WHERE o.orderdate < '2012-08-09';
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT orderid, productname, quantity
FROM orderdetail o
JOIN product p
    ON o.productid = p.id
where o.orderid = 10251;
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o.id, companyname, lastname
FROM 'order' as o
JOIN customer as c
    ON o.customerid = c.id
JOIN employee as e 
    ON o.employeeid = e.id;