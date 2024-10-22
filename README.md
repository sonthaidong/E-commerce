# Yêu cầu: thiết kế database cho một nghiệp vụ cụ thể

## Ví dụ: Shopee

### 1. Các thực thể

- User (người mua, người bán, etc.)
- Address (địa chỉ)
- PaymentMethod (phương thức thanh toán)
- Cart (giỏ hàng)
- Order (đơn hàng)
  
- Shop (cửa hàng)
- Product (sản phẩm)
- Category (danh mục)

- Shipping (Vận chuyển)
- ShippingServiceProvider (Nhà cung cấp dịch vụ vận chuyển)

- Support (hỗ trợ)

### 2. Mối quan hệ

- Một người dùng có thể có nhiều địa chỉ
- Một người dùng có thể có nhiều phương thức thanh toán
- Một người dùng có thể có nhiều cửa hàng
- Một người dùng có một giỏ hàng
- Một người dùng có thể có nhiều đơn hàng

- Một cửa hàng có thể có nhiều địa chỉ
- Một cửa hàng có thể có nhiều sản phẩm
- Một đơn hàng có thể chứa nhiều sản phẩm (OrderDetail)
- Một giỏ hàng có thể chứa nhiều sản phẩm (Cart)
- Một sản phẩm có thể thuộc nhiều danh mục, một danh mục có thể chứa nhiều sản phẩm (ProductCategory)

- Ghi lại hoạt động giỏ hàng (CartAction)
- Ghi lại hoạt động người dùng (UserAction)

- Một đơn hàng có nhiều giai đoạn trong quá trình vận đơn (Shipping)

- Một người dùng có thể theo dõi nhiều cửa hàng, một cửa hàng có thể được theo dõi bởi nhiều người dùng (Follow)
- Một người dùng có thể phản hồi nhiều sản phẩm, một sản phẩm có thể được phản hồi bởi nhiều người dùng (Feedback)

### 3. Các thuộc tính

- User (buyer, seller)
  - user_id
  - fullname
  - gender
  - birthday
  - user_image
  - user_address (address_id)
  - email
  - phone
  - role: (0) buyer - (1) seller - (2) employee
  - username
  - password

- Address
  - address_id
  - address
  - object_type: (0) user - (1) shop
  - country
  - province
  - district
  - ward
  - street
  - home_number
  - description
  - latitude
  - longitude

- PaymentMethod
  - payment_id
  - user_id
  - payment_type: (0) Cash on delivery - (1) Bank Account - (2) Credit card/Debit card - (3) E-wallet - (4) Other
  - ?  

- Cart
  - user_id
  - product_id
  - quantity
  - ?

- CartAction
  - user_id
  - action: (0) add - (1) remove - (2) update
  - action_time
  - add_product_id
  - add_quantity
  - remove_product_id
  - update_product_id
  - update_quantity
  - ?

- UserAction (click vào đâu, xem trong bao lâu -> recommendation)
  - user_id
  - ?

- Order
  - order_id
  - customer_id (user_id)
  - customer_note
  - order_date
  - order_due_date
  - ship_cost
  - delivery_type
  - delivery_address  
  - payment_status: (0) chưa thanh toán - (1) đã thanh toán
  - order_status: (0) đơn hủy - (1) chờ thanh toán - (2) vận chuyển - (3) chờ giao hàng - (4) hoàn thành - (5) trả hàng/hoàn tiền

- Shop
  - shop_id
  - shop_name
  - shop_image
  - description
  - shop_owner_id (user_id)
  - shop_phone
  - shop_email
  - shop_address (address_id)
  - shop_country
  
- Product
  - prod_id
  - prod_name
  - prod_image
  - description  
  - prod_price
  - prod_quantity_available
  - prod_quantity_sold
  - prod_rating
  - category_id
  - shop_id

- Category
  - category_id
  - category_name
  - description

- OrderDetail
  - order_id
  - product_id
  - shop_id
  - quantity
  - price

- ProductCategory
  - prod_id
  - category_id

- ShippingServiceProvider
  - provider_id
  - provider_name
  - provider_image
  - provider_address
  - provider_phone
  - provider_email
  - provider_country
  - provider_description
  - provider_rating

- Shipping
  - ship_id
  - provider_id
  - user_id (người vận đơn)
  - ship_type
  - ship_from
  - ship_to
  - departure_time
  - arrival_time
  - order_id
  - ship_status (có thể fail do đổi địa điểm hoặc do sự cố v.v)

- ShippingRecord ? ghi lại dữ liệu từ cảm biến (định vị...) của xe hàng (container...) phục vụ việc hiển thị (cho người dùng theo dõi...) và phân tích chất lượng dịch vụ vận chuyển (lộ trình, vận tốc trung bình...)

- Support
  - support_id
  - user_id
  - support_content
  - create_date
  - support_status: (0) nộp thành công - (1) đã tiếp nhận - (2) chưa xử lý - (3) đang xử lý - (4) đã xử lý

- Follow
  - shop_id
  - user_id

- Feedback
  - feedback_id
  - user_id
  - product_id
  - feedback_content
  - feedback_date
  - feedback_rating

## Các yêu cầu

1. Thống kê doanh thu theo tỉnh của người bán so với tỉnh của người mua để phân tích doanh thu ship liên tỉnh

- Đơn hàng chứa thông tin về người mua, người bán, địa chỉ giao hàng, phương thức thanh toán, phương thức vận chuyển, chi tiết đơn hàng (sản phẩm, số lượng, giá tiền), trạng thái đơn hàng
- Địa chỉ chứa thông tin về người sở hữu, địa chỉ, tỉnh, quận, phường, đường, số nhà, mô tả, vĩ độ, kinh độ

- Các bước:

  1. Lấy tất cả đơn hàng thành công (order_status = 4)
  2. Lấy thông tin người mua -> tỉnh người mua, người bán -> tỉnh người bán
  3. Tính tổng doanh thu (tiền hàng, phí ship) nhóm theo tỉnh người mua, tỉnh người bán.

- Truy vấn:

  ```sql
  SELECT 
    buyer_address.province AS buyer_province,
    seller_address.province AS seller_province,
    SUM(od.price * od.quantity) AS total_revenue
  FROM
      `Order` o
  JOIN OrderDetail od ON o.order_id = od.order_id
  JOIN Shop s ON od.shop_id = s.shop_id
  JOIN Address seller_address ON s.shop_address = seller_address.address_id
  JOIN User buyer ON o.customer_id = buyer.user_id
  JOIN Address buyer_address ON buyer.user_address = buyer_address.address_id
  WHERE o.order_status = 4 -- Hoàn thành đơn hàng
  GROUP BY buyer_address.province, seller_address.province
  ORDER BY total_revenue DESC;
  ```
