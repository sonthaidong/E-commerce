CREATE TABLE STAFF(
    staffID VARCHAR2(10),
    staffName VARCHAR2(30) NOT NULL,
    staffPhone VARCHAR2(15) UNIQUE,
    staffGender VARCHAR2(1),
    staffDOB DATE,
    staffEmail VARCHAR2(30) UNIQUE,
    staffPhoto VARCHAR2(30) NOT NULL,
    storeID VARCHAR2(10),
    CONSTRAINT PK_staffID PRIMARY KEY(staffID),
    CONSTRAINT FK3_storeID FOREIGN KEY(storeID) REFERENCES STORE(storeID)
);

INSERT INTO
    STAFF
VALUES
(
        'SF101',
        'Khairul',
        '0197346527',
        'M',
        '8-OCT-1997',
        'khairul@gmail.com',
        'Khairul.jpeg',
        'ST1001'
    );

INSERT INTO
    STAFF
VALUES
(
        'SF102',
        'Ikmal',
        '0123456789',
        'M',
        '9-MAY-1995',
        'ikaml@gmail.com',
        'Ikmal.jpeg',
        'ST1001'
    );

INSERT INTO
    STAFF
VALUES
(
        'SF103',
        'Farhan',
        '0198376511',
        'M',
        '10-SEP-1996',
        'farhan@gmail.com',
        'Farhan.jpeg',
        'ST1003'
    );

INSERT INTO
    STAFF
VALUES
(
        'SF104',
        'Amy',
        '0123455555',
        'F',
        '27-NOV-1998',
        'amy@gmail.com',
        'Amy.jpeg',
        'ST1004'
    );

INSERT INTO
    STAFF
VALUES
(
        'SF105',
        'Lily',
        '0135678888',
        'F',
        '30-NOV-1995',
        'lily@gmail.com',
        'Lily.jpeg',
        'ST1005'
    );