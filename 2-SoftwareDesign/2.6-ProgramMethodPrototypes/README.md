### Прототипи методів програмних класів
| FR |Опис вимоги | Назва класу | Назва методу класу|
| --- | --- | --- | --- |
| FR1.1 |Вхід користувача в систему | User |loginUser(username: string, password: string): boolean |
| FR1.2 |Вихід користувача з системи |User  |logoutUser(): void |
| FR1.3 | Введення даних про якість сну | SleepQuality | enterSleepData(sleepData: SleepData): void|
| FR1.4 | Фільтрація даних про якість сну за періодами часу | SleepQuality | filterSleepData(startDate: date, endDate: date): SleepData[] |
| FR1.5 | Перегляд статистики cну | Consumer_T | viewStatistic() |
| FR2.1 | Звертання до інформації з безпеки праці | Consumer_T | viewLaborSafety()|
| FR3.1 | Відображення переліку танців та вправ для фізичної активності | Consumer_T | viewDancesExercises() |
