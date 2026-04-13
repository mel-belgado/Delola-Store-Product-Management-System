-- Product Categories
INSERT INTO PRODUCT_CATEGORY VALUES
(1, 'Beverages'),
(2, 'Grains'),
(3, 'Snacks'),
(4, 'Canned Goods'),
(5, 'Personal Care');

-- Customers
INSERT INTO CUSTOMER VALUES
(1, 'Juan dela Cruz', '09171234567', 'Rizal St.', 'Barangay 1', 'Batangas City', 'Batangas'),
(2, 'Maria Santos', '09281234567', 'Mabini St.', 'Barangay 2', 'Batangas City', 'Batangas'),
(3, 'Pedro Reyes', '09391234567', 'Luna St.', 'Barangay 3', 'Lipa City', 'Batangas'),
(4, 'Ana Garcia', '09401234567', 'Aguinaldo St.', 'Barangay 4', 'Lipa City', 'Batangas'),
(5, 'Carlos Mendoza', '09501234567', 'Bonifacio St.', 'Barangay 5', 'Tanauan City', 'Batangas');

-- Suppliers
INSERT INTO SUPPLIER VALUES
(1, 'ABC Trading', '09171111111', 'Industrial Rd.', 'Barangay Wawa', 'Batangas City', 'Batangas'),
(2, 'XYZ Distributors', '09172222222', 'Commerce St.', 'Barangay Kumintang', 'Batangas City', 'Batangas'),
(3, 'LMN Wholesale', '09173333333', 'Market Rd.', 'Barangay Alangilan', 'Batangas City', 'Batangas');

-- Products
INSERT INTO PRODUCT VALUES
(1, 'Mineral Water 500ml', 15.00, 120, 1),
(2, 'White Rice 1kg', 55.00, 80, 2),
(3, 'Potato Chips 100g', 35.00, 60, 3),
(4, 'Sardines 155g', 25.00, 45, 4),
(5, 'Shampoo 200ml', 85.00, 30, 5),
(6, 'Orange Juice 1L', 75.00, 50, 1),
(7, 'Brown Rice 1kg', 65.00, 15, 2),
(8, 'Corn Chips 100g', 30.00, 8, 3),
(9, 'Tuna 180g', 40.00, 55, 4),
(10, 'Conditioner 200ml', 90.00, 25, 5);

-- Orders
INSERT INTO ORDERS VALUES
(1, 1, '2025-04-01', 'DELIVERED', 150.00, 'IN_STORE'),
(2, 2, '2025-04-02', 'DELIVERED', 245.00, 'DELIVERY'),
(3, 3, '2025-04-03', 'PENDING', 110.00, 'IN_STORE'),
(4, 4, '2025-04-04', 'SHIPPED', 380.00, 'DELIVERY'),
(5, 5, '2025-04-05', 'CANCELLED', 75.00, 'IN_STORE'),
(6, 1, '2025-04-06', 'DELIVERED', 200.00, 'DELIVERY'),
(7, 2, '2025-04-07', 'PENDING', 165.00, 'IN_STORE'),
(8, 3, '2025-04-08', 'DELIVERED', 120.00, 'DELIVERY');

-- Order Items
INSERT INTO ORDER_ITEM VALUES
(1, 1, 1, 4, 15.00),
(2, 1, 3, 2, 35.00),
(3, 2, 2, 3, 55.00),
(4, 2, 4, 2, 25.00),
(5, 3, 6, 1, 75.00),
(6, 3, 5, 1, 85.00),
(7, 4, 10, 2, 90.00),
(8, 4, 9, 3, 40.00),
(9, 5, 3, 1, 35.00),
(10, 6, 2, 2, 55.00),
(11, 6, 7, 1, 65.00),
(12, 7, 1, 3, 15.00),
(13, 7, 8, 2, 30.00),
(14, 8, 4, 3, 25.00);

-- In Store Orders
INSERT INTO IN_STORE_ORDER VALUES
(1, '10:30:00', 'Juan dela Cruz'),
(3, '14:00:00', NULL),
(5, '09:00:00', 'Carlos Mendoza'),
(7, '11:00:00', NULL);

-- Delivery Orders
INSERT INTO DELIVERY_ORDER VALUES
(2, 'Please handle with care'),
(4, 'Leave at gate if no one is home'),
(6, NULL),
(8, 'Call before delivery');

-- Deliveries
INSERT INTO DELIVERY VALUES
(1, 2, '2025-04-03', 'Mabini St.', 'Barangay 2', 'Batangas City', 'Batangas', 'Jose Cruz', 'DELIVERED'),
(2, 4, '2025-04-06', 'Aguinaldo St.', 'Barangay 4', 'Lipa City', 'Batangas', 'Jose Cruz', 'SHIPPED'),
(3, 6, '2025-04-08', 'Rizal St.', 'Barangay 1', 'Batangas City', 'Batangas', 'Mario Reyes', 'DELIVERED'),
(4, 8, '2025-04-09', 'Luna St.', 'Barangay 3', 'Lipa City', 'Batangas', 'Mario Reyes', 'DELIVERED');

-- Shipments
INSERT INTO SHIPMENT VALUES
(1, 1, '2025-03-25', 'DELIVERED', 'REF-2025-001'),
(2, 2, '2025-03-27', 'DELIVERED', 'REF-2025-002'),
(3, 3, '2025-04-01', 'SHIPPED', 'REF-2025-003'),
(4, 1, '2025-04-05', 'PENDING', 'REF-2025-004');

-- Shipment Items
INSERT INTO SHIPMENT_ITEM VALUES
(1, 1, 1, 200, 10.00),
(2, 1, 2, 100, 45.00),
(3, 1, 3, 150, 25.00),
(4, 2, 4, 100, 18.00),
(5, 2, 5, 80, 65.00),
(6, 2, 6, 120, 55.00),
(7, 3, 7, 50, 50.00),
(8, 3, 8, 60, 22.00),
(9, 4, 9, 100, 30.00),
(10, 4, 10, 75, 70.00);