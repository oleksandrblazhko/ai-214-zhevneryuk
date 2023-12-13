-- Створення послідовності для створення унікальних ідентифікаторів для SleepQuality
CREATE SEQUENCE SQ_SLEEP_QUALITY
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

CREATE OR REPLACE PROCEDURE enter_sleep_data (
    p_sleep_date DATE,
    p_sleep_time_start TIMESTAMP,
    p_sleep_time_end TIMESTAMP,
    p_sleep_duration NUMBER,
    p_sleep_quality VARCHAR2,
    p_user_id INT
) AS
    v_result NUMBER;
BEGIN
    -- Перевірка на коректність тривалості сну
    IF p_sleep_duration <= 0 OR p_sleep_time_end <= p_sleep_time_start THEN
        v_result := 1; -- Помилка
    ELSE
        -- Введення даних про якість сну
        INSERT INTO SleepQuality (
            sleepQuality_id,
            sleep_date,
            sleep_time_start,
            sleep_time_end,
            sleep_duration,
            id_quality,
            id_consumer
        ) VALUES (
            SQ_SLEEP_QUALITY.NEXTVAL, -- Використання послідовності для створення унікального ідентифікатора
            p_sleep_date,
            p_sleep_time_start,
            p_sleep_time_end,
            p_sleep_duration,
            (SELECT quality_id FROM Quality WHERE quality_name = p_sleep_quality),
            p_user_id
        );
        
        v_result := 0; -- Успішно
    END IF;
    
    -- Виведення результату
    DBMS_OUTPUT.PUT_LINE('Result Code: ' || v_result);
END enter_sleep_data;
