CREATE TABLE Customer(
    Cus_ID SMALLINT IDENTITY(01, 1) PRIMARY KEY NOT NULL,
    Cus_Name VARCHAR(30),
    Cus_Email VARCHAR(30),
    Cus_Phone_Num VARCHAR(15),
    Cus_Address VARCHAR(30)
    -- username VARCHAR(20) NOT NULL UNIQUE,
    -- password VARCHAR(100) NOT NULL,
    -- firstName VARCHAR(100) NOT NULL,
    -- lastName VARCHAR(100) NOT NULL,
    -- loginAttempt TINYINT DEFAULT 0,
    -- lastAttemptTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -- isActive BOOLEAN DEFAULT TRUE,
    -- imageFile VARCHAR(100)
);

INSERT INTO
    Customer
VALUES
    (
        'Thien Long',
        'longmac321@gmail.com',
        '0868605627',
        'Hai Duong'
    ),
    (
        'Dinh Duy',
        'duykhoadd1@gmail.com',
        '0327903702',
        'Ha Noi'
    ),
    (
        'Mai Lan',
        'mailan66@gmail.com',
        '0977742358',
        'Hai Phong'
    ),
    (
        'Ngoc Anh',
        'nguyentna2811@gmail.com',
        '0377601737',
        'Ha Noi'
    ),
    (
        'Thanh Trang',
        'nguyentranghq60@gmail.com',
        '037707885',
        'Ha Noi'
    ),
    (
        'Thai Minh',
        'viweb25248@gmail.com',
        '0968940762',
        'Ha Noi'
    ),
    (
        'Duc Nguyen',
        'ducknguyen@gmail.com',
        '0835117980',
        'Ha Noi'
    ),
    (
        'Chi Linh',
        'linhajc.lmc@gmail.com',
        '0369739136',
        'Hai Duong'
    ),
    (
        'Cao Hung',
        'hungneu@gmail.com',
        '0988682452',
        'Ha Noi'
    ),
    (
        'Pham Khanh',
        'phamthikhanh123@gmail.com',
        '0944433012',
        'Hai Duong'
    );