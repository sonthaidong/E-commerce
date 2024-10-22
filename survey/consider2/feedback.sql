CREATE TABLE FEEDBACK(
    feedbackID VARCHAR2(10),
    rating NUMBER(1) NOT NULL,
    feedbackPics VARCHAR2(30),
    feedbackDesc VARCHAR2(40),
    productID VARCHAR2(10),
    custID NUMBER(4),
    CONSTRAINT PK_feedbackID PRIMARY KEY(feedbackID),
    CONSTRAINT FK2_productID FOREIGN KEY(productID) REFERENCES PRODUCT(productID),
    CONSTRAINT FK6_custID FOREIGN KEY(custID) REFERENCES CUSTOMER(custID)
);

INSERT INTO
    FEEDBACK
VALUES
(
        'FD1001',
        5,
        'Satin.jpeg',
        'Very smooth',
        'PD1001',
        1001
    );

INSERT INTO
    FEEDBACK
VALUES
(
        'FD1002',
        5,
        'Boot.jpeg',
        'So comfy',
        'PD1004',
        1002
    );

INSERT INTO
    FEEDBACK
VALUES
(
        'FD1003',
        5,
        'Shoes.jpeg',
        'Fits perfectly',
        'PD1004',
        1003
    );

INSERT INTO
    FEEDBACK
VALUES
('FD1004', 5, NULL, 'Very nice', 'PD1001', 1001);

INSERT INTO
    FEEDBACK
VALUES
(
        'FD1005',
        5,
        NULL,
        'So comfy and cool',
        'PD1003',
        1005
    );