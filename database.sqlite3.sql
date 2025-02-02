PRAGMA foreign_keys = OFF;

BEGIN;

SAVEPOINT dump;

CREATE TABLE "cart" (
    "cart_id" INTEGER
  , "user_id" INTEGER NOT NULL
  , "product_id" INTEGER NOT NULL
  , "product_name" TEXT NOT NULL
  , "quantity" INTEGER NOT NULL
  , "price" INTEGER NOT NULL
  , "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  , PRIMARY KEY("cart_id" AUTOINCREMENT)
);

CREATE TABLE categories (
    id INTEGER NOT NULL
  , name VARCHAR
  , image VARCHAR
  , date VARCHAR
  , PRIMARY KEY(id)
);

INSERT INTO categories(id, name, image, date) VALUES(1, 'Fruit', 'fruit.jpg', 'date');
INSERT INTO categories(id, name, image, date) VALUES(2, 'Vegetable', 'vegetable.jpg', 'date');
INSERT INTO categories(id, name, image, date) VALUES(3, 'Plastic Free Products', 'pFreeProd.jpg', '2023-08-01 08:16:25');
INSERT INTO categories(id, name, image, date) VALUES(4, 'Home Goods', 'hGoods.jpg', '2023-08-01 21:50:36');
INSERT INTO categories(id, name, image, date) VALUES(5, 'Beauty & Personal Care', 'bAndPCare.jpg', '2023-08-01 21:51:16');
INSERT INTO categories(id, name, image, date) VALUES(6, 'Fashion & Apparel', 'fAndA.jpg', '2023-08-01 21:51:40');
INSERT INTO categories(id, name, image, date) VALUES(7, 'Tech & Gadgets', 'tAndG.jpg', '2023-08-01 21:52:36');
INSERT INTO categories(id, name, image, date) VALUES(8, 'Home Decor', 'hDecor.jpg', '2023-08-01 21:53:02');

CREATE TABLE order_detail (
    id INTEGER NOT NULL
  , user_id INTEGER
  , total INTEGER
  , created_at VARCHAR
  , PRIMARY KEY(id)
);

INSERT INTO order_detail(id, user_id, total, created_at) VALUES(1, 4, 375, '2023-08-08 04:37:06');
INSERT INTO order_detail(id, user_id, total, created_at) VALUES(2, 4, 405, '2023-08-08 04:42:32');
INSERT INTO order_detail(id, user_id, total, created_at) VALUES(8, 4, 135, '2023-08-08 05:07:24');
INSERT INTO order_detail(id, user_id, total, created_at) VALUES(9, 4, 375, '2023-08-08 07:10:09');
INSERT INTO order_detail(id, user_id, total, created_at) VALUES(10, 4, 936, '2023-08-08 07:14:43');
INSERT INTO order_detail(id, user_id, total, created_at) VALUES(11, 4, 765, '2023-08-08 07:15:59');
INSERT INTO order_detail(id, user_id, total, created_at) VALUES(12, 4, 170, '2023-08-08 07:19:59');
INSERT INTO order_detail(id, user_id, total, created_at) VALUES(13, 4, 377, '2023-08-08 07:20:51');
INSERT INTO order_detail(id, user_id, total, created_at) VALUES(14, 4, 75, '2023-08-08 07:26:26');
INSERT INTO order_detail(id, user_id, total, created_at) VALUES(15, 4, 150, '2023-08-08 07:26:43');
INSERT INTO order_detail(id, user_id, total, created_at) VALUES(16, 2, 101, '2023-08-08 17:02:10');
INSERT INTO order_detail(id, user_id, total, created_at) VALUES(17, 4, 61, '2023-08-08 17:36:22');
INSERT INTO order_detail(id, user_id, total, created_at) VALUES(18, 7, 217, '2023-08-13 21:16:06');
INSERT INTO order_detail(id, user_id, total, created_at) VALUES(19, 1, 300, '2023-08-13 21:58:05');

CREATE TABLE order_items (
    id INTEGER NOT NULL
  , user_id INTEGER
  , order_id INTEGER
  , product_id INTEGER
  , product_name VARCHAR
  , product_price INTEGER
  , quantity INTEGER
  , amount INTEGER
  , created_at VARCHAR
  , PRIMARY KEY(id)
);

INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(1, 4, 1, 22, 'Rug', 175, 1, 175, '2023-08-08 04:37:06');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(2, 4, 1, 2, 'Banana', 50, 1, 50, '2023-08-08 04:37:06');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(3, 4, 1, 3, 'Mango', 150, 1, 150, '2023-08-08 04:37:06');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(4, 4, 2, 3, 'Mango', 150, 1, 150, '2023-08-08 04:42:32');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(5, 4, 2, 2, 'Banana', 50, 1, 50, '2023-08-08 04:42:32');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(6, 4, 2, 1, 'Apple', 100, 1, 100, '2023-08-08 04:42:32');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(7, 4, 2, 26, 'Shirts', 105, 1, 105, '2023-08-08 04:42:32');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(8, 4, 3, 1, 'Apple', 400, 4, 400, '2023-08-08 04:54:16');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(9, 4, 3, 27, 'Toothpaste Tablets', 150, 1, 150, '2023-08-08 04:54:16');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(10, 4, 3, 13, 'Cauliflower', 212, 4, 212, '2023-08-08 04:54:16');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(11, 4, 3, 28, 'Essential Oils', 160, 2, 160, '2023-08-08 04:54:16');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(12, 4, 4, 4, 'Custard Apple', 3500, 14, 3500, '2023-08-08 04:58:07');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(13, 4, 5, 4, 'Custard Apple', 2500, 10, 2500, '2023-08-08 05:02:15');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(16, 4, 8, 1, 'Apple', 100, 1, 100, '2023-08-08 05:07:24');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(17, 4, 8, 16, 'Orange', 35, 1, 35, '2023-08-08 05:07:24');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(18, 4, 9, 1, 'Apple', 100, 1, 100, '2023-08-08 07:10:09');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(19, 4, 9, 1, 'Apple', 100, 1, 100, '2023-08-08 07:10:09');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(20, 4, 9, 22, 'Rug', 175, 1, 175, '2023-08-08 07:10:09');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(21, 4, 10, 25, 'Hats', 125, 5, 125, '2023-08-08 07:14:43');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(22, 4, 10, 13, 'Cauliflower', 159, 3, 159, '2023-08-08 07:14:43');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(23, 4, 11, 1, 'Apple', 300, 3, 300, '2023-08-08 07:15:59');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(24, 4, 12, 1, 'Apple', 100, 2, 100, '2023-08-08 07:19:59');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(25, 4, 13, 12, 'Carrot', 24, 1, 24, '2023-08-08 07:20:51');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(26, 4, 13, 29, 'LED Bulbs', 140, 3, 140, '2023-08-08 07:20:51');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(27, 4, 14, 1, 'Apple', 100, 1, 100, '2023-08-08 07:26:26');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(28, 4, 15, 1, 'Apple', 100, 2, 100, '2023-08-08 07:26:43');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(29, 2, 16, 1, 'Apple', 100, 1, 100, '2023-08-08 17:02:10');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(30, 2, 16, 16, 'Orange', 35, 1, 35, '2023-08-08 17:02:10');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(31, 4, 17, 14, 'Lemon', 82, 1, 82, '2023-08-08 17:36:22');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(32, 7, 18, 33, 'Pants', 80, 2, 80, '2023-08-13 21:16:06');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(33, 7, 18, 21, 'Cotton Bedding', 65, 2, 65, '2023-08-13 21:16:07');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(34, 1, 19, 1, 'Apple', 100, 1, 100, '2023-08-13 21:58:05');
INSERT INTO order_items(id, user_id, order_id, product_id, product_name, product_price, quantity, amount, created_at) VALUES(35, 1, 19, 2, 'Banana', 100, 2, 100, '2023-08-13 21:58:05');

CREATE TABLE orders (
    id INTEGER NOT NULL
  , user_id INTEGER
  , amount INTEGER
  , date VARCHAR
  , PRIMARY KEY(id)
);

