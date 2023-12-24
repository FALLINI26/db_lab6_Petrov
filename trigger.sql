-- Функція тригеру, яка змініює першу літеру на велику
CREATE OR REPLACE FUNCTION capitalize_first_letter()
RETURNS TRIGGER AS $$
BEGIN
    NEW.content = INITCAP(LEFT(NEW.content, 1)) || SUBSTRING(NEW.content FROM 2);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create trigger for INSERT
CREATE TRIGGER capitalize_first_letter_insert_trigger
BEFORE INSERT ON message
FOR EACH ROW
EXECUTE FUNCTION capitalize_first_letter();

-- Create trigger for UPDATE
CREATE TRIGGER capitalize_first_letter_update_trigger
BEFORE UPDATE ON message
FOR EACH ROW
EXECUTE FUNCTION capitalize_first_letter();