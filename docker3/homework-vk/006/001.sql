SELECT
    id,
    firstname,
    lastname,
    timestampdiff(YEAR, u.birthday, now())                                                            AS 'age',
    (SELECT filename FROM photos AS ph WHERE ph.id = u.photo_id)                                      AS 'personal_photo',
    (SELECT
         count(*)
     FROM (SELECT
               initiator_user_id
           FROM friend_requests AS fr1
           WHERE target_user_id = 17
             AND status = 'approved'
           UNION
           SELECT
               target_user_id
           FROM friend_requests AS fr2
           WHERE initiator_user_id = 17
             AND status = 'approved') AS friend_list)                                                 AS 'friends',
    (SELECT count(*) FROM friend_requests fr WHERE fr.target_user_id = u.id AND status = 'requested') AS 'followers',
    (SELECT count(*) FROM photos p WHERE p.user_id = u.id)                                            AS 'photos'
FROM users AS u
WHERE id = 17;

-- -----------------------------------------------

SELECT
    firstname,
    lastname,
    timestampdiff(YEAR, birthday, now()) AS 'age',
    CASE (gender)
        WHEN 'm' THEN 'MALE'
        WHEN 'f' THEN 'FEMALE'
        END                              AS 'gender'
FROM users
WHERE id IN (SELECT
                 initiator_user_id
             FROM friend_requests fr1
             WHERE target_user_id = 17
               AND status = 'approved'
             UNION
             SELECT
                 target_user_id
             FROM friend_requests fr2
             WHERE initiator_user_id = 17
               AND status = 'approved');
-- ----------------------------------------------
SELECT
    user_id,
    count(*) AS total_user_news
FROM posts
GROUP BY user_id;
SELECT
    avg(`total_user_news`)
FROM (SELECT count(*) AS `total_user_news` FROM posts GROUP BY user_id) AS total_user_news_tbl;

-- ---------------------------------------------
SELECT DISTINCT
    CASE
        WHEN initiator_user_id = 2 THEN target_user_id
        WHEN target_user_id = 2 THEN initiator_user_id
        END
        AS friend_id
FROM friend_requests
WHERE initiator_user_id = 2
   OR target_user_id = 2 AND status = 'approved';
-- непрочитанные сообщения пользователя 30
SELECT
    count(from_user_id)                                                                'unread_msg',
    (SELECT concat(firstname, ' ', lastname) FROM users u WHERE u.id = m.from_user_id) 'from_user'
FROM messages m
WHERE to_user_id = 30
  AND is_read = 0
GROUP BY from_user_id
ORDER BY unread_msg DESC;

-- новостная лента пользователя 30

SELECT
    (SELECT concat(firstname, ' ', lastname) FROM users u WHERE u.id = p.user_id) 'author',
    post,
    created_at,
    (SELECT count(*) FROM likes_posts lp WHERE lp.post_id = p.id)                 'likes_count'
FROM posts p
WHERE user_id = 30;

SELECT
    (SELECT concat(firstname, ' ', lastname) FROM users u WHERE u.id = p.user_id) 'author',
    post,
    created_at,
    (SELECT count(*) FROM likes_posts lp WHERE lp.post_id = p.id)                 'likes_count'
FROM posts p
WHERE user_id IN (SELECT
                      initiator_user_id
                  FROM friend_requests fr1
                  WHERE target_user_id = 17
                    AND status = 'approved'
                  UNION
                  SELECT
                      target_user_id
                  FROM friend_requests fr2
                  WHERE initiator_user_id = 17
                    AND status = 'approved');
-- объединение запросов

SELECT *
FROM ((SELECT
           (SELECT concat(firstname, ' ', lastname) FROM users u WHERE u.id = p.user_id) 'author',
           post,
           created_at,
           (SELECT count(*) FROM likes_posts lp WHERE lp.post_id = p.id)                 'likes_count'
       FROM posts p
       WHERE user_id = 30)
      UNION
      (SELECT
           (SELECT concat(firstname, ' ', lastname) FROM users u WHERE u.id = p.user_id) 'author',
           post,
           created_at,
           (SELECT count(*) FROM likes_posts lp WHERE lp.post_id = p.id)                 'likes_count'
       FROM posts p
       WHERE user_id IN (SELECT
                             initiator_user_id
                         FROM friend_requests fr1
                         WHERE target_user_id = 30
                           AND status = 'approved'
                         UNION
                         SELECT
                             target_user_id
                         FROM friend_requests fr2
                         WHERE initiator_user_id = 30
                           AND status = 'approved'))
) tmp_tbl;