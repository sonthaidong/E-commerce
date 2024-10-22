CREATE TABLE Review (
    Review_ID SMALLINT IDENTITY (2001, 1) PRIMARY KEY,
    Cust_ID SMALLINT FOREIGN KEY REFERENCES Customer(Cus_ID),
    Pro_ID SMALLINT FOREIGN KEY REFERENCES Product(Pro_ID),
    Rating REAL,
    Date_of_Review DATE
);

INSERT INTO
    Review
VALUES
    (01, 01, 5.0, '2023-09-29'),
    (02, 01, 2.3, '2023-10-31'),
    (03, 01, 4.0, '2023-02-11'),
    (03, 02, 3.2, '2023-07-03'),
    (04, 01, 2.9, '2023-11-04'),
    (04, 03, 3.7, '2023-12-03'),
    (06, 06, 3.8, '2023-06-06'),
    (08, 08, 5.0, '2022-09-28'),
    (09, 09, 5.0, '2022-10-12'),
    (10, 10, 5.0, '2023-05-20');