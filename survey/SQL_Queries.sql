--1. Which sellers sell products that belong to a specific category? For example, belong to "My pham"
SELECT DISTINCT Sellers.Sell_Name
FROM Sellers
WHERE Sellers.Sell_ID IN (
    SELECT Product.Sell_ID
    FROM Product
    WHERE Product.Category_ID = 9
);

--2. What is the average rating for each product?
SELECT Pro_Name, AVG(Rating) as AverageRating
FROM Review
JOIN Product ON Review.Pro_ID = Product.Pro_ID
GROUP BY Pro_Name;

--3. How many shipments are completed?
SELECT COUNT(Ship_ID) as CompletedShipments
FROM Shipment
WHERE Status = 'Completed';

--4. Which products have received a rating of less than 3 stars?
SELECT Pro_Name
FROM Review
JOIN Product ON Review.Pro_ID = Product.Pro_ID
WHERE Rating < 3;

--5. What is the current stock quantity for each product?
SELECT Pro_Name, Stock_Quantities
FROM Product;

--6. What are the most common payment methods used by customers?
SELECT Pay_Method, COUNT(Pay_ID) as TransactionCount
FROM Payment
GROUP BY Pay_Method
ORDER BY TransactionCount DESC;

--7.Top 5 sellers who have the highest number of products listed
SELECT TOP 5 Sell_Name, COUNT(Product.Pro_Name) as ProductCount
FROM Sellers
JOIN Product ON Sellers.Sell_ID = Product.Sell_ID
GROUP BY Sell_Name
ORDER BY ProductCount DESC;

--8. Create a view to show all products along with their category names and seller information.
GO
CREATE VIEW ProductView 
AS
SELECT Product.Pro_Name, Category.Category_Name, Sellers.Sell_Name
FROM Product
INNER JOIN Category ON Product.Category_ID = Category.Category_ID
INNER JOIN Sellers ON Product.Sell_ID = Sellers.Sell_ID;
GO  -- end of CREATE VIEW batch
SELECT * FROM ProductView;

--9. Which products have received more than 2 reviews?
SELECT Product.Pro_Name, COUNT(Review.Review_ID) as NumberOfReviews
FROM Product
INNER JOIN Review ON Product.Pro_ID = Review.Pro_ID
GROUP BY Product.Pro_Name
HAVING COUNT(Review.Review_ID) > 2;

--10. After UPDATE trigger on ‘Discount’ table to apply discount to product price:
GO
CREATE TRIGGER apply_discount_to_product
ON Discount
AFTER UPDATE
AS
BEGIN
   UPDATE Product
   SET Pro_Price = Pro_Price - (Pro_Price * i.Dis_Code / 100)
   FROM Product
   JOIN inserted i ON Product.Pro_ID = i.Pro_ID;
END;
