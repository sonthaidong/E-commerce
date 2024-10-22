CREATE TABLE SHIPPINGDETAILS(
    shipID VARCHAR2(10),
    shipTime VARCHAR2(5) NOT NULL,
    shipDate DATE NOT NULL,
    weight NUMBER(5) NOT NULL,
    ShipCost NUMBER(2) NOT NULL,
    custID NUMBER(4),
    courierID VARCHAR2(10),
    orderID VARCHAR2(10),
    storeID VARCHAR2(10),
    addrID VARCHAR2(10),
    CONSTRAINT PK_shipID PRIMARY KEY(shipID),
    CONSTRAINT FK5_custID FOREIGN KEY(custID) REFERENCES CUSTOMER(custID),
    CONSTRAINT FK_courierID FOREIGN KEY(courierID) REFERENCES COURIERCOMPANY(courierID),
    CONSTRAINT FK2_orderID FOREIGN KEY(orderID) REFERENCES ORDERS(orderID),
    CONSTRAINT FK_storeID FOREIGN KEY(storeID) REFERENCES STORE(storeID),
    CONSTRAINT FK_addrID FOREIGN KEY(addrID) REFERENCES CUSTADDRESS(addrID)
);

INSERT INTO
    SHIPPINGDETAILS
VALUES
(
        'SH1001',
        '14:00',
        '12-OCT-2021',
        5,
        5,
        1001,
        'CR1001',
        'OR1001',
        'ST1001',
        'AD1001'
    );

INSERT INTO
    SHIPPINGDETAILS
VALUES
(
        'SH1002',
        '13:50',
        '13-OCT-2021',
        5,
        5,
        1002,
        'CR1001',
        'OR1002',
        'ST1001',
        'AD1002'
    );

INSERT INTO
    SHIPPINGDETAILS
VALUES
(
        'SH1003',
        '12:00',
        '13-OCT-2021',
        5,
        5,
        1003,
        'CR1002',
        'OR1003',
        'ST1002',
        'AD1003'
    );

INSERT INTO
    SHIPPINGDETAILS
VALUES
(
        'SH1004',
        '09:40',
        '13-NOV-2021',
        5,
        7,
        1001,
        'CR1005',
        'OR1004',
        'ST1004',
        'AD1001'
    );

INSERT INTO
    SHIPPINGDETAILS
VALUES
(
        'SH1005',
        '08:30',
        '13-NOV-2021',
        3,
        5,
        1005,
        'CR1003',
        'OR1005',
        'ST1005',
        'AD1005'
    );