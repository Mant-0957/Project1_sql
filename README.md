# Project1_sql

This repository contains a SQL database project designed for an **e-commerce / order management system**.  
It stores information about customers, their orders, products available for sale, and detailed records of the products included in each order. :contentReference[oaicite:1]{index=1}

---

## 📌 Project Description

The goal of this project is to **design a relational database** and write SQL scripts to create tables, insert data, and run queries that demonstrate key database operations.  
This project highlights practical SQL skills including:

- Creating tables and defining relationships
- Inserting and managing data
- Querying data with JOINs and filters
- Aggregating and analyzing data

---

## 📂 Repository Structure


---

## 🛠️ Tools & Technologies Used

- **SQL** — Structured Query Language
- Database engine of your choice (e.g., MySQL, PostgreSQL, SQLite)

*(The SQL script can be run in any standard SQL environment)*

---

## 🚀 Getting Started

To use the project:

1. **Clone the repository**
   ```bash
   git clone https://github.com/Mant-0957/Project1_sql.git
   cd Project1_sql
-- Example: List all customers
SELECT * FROM Customers;

-- Example: Count orders per customer
SELECT customer_id, COUNT(*) AS total_orders
FROM Orders
GROUP BY customer_id;

-- Example: Join customers with their orders
SELECT c.customer_name, o.order_date
FROM Customers c
JOIN Orders o
  ON c.customer_id = o.customer_id;
