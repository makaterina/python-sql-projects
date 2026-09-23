-- 1. Insert categories
INSERT INTO categories (name) VALUES ('Main Courses');
INSERT INTO categories (name) VALUES ('Beverages');
INSERT INTO categories (name) VALUES ('Desserts');

-- 2. Insert menu items
INSERT INTO dishes (name, price, category_id) VALUES ('Spaghetti Carbonara', 12.50, 1);
INSERT INTO dishes (name, price, category_id) VALUES ('Chianti Wine', 8.00, 2);
INSERT INTO dishes (name, price, category_id) VALUES ('Tiramisu', 6.50, 3);

-- 3. Insert tables
INSERT INTO tables (table_number, capacity) VALUES (1, 4);
INSERT INTO tables (table_number, capacity) VALUES (2, 2);

-- 4. View the full menu with categories
SELECT dishes.name, dishes.price, categories.name AS category
FROM dishes
JOIN categories ON dishes.category_id = categories.id;
