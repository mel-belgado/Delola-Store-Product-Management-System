
UPDATE PRODUCT
SET stock_quantity = (SELECT COUNT(*) FROM ORDER_ITEM WHERE product_id = PRODUCT.product_id);
