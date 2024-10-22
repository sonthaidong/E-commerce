CREATE TABLE PROMOTION(
    promoID VARCHAR2(10),
    promoName VARCHAR2(30) NOT NULL,
    promoDesc VARCHAr2(255) NOT NULL,
    startDate DATE,
    endDate DATE,
    CONSTRAINT CHK_date CHECK (endDate > startDate),
    CONSTRAINT PK_promoID PRIMARY KEY(promoID)
);

INSERT INTO
    PROMOTION
VALUES
(
        'PR1001',
        'Buy1Free1',
        'Buy 1 item get 1 free. Eligible for stationery items.',
        '10-MAR-2021',
        '20-MAR-2021'
    );

INSERT INTO
    PROMOTION
VALUES
(
        'PR1002',
        'Buy3Get2Free',
        'Eligible for every store',
        '10-MAY-2021',
        '30-MAY-2021'
    );

INSERT INTO
    PROMOTION
VALUES
(
        'PR1003',
        '7/7',
        'Eligible for every store. Up to 70% percent off.',
        '1-JUL-2021',
        '7-JUL-2021'
    );

INSERT INTO
    PROMOTION
VALUES
(
        'PR1004',
        '8/8',
        'Eligible for every store. Up to 90% percent off.',
        '1-AUG-2021',
        '8-AUG-2021'
    );

INSERT INTO
    PROMOTION
VALUES
(
        'PR1005',
        'PayDay',
        '30% for all items.',
        '28-APR-2021',
        '30-APR-2021'
    );