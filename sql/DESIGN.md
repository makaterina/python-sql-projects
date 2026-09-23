# Design Document
Project Name: Italian Restaurant Database Management System

By MAKA MARTIASHVILI

[Video Demo](https://youtu.be/hoduoti85ck)

## Scope

* What is the purpose of your database?
To manage a restaurant's operations, including menu items, categories, tables, and customer orders.

* Which people, places, things, etc. are you including in the scope of your database?
Categories, Italian dishes/menu items, restaurant tables, orders, and order items (quantities).

* Which people, places, things, etc. are *outside* the scope of your database?
Staff management, employee salaries, raw ingredient inventory tracking, and payment processing (credit card transactions).

## Functional Requirements

* What should a user be able to do with your database?
Add and organize menu categories and Italian dishes, manage table capacities, record orders placed at specific tables, and view the full menu or order details using SQL queries and joins.

* What's beyond the scope of what a user should be able to do with your database?
Managing online reservations, tracking delivery drivers, or handling customer loyalty programs.

## Representation

### Entities

* Which entities will you choose to represent in your database?
I choose five main entities: categories, dishes, tables, orders, and order_items.

* What attributes will those entities have?
categories: id, name
dishes: id, name, price, category_id
tables: id, table_number, capacity
orders: id, table_id, order_time, status
order_items: id, order_id, dish_id, quantity

* Why did you choose the types you did?
INTEGER is used for IDs, table numbers, capacities, and quantities for precise whole-number counting.
REAL is used for dish prices to handle decimal currency values accurately.
TEXT is used for names, categories, and order statuses for descriptive text.
DATETIME is used for order timestamps to automatically track exact order times.

* Why did you choose the constraints you did?
PRIMARY KEY AUTOINCREMENT ensures each record has a unique, automatically generated identifier.
NOT NULL prevents essential fields (like names and prices) from being left empty.
FOREIGN KEY constraints maintain referential integrity between related tables.
DEFAULT constraints provide standard fallback values (such as a default quantity of 1 or a default order status).

### Relationships

In this section you should include your entity relationship diagram and describe the relationships between the entities in your database.

The database establishes the following relationships:
Each category can contain multiple dishes (One-to-Many between categories and dishes).
Each table can have multiple orders over time (One-to-Many between tables and orders).
Orders and dishes have a Many-to-Many relationship, connected through the junction table order_items, allowing an order to include multiple dishes and a dish to be ordered multiple times.

## Optimizations

* Which optimizations (e.g., indexes, views) did you create? Why?
Primary keys (id) are automatically indexed by SQLite to speed up lookups and JOIN operations across related tables. Foreign key constraints are enforced to prevent orphan records and guarantee data consistency.

## Limitations

* What are the limitations of your design?
The database schema focuses purely on menu and order management. It does not track employee work hours, staff roles, raw ingredient inventory, or payment processing details (such as credit card transactions or split bills).

* What might your database not be able to represent very well?
It cannot easily handle complex custom dish modifications (e.g., "extra cheese, no onions" for a specific item) or real-time kitchen inventory deduction when an order is placed, as it lacks an ingredient-level stock tracking system.
