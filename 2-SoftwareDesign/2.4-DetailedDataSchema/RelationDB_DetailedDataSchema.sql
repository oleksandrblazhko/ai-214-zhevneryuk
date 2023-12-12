-- User table
CREATE TABLE Users_T (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(255) NOT NULL,
    user_login VARCHAR(255) UNIQUE NOT NULL,
    user_password  VARCHAR(255) NOT NULL,
    user_date_birth DATE NOT NULL
);

CREATE TABLE Consumer_T (
  consumer_id INT PRIMARY KEY,
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES Users_T(user_id)
);

-- SleepQuality table
CREATE TABLE SleepQuality (
    sleepQuality_id INT PRIMARY KEY,
    sleep_date DATE NOT NULL,
    sleep_time_start TIMESTAMP NOT NULL,
    sleep_time_end TIMESTAMP NOT NULL,
    sleep_duration NUMBER NOT NULL,
    id_quality INT NOT NULL,
    FOREIGN KEY (id_quality) REFERENCES Quality(quality_id),
    id_consumer INT  NOT NULL,
    FOREIGN KEY (id_consumer) REFERENCES Consumer_T(consumer_id)
);


-- Quality table
CREATE TABLE Quality (
    quality_id INT PRIMARY KEY,
    quality_name VARCHAR(255) NOT NULL
);

-- Statistic table
CREATE TABLE Statistic (
    statistic_id INT PRIMARY KEY,
    statistic_period VARCHAR2(255) NOT NULL,
    number_records NUMBER NOT NULL,
    average_duration NUMBER NOT NULL,
    average_start TIMESTAMP NOT NULL,
    average_end TIMESTAMP NOT NULL,
    average_quality VARCHAR2(255) NOT NULL,
    id_SleepQuality INT,
    FOREIGN KEY (id_SleepQuality) REFERENCES SleepQuality(SleepQuality_id)
);


-- LaborSafety table
CREATE TABLE LaborSafety (
    laborSafety_id INT PRIMARY KEY,
    laborSafety_rule VARCHAR(255) NOT NULL,
    laborSafety_standard VARCHAR(255) NOT NULL,
    recommendation VARCHAR(255) NOT NULL
);

-- DancesExercises table
CREATE TABLE DancesExercises (
    DancesExercises_id INT PRIMARY KEY,
    DancesExercises_name VARCHAR(255) NOT NULL,
    DancesExercises_description VARCHAR(255) NOT NULL,
    name_file VARCHAR(255) NOT NULL
);

ALTER TABLE Users_T
ADD CONSTRAINT Users_login_format
CHECK (user_login SIMILAR TO '^([a-z0-9._-]+@[a-z]+.[a-z]{2,4})$');

ALTER TABLE LaborSafety
ADD CONSTRAINT LaborSafety_rule_length
CHECK (LENGTH(laborSafety_rule) <= 255);
