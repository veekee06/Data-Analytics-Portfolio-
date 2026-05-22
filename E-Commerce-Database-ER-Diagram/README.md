E-Commerce Database ER Diagram Project

Project Overview

This project is a simple Entity Relationship Diagram (ERD) designed using  draw.io to model the database structure of an e-commerce/order management system.
The diagram illustrates how customers place orders for products and how the relationships between the database tables are connected using primary and foreign keys.

Objectives

The purpose of this project is to:

* Understand database design concepts
* Demonstrate entity relationships
* Practice normalization basics
* Visualize how tables interact in a relational database system
* Build a foundational structure for an online store database

Entities and Attributes

1. Customers Table

Stores information about customers using the platform.

Attributes

Field - Customer ID (PK)	

Description - Unique identifier for each customer

Field - Name	

Description - Customer’s full name

Field - Email	

Description - Customer’s email address

Field - Phone	

Description - Customer’s phone number

2. Products Table

Contains information about available products.

Attributes

Field - Product ID (PK)	

Description - Unique identifier for each product

Field - Product Name	

Description - Name of the product

Field - Price	

Description - Cost of the product

3. Orders Table

Stores order transactions made by customers.

Attributes

Field - Order ID (PK)	

Description - Unique identifier for each order

Field - Customer ID (FK1)	

Description - References the Customers table

Field - Product ID (FK2)	

Description - References the Products table

Field - Order Date	

Description - Date the order was placed

Field - Quantity	

Description - Number of products ordered

Field - Total Amount	

Description - Total cost of the order

Relationships

Customers → Orders

* One customer can place multiple orders.
* Each order belongs to one customer.

Relationship Type:

One-to-Many (1:M)

Products → Orders

* One product can appear in multiple orders.
* Each order references one product.

Relationship Type:

One-to-Many (1:M)

Primary Keys and Foreign Keys

Primary Keys

Primary keys uniquely identify records in each table.

* Customer ID
* Product ID
* Order ID

Foreign Keys

Foreign keys establish relationships between tables.

* Customer ID in Orders references Customers
* Product ID in Orders references Products

Tools Used

* draw.io (diagrams.net) — Used to create the ER diagram

Possible Improvements

Future improvements that can be added to this database design include:

* Adding a Payments table
* Adding Shipping Information
* Supporting multiple products per order using an Order Details table
* Including inventory/stock management
* Adding user authentication and roles

Conclusion

This project demonstrates a basic relational database structure for an e-commerce system. The ER diagram helps visualize how customers, products, and orders interact within the database while maintaining data integrity through primary and foreign keys.
