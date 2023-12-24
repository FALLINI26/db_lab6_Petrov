-- Процедура оновлює вміст повідомлення з переданим id
CREATE OR REPLACE PROCEDURE update_message_content(id INT, new_content TEXT)
LANGUAGE plpgsql AS $$
BEGIN
    UPDATE message
    SET content = new_content
    WHERE message_id = id;
END;
$$;