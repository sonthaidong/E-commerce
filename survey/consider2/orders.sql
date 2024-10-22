CREATE TABLE ORDERS(
    orderID VARCHAR2(10),
    orderDate DATE NOT NULL,
    orderTime VARCHAR2(5) NOT NULL,
    totalPrice NUMBER(10, 2) NOT NULL,
    custID NUMBER(4),
    voucherID VARCHAR2(10),
    CONSTRAINT PK_orderID PRIMARY KEY(orderID),
    CONSTRAINT FK4_custID FOREIGN KEY(custID) REFERENCES CUSTOMER(custID),
    CONSTRAINT FK_voucherID FOREIGN KEY(voucherID) REFERENCES VOUCHER(voucherID)
);

INSERT INTO
    ORDERS
VALUES
(
        'OR1001',
        '8-OCT-2021',
        '14:05',
        20.00,
        1001,
        'VC1001'
    );

INSERT INTO
    ORDERS
VALUES
(
        'OR1002',
        '9-OCT-2021',
        '13:09',
        30.00,
        1002,
        'VC1002'
    );

INSERT INTO
    ORDERS
VALUES
(
        'OR1003',
        '10-OCT-2021',
        '23:57',
        30.00,
        1003,
        'VC1003'
    );

INSERT INTO
    ORDERS
VALUES
(
        'OR1004',
        '8-NOV-2021',
        '00:40',
        20.00,
        1004,
        'VC1004'
    );

INSERT INTO
    ORDERS
VALUES
(
        'OR1005',
        '12-NOV-2021',
        '13:20',
        25.00,
        1005,
        'VC1005'
    );