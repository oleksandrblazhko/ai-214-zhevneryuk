-- Quality Type
CREATE OR REPLACE TYPE Quality AS OBJECT (
    quality_id INT,
    name VARCHAR2(255)
);

-- Statistic Type
CREATE OR REPLACE TYPE Statistic AS OBJECT (
    statistic_id INT,
    period VARCHAR2(255),
    number_records INT,
    average_duration FLOAT,
    average_start DATE,
    average_end DATE,
    average_quality VARCHAR2(255)
);

-- LaborSafety Type
CREATE OR REPLACE TYPE LaborSafety AS OBJECT (
    laborSafety_id INT,
    rule VARCHAR2(255),
    standard VARCHAR2(255),
    recommendation VARCHAR2(255)
);

-- DancesExercises Type
CREATE OR REPLACE TYPE DancesExercises AS OBJECT (
    dancesExercises_id INT,
    name VARCHAR2(255),
    description VARCHAR2(255),
    name_file VARCHAR2(255)
);

-- SleepQuality Type
CREATE OR REPLACE TYPE SleepQuality AS OBJECT (
    sleepQuality_id INT,
    sleep_date DATE,
    sleep_time_start DATE,
    sleep_time_end DATE,
    sleep_duration NUMBER,
    sleep_quality VARCHAR2(255),
    id_consumer INT,
    Statistic Statistic,
    quality Quality
);

-- Consumer_T Type
CREATE OR REPLACE TYPE Consumer_T AS OBJECT (
    consumer_id INT,
    user_id INT,
    LaborSafety LaborSafety,
    DancesExercises DancesExercises,
    SleepQuality SleepQuality,
    MEMBER PROCEDURE viewSleepQuality,
    MEMBER PROCEDURE viewStatistic,
    MEMBER PROCEDURE viewLaborSafety,
    MEMBER PROCEDURE viewDancesExercises
);

-- Users_T Type
CREATE OR REPLACE TYPE Users_T AS OBJECT (
    user_id INT,
    user_name VARCHAR2(255),
    user_login VARCHAR2(255),
    user_password VARCHAR2(255),
    user_date_birth DATE,
    MEMBER FUNCTION loginUser RETURN BOOLEAN,
    MEMBER PROCEDURE logoutUser
);
