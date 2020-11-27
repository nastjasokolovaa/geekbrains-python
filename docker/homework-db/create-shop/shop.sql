DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(255) COMMENT 'Название раздела',
    UNIQUE unique_name (name(10))
) COMMENT = 'Разделы интернет-магазина';

DROP TABLE IF EXISTS shop_users;
CREATE TABLE shop_users
(
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(255) COMMENT 'Имя покупателя',
    birthday_at DATE COMMENT 'Дата рождения',
    created_at  DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at  DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

DROP TABLE IF EXISTS products;
CREATE TABLE products
(
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(255) COMMENT 'Название',
    description TEXT COMMENT 'Описание',
    price       DECIMAL(11, 2) COMMENT 'Цена',
    catalog_id  BIGINT UNSIGNED NOT NULL,
    created_at  DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at  DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (catalog_id) REFERENCES catalogs (id)
);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders
(
    id         SERIAL PRIMARY KEY,
    user_id    BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES shop_users (id)
) COMMENT = 'Заказы';

DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products
(
    id         SERIAL PRIMARY KEY,
    order_id   BIGINT UNSIGNED NOT NULL,
    product_id BIGINT UNSIGNED NOT NULL,
    total      INT UNSIGNED DEFAULT 1 COMMENT 'Количество заказанных товарных позиций',
    created_at DATETIME     DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME     DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES orders (id),
    FOREIGN KEY (product_id) REFERENCES products (id)
) COMMENT = 'Состав заказа';

DROP TABLE IF EXISTS discounts;
CREATE TABLE discounts
(
    id          SERIAL PRIMARY KEY,
    user_id     BIGINT UNSIGNED NOT NULL,
    product_id  BIGINT UNSIGNED NOT NULL,
    discount    FLOAT UNSIGNED COMMENT 'Величина скидки от 0.0 до 1.0',
    started_at  DATETIME,
    finished_at DATETIME,
    created_at  DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at  DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES shop_users (id),
    FOREIGN KEY (product_id) REFERENCES products (id)
) COMMENT = 'Скидки';

DROP TABLE IF EXISTS storehouses;
CREATE TABLE storehouses
(
    id         SERIAL PRIMARY KEY,
    name       VARCHAR(255) COMMENT 'Название',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Склады';

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products
(
    id            SERIAL PRIMARY KEY,
    storehouse_id BIGINT UNSIGNED NOT NULL,
    product_id    BIGINT UNSIGNED NOT NULL,
    value         INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
    created_at    DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at    DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (storehouse_id) REFERENCES storehouses (id),
    FOREIGN KEY (product_id) REFERENCES products (id)
) COMMENT = 'Запасы на складе';
