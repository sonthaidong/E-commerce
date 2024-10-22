CREATE TABLE Shipment(
    Ship_ID VARCHAR(30) PRIMARY KEY NOT NULL,
    Order_ID SMALLINT FOREIGN KEY REFERENCES Orders(Order_ID),
    Delivery_date DATE,
    Ship_Address VARCHAR(50),
    Shipment_Method VARCHAR(10),
    STATUS VARCHAR(10)
);