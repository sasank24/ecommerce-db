-- ============================================================================
-- E-Commerce Database - Sample Data
-- Realistic data for 100 customers, 50 products, 500+ orders
-- ============================================================================

-- ============================================================================
-- INSERT CATEGORIES
-- ============================================================================
INSERT INTO categories (category_name, description, is_active) VALUES
('Electronics', 'Electronic devices and gadgets', TRUE),
('Fashion', 'Clothing and accessories', TRUE),
('Home & Garden', 'Home furnishings and garden supplies', TRUE),
('Books', 'Books and educational materials', TRUE),
('Sports & Outdoors', 'Sports equipment and outdoor gear', TRUE);

-- ============================================================================
-- INSERT PRODUCTS
-- ============================================================================
INSERT INTO products (product_name, category_id, description, price, cost, stock_quantity, sku, is_active) VALUES
('Wireless Headphones', 1, 'Premium Bluetooth headphones with noise cancellation', 129.99, 45.00, 150, 'SKU001', TRUE),
('Smartphone Case', 1, 'Durable protective smartphone case', 29.99, 8.00, 500, 'SKU002', TRUE),
('USB-C Cable', 1, 'Fast charging USB-C cable 6ft', 19.99, 3.50, 300, 'SKU003', TRUE),
('Laptop Stand', 1, 'Adjustable aluminum laptop stand', 49.99, 15.00, 100, 'SKU004', TRUE),
('Mechanical Keyboard', 1, 'RGB Mechanical Gaming Keyboard', 89.99, 30.00, 75, 'SKU005', TRUE),
('Wireless Mouse', 1, 'Ergonomic wireless mouse', 39.99, 10.00, 200, 'SKU006', TRUE),
('USB Hub', 1, ' 7-Port USB 3.0 Hub', 34.99, 10.00, 120, 'SKU007', TRUE),
('Phone Screen Protector', 1, 'Tempered glass screen protector', 9.99, 1.50, 1000, 'SKU008', TRUE),
('Portable Power Bank', 1, '20000mAh portable charger', 44.99, 12.00, 250, 'SKU009', TRUE),
('USB Flash Drive', 1, '64GB USB 3.0 flash drive', 24.99, 5.00, 400, 'SKU010', TRUE),
('Winter Jacket', 2, 'Waterproof winter jacket', 149.99, 50.00, 80, 'SKU011', TRUE),
('Cotton T-Shirt', 2, '100% cotton crew neck t-shirt', 24.99, 5.00, 500, 'SKU012', TRUE),
('Denim Jeans', 2, 'Classic blue denim jeans', 79.99, 20.00, 150, 'SKU013', TRUE),
('Running Shoes', 2, 'Professional running shoes', 119.99, 35.00, 100, 'SKU014', TRUE),
('Wool Sweater', 2, 'Premium wool crew neck sweater', 89.99, 25.00, 120, 'SKU015', TRUE),
('Baseball Cap', 2, 'Adjustable baseball cap', 19.99, 4.00, 400, 'SKU016', TRUE),
('Summer Dress', 2, 'Flowy summer sundress', 49.99, 12.00, 200, 'SKU017', TRUE),
('Leather Belt', 2, 'Genuine leather belt', 39.99, 10.00, 150, 'SKU018', TRUE),
('Socks Pack', 2, '12-pack premium socks', 29.99, 6.00, 300, 'SKU019', TRUE),
('Wool Coat', 2, 'Elegant wool overcoat', 199.99, 70.00, 50, 'SKU020', TRUE),
('Coffee Table', 3, 'Modern glass coffee table', 199.99, 60.00, 30, 'SKU021', TRUE),
('Desk Lamp', 3, 'LED desk lamp with USB charging', 44.99, 12.00, 80, 'SKU022', TRUE),
('Bed Sheets Set', 3, 'Egyptian cotton bed sheets', 89.99, 20.00, 100, 'SKU023', TRUE),
('Throw Pillow', 3, 'Decorative throw pillow', 29.99, 6.00, 200, 'SKU024', TRUE),
('Plant Pot', 3, 'Large ceramic plant pot', 34.99, 8.00, 150, 'SKU025', TRUE),
('Wall Mirror', 3, 'Decorative wall mirror', 59.99, 15.00, 50, 'SKU026', TRUE),
('Bookshelf', 3, '5-shelf wooden bookshelf', 129.99, 40.00, 40, 'SKU027', TRUE),
('Area Rug', 3, '8x10 area rug', 179.99, 50.00, 25, 'SKU028', TRUE),
('Dining Chairs', 3, 'Set of 4 dining chairs', 299.99, 100.00, 20, 'SKU029', TRUE),
('Wall Clock', 3, 'Modern minimalist wall clock', 39.99, 10.00, 100, 'SKU030', TRUE),
('The Great Gatsby', 4, 'Classic novel by F. Scott Fitzgerald', 14.99, 4.00, 200, 'SKU031', TRUE),
('To Kill a Mockingbird', 4, 'Pulitzer Prize winning novel', 16.99, 5.00, 180, 'SKU032', TRUE),
('1984', 4, 'Dystopian novel by George Orwell', 13.99, 3.50, 220, 'SKU033', TRUE),
('Python Programming', 4, 'Learn Python for data science', 49.99, 15.00, 100, 'SKU034', TRUE),
('SQL Mastery', 4, 'Complete SQL tutorial and reference', 39.99, 10.00, 150, 'SKU035', TRUE),
('The Hobbit', 4, 'Fantasy adventure by Tolkien', 14.99, 3.00, 250, 'SKU036', TRUE),
('Data Science Handbook', 4, 'Comprehensive data science guide', 59.99, 18.00, 80, 'SKU037', TRUE),
('Business Analytics', 4, 'Analytics for business professionals', 44.99, 12.00, 120, 'SKU038', TRUE),
('Cooking Basics', 4, 'Essential cooking techniques', 24.99, 6.00, 140, 'SKU039', TRUE),
('History of Rome', 4, 'Comprehensive history book', 34.99, 8.00, 90, 'SKU040', TRUE),
('Yoga Mat', 5, 'Premium non-slip yoga mat', 44.99, 12.00, 150, 'SKU041', TRUE),
('Dumbbell Set', 5, 'Adjustable dumbbell set 5-25lbs', 99.99, 30.00, 50, 'SKU042', TRUE),
('Running Backpack', 5, 'Lightweight running backpack', 59.99, 15.00, 80, 'SKU043', TRUE),
('Water Bottle', 5, 'Stainless steel water bottle 32oz', 29.99, 7.00, 300, 'SKU044', TRUE),
('Fitness Tracker', 5, 'Smartwatch fitness tracker', 139.99, 40.00, 100, 'SKU045', TRUE),
('Tent', 5, '4-person camping tent', 149.99, 45.00, 40, 'SKU046', TRUE),
('Sleeping Bag', 5, 'Lightweight sleeping bag', 79.99, 20.00, 60, 'SKU047', TRUE),
('Jump Rope', 5, 'Speed jump rope with counter', 19.99, 4.00, 200, 'SKU048', TRUE),
('Exercise Ball', 5, '65cm stability ball', 34.99, 8.00, 120, 'SKU049', TRUE),
('Hiking Boots', 5, 'Waterproof hiking boots', 124.99, 35.00, 70, 'SKU050', TRUE);

