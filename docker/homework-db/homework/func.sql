CREATE PROCEDURE insert_log(
    IN p_table_name VARCHAR(255),
    IN p_entity_id BIGINT UNSIGNED,
    IN p_entity_before JSON,
    IN p_entity_after JSON,
    IN p_operation VARCHAR(20)
)
BEGIN
    INSERT INTO logs (table_name, entity_id, entity_before, entity_after, operation)
    VALUES (p_table_name, p_entity_id, p_entity_before, p_entity_after, p_operation);
END;

DROP TRIGGER IF EXISTS insert_logs_users;
DELIMITER $$
CREATE TRIGGER insert_logs_users AFTER INSERT ON shop_users
    FOR EACH ROW
    BEGIN
        CALL insert_log(
            'shop_users',
            NEW.id,
            NULL,
            JSON_OBJECT('name', NEW.name),
            'INSERT'
        );
    END
$$

DROP TRIGGER IF EXISTS update_logs_users;
DELIMITER $$
CREATE TRIGGER update_logs_users AFTER UPDATE ON shop_users
    FOR EACH ROW
BEGIN
    CALL insert_log(
        'shop_users',
        OLD.id,
        JSON_OBJECT('name', OLD.name),
        JSON_OBJECT('name', NEW.name),
        'UPDATE'
        );
END
$$

DROP TRIGGER IF EXISTS insert_logs_products;
DELIMITER $$
CREATE TRIGGER insert_logs_products AFTER INSERT ON products
    FOR EACH ROW
BEGIN
    CALL insert_log(
        'products',
        NEW.id,
        NULL,
        JSON_OBJECT('name', NEW.name),
        'INSERT'
        );
END
$$

DROP TRIGGER IF EXISTS update_logs_products;
DELIMITER $$
CREATE TRIGGER update_logs_products AFTER UPDATE ON products
    FOR EACH ROW
BEGIN
    CALL insert_log(
        'products',
        OLD.id,
        JSON_OBJECT('name', OLD.name),
        JSON_OBJECT('name', NEW.name),
        'UPDATE'
        );
END
$$

DROP TRIGGER IF EXISTS insert_logs_catalogs;
DELIMITER $$
CREATE TRIGGER insert_logs_catalogs AFTER INSERT ON catalogs
    FOR EACH ROW
BEGIN
    CALL insert_log(
        'catalogs',
        NEW.id,
        NULL,
        JSON_OBJECT('name', NEW.name),
        'INSERT'
        );
END
$$

DROP TRIGGER IF EXISTS update_logs_catalogs;
DELIMITER $$
CREATE TRIGGER update_logs_catalogs AFTER UPDATE ON catalogs
    FOR EACH ROW
BEGIN
    CALL insert_log(
        'catalogs',
        OLD.id,
        JSON_OBJECT('name', OLD.name),
        JSON_OBJECT('name', NEW.name),
        'UPDATE'
        );
END
$$
