-- Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT
    p.id,
    p.name,
    c.name
FROM products AS p JOIN catalogs c ON p.catalog_id = c.id;