INSERT INTO orders(id, user_id, amount, date) VALUES(3, 2, 5000, '2022-10-10');

CREATE TABLE "products" (
    "id" INTEGER
  , "name" TEXT
  , "category" NUMERIC
  , "category_id" INTEGER
  , "price" INTEGER
  , "quantity" INTEGER
  , "time" INTEGER
  , "image" TEXT
  , "si_unit" INTEGER
  , "description" INTEGER
  , "best_before" TEXT
  , PRIMARY KEY("id" AUTOINCREMENT)
);

INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(1, 'Apple', 'Fruit', 1, 100, 987, '2023-07-29 03:29:02', 'apple.jpg', 'Per Kg', 'Savor the sweet taste of Honeycrisp Apples.  Dip them in caramel for a decadent caramel apple. Enjoy the delicious taste of Honeycrisp Apples.', 'DEC 2025');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(2, 'Banana', 'Fruit', 1, 50, -7, '2023-07-29 03:29:02', 'banana.jpg', 'Per Dozen', 'Savor the sweet taste of Honeycrisp Banana.  Dip them in caramel for a decadent caramel apple. Enjoy the delicious taste of Honeycrisp Banana.', 'MAR 2025');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(3, 'Mango', 'Fruit', 1, 150, -1, '2023-07-29 03:29:02', 'mango.jpg', 'Per Kg', 'Fresh', 'APR 2025');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(4, 'Custard Apple', 'Fruit', 1, 250, 0, '2023-07-29 03:29:02', 'custard_apple.jpg', 'Per Kg', 'Fresh', 'MAR 2025');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(9, 'Kiwi', 'Fruit', 1, 450, 0, '2023-07-29 03:29:02', 'kiwi.jpg', 'Per Kg', 'Fresh', 'DEC 2025');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(12, 'Carrot', 'Vegetable', 2, 24, 1199, '2023-08-01 05:53:44', 'carrot.jpg', 'Per Kg', 'Fresh Carrots direct from Farms.', 'AUG 2024');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(13, 'Cauliflower', 'Vegetable', 2, 53, 1253, '2023-08-01 05:58:35', 'cauliflower.jpg', 'Per Kg', 'Fresh Cauliflower direct from Farms.', 'FEB 2024');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(14, 'Lemon', 'Vegetable', 2, 82, 2456, '2023-08-01 05:59:38', 'lemon.jpg', 'Per Dozen', 'Fresh Lemon direct from Farms.', 'APR 2025');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(16, 'Orange', 'Fruit', 1, 35, 6539, '2023-08-01 06:00:36', 'orange.jpg', 'Per Kg', 'Fresh Orange direct from Farms.', 'MAR 2025');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(17, 'Onion', 'Vegetable', 2, 32, 1234, '2023-08-01 06:01:50', 'onion.jpg', 'Per Kg', 'Fresh Onion direct from Farms.', 'FEB 2024');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(18, 'Potato', 'Vegetable', 2, 31, 4536, '2023-08-01 06:02:27', 'potato.jpg', 'Per Kg', 'Fresh Potato direct from Farms.', 'FEB 2024');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(19, 'Raddish ', 'Vegetable', 2, 64, 1234, '2023-08-01 06:03:38', 'raddish.jpg', 'Per Kg', 'Fresh Raddish direct from Farms.', 'DEC 2025');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(20, 'Okhra', 'Vegetable', 2, 42, 800, '2023-08-01 08:12:54', 'okhra.jpg', 'Per Kg', 'Fresh Bhindi directly from farmland.', 'APR 2025');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(21, 'Cotton Bedding', 'Home Decor', 3, 65, 2498, '2023-08-01 22:35:22', 'cotBed.jpg', 'Per Litre', 'Fresh Milk ', 'AUG 2024');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(22, 'Rug', 'Home Decor', 3, 175, 999, '2023-08-01 22:38:22', 'rug.jpg', 'Per Piece', 'Fresh Butter', 'FEB 2024');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(23, 'Biodegradable Phone Case ', 'Tech & Gadgets ', 4, 20, 1200, '2023-08-01 22:40:06', 'phoneCase.jpg ', 'Per Packet', 'Potato Chips', 'FEB 2024');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(24, 'Solar Power Charger ', 'Tech & Gadgets ', 4, 30, 1324, '2023-08-01 22:41:27', 'solar.jpg ', 'Per Packet', 'Potato Chips', 'MAR 2025');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(25, 'Hats', 'Fashion & Apparel', 5, 25, 1229, '2023-08-01 22:43:45', 'hats.jpg', 'Per Bottle', 'Carbonated Water', 'APR 2025');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(26, 'Shirts', 'Fashion & Apparel', 5, 105, 1452, '2023-08-01 22:44:46', 'shirts.jpg', 'Per Bottle', 'Energy Drink', 'FEB 2024');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(27, 'Toothpaste Tablets', 'Beauty & Personal Care', 6, 150, 4231, '2023-08-01 22:46:53', 'toothTab.jpg', 'Per Packet', 'Ready In 3 Mintues.', 'DEC 2025');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(28, 'Essential Oils', 'Home Goods', 7, 80, 3141, '2023-08-01 22:48:20', 'oils.jpg', 'Per Piece', 'By MDH', 'MAR 2025');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(29, 'LED Bulbs', 'Home Goods', 7, 140, 3211, '2023-08-01 22:50:07', 'ledBulbs.jpg', 'Per Piece', 'Pack Of 3 ', 'APR 2025');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(30, 'Toothbrush', 'Plastic Free Products', 8, 40, 521, '2023-08-01 22:52:19', 'toothbrush.jpg', 'Per Packet', 'By English Oven', 'FEB 2024');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(31, 'Reusable Bags', 'Plastic Free Products', 8, 80, 4512, '2023-08-01 22:54:16', 'bags.jpg', 'Per Packet', 'By Haldiram', 'AUG 2024');
INSERT INTO products(id, name, category, category_id, price, quantity, time, image, si_unit, description, best_before) VALUES(33, 'Pants', 'Fashion & Apparel', NULL, 100, 498, '2023-08-08 02:12:51', 'pants.jpg', 'Per Litre', 'Fresh', 'FEB 2024');

