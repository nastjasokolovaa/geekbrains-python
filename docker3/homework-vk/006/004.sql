-- Oпределить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT
    u.gender,
    COUNT ((SELECT count(*) FROM likes_posts lp WHERE lp.post_id = p.id)) AS 'likes_count'
FROM users AS u
JOIN posts AS p WHERE p.user_id = u.id
GROUP BY u.gender;
