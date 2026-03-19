CREATE TABLE PRODUCT_CATEGORY (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE PRODUCT (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES PRODUCT_CATEGORY(category_id)
);

CREATE TABLE ORDER_ITEM (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id)
    FOREIGN KEY (order_id) REFERENCES ORDER(order_id)
);

CREATE TYPE order_status AS ENUM ('PENDING', 'SHIPPED', 'DELIVERED', 'CANCELLED');
CREATE TABLE ORDER (
    order_id INT PRIMARY KEY,
    customer_id INT
    order_date DATE NOT NULL,
    status order_status DEFAULT 'PENDING',
    total_price DECIMAL(10, 2) NOT NULL,
    order_type VARCHAR(50) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES CUSTOMER(customer_id)
);

CREATE TABLE IN_STORE_ORDER (
    order_id INT PRIMARY KEY,
    release_time TIME NULL,
    claimbed_by VARCHAR(255) NULL,
    FOREIGN KEY (order_id) REFERENCES ORDER(order_id)
);

CREATE TABLE DELIVERY_ORDER (
    order_id INT PRIMARY KEY,
    delivery_address VARCHAR(255) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES ORDER(order_id)
);