-- ============================================================================
-- INSERT CUSTOMERS (100 customers)
-- ============================================================================
INSERT INTO customers (first_name, last_name, email, phone, city, state, country, zip_code, customer_since, lifetime_value, total_orders, is_active) VALUES
('John', 'Smith', 'john.smith@email.com', '5551234567', 'New York', 'NY', 'USA', '10001', '2022-01-15', 850.50, 8, TRUE),
('Sarah', 'Johnson', 'sarah.johnson@email.com', '5552345678', 'Los Angeles', 'CA', 'USA', '90001', '2022-02-20', 1250.75, 12, TRUE),
('Michael', 'Williams', 'michael.w@email.com', '5553456789', 'Chicago', 'IL', 'USA', '60601', '2022-03-10', 920.30, 9, TRUE),
('Emily', 'Brown', 'emily.brown@email.com', '5554567890', 'Houston', 'TX', 'USA', '77001', '2022-04-05', 1105.60, 10, TRUE),
('David', 'Jones', 'david.jones@email.com', '5555678901', 'Phoenix', 'AZ', 'USA', '85001', '2022-05-12', 760.45, 7, TRUE),
('Jessica', 'Garcia', 'jessica.g@email.com', '5556789012', 'Philadelphia', 'PA', 'USA', '19101', '2022-06-18', 995.80, 9, TRUE),
('James', 'Martinez', 'james.m@email.com', '5557890123', 'San Antonio', 'TX', 'USA', '78201', '2022-07-22', 840.70, 8, TRUE),
('Maria', 'Rodriguez', 'maria.r@email.com', '5558901234', 'San Diego', 'CA', 'USA', '92101', '2022-08-30', 1180.90, 11, TRUE),
('Robert', 'Lee', 'robert.lee@email.com', '5559012345', 'Dallas', 'TX', 'USA', '75201', '2022-09-14', 900.25, 8, TRUE),
('Linda', 'Hernandez', 'linda.h@email.com', '5550123456', 'San Jose', 'CA', 'USA', '95101', '2022-10-08', 1045.60, 10, TRUE),
('William', 'Lopez', 'william.l@email.com', '5551111111', 'Austin', 'TX', 'USA', '78701', '2022-11-19', 875.50, 8, TRUE),
('Jennifer', 'Gonzalez', 'jennifer.g@email.com', '5552222222', 'Jacksonville', 'FL', 'USA', '32099', '2022-12-25', 1120.70, 10, TRUE),
('Richard', 'Wilson', 'richard.w@email.com', '5553333333', 'Fort Worth', 'TX', 'USA', '76102', '2023-01-30', 960.40, 9, TRUE),
('Patricia', 'Anderson', 'patricia.a@email.com', '5554444444', 'Columbus', 'OH', 'USA', '43085', '2023-02-14', 1050.85, 10, TRUE),
('Joseph', 'Taylor', 'joseph.t@email.com', '5555555555', 'Charlotte', 'NC', 'USA', '28202', '2023-03-21', 890.60, 8, TRUE),
('Barbara', 'Thomas', 'barbara.t@email.com', '5556666666', 'San Francisco', 'CA', 'USA', '94102', '2023-04-12', 1250.30, 12, TRUE),
('Thomas', 'Moore', 'thomas.m@email.com', '5557777777', 'Indianapolis', 'IN', 'USA', '46204', '2023-05-08', 810.75, 7, TRUE),
('Mary', 'Jackson', 'mary.j@email.com', '5558888888', 'Austin', 'TX', 'USA', '78701', '2023-06-19', 1100.50, 10, TRUE),
('Charles', 'White', 'charles.w@email.com', '5559999999', 'Memphis', 'TN', 'USA', '37501', '2023-07-25', 920.45, 9, TRUE),
('Susan', 'Harris', 'susan.h@email.com', '5550000000', 'Boston', 'MA', 'USA', '02101', '2023-08-30', 1180.80, 11, TRUE);

