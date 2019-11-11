CREATE TABLE flights (
    id SERIAL PRIMARY KEY,
    origin VARCHAR NOT NULL,
    destination VARCHAR NOT NULL,
    duration INTEGER NOT NULL
);

CREATE TABLE passengers (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(255), flight_id INTEGER REFERENCES flights);# Mysql
CREATE TABLE reviews (
    id SERIAL PRIMARY KEY,
    rating VARCHAR NOT NULL,
    message VARCHAR NOT NULL,
    isbn VARCHAR NOT NULL,
    name VARCHAR NOT NULL,
    review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    book_id INTEGER REFERENCES books
    );


    CREATE TABLE customer(
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(60) NOT NULL,
    company VARCHAR(60) NULL,
    street VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state CHAR(2) NOT NULL DEFAULT "PA",
    zip_code MEDIUMINT UNSIGNED NOT NULL,
    phone VARCHAR(20) NOT NULL,
    birthdate DATE NULL,
    sex ENUM('F', 'M') NOT NULL,
    date_enetered TIMESTAMP NOT NULL,
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
    );


    CREATE TABLE sales_person(
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
email VARCHAR(30) NOT NULL,
street VARCHAR(50) NOT NULL,
city VARCHAR(40) NOT NULL,
state CHAR(2) NOT NULL DEFAULT "CA",
zip_code MEDIUMINT UNSIGNED NOT NULL,
phone VARCHAR(20) NOT NULL,
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE product_type(
name VARCHAR(30) NOT NULL,
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
);



CREATE TABLE product(
type_id INT UNSIGNED NOT NULL,
FOREIGN KEY (type_id) REFERENCES product_type(id),
name VARCHAR(30) NOT NULL,
supplier VARCHAR(30) NOT NULL,
description BLOB NOT NULL,
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE item (
cust_id INT UNSIGNED NOT NULL,
sales_person_id INT UNSIGNED NOT NULL,
 FOREIGN KEY (cust_id) REFERENCES customer(id),
 FOREIGN KEY (sales_person_id) REFERENCES sales_person(id),
 time_order_taken TIMESTAMP NOT NULL,
 purchase_order_number INT NOT NULL,
 credit_card_number VARCHAR(16) NOT NULL,
 credit_card_exper_month TINYINT NOT NULL,
 credit_card_exper_day TINYINT NOT NULL,
 credit_card_secret_code TINYINT NOT NULL,
 name_on_card VARCHAR(50) NOT NULL,
 id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
);


CREATE TABLE sales_item(
item_id INT UNSIGNED NOT NULL,
sales_order_id INT UNSIGNED NOT NULL,
FOREIGN KEY (item_id) REFERENCES item(id),
FOREIGN KEY (sales_order_id) REFERENCES sales_order(id),
quantity INT NOT NULL,
discount DECIMAL(3,2) NULL DEFAULT 0,
taxable BOOL NOT NULL DEFAULT 0,
sales_tax_rate DECIMAL(5,2) NOT NULL DEFAULT 0,
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY

);
// Add a new column
ALTER TABLE sales_item ADD day_of_week VARCHAR(8)

// Modify a column (Change any Constraint this Way)

ALTER TABLE sales_item MODIFY day_of_week VARCHAR(9) NOT NULL

//MYSQL syntax
ALTER TABLE sales_item CHANGE `day_of_week` `weekday` VARCHAR(8);

// deleting column
ALTER TABLE sales_item DROP  COLUMN weekday;


CREATE TABLE transaction_type(
name VARCHAR(30) NOT NULL,
payment_type VARCHAR(30) NOT NULL,
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
);


RENAME TABLE transaction_type TO transaction;

CREATE INDEX transaction_id ON transaction(name);


CREATE INDEX transaction_id_2 ON transaction(name, payment_type);

// deleting the actual table
DROP TABLE transaction;

// Delete data in a table
TRUNCATE TABLE transaction
