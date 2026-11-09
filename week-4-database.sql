
-- ==========================================
-- WEEK 4 DATABASE ASSIGNMENT
-- Topic: Advanced SQL Queries and Aggregations
-- Author: Thijin Simon Duop
-- Database: sales
-- ==========================================

-- Select the sales database
USE sales;


-- QUESTION 1:
-- Find total payment amount for each payment date
-- Sort by latest payment date and show only 5 results

SELECT
    paymentDate,
    SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;


-- QUESTION 2:
-- Find the average credit limit for each customer
-- Display customer name, country, and average credit limit

SELECT
    customerName,
    country,
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;


-- QUESTION 3:
-- Find the total price of products ordered
-- Group by product code and quantity ordered

SELECT
    productCode,
    quantityOrdered,
    SUM(priceEach * quantityOrdered) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;


-- QUESTION 4:
-- Find the highest payment amount for each check number

SELECT
    checkNumber,
    MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;
