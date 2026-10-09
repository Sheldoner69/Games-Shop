CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    registration_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    balance DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    status VARCHAR(20) NOT NULL DEFAULT 'active'
);

INSERT INTO users
(username, email, password_hash, first_name, last_name, date_of_birth, registration_date, balance, status)
VALUES
('alex_game', 'alex.game@gmail.com', 'hash_a1b2c3', 'Алексей', 'Иванов', '2002-05-14', '2026-01-10 14:25:00', 25.50, 'active'),
('maria_play', 'maria.play@gmail.com', 'hash_d4e5f6', 'Мария', 'Петрова', '2003-08-21', '2026-01-15 18:40:00', 100.00, 'active'),
('daniel_fox', 'daniel.fox@gmail.com', 'hash_g7h8i9', 'Даниил', 'Смирнов', '2001-11-03', '2026-01-20 11:15:00', 0.00, 'active'),
('game_master', 'game.master@gmail.com', 'hash_j1k2l3', 'Артур', 'Ким', '1999-03-17', '2026-02-02 09:30:00', 250.75, 'active'),
('pixel_player', 'pixel.player@gmail.com', 'hash_m4n5o6', 'Илья', 'Волков', '2004-07-09', '2026-02-08 21:10:00', 15.00, 'active'),
('night_gamer', 'night.gamer@gmail.com', 'hash_p7q8r9', 'Максим', 'Орлов', '2000-12-25', '2026-02-14 23:45:00', 75.20, 'active'),
('luna_games', 'luna.games@gmail.com', 'hash_s1t2u3', 'Алина', 'Соколова', '2002-04-30', '2026-02-18 16:20:00', 40.00, 'active'),
('red_dragon', 'red.dragon@gmail.com', 'hash_v4w5x6', 'Егор', 'Морозов', '1998-09-12', '2026-02-21 13:05:00', 500.00, 'active'),
('cyber_cat', 'cyber.cat@gmail.com', 'hash_y7z8a9', 'Никита', 'Ковалёв', '2005-01-18', '2026-03-01 10:50:00', 10.99, 'active'),
('retro_gamer', 'retro.gamer@gmail.com', 'hash_b1c2d3', 'Сергей', 'Лебедев', '1997-06-06', '2026-03-05 19:35:00', 125.00, 'active'),
('shadow_x', 'shadow.x@gmail.com', 'hash_e4f5g6', 'Роман', 'Зайцев', '2001-02-28', '2026-03-10 15:15:00', 60.50, 'active'),
('gamehunter', 'gamehunter@gmail.com', 'hash_h7i8j9', 'Виктор', 'Беляев', '1996-10-19', '2026-03-15 12:40:00', 300.00, 'active'),
('sonic_player', 'sonic.player@gmail.com', 'hash_k1l2m3', 'Кирилл', 'Громов', '2003-05-27', '2026-03-19 20:25:00', 35.75, 'active'),
('dark_knight', 'dark.knight@gmail.com', 'hash_n4o5p6', 'Артём', 'Фёдоров', '2000-08-15', '2026-03-23 17:55:00', 90.00, 'active'),
('star_player', 'star.player@gmail.com', 'hash_q7r8s9', 'Полина', 'Алексеева', '2004-11-11', '2026-03-28 14:10:00', 20.00, 'active'),
('wolf_gamer', 'wolf.gamer@gmail.com', 'hash_t1u2v3', 'Владислав', 'Николаев', '1999-01-07', '2026-04-02 22:30:00', 175.50, 'active'),
('ice_queen', 'ice.queen@gmail.com', 'hash_w4x5y6', 'Екатерина', 'Макарова', '2002-12-03', '2026-04-07 11:45:00', 50.00, 'active'),
('boss_player', 'boss.player@gmail.com', 'hash_z7a8b9', 'Андрей', 'Васильев', '1995-07-22', '2026-04-12 09:20:00', 1000.00, 'active'),
('game_addict', 'game.addict@gmail.com', 'hash_c1d2e3', 'Тимур', 'Назаров', '2001-09-05', '2026-04-18 18:15:00', 5.00, 'active'),
('test_user', 'test.user@gmail.com', 'hash_f4g5h6', 'Олег', 'Кузнецов', '1998-04-16', '2026-04-25 16:00:00', 0.00, 'blocked');


CREATE TABLE developers (
    developer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    country VARCHAR(50),
    founded_year INTEGER
);

