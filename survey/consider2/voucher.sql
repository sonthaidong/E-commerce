CREATE TABLE VOUCHER(
    voucherID VARCHAR2(10),
    expiryDate DATE NOT NULL,
    details VARCHAR2(255) NOT NULL,
    amount NUMBER(10) NOT NULL,
    CONSTRAINT PK_voucherID PRIMARY KEY(voucherID)
);

INSERT INTO
    VOUCHER
VALUES
(
        'VC1001',
        '23-MAR-2022',
        'Eligible for every store',
        5
    );

INSERT INTO
    VOUCHER
VALUES
(
        'VC1002',
        '4-APR-2021',
        'Total order price must exceed RM 25',
        7
    );

INSERT INTO
    VOUCHER
VALUES
(
        'VC1003',
        '5-JUN-2021',
        'Eligible for every store',
        8
    );

INSERT INTO
    VOUCHER
VALUES
(
        'VC1004',
        '31-AUG-2021',
        'Must not use with another voucher',
        10
    );

INSERT INTO
    VOUCHER
VALUES
(
        'VC1005',
        '23-JUL-2022',
        'Total order price must exceed RM 5',
        3
    );