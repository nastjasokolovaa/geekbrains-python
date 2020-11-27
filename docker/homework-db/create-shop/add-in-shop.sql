INSERT INTO catalogs
VALUES (NULL, 'Процессоры'),
       (NULL, 'Материнские платы'),
       (NULL, 'Видеокарты'),
       (NULL, 'Жесткие диски'),
       (NULL, 'Оперативная память'),
       (NULL, 'Ноутбуки'),
       (NULL, 'Сотовые телефоны'),
       (NULL, 'Мониторы'),
       (NULL, 'Системные блоки'),
       (NULL, 'Наушники'),
       (NULL, 'Мышки'),
       (NULL, 'Коврики для мышек'),
       (NULL, 'Микрофоны'),
       (NULL, 'Колонки');

INSERT INTO shop_users (name, birthday_at)
VALUES ('Геннадий Серов', '1990-10-05'),
       ('Наталья Гималаева', '1984-11-12'),
       ('Александр Смирнов', '1985-05-20'),
       ('Сергей Савельев', '1988-02-14'),
       ('Иван Иванов', '1998-01-12'),
       ('Мария Миронова', '1992-08-29'),
       ('Мария Похомова', '1995-03-31'),
       ('Павел Пировов', '1999-05-29'),
       ('Николай Валуев', '1982-09-18'),
       ('Виктор Сергеев', '1972-11-11'),
       ('Мирослава Чалова', '1989-10-25'),
       ('Александра Майорова', '1987-12-02'),
       ('Дмитрий Пашков', '1995-01-06'),
       ('Екатерина Романова', '1997-06-30'),
       ('Евгений Гуреев', '1993-09-09'),
       ('Алексей Рахманинов', '2000-08-05'),
       ('Лариса Драм', '1990-04-14'),
       ('Светлана Рутова', '1994-03-19'),
       ('Леона Лаврова', '1991-02-18'),
       ('Татьяна Серова', '1990-02-16'),
       ('Дарья Щебет', '1994-02-17'),
       ('Динар Раков', '1993-03-19'),
       ('Дарина Пынз', '1992-04-10'),
       ('Роман Титов', '1997-05-23'),
       ('Олег Шилов', '1999-06-28'),
       ('Даниил Вовк', '2000-07-30'),
       ('Сергей Жилин', '1989-08-29'),
       ('Зоя Данилова', '1977-09-14'),
       ('Борис Данин', '1976-12-11'),
       ('Татьяна Мирова', '1985-11-13'),
       ('Варвара Олина', '1982-10-17');


INSERT INTO products
    (name, description, price, catalog_id)
