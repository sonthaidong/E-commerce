CREATE TABLE Product (
    Pro_ID SMALLINT IDENTITY(01, 1) PRIMARY KEY NOT NULL,
    Pro_Name VARCHAR(50),
    Category_ID SMALLINT FOREIGN KEY REFERENCES Category(Category_ID),
    Sell_ID SMALLINT FOREIGN KEY REFERENCES Sellers(Sell_ID),
    Pro_Price REAL,
    Stock_Quantities SMALLINT,
    -- image           VARCHAR(255) NOT NULL,
    -- image_options   VARCHAR(255) NOT NULL,
    -- discount_top    INT          NOT NULL,
    -- discount_bottom INT          NOT NULL,
    -- is_empty        BOOLEAN      NOT NULL
);

INSERT INTO
    Product
VALUES
    (
        'Giao trinh triet hoc Mac Lenin',
        0001,
        01,
        63000,
        208
    ),
    ('Keo tan nhiet CPU', 0002, 02, 60500, 568),
    ('Kinh vien thi Nhat Ban', 0003, 03, 14340, 684),
    ('Thuoc nhuom toc mau nau', 0004, 04, 65000, 1823),
    ('Chao chong dinh SUNHOUSE', 0005, 05, 9500, 257),
    ('Dieu hoa khong khi', 0006, 06, 18500, 467),
    (
        'Sach Minecraft Book 4: The end',
        0007,
        07,
        19300,
        180
    ),
    ('Chan vay ngan', 0008, 08, 10900, 1655),
    ('Ao thun cotton', 0009, 09, 29000, 280),
    ('Son duong gao co mem', 0010, 10, 9000, 1759),
    ('Thuc an cho meo', 0009, 11, 111000, 1675),
    ('Driver Kamen Rider', 0011, 11, 900000, 856),
    ('Minecraft Lego Set', 0011, 07, 185000, 953),
    ('Creeper Plushie', 0011, 12, 175000, 1956),
    ('Kinh lao gap gong gon', 0015, 03, 59000, 1560),
    ('Gong kinh Chrome Heart', 0015, 03, 99000, 350),
    (
        'Quat tan nhiet dien thoai',
        0006,
        02,
        133000,
        480
    ),
    ('Loi loc nuoc', 0006, 05, 97000, 878);