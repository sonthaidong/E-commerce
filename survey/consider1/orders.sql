# Tạo bảng "orders" để lưu thông tin về các đơn hàng
CREATE TABLE orders
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    user_id      INT,
    order_date   DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

# Tạo bảng "order_items" để lưu chi tiết đơn hàng (sản phẩm và số lượng)
CREATE TABLE order_items
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    order_id     INT,
    product_name VARCHAR(255) NOT NULL,
    quantity     INT,
    price        DECIMAL(10, 2),
   