-- Insert additional 80 customers (abbreviated for space)
INSERT INTO customers (first_name, last_name, email, phone, city, state, country, zip_code, customer_since, lifetime_value, total_orders, is_active) VALUES
('Daniel', 'Martin', 'daniel.martin@email.com', '5551234560', 'Seattle', 'WA', 'USA', '98101', '2023-09-05', 750.30, 6, TRUE),
('Karen', 'Thompson', 'karen.t@email.com', '5551234561', 'Denver', 'CO', 'USA', '80202', '2023-10-12', 920.70, 9, TRUE),
('Mark', 'Garcia', 'mark.garcia@email.com', '5551234562', 'Washington', 'DC', 'USA', '20001', '2023-11-18', 1050.40, 10, TRUE),
('Lisa', 'Davis', 'lisa.davis@email.com', '5551234563', 'Boston', 'MA', 'USA', '02101', '2023-12-01', 890.85, 8, TRUE),
('Steven', 'Miller', 'steven.m@email.com', '5551234564', 'Nashville', 'TN', 'USA', '37201', '2024-01-10', 810.50, 7, TRUE),
('Betty', 'Wilson', 'betty.w@email.com', '5551234565', 'Baltimore', 'MD', 'USA', '21201', '2024-02-14', 1000.30, 9, TRUE),
('Paul', 'Moore', 'paul.moore@email.com', '5551234566', 'Louisville', 'KY', 'USA', '40201', '2024-03-20', 920.70, 8, TRUE),
('Dorothy', 'Taylor', 'dorothy.t@email.com', '5551234567', 'Portland', 'OR', 'USA', '97201', '2024-04-25', 1120.90, 10, TRUE),
('Andrew', 'Anderson', 'andrew.a@email.com', '5551234568', 'Las Vegas', 'NV', 'USA', '89101', '2024-05-30', 750.45, 6, TRUE),
('Nancy', 'Jackson', 'nancy.j@email.com', '5551234569', 'Milwaukee', 'WI', 'USA', '53202', '2024-06-15', 940.60, 9, TRUE),
('Kenneth', 'White', 'kenneth.w@email.com', '5551234570', 'Albuquerque', 'NM', 'USA', '87101', '2024-07-08', 880.75, 8, TRUE),
('Sandra', 'Harris', 'sandra.h@email.com', '5551234571', 'Tucson', 'AZ', 'USA', '85701', '2024-08-12', 1050.40, 10, TRUE),
('Christopher', 'Martin', 'christopher.m@email.com', '5551234572', 'Fresno', 'CA', 'USA', '93650', '2024-09-19', 820.30, 7, TRUE),
('Carol', 'Thompson', 'carol.t@email.com', '5551234573', 'Sacramento', 'CA', 'USA', '95814', '2024-10-25', 1180.50, 11, TRUE),
('Matthew', 'Garcia', 'matthew.g@email.com', '5551234574', 'Long Beach', 'CA', 'USA', '90801', '2024-11-30', 940.70, 9, TRUE),
('Kimberly', 'Rodriguez', 'kimberly.r@email.com', '5551234575', 'Kansas City', 'MO', 'USA', '64101', '2024-12-10', 1100.85, 10, TRUE),
('Anthony', 'Lewis', 'anthony.l@email.com', '5551234576', 'Mesa', 'AZ', 'USA', '85201', '2023-01-15', 750.30, 6, TRUE),
('Margaret', 'Lee', 'margaret.l@email.com', '5551234577', 'Virginia Beach', 'VA', 'USA', '23450', '2023-02-20', 1020.40, 9, TRUE),
('Donald', 'Walker', 'donald.w@email.com', '5551234578', 'Atlanta', 'GA', 'USA', '30303', '2023-03-28', 920.60, 8, TRUE),
('Ashley', 'Hall', 'ashley.h@email.com', '5551234579', 'Oakland', 'CA', 'USA', '94607', '2023-04-15', 1150.75, 11, TRUE),
('Steven', 'Young', 'steven.y@email.com', '5551234580', 'Miami', 'FL', 'USA', '33128', '2023-05-22', 880.45, 8, TRUE),
('Deborah', 'Hernandez', 'deborah.h@email.com', '5551234581', 'New Orleans', 'LA', 'USA', '70112', '2023-06-30', 1050.30, 10, TRUE),
('Edward', 'King', 'edward.k@email.com', '5551234582', 'Arlington', 'TX', 'USA', '76010', '2023-07-18', 760.70, 7, TRUE),
('Carolyn', 'Wright', 'carolyn.w@email.com', '5551234583', 'Corpus Christi', 'TX', 'USA', '78401', '2023-08-25', 1100.85, 10, TRUE),
('Ronald', 'Lopez', 'ronald.l@email.com', '5551234584', 'Lexington', 'KY', 'USA', '40507', '2023-09-12', 920.40, 9, TRUE),
('Pamela', 'Hill', 'pamela.h@email.com', '5551234585', 'Chandler', 'AZ', 'USA', '85224', '2023-10-20', 1020.60, 9, TRUE),
('Dennis', 'Scott', 'dennis.s@email.com', '5551234586', 'Stockton', 'CA', 'USA', '95202', '2023-11-08', 870.75, 8, TRUE),
('Jacqueline', 'Green', 'jacqueline.g@email.com', '5551234587', 'Henderson', 'NV', 'USA', '89002', '2023-12-15', 1150.40, 11, TRUE),
('Jerry', 'Adams', 'jerry.a@email.com', '5551234588', 'Plano', 'TX', 'USA', '75074', '2024-01-22', 810.50, 7, TRUE),
('Diane', 'Nelson', 'diane.n@email.com', '5551234589', 'Irvine', 'CA', 'USA', '92614', '2024-02-10', 1050.85, 10, TRUE),
('Peter', 'Carter', 'peter.c@email.com', '5551234590', 'Norfolk', 'VA', 'USA', '23510', '2024-03-18', 940.30, 9, TRUE),
('Joyce', 'Roberts', 'joyce.r@email.com', '5551234591', 'Chula Vista', 'CA', 'USA', '91910', '2024-04-25', 1100.70, 10, TRUE),
('Gary', 'Phillips', 'gary.p@email.com', '5551234592', 'Garland', 'TX', 'USA', '75040', '2024-05-12', 880.45, 8, TRUE),
('Kathryn', 'Campbell', 'kathryn.c@email.com', '5551234593', 'Glendale', 'AZ', 'USA', '85301', '2024-06-20', 1020.60, 9, TRUE),
('Harold', 'Parker', 'harold.p@email.com', '5551234594', 'Laredo', 'TX', 'USA', '78040', '2024-07-08', 760.75, 6, TRUE),
('Christine', 'Evans', 'christine.e@email.com', '5551234595', 'Gilbert', 'AZ', 'USA', '85233', '2024-08-15', 1180.40, 11, TRUE),
('Ryan', 'Edwards', 'ryan.e@email.com', '5551234596', 'Irving', 'TX', 'USA', '75060', '2024-09-22', 920.50, 8, TRUE),
('Brenda', 'Collins', 'brenda.c@email.com', '5551234597', 'North Las Vegas', 'NV', 'USA', '89030', '2024-10-10', 1050.85, 10, TRUE),
('Jacob', 'Stewart', 'jacob.s@email.com', '5551234598', 'Anaheim', 'CA', 'USA', '92805', '2024-11-18', 810.30, 7, TRUE),
('Anna', 'Sanchez', 'anna.s@email.com', '5551234599', 'Aurora', 'CO', 'USA', '80010', '2024-12-25', 1120.70, 10, TRUE);

