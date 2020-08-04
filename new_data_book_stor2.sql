
DROP DATABASE  IF EXISTS book_store_2 ;
CREATE DATABASE IF NOT EXISTS book_store_2 ;

USE book_store_2;


CREATE TABLE customers
(
customer_id smallint unsigned NOT NULL AUTO_INCREMENT,
first_name varchar(45) NOT NULL, 
last_name varchar(45) NOT NULL,
mobile int unsigned NOT NULL,
join_date date,  -- customer can be a customer even without ordering a book
PRIMARY KEY (customer_id)
);

CREATE TABLE authors
(
author_id smallint unsigned NOT NULL AUTO_INCREMENT,
first_name varchar(45),
last_name varchar(45),
PRIMARY KEY (author_id)
);

CREATE TABLE translators
(
translator_id smallint unsigned NOT NULL AUTO_INCREMENT,
first_name varchar(45),
last_name varchar(45),
PRIMARY KEY (translator_id)
);

CREATE TABLE book_provider 
(
provider_id smallint unsigned NOT NULL AUTO_INCREMENT,
provider_name varchar(45) NOT NULL,
provider_email varchar(45), -- can be null
PRIMARY KEY (provider_id)
);

CREATE TABLE books 
(
book_id smallint unsigned NOT NULL AUTO_INCREMENT,
title varchar(45) NOT NULL,
pages smallint unsigned NOT NULL,
weight float NOT NULL,
book_status varchar(45) NOT NULL,
price smallint unsigned NOT NULL,
amount smallint unsigned NOT NULL,
amount_in_store smallint unsigned NOT NULL,
amount_in_storage smallint unsigned NOT NULL,
available_date date,
PRIMARY KEY (book_id)
-- FOREIGN KEY (amuont_books_id) REFERENCES amuont_books_fer_date (amuont_books_id)
);


CREATE TABLE book_translators 
(book_id smallint unsigned NOT NULL, 
translator_id smallint unsigned NOT NULL,
PRIMARY KEY (translator_id,book_id),
 FOREIGN KEY (book_id) REFERENCES books (book_id),
 FOREIGN KEY (translator_id) REFERENCES translators (translator_id)
);


CREATE TABLE book_authors 
(book_id smallint unsigned NOT NULL, 
author_id smallint unsigned NOT NULL,
PRIMARY KEY (author_id,book_id),
 FOREIGN KEY (book_id) REFERENCES books (book_id),
 FOREIGN KEY (author_id) REFERENCES authors (author_id)
);


CREATE TABLE employees
(
employee_id smallint unsigned NOT NULL AUTO_INCREMENT,
first_name varchar(45) NOT NULL,
last_name varchar(45),
address varchar(45) NOT NULL,
phone int unsigned NOT NULL,
employee_status varchar(45) NOT NULL, -- working\ not working
end_working_date date,
start_working_date date,
PRIMARY KEY (employee_id)
);

CREATE TABLE orders  
(
order_id smallint unsigned NOT NULL AUTO_INCREMENT,
customer_id smallint unsigned NOT NULL,
-- book_id smallint unsigned NOT NULL,
employee_id smallint unsigned NOT NULL,
order_status varchar(45) NOT NULL,  -- pending/on the way/waiting pickup/delivered/
payment_method varchar(45),
-- shipment varchar(45) NOT NULL,
price_for_order float NOT NULL,
amount smallint NOT NULL,
order_complited varchar(45) NOT NULL,
order_date date ,
pyment_date date ,
PRIMARY KEY (order_id),
FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
-- FOREIGN KEY (book_id) REFERENCES books (book_id),
FOREIGN KEY (employee_id) REFERENCES employees (employee_id)
);


CREATE TABLE publishers
(
publisher_id smallint unsigned NOT NULL AUTO_INCREMENT,
publisher_name varchar(45) NOT NULL,
publisher_date date NOT NULL,
edition smallint unsigned,
PRIMARY KEY (publisher_id)
);

CREATE TABLE publisher
(
publisher_book_id smallint unsigned NOT NULL AUTO_INCREMENT,
publisher_id smallint unsigned NOT NULL,
book_id smallint unsigned NOT NULL,
PRIMARY KEY (publisher_book_id),
 FOREIGN KEY (publisher_id) REFERENCES publishers (publisher_id),
 FOREIGN KEY (book_id) REFERENCES books (book_id)
);




