CREATE TABLE users
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    first_name   VARCHAR(50)  NOT NULL,
    last_name    VARCHAR(50)  NOT NULL,
    address      VARCHAR(100) NOT NULL,
    phone_number VARCHAR(10)  NOT NULL,
    user_role    INT          NOT NULL,
    is_empty     BOOLEAN      NOT NULL DEFAULT TRUE
);