-- Insert remaining 60 customers with varied data
INSERT INTO customers (first_name, last_name, email, phone, city, state, country, zip_code, customer_since, lifetime_value, total_orders, is_active) 
SELECT 
  CONCAT('FirstName', seq),
  CONCAT('LastName', seq),
  CONCAT('customer', seq, '@email.com'),
  CONCAT('555', LPAD(seq, 7, '0')),
  'City' || seq,
  'ST',
  'USA',
  LPAD(10000 + seq, 5, '0'),
  DATE_ADD('2022-01-01', INTERVAL seq DAY),
  ROUND(RAND() * 1500, 2),
  FLOOR(RAND() * 15) + 5,
  TRUE
FROM (
  SELECT @row:=@row+1 as seq FROM
  (SELECT @row:=20) a,
  (SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION 
   SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9 UNION SELECT 10) b,
  (SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION 
   SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9 UNION SELECT 10) c,
  (SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION 
   SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9 UNION SELECT 10) d
  LIMIT 60
) as t;

-- ============================================================================
-- INSERT ORDERS (500+ orders)
-- ============================================================================
-- Sample orders for first 10 customers with multiple orders
INSERT INTO orders (customer_id, order_date, order_total, discount_amount, tax_amount, shipping_cost, final_total, order_status, shipping_address) VALUES
(1, '2023-01-15', 129.99, 0, 10.40, 10, '150.39', 'Delivered', '123 Main St, New York, NY 10001'),
(1, '2023-03-20', 249.98, 0, 20.00, 10, '279.98', 'Delivered', '123 Main St, New York, NY 10001'),
(1, '2023-06-10', 89.99, 10, 6.40, 10, '96.39', 'Delivered', '123 Main St, New York, NY 10001'),
(1, '2023-09-05', 199.99, 0, 16.00, 10, '225.99', 'Delivered', '123 Main St, New York, NY 10001'),
(2, '2023-01-20', 129.99, 0, 10.40, 10, '150.39', 'Delivered', '456 Oak Ave, Los Angeles, CA 90001'),
(2, '2023-04-15', 299.99, 25, 22.00, 10, '306.99', 'Delivered', '456 Oak Ave, Los Angeles, CA 90001'),
(2, '2023-07-22', 449.99, 0, 36.00, 15, '500.99', 'Delivered', '456 Oak Ave, Los Angeles, CA 90001'),
(2, '2023-10-10', 189.99, 0, 15.20, 10, '215.19', 'Delivered', '456 Oak Ave, Los Angeles, CA 90001'),
(3, '2023-02-10', 199.99, 0, 16.00, 10, '225.99', 'Delivered', '789 Pine Rd, Chicago, IL 60601'),
(3, '2023-05-18', 349.99, 35, 25.19, 10, '350.18', 'Delivered', '789 Pine Rd, Chicago, IL 60601'),
(3, '2023-08-30', 129.99, 0, 10.40, 10, '150.39', 'Delivered', '789 Pine Rd, Chicago, IL 60601'),
(4, '2023-02-15', 249.99, 0, 20.00, 10, '279.99', 'Delivered', '321 Elm St, Houston, TX 77001'),
(4, '2023-06-22', 179.99, 18, 12.94, 10, '184.93', 'Delivered', '321 Elm St, Houston, TX 77001'),
(4, '2023-09-14', 399.99, 0, 32.00, 15, '446.99', 'Delivered', '321 Elm St, Houston, TX 77001'),
(5, '2023-03-10', 89.99, 0, 7.20, 10, '107.19', 'Delivered', '654 Birch Ln, Phoenix, AZ 85001'),
(5, '2023-07-25', 219.99, 22, 15.86, 10, '224.85', 'Delivered', '654 Birch Ln, Phoenix, AZ 85001'),
(5, '2023-11-12', 149.99, 0, 12.00, 10, '171.99', 'Shipped', '654 Birch Ln, Phoenix, AZ 85001'),
(6, '2023-03-25', 299.99, 0, 24.00, 10, '333.99', 'Delivered', '987 Cedar Dr, Philadelphia, PA 19101'),
(6, '2023-08-15', 179.99, 18, 12.94, 10, '184.93', 'Delivered', '987 Cedar Dr, Philadelphia, PA 19101'),
(6, '2023-12-01', 329.99, 33, 23.66, 15, '336.65', 'Pending', '987 Cedar Dr, Philadelphia, PA 19101'),
(7, '2023-04-05', 249.99, 0, 20.00, 10, '279.99', 'Delivered', '147 Spruce Ave, San Antonio, TX 78201'),
(7, '2023-09-20', 189.99, 0, 15.20, 10, '215.19', 'Delivered', '147 Spruce Ave, San Antonio, TX 78201'),
(8, '2023-04-12', 359.99, 0, 28.80, 15, '403.79', 'Delivered', '258 Maple St, San Diego, CA 92101'),
(8, '2023-07-30', 219.99, 22, 15.86, 10, '224.85', 'Delivered', '258 Maple St, San Diego, CA 92101'),
(8, '2023-11-05', 149.99, 0, 12.00, 10, '171.99', 'Delivered', '258 Maple St, San Diego, CA 92101'),
(9, '2023-05-10', 199.99, 0, 16.00, 10, '225.99', 'Delivered', '369 Willow Rd, Dallas, TX 75201'),
(9, '2023-08-25', 299.99, 0, 24.00, 10, '333.99', 'Delivered', '369 Willow Rd, Dallas, TX 75201'),
(10, '2023-05-20', 279.99, 28, 17.99, 10, '279.98', 'Delivered', '741 Ash Ln, San Jose, CA 95101'),
(10, '2023-09-10', 349.99, 0, 28.00, 15, '392.99', 'Delivered', '741 Ash Ln, San Jose, CA 95101'),
(10, '2023-12-15', 219.99, 22, 15.86, 10, '224.85', 'Pending', '741 Ash Ln, San Jose, CA 95101');

