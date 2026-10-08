-- CREATE schema assignment
CREATE SCHEMA assignment;

-- CREATE Customers table in the assignment schema
CREATE TABLE assignment.customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10)
);
-- CREATE Products table in the assignment schema
CREATE TABLE assignment.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT
);
-- CREATE Sales table in the assignment schema
CREATE TABLE assignment.sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES assignment.customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- CREATE Inventory table in the assignment schema
CREATE TABLE assignment.inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- Inserting data into assignment.Customers table
INSERT INTO assignment.Customers 
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status) 
VALUES
(1, 'Karen', 'Molina', 'gonzalezkimberly@glass.com', '(728)697-1206', '2020-08-27', 'Bronze'),
(2, 'Elizabeth', 'Archer', 'tramirez@gmail.com', '778.104.6553', '2023-08-28', 'Silver'),
(3, 'Roberta', 'Massey', 'davislori@gmail.com', '+1-365-606-7458x399', '2024-06-12', 'Bronze'),
(4, 'Jacob', 'Adams', 'andrew72@hotmail.com', '246-459-1425x462', '2023-02-10', 'Gold'),
(5, 'Cynthia', 'Lowery', 'suarezkiara@ramsey.com', '001-279-688-8177x4015', '2020-11-13', 'Silver'),
(6, 'Emily', 'King', 'igoodwin@howard.com', '(931)575-5422x5900', '2021-05-01', 'Silver'),
(7, 'Linda', 'Larsen', 'pware@yahoo.com', '289-050-2028x7673', '2021-08-20', 'Silver'),
(8, 'Angela', 'Hanson', 'zanderson@gmail.com', '+1-403-917-3585', '2023-03-17', 'Bronze'),
(9, 'Whitney', 'Wilson', 'norma70@yahoo.com', '001-594-317-6656', '2024-01-27', 'Bronze'),
(10, 'Angela', 'Atkins', 'burnsjorge@medina.org', '344.217.5788', '2025-02-05', 'Silver'),
(11, 'Gary', 'Lucero', 'ssnyder@hotmail.com', '001-842-595-7853', '2024-10-08', 'Silver'),
(12, 'Matthew', 'Romero', 'jennifer22@gmail.com', '556.328.91896', '2022-04-07', 'Bronze'),
(13, 'Ronald', 'Thompson', 'hramos@hayes.biz', '298-487-2483', '2023-07-31', 'Bronze'),
(14, 'Suzanne', 'Anderson', 'michaelcole@ruiz-ware.com', '+1-018-029-7257', '2023-11-02', 'Bronze'),
(15, 'Mary', 'Kelly', 'matthewmurphy@gmail.com', '(845)934-9x286', '2021-01-20', 'Bronze'),
(16, 'John', 'George', 'burnettlauren@gmail.com', '+1-708-200-4286', '2022-05-17', 'Bronze'),
(17, 'James', 'Rodriguez', 'brownbrian@blair-sanford.com', '8826047658', '2022-11-25', 'Gold'),
(18, 'Steven', 'Burnett', 'zblackburn@yahoo.com', '(055)912-6726x1246', '2020-01-28', 'Gold'),
(19, 'Jonathan', 'White', 'millsseth@choi-kelly.org', '755-979-1934x772', '2022-02-06', 'Bronze'),
(20, 'Christopher', 'Santiago', 'heidimaddox@hotmail.com', '118-589-6973x058', '2021-10-16', 'Silver'),
(21, 'John', 'Diaz', 'gsmith@hotmail.com', '369.915.4337', '2022-09-17', 'Gold'),
(22, 'Curtis', 'Rose', 'ryanmartinez@moore.com', '(921)461-2128', '2021-12-14', 'Bronze'),
(23, 'Charles', 'Hughes', 'jonesangela@frank-lynn.com', '(152)603-5387x8994', '2024-07-29', 'Silver'),
(24, 'Sarah', 'Cooke', 'whitedennis@tucker.org', '(641)830-6756x56741', '2024-12-15', 'Bronze'),
(25, 'Luis', 'Harrison', 'melvin70@gmail.com', '516.509.9493', '2021-08-19', 'Silver'),
(26, 'Annette', 'Greene', 'aaron68@hall.com', '(733)734-1847x1078', '2025-04-12', 'Bronze'),
(27, 'Melissa', 'Jacobson', 'becklarry@gmail.com', '562-245-7784x4729', '2023-04-28', 'Bronze'),
(28, 'Julie', 'Gardner', 'adamsrodney@hall.com', '+1-014-029-3206x188', '2024-03-31', 'Gold'),
(29, 'Margaret', 'Taylor', 'lfuller@hotmail.com', '(299)340-8900x297', '2021-09-06', 'Bronze'),
(30, 'Erika', 'Mckee', 'wsmith@gmail.com', '(160)040-7321', '2021-05-25', 'Silver'),
(31, 'Donna', 'Whitney', 'justinnicholson@gmail.com', '7086491657', '2022-08-07', 'Gold'),
(32, 'Kristina', 'Wade', 'ashley30@richards-young.com', '603-604-2831x303', '2024-03-16', 'Silver'),
(33, 'Joshua', 'Green', 'ihartman@yahoo.com', '988-232-8285x00933', '2024-05-14', 'Silver'),
(34, 'John', 'Leblanc', 'herickson@green.info', '229.016.2527x20209', '2022-12-24', 'Silver'),
(35, 'Nicholas', 'Campbell', 'ghernandez@hotmail.com', '(982)215-6626', '2022-06-06', 'Gold'),
(36, 'Christopher', 'Hicks', 'ryan48@gmail.com', '884.881.7758', '2021-04-03', 'Silver'),
(37, 'Craig', 'Miller', 'scampbell@johnson.net', '390-328-7286x021', '2024-04-30', 'Silver'),
(38, 'Jennifer', 'Bailey', 'dwright@hotmail.com', '001-992-011-9250', '2022-09-07', 'Silver'),
(39, 'Emma', 'Davis', 'lisalester@hotmail.com', '911.706.3025', '2021-06-04', 'Gold'),
(40, 'Michael', 'Wilson', 'lmerritt@wallace-wang.com', '462.021.3233', '2025-01-14', 'Bronze'),
(41, 'Sarah', 'Church', 'deniseramos@gmail.com', '(840)285-3653x61868', '2021-03-14', 'Silver'),
(42, 'Carolyn', 'Stevenson', 'george62@garrison.net', '040.179.1155', '2024-07-26', 'Silver'),
(43, 'Sarah', 'Cole', 'amandamartin@hotmail.com', '481-651-5206x4800', '2024-07-27', 'Silver'),
(44, 'Jeremiah', 'Lozano', 'bethany38@lopez.net', '846-327-7426', '2023-01-02', 'Bronze'),
(45, 'Leslie', 'Boyd', 'cartermorgan@scott-franco.com', '+1-583-786-3525', '2022-10-22', 'Silver'),
(46, 'Carrie', 'Anderson', 'stevenlivingston@yahoo.com', '+1-086-709-5530x6149', '2024-08-23', 'Gold'),
(47, 'Jared', 'Davis', 'mooretodd@cook.com', '001-069-544-8807x2397', '2022-08-29', 'Bronze'),
(48, 'James', 'Soto', 'patriciaburns@yahoo.com', '129.857.8193x421', '2023-01-27', 'Gold'),
(49, 'Cody', 'Kline', 'bradfordleslie@hotmail.com', '+1-710-706-3703x7998', '2022-06-28', 'Bronze'),
(50, 'Jennifer', 'Perkins', 'austinowens@hill.info', '762.009.1882', '2020-10-19', 'Silver');

