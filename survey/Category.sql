CREATE TABLE Category(
    Category_ID SMALLINT IDENTITY (0001, 1) PRIMARY KEY NOT NULL,
    Category_Name VARCHAR(30)
    -- image    VARCHAR(255) NOT NULL,
    -- link     VARCHAR(255) NULL,
    -- is_empty BOOLEAN      NOT NULL
);

INSERT INTO
    Category
VALUES
    ('Sach Giao duc'),
    ('Phu kien Laptop'),
    ('Kinh vien thi'),
    ('Thuoc nhuom toc'),
    ('Chao chong dinh'),
    ('Do gia dung'),
    ('Van hoc gia tuong'),
    ('Thoi trang nu'),
    ('Ao phong'),
    ('My pham'),
    ('Do Choi'),
    ('Suc khoe'),
    ('Sach Tieng Viet'),
    ('Kinh mat'),
    ('Phu kien trang suc nu'),
    ('Sach Tieng Anh');