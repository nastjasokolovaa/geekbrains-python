-- Пусть задан некоторый пользователь.
-- Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.

WITH friend_list AS (
    SELECT DISTINCT
        CASE
            WHEN initiator_user_id = 2 THEN target_user_id
            WHEN target_user_id = 2 THEN initiator_user_id
           END
            AS friend_id
    FROM friend_requests
    WHERE initiator_user_id = 2
       OR target_user_id = 2 AND status = 'approved'
)
SELECT
    from_user_id
FROM friend_list AS fl
JOIN messages AS m ON  m.to_user_id = 2 AND m.from_user_id = fl.friend_id
GROUP BY from_user_id
ORDER BY count(*) DESC
LIMIT 1;
