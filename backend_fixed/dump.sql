

CREATE TABLE activity_log (
            id SERIAL PRIMARY KEY,
            message TEXT,
            timestamp TEXT
        );
CREATE TABLE chefs (

    id SERIAL PRIMARY KEY,

    name TEXT NOT NULL,

    email TEXT UNIQUE NOT NULL,

    password TEXT NOT NULL,

    active INTEGER DEFAULT 1

);
INSERT INTO "chefs" VALUES(1,'Chef Ramesh','chef1@eatrova.com','chef123',1);
INSERT INTO "chefs" VALUES(2,'Chef Mahesh','chef2@eatrova.com','chef123',1);
CREATE TABLE customers (
            id SERIAL PRIMARY KEY,
            name TEXT NOT NULL,
            email TEXT UNIQUE NOT NULL,
            phone TEXT UNIQUE NOT NULL,
            password TEXT NOT NULL
        );
INSERT INTO "customers" VALUES(1,'gaurang','gaurang@gmail.com','1234567891','1234');
INSERT INTO "customers" VALUES(2,'malav','malav@gmail.com','1234567895','1234');
INSERT INTO "customers" VALUES(3,'Tilak','tilak@gmail.com','1234564223','1234');
INSERT INTO "customers" VALUES(4,'krish','krish123@gmail.com','1249538952','12');
INSERT INTO "customers" VALUES(5,'rudra','rudra@gmail.com','7654127893','123');
CREATE TABLE expenses (

  id SERIAL PRIMARY KEY,

  title TEXT NOT NULL,

  category TEXT NOT NULL,

  amount REAL NOT NULL,

  note TEXT,

  created_at TIMESTAMP DEFAULT (datetime('now'))

);
INSERT INTO "expenses" VALUES(2,'Rent','Rent',25000.0,'Rent of december
','2025-12-06 06:49:48');
CREATE TABLE feedback (

  id SERIAL PRIMARY KEY,

  order_id INTEGER,

  customer_name TEXT,

  rating INTEGER, -- 1..5

  comment TEXT,

  created_at TIMESTAMP DEFAULT (datetime('now'))

);
CREATE TABLE inventory (

    id SERIAL PRIMARY KEY,

    name TEXT NOT NULL,

    current_stock INTEGER NOT NULL DEFAULT 0,

    min_stock INTEGER NOT NULL DEFAULT 0,

    unit TEXT

);
INSERT INTO "inventory" VALUES(2,'flour ',20,10,'kg');
INSERT INTO "inventory" VALUES(3,'tomatoes',0,10,'kg');
CREATE TABLE managers (
            id SERIAL PRIMARY KEY,
            name TEXT NOT NULL,
            email TEXT UNIQUE NOT NULL,
            password TEXT NOT NULL
        , active INTEGER DEFAULT 1);
INSERT INTO "managers" VALUES(1,'Manager

','manager@gmail.com','123456',1);
CREATE TABLE menu_items (

    id SERIAL PRIMARY KEY,

    name TEXT NOT NULL,

    description TEXT,

    price REAL NOT NULL,

    image TEXT,

    category TEXT DEFAULT 'main',

    is_available INTEGER DEFAULT 1,

    is_deleted INTEGER DEFAULT 0,

    deleted_at TEXT

);
INSERT INTO "menu_items" VALUES(8,'Classic Pizza ','it is very delicious ',99.0,'/static/menu/pizza.jpg ','main',1,0,NULL);
INSERT INTO "menu_items" VALUES(10,'Margherita Pizza ','Classic cheese and tomato pizza',299.0,'/static/menu/pizza1.jpg','main',1,0,NULL);
INSERT INTO "menu_items" VALUES(11,'Pasta Alfredo ','Creamy white sauce pasta',249.0,'/static/menu/pasta.jpg','main',1,0,NULL);
INSERT INTO "menu_items" VALUES(12,'Veg Burger','Loaded with veggies and cheese',199.0,'/static/menu/burger.jpg','main',1,0,NULL);
INSERT INTO "menu_items" VALUES(13,'Cold Coffee ','Iced coffee with cream',149.0,'/static/menu/coffee.jpg','drinks',1,0,NULL);
INSERT INTO "menu_items" VALUES(14,'Veg Noodles ','Hot wok-tossed noodles and veggies



✔ Never crash

✔ Handle null API data

✔ Show images safely

✔ Work with modal properly',180.0,'/static/menu/6caabd334cad4b7aad1b56326580adba.jpeg','main',1,0,NULL);
CREATE TABLE order_items (

  id SERIAL PRIMARY KEY,

  order_id INTEGER NOT NULL,

  menu_id INTEGER NOT NULL,

  quantity INTEGER NOT NULL,

  price REAL NOT NULL,

  started_at TEXT,

  finished_at TEXT,

  status TEXT DEFAULT 'pending',

  item_name TEXT,

  item_image TEXT,

  FOREIGN KEY (order_id) REFERENCES orders(id),

  FOREIGN KEY (menu_id) REFERENCES menu_items(id)

);
INSERT INTO "order_items" VALUES(1,152,13,1,149.0,NULL,NULL,'pending','Cold Coffee ','/static/menu/coffee.jpg');
INSERT INTO "order_items" VALUES(2,152,12,1,199.0,NULL,NULL,'pending','Veg Burger ','/static/menu/burger.jpg');
INSERT INTO "order_items" VALUES(3,153,13,1,149.0,NULL,NULL,'pending','Cold Coffee ','/static/menu/coffee.jpg');
INSERT INTO "order_items" VALUES(4,154,12,1,199.0,NULL,NULL,'pending','Veg Burger ','/static/menu/burger.jpg');
INSERT INTO "order_items" VALUES(5,155,14,1,189.0,NULL,NULL,'pending','Veg Noodles ','/static/menu/6caabd334cad4b7aad1b56326580adba.jpeg');
INSERT INTO "order_items" VALUES(6,155,13,1,149.0,NULL,NULL,'pending','Cold Coffee ','/static/menu/coffee.jpg');
INSERT INTO "order_items" VALUES(7,156,12,1,199.0,NULL,NULL,'pending','Veg Burger ','/static/menu/burger.jpg');
INSERT INTO "order_items" VALUES(8,156,13,1,149.0,NULL,NULL,'pending','Cold Coffee ','/static/menu/coffee.jpg');
INSERT INTO "order_items" VALUES(9,157,11,1,249.0,NULL,NULL,'pending','Pasta Alfredo ','/static/menu/pasta.jpg');
INSERT INTO "order_items" VALUES(10,158,14,1,189.0,NULL,NULL,'pending','Veg Noodles ','/static/menu/6caabd334cad4b7aad1b56326580adba.jpeg');
INSERT INTO "order_items" VALUES(11,158,13,1,149.0,NULL,NULL,'pending','Cold Coffee ','/static/menu/coffee.jpg');
INSERT INTO "order_items" VALUES(12,159,11,1,249.0,NULL,NULL,'pending','Pasta Alfredo ','/static/menu/pasta.jpg');
INSERT INTO "order_items" VALUES(13,160,11,1,249.0,NULL,NULL,'pending','Pasta Alfredo ','/static/menu/pasta.jpg');
INSERT INTO "order_items" VALUES(14,160,13,1,149.0,NULL,NULL,'pending','Cold Coffee ','/static/menu/coffee.jpg');
INSERT INTO "order_items" VALUES(15,161,14,1,189.0,NULL,NULL,'pending','Veg Noodles ','/static/menu/6caabd334cad4b7aad1b56326580adba.jpeg');
INSERT INTO "order_items" VALUES(16,162,13,1,149.0,NULL,NULL,'pending','Cold Coffee ','/static/menu/coffee.jpg');
INSERT INTO "order_items" VALUES(17,163,12,1,199.0,NULL,NULL,'pending','Veg Burger ','/static/menu/burger.jpg');
INSERT INTO "order_items" VALUES(18,163,13,1,149.0,NULL,NULL,'pending','Cold Coffee ','/static/menu/coffee.jpg');
INSERT INTO "order_items" VALUES(19,164,11,1,249.0,NULL,NULL,'pending','Pasta Alfredo ','/static/menu/pasta.jpg');
INSERT INTO "order_items" VALUES(20,165,14,1,189.0,NULL,NULL,'pending','Veg Noodles ','/static/menu/6caabd334cad4b7aad1b56326580adba.jpeg');
INSERT INTO "order_items" VALUES(21,165,13,1,149.0,NULL,NULL,'pending','Cold Coffee ','/static/menu/coffee.jpg');
INSERT INTO "order_items" VALUES(22,166,14,1,189.0,NULL,NULL,'pending','Veg Noodles ','/static/menu/6caabd334cad4b7aad1b56326580adba.jpeg');
INSERT INTO "order_items" VALUES(23,166,13,1,149.0,NULL,NULL,'pending','Cold Coffee ','/static/menu/coffee.jpg');
INSERT INTO "order_items" VALUES(24,167,12,1,199.0,NULL,NULL,'pending','Veg Burger ','/static/menu/burger.jpg');
INSERT INTO "order_items" VALUES(25,167,11,1,249.0,NULL,NULL,'pending','Pasta Alfredo ','/static/menu/pasta.jpg');
INSERT INTO "order_items" VALUES(26,168,14,1,189.0,NULL,NULL,'pending','Veg Noodles ','/static/menu/6caabd334cad4b7aad1b56326580adba.jpeg');
INSERT INTO "order_items" VALUES(27,168,13,1,149.0,NULL,NULL,'pending','Cold Coffee ','/static/menu/coffee.jpg');
INSERT INTO "order_items" VALUES(28,169,12,1,199.0,NULL,NULL,'pending','Veg Burger ','/static/menu/burger.jpg');
INSERT INTO "order_items" VALUES(29,170,13,1,149.0,NULL,NULL,'pending','Cold Coffee ','/static/menu/coffee.jpg');
INSERT INTO "order_items" VALUES(30,171,14,1,189.0,NULL,NULL,'pending','Veg Noodles ','/static/menu/6caabd334cad4b7aad1b56326580adba.jpeg');
INSERT INTO "order_items" VALUES(31,172,14,2,189.0,NULL,NULL,'pending','Veg Noodles ','/static/menu/6caabd334cad4b7aad1b56326580adba.jpeg');
INSERT INTO "order_items" VALUES(32,172,11,1,249.0,NULL,NULL,'pending','Pasta Alfredo ','/static/menu/pasta.jpg');
INSERT INTO "order_items" VALUES(33,173,13,2,149.0,NULL,NULL,'pending','Cold Coffee ','/static/menu/coffee.jpg');
INSERT INTO "order_items" VALUES(34,174,12,1,199.0,NULL,NULL,'pending','Veg Burger ','/static/menu/burger.jpg');
INSERT INTO "order_items" VALUES(35,174,11,1,249.0,NULL,NULL,'pending','Pasta Alfredo ','/static/menu/pasta.jpg');
INSERT INTO "order_items" VALUES(36,175,14,1,18.0,NULL,NULL,'pending','Veg Noodles ','/static/menu/6caabd334cad4b7aad1b56326580adba.jpeg');
INSERT INTO "order_items" VALUES(37,175,13,1,149.0,NULL,NULL,'pending','Cold Coffee ','/static/menu/coffee.jpg');
INSERT INTO "order_items" VALUES(38,176,12,1,199.0,NULL,NULL,'pending','Veg Burger ','/static/menu/burger.jpg');
INSERT INTO "order_items" VALUES(39,176,8,1,99.0,NULL,NULL,'pending','Classic Pizza ','/static/menu/pizza.jpg ');
INSERT INTO "order_items" VALUES(40,177,13,1,149.0,NULL,NULL,'pending','Cold Coffee ','/static/menu/coffee.jpg');
INSERT INTO "order_items" VALUES(41,178,14,1,18.0,NULL,NULL,'pending','Veg Noodles ','/static/menu/6caabd334cad4b7aad1b56326580adba.jpeg');
INSERT INTO "order_items" VALUES(42,179,12,1,199.0,NULL,NULL,'pending','Veg Burger','/static/menu/burger.jpg');
INSERT INTO "order_items" VALUES(43,179,11,2,249.0,NULL,NULL,'pending','Pasta Alfredo ','/static/menu/pasta.jpg');
INSERT INTO "order_items" VALUES(44,180,14,1,180.0,NULL,NULL,'pending','Veg Noodles ','/static/menu/6caabd334cad4b7aad1b56326580adba.jpeg');
INSERT INTO "order_items" VALUES(45,180,13,1,149.0,NULL,NULL,'pending','Cold Coffee ','/static/menu/coffee.jpg');
INSERT INTO "order_items" VALUES(46,180,12,1,199.0,NULL,NULL,'pending','Veg Burger','/static/menu/burger.jpg');
INSERT INTO "order_items" VALUES(47,180,11,1,249.0,NULL,NULL,'pending','Pasta Alfredo ','/static/menu/pasta.jpg');
INSERT INTO "order_items" VALUES(48,180,8,1,99.0,NULL,NULL,'pending','Classic Pizza ','/static/menu/pizza.jpg ');
INSERT INTO "order_items" VALUES(49,180,10,1,299.0,NULL,NULL,'pending','Margherita Pizza ','/static/menu/pizza1.jpg');
INSERT INTO "order_items" VALUES(50,181,13,1,149.0,NULL,NULL,'pending','Cold Coffee ','/static/menu/coffee.jpg');
INSERT INTO "order_items" VALUES(51,181,12,1,199.0,NULL,NULL,'pending','Veg Burger','/static/menu/burger.jpg');
INSERT INTO "order_items" VALUES(52,182,14,1,180.0,NULL,NULL,'pending','Veg Noodles ','/static/menu/6caabd334cad4b7aad1b56326580adba.jpeg');
INSERT INTO "order_items" VALUES(53,183,14,1,180.0,NULL,NULL,'pending','Veg Noodles ','/static/menu/6caabd334cad4b7aad1b56326580adba.jpeg');
INSERT INTO "order_items" VALUES(54,183,13,1,149.0,NULL,NULL,'pending','Cold Coffee ','/static/menu/coffee.jpg');
INSERT INTO "order_items" VALUES(55,183,12,1,199.0,NULL,NULL,'pending','Veg Burger','/static/menu/burger.jpg');
INSERT INTO "order_items" VALUES(56,184,13,1,149.0,NULL,NULL,'pending','Cold Coffee ','/static/menu/coffee.jpg');
INSERT INTO "order_items" VALUES(57,185,14,1,180.0,NULL,NULL,'pending','Veg Noodles ','/static/menu/6caabd334cad4b7aad1b56326580adba.jpeg');
INSERT INTO "order_items" VALUES(58,185,13,1,149.0,NULL,NULL,'pending','Cold Coffee ','/static/menu/coffee.jpg');
INSERT INTO "order_items" VALUES(59,186,13,2,149.0,NULL,NULL,'pending','Cold Coffee ','/static/menu/coffee.jpg');
INSERT INTO "order_items" VALUES(60,187,11,1,249.0,NULL,NULL,'pending','Pasta Alfredo ','/static/menu/pasta.jpg');
CREATE TABLE orders (
            id SERIAL PRIMARY KEY,
            user_id INTEGER NOT NULL,
            total REAL NOT NULL,
            created_at TIMESTAMP NOT NULL, paid INTEGER DEFAULT 0, status TEXT DEFAULT 'pending', updated_at TEXT, cancel_reason TEXT, table_no INT, customer_name TEXT DEFAULT '', totalAmount REAL DEFAULT 0, table_id INTEGER, session_id INTEGER, payment_method TEXT DEFAULT 'Cash',
            FOREIGN KEY (user_id) REFERENCES customers(id)
        );
INSERT INTO "orders" VALUES(1,15,0.0,'2025-11-14 15:38:48',0,'cancelled','2025-11-22 14:32:48','item not avl',NULL,'',0.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(2,1,0.0,'2025-11-14 15:49:22',1,'cancelled','2025-11-22 14:21:56','not',NULL,'',0.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(3,1,0.0,'2025-11-14 15:52:11',1,'ready','2026-01-02 19:26:24',NULL,NULL,'',0.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(4,1,0.0,'2025-11-14 15:54:38',1,'pending',NULL,NULL,NULL,'',0.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(5,2,0.0,'2025-11-14 15:56:29',1,'completed','2025-11-23 15:36:38',NULL,NULL,'',0.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(6,2,0.0,'2025-11-14 18:40:53',1,'pending',NULL,NULL,NULL,'',0.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(7,2,299.0,'2025-11-14 18:45:26',1,'pending',NULL,NULL,NULL,'',299.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(8,2,0.0,'2025-11-14 18:45:52',1,'ready','2025-11-24 19:59:36',NULL,NULL,'',0.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(9,2,299.0,'2025-11-14 18:48:07',1,'pending',NULL,NULL,NULL,'',299.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(10,2,199.0,'2025-11-14 18:51:01',1,'pending',NULL,NULL,NULL,'',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(11,2,199.0,'2025-11-14 18:52:19',1,'pending',NULL,NULL,NULL,'',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(12,2,199.0,'2025-11-14 19:00:58',1,'pending',NULL,NULL,NULL,'',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(13,2,249.0,'2025-11-14 19:03:23',1,'pending',NULL,NULL,NULL,'',249.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(14,2,199.0,'2025-11-14 19:03:34',1,'pending',NULL,NULL,NULL,'',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(15,2,448.0,'2025-11-14 19:18:33',1,'pending',NULL,NULL,NULL,'',448.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(16,2,199.0,'2025-11-14 19:23:02',1,'pending',NULL,NULL,NULL,'',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(17,2,249.0,'2025-11-14 19:23:20',1,'pending',NULL,NULL,NULL,'',249.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(18,2,299.0,'2025-11-14 19:27:13',1,'pending',NULL,NULL,NULL,'',299.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(19,2,498.0,'2025-11-14 19:27:34',1,'pending',NULL,NULL,NULL,'',498.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(20,2,249.0,'2025-11-14 19:27:47',1,'pending',NULL,NULL,NULL,'',249.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(21,2,149.0,'2025-11-14 19:28:10',1,'pending',NULL,NULL,NULL,'',149.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(22,2,199.0,'2025-11-14 19:38:21',1,'pending',NULL,NULL,NULL,'',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(23,2,249.0,'2025-11-14 19:38:32',1,'pending',NULL,NULL,NULL,'',249.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(24,2,199.0,'2025-11-15 10:27:37',1,'cancelled','2025-11-22 14:36:41','24 not avl',NULL,'',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(25,2,249.0,'2025-11-15 10:31:36',1,'pending',NULL,NULL,NULL,'',249.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(26,2,249.0,'2025-11-15 10:34:44',1,'pending',NULL,NULL,NULL,'',249.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(27,2,199.0,'2025-11-15 10:36:13',1,'pending',NULL,NULL,NULL,'',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(28,2,996.0,'2025-11-15 10:47:20',1,'pending',NULL,NULL,NULL,'',996.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(29,2,199.0,'2025-11-15 10:50:22',1,'cancelled','2025-11-21 17:11:39',NULL,NULL,'',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(30,2,199.0,'2025-11-15 10:51:40',1,'pending',NULL,NULL,NULL,'',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(31,2,448.0,'2025-11-15 10:53:31',1,'pending',NULL,NULL,NULL,'',448.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(32,2,199.0,'2025-11-15 10:57:58',1,'pending',NULL,NULL,NULL,'',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(33,2,149.0,'2025-11-15 11:05:59',1,'pending',NULL,NULL,NULL,'',149.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(34,2,249.0,'2025-11-15 11:07:25',1,'pending',NULL,NULL,NULL,'',249.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(35,2,199.0,'2025-11-15 11:12:17',1,'pending',NULL,NULL,NULL,'',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(36,2,249.0,'2025-11-15 11:13:02',1,'pending',NULL,NULL,NULL,'',249.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(37,2,199.0,'2025-11-15 11:17:41',1,'pending',NULL,NULL,NULL,'',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(38,1,597.0,'2025-11-15 11:18:43',1,'pending',NULL,NULL,NULL,'',597.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(39,1,199.0,'2025-11-15 11:21:27',1,'pending',NULL,NULL,NULL,'',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(40,1,498.0,'2025-11-15 11:22:35',1,'pending',NULL,NULL,NULL,'',498.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(41,1,199.0,'2025-11-15 11:22:49',1,'preparing','2025-11-23 15:29:53',NULL,NULL,'',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(42,1,199.0,'2025-11-15 11:24:00',1,'cancelled','2025-11-22 14:30:06','nothing',NULL,'',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(43,2,199.0,'2025-11-15 18:47:33',1,'cancelled','2025-11-22 15:26:20','123',NULL,'',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(44,2,398.0,'2025-11-15 19:22:45',1,'cancelled','2025-11-21 16:47:33',NULL,NULL,'',398.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(45,2,249.0,'2025-11-15 19:31:38',1,'cancelled','2025-11-21 17:08:19',NULL,NULL,'',249.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(46,2,249.0,'2025-11-15 19:35:26',1,'cancelled','2025-11-21 16:38:56',NULL,NULL,'',249.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(47,2,398.0,'2025-11-15 19:43:09',1,'preparing','2025-11-21 16:29:28',NULL,NULL,'',398.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(48,2,299.0,'2025-11-15 19:43:18',1,'cancelled','2025-11-21 16:05:10',NULL,NULL,'',299.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(49,2,249.0,'2025-11-15 19:43:39',1,'cancelled','2025-11-21 16:05:04',NULL,NULL,'',249.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(50,2,199.0,'2025-11-17 15:09:29',1,'cancelled','2025-11-21 15:52:59',NULL,NULL,'',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(51,2,299.0,'2025-11-17 15:09:39',1,'cancelled','2025-11-22 14:51:17','vvdbb',NULL,'',299.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(52,2,747.0,'2025-11-17 15:22:36',1,'cancelled','2025-11-21 15:50:41',NULL,NULL,'',747.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(53,2,299.0,'2025-11-17 17:50:28',1,'cancelled','2025-11-22 14:23:13','nbk',NULL,'',299.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(54,2,498.0,'2025-11-18 14:21:20',1,'ready','2025-11-21 15:26:12',NULL,NULL,'',498.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(55,2,249.0,'2025-11-18 14:22:10',1,'ready','2025-11-18 16:17:20',NULL,NULL,'',249.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(56,2,199.0,'2025-11-18 14:25:06',1,'completed','2025-12-06 12:08:33',NULL,NULL,'',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(57,2,299.0,'2025-11-18 16:08:46',1,'cancelled','2025-11-18 16:15:56',NULL,NULL,'',299.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(58,1,299.0,'2025-11-18 16:21:19',1,'cancelled','2025-12-06 12:07:30','malav',NULL,'',299.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(59,1,199.0,'2025-11-18 16:22:24',0,'cancelled','2025-11-21 17:42:50',NULL,NULL,'',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(60,2,199.0,'2025-11-18 16:23:15',1,'completed','2025-11-23 15:45:00',NULL,NULL,'',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(61,2,299.0,'2025-11-18 18:36:18',1,'completed','2025-11-23 15:40:13',NULL,NULL,'',299.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(62,2,299.0,'2025-11-18 18:40:01',1,'completed','2025-11-22 16:16:40',NULL,NULL,'',299.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(63,2,299.0,'2025-11-18 18:41:29',1,'completed','2025-12-02 18:49:48',NULL,NULL,'',299.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(64,2,199.0,'2025-11-18 18:48:38',1,'preparing','2025-11-18 19:23:04',NULL,NULL,'',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(65,2,299.0,'2025-11-18 18:51:55',1,'completed','2025-11-23 15:38:39',NULL,NULL,'',299.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(66,2,299.0,'2025-11-18 18:52:22',1,'completed','2025-11-22 16:08:42',NULL,NULL,'',299.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(67,2,299.0,'2025-11-18 19:15:55',1,'cancelled','2025-11-21 17:36:37',NULL,NULL,'',299.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(68,2,498.0,'2025-11-23 17:53:18',1,'preparing','2025-11-26 20:33:14',NULL,'D','',498.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(69,2,299.0,'2025-11-24 16:36:14',1,'preparing','2025-11-26 20:32:42',NULL,'D','',299.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(70,2,199.0,'2025-11-24 16:42:27',1,'completed','2025-11-24 19:54:31',NULL,'C','',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(71,2,199.0,'2025-11-24 17:32:26',1,'ready','2025-12-02 18:41:48',NULL,'A','',199.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(72,2,548.0,'2025-11-24 19:50:21',1,'cancelled','2025-11-26 20:07:09','72 was cancel ','C','',548.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(73,2,500.0,'2025-11-26 20:05:52',1,'cancelled','2025-11-26 23:04:31','ccacc','C','',500.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(74,2,947.0,'2025-11-26 23:00:09',1,'completed','2025-11-26 23:06:00',NULL,'C','',947.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(75,2,50.0,'2025-11-27 23:20:09',1,'pending',NULL,NULL,'C','',50.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(76,2,448.0,'2025-11-30 12:48:26',1,'preparing','2025-12-02 18:41:43',NULL,'C','',448.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(77,2,120.0,'2025-12-01 19:01:44',0,'pending',NULL,NULL,'C','',120.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(78,2,500.0,'2025-12-06 12:04:34',0,'pending',NULL,NULL,'B','',500.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(79,2,500.0,'2025-12-06 12:04:40',0,'pending',NULL,NULL,'B','',500.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(80,2,300.0,'2025-12-06 12:04:57',1,'ready','2025-12-06 12:06:40',NULL,'B','',300.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(81,2,300.0,'2025-12-06 12:05:13',1,'completed','2025-12-06 12:08:15',NULL,'B','',300.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(82,2,100.0,'2025-12-06 12:10:27',0,'pending',NULL,NULL,'B','',100.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(83,3,350.0,'2025-12-06 12:26:17',0,'preparing','2025-12-12 20:02:29',NULL,'B','',350.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(84,2,399.0,'2025-12-12 20:02:01',0,'pending',NULL,NULL,'B','',399.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(85,2,1243.0,'2025-12-13 19:08:18',0,'pending',NULL,NULL,'A','',1243.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(86,2,275.0,'2025-12-13 19:53:30',0,'pending',NULL,NULL,'A','',275.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(87,2,275.0,'2025-12-13 19:53:30',0,'pending',NULL,NULL,'A','',275.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(88,2,275.0,'2025-12-13 19:53:30',0,'pending',NULL,NULL,'A','',275.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(89,2,275.0,'2025-12-13 19:53:30',0,'pending',NULL,NULL,'A','',275.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(90,2,275.0,'2025-12-13 19:53:30',0,'pending',NULL,NULL,'A','',275.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(91,2,275.0,'2025-12-13 19:53:30',0,'pending',NULL,NULL,'A','',275.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(92,2,275.0,'2025-12-13 19:53:30',0,'pending',NULL,NULL,'A','',275.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(93,2,275.0,'2025-12-13 19:53:30',0,'pending',NULL,NULL,'A','',275.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(94,2,275.0,'2025-12-13 19:53:30',0,'pending',NULL,NULL,'A','',275.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(95,2,275.0,'2025-12-13 19:53:30',0,'cancelled','2026-03-06 21:51:38','not','A','',275.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(96,2,275.0,'2025-12-13 19:53:49',0,'pending',NULL,NULL,'A','',275.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(97,2,275.0,'2025-12-13 19:53:57',0,'cancelled',NULL,'no','A','',275.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(98,2,550.0,'2025-12-13 20:02:01',0,'pending',NULL,NULL,'A','',550.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(99,2,550.0,'2025-12-13 20:02:03',0,'pending',NULL,NULL,'A','',550.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(100,2,163.9,'2025-12-13 20:15:08',0,'pending',NULL,NULL,'A','',163.9,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(101,2,163.9,'2025-12-13 20:18:56',0,'pending',NULL,NULL,'A','',163.9,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(102,2,163.9,'2025-12-13 20:22:09',0,'completed','2026-03-18 10:09:29',NULL,'A','',163.9,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(103,2,319.0,'2025-12-13 20:23:26',0,'completed','2025-12-13 20:24:51',NULL,'A','',319.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(104,2,163.9,'2025-12-13 20:26:38',0,'preparing',NULL,NULL,'A','',163.9,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(105,2,44.0,'2025-12-13 20:30:51',0,'pending',NULL,NULL,'A','',44.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(106,2,319.0,'2025-12-15 18:49:22',0,'ready','2026-03-07 11:30:42',NULL,'A','',319.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(107,2,275.0,'2025-12-15 18:59:27',0,'cancelled','2026-03-06 20:20:17','item not avl','A','',275.0,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(108,2,207.9,'2025-12-15 19:01:33',0,'cancelled','2026-03-06 21:42:43','not avl','A','',207.9,NULL,NULL,'Cash');
INSERT INTO "orders" VALUES(109,2,44.0,'2025-12-15 20:10:47',0,'ready','2026-03-06 20:24:52',NULL,2,'',44.0,2,NULL,'Cash');
INSERT INTO "orders" VALUES(110,2,44.0,'2025-12-15 20:11:34',0,'cancelled','2026-01-12 18:56:52','item not avl',10,'',44.0,10,NULL,'Cash');
INSERT INTO "orders" VALUES(111,2,189.0,'2025-12-15 20:30:36',0,'completed','2025-12-31 21:05:46',NULL,5,'',189.0,5,NULL,'Cash');
INSERT INTO "orders" VALUES(112,2,499.0,'2025-12-15 20:33:53',1,'completed','2025-12-15 20:35:13',NULL,6,'',499.0,6,NULL,'Cash');
INSERT INTO "orders" VALUES(113,2,40.0,'2025-12-16 18:36:26',1,'ready','2026-03-06 20:24:48',NULL,1,'',40.0,1,NULL,'Cash');
INSERT INTO "orders" VALUES(114,2,388.0,'2025-12-17 18:39:54',0,'preparing',NULL,NULL,5,'',388.0,5,1,'Cash');
INSERT INTO "orders" VALUES(115,2,249.0,'2025-12-17 18:40:11',0,'completed','2026-03-11 18:48:07',NULL,5,'',249.0,5,1,'Cash');
INSERT INTO "orders" VALUES(116,2,189.0,'2025-12-17 19:53:05',0,'ready','2026-03-11 18:20:26',NULL,5,'',189.0,5,1,'Cash');
INSERT INTO "orders" VALUES(117,2,189.0,'2025-12-18 17:57:52',1,'completed',NULL,NULL,1,'',189.0,1,2,'Cash');
INSERT INTO "orders" VALUES(118,2,149.0,'2025-12-18 18:01:17',1,'completed',NULL,NULL,1,'',149.0,1,2,'Cash');
INSERT INTO "orders" VALUES(119,2,250.0,'2025-12-18 18:29:47',1,'completed',NULL,NULL,1,'',250.0,1,2,'Cash');
INSERT INTO "orders" VALUES(120,2,448.0,'2025-12-18 18:36:07',1,'completed',NULL,NULL,1,'',448.0,1,3,'Cash');
INSERT INTO "orders" VALUES(121,2,250.0,'2025-12-18 20:29:11',1,'completed',NULL,NULL,1,'',250.0,1,4,'Cash');
INSERT INTO "orders" VALUES(122,2,189.0,'2025-12-19 13:00:52',1,'completed',NULL,NULL,1,'',189.0,1,5,'Cash');
INSERT INTO "orders" VALUES(123,2,249.0,'2025-12-19 13:01:10',1,'completed',NULL,NULL,1,'',249.0,1,5,'Cash');
INSERT INTO "orders" VALUES(124,2,498.0,'2025-12-19 17:27:37',1,'completed',NULL,NULL,1,'',498.0,1,6,'Cash');
INSERT INTO "orders" VALUES(125,2,149.0,'2025-12-19 17:28:09',1,'completed',NULL,NULL,1,'',149.0,1,6,'Cash');
INSERT INTO "orders" VALUES(126,2,249.0,'2025-12-19 17:36:45',1,'completed',NULL,NULL,1,'',249.0,1,7,'Cash');
INSERT INTO "orders" VALUES(127,2,249.0,'2025-12-19 17:37:40',1,'completed',NULL,NULL,1,'',249.0,1,8,'Card');
INSERT INTO "orders" VALUES(128,2,149.0,'2025-12-19 17:38:19',1,'completed',NULL,NULL,1,'',149.0,1,9,'Card');
INSERT INTO "orders" VALUES(129,2,299.0,'2025-12-19 17:56:39',1,'completed',NULL,NULL,1,'',299.0,1,10,'Cash');
INSERT INTO "orders" VALUES(130,2,299.0,'2025-12-19 17:57:26',1,'completed',NULL,NULL,1,'',299.0,1,10,'Cash');
INSERT INTO "orders" VALUES(131,2,249.0,'2025-12-19 18:20:03',1,'completed',NULL,NULL,1,'',249.0,1,11,'Card');
INSERT INTO "orders" VALUES(132,2,149.0,'2025-12-19 18:55:45',1,'completed',NULL,NULL,1,'',149.0,1,11,'Card');
INSERT INTO "orders" VALUES(133,2,250.0,'2025-12-19 19:38:35',1,'completed',NULL,NULL,1,'',250.0,1,12,'UPI');
INSERT INTO "orders" VALUES(134,2,149.0,'2025-12-19 19:41:50',1,'completed',NULL,NULL,1,'',149.0,1,13,'UPI');
INSERT INTO "orders" VALUES(135,2,149.0,'2025-12-19 19:49:57',1,'completed',NULL,NULL,1,'',149.0,1,14,'UPI');
INSERT INTO "orders" VALUES(136,2,250.0,'2025-12-19 19:57:13',1,'completed',NULL,NULL,1,'',250.0,1,15,'Card');
INSERT INTO "orders" VALUES(137,2,149.0,'2025-12-19 20:03:10',1,'completed',NULL,NULL,1,'',149.0,1,16,'Cash');
INSERT INTO "orders" VALUES(138,2,149.0,'2025-12-19 20:17:36',1,'completed',NULL,NULL,1,'',149.0,1,16,'Cash');
INSERT INTO "orders" VALUES(139,2,149.0,'2025-12-19 20:17:56',1,'completed',NULL,NULL,1,'',149.0,1,17,'Cash');
INSERT INTO "orders" VALUES(140,2,40.0,'2025-12-19 20:18:51',1,'completed',NULL,NULL,1,'',40.0,1,18,'UPI');
INSERT INTO "orders" VALUES(141,2,149.0,'2025-12-19 20:31:47',1,'completed',NULL,NULL,1,'',149.0,1,19,'UPI');
INSERT INTO "orders" VALUES(142,2,189.0,'2025-12-20 11:15:33',1,'completed',NULL,NULL,1,'',189.0,1,20,'Card');
INSERT INTO "orders" VALUES(143,2,250.0,'2025-12-20 11:16:18',1,'completed',NULL,NULL,1,'',250.0,1,20,'Card');
INSERT INTO "orders" VALUES(144,2,348.0,'2025-12-21 11:10:30',1,'completed',NULL,NULL,1,'',348.0,1,21,'Cash');
INSERT INTO "orders" VALUES(145,2,249.0,'2025-12-21 17:58:26',1,'completed',NULL,NULL,1,'',249.0,1,22,'Cash');
INSERT INTO "orders" VALUES(146,1,448.0,'2025-12-24 09:45:44',1,'completed',NULL,NULL,6,'',448.0,6,23,'Cash');
INSERT INTO "orders" VALUES(147,2,338.0,'2025-12-27 19:05:52',1,'completed',NULL,NULL,6,'',338.0,6,24,'Card');
INSERT INTO "orders" VALUES(148,2,99.0,'2025-12-27 19:06:10',1,'completed',NULL,NULL,6,'',99.0,6,24,'Card');
INSERT INTO "orders" VALUES(149,2,488.0,'2025-12-30 15:42:23',1,'completed',NULL,NULL,6,'',488.0,6,25,'UPI');
INSERT INTO "orders" VALUES(150,2,149.0,'2025-12-30 15:42:31',1,'completed',NULL,NULL,6,'',149.0,6,25,'UPI');
INSERT INTO "orders" VALUES(151,2,149.0,'2025-12-30 15:46:59',1,'completed',NULL,NULL,6,'',149.0,6,26,'Cash');
INSERT INTO "orders" VALUES(152,2,348.0,'2026-01-02 18:10:50',0,'completed','2026-01-02 19:35:21',NULL,6,'',348.0,6,27,'Cash');
INSERT INTO "orders" VALUES(153,2,149.0,'2026-01-02 19:25:50',0,'completed','2026-01-02 20:32:52',NULL,6,'',149.0,6,27,'Cash');
INSERT INTO "orders" VALUES(154,2,199.0,'2026-01-02 19:52:03',1,'completed',NULL,NULL,6,'',199.0,6,28,'Card');
INSERT INTO "orders" VALUES(155,2,338.0,'2026-01-02 19:58:17',1,'completed',NULL,NULL,6,'',338.0,6,29,'UPI');
INSERT INTO "orders" VALUES(156,2,348.0,'2026-01-02 20:28:25',0,'completed','2026-01-02 20:30:05',NULL,6,'',348.0,6,30,'Cash');
INSERT INTO "orders" VALUES(157,2,249.0,'2026-01-02 20:29:21',0,'completed','2026-01-02 20:30:51',NULL,6,'',249.0,6,30,'Cash');
INSERT INTO "orders" VALUES(158,2,338.0,'2026-01-04 15:39:54',0,'completed','2026-01-04 15:40:55',NULL,6,'',338.0,6,31,'Cash');
INSERT INTO "orders" VALUES(159,2,249.0,'2026-01-04 15:40:20',0,'completed','2026-03-07 14:33:09',NULL,6,'',249.0,6,31,'Cash');
INSERT INTO "orders" VALUES(160,2,398.0,'2026-01-05 16:12:21',1,'completed',NULL,NULL,6,'',398.0,6,32,'UPI');
INSERT INTO "orders" VALUES(161,2,189.0,'2026-01-05 16:18:00',1,'completed',NULL,NULL,6,'',189.0,6,33,'Card');
INSERT INTO "orders" VALUES(162,2,149.0,'2026-01-05 16:18:48',1,'completed',NULL,NULL,6,'',149.0,6,34,'Card');
INSERT INTO "orders" VALUES(163,2,348.0,'2026-01-06 10:50:41',1,'completed',NULL,NULL,6,'',348.0,6,35,'UPI');
INSERT INTO "orders" VALUES(164,2,249.0,'2026-01-06 10:51:01',1,'completed',NULL,NULL,6,'',249.0,6,35,'UPI');
INSERT INTO "orders" VALUES(165,2,338.0,'2026-01-06 10:56:34',0,'completed','2026-01-06 10:57:30',NULL,6,'',338.0,6,36,'Cash');
INSERT INTO "orders" VALUES(166,2,338.0,'2026-01-12 20:17:46',1,'completed',NULL,NULL,6,'',338.0,6,37,'UPI');
INSERT INTO "orders" VALUES(167,2,448.0,'2026-01-12 20:36:23',1,'completed',NULL,NULL,6,'',0.0,6,38,'UPI');
INSERT INTO "orders" VALUES(168,2,338.0,'2026-01-30 18:15:41',0,'completed','2026-01-30 18:16:44',NULL,6,'',0.0,6,39,'Cash');
INSERT INTO "orders" VALUES(169,2,199.0,'2026-01-30 18:52:39',1,'completed',NULL,NULL,6,'',0.0,6,40,'Card');
INSERT INTO "orders" VALUES(170,2,149.0,'2026-01-30 19:16:43',1,'completed',NULL,NULL,3,'',0.0,3,41,'UPI');
INSERT INTO "orders" VALUES(171,2,189.0,'2026-01-30 19:18:57',0,'completed','2026-01-30 19:19:50',NULL,3,'',0.0,3,42,'Cash');
INSERT INTO "orders" VALUES(172,5,627.0,'2026-01-31 08:12:23',1,'completed','2026-01-31 08:12:57',NULL,3,'',0.0,3,43,'UPI');
INSERT INTO "orders" VALUES(173,5,298.0,'2026-01-31 08:13:09',1,'completed','2026-01-31 08:13:43',NULL,3,'',0.0,3,43,'UPI');
INSERT INTO "orders" VALUES(174,2,448.0,'2026-03-02 15:55:36',1,'completed',NULL,NULL,3,'',0.0,3,44,'UPI');
INSERT INTO "orders" VALUES(175,2,167.0,'2026-03-03 14:18:22',1,'completed',NULL,NULL,3,'',0.0,3,45,'Cash');
INSERT INTO "orders" VALUES(176,2,298.0,'2026-03-03 14:37:01',0,'preparing','2026-03-06 20:20:08',NULL,3,'',0.0,3,46,'Cash');
INSERT INTO "orders" VALUES(177,2,149.0,'2026-03-06 21:52:16',0,'pending',NULL,NULL,3,'',0.0,3,46,'Cash');
INSERT INTO "orders" VALUES(178,2,18.0,'2026-03-07 12:14:23',0,'completed','2026-03-08 15:59:57',NULL,3,'',0.0,3,46,'Cash');
INSERT INTO "orders" VALUES(179,2,697.0,'2026-03-08 17:08:13',1,'completed',NULL,NULL,3,'',0.0,3,47,'Cash');
INSERT INTO "orders" VALUES(180,2,1175.0,'2026-03-10 20:15:46',1,'completed',NULL,NULL,3,'',0.0,3,47,'Cash');
INSERT INTO "orders" VALUES(181,2,348.0,'2026-03-12 11:53:21',1,'completed',NULL,NULL,3,'',0.0,3,48,'Cash');
INSERT INTO "orders" VALUES(182,2,198.0,'2026-03-12 12:29:40',1,'completed',NULL,NULL,3,'',0.0,3,49,'Cash');
INSERT INTO "orders" VALUES(183,2,580.8,'2026-03-13 12:35:21',1,'completed',NULL,NULL,3,'',0.0,3,50,'Cash');
INSERT INTO "orders" VALUES(184,2,163.9,'2026-03-13 13:24:12',1,'completed',NULL,NULL,3,'',0.0,3,51,'Cash');
INSERT INTO "orders" VALUES(185,2,361.9,'2026-03-14 10:34:25',1,'completed',NULL,NULL,3,'',0.0,3,52,'Cash');
INSERT INTO "orders" VALUES(186,2,327.8,'2026-03-14 11:10:08',1,'completed',NULL,NULL,3,'',0.0,3,53,'Cash');
INSERT INTO "orders" VALUES(187,2,273.9,'2026-03-14 11:48:44',1,'completed',NULL,NULL,3,'',0.0,3,54,'Cash');
CREATE TABLE owners (

  id SERIAL PRIMARY KEY,

  name TEXT,

  email TEXT UNIQUE,

  password TEXT

);
INSERT INTO "owners" VALUES(1,'Restaurant Owner','owner@gmail.com','123456');
CREATE TABLE payments (

    id SERIAL PRIMARY KEY,

    table_no INTEGER,

    stripe_session_id TEXT,

    stripe_payment_intent TEXT,

    amount INTEGER,

    method TEXT,

    status TEXT,

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP

);
CREATE TABLE reservations (

  id SERIAL PRIMARY KEY,

  customer_name TEXT,

  phone TEXT,

  table_no INTEGER,

  seats INTEGER,

  reserved_at TEXT, -- datetime of booking

  status TEXT DEFAULT 'booked' -- booked/cancelled/completed

);
CREATE TABLE restaurant_status (

  id INTEGER PRIMARY KEY,

  is_open INTEGER DEFAULT 1

);
INSERT INTO "restaurant_status" VALUES(1,1);
CREATE TABLE staff_attendance (

  id SERIAL PRIMARY KEY,

  staff_role TEXT, -- managers/chefs/waiters

  staff_id INTEGER,

  date TEXT,

  status TEXT DEFAULT 'present' -- present/absent

);
CREATE TABLE table_sessions (

    id SERIAL PRIMARY KEY,

    table_no INTEGER NOT NULL,

    status TEXT DEFAULT 'active',  -- active | closed

    started_at TEXT DEFAULT CURRENT_TIMESTAMP,

    ended_at TEXT

);
INSERT INTO "table_sessions" VALUES(1,5,'closed','2025-12-17 18:39:54','2026-03-11 18:48:07');
INSERT INTO "table_sessions" VALUES(2,1,'closed','2025-12-18 17:57:52','2025-12-18 13:04:11');
INSERT INTO "table_sessions" VALUES(3,1,'closed','2025-12-18 18:36:07','2025-12-18 14:49:13');
INSERT INTO "table_sessions" VALUES(4,1,'closed','2025-12-18 20:29:11','2025-12-18 14:59:21');
INSERT INTO "table_sessions" VALUES(5,1,'closed','2025-12-19 13:00:52','2025-12-19 07:31:25');
INSERT INTO "table_sessions" VALUES(6,1,'closed','2025-12-19 17:27:37','2025-12-19 11:58:17');
INSERT INTO "table_sessions" VALUES(7,1,'closed','2025-12-19 17:36:45','2025-12-19 12:06:52');
INSERT INTO "table_sessions" VALUES(8,1,'closed','2025-12-19 17:37:40','2025-12-19 12:07:47');
INSERT INTO "table_sessions" VALUES(9,1,'closed','2025-12-19 17:38:19','2025-12-19 12:08:24');
INSERT INTO "table_sessions" VALUES(10,1,'closed','2025-12-19 17:56:39','2025-12-19 12:28:00');
INSERT INTO "table_sessions" VALUES(11,1,'closed','2025-12-19 18:20:03','2025-12-19 13:26:00');
INSERT INTO "table_sessions" VALUES(12,1,'closed','2025-12-19 19:38:35','2025-12-19 14:08:48');
INSERT INTO "table_sessions" VALUES(13,1,'closed','2025-12-19 19:41:50','2025-12-19 14:11:59');
INSERT INTO "table_sessions" VALUES(14,1,'closed','2025-12-19 19:49:57','2025-12-19 14:20:24');
INSERT INTO "table_sessions" VALUES(15,1,'closed','2025-12-19 19:57:13','2025-12-19 14:27:37');
INSERT INTO "table_sessions" VALUES(16,1,'closed','2025-12-19 20:03:10','2025-12-19 14:47:44');
INSERT INTO "table_sessions" VALUES(17,1,'closed','2025-12-19 20:17:56','2025-12-19 14:48:23');
INSERT INTO "table_sessions" VALUES(18,1,'closed','2025-12-19 20:18:51','2025-12-19 14:49:01');
INSERT INTO "table_sessions" VALUES(19,1,'closed','2025-12-19 20:31:47','2025-12-19 15:01:58');
INSERT INTO "table_sessions" VALUES(20,1,'closed','2025-12-20 11:15:33','2025-12-20 05:46:55');
INSERT INTO "table_sessions" VALUES(21,1,'closed','2025-12-21 11:10:30','2025-12-21 12:17:51');
INSERT INTO "table_sessions" VALUES(22,1,'closed','2025-12-21 17:58:26','2025-12-21 12:28:58');
INSERT INTO "table_sessions" VALUES(23,6,'closed','2025-12-24 09:45:44','2025-12-24 04:17:37');
INSERT INTO "table_sessions" VALUES(24,6,'closed','2025-12-27 19:05:52','2025-12-27 13:36:35');
INSERT INTO "table_sessions" VALUES(25,6,'closed','2025-12-30 15:42:23','2025-12-30 10:13:22');
INSERT INTO "table_sessions" VALUES(26,6,'closed','2025-12-30 15:46:59','2025-12-30 10:17:09');
INSERT INTO "table_sessions" VALUES(27,6,'closed','2026-01-02 18:10:50','2026-01-02 20:32:52');
INSERT INTO "table_sessions" VALUES(28,6,'closed','2026-01-02 19:52:03','2026-01-02 14:22:16');
INSERT INTO "table_sessions" VALUES(29,6,'closed','2026-01-02 19:58:17','2026-01-02 14:28:49');
INSERT INTO "table_sessions" VALUES(30,6,'closed','2026-01-02 20:28:25','2026-01-02 20:30:51');
INSERT INTO "table_sessions" VALUES(31,6,'closed','2026-01-04 15:39:54','2026-03-07 14:33:09');
INSERT INTO "table_sessions" VALUES(32,6,'closed','2026-01-05 16:12:21','2026-01-05 10:42:29');
INSERT INTO "table_sessions" VALUES(33,6,'closed','2026-01-05 16:18:00','2026-01-05 10:48:36');
INSERT INTO "table_sessions" VALUES(34,6,'closed','2026-01-05 16:18:48','2026-01-05 10:51:19');
INSERT INTO "table_sessions" VALUES(35,6,'closed','2026-01-06 10:50:41','2026-01-06 05:26:21');
INSERT INTO "table_sessions" VALUES(36,6,'closed','2026-01-06 10:56:34','2026-01-06 10:57:30');
INSERT INTO "table_sessions" VALUES(37,6,'closed','2026-01-12 20:17:46','2026-01-12 14:54:15');
INSERT INTO "table_sessions" VALUES(38,6,'closed','2026-01-12 20:36:23','2026-01-12 15:06:52');
INSERT INTO "table_sessions" VALUES(39,6,'closed','2026-01-30 18:15:41','2026-01-30 18:16:44');
INSERT INTO "table_sessions" VALUES(40,6,'closed','2026-01-30 18:52:39','2026-01-30 13:22:46');
INSERT INTO "table_sessions" VALUES(41,3,'closed','2026-01-30 19:16:43','2026-01-30 13:47:16');
INSERT INTO "table_sessions" VALUES(42,3,'closed','2026-01-30 19:18:57','2026-01-30 19:19:50');
INSERT INTO "table_sessions" VALUES(43,3,'closed','2026-01-31 08:12:23','2026-01-31 02:44:36');
INSERT INTO "table_sessions" VALUES(44,3,'closed','2026-03-02 15:55:36','2026-03-02 10:25:43');
INSERT INTO "table_sessions" VALUES(45,3,'closed','2026-03-03 14:18:22','2026-03-03 09:03:42');
INSERT INTO "table_sessions" VALUES(46,3,'closed','2026-03-03 14:37:01','2026-03-08 15:59:57');
INSERT INTO "table_sessions" VALUES(47,3,'closed','2026-03-08 17:08:13','2026-03-10 14:46:08');
INSERT INTO "table_sessions" VALUES(48,3,'closed','2026-03-12 11:53:21','2026-03-12 06:24:19');
INSERT INTO "table_sessions" VALUES(49,3,'closed','2026-03-12 12:29:40','2026-03-12 06:59:52');
INSERT INTO "table_sessions" VALUES(50,3,'closed','2026-03-13 12:35:21','2026-03-13 07:05:38');
INSERT INTO "table_sessions" VALUES(51,3,'closed','2026-03-13 13:24:12','2026-03-13 07:54:19');
INSERT INTO "table_sessions" VALUES(52,3,'closed','2026-03-14 10:34:25','2026-03-14 05:04:32');
INSERT INTO "table_sessions" VALUES(53,3,'closed','2026-03-14 11:10:08','2026-03-14 05:40:12');
INSERT INTO "table_sessions" VALUES(54,3,'closed','2026-03-14 11:48:44','2026-03-14 06:18:49');
CREATE TABLE tables (

    id SERIAL PRIMARY KEY,

    table_number INTEGER UNIQUE NOT NULL,

    active INTEGER DEFAULT 1   -- 1 = free, 0 = occupied

);
INSERT INTO "tables" VALUES(1,1,1);
INSERT INTO "tables" VALUES(2,2,1);
INSERT INTO "tables" VALUES(3,3,0);
INSERT INTO "tables" VALUES(4,4,1);
INSERT INTO "tables" VALUES(5,5,0);
INSERT INTO "tables" VALUES(6,6,0);
INSERT INTO "tables" VALUES(7,7,1);
INSERT INTO "tables" VALUES(8,8,1);
INSERT INTO "tables" VALUES(9,9,1);
INSERT INTO "tables" VALUES(10,10,1);
CREATE TABLE waiters (

    id SERIAL PRIMARY KEY,

    name TEXT NOT NULL,

    email TEXT UNIQUE NOT NULL,

    password TEXT NOT NULL

, active INTEGER DEFAULT 1);
INSERT INTO "waiters" VALUES(1,'John Waiter','waiter@test.com','123456',1);
INSERT INTO "waiters" VALUES(2,'Rohan Waiter','waiter2@test.com','123456',1);
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('orders',187);
INSERT INTO "sqlite_sequence" VALUES('customers',5);
INSERT INTO "sqlite_sequence" VALUES('waiters',2);
INSERT INTO "sqlite_sequence" VALUES('managers',2);
INSERT INTO "sqlite_sequence" VALUES('owners',1);
INSERT INTO "sqlite_sequence" VALUES('chefs',2);
INSERT INTO "sqlite_sequence" VALUES('expenses',2);
INSERT INTO "sqlite_sequence" VALUES('tables',10);
INSERT INTO "sqlite_sequence" VALUES('table_sessions',54);
INSERT INTO "sqlite_sequence" VALUES('menu_items',14);
INSERT INTO "sqlite_sequence" VALUES('inventory',3);
INSERT INTO "sqlite_sequence" VALUES('order_items',60);