INSERT INTO developers (name, country, founded_year)
VALUES
('Mojang Studios', 'Sweden', 2009),
('CD Projekt Red', 'Poland', 2002),
('Rockstar Games', 'USA', 1998),
('Re-Logic', 'USA', 2011),
('Supergiant Games', 'USA', 2009),
('FromSoftware', 'Japan', 1986),
('Larian Studios', 'Belgium', 1996),
('ConcernedApe', 'USA', 2012),
('Valve', 'USA', 1996),
('id Software', 'USA', 1991),
('Team Cherry', 'Australia', 2014),
('Capcom', 'Japan', 1979),
('Naughty Dog', 'USA', 1984),
('Ubisoft Montreal', 'Canada', 1997),
('Bethesda Game Studios', 'USA', 2001);


CREATE TABLE publishers (
    publisher_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    country VARCHAR(50),
    founded_year INTEGER
);

INSERT INTO publishers (name, country, founded_year)
VALUES
('Xbox Game Studios', 'USA', 2000),
('CD Projekt', 'Poland', 1994),
('Rockstar Games', 'USA', 1998),
('505 Games', 'Italy', 2006),
('Supergiant Games', 'USA', 2009),
('Bandai Namco Entertainment', 'Japan', 2006),
('Larian Studios', 'Belgium', 1996),
('ConcernedApe', 'USA', 2012),
('Valve', 'USA', 1996),
('Bethesda Softworks', 'USA', 1986),
('Team Cherry', 'Australia', 2014),
('Capcom', 'Japan', 1979),
('Ubisoft', 'France', 1986),
('Electronic Arts', 'USA', 1982),
('Warner Bros. Games', 'USA', 2004);


CREATE TABLE genres (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    description TEXT
);

INSERT INTO genres (name, description)
VALUES
('Action', 'Игры с активными сражениями и быстрым игровым процессом'),
('Adventure', 'Игры с исследованием мира и приключениями'),
('RPG', 'Ролевые игры с развитием персонажа'),
('Strategy', 'Игры, основанные на планировании и тактике'),
('Simulation', 'Игры, имитирующие различные процессы и виды деятельности'),
('Sports', 'Спортивные игры'),
('Racing', 'Гоночные игры'),
('Horror', 'Игры в жанре ужасов'),
('Survival', 'Игры на выживание и управление ресурсами'),
('Puzzle', 'Игры с головоломками и логическими задачами'),
('Platformer', 'Игры с перемещением по платформам и препятствиям'),
('Shooter', 'Игры, где основным элементом является стрельба'),
('Open World', 'Игры с большим открытым для исследования миром'),
('Indie', 'Игры независимых разработчиков'),
('Fighting', 'Игры с непосредственными боями между персонажами');


CREATE TABLE platforms (
    platform_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    manufacturer VARCHAR(100),
    release_year INTEGER
);

INSERT INTO platforms (name, manufacturer, release_year)
VALUES
('PC', 'Various', 1981),
('PlayStation 4', 'Sony', 2013),
('PlayStation 5', 'Sony', 2020),
('Xbox One', 'Microsoft', 2013),
('Xbox Series X/S', 'Microsoft', 2020),
('Nintendo Switch', 'Nintendo', 2017),
('Nintendo Switch 2', 'Nintendo', 2025),
('Steam Deck', 'Valve', 2022),
('MacOS', 'Apple', 2001),
('Linux', 'Various', 1991);


CREATE TABLE games (
    game_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    release_date DATE,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INTEGER NOT NULL DEFAULT 0,
    age_rating VARCHAR(10),
    developer_id INTEGER NOT NULL,
    publisher_id INTEGER NOT NULL,

    FOREIGN KEY (developer_id) REFERENCES developers(developer_id),
    FOREIGN KEY (publisher_id) REFERENCES publishers(publisher_id)
);

INSERT INTO games
(title, description, release_date, price, stock_quantity, age_rating, developer_id, publisher_id)
VALUES
('Minecraft',
 'Песочница с открытым миром, строительством и исследованием.',
 '2011-11-18', 29.99, 100, '10+', 1, 1),

('Cyberpunk 2077',
 'Ролевая игра с открытым миром в футуристическом Найт-Сити.',
 '2020-12-10', 59.99, 75, '18+', 2, 2),

('Grand Theft Auto V',
 'Экшен с открытым миром и криминальным сюжетом.',
 '2013-09-17', 29.99, 120, '18+', 3, 3),