CREATE TABLE "users" (
    "id" INTEGER NOT NULL
  , "name" VARCHAR
  , "email" VARCHAR
  , "password" VARCHAR
  , "address" TEXT
  , "phone_number" INTEGER
  , "admin" INTEGER
  , PRIMARY KEY("id")
);

INSERT INTO users(id, name, email, password, address, phone_number, admin) VALUES(1, 'Admin
', 'admin@gmail.com', 'admin', 'owner', 100, 1);
INSERT INTO users(id, name, email, password, address, phone_number, admin) VALUES(2, 'Naman Sehwal', 'namansehwal@gmail.com', 'namansehwal@gmail.com', 'New Delhi', 8920510093, 0);
INSERT INTO users(id, name, email, password, address, phone_number, admin) VALUES(3, 'Sapna Jangid', 'sapnajangid@gmail.com', '1234', 'Jaipur, Rajasthan', 6578984578, 0);
INSERT INTO users(id, name, email, password, address, phone_number, admin) VALUES(4, 'Rishabh Singh', 'asusrishabh@gmail.com', '1234', 'Ghaziabad, Uttar Pradesh ', '+91 9578451245', 0);
INSERT INTO users(id, name, email, password, address, phone_number, admin) VALUES(5, 'Konal Pradhan', 'konal@gmail.com', 'konal@gmail.com', 'Chattisgarh', '+91 9895616543', 0);
INSERT INTO users(id, name, email, password, address, phone_number, admin) VALUES(6, 'Jaspreet', 'ps.preet200@gmail.com', 'sokka', 'london', '+91 9876543210', 0);
INSERT INTO users(id, name, email, password, address, phone_number, admin) VALUES(7, 'Naman Sehwal', 'naman@gmail.com', '1234', 'New Delhi', 9878987865, 0);

DELETE FROM sqlite_sequence;

INSERT INTO sqlite_sequence(name, seq) VALUES('cart', 102);
INSERT INTO sqlite_sequence(name, seq) VALUES('products', 36);

RELEASE dump;

COMMIT;

