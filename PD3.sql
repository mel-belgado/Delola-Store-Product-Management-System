CREATE TYPE status_enum AS ENUM ('PENDING', 'SHIPPED', 'DELIVERED', 'CANCELLED');

CREATE TABLE PRODUCT (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL CHECK (price > 0),
    stock_quantity INT NOT NULL DEFAULT 0,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES PRODUCT_CATEGORY(category_id)
);

CREATE TYPE order_type_enum AS ENUM ('IN_STORE', 'DELIVERY');
CREATE TABLE ORDERS (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    status status_enum DEFAULT 'PENDING',
    total_price DECIMAL(10, 2) NOT NULL,
    order_type order_type_enum NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES CUSTOMER(customer_id)
);

CREATE TABLE ORDER_ITEM (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL CHECK (quantity > 0),
    selling_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id),
    FOREIGN KEY (order_id) REFERENCES ORDERS(order_id)
);

CREATE TABLE DELIVERY (
    delivery_id INT PRIMARY KEY,
    order_id INT,
    delivery_date DATE NOT NULL,
    delivery_street VARCHAR(255) NOT NULL,
    delivery_barangay VARCHAR(255) NOT NULL,
    delivery_city VARCHAR(255) NOT NULL,
    delivery_province VARCHAR(255) NOT NULL,
    delivered_by VARCHAR(255),
    status status_enum DEFAULT 'PENDING',
    FOREIGN KEY (order_id) REFERENCES ORDERS(order_id)
);

CREATE TABLE SHIPMENT_ITEM (
    shipment_item_id INT PRIMARY KEY,
    shipment_id INT,
    product_id INT,
    quantity INT NOT NULL CHECK (quantity > 0),
    unit_cost DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (shipment_id) REFERENCES SHIPMENT(shipment_id),
    FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id)
);