('Terraria',
 'Двумерная песочница с исследованием мира, строительством и сражениями.',
 '2011-05-16', 9.99, 150, '12+', 4, 4),

('Hades',
 'Динамичный roguelike с элементами экшена и мифологическим сеттингом.',
 '2020-09-17', 24.99, 90, '12+', 5, 5),

('Elden Ring',
 'Экшен-RPG с огромным открытым миром и сложными сражениями.',
 '2022-02-25', 59.99, 70, '16+', 6, 6),

('Baldur''s Gate 3',
 'Ролевая игра с пошаговыми сражениями и большим количеством вариантов развития истории.',
 '2023-08-03', 59.99, 65, '18+', 7, 7),

('Stardew Valley',
 'Симулятор фермы с исследованием мира, отношениями и приключениями.',
 '2016-02-26', 14.99, 200, '12+', 8, 8),

('Portal 2',
 'Головоломка от первого лица с использованием портальной пушки.',
 '2011-04-19', 9.99, 110, '10+', 9, 9),

('DOOM Eternal',
 'Динамичный шутер от первого лица о борьбе с армиями демонов.',
 '2020-03-20', 39.99, 85, '18+', 10, 10),

('Hollow Knight',
 'Метроидвания с исследованием мрачного подземного королевства.',
 '2017-02-24', 14.99, 130, '12+', 11, 11),

('Resident Evil 4',
 'Survival horror о спасении дочери президента.',
 '2023-03-24', 49.99, 55, '18+', 12, 12),

('The Last of Us Part I',
 'Приключенческая игра с элементами выживания и сильным сюжетом.',
 '2022-09-02', 59.99, 50, '18+', 13, 13),

('Assassin''s Creed Valhalla',
 'Приключенческий экшен с открытым миром и исследованием средневековой Англии.',
 '2020-11-10', 49.99, 80, '18+', 14, 14),

('The Elder Scrolls V: Skyrim',
 'Ролевая игра с большим открытым миром и свободным исследованием.',
 '2011-11-11', 39.99, 100, '18+', 15, 10);


CREATE TABLE game_genres (
    game_id INTEGER NOT NULL,
    genre_id INTEGER NOT NULL,

    PRIMARY KEY (game_id, genre_id),

    FOREIGN KEY (game_id)
        REFERENCES games(game_id)
        ON DELETE CASCADE,

    FOREIGN KEY (genre_id)
        REFERENCES genres(genre_id)
        ON DELETE CASCADE
);

INSERT INTO game_genres (game_id, genre_id)
VALUES
-- Minecraft: Simulation, Survival, Open World
(1, 5),
(1, 9),
(1, 13),

-- Cyberpunk 2077: Action, RPG, Shooter, Open World
(2, 1),
(2, 3),
(2, 12),
(2, 13),

-- GTA V: Action, Adventure, Open World
(3, 1),
(3, 2),
(3, 13),

-- Terraria: Adventure, Survival, Platformer, Indie
(4, 2),
(4, 9),
(4, 11),
(4, 14),

-- Hades: Action, RPG, Indie
(5, 1),
(5, 3),
(5, 14),

-- Elden Ring: Action, RPG, Adventure, Open World
(6, 1),
(6, 2),
(6, 3),
(6, 13),

-- Baldur's Gate 3: RPG, Strategy, Adventure
(7, 2),
(7, 3),
(7, 4),

-- Stardew Valley: Simulation, RPG, Indie
(8, 3),
(8, 5),
(8, 14),

-- Portal 2: Puzzle, Adventure
(9, 2),
(9, 10),

-- DOOM Eternal: Action, Shooter
(10, 1),
(10, 12),

-- Hollow Knight: Action, Adventure, Platformer, Indie
(11, 1),
(11, 2),
(11, 11),
(11, 14),

-- Resident Evil 4: Action, Horror, Survival
(12, 1),
(12, 8),
(12, 9),

-- The Last of Us Part I: Action, Adventure, Survival
(13, 1),
(13, 2),
(13, 9),

-- Assassin's Creed Valhalla: Action, Adventure, RPG, Open World
(14, 1),
(14, 2),
(14, 3),
(14, 13),

-- Skyrim: RPG, Adventure, Open World
(15, 2),
(15, 3),
(15, 13);


CREATE TABLE game_platforms (
    game_id INTEGER NOT NULL,
    platform_id INTEGER NOT NULL,

    PRIMARY KEY (game_id, platform_id),

    FOREIGN KEY (game_id)
        REFERENCES games(game_id)
        ON DELETE CASCADE,

    FOREIGN KEY (platform_id)
        REFERENCES platforms(platform_id)
        ON DELETE CASCADE
);

