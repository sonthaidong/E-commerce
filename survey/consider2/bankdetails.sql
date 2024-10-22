CREATE TABLE BANKDETAILS(
    bankNo VARCHAR2(30),
    bankName VARCHAR2(25) NOT NULL,
    custID NUMBER(4),
    CONSTRAINT PK_bankNo PRIMARY KEY(bankNo),
    CONSTRAINT FK3_custID FOREIGN KEY(custID) REFERENCES CUSTOMER(custID)
);

INSERT INTO
    BANKDETAILS
VALUES
('1000200030004000', 'Maybank', 1001);

INSERT INTO
    BANKDETAILS
VALUES
('1234567890213456', 'CIMB', 1002);

INSERT INTO
    BANKDETAILS
VALUES
('3425777789029999', 'Bank Islam', 1003);

INSERT INTO
    BANKDETAILS
VALUES
('4444123456789999', 'RHB', 1004);

INSERT INTO
    BANKDETAILS
VALUES
('2323444465781111', 'Public Bank', 1005);