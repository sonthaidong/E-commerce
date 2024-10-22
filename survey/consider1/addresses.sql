# Tạo bảng "addresses" để lưu trữ thông tin địa chỉ
CREATE TABLE addresses
(
    id             INT PRIMARY KEY AUTO_INCREMENT,
    user_id        INT,
    street_address VARCHAR(255) NOT NULL,
    city           VARCHAR(255) NOT NULL,
    state          VARCHAR(255) NOT NULL,
    postal_code    VARCHAR(10)  NOT NULL,
    country        VARCHAR(255) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id)
);