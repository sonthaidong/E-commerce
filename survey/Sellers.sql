CREATE TABLE Sellers (
    Sell_ID SMALLINT IDENTITY(01, 1) PRIMARY KEY,
    Sell_Name VARCHAR(50),
    Sell_Phone_Num VARCHAR(15),
    Sell_Address VARCHAR(50),
    Followers INT,
    Number_of_Products INT,
);

INSERT INTO
    Sellers
VALUES
    (
        'Nha sach Thanh An HCM',
        '0908810704',
        'Tan Phu, Ho Chi Minh',
        5600,
        8200
    ),
    (
        'Phu kien Pico',
        '0366532054',
        'Nam Tu Lien, Ha Noi',
        48600,
        2100
    ),
    (
        'Kinh mat Thien An cao cap',
        '0377761431',
        'Dong Da, Ha Noi',
        4200,
        2300
    ),
    (
        'Thuoc nhuom toc Tone Do',
        '0973107355',
        'Dong Da, Ha Noi',
        542700,
        112
    ),
    (
        'SUNHOUSE JSC',
        '1800 6680',
        'Cau Giay, Ha Noi',
        20500,
        57
    ),
    (
        'Gulife Official Asia',
        ' 0966763323',
        'Ha Dong, Ha Noi',
        1700,
        60
    ),
    (
        'FAHASHA',
        '1900636467',
        'Hai Ba Trung, TP.HCM',
        375900,
        77200
    ),
    (
        'viole669',
        '0865235093',
        'Thach That, Ha Noi',
        103700,
        157
    ),
    (
        'Midori chans',
        '0879999667',
        'Cau Giay, Ha Noi',
        3600,
        21
    ),
    (
        'Co Mem Official Store',
        '1800.646.890',
        'Dich Vong Hau, Cau Giay, Ha Noi',
        608200,
        215
    ),
    (
        'Mars Petcare',
        ' 0378195546',
        'Dong Da,Ha Noi',
        23133,
        45
    ),
    (
        'Hepi Store',
        '091 498 36 58',
        'Trường Chinh, Hanoi, Vietnam',
        55984,
        6873
    ),
    (
        'Shop Minecraft Vn',
        '0981 058 326',
        'đường Láng, Đống Đa, Hà Nội',
        18964,
        171
    );