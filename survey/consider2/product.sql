CREATE TABLE PRODUCT(
    productID VARCHAR2(10),
    productName VARCHAR2(20) NOT NULL,
    stock NUMBER(4),
    itemsSold NUMBER(4),
    productPrice NUMBER(4) NOT NULL,
    variation VARCHAR2(200),
    category VARCHAR2(30) NOT NULL,
    brand VARCHAR2(30),
    warranty VARCHAR2(30),
    promoID VARCHAR(10),
    storeID VARCHAR(10),
    CONSTRAINT PK_productID PRIMARY KEY(productID),
    CONSTRAINT FK2_storeID FOREIGN KEY(storeID) REFERENCES STORE(storeID),
    CONSTRAINT FK_promoID FOREIGN KEY(promoID) REFERENCES PROMOTION(promoID)
);

INSERT INTO
    PRODUCT
VALUES
(
        'PD1001',
        'Satin pillowcase',
        100,
        150,
        10,
        'Colour: White, Red, Yellow',
        'Bedding',
        'Jery Peans',
        'No warranty',
        'PR1002',
        'ST1001'
    );

INSERT INTO
    PRODUCT
VALUES
(
        'PD1002',
        'Ramen Cheese',
        10,
        100,
        5,
        'Flavour: Spicy, Original',
        'Food',
        'Dakgalbi',
        'No warranty',
        'PR1003',
        'ST1002'
    );

INSERT INTO
    PRODUCT
VALUES
(
        'PD1003',
        'Cotton Blouse',
        10,
        20,
        25,
        'Colour: White, Blue',
        'Clothing',
        'Padini',
        'No warranty',
        'PR1004',
        'ST1003'
    );

INSERT INTO
    PRODUCT
VALUES
(
        'PD1004',
        'Boot',
        5,
        50,
        30,
        'Size: 35,37,38,40',
        'Shoes',
        'XES',
        '3 months',
        'PR1005',
        'ST1004'
    );

INSERT INTO
    PRODUCT
VALUES
(
        'PD1005',
        'Slime',
        20,
        100,
        1,
        'Colour: Pink, yellow, purple',
        'Entertaintment',
        'No brand',
        'No warranty',
        NULL,
        'ST1005'
    );