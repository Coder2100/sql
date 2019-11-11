INSERT INTO flights (origin, destination, duration) VALUES ('New York', 'London', 415);
INSERT INTO flights (origin, destination, duration) VALUES ('Shanghai', 'Paris', 760);
INSERT INTO flights (origin, destination, duration) VALUES ('Istanbul', 'Tokyo', 700);
INSERT INTO flights (origin, destination, duration) VALUES ('New York', 'Paris', 435);
INSERT INTO flights (origin, destination, duration) VALUES ('Moscow', 'Paris', 245);
INSERT INTO flights (origin, destination, duration) VALUES ('Lima', 'New York', 455);

INSERT INTO flights (origin, destination, duration) VALUES ('East Londion', 'Port Elizabeth', 415);
INSERT INTO flights (origin, destination, duration) VALUES ('Grahamstown', 'Willowvale', 760);
INSERT INTO flights (origin, destination, duration) VALUES ('Elliot', 'Ngcobo', 700);
INSERT INTO flights (origin, destination, duration) VALUES ('Bizana', 'Mqanduli', 435);
INSERT INTO flights (origin, destination, duration) VALUES ('Elliotdale', 'Mthatha', 245);
INSERT INTO flights (origin, destination, duration) VALUES ('Elliotdale', 'Willowmore', 455);


INSERT INTO product_type (name, id) VALUES ('Business', NULL);

INSERT INTO product_type (name, id) VALUES ('Casual', NULL);

INSERT INTO product_type (name, id) VALUES("Athletic", NULL);

INSERT INTO product VALUES
(1, 'Grandview', 'Allen Edmonds', 'Classic broguing adds texture to a charming longwing derby crafted in America from lustrous leather', NULL),
(1, 'Clarkston', 'Allen Edmonds', 'Sharp broguing touches up a charming, American-made derby fashioned from finely textured leather', NULL),
(1, 'Derby', 'John Varvatos', 'Leather upper, manmade sole', NULL),
(1, 'Ramsey', 'Johnston & Murphy', 'Leather upper, manmade sole', NULL),
(1, 'Hollis', 'Johnston & Murphy', 'Leather upper, manmade sole', NULL),
(2, 'Venetian Loafer', 'Mezlan', 'Suede upper, leather sole', NULL),
(2, 'Malek', 'Johnston & Murphy', 'Contrast insets at the toe and sides bring updated attitude to a retro-inspired sneaker set on a sporty foam sole and triangle-lugged tread.', NULL),
(3, 'Air Max 270 React', 'Nike', 'The reggae inspired Nike Air 270 React fuses forest green with shades of tan to reveal your righteous spirit', NULL),
(3, 'Joyride', 'Nike', 'Tiny foam beads underfoot conform to your foot for cushioning that stands up to your mileage', NULL),
(2, 'Air Force 1', 'Nike', 'A modern take on the icon that blends classic style and fresh, crisp details', NULL),
(3, 'Ghost 12', 'Brooks', 'Just know that it still strikes a just-right balance of DNA LOFT softness and BioMoGo DNA responsiveness', NULL),
(3, 'Revel 3', 'Brooks', 'Style to spare, now even softer.', NULL),
(3, 'Glycerin 17', 'Brooks', 'A plush fit and super soft transitions make every stride luxurious', NULL);



