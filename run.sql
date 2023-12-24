-- Run the function
SELECT get_message_count(1) AS message_count_for_user_1;

-- Old message
SELECT *
FROM message
WHERE message_id = 1;

-- Run the procedure to update message content (and trigger will capitalize the first letter)
CALL update_message_content(1, 'new updated content');

-- Updated message with capitalized first letter
SELECT *
FROM message
WHERE message_id = 1;