select * from assignment.customers;

-- Inserting data into assignment.Products table
INSERT INTO assignment.Products 
(product_id, product_name, category, price, supplier, stock_quantity) 
VALUES
(1, 'Laptop', 'Electronics', 999.99, 'Dell', 50),
(2, 'Smartphone', 'Electronics', 799.99, 'Samsung', 150),
(3, 'Washing Machine', 'Appliances', 499.99, 'LG', 30),
(4, 'Headphones', 'Accessories', 199.99, 'Sony', 100),
(5, 'Refrigerator', 'Appliances', 1200.00, 'Whirlpool', 40),
(6, 'Smart TV', 'Electronics', 1500.00, 'Samsung', 20),
(7, 'Microwave', 'Appliances', 180.00, 'Panasonic', 75),
(8, 'Blender', 'Appliances', 50.00, 'Ninja', 200),
(9, 'Gaming Console', 'Electronics', 350.00, 'Sony', 60),
(10, 'Wireless Mouse', 'Accessories', 25.00, 'Logitech', 300),
(11, 'Keyboard', 'Accessories', 49.99, 'Logitech', 250),
(12, 'Monitor', 'Electronics', 250.00, 'Acer', 120),
(13, 'External Hard Drive', 'Electronics', 80.00, 'Seagate', 90),
(14, 'Tablet', 'Electronics', 400.00, 'Apple', 70),
(15, 'Smartwatch', 'Electronics', 199.99, 'Apple', 120);