INSERT INTO game_platforms (game_id, platform_id)
VALUES
-- Minecraft: PC, PlayStation 4, PlayStation 5, Xbox One, Xbox Series X/S, Switch
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),

-- Cyberpunk 2077: PC, PS4, PS5, Xbox One, Xbox Series X/S
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),

-- GTA V: PC, PS4, PS5, Xbox One, Xbox Series X/S
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),

-- Terraria: PC, PS4, Xbox One, Switch, MacOS, Linux
(4, 1),
(4, 2),
(4, 4),
(4, 6),
(4, 9),
(4, 10),

-- Hades: PC, PS4, PS5, Xbox One, Xbox Series X/S, Switch
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),

-- Elden Ring: PC, PS4, PS5, Xbox One, Xbox Series X/S
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),

-- Baldur's Gate 3: PC, PS5, Xbox Series X/S, MacOS
(7, 1),
(7, 3),
(7, 5),
(7, 9),

-- Stardew Valley: PC, PS4, Xbox One, Switch, MacOS, Linux
(8, 1),
(8, 2),
(8, 4),
(8, 6),
(8, 9),
(8, 10),

-- Portal 2: PC, PS4, Xbox One, MacOS, Linux
(9, 1),
(9, 2),
(9, 4),
(9, 9),
(9, 10),

-- DOOM Eternal: PC, PS4, PS5, Xbox One, Xbox Series X/S, Switch
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(10, 6),

-- Hollow Knight: PC, PS4, PS5, Xbox One, Xbox Series X/S, Switch
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 5),
(11, 6),

-- Resident Evil 4: PC, PS4, PS5, Xbox Series X/S
(12, 1),
(12, 2),
(12, 3),
(12, 5),

-- The Last of Us Part I: PC, PS5
(13, 1),
(13, 3),

-- Assassin's Creed Valhalla: PC, PS4, PS5, Xbox One, Xbox Series X/S
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(14, 5),

-- Skyrim: PC, PS4, PS5, Xbox One, Xbox Series X/S, Switch
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(15, 5),
(15, 6);


CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    order_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'pending',

    FOREIGN KEY (user_id)
        REFERENCES users(user_id)
        ON DELETE CASCADE
);

INSERT INTO orders (user_id, order_date, total_amount, status)
VALUES
(1, '2026-05-01 14:20:00', 89.98, 'completed'),
(2, '2026-05-02 18:45:00', 59.99, 'completed'),
(3, '2026-05-04 12:10:00', 14.99, 'completed'),
(1, '2026-05-08 20:30:00', 39.99, 'completed'),
(4, '2026-05-10 16:15:00', 119.98, 'completed'),
(5, '2026-05-12 11:40:00', 24.99, 'completed'),
(6, '2026-05-15 22:05:00', 59.99, 'completed'),
(7, '2026-05-18 15:25:00', 9.99, 'completed'),
(8, '2026-05-20 19:50:00', 74.98, 'completed'),
(9, '2026-05-23 13:35:00', 49.99, 'completed'),
(10, '2026-05-25 17:10:00', 29.99, 'completed'),
(11, '2026-05-28 21:45:00', 59.99, 'pending'),
(12, '2026-06-01 10:20:00', 39.99, 'completed'),
(13, '2026-06-03 14:55:00', 89.98, 'completed'),
(14, '2026-06-05 18:30:00', 59.99, 'cancelled'),
(15, '2026-06-08 12:15:00', 14.99, 'completed'),
(16, '2026-06-10 20:40:00', 49.99, 'completed'),
(17, '2026-06-12 16:05:00', 29.99, 'pending'),
(18, '2026-06-15 11:25:00', 119.98, 'completed'),
(19, '2026-06-18 19:15:00', 24.99, 'completed');


CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INTEGER NOT NULL,
    game_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL DEFAULT 1,
    price_at_purchase DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (order_id)
        REFERENCES orders(order_id)
        ON DELETE CASCADE,

    FOREIGN KEY (game_id)
        REFERENCES games(game_id)
        ON DELETE RESTRICT
);

