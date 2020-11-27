-- Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

SELECT
    u.id,
    concat(u.firstname, ' ', u.lastname)                          AS 'user',
    ((SELECT count(*) FROM likes_posts AS lp WHERE lp.user_id = u.id) +
     (SELECT count(*) FROM posts AS p WHERE p.user_id = u.id) +
     (SELECT count(*) FROM messages AS m WHERE m.from_user_id = u.id) +
     (SELECT count(*) FROM friend_requests AS fr WHERE fr.initiator_user_id = u.id) +
     (SELECT count(*) FROM comments AS c WHERE c.user_id = u.id)) AS 'activities'
FROM users AS u
ORDER BY activities
LIMIT 10;