INSERT INTO customer (first_name, last_name, email, company, street, city, state, zip_code, phone, birthdate, sex, date_enetered, id) VALUES
('Christopher', 'Jones', 'christopherjones@bp.com', 'BP', '347 Cedar St', 'Lawrenceville', 'GA', '30044', '348-848-8291', '1938-09-11', 'M', '2015-07-21 11:27:02', NULL),
('Matthew', 'Martinez', 'matthewmartinez@ge.com', 'GE', '602 Main Place', 'Fontana', 'CA', '92336', '117-997-7764', '1931-09-04', 'M', '2015-01-01 22:39:28', NULL),
('Melissa', 'Moore', 'melissamoore@aramark.com', 'Aramark', '463 Park Rd', 'Lakewood', 'NJ', '08701', '269-720-7259', '1967-08-27', 'M', '2017-10-20 21:59:29', NULL),
('Melissa', 'Brown', 'melissabrown@verizon.com', 'Verizon', '712 View Ave', 'Houston', 'TX', '77084', '280-570-5166', '1948-06-14', 'F', '2016-07-16 12:26:45', NULL),
('Jennifer', 'Thomas', 'jenniferthomas@aramark.com', 'Aramark', '231 Elm St', 'Mission', 'TX', '78572', '976-147-9254', '1998-03-14', 'F', '2018-01-08 09:27:55', NULL),
('Stephanie', 'Martinez', 'stephaniemartinez@albertsons.com', 'Albertsons', '386 Second St', 'Lakewood', 'NJ', '08701', '820-131-6053', '1998-01-24', 'M', '2016-06-18 13:27:34', NULL),
('Daniel', 'Williams', 'danielwilliams@tjx.com', 'TJX', '107 Pine St', 'Katy', 'TX', '77449', '744-906-9837', '1985-07-20', 'F', '2015-07-03 10:40:18', NULL),
('Lauren', 'Anderson', 'laurenanderson@pepsi.com', 'Pepsi', '13 Maple Ave', 'Riverside', 'CA', '92503', '747-993-2446', '1973-09-09', 'F', '2018-02-01 16:43:51', NULL),
('Michael', 'Jackson', 'michaeljackson@disney.com', 'Disney', '818 Pine Ave', 'Mission', 'TX', '78572', '126-423-3144', '1951-03-03', 'F', '2017-04-02 21:57:36', NULL),
('Ashley', 'Johnson', 'ashleyjohnson@boeing.com', 'Boeing', '874 Oak Ave', 'Pacoima', 'CA', '91331', '127-475-1658', '1937-05-10', 'F', '2015-01-04 08:58:56', NULL),
('Brittany', 'Thomas', 'brittanythomas@walmart.com', 'Walmart', '187 Maple Ave', 'Brownsville', 'TX', '78521', '447-788-4913', '1986-10-22', 'F', '2018-05-23 08:04:32', NULL),
('Matthew', 'Smith', 'matthewsmith@ups.com', 'UPS', '123 Lake St', 'Brownsville', 'TX', '78521', '961-108-3758', '1950-06-16', 'F', '2018-03-15 10:08:54', NULL),
('Lauren', 'Wilson', 'laurenwilson@target.com', 'Target', '942 Fifth Ave', 'Mission', 'TX', '78572', '475-578-8519', '1965-12-26', 'M', '2017-07-16 11:01:01', NULL),
('Justin', 'Smith', 'justinsmith@boeing.com', 'Boeing', '844 Lake Ave', 'Lawrenceville', 'GA', '30044', '671-957-1492', '1956-03-16', 'F', '2017-10-07 10:50:08', NULL),
('Jessica', 'Garcia', 'jessicagarcia@toyota.com', 'Toyota', '123 Pine Place', 'Fontana', 'CA', '92336', '744-647-2359', '1996-08-05', 'F', '2016-09-14 12:33:05', NULL),
('Matthew', 'Jackson', 'matthewjackson@bp.com', 'BP', '538 Cedar Ave', 'Katy', 'TX', '77449', '363-430-1813', '1966-02-26', 'F', '2016-05-01 19:25:17', NULL),
('Stephanie', 'Thomas', 'stephaniethomas@apple.com', 'Apple', '804 Fourth Place', 'Brownsville', 'TX', '78521', '869-582-9955', '1988-08-26', 'F', '2018-10-21 22:01:57', NULL),
('Jessica', 'Jackson', 'jessicajackson@aramark.com', 'Aramark', '235 Pine Place', 'Chicago', 'IL', '60629', '587-334-1054', '1991-07-22', 'F', '2015-08-28 03:11:35', NULL),
('James', 'Martinez', 'jamesmartinez@kroger.com', 'Kroger', '831 Oak St', 'Brownsville', 'TX', '78521', '381-428-3119', '1927-12-22', 'F', '2018-01-27 07:41:48', NULL),
('Christopher', 'Robinson', 'christopherrobinson@ibm.com', 'IBM', '754 Cedar St', 'Pharr', 'TX', '78577', '488-694-7677', '1932-06-25', 'F', '2016-08-19 16:11:31', NULL);



INSERT INTO sales_person (first_name, last_name, email, street, city, state, zip_code, phone, birth_date, sex, date_hired, id) VALUES
('Jennifer', 'Smith', 'jennifersmith@volkswagen.com', '610 Maple Place', 'Hawthorne', 'CA', '90250', '215-901-2287', '1941-08-09', 'F', '2014-02-06 12:22:48', NULL),
('Michael', 'Robinson', 'michaelrobinson@walmart.com', '164 Maple St', 'Pacoima', 'CA', '91331', '521-377-4462', '1956-04-23', 'M', '2014-09-12 17:27:23', NULL),
('Brittany', 'Jackson', 'brittanyjackson@disney.com', '263 Park Rd', 'Riverside', 'CA', '92503', '672-708-7601', '1934-07-05', 'F', '2015-01-17 02:51:55', NULL),
('Samantha', 'Moore', 'samanthamoore@ge.com', '107 Pine Place', 'Houston', 'TX', '77084', '893-423-2899', '1926-05-05', 'M', '2015-11-14 22:26:21', NULL),
('Jessica', 'Thompson', 'jessicathompson@fedex.com', '691 Third Place', 'Sylmar', 'CA', '91342', '349-203-4736', '1938-12-18', 'M', '2014-12-13 06:54:39', NULL)