INSERT INTO order_items
(order_id, game_id, quantity, price_at_purchase)
VALUES
(1, 1, 1, 29.99),
(1, 2, 1, 59.99),
(2, 6, 1, 59.99),
(3, 8, 1, 14.99),
(4, 10, 1, 39.99),
(5, 7, 2, 59.99),
(6, 5, 1, 24.99),
(7, 6, 1, 59.99),
(8, 4, 1, 9.99),
(9, 2, 1, 59.99),
(9, 8, 1, 14.99),
(10, 12, 1, 49.99),
(11, 1, 1, 29.99),
(12, 13, 1, 59.99),
(13, 10, 1, 39.99),
(14, 12, 1, 49.99),
(14, 10, 1, 39.99),
(15, 6, 1, 59.99),
(16, 11, 1, 14.99),
(17, 14, 1, 49.99),
(18, 3, 1, 29.99),
(19, 7, 2, 59.99);


CREATE TABLE shopping_cart (
    cart_item_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    game_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL DEFAULT 1,
    added_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id)
        REFERENCES users(user_id)
        ON DELETE CASCADE,

    FOREIGN KEY (game_id)
        REFERENCES games(game_id)
        ON DELETE CASCADE,

    UNIQUE (user_id, game_id)
);

INSERT INTO shopping_cart
(user_id, game_id, quantity, added_date)
VALUES
(1, 3, 1, '2026-06-20 14:30:00'),
(2, 5, 1, '2026-06-20 15:10:00'),
(3, 1, 2, '2026-06-21 10:25:00'),
(4, 6, 1, '2026-06-21 12:40:00'),
(5, 9, 1, '2026-06-21 16:15:00'),
(6, 2, 1, '2026-06-22 09:50:00'),
(7, 8, 1, '2026-06-22 13:20:00'),
(8, 10, 1, '2026-06-22 18:45:00'),
(9, 11, 2, '2026-06-23 11:30:00'),
(10, 4, 1, '2026-06-23 14:05:00'),
(11, 12, 1, '2026-06-23 17:25:00'),
(12, 7, 1, '2026-06-24 10:15:00'),
(13, 14, 1, '2026-06-24 15:40:00'),
(14, 15, 1, '2026-06-24 19:10:00'),
(15, 1, 1, '2026-06-25 09:35:00'),
(16, 13, 1, '2026-06-25 12:50:00'),
(17, 5, 2, '2026-06-25 16:20:00'),
(18, 10, 1, '2026-06-26 11:05:00'),
(19, 3, 1, '2026-06-26 18:30:00'),
(20, 8, 1, '2026-06-26 20:15:00');


CREATE TABLE reviews (
    review_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    game_id INTEGER NOT NULL,
    rating INTEGER NOT NULL,
    review_text TEXT,
    review_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id)
        REFERENCES users(user_id)
        ON DELETE CASCADE,

    FOREIGN KEY (game_id)
        REFERENCES games(game_id)
        ON DELETE CASCADE,

    UNIQUE (user_id, game_id),

    CHECK (rating >= 1 AND rating <= 5)
);

INSERT INTO reviews
(user_id, game_id, rating, review_text, review_date)
VALUES
(1, 1, 5, 'Отличная игра, можно играть часами.', '2026-05-05 15:20:00'),
(2, 6, 5, 'Очень интересная и сложная RPG.', '2026-05-06 18:10:00'),
(3, 8, 4, 'Спокойная и приятная игра.', '2026-05-07 12:45:00'),
(4, 10, 5, 'Очень динамичный шутер.', '2026-05-11 20:15:00'),
(5, 7, 5, 'Отличный сюжет и много вариантов прохождения.', '2026-05-13 16:30:00'),
(6, 5, 5, 'Музыка и боевые механики отличные.', '2026-05-16 14:05:00'),
(7, 4, 4, 'Хорошая игра с большим количеством контента.', '2026-05-19 19:40:00'),
(8, 2, 4, 'Большой открытый мир и интересный сюжет.', '2026-05-21 13:25:00'),
(9, 12, 5, 'Очень атмосферный хоррор.', '2026-05-24 17:50:00'),
(10, 1, 5, 'Одна из лучших игр для компании.', '2026-05-26 11:15:00'),
(11, 13, 5, 'Сильная история и персонажи.', '2026-05-29 21:10:00'),
(12, 10, 4, 'Хороший экшен и отличная графика.', '2026-06-02 15:35:00'),
(13, 14, 4, 'Большой мир и много заданий.', '2026-06-04 18:20:00'),
(14, 15, 5, 'Классическая RPG с огромным миром.', '2026-06-07 20:45:00'),
(15, 6, 5, 'Сложная, но очень интересная игра.', '2026-06-09 13:30:00'),
(16, 11, 5, 'Красивый мир и отличная атмосфера.', '2026-06-11 16:55:00'),
(17, 5, 4, 'Хорошая игра, особенно понравились боссы.', '2026-06-13 19:25:00'),
(18, 3, 5, 'Большой открытый мир и много возможностей.', '2026-06-16 12:40:00'),
(19, 7, 5, 'Очень глубокая RPG.', '2026-06-19 18:05:00'),
(20, 8, 4, 'Расслабляющая и интересная игра.', '2026-06-20 10:30:00');


