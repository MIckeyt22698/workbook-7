SELECT * FROM northwind.suppliers;
INSERT INTO Suppliers (
    CompanyName,
    ContactName,
    ContactTitle,
    Address,
    City,
    Region,
    PostalCode,
    Country,
    Phone,
    Fax,
    HomePage
)
VALUES (
    'New Supplier Co.',       -- CompanyName
    'John Doe',               -- ContactName
    'Purchasing Manager',     -- ContactTitle
    '123 Main St',            -- Address
    'Anytown',                -- City
    'NC',                     -- Region 
    '12345',                  -- PostalCode
    'USA',                    -- Country
    '(555) 123-4567',         -- Phone
    '(555) 123-4568',         -- Fax 
    'http://www.newsupplierco.com' -- HomePage 
);

SELECT SupplierID
FROM Suppliers
WHERE CompanyName = 'New Supplier Co.';
INSERT INTO Products (
    ProductName,
    SupplierID,
    CategoryID,       
    QuantityPerUnit,
    UnitPrice,
    UnitsInStock,
    UnitsOnOrder,
    ReorderLevel,
    Discontinued
)
VALUES (
    'Mickeys Tea',        -- ProductName 
    30,                   -- SupplierID 
    1,                    -- CategoryID 
    '10 boxes x 12 units',-- QuantityPerUnit
    29.99,                -- UnitPrice
    100,                  -- UnitsInStock
    0,                    -- UnitsOnOrder
    10,                   -- ReorderLevel
    0                     -- Discontinued (0 for False/No, 1 for True/Yes)
);

SELECT
    Products.ProductID,
    Products.ProductName,
    Products.UnitPrice, 
    Suppliers.CompanyName AS SupplierName 
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
ORDER BY Products.ProductName; 

UPDATE Products
SET UnitPrice = UnitPrice * 1.15
WHERE ProductName = 'Mickeys Tea';

SELECT Products.ProductName, Products.UnitPrice
FROM Products
WHERE Products.SupplierID = 30;

DELETE FROM Products
WHERE ProductName = 'Mickeys Tea';

DELETE FROM Suppliers
WHERE CompanyName = 'New Supplier Co.';

SELECT * FROM Products;

Select * FROM suppliers