ALTER TABLE sales_order MODIFY purchase_order_number BIGINT UNSIGNED NOT NULL;


ALTER TABLE sales_order MODIFY credit_card_secret_code SMALLINT UNSIGNED NOT NULL;



INSERT INTO item VALUES
(2, 10, 'Gray', 'Coming Soon', 199.60, NULL),
(11, 12, 'Red', 'Coming Soon', 155.65, NULL),
(2, 11, 'Red', 'Coming Soon', 128.87, NULL),
(11, 11, 'Green', 'Coming Soon', 117.52, NULL),
(5, 8, 'Black', 'Coming Soon', 165.39, NULL),
(7, 11, 'Brown', 'Coming Soon', 168.15, NULL),
(5, 8, 'Gray', 'Coming Soon', 139.48, NULL),
(5, 11, 'Blue', 'Coming Soon', 100.14, NULL),
(4, 10, 'Brown', 'Coming Soon', 117.66, NULL),
(8, 10, 'Brown', 'Coming Soon', 193.53, NULL),
(7, 8, 'Light Brown', 'Coming Soon', 154.62, NULL),
(12, 10, 'Green', 'Coming Soon', 188.32, NULL),
(3, 12, 'Green', 'Coming Soon', 101.49, NULL),
(7, 9, 'Black', 'Coming Soon', 106.39, NULL),
(8, 12, 'Red', 'Coming Soon', 124.77, NULL),
(5, 8, 'Black', 'Coming Soon', 86.19, NULL),
(8, 12, 'Blue', 'Coming Soon', 196.86, NULL),
(8, 8, 'Blue', 'Coming Soon', 123.27, NULL),
(7, 11, 'Red', 'Coming Soon', 130.76, NULL),
(9, 12, 'Black', 'Coming Soon', 152.98, NULL),
(11, 8, 'Blue', 'Coming Soon', 175.58, NULL),
(7, 11, 'Light Brown', 'Coming Soon', 146.83, NULL),
(4, 8, 'Green', 'Coming Soon', 159.82, NULL),
(12, 8, 'Light Brown', 'Coming Soon', 171.92, NULL),
(1, 12, 'Light Brown', 'Coming Soon', 128.77, NULL),
(2, 10, 'Gray', 'Coming Soon', 102.45, NULL),
(10, 8, 'Green', 'Coming Soon', 186.86, NULL),
(1, 8, 'Blue', 'Coming Soon', 139.73, NULL),
(9, 8, 'Light Brown', 'Coming Soon', 151.57, NULL),
(2, 10, 'Green', 'Coming Soon', 177.16, NULL),
(3, 9, 'Gray', 'Coming Soon', 124.87, NULL),
(8, 8, 'Black', 'Coming Soon', 129.40, NULL),
(5, 9, 'Black', 'Coming Soon', 107.55, NULL),
(5, 8, 'Light Brown', 'Coming Soon', 103.71, NULL),
(11, 10, 'Green', 'Coming Soon', 152.31, NULL),
(6, 12, 'Red', 'Coming Soon', 108.96, NULL),
(7, 12, 'Blue', 'Coming Soon', 173.14, NULL),
(3, 10, 'Green', 'Coming Soon', 198.44, NULL),
(1, 9, 'Light Brown', 'Coming Soon', 119.61, NULL),
(1, 10, 'Black', 'Coming Soon', 114.36, NULL),
(7, 9, 'Light Brown', 'Coming Soon', 181.93, NULL),
(5, 10, 'Black', 'Coming Soon', 108.32, NULL),
(1, 12, 'Black', 'Coming Soon', 153.97, NULL),
(2, 12, 'Gray', 'Coming Soon', 184.27, NULL),
(2, 9, 'Blue', 'Coming Soon', 151.63, NULL),
(6, 8, 'Brown', 'Coming Soon', 159.39, NULL),
(11, 9, 'Red', 'Coming Soon', 150.49, NULL),
(9, 10, 'Gray', 'Coming Soon', 139.26, NULL),
(4, 8, 'Gray', 'Coming Soon', 166.87, NULL),
(12, 9, 'Red', 'Coming Soon', 110.77, NULL);
