-- Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

SELECT
    u.id,
    concat(firstname, ' ', lastname) AS user,
    timestampdiff(YEAR, u.birthday, now()) AS 'age',
    (SELECT count(*) FROM likes_posts lp WHERE lp.post_id = p.id) AS 'likes_count'
FROM users AS u
JOIN posts AS p WHERE p.user_id = u.id
ORDER BY (timestampdiff(YEAR, u.birthday, now()))
LIMIT 10;