select * from assignment.products;

-- Inserting data into assignment.Sales table
INSERT INTO assignment.Sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES
(1, 1, 1, 1, '2023-07-15', 999.99),
(2, 2, 2, 2, '2023-08-20', 1599.98),
(3, 3, 3, 1, '2023-09-10', 499.99),
(4, 4, 4, 3, '2023-07-25', 599.97),
(5, 5, 5, 1, '2023-06-18', 1200.00),
(6, 6, 6, 1, '2023-10-05', 1500.00),
(7, 7, 7, 1, '2023-08-01', 180.00),
(8, 8, 8, 2, '2023-09-02', 100.00),
(9, 9, 9, 1, '2023-10-10', 350.00),
(10, 10, 10, 3, '2023-11-12', 75.00),
(11, 11, 11, 2, '2023-12-01', 100.00),
(12, 12, 12, 1, '2023-12-07', 250.00),
(13, 13, 13, 1, '2024-01-15', 80.00),
(14, 14, 14, 1, '2024-02-05', 400.00),
(15, 15, 15, 1, '2024-01-05', 199.99);

-- Inserting data into assignment.Inventory table
INSERT INTO assignment.inventory 
(product_id, stock_quantity) 
VALUES
(1, 50),
(2, 150),
(3, 30),
(4, 100),
(5, 40),
(6, 20),
(7, 75),
(8, 200),
(9, 60),
(10, 300),
(11, 250),
(12, 120),
(13, 90),
(14, 70),
(15, 120);

SET search_path TO ASSIGNMENT;

-- Select all data from assignment.Customers table
SELECT * FROM assignment.Customers;

-- Select all data from assignment.Products table
SELECT * FROM assignment.Products;

-- Select all data from assignment.Sales table
SELECT * FROM assignment.Sales;

-- Select all data from assignment.Inventory table
SELECT * FROM assignment.Inventory;


-- =====================================================
-- PART 2
-- =====================================================
-- =====================================================
-- SUBQUERY QUESTIONS
-- =====================================================

-- 51. Which customers have spent more than the average spending of all customers?
select c.first_name, c.last_name, SUM(s.total_amount) as total_spent
from sales s 
join customers c on s.customer_id = c.customer_id
group by c.first_name, c.last_name
having sum(s.total_amount) > (select avg(total_amount) from sales);

-- 52. Which products are priced higher than the average price of all products?
select product_name, price
from products 
where price > (select avg(price) from products);

-- 53. Which customers have never made a purchase?
select c.first_name, c.last_name
from customers c
where not exists (
	select 1 from sales s where s.customer_id = c.customer_id);

-- 54. Which products have never been sold?
select p.product_name
from products p
where not exists (
	select 1 from sales s where s.product_id = p.product_id);

-- 55. Which customer made the single most expensive purchase?
select c.first_name, c.last_name, s.total_amount 
from sales s 
join customers c on s.customer_id = c.customer_id 
where s.total_amount = (select max(total_amount) from sales);

-- 56. Which products have total sales greater than the average total sales across all products?
select p.product_name, s.total_amount   
from products p 
join sales s on s.product_id = p.product_id
group by p.product_id, s.total_amount 
having SUM(s.total_amount) > (select avg(total_amount) from sales)
order by total_amount desc;

-- 57. Which customers registered earlier than the average registration date?
select first_name, last_name, registration_date
from customers
where registration_date < (select TO_TIMESTAMP(AVG(EXTRACT(EPOCH from registration_date)))::DATE
from customers);

-- 58. Which products have a price higher than the average price within their own category?
select p.product_name, p.category, p.price
from products p
where price > (select avg(price) from products group by p.category);

-- 59. Which customers have spent more than the customer with ID = 10?
select customer_id, SUM(total_amount) as total_spent
from sales
group by customer_id
having SUM(total_amount) > (select sum(total_amount) from sales where customer_id = 10);

-- 60. Which products have total quantity sold greater than the overall average quantity sold?
select p.product_name, s.Quantity_sold 
from sales s
join products p on s.product_id = p.product_id 
where quantity_sold > (select AVG(quantity_sold) from sales);


-- =====================================================
-- COMMON TABLE EXPRESSIONS (CTEs)
-- =====================================================