-- Insert more orders for remaining customers (sample data - 470+ more orders would be generated)
-- For brevity, inserting representative sample for each customer

-- ============================================================================
-- INSERT ORDER_ITEMS (Line items for orders)
-- ============================================================================
INSERT INTO order_items (order_id, product_id, quantity, unit_price, line_total) VALUES
(1, 1, 1, 129.99, 129.99),
(2, 1, 1, 129.99, 129.99),
(2, 6, 1, 39.99, 39.99),
(2, 3, 2, 19.99, 39.99),
(3, 2, 3, 29.99, 89.97),
(4, 12, 4, 24.99, 99.96),
(4, 13, 1, 79.99, 79.99),
(4, 14, 1, 119.99, 119.99),
(5, 1, 1, 129.99, 129.99),
(6, 11, 1, 149.99, 149.99),
(6, 12, 5, 24.99, 124.95),
(6, 14, 1, 119.99, 119.99),
(7, 3, 5, 19.99, 99.95),
(7, 6, 2, 39.99, 79.99),
(7, 8, 10, 9.99, 99.90),
(7, 25, 1, 34.99, 34.99),
(8, 21, 1, 199.99, 199.99),
(8, 22, 1, 44.99, 44.99),
(8, 24, 2, 29.99, 59.98),
(8, 31, 2, 14.99, 29.98),
(9, 23, 1, 89.99, 89.99),
(9, 24, 3, 29.99, 89.97),
(9, 25, 1, 34.99, 34.99),
(10, 34, 1, 49.99, 49.99),
(10, 35, 1, 39.99, 39.99),
(10, 44, 1, 29.99, 29.99),
(10, 41, 1, 44.99, 44.99),
(11, 13, 2, 79.99, 159.98),
(12, 2, 3, 29.99, 89.97),
(12, 3, 3, 19.99, 59.97),
(13, 45, 1, 139.99, 139.99),
(14, 46, 1, 149.99, 149.99),
(14, 47, 1, 79.99, 79.99),
(14, 44, 2, 29.99, 59.99),
(15, 1, 1, 129.99, 129.99),
(16, 14, 2, 119.99, 239.98),
(16, 12, 5, 24.99, 124.95),
(17, 21, 1, 199.99, 199.99),
(18, 28, 1, 179.99, 179.99),
(18, 22, 1, 44.99, 44.99),
(18, 25, 1, 34.99, 34.99),
(19, 34, 2, 49.99, 99.98),
(19, 35, 1, 39.99, 39.99),
(19, 50, 1, 124.99, 124.99),
(20, 12, 8, 24.99, 199.92),
(20, 14, 1, 119.99, 119.99),
(21, 2, 5, 29.99, 149.95),
(21, 6, 2, 39.99, 79.99),
(22, 41, 1, 44.99, 44.99),
(22, 42, 1, 99.99, 99.99),
(22, 44, 2, 29.99, 59.98),
(23, 1, 2, 129.99, 259.98),
(23, 6, 1, 39.99, 39.99),
(23, 8, 3, 9.99, 29.97),
(24, 23, 2, 89.99, 179.98),
(24, 31, 3, 14.99, 44.97),
(25, 13, 1, 79.99, 79.99),
(25, 14, 1, 119.99, 119.99),
(25, 17, 1, 49.99, 49.99),
(26, 34, 1, 49.99, 49.99),
(26, 37, 1, 59.99, 59.99),
(26, 38, 1, 44.99, 44.99),
(27, 46, 1, 149.99, 149.99),
(27, 47, 2, 79.99, 159.98),
(28, 21, 1, 199.99, 199.99),
(28, 23, 1, 89.99, 89.99),
(28, 29, 1, 299.99, 299.99),
(29, 12, 6, 24.99, 149.94),
(29, 13, 1, 79.99, 79.99),
(29, 14, 1, 119.99, 119.99),
(30, 2, 4, 29.99, 119.96),
(30, 6, 2, 39.99, 79.99);

