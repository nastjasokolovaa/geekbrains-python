-- Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

SELECT
    DISTINCT su.id,
    su.name
FROM orders AS o JOIN shop_users AS su ON su.id = o.user_id;
