### Метод enterSleepData(sleepData)

Вхідні параметри:
sleepData (тип: об'єкт SleepData) - об'єкт, що містить дані про якість сну. Цей об'єкт має такі поля:

- sleep_date (тип: дата) - дата сну;
- sleep_time_start (тип: час) - час початку сну;
- sleep_time_end (тип: час) - час завершення сну, не може бути раніше часу початку сну;
- sleep_duration (тип: число) - тривалість сну в годинах, повинна бути додатнім числом;
- sleep_quality (тип: рядок) - якість сну, може приймати значення "погано", "задовільно", "добре", "відмінно";

Вихідні параметри:
result (тип: число) - код результату введення даних про якість сну:

Значення:
0 - Успішне введення даних про якість сну.

1 - Помилка. Невірно вказана тривалість сну або час завершення сну раніше часу початку сну.
