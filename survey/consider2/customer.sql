CREATE TABLE CUSTOMER(
    custID NUMBER(4),
    custName VARCHAR2(100) NOT NULL,
    custPhone VARCHAR2(15) UNIQUE,
    custUsername VARCHAR2(50) UNIQUE,
    custPassword VARCHAR2(50) NOT NULL,
    custEmail VARCHAR2(50) UNIQUE,
    custPhoto VARCHAR2(50),
    custDOB DATE NOT NULL,
    custGender VARCHAR2(1),
    CONSTRAINT PK_custID PRIMARY KEY(custID)
);

INSERT INTO
    CUSTOMER
VALUES
(
        1001,
        'Iman',
        '0107695331',
        'Imannnaina',
        'Imanroslan',
        'iman@gmail.com',
        'Iman.jpeg',
        '28-OCT-2000',
        'F'
    );

INSERT INTO
    CUSTOMER
VALUES
(
        1002,
        'Zahirul',
        '0102345678',
        'Zahirul02',
        'Zahirul@iman',
        'zahirul@gmail.com',
        'Zahirul.jpeg',
        '23-JUL-2001',
        'M'
    );

INSERT INTO
    CUSTOMER
VALUES
(
        1003,
        'Izzah',
        '0198765346',
        'Izzahhh11',
        'Izzah123@',
        'izzah@gmail.com',
        'Izzah.jpeg',
        '4-MAR-2002',
        'F'
    );

INSERT INTO
    CUSTOMER
VALUES
(
        1004,
        'Syahmie',
        '0191124563',
        'syahmieZak',
        'Syahmi672',
        'syahmie@gmail.com',
        'Syahmie.jpeg',
        '12-MAY-2003',
        'M'
    );

INSERT INTO
    CUSTOMER
VALUES
(
        1005,
        'Luqman',
        '0198273543',
        'Luqman78',
        'luq@112',
        'luqman@gmail.com',
        'Luqman.jpeg',
        '23-JUN-2000',
        'M'
    );