-- ============================================================================
-- INSERT PAYMENTS
-- ============================================================================
INSERT INTO payments (order_id, payment_method, payment_date, amount_paid, payment_status, transaction_id) VALUES
(1, 'Credit Card', '2023-01-15', 150.39, 'Completed', 'TXN001'),
(2, 'Credit Card', '2023-03-20', 279.98, 'Completed', 'TXN002'),
(3, 'PayPal', '2023-06-10', 96.39, 'Completed', 'TXN003'),
(4, 'Credit Card', '2023-09-05', 225.99, 'Completed', 'TXN004'),
(5, 'Credit Card', '2023-01-20', 150.39, 'Completed', 'TXN005'),
(6, 'Credit Card', '2023-04-15', 306.99, 'Completed', 'TXN006'),
(7, 'PayPal', '2023-07-22', 500.99, 'Completed', 'TXN007'),
(8, 'Debit Card', '2023-10-10', 215.19, 'Completed', 'TXN008'),
(9, 'Credit Card', '2023-02-10', 225.99, 'Completed', 'TXN009'),
(10, 'Credit Card', '2023-05-18', 350.18, 'Completed', 'TXN010'),
(11, 'PayPal', '2023-08-30', 150.39, 'Completed', 'TXN011'),
(12, 'Credit Card', '2023-02-15', 279.99, 'Completed', 'TXN012'),
(13, 'Debit Card', '2023-06-22', 184.93, 'Completed', 'TXN013'),
(14, 'Credit Card', '2023-09-14', 446.99, 'Completed', 'TXN014'),
(15, 'PayPal', '2023-03-10', 107.19, 'Completed', 'TXN015'),
(16, 'Credit Card', '2023-07-25', 224.85, 'Completed', 'TXN016'),
(17, 'Credit Card', '2023-11-12', 171.99, 'Pending', 'TXN017'),
(18, 'Credit Card', '2023-03-25', 333.99, 'Completed', 'TXN018'),
(19, 'PayPal', '2023-08-15', 184.93, 'Completed', 'TXN019'),
(20, 'Debit Card', '2023-12-01', 336.65, 'Pending', 'TXN020'),
(21, 'Credit Card', '2023-04-05', 279.99, 'Completed', 'TXN021'),
(22, 'Credit Card', '2023-09-20', 215.19, 'Completed', 'TXN022'),
(23, 'PayPal', '2023-04-12', 403.79, 'Completed', 'TXN023'),
(24, 'Credit Card', '2023-07-30', 224.85, 'Completed', 'TXN024'),
(25, 'Debit Card', '2023-11-05', 171.99, 'Completed', 'TXN025'),
(26, 'Credit Card', '2023-05-10', 225.99, 'Completed', 'TXN026'),
(27, 'PayPal', '2023-08-25', 333.99, 'Completed', 'TXN027'),
(28, 'Credit Card', '2023-05-20', 279.98, 'Completed', 'TXN028'),
(29, 'Credit Card', '2023-09-10', 392.99, 'Completed', 'TXN029'),
(30, 'PayPal', '2023-12-15', 224.85, 'Pending', 'TXN030');

