USE [globex]
GO

INSERT INTO [dbo].[PayBand]
    ([MonthlySalary]
    ,[AnnualBonus])
VALUES
    (2010.74, 500.00),
    (2950.00, 1000.00),
    (3822.50, 2500.00),
    (5000.00, 4750.00),
    (6525.00, 9950.00),
    (8333.66, 12500.00),
    (10536.08, 19100.00)
GO

BULK INSERT [Supplier]
FROM '/data/Supplier.csv'
WITH (
    FIRSTROW=2,
    FORMAT = 'CSV'
)
GO

BULK INSERT [Product]
FROM '/data/Product.csv'
WITH (
    FIRSTROW=2,
    FORMAT = 'CSV'
)
GO

BULK INSERT [Stock]
FROM '/data/Stock.csv'
WITH (
    FIRSTROW=2,
    FORMAT = 'CSV'
)
GO

BULK INSERT [Order]
FROM '/data/Order.csv'
WITH (
    FIRSTROW=2,
    FORMAT = 'CSV'
)
GO

BULK INSERT [Sale]
FROM '/data/Sale.csv'
WITH (
    FIRSTROW=2,
    FORMAT = 'CSV'
)
GO

BULK INSERT [User]
FROM '/data/User.csv'
WITH (
    FIRSTROW=2,
    FORMAT = 'CSV'
)
GO

BULK INSERT [Employee]
FROM '/data/Employee.csv'
WITH (
    FIRSTROW=2,
    FORMAT = 'CSV'
)
GO
