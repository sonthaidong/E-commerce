CREATE TABLE Orders(
    Order_ID SMALLINT IDENTITY (001, 1) PRIMARY KEY NOT NULL,
    Cus_ID SMALLINT NOT NULL FOREIGN KEY REFERENCES Customer(Cus_ID),
    Pro_ID SMALLINT NOT NULL FOREIGN KEY REFERENCES Product(Pro_ID),
    Order_Date DATE
);

INSERT INTO
    Orders
VALUES
    (01, 07, '2023-06-18'),
    (03, 08, '2023-12-14'),
    (10, 11, '2023-05-15'),
    (04, 05, '2023-08-29'),
    (07, 03, '2023-11-27'),
    (09, 06, '2023-10-07'),
    (02, 02, '2023-11-16'),
    (06, 04, '2024-09-17'),
    (08, 10, '2023-10-08'),
    (05, 01, '2023-11-24'),
    (02, 09, '2023-02-22');