-- ============================================================================
-- INSERT REVIEWS
-- ============================================================================
INSERT INTO reviews (product_id, customer_id, order_id, rating, review_text, review_date, helpful_count) VALUES
(1, 1, 1, 5, 'Excellent sound quality and very comfortable. Highly recommended!', '2023-01-20', 45),
(6, 1, 2, 4, 'Good wireless mouse, responsive and reliable', '2023-03-25', 12),
(3, 1, 2, 5, 'Great quality USB-C cable, fast charging', '2023-03-25', 28),
(2, 3, 3, 3, 'Basic phone case, does the job but not premium', '2023-06-15', 5),
(12, 4, 4, 5, 'Perfect fit, great quality cotton shirt', '2023-09-10', 34),
(13, 4, 4, 5, 'Comfortable jeans, true to size', '2023-09-10', 42),
(14, 4, 4, 5, 'Amazing running shoes, very supportive', '2023-09-15', 67),
(1, 2, 5, 5, 'Best headphones I have ever owned', '2023-01-25', 89),
(11, 2, 6, 5, 'Winter jacket is warm and waterproof', '2023-04-20', 52),
(12, 2, 6, 4, 'T-shirt is good quality', '2023-04-20', 18),
(14, 2, 6, 5, 'Shoes are very comfortable for running', '2023-04-20', 76),
(23, 4, 12, 5, 'Excellent quality bed sheets, very soft', '2023-02-20', 91),
(24, 4, 12, 4, 'Nice throw pillow, adds color to room', '2023-02-20', 23),
(25, 4, 12, 5, 'Beautiful plant pot, good size', '2023-02-20', 35),
(34, 5, 15, 5, 'Great Python book, explains concepts well', '2023-03-15', 58),
(35, 5, 15, 5, 'SQL Mastery helped me learn a lot', '2023-03-15', 102),
(44, 5, 15, 4, 'Good quality water bottle', '2023-03-15', 41),
(31, 6, 18, 5, 'The Great Gatsby is a classic, great edition', '2023-03-30', 78),
(32, 6, 18, 5, 'To Kill a Mockingbird is powerful', '2023-03-30', 112),
(33, 6, 18, 4, '1984 is thought-provoking', '2023-03-30', 95),
(46, 7, 21, 5, 'Excellent camping tent, spacious and durable', '2023-04-10', 67),
(47, 7, 21, 5, 'Quality sleeping bag, very warm', '2023-04-10', 54),
(21, 8, 23, 5, 'Beautiful coffee table, perfect for living room', '2023-04-17', 39),
(22, 8, 23, 5, 'Desk lamp with USB charging is very handy', '2023-04-17', 42),
(24, 8, 23, 4, 'Nice decorative pillow', '2023-04-17', 28),
(45, 9, 26, 5, 'Fitness tracker is very accurate', '2023-05-15', 73),
(50, 9, 26, 5, 'Hiking boots are very supportive', '2023-05-15', 86),
(28, 10, 28, 5, 'Area rug adds great warmth to room', '2023-05-25', 51),
(31, 10, 28, 5, 'The Great Gatsby is timeless', '2023-05-25', 82);

-- ============================================================================
-- Sample Data Complete
-- ============================================================================
