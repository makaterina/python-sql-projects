-- Categories for dishes
CREATE TABLE categories (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

-- Menu items/ Dishes
CREATE TABLE dishes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    price REAL NOT NULL,
    category_id INTEGER,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

-- Restaurant tables
CREATE TABLE tables (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    table_number INTEGER NOT NULL,
    capacity INTEGER NOT NULL
);

-- Orders placed by tables
CREATE TABLE orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    table_id INTEGER,
    order_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    status TEXT DEFAULT 'მზადდება',
    FOREIGN KEY (table_id) REFERENCES tables(id)
);

-- Order items (dishes included in a specific order)
CREATE TABLE order_items (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id INTEGER,
    dish_id INTEGER,
    quantity INTEGER DEFAULT 1,
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (dish_id) REFERENCES dishes(id)
);
