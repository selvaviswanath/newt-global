-- Assignment 3
-- Consider a table called `sales` that contains the following columns:

-- - `order_id` (integer): unique identifier for each order.

-- - `product_id` (integer): unique identifier for each product.

-- - `customer_id` (integer): unique identifier for each customer.

-- - `order_date` (date): date when the order was placed.

-- - `quantity` (integer): quantity of the product ordered.

-- - `price` (numeric): price per unit of the product.


-- 1. Use a SQL join to retrieve the order details along with the customer information for each order.
SELECT s.*, c.* FROM sales s INNER JOIN customer c WHERE s.customer_id = c.customer_id;

-- 2. Write a query to calculate the total sales amount (`total_amount`) for each order by multiplying the `quantity` and `price` columns.
SELECT (price*quantity) AS total_amount FROM sales;

-- 3. Use a window function to calculate the average order amount (`avg_order_amount`) for each customer, considering all their orders.
SELECT AVG(price*quantity) OVER(PARTITION BY customer_id) AS avg_order_amount FROM sales;

-- 4. Write a query to find the top 5 customers with the highest average order amount.
SELECT AVG(price*quantity) OVER(PARTITION BY customer_id) AS avg_order_amount FROM sales ORDER BY avg_order_amount DESC LIMIT 5;

-- 5. Calculate the cumulative sum of the total sales amount (`cumulative_sales`) for each order, starting from the first order.
SELECT SUM(price*quantity) OVER(ORDER BY order_id) AS cumulative_sales FROM sales ;