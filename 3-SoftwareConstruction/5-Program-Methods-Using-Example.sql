-- Приклад роботи з методом enter_sleep_data
DECLARE
    p_sleep_date DATE := TO_DATE('2022-12-12', 'YYYY-MM-DD');
    p_sleep_time_start TIMESTAMP := TO_TIMESTAMP('2022-12-12 22:00:00', 'YYYY-MM-DD HH24:MI:SS');
    p_sleep_time_end TIMESTAMP := TO_TIMESTAMP('2022-12-13 06:00:00', 'YYYY-MM-DD HH24:MI:SS');
    p_sleep_duration NUMBER := 8;
    p_sleep_quality VARCHAR2(255) := 'добре';
    p_user_id INT := 1;
BEGIN
    -- Виклик методу enter_sleep_data
    enter_sleep_data(p_sleep_date, p_sleep_time_start, p_sleep_time_end, p_sleep_duration, p_sleep_quality, p_user_id);
END;