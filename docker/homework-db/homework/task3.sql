DROP TABLE IF EXISTS logs;
CREATE TABLE logs
(
    id            SERIAL PRIMARY KEY,
    table_name    VARCHAR(255),
    entity_id     BIGINT UNSIGNED                     NOT NULL,
    entity_before JSON     DEFAULT NULL,
    entity_after  JSON     DEFAULT NULL,
    operation     ENUM ('INSERT', 'UPDATE', 'DELETE') NOT NULL,
    created_at    DATETIME DEFAULT CURRENT_TIMESTAMP,
    INDEX (table_name, entity_id),
    INDEX (created_at)
) ENGINE = maria
  DEFAULT CHARSET = utf8;
