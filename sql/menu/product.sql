CREATE TABLE Products
(
    Id int GENERATED ALWAYS AS IDENTITY (START WITH 1000, INCREMENT BY 1) primary key,
    Name varchar(30),
    Price double,
    Type varchar(15),
    Stock int
);



INSERT INTO Products (NAME, PRICE, TYPE, STOCK)
VALUES
    ('A1', 2.99, 'a', 2),
    ('B1', 3.12, 'b', 2),
    ('A2', 4.99, 'a', 2),
    ('A3', 4.38, 'a', 2),
    ('A4', 5.78, 'a', 2),
    ('A5', 16.99, 'a', 2),
    ('A6', 138.46, 'a', 2),
    ('A7', 90.98, 'a', 2),
    ('A8', 110.69, 'a', 2),
    ('A9', 680.79, 'a', 2),
    ('A10', 1250.33, 'a', 1),
    ('B2', 6680.44, 'b', 1),
    ('B3', 45.59, 'b', 1),
    ('B4', 10.69, 'b', 1),
    ('B5', 1.09, 'b', 1),
    ('B6', 6.02, 'b', 1),
    ('B7', 3.93, 'b', 1),
    ('B8', 4.9, 'b', 1),
    ('B9', 42.00, 'b', 1),
    ('B10', 88.39, 'b', 1),
    ('B11', 5.59, 'b', 1);

SELECT * FROM Products;