-- 61. Create an intermediate result that calculates the total amount spent by each customer,
--     then determine which customers are the top 5 highest spenders.
with top_spenders as (
	select c.first_name, c.last_name, sum(total_amount) as total_spent from sales s
	join customers c on s.customer_id = c.customer_id 
	group by c.first_name, c.last_name
)
select * from top_spenders
order by total_spent desc 
limit 5;

-- 62. Create an intermediate result that calculates total quantity sold per product,
--     then determine which products are the top 3 most sold.
with top_selling as (
select p.product_name, sum(quantity_sold) as total_sold from sales s
join products p on s.product_id = p.product_id 
group by p.product_name 
)
select * from top_selling
order by total_sold desc
limit 3;

-- 63. Create an intermediate result showing total sales per product category,
--     then determine which category generates the highest revenue.
with top_category as(
select p.category, sum(total_amount) as total_sold from sales s
join products p on s.product_id = p.product_id 
group by p.category
)
select * from top_category
order by total_sold desc 
limit 1;

-- 64. Create an intermediate result that calculates the number of purchases per customer,
--     then identify customers who purchased more than twice.
with purchases as (
select customer_id, count(sale_id) as no_purchases
from sales
group by customer_id
)
select c.first_name, c.last_name, p.no_purchases
from purchases p
join customers c on p.customer_id = c.customer_id
where  p.no_purchases > 2;

-- 65. Create an intermediate result that calculates the total quantity sold per product,
--     then determine which products sold more than the average quantity sold.
with total_sold as (
select s.product_id,  sum(s.quantity_sold) as total_product
from sales s
group by s.product_id
)
select t.product_id, t.total_product
from total_sold t
where t.total_product > (select AVG(quantity_sold) from sales);

-- 66. Create an intermediate result that calculates total spending per customer,
--     then determine which customers spent more than the average spending.
with spending as (
select c.first_name, c.last_name, sum(total_amount) as total_spent 
from  sales s
join customers c on s.customer_id = c.customer_id 
group by  c.first_name, c.last_name
)
select *
from spending 
where total_spent > (select AVG(total_amount) from sales);

-- 67. Create an intermediate result that calculates total revenue per product,
--     then list the products ordered from highest revenue to lowest.
with total_revenue as (
select product_id, SUM(total_amount) as revenue
from sales
group by product_id
)
select * from total_revenue
order by revenue desc;

-- 68. Create an intermediate result showing monthly sales totals,
--     then determine which month had the highest revenue.
with highest_revenue as (
select date_trunc('month', sale_date) as sale_month, SUM(total_amount) as revenue
from sales s 
group by sale_month
)
select sale_month, revenue
from highest_revenue 
order by revenue desc
limit 1;

-- 69. Create an intermediate result that calculates the number of sales per product,
--     then determine which products were purchased by more than three customers.
with purchases as (select p.product_name e, count(distinct customer_id) as customer_count 
from sales s
left join products p  on s.product_id  = p.product_id  
group by p.product_id 
)
select *
from purchases 
where customer_count > 3;

-- 70. Create an intermediate result showing total quantity sold per product,
--     then identify products that sold less than the average quantity sold.
with total_sold as (
select s.product_id,  sum(s.quantity_sold) as total_product
from sales s
group by s.product_id
)
select t.product_id, t.total_product
from total_sold t
where t.total_product < (select AVG(quantity_sold) from sales);

-- =====================================================
-- WINDOW FUNCTION QUESTIONS
-- =====================================================

-- 71. Rank customers based on the total amount they have spent.
select c.first_name, c.last_name, s.customer_id, s.total_amount,
rank() over (order by total_amount desc) as customer_rank
from sales s
left join customers c on c.customer_id = s.customer_id
group by c.first_name, c.last_name, s.customer_id, s.total_amount ;

-- 72. Rank products based on total quantity sold.
select p.product_name, s.product_id, s.quantity_sold,
dense_rank() over (order by quantity_sold desc) as product_rank 
from  sales s
right join products p on s.product_id = p.product_id
group by p.product_name, s.product_id, s.quantity_sold;

-- 73. Identify the 3rd highest spending customer.
with ranking as (select c.first_name, c.last_name, s.customer_id, s.total_amount,
rank() over (order by total_amount desc) as customer_rank
from sales s
left join customers c on c.customer_id = s.customer_id
group by c.first_name, c.last_name, s.customer_id, s.total_amount)
select * from ranking 
where customer_rank = 3;