CREATE TABLE wishlists (
    wishlist_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    game_id INTEGER NOT NULL,
    added_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id)
        REFERENCES users(user_id)
        ON DELETE CASCADE,

    FOREIGN KEY (game_id)
        REFERENCES games(game_id)
        ON DELETE CASCADE,

    UNIQUE (user_id, game_id)
);

INSERT INTO wishlists
(user_id, game_id, added_date)
VALUES
(1, 6, '2026-06-20 12:15:00'),
(2, 7, '2026-06-20 14:30:00'),
(3, 10, '2026-06-21 09:45:00'),
(4, 2, '2026-06-21 13:20:00'),
(5, 13, '2026-06-21 16:40:00'),
(6, 15, '2026-06-22 10:10:00'),
(7, 12, '2026-06-22 15:25:00'),
(8, 14, '2026-06-22 18:50:00'),
(9, 1, '2026-06-23 11:35:00'),
(10, 5, '2026-06-23 14:15:00'),
(11, 6, '2026-06-23 17:40:00'),
(12, 3, '2026-06-24 09:20:00'),
(13, 11, '2026-06-24 12:55:00'),
(14, 4, '2026-06-24 16:30:00'),
(15, 7, '2026-06-25 10:45:00'),
(16, 9, '2026-06-25 13:10:00'),
(17, 2, '2026-06-25 17:25:00'),
(18, 8, '2026-06-26 11:50:00'),
(19, 13, '2026-06-26 15:35:00'),
(20, 10, '2026-06-26 19:05:00');


CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,
    order_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    payment_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    amount DECIMAL(10,2) NOT NULL,
    payment_method VARCHAR(30) NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'completed',

    FOREIGN KEY (order_id)
        REFERENCES orders(order_id)
        ON DELETE CASCADE,

    FOREIGN KEY (user_id)
        REFERENCES users(user_id)
        ON DELETE CASCADE
);

INSERT INTO payments
(order_id, user_id, payment_date, amount, payment_method, status)
VALUES
(1, 1, '2026-05-01 14:25:00', 89.98, 'Bank Card', 'completed'),
(2, 2, '2026-05-02 18:50:00', 59.99, 'Bank Card', 'completed'),
(3, 3, '2026-05-04 12:15:00', 14.99, 'PayPal', 'completed'),
(4, 1, '2026-05-08 20:35:00', 39.99, 'Bank Card', 'completed'),
(5, 4, '2026-05-10 16:20:00', 119.98, 'Bank Card', 'completed'),
(6, 5, '2026-05-12 11:45:00', 24.99, 'PayPal', 'completed'),
(7, 6, '2026-05-15 22:10:00', 59.99, 'Bank Card', 'completed'),
(8, 7, '2026-05-18 15:30:00', 9.99, 'Bank Card', 'completed'),
(9, 8, '2026-05-20 19:55:00', 74.98, 'PayPal', 'completed'),
(10, 9, '2026-05-23 13:40:00', 49.99, 'Bank Card', 'completed'),
(11, 10, '2026-05-25 17:15:00', 29.99, 'Bank Card', 'completed'),
(12, 11, '2026-05-28 21:50:00', 59.99, 'Bank Card', 'pending'),
(13, 12, '2026-06-01 10:25:00', 39.99, 'PayPal', 'completed'),
(14, 13, '2026-06-03 15:00:00', 89.98, 'Bank Card', 'completed'),
(15, 14, '2026-06-05 18:35:00', 59.99, 'Bank Card', 'cancelled'),
(16, 15, '2026-06-08 12:20:00', 14.99, 'PayPal', 'completed'),
(17, 16, '2026-06-10 20:45:00', 49.99, 'Bank Card', 'completed'),
(18, 17, '2026-06-12 16:10:00', 29.99, 'Bank Card', 'pending'),
(19, 18, '2026-06-15 11:30:00', 119.98, 'Bank Card', 'completed');