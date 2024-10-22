CREATE TABLE PAYMENT(
    paymentID VARCHAR2(10),
    paymentDate DATE NOT NULL,
    paymentStatus VARCHAR2(30) NOT NULL,
    paymentTime VARCHAR2(5) NOT NULL,
    orderID VARCHAR2(10),
    CONSTRAINT PK_paymentID PRIMARY KEY(paymentID),
    CONSTRAINT FK_orderID FOREIGN KEY(orderID) REFERENCES ORDERS(orderID)
);

INSERT INTO
    PAYMENT
VALUES
(
        'PY1001',
        '8-OCT-2021',
        'Completed',
        '14:10',
        'OR1001'
    );

INSERT INTO
    PAYMENT
VALUES
(
        'PY1002',
        '9-OCT-2021',
        'Completed',
        '13:12',
        'OR1002'
    );

INSERT INTO
    PAYMENT
VALUES
(
        'PY1003',
        '10-OCT-2021',
        'Completed',
        '00:01',
        'OR1003'
    );

INSERT INTO
    PAYMENT
VALUES
(
        'PY1004',
        '8-NOV-2021',
        'Completed',
        '00:45',
        'OR1004'
    );

INSERT INTO
    PAYMENT
VALUES
(
        'PY1005',
        '8-NOV-2021',
        'Completed',
        '13:23',
        'OR1005'
    );