-- 74. Identify the 2nd most expensive product.
with prices as (select product_name, price,
rank() over (order by price desc) as expensive
from products p)
select *from prices 
where expensive = 2;

-- 75. Show the ranking of products within each category based on price.
select category, product_name, price,
rank() over (partition by category order by price desc) as ranking
from products;

-- 76. Show the ranking of customers based on the number of purchases they made.
select customer_id, 
dense_rank() over (partition by customer_id order by count(sale_id)) as orders
from sales
group by customer_id;

-- 77. Show the running total of sales amounts ordered by sale_date.
select sale_date, total_amount,
sum(total_amount) over (order by sale_date asc) as running_total
from sales
order by sale_date; 

-- 78. Show the previous sale amount for each sale ordered by sale_date.
select sale_id, sale_date, total_amount,
lag(total_amount) over (order by sale_date) as previous_amount
from sales;

-- 79. Show the next sale amount for each sale ordered by sale_date.
select sale_id, sale_date, total_amount,
lead(total_amount) over (order by sale_date) as next_amount
from sales;

-- 80. Divide customers into 4 groups based on total spending.
select customer_id, SUM(total_amount) as total,
ntile(4) over (order by SUM(total_amount) desc) as groups
from sales
group by customer_id;

-- =====================================================
-- ADVANCED ANALYTICAL QUESTIONS
-- =====================================================

-- 81. Which customers bought products in more than one category?
select c.first_name, c.last_name, c.customer_id
from customers c 
join sales s on s.customer_id = c.customer_id
join products p on s.product_id = p.product_id 
group by c.first_name, c.last_name, c.customer_id 
having count(distinct category) > 1;

-- 82. Which customers purchased products within 7 days of registering?
select c.customer_id, c.first_name, c.last_name, c.registration_date, s.sale_date
from customers c 
join sales s on s.customer_id = c.customer_id
where s.sale_date <= c.registration_date + INTERVAL '7 days'
and s.sale_date >= c.registration_date;

-- 83. Which products have lower stock remaining than the average stock quantity?
select p.product_name, p.stock_quantity 
from products p
where p.stock_quantity < (select avg(stock_quantity) from products);

-- 84. Which customers purchased the same product more than once?
select c.customer_id, c.first_name, c.last_name, s.product_id, count(*) as times_purchased
from sales s
join customers c on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name, s.product_id
having count(*) > 1;

-- 85. Which product categories generated the highest total revenue?
select p.category, SUM(s.total_amount) as total_revenue
from sales s
join products p on s.product_id = p.product_id
group by p. category 
order by total_revenue desc;

-- 86. Which products are among the top 3 most sold products?
select p.product_name, sum(s.quantity_sold) as total_sold
from sales s 
left join products p on s.product_id = p.product_id
group by p.product_name
order by total_sold desc
limit 3;

-- 87. Which customers purchased the most expensive product?
select c.first_name, c.last_name, p.price 
from sales s
join products p on s.product_id = p.product_id
join customers c on s.customer_id = c.customer_id 
order by p.price desc
limit 1;

-- 88. Which products were purchased by the highest number of unique customers?
select p.product_name, count(distinct customer_id) as unique_cust
from sales s
left join products p on s.product_id = p.product_id
group by p.product_id 
order by unique_cust desc
limit 1;

-- 89. Which customers made purchases above the average sale amount?
select c.first_name, c.last_name, s.total_amount 
from sales s
left join customers c on s.customer_id = c.customer_id
where total_amount > (select avg(total_amount) from sales);

-- 90. Which customers purchased more products than the average quantity purchased per customer?
select c.first_name, c.last_name, sum(s.quantity_sold) as total_sold
from customers c
left join sales s on s.customer_id = c.customer_id
group by c.first_name, c.last_name
Having SUM(s.quantity_sold ) > (select avg(quantity_sold) from sales);


-- =====================================================
-- ADVANCED WINDOW + ANALYTICAL PROBLEMS
-- =====================================================

-- 91. Which customers rank in the top 10% of spending?
with ranking as (select c.first_name, c.last_name, sum(s.total_amount) as spending,
ntile(10) over (order by sum(s.total_amount) desc) as rank
from sales s 
join customers c on s.customer_id =	c.customer_id 
group by c.first_name, c.last_name)

select * from ranking
where rank = 1;

-- 92. Which products contribute to the top 50% of total revenue?

