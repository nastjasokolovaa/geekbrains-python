DROP TABLE IF EXISTS users;
CREATE TABLE users
(
    id         SERIAL PRIMARY KEY, -- serial = bigint unsigned not null auto_increment unique
    firstname  VARCHAR(50),
    lastname   VARCHAR(50) COMMENT 'Фамилия пользователя',
    email      VARCHAR(120) UNIQUE,
    phone      VARCHAR(20) UNIQUE,
    birthday   DATE,
    hometown   VARCHAR(100),
    gender     CHAR(1),
    photo_id   BIGINT UNSIGNED,
    created_at DATETIME DEFAULT now(),
    pass       CHAR(30)
);

ALTER TABLE users
    ADD INDEX (phone);
ALTER TABLE users
    ADD INDEX users_firstname_lastname_idx (firstname, lastname);

DROP TABLE IF EXISTS settings;
CREATE TABLE settings
(
    user_id     SERIAL PRIMARY KEY,
    can_see     ENUM ('all', 'friends_of_friends', 'friends', 'nobody'),
    can_comment ENUM ('all', 'friends_of_friends', 'friends', 'nobody'),
    can_message ENUM ('all', 'friends_of_friends', 'friends', 'nobody'),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

DROP TABLE IF EXISTS messages;
CREATE TABLE messages
(
    id           SERIAL PRIMARY KEY,
    from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id   BIGINT UNSIGNED NOT NULL,
    message      TEXT            NOT NULL,
    is_read      BOOL     DEFAULT 0,
    created_at   DATETIME DEFAULT now(),
    FOREIGN KEY (from_user_id) REFERENCES users (id),
    FOREIGN KEY (to_user_id) REFERENCES users (id)
);

ALTER TABLE messages
    ADD INDEX messages_from_user_id (from_user_id);
ALTER TABLE messages
    ADD INDEX messages_to_user_id (to_user_id);

DROP TABLE IF EXISTS friend_requests;
CREATE TABLE friend_requests
(
    initiator_user_id BIGINT UNSIGNED NOT NULL,
    target_user_id    BIGINT UNSIGNED NOT NULL,
    status            ENUM ('requested', 'approved', 'unfriended', 'declined'),
    requested_at      DATETIME DEFAULT now(),
    confirmed_at      DATETIME DEFAULT current_timestamp ON UPDATE current_timestamp,
    PRIMARY KEY (initiator_user_id, target_user_id),
    INDEX (initiator_user_id),
    INDEX (target_user_id),
    FOREIGN KEY (initiator_user_id) REFERENCES users (id),
    FOREIGN KEY (target_user_id) REFERENCES users (id)
);

DROP TABLE IF EXISTS communities;
CREATE TABLE communities
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(150),
    INDEX (name)
);

DROP TABLE IF EXISTS users_communities;
CREATE TABLE users_communities
(
    user_id      BIGINT UNSIGNED NOT NULL,
    community_id BIGINT UNSIGNED NOT NULL,
    PRIMARY KEY (user_id, community_id),
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (community_id) REFERENCES communities (id)
);

DROP TABLE IF EXISTS posts;
CREATE TABLE posts
(
    id          SERIAL PRIMARY KEY,
    user_id     BIGINT UNSIGNED NOT NULL,
    post        TEXT,
    attachments JSON,
    metadata    JSON,
    created_at  DATETIME DEFAULT current_timestamp,
    updated_at  DATETIME DEFAULT current_timestamp ON UPDATE current_timestamp,
    FOREIGN KEY (user_id) REFERENCES users (id)
);

DROP TABLE IF EXISTS comments;
CREATE TABLE comments
(
    id         SERIAL PRIMARY KEY,
    user_id    BIGINT UNSIGNED NOT NULL,
    post_id    BIGINT UNSIGNED NOT NULL,
    comment    TEXT,
    created_at DATETIME DEFAULT current_timestamp,
    updated_at DATETIME DEFAULT current_timestamp ON UPDATE current_timestamp,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (post_id) REFERENCES posts (id)
);

DROP TABLE IF EXISTS photos;
CREATE TABLE photos
(
    id          SERIAL PRIMARY KEY,
    filename    VARCHAR(255),
    user_id     BIGINT UNSIGNED NOT NULL,
    description TEXT,
    created_at  DATETIME DEFAULT current_timestamp,
    FOREIGN KEY (user_id) REFERENCES users (id)
);


DROP TABLE IF EXISTS `likes_posts`;
-- !40101 SET @saved_cs_client = @@character_set_client
-- !50503 SET character_set_client = utf8mb4
CREATE TABLE `likes_posts`
(
    `id`         BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `post_id`    BIGINT UNSIGNED NOT NULL,
    `user_id`    BIGINT UNSIGNED NOT NULL,
    `likepage`   BIGINT UNSIGNED NOT NULL,
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id` (`id`),
    UNIQUE KEY `user_id` (`user_id`, `post_id`),
    KEY `likes_posts_ibfk_2` (`post_id`),
    CONSTRAINT `likes_posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
    CONSTRAINT `likes_posts_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 32934
  DEFAULT CHARSET = utf8mb4;
