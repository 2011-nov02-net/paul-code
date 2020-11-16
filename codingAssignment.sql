CREATE TABLE [Customers] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [first_name] nvarchar(20),
  [last_name] nvarchar(20),
  [CardNumber] int
)

--DROP Table [products]
CREATE TABLE [products] (
  [id] int PRIMARY KEY IDENTITY(1,1),
  [name] nvarchar(255),
  [price] int,
)

--DROP Table [orders]
CREATE TABLE [orders] (
  [id] int PRIMARY KEY IDENTITY (1,1),
  [customer_id] int  NOT NULL,
  [product_id] int  NOT NULL
)

ALTER TABLE [orders] ADD FOREIGN KEY ([customer_id]) REFERENCES [Customers] ([id])
GO

ALTER TABLE [orders] ADD FOREIGN KEY ([product_id]) REFERENCES [products] ([id])
Go

INSERT INTO [Customers] (First_Name, Last_Name, CardNumber) VALUES ('Paul','Cortez', 12134);
INSERT INTO [Customers] (First_Name, Last_Name, CardNumber) VALUES ('Vincent','See', 12345);
INSERT INTO [Customers] (First_Name, Last_Name, CardNumber) VALUES ('Tina', 'Smith', 54321);

Select * FROM Customers;

INSERT INTO [Products] (Name, price) VALUES ('iPhone', 200);
INSERT INTO [Products] (Name, price) VALUES ('Samsubg TV', 300);
INSERT INTO [Products] (Name, price) VALUES ('Bag', 25);

Select * FROM Products;

INSERT Into[orders] (customer_id,product_id) values (1, 2);
INSERT Into[orders] (customer_id,product_id) values (3, 1);
INSERT Into[orders] (customer_id,product_id) values (2, 1);

SELECT * FROM orders;

SELECT * from Customers as c
inner join orders on customer_id = c.id
where c.first_name = 'tina';

Select * from products
where name = 'iphone'

Update products
set price = 250 
where name = 'iphone';