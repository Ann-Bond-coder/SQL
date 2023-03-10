--2.1 Для однієї з таблиць створити команду отримання значень всіх колонок (явно
-- перерахувати) у всіх рядках.
SELECT 
    Serv_id,
	Serv_name 
FROM Services;
/*
   SERV_ID SERV_NAME      
---------- -----------
         2 Haircut        
         1 Manicure       
         3 Massage  
*/

--2.2 Для однієї з таблиць створити команду отримання цілого числа колонки з
-- використанням будь-якої арифметичної операції. При виведенні на екран
-- визначити для зазначеної колонки нову назву псевдоніма.
SELECT 
    Salary, 
	12*Salary AS Yeahr_Salary
FROM Implementers;
/* 
     SALARY YEAHR_SALARY
----------- ------------
      7500        90000
      8000        96000
      7800        93600
*/

-- 2.3 Для однієї з таблиць, що містить колонку зовнішнього ключа створити 
-- команду отримання значення колонки без дублювання значень.
SELECT DISTINCT 
    Service_name 
FROM List_Of_Services;
/*
SERVICE_NAME
------------
           1
           2
           3
*/

-- 2.4 Для однієї з таблиць створити команду отримання результату конкатенації 
--значень будь-яких двох колонок. При виведенні на початок рядка виведення 
--додати літерал «UNION=».
SELECT 
   'UNION = ' || Implem_name || ' has salary = ' || Salary
FROM Implementers;
-- Результат: повідомлення про співробітника та яку заробітню плату має
/*
UNION = Maria has salary = 7500
UNION = Masha has salary = 8000
UNION = Sasha has salary = 7800
*/

--2.5 Модернізувати рішення завдання 2.2, отримавши в порядку зростання значення
--псевдоніму.
SELECT 
    Salary, 
	12*Salary AS Yeahr_Salary
FROM Implementers
ORDER BY Yeahr_Salary ASC;
-- Результат: відсортована таблиця за полем "Yeahr_Salary"
/*
    SALARY YEAHR_SALARY
---------- ------------
      7500        90000
      7800        93600
      8000        96000
*/

--2.6 Для однієї з таблиць створити команду отримання значення двох колонок, 
-- значення яких відсортовані в порядку зростання (для першої колонки) та в 
-- порядку зменшення (друга колонка).
SELECT 
    Implem_id, 
	12*Salary AS Yeahr_Salary
FROM Implementers
ORDER BY Implem_id ASC, Yeahr_Salary DESC;
/*
 IMPLEM_ID YEAHR_SALARY
---------- ------------
         1        96000
         2        93600
         3        90000
*/
