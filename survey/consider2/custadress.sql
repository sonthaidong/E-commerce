CREATE TABLE CUSTADDRESS(
    addrID VARCHAR2(10),
    detailedAddr VARCHAR2(100) NOT NULL,
    state VARCHAR2(50) NOT NULL,
    city VARCHAR2(50) NOT NULL,
    postcode VARCHAR2(5) NOT NULL,
    custID NUMBER(4),
    CONSTRAINT PK_addrID PRIMARY KEY(addrID),
    CONSTRAINT FK2_custID FOREIGN KEY(custID) REFERENCES CUSTOMER(custID)
);

INSERT INTO
    CUSTADDRESS
VALUES
(
        'AD1001',
        'No 3, Jln 8/10 Taman Sri Gombak',
        'Selangor',
        'Gombak',
        '68100',
        1001
    );

INSERT INTO
    CUSTADDRESS
VALUES
(
        'AD1002',
        'No 2, Jln Taman Mawar 3',
        'Perak',
        'Tronoh',
        '62100',
        1002
    );

INSERT INTO
    CUSTADDRESS
VALUES
(
        'AD1003',
        'No 4, Pangsapuri Mewah',
        'Kuala Lumpur',
        'Ampang',
        '53100',
        1003
    );

INSERT INTO
    CUSTADDRESS
VALUES
(
        'AD1004',
        'No 3, Jalan Indah 4',
        'Selangor',
        'Serdang',
        '32000',
        1004
    );

INSERT INTO
    CUSTADDRESS
VALUES
(
        'AD1005',
        'No 15, Jalan Merpati 6',
        'Kuala Lumpur',
        'Sentul',
        '21000',
        1005
    );