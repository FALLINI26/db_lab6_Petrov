-- Функція get_message_count(user_id INT) повертає кількість повідомлень, які надіслав користувач з переданим id
CREATE OR REPLACE FUNCTION get_message_count(user_id INT)
RETURNS INT AS $$
DECLARE
    message_count INT;
BEGIN
    SELECT COUNT(*)
    INTO message_count
    FROM message
    WHERE sender_id = user_id;

    RETURN message_count;
END;
$$ LANGUAGE plpgsql;