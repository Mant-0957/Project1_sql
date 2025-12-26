# Project1_sql

A SQL database project focused on building and querying a relational database to analyze meaningful data using SQL.  
This repository contains SQL scripts, database schema, queries, and results demonstrating practical SQL skills such as table creation, data manipulation, joins, aggregations, and data analysis.

---

## 📌 Project Overview

This project showcases the use of **Structured Query Language (SQL)** to perform various database operations and extract insights from relational data. It includes:

- Creating and defining database tables
- Inserting and updating data
- Writing SQL queries to retrieve and analyze information
- Exploring relationships between tables using joins
- Using aggregate functions, filtering & sorting

This repository is especially suitable for beginners and intermediate learners looking to strengthen their SQL and database management skills. :contentReference[oaicite:0]{index=0}

---

## 🧠 Technologies & Tools

The following tools & technologies were used:

- **SQL** (Structured Query Language)
- Database System: `<e.g., MySQL / SQLite / PostgreSQL>`
- Optional: `<Tool for running the SQL e.g., DB Browser for SQLite / MySQL Workbench>`

---

## 📁 Repository Structure

---

## 🚀 Setup & Usage

### 1. Clone the repository

```bash
git clone https://github.com/Mant-0957/Project1_sql.git
cd Project1_sql
sqlite3 your_database.db < schema.sql
sqlite3 your_database.db < data.sql
sqlite3 your_database.db < queries.sql
-- Retrieve all customers
SELECT * FROM Customers;

-- Count number of orders per customer
SELECT customer_id, COUNT(*) AS total_orders
FROM Orders
GROUP BY customer_id;

-- Join customers and orders data
SELECT c.customer_name, o.order_date
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id;





