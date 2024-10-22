CREATE TABLE Payment(
    Pay_ID SMALLINT IDENTITY(001, 1) PRIMARY KEY NOT NULL,
    Order_ID SMALLINT NOT NULL FOREIGN KEY REFERENCES Orders(Order_ID),
    Pay_date DATE,
    Pay_Method VARCHAR(20)
);

INSERT INTO
    Payment
VALUES
    (001, '18-Jun-2023', 'Credit Card'),
    (007, '29-Nov-2023', 'Debit Card'),
    (002, '24-Dec-2023', 'Cash'),
    (004, '29-Aug-2023', 'Mobile Wallet'),
    (010, '24-Nov-2023', 'Debit Card'),
    (005, '02-Dec-2023', 'Credit Card'),
    (009, '15-Oct-2023', 'Cash'),
    (006, '07-Oct-2023', 'Mobile Wallet'),
    (011, '22-Feb-2023', 'Credit Card'),
    (003, '15-May-2023', 'Mobile Wallet');