CREATE TABLE book_list_for_orders 
(book_id smallint unsigned NOT NULL, 
order_id smallint unsigned NOT NULL,
-- order_date date ,
delivery_id smallint unsigned NOT NULL,
publisher_book_id smallint unsigned NOT NULL,
-- PRIMARY KEY (book_id,order_id),
 FOREIGN KEY (order_id) REFERENCES orders (order_id),
 FOREIGN KEY (book_id) REFERENCES books (book_id),
  FOREIGN KEY (publisher_book_id) REFERENCES publisher (publisher_book_id)
);

CREATE TABLE delivery  
(
delivery_id smallint unsigned NOT NULL AUTO_INCREMENT,
address varchar(45) NOT NULL,
num_address smallint unsigned NOT NULL,
city varchar(45) NOT NULL,
delivery_date date ,
PRIMARY KEY (delivery_id)
);

CREATE TABLE delivery_for_orders 
(order_id smallint unsigned NOT NULL, 
delivery_id smallint unsigned NOT NULL,
delivery_date date NOT NULL,
delivery_status varchar(45) NOT NULL,
shipment varchar(45) NOT NULL,
ExtraXpress smallint unsigned NOT NULL,
PRIMARY KEY (delivery_id,order_id),
 FOREIGN KEY (order_id) REFERENCES orders (order_id),
 FOREIGN KEY (delivery_id) REFERENCES delivery (delivery_id)
);


CREATE TABLE orders_from_provider
(
order_provider_id smallint unsigned NOT NULL AUTO_INCREMENT,
provider_id smallint unsigned NOT NULL,
book_id smallint unsigned NOT NULL,
employee_id smallint unsigned NOT NULL,
purchas_price smallint unsigned NOT NULL,
purchas_date date NOT NULL,
amount smallint unsigned,
set_amount_in_store smallint unsigned,
set_amount_in_storage smallint unsigned,
PRIMARY KEY (order_provider_id),
FOREIGN KEY (provider_id) REFERENCES book_provider (provider_id),
FOREIGN KEY (book_id) REFERENCES books (book_id),
FOREIGN KEY (employee_id) REFERENCES employees (employee_id)
);


CREATE TABLE employees_paycheck
(
paycheck_id smallint unsigned NOT NULL AUTO_INCREMENT,
employee_id smallint unsigned NOT NULL,
paycheck_date date NOT NULL,
work_hours smallint unsigned ,
gross_salary smallint unsigned NOT NULL,
net_salary smallint unsigned NOT NULL,
PRIMARY KEY (paycheck_id),
FOREIGN KEY (employee_id) REFERENCES employees (employee_id)
);


CREATE TABLE managment
(
managment_id smallint unsigned NOT NULL AUTO_INCREMENT,
month_ smallint unsigned NOT NULL,
year_ smallint unsigned NOT NULL,
pure_profit   smallint unsigned, 
profit_after_payments  smallint unsigned, 
paycheck_employees smallint unsigned NOT NULL,  -- need only the total not each one 
-- order_id smallint unsigned NOT NULL,
rent  smallint unsigned NOT NULL,
weather smallint unsigned,
electricity smallint unsigned NOT NULL,
deliveries_bill smallint unsigned NOT NULL,
phone_bill smallint unsigned NOT NULL,
mobile_bill smallint unsigned NOT NULL,
misc varchar(45)  NOT NULL,
PRIMARY KEY (managment_id)
);


CREATE TABLE contacts
(
contact_id smallint unsigned NOT NULL AUTO_INCREMENT,
contact_date date  NOT NULL,
days_pass smallint unsigned NOT NULL,
purchased varchar(45) NOT NULL,
order_id smallint unsigned NOT NULL,

PRIMARY KEY (contact_id),
FOREIGN KEY (order_id) REFERENCES orders (order_id)
);



CREATE TABLE manager_control

(
order_provider_id  smallint unsigned default 0,
order_id smallint unsigned default 0,
managment_id smallint unsigned,
 FOREIGN KEY (order_id) REFERENCES orders (order_id),
 FOREIGN KEY (order_provider_id) REFERENCES orders_from_provider (order_provider_id),
  FOREIGN KEY (managment_id) REFERENCES managment (managment_id)
);

