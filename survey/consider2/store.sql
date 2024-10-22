CREATE TABLE STORE(
    storeID VARCHAR2(10),
    storeName VARCHAR2(20) NOT NULL,
    storePhone VARCHAR2(15) NOT NULL,
    ratings NUMBER(3, 2),
    dateJoined DATE NOT NULL,
    storeAddress VARCHAR2(200) NOT NULL,
    chatPerformance NUMBER(3) NOT NULL,
    CONSTRAINT PK_storeID PRIMARY KEY(storeID)
);

INSERT INTO
    STORE
VALUES
(
        'ST1001',
        'FluffyPillows',
        '0187694657',
        5,
        '12-MAR-2021',
        'No 3, Jalan Kilang, Selangor',
        97
    );

INSERT INTO
    STORE
VALUES
(
        'ST1002',
        'Foodies',
        '0125634526',
        4.5,
        '13-MAY-2021',
        'No 4, Jalan Baru Bangi, Selangor',
        99
    );

INSERT INTO
    STORE
VALUES
(
        'ST1003',
        'HeavenClothes',
        '0176453689',
        3,
        '14-JUL-2021',
        'No 2, Jalan Lily, Kuala Lumpur',
        85
    );

INSERT INTO
    STORE
VALUES
(
        'ST1004',
        'Shoeswalk',
        '0187457390',
        4,
        '23-JAN-2021',
        'No 3, Melawati Mall, Kuala Lumpur',
        90
    );

INSERT INTO
    STORE
VALUES
(
        'ST1005',
        'QuteyMeow',
        '0143526891',
        5,
        '30-APR-2021',
        '4-3, MegaMind, Putrajaya',
        95
    );