VALUES ('Intel Core i3-8100', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.',
        7890.00, 1),
       ('Intel Core i5-7400', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.',
        12700.00, 1),
       ('AMD FX-8320E', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 4780.00, 1),
       ('AMD FX-8320', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 7120.00, 1),
       ('ASUS ROG MAXIMUS X HERO', 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX',
        19310.00, 2),
       ('Gigabyte H310M S2H', 'Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX', 4790.00, 2),
       ('MSI B250M GAMING PRO', 'Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', 5060.00, 2),
       ('Acer Aspire 3 A315-22-48FX', '15.6" Ноутбук Acer Aspire 3 A315-22-48FX черный',
        35680.00, 6),
       ('Lenovo IdeaPad 5 15IIL05', '15.6" Ноутбук Lenovo IdeaPad 5 15IIL05 синий',
        57903.00, 6),
       ('Honor MagicBook NblL-WDQ9HN', '14" Ультрабук Honor MagicBook NblL-WDQ9HN серый', 63400.00, 6),
       ('ASUS TUF Gaming FX505DT-HN564T', '15.6" Ноутбук ASUS TUF Gaming FX505DT-HN564T черный', 71207.00, 6),
       ('AAcer Nitro 5 AN515-54-599P', '15.6" Ноутбук Acer Nitro 5 AN515-54-599P черный',
        79040.00, 6),
       (' Acer Predator Triton 300 PT315-52-5120', '15.6" Ноутбук Acer Predator Triton 300 PT315-52-5120 черный',
        82009.00, 6),
       (' Lenovo Legion Y540-15IRH', '15.6" Ноутбук Lenovo Legion Y540-15IRH черный', 93700.00, 6),
       ('мартфон DEXP A350 MIX 32 ГБ', '5" Смартфон DEXP A350 MIX 32 ГБ красный', 5060.00, 7),
       ('Смартфон Xiaomi Redmi 9 64 ГБ', '6.53" Смартфон Xiaomi Redmi 9 64 ГБ фиолетовый', 15470.00, 7),
       ('Смартфон Honor 10i 128 ГБ', '6.21" Смартфон Honor 10i 128 ГБ синий', 15060.00, 7),
       ('ПК DEXP Atlas H232',
        '[Intel Core i3 9100F, 4x3600 МГц, 8 ГБ DDR4, GeForce GT 710, SSD 240 ГБ, Windows 10 Pro]', 34600.00, 9),
       ('ПК ZET WARD H019',
        '[Intel Core i7 10700F, 8x2900 МГц, 32 ГБ DDR4, GeForce RTX 3070, HDD 2 ТБ, SSD 500 ГБ, Windows 10 Домашняя]',
        150060.00, 9),
       ('ПК DEXP Aquilon O224', '[Intel Pentium G5400, 2x3700 МГц, 4 ГБ DDR4, SSD 240 ГБ, без ОС]', 50760.00, 9),
       ('18.5" Монитор Philips ', '18.5" Монитор Philips 193V5LSB2 [193V5LSB2/62(10)]', 5060.00, 8),
       ('21.5" Монитор LG', '21.5" Монитор LG 22MK400A-B [22MK400A-B.ARUZ]', 7800.00, 8),
       ('23.8" Монитор Benq', '23.8" Монитор Benq BL2480T [9H.LHFLA.TBE]', 15080.00, 8),
       ('23.8" Монитор Philips', '23.8" Монитор Philips 242E1GAJ', 15890.00, 8),
       ('Проводная стереогарнитура детская HARPER KIDS', 'Проводная стереогарнитура детская HARPER KIDS HK-66 зеленый',
        500.00, 10),
       ('Проводные наушники Philips', 'Проводные наушники Philips SHE3550BL синий', 500.00, 10),
       ('Bluetooth стереогарнитура Sven', 'Bluetooth стереогарнитура Sven E-240 черный', 1000.00, 10),
       ('Мышь беспроводная Defender Hit MM-495', 'Мышь беспроводная Defender Hit MM-495 черный', 300.00, 11),
       ('Компактная мышь проводная Oklick 385M', 'Компактная мышь проводная Oklick 385M серый', 300.00, 11),
       ('Компактная мышь беспроводная Aceline WM-1002BU', 'Компактная мышь беспроводная Aceline WM-1002BU черный',
        500.00, 11),
       ('Мышь беспроводная DEFENDER Datum MM-265', 'Мышь беспроводная DEFENDER Datum MM-265 черный', 500.00, 11),
       ('Мышь беспроводная Defender Accura MM-665', 'Мышь беспроводная Defender Accura MM-665 красный', 500.00, 11),
       ('Коврик ZET GAMING GM-S Beast 3', 'Коврик ZET GAMING GM-S Beast 3', 250.00, 12),
       ('Коврик DEXP OM-S Atom', 'Коврик DEXP OM-S Atom', 450.00, 12),
       ('Коврик Qumo Dragon War Mystic', 'Коврик Qumo Dragon War Mystic', 450.00, 12),
       ('Коврик A4Tech Bloody B-072', 'Коврик A4Tech Bloody B-072', 550.00, 12),
       ('Микрофон Dialog M-106B', 'Микрофон Dialog M-106B', 250.00, 13),
       ('Микрофон Sven MK-390', 'Микрофон Sven MK-390', 450.00, 13),
       ('Микрофон Marantz Pod Pack 1', 'Микрофон Marantz Pod Pack 1', 2500.00, 13),
       ('Микрофон Trust LANCE GXT 242', 'Микрофон Trust LANCE GXT 242', 5900.00, 13),
       ('Микрофон AverMedia AM310', 'Микрофон AverMedia AM310', 7800.00, 13),
       ('Микрофон Shure MX393/O', 'Микрофон Shure MX393/O', 25800.00, 13),
       ('Колонки 2.0 Dialog AC-02UP', 'Колонки 2.0 Dialog AC-02UP', 1000.00, 14),
       ('Колонки 2.1 Telefunken TF-MSM2.104', 'Колонки 2.1 Telefunken TF-MSM2.104', 2500.00, 14),
       ('Колонки 2.1 SVEN MS-305', 'Колонки 2.1 SVEN MS-305', 4500.00, 14),
       ('Колонки 2.0 F&D R60BT', 'Колонки 2.0 F&D R60BT', 7500.00, 14),
       ('Колонки 5.1 Canton Movie 95', 'Колонки 5.1 Canton Movie 95', 42500.00, 14),
       ('Колонки 2.0 Edifier R1280DB', 'Колонки 2.0 Edifier R1280DB', 8500.00, 14),
       ('Колонки 5.1 Dialog Progressive AP-502', 'Колонки 5.1 Dialog Progressive AP-502', 9500.00, 14);


INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('1', 4, '2013-01-28 09:19:06', '2013-01-28 09:19:06');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('2', 28, '2008-02-13 09:14:14', '2008-11-30 15:12:20');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('3', 23, '2019-10-15 13:25:26', '2019-05-04 03:23:40');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('4', 24, '2020-03-01 22:11:48', '2020-07-07 05:54:40');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('5', 21, '2019-03-16 16:15:27', '2019-02-19 08:59:46');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('6', 31, '2020-07-14 06:44:12', '2020-04-02 08:05:50');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('7', 23, '2020-10-08 01:07:20', '2020-07-25 08:22:05');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('8', 27, '2020-12-12 19:06:19', '2020-12-24 02:42:38');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('9', 25, '2020-01-10 17:02:28', '2020-05-23 03:32:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('10', 22, '2019-07-31 06:51:39', '2019-01-09 22:32:41');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('11', 24, '2019-12-18 17:30:01', '2019-09-13 00:47:08');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('12', 25, '2020-05-19 04:29:57', '2020-09-07 20:09:20');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('13', 30, '2016-04-14 05:18:35', '2016-05-09 10:36:52');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('14', 19, '2020-08-08 14:53:39', '2020-02-05 09:25:54');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('15', 26, '2020-04-27 01:26:34', '2020-08-19 11:24:13');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('16', 13, '2020-09-03 06:38:56', '2020-05-11 05:45:52');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('17', 10, '2018-07-18 12:45:03', '2018-09-09 12:57:58');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('18', 17, '2020-06-18 00:36:52', '2020-10-19 00:32:02');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('19', 16, '2020-10-14 00:44:09', '2020-04-20 03:15:35');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('20', 12, '2020-08-08 16:46:44', '2020-06-29 14:06:49');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('21', 12, '2020-06-05 19:04:24', '2020-07-05 23:10:37');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('22', 17, '2020-05-31 01:37:58', '2020-09-26 09:41:26');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('23', 27, '2020-04-15 05:50:56', '2020-06-06 06:28:00');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('24', 1, '2020-04-29 07:05:00', '2020-12-08 11:25:42');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('25', 14, '2020-12-04 08:34:41', '2020-06-11 05:56:00');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('26', 24, '2019-01-04 19:13:36', '2019-10-01 10:09:49');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('27', 1, '2019-10-13 22:04:58', '2019-05-12 23:11:42');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('28', 7, '2019-03-10 01:58:32', '2019-03-20 23:08:27');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('29', 3, '2019-10-08 17:41:03', '2019-03-27 15:17:37');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('30', 2, '2020-09-13 16:03:58', '2020-04-25 10:27:25');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('31', 3, '2019-06-05 12:46:05', '2019-01-24 07:40:21');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('32', 7, '2019-08-11 21:37:40', '2019-06-05 19:18:28');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('33', 31, '2019-04-17 23:08:34', '2019-10-13 00:38:54');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('34', 25, '2020-12-13 20:59:40', '2020-11-14 11:00:48');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('35',5, '2020-11-02 22:53:47', '2020-07-07 08:03:50');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('36', 1, '2019-12-06 00:35:31', '2019-11-02 00:57:03');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('37', 5, '2020-02-15 14:46:22', '2020-02-26 19:44:02');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('38', 23, '2018-08-11 06:50:27', '2018-07-29 09:59:54');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('39', 27, '2017-08-12 05:06:40', '2017-02-03 10:34:04');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('40', 10, '2019-12-20 11:00:20', '2019-10-30 14:31:49');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('41', 4, '2019-04-27 06:34:27', '2019-01-24 08:11:20');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('42', 1, '2016-12-07 17:34:59', '2016-04-14 01:50:37');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('43', 4, '2020-07-05 11:27:13', '2020-06-17 02:32:36');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('44', 4, '2020-02-10 02:53:21', '2020-08-20 21:28:26');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('45', 9, '2019-03-31 13:14:29', '2019-05-31 21:19:04');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('46', 10, '2019-03-16 02:18:52', '2019-05-23 21:54:51');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('47', 9, '2020-12-03 07:48:41', '2020-05-04 22:20:19');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('48', 9, '2019-02-15 15:55:08', '2019-02-15 12:57:03');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('49', 6, '2020-07-06 08:01:36', '2020-06-16 11:15:38');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('50', 8, '2019-10-05 07:49:08', '2019-02-18 23:37:32');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('51', 10, '2019-04-11 07:05:26', '2019-06-08 14:09:48');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('52', 8, '2019-08-22 10:28:28', '2019-10-08 11:41:18');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('53', 19, '2018-06-16 17:04:43', '2018-10-05 18:34:45');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('54', 7, '2020-03-02 05:03:51', '2020-01-12 03:52:45');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('55', 8, '2019-05-03 01:08:54', '2019-12-02 19:11:05');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('56', 3, '2019-06-22 00:17:12', '2019-03-05 07:40:50');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('57', 1, '2019-12-27 00:29:50', '2019-07-08 13:51:09');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('58', 2, '2019-06-28 19:51:21', '2019-02-05 00:04:07');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('59', 3, '2019-10-12 13:51:27', '2019-06-25 08:50:42');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('60', 4, '2020-10-13 18:56:05', '2020-05-24 18:30:14');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('61', 9, '2020-12-05 21:14:44', '2020-04-10 12:26:31');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('62', 12, '2020-09-23 22:48:18', '2020-04-15 15:44:36');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('63', 13, '2020-03-30 10:56:19', '2020-01-05 19:37:40');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('64', 15, '2020-04-17 00:34:46', '2020-10-15 12:40:51');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('65', 16, '2020-11-17 05:48:31', '2020-01-28 06:00:13');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('66', 10, '2020-02-12 16:33:00', '2020-11-22 18:50:37');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('67', 2, '2010-04-15 06:22:24', '2010-06-04 10:01:37');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('68', 18, '2020-11-16 22:23:19', '2020-11-24 10:15:31');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('69', 12, '2020-09-12 18:17:16', '2020-01-06 02:57:27');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('70', 29, '2019-12-05 19:36:50', '2019-05-15 15:53:33');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('71', 19, '2017-01-19 02:14:44', '2017-01-15 12:32:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('72', 16, '2017-12-16 15:56:00', '2017-10-12 21:56:13');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('73', 18, '2018-05-06 06:10:53', '2018-04-10 17:37:19');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('74', 17, '2018-12-03 14:15:24', '2018-06-17 17:55:11');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('75', 16, '2018-04-02 14:46:08', '2018-11-13 22:34:21');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('76', 15, '2019-04-10 15:26:33', '2019-10-12 14:25:37');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('77', 14, '2014-02-26 14:51:27', '2014-02-23 12:16:30');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('78', 14, '2019-01-09 07:26:25', '2019-05-26 14:41:09');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('79', 13, '2017-06-18 23:50:28', '2017-04-20 03:33:08');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('80', 12, '2020-11-19 07:06:36', '2020-01-08 00:13:24');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('81', 11, '2020-07-20 13:40:46', '2020-07-12 16:27:53');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('82', 11, '2010-12-06 10:39:07', '2010-11-02 12:38:09');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('83', 16, '2017-05-31 15:41:14', '2017-08-22 06:18:55');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('84', 17, '2020-02-25 20:11:18', '2020-08-09 01:20:11');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('85', 12, '2020-04-05 20:10:52', '2020-01-12 13:09:32');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('86', 11, '2016-11-23 17:00:17', '2016-09-05 07:40:55');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('87', 19, '2017-11-28 01:02:25', '2017-06-16 19:04:38');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('88', 20, '2018-02-02 02:06:56', '2018-02-21 09:36:48');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('89', 26, '2020-12-01 03:24:29', '2020-09-30 04:34:55');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('90', 28, '2017-12-03 18:31:28', '2017-08-11 01:07:00');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('91', 26, '2018-06-06 23:06:06', '2018-03-31 05:05:33');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('92', 23, '2020-06-24 21:11:00', '2020-10-11 21:52:07');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('93', 29, '2020-08-11 17:09:30', '2020-02-11 04:12:22');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('94', 26, '2019-02-05 19:40:33', '2019-12-07 10:28:05');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('95', 28, '2015-06-17 01:19:03', '2015-05-29 08:54:47');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('96', 25, '2019-10-28 16:53:48', '2019-03-13 05:00:17');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('97', 25, '2018-02-17 14:10:18', '2018-04-01 06:40:36');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('98', 29, '2017-03-22 07:33:41', '2017-10-24 06:18:11');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('99', 25, '2019-08-14 12:20:59', '2019-03-05 03:30:47');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES ('100', 24, '2019-05-31 10:33:11', '2019-07-07 21:30:37');
