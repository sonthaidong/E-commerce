CREATE TABLE WALLET(
    walletID VARCHAR2(10),
    balance NUMBER(10, 2),
    custID NUMBER(4),
    CONSTRAINT PK_walletID PRIMARY KEY(walletID),
    CONSTRAINT FK_custID FOREIGN KEY(custID) REFERENCES CUSTOMER(custID)
);

INSERT INTO
    WALLET
VALUES
('AP1001', 50.00, 1001);

INSERT INTO
    WALLET
VALUES
('AP1002', 190.99, 1002);

INSERT INTO
    WALLET
VALUES
('AP1003', 200.30, 1003);

INSERT INTO
    WALLET
VALUES
('AP1004', 78.00, 1004);

INSERT INTO
    WALLET
VALUES
('AP1005', 90.00, 1005);