with total_revenue as (select s.product_id, p.product_name,s.total_amount,  
	sum(s.total_amount) over (order by s.total_amount desc) as running_total,
	SUM(s.total_amount) over () as revenue
from sales s 
join products p on s.product_id = p.product_id 
group by s.product_id, p.product_name, s.total_amount)

select * from total_revenue
where running_total - total_amount  < (revenue * 0.5)
;

-- 93. Which customers made purchases in consecutive months?
with saleby_month as (select distinct customer_id,
date_trunc('month', sale_date) as sale_month
from sales),

months as (select customer_id, sale_month,
lag(sale_month) over (partition by customer_id order by sale_month) as prev_month
from saleby_month)

select sm.customer_id, c.first_name, c.last_name, sm.sale_month
from saleby_month sm
left join customers c  on c.customer_id = sm.customer_id
left join months m on m.customer_id = sm.customer_id
where sm.sale_month = m.prev_month + INTERVAL '1 month';

-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?
SELECT p.product_name, p.stock_quantity,
       COALESCE(SUM(s.quantity_sold), 0) AS total_sold,
       p.stock_quantity - COALESCE(SUM(s.quantity_sold), 0)       AS stock_vs_sold_diff
FROM products p
LEFT JOIN sales s ON s.product_id = p.product_id
GROUP BY p.product_id, p.product_name, p.stock_quantity
ORDER BY ABS(p.stock_quantity - COALESCE(SUM(s.quantity_sold), 0)) DESC;


-- 95. Which customers have spending above the average spending of their membership tier?
WITH customer_totals AS (
    SELECT s.customer_id,
           c.first_name, c.last_name,
           c.membership_status,
           SUM(s.total_amount) AS total_spent
    FROM sales s
    JOIN customers c ON c.customer_id = s.customer_id
    GROUP BY s.customer_id, c.first_name, c.last_name, c.membership_status
),
tier_avg AS (
    SELECT membership_status,
           AVG(total_spent) AS avg_tier_spending
    FROM customer_totals
    GROUP BY membership_status
)
SELECT ct.first_name, ct.last_name, ct.membership_status,
       ct.total_spent, ta.avg_tier_spending
FROM customer_totals ct
JOIN tier_avg ta ON ta.membership_status = ct.membership_status
WHERE ct.total_spent > ta.avg_tier_spending;


-- 96. Which products have higher sales than the average sales within their category?
with prod_sales as (select p.product_name, p.category, sum(total_amount) as total_sales
from products p
left join sales s on s.product_id = p.product_id 
group by p.product_name, p.category),

cat_avg as (select category, avg(total_sales) as avg_sales
from prod_sales 
group by category
)

select ps.product_name, ps.category, ps.total_sales, ca.avg_sales 
from prod_sales ps
left join cat_avg ca on ca.category = ps.category
where ps.total_sales > ca.avg_sales;

-- 97. Which customer made the largest single purchase relative to their total spending?
WITH customer_totals AS (
    SELECT customer_id, SUM(total_amount) AS total_spent
    FROM sales
    GROUP BY customer_id
)
SELECT c.first_name, c.last_name,
       s.total_amount AS single_purchase,
       ct.total_spent,
       ROUND((s.total_amount / ct.total_spent * 100)::NUMERIC, 2) AS pct_of_total
FROM sales s
JOIN customer_totals ct ON ct.customer_id = s.customer_id
JOIN customers c        ON c.customer_id  = s.customer_id
ORDER BY pct_of_total DESC
LIMIT 1;

-- 98. Which products rank among the top 3 most sold products within each category?
with prod_sales as (select s.product_id, p.product_name, p.category, sum(quantity_sold) as total_sold
from sales s 
left join products p on p.product_id = s.product_id 
group by s.product_id, p.product_name, p.category),

ranked as (select *,
rank() over (partition by category order by total_sold desc) as cat_rank
from prod_sales)

select * 
from ranked
where cat_rank <= 3;

-- 99. Which customers are tied for the highest total spending?
with total_spent as (select s.customer_id, c.first_name, c.last_name, sum(s. total_amount) as spending
from sales s
left join customers c on c.customer_id = s.customer_id 
group by s.customer_id, c.first_name, c.last_name
order by spending desc)

select customer_id, first_name, last_name, spending
from total_spent
where spending = (select MAX(spending) from total_spent);

-- 100. Which products generated sales every year present in the dataset?
select s.product_id, p.product_name
from sales s
left join products p on p.product_id = s.product_id
group by s.product_id, p.product_id 
having count(distinct extract (year from sale_date)) = (select count(distinct extract(year from sale_date)) from sales);

