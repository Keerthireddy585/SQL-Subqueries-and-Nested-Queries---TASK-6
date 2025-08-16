# Task 6 - SQL Subqueries and Nested Queries

## Overview
This task demonstrates different types of SQL subqueries:
- Scalar subqueries
- Correlated subqueries
- Subqueries inside IN, EXISTS, SELECT, and FROM

## Tools Used
- MySQL Workbench 

## Tables Used
1. Customers (Customer_ID, Customer_Name, Country)
2. Orders (Order_ID, Customer_ID, Product_Name, Order_Date)

## Queries Demonstrated
1. Scalar subquery (earliest order customer)
2. IN subquery (customers with orders)
3. EXISTS subquery (customers with orders)
4. Correlated subquery (customers with >1 order)
5. Subquery in SELECT (customer order counts)

## How to Run
1. Create and insert data into `Customers` and `Orders` (from Task 5).
2. Run queries from `task6.sql`.
3. View results in Workbench
4. Screenshots are saved in the `Task6 screenshots/` folder.
