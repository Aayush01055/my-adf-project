-- Drop tables if they exist to allow for a clean re-run of the script
IF OBJECT_ID('dbo.Customer', 'U') IS NOT NULL
  DROP TABLE dbo.Customer;
GO

IF OBJECT_ID('dbo.Product', 'U') IS NOT NULL
  DROP TABLE dbo.Product;
GO

-- Create the Customer table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);
GO

-- Populate the Customer table
INSERT INTO Customer (CustomerID, FirstName, LastName, Email) VALUES
(101, 'Ana', 'Trujillo', 'ana.t@example.com'),
(250, 'Thomas', 'Hardy', 'thomas.h@example.com'),
(999, 'Hanna', 'Moos', 'hanna.m@example.com'),
(1001, 'Peter', 'Jones', '2022-05-20'),
(1580, 'Mary', 'Williams', '2022-08-01');
GO

-- Create the Product table
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2)
);
GO

-- Populate the Product table
INSERT INTO Product (ProductID, ProductName, Category, Price) VALUES
(101, 'Laptop Pro 15', 'Electronics', 1299.99),
(210, '4K Monitor', 'Electronics', 450.00);
GO
