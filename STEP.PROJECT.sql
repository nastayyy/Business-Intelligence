-- Part 1
WITH RECURSIVE avg_salaries (during_year, avg_salary) AS -- 1
(SELECT 1985
              , round(avg(s.salary),0)
        from salaries as s
        where 1985 between year(s.from_date) and year(s.to_date)
union all
SELECT during_year + 1, (select round(avg(s.salary),0)
            from salaries as s
            where during_year + 1 between year(s.from_date) and year(s.to_date))
FROM avg_salaries
where during_year < 2005)
SELECT during_year, avg_salary
FROM avg_salaries;   -- Покажите среднюю зарплату сотрудников за каждый год (средняя заработная плата среди тех, кто работал в отчетный период -статистика с начала до 2005 года).

/*1.2. Покажите среднюю зарплату сотрудников по каждому отделу. 
 Примечание: принять в расчет только текущие отделы и текущую заработную плату.*/
 
 SELECT DISTINCT de.dept_no , AVG(salary) OVER(PARTITION BY dept_no ORDER BY dept_no) as avg_salary
 FROM dept_emp AS de
 INNER JOIN salaries AS s
 USING(emp_no)
 WHERE de.to_date > now() and s.to_date > now();
 
 
  /*1.3.Покажите среднюю зарплату сотрудников по каждому отделу за каждый год.
 Примечание: для средней зарплаты отдела X в году Y нам нужно взять среднее значение всех зарплат 
 в году Y сотрудников,которые были в отделе X в году Y.*/

(SELECT  de.dept_no, ROUND(AVG(s.salary)) AS avg_salary, YEAR(de.from_date) as dep_year
FROM dept_emp  AS de
LEFT JOIN salaries AS s
	USING(emp_no)
WHERE YEAR(de.from_date) = 1985
 AND  
YEAR(de.from_date) BETWEEN YEAR(de.from_date) and YEAR(de.to_date)
GROUP BY de.dept_no
ORDER BY de.dept_no)

UNION ALL

(SELECT  de.dept_no, ROUND(AVG(s.salary)) AS avg_salary, YEAR(de.from_date) as dep_year
FROM dept_emp  AS de
LEFT JOIN salaries AS s
	USING(emp_no)
WHERE YEAR(de.from_date) = 1986
 AND  
YEAR(de.from_date) BETWEEN YEAR(de.from_date) and YEAR(de.to_date)
GROUP BY de.dept_no
ORDER BY de.dept_no)

UNION ALL

(SELECT  de.dept_no, ROUND(AVG(s.salary)) AS avg_salary, YEAR(de.from_date) as dep_year
FROM dept_emp  AS de
LEFT JOIN salaries AS s
	USING(emp_no)
WHERE YEAR(de.from_date) = 1987
 AND  
YEAR(de.from_date) BETWEEN YEAR(de.from_date) and YEAR(de.to_date)
GROUP BY de.dept_no
ORDER BY de.dept_no)

UNION ALL

(SELECT  de.dept_no, ROUND(AVG(s.salary)) AS avg_salary, YEAR(de.from_date) as dep_year
FROM dept_emp  AS de
LEFT JOIN salaries AS s
	USING(emp_no)
WHERE YEAR(de.from_date) = 1988
 AND  
YEAR(de.from_date) BETWEEN YEAR(de.from_date) and YEAR(de.to_date)
GROUP BY de.dept_no
ORDER BY de.dept_no)


UNION ALL

(SELECT  de.dept_no, ROUND(AVG(s.salary)) AS avg_salary, YEAR(de.from_date) as dep_year
FROM dept_emp  AS de
LEFT JOIN salaries AS s
	USING(emp_no)
WHERE YEAR(de.from_date) = 1989
 AND  
YEAR(de.from_date) BETWEEN YEAR(de.from_date) and YEAR(de.to_date)
GROUP BY de.dept_no
ORDER BY de.dept_no)


UNION ALL

(SELECT  de.dept_no, ROUND(AVG(s.salary)) AS avg_salary, YEAR(de.from_date) as dep_year
FROM dept_emp  AS de
LEFT JOIN salaries AS s
	USING(emp_no)
WHERE YEAR(de.from_date) = 1990
 AND  
YEAR(de.from_date) BETWEEN YEAR(de.from_date) and YEAR(de.to_date)
GROUP BY de.dept_no
ORDER BY de.dept_no)

UNION ALL

(SELECT  de.dept_no, ROUND(AVG(s.salary)) AS avg_salary, YEAR(de.from_date) as dep_year
FROM dept_emp  AS de
LEFT JOIN salaries AS s
	USING(emp_no)
WHERE YEAR(de.from_date) = 1991
 AND  
YEAR(de.from_date) BETWEEN YEAR(de.from_date) and YEAR(de.to_date)
GROUP BY de.dept_no
ORDER BY de.dept_no)

UNION ALL

(SELECT  de.dept_no, ROUND(AVG(s.salary)) AS avg_salary, YEAR(de.from_date) as dep_year
FROM dept_emp  AS de
LEFT JOIN salaries AS s
	USING(emp_no)
WHERE YEAR(de.from_date) = 1992
 AND  
YEAR(de.from_date) BETWEEN YEAR(de.from_date) and YEAR(de.to_date)
GROUP BY de.dept_no
ORDER BY de.dept_no)

UNION ALL

(SELECT  de.dept_no, ROUND(AVG(s.salary)) AS avg_salary, YEAR(de.from_date) as dep_year
FROM dept_emp  AS de
LEFT JOIN salaries AS s
	USING(emp_no)
WHERE YEAR(de.from_date) = 1993
 AND  
YEAR(de.from_date) BETWEEN YEAR(de.from_date) and YEAR(de.to_date)
GROUP BY de.dept_no
ORDER BY de.dept_no)

UNION ALL

(SELECT  de.dept_no, ROUND(AVG(s.salary)) AS avg_salary, YEAR(de.from_date) as dep_year
FROM dept_emp  AS de
LEFT JOIN salaries AS s
	USING(emp_no)
WHERE YEAR(de.from_date) = 1994
 AND  
YEAR(de.from_date) BETWEEN YEAR(de.from_date) and YEAR(de.to_date)
GROUP BY de.dept_no
ORDER BY de.dept_no)

UNION ALL

(SELECT  de.dept_no, ROUND(AVG(s.salary)) AS avg_salary, YEAR(de.from_date) as dep_year
FROM dept_emp  AS de
LEFT JOIN salaries AS s
	USING(emp_no)
WHERE YEAR(de.from_date) = 1995
 AND  
YEAR(de.from_date) BETWEEN YEAR(de.from_date) and YEAR(de.to_date)
GROUP BY de.dept_no
ORDER BY de.dept_no)

UNION ALL

(SELECT  de.dept_no, ROUND(AVG(s.salary)) AS avg_salary, YEAR(de.from_date) as dep_year
FROM dept_emp  AS de
LEFT JOIN salaries AS s
	USING(emp_no)
WHERE YEAR(de.from_date) = 1996
 AND  
YEAR(de.from_date) BETWEEN YEAR(de.from_date) and YEAR(de.to_date)
GROUP BY de.dept_no
ORDER BY de.dept_no)

UNION ALL

(SELECT  de.dept_no, ROUND(AVG(s.salary)) AS avg_salary, YEAR(de.from_date) as dep_year
FROM dept_emp  AS de
LEFT JOIN salaries AS s
	USING(emp_no)
WHERE YEAR(de.from_date) = 1997
 AND  
YEAR(de.from_date) BETWEEN YEAR(de.from_date) and YEAR(de.to_date)
GROUP BY de.dept_no
ORDER BY de.dept_no)

UNION ALL

(SELECT  de.dept_no, ROUND(AVG(s.salary)) AS avg_salary, YEAR(de.from_date) as dep_year
FROM dept_emp  AS de
LEFT JOIN salaries AS s
	USING(emp_no)
WHERE YEAR(de.from_date) = 1998
 AND  
YEAR(de.from_date) BETWEEN YEAR(de.from_date) and YEAR(de.to_date)
GROUP BY de.dept_no
ORDER BY de.dept_no)

UNION ALL

(SELECT  de.dept_no, ROUND(AVG(s.salary)) AS avg_salary, YEAR(de.from_date) as dep_year
FROM dept_emp  AS de
LEFT JOIN salaries AS s
	USING(emp_no)
WHERE YEAR(de.from_date) = 1999
 AND  
YEAR(de.from_date) BETWEEN YEAR(de.from_date) and YEAR(de.to_date)
GROUP BY de.dept_no
ORDER BY de.dept_no)

UNION ALL


(SELECT  de.dept_no, ROUND(AVG(s.salary)) AS avg_salary, YEAR(de.from_date) as dep_year
FROM dept_emp  AS de
LEFT JOIN salaries AS s
	USING(emp_no)
WHERE YEAR(de.from_date) = 2000
 AND  
YEAR(de.from_date) BETWEEN YEAR(de.from_date) and YEAR(de.to_date)
GROUP BY de.dept_no
ORDER BY de.dept_no)

UNION ALL

(SELECT  de.dept_no, ROUND(AVG(s.salary)) AS avg_salary, YEAR(de.from_date) as dep_year
FROM dept_emp  AS de
LEFT JOIN salaries AS s
	USING(emp_no)
WHERE YEAR(de.from_date) = 2001
 AND  
YEAR(de.from_date) BETWEEN YEAR(de.from_date) and YEAR(de.to_date)
GROUP BY de.dept_no
ORDER BY de.dept_no)

UNION ALL

(SELECT  de.dept_no, ROUND(AVG(s.salary)) AS avg_salary, YEAR(de.from_date) as dep_year
FROM dept_emp  AS de
LEFT JOIN salaries AS s
	USING(emp_no)
WHERE YEAR(de.from_date) = 2002
 AND  
YEAR(de.from_date) BETWEEN YEAR(de.from_date) and YEAR(de.to_date)
GROUP BY de.dept_no
ORDER BY de.dept_no);
 
 

/* Из-за кризиса на одно подразделение на своевременную выплату зарплаты выделяется всего 500 тысяч долларов. 
Правление решило, что низкооплачиваемые сотрудники будут первыми получать зарплату. 
Показать список всех сотрудников, которые будут вовремя получать зарплату 
(обратите внимание, что мы должны платить зарплату за один месяц, но в базе данных мы храним годовые суммы). */
SELECT month_cume_salary.*              
FROM (
SELECT dept_emp.dept_no, salaries.emp_no, salaries.salary/12 AS month_salary,
SUM(salaries.salary/12) OVER (PARTITION BY dept_emp.dept_no ORDER BY salaries.salary/12) AS month_sum_salary                                                                      
FROM employees.dept_emp
LEFT JOIN employees.salaries ON salaries.emp_no = dept_emp.emp_no
WHERE salaries.to_date > now() ) AS month_cume_salary
WHERE  month_sum_salary <= 500000; 
/*1.4.Покажите для каждого года самый 
крупный отдел (по количеству сотрудников) в этом году и его среднюю зарплату.*/

(select  YEAR(de.from_date),de.dept_no ,ROUND(AVG(s.salary)), COUNT(de.emp_no) AS count
from dept_emp  AS de
LEFT JOIN salaries AS s
USING(emp_no)
where YEAR(de.from_date) = 1985 AND  YEAR(de.from_date) BETWEEN YEAR(de.from_date) AND (de.to_date)
AND YEAR(de.from_date) BETWEEN YEAR(s.from_date) AND (s.to_date)
GROUP BY de.dept_no
order by count DESC
limit 1)

UNION ALL

(select  YEAR(de.from_date),de.dept_no ,ROUND(AVG(s.salary)), COUNT(de.emp_no) AS count
from dept_emp  AS de
LEFT JOIN salaries AS s
USING(emp_no)
where YEAR(de.from_date) = 1986 AND  YEAR(de.from_date) BETWEEN YEAR(de.from_date) AND (de.to_date)
AND YEAR(de.from_date) BETWEEN YEAR(s.from_date) AND (s.to_date)
GROUP BY de.dept_no
order by count DESC
limit 1)

UNION ALL

(select  YEAR(de.from_date),de.dept_no ,ROUND(AVG(s.salary)), COUNT(de.emp_no) AS count
from dept_emp  AS de
LEFT JOIN salaries AS s
USING(emp_no)
where YEAR(de.from_date) = 1987 AND  YEAR(de.from_date) BETWEEN YEAR(de.from_date) AND (de.to_date)
AND YEAR(de.from_date) BETWEEN YEAR(s.from_date) AND (s.to_date)
GROUP BY de.dept_no
order by count DESC
limit 1)

UNION ALL

(select  YEAR(de.from_date),de.dept_no ,ROUND(AVG(s.salary)), COUNT(de.emp_no) AS count
from dept_emp  AS de
LEFT JOIN salaries AS s
USING(emp_no)
where YEAR(de.from_date) = 1988 AND  YEAR(de.from_date) BETWEEN YEAR(de.from_date) AND (de.to_date)
AND YEAR(de.from_date) BETWEEN YEAR(s.from_date) AND (s.to_date)
GROUP BY de.dept_no
order by count DESC
limit 1)

UNION ALL

(select  YEAR(de.from_date),de.dept_no ,ROUND(AVG(s.salary)), COUNT(de.emp_no) AS count
from dept_emp  AS de
LEFT JOIN salaries AS s
USING(emp_no)
where YEAR(de.from_date) = 1989 AND  YEAR(de.from_date) BETWEEN YEAR(de.from_date) AND (de.to_date)
AND YEAR(de.from_date) BETWEEN YEAR(s.from_date) AND (s.to_date)
GROUP BY de.dept_no
order by count DESC
limit 1)

UNION ALL

(select  YEAR(de.from_date),de.dept_no ,ROUND(AVG(s.salary)), COUNT(de.emp_no) AS count
from dept_emp  AS de
LEFT JOIN salaries AS s
USING(emp_no)
where YEAR(de.from_date) = 1990 AND  YEAR(de.from_date) BETWEEN YEAR(de.from_date) AND (de.to_date)
AND YEAR(de.from_date) BETWEEN YEAR(s.from_date) AND (s.to_date)
GROUP BY de.dept_no
order by count DESC
limit 1)

UNION ALL

(select  YEAR(de.from_date),de.dept_no ,ROUND(AVG(s.salary)), COUNT(de.emp_no) AS count
from dept_emp  AS de
LEFT JOIN salaries AS s
USING(emp_no)
where YEAR(de.from_date) = 1991 AND  YEAR(de.from_date) BETWEEN YEAR(de.from_date) AND (de.to_date)
AND YEAR(de.from_date) BETWEEN YEAR(s.from_date) AND (s.to_date)
GROUP BY de.dept_no
order by count DESC
limit 1)

UNION ALL

(select  YEAR(de.from_date),de.dept_no ,ROUND(AVG(s.salary)), COUNT(de.emp_no) AS count
from dept_emp  AS de
LEFT JOIN salaries AS s
USING(emp_no)
where YEAR(de.from_date) = 1992 AND  YEAR(de.from_date) BETWEEN YEAR(de.from_date) AND (de.to_date)
AND YEAR(de.from_date) BETWEEN YEAR(s.from_date) AND (s.to_date)
GROUP BY de.dept_no
order by count DESC
limit 1)

UNION ALL

(select  YEAR(de.from_date),de.dept_no ,ROUND(AVG(s.salary)), COUNT(de.emp_no) AS count
from dept_emp  AS de
LEFT JOIN salaries AS s
USING(emp_no)
where YEAR(de.from_date) = 1993 AND  YEAR(de.from_date) BETWEEN YEAR(de.from_date) AND (de.to_date)
AND YEAR(de.from_date) BETWEEN YEAR(s.from_date) AND (s.to_date)
GROUP BY de.dept_no
order by count DESC
limit 1)

UNION ALL

(select  YEAR(de.from_date),de.dept_no ,ROUND(AVG(s.salary)), COUNT(de.emp_no) AS count
from dept_emp  AS de
LEFT JOIN salaries AS s
USING(emp_no)
where YEAR(de.from_date) = 1994 AND  YEAR(de.from_date) BETWEEN YEAR(de.from_date) AND (de.to_date)
AND YEAR(de.from_date) BETWEEN YEAR(s.from_date) AND (s.to_date)
GROUP BY de.dept_no
order by count DESC
limit 1)

UNION ALL

(select  YEAR(de.from_date),de.dept_no ,ROUND(AVG(s.salary)), COUNT(de.emp_no) AS count
from dept_emp  AS de
LEFT JOIN salaries AS s
USING(emp_no)
where YEAR(de.from_date) = 1995 AND  YEAR(de.from_date) BETWEEN YEAR(de.from_date) AND (de.to_date)
AND YEAR(de.from_date) BETWEEN YEAR(s.from_date) AND (s.to_date)
GROUP BY de.dept_no
order by count DESC
limit 1)

UNION ALL

(select  YEAR(de.from_date),de.dept_no ,ROUND(AVG(s.salary)), COUNT(de.emp_no) AS count
from dept_emp  AS de
LEFT JOIN salaries AS s
USING(emp_no)
where YEAR(de.from_date) = 1996 AND  YEAR(de.from_date) BETWEEN YEAR(de.from_date) AND (de.to_date)
AND YEAR(de.from_date) BETWEEN YEAR(s.from_date) AND (s.to_date)
GROUP BY de.dept_no
order by count DESC
limit 1)

UNION ALL

(select  YEAR(de.from_date),de.dept_no ,ROUND(AVG(s.salary)), COUNT(de.emp_no) AS count
from dept_emp  AS de
LEFT JOIN salaries AS s
USING(emp_no)
where YEAR(de.from_date) = 1997 AND  YEAR(de.from_date) BETWEEN YEAR(de.from_date) AND (de.to_date)
AND YEAR(de.from_date) BETWEEN YEAR(s.from_date) AND (s.to_date)
GROUP BY de.dept_no
order by count DESC
limit 1)

UNION ALL

(select  YEAR(de.from_date),de.dept_no ,ROUND(AVG(s.salary)), COUNT(de.emp_no) AS count
from dept_emp  AS de
LEFT JOIN salaries AS s
USING(emp_no)
where YEAR(de.from_date) = 1998 AND  YEAR(de.from_date) BETWEEN YEAR(de.from_date) AND (de.to_date)
AND YEAR(de.from_date) BETWEEN YEAR(s.from_date) AND (s.to_date)
GROUP BY de.dept_no
order by count DESC
limit 1)

UNION ALL

(select  YEAR(de.from_date),de.dept_no, ROUND(AVG(s.salary)), COUNT(de.emp_no) AS count
from dept_emp  AS de
LEFT JOIN salaries AS s
USING(emp_no)
where YEAR(de.from_date) = 1999 AND  YEAR(de.from_date) BETWEEN YEAR(de.from_date) AND (de.to_date)
AND YEAR(de.from_date) BETWEEN YEAR(s.from_date) AND (s.to_date)
GROUP BY de.dept_no
order by count DESC
limit 1)

UNION ALL

(select  YEAR(de.from_date),de.dept_no ,ROUND(AVG(s.salary)), COUNT(de.emp_no) AS count
from dept_emp  AS de
LEFT JOIN salaries AS s
USING(emp_no)
where YEAR(de.from_date) = 2000 AND  YEAR(de.from_date) BETWEEN YEAR(de.from_date) AND (de.to_date)
AND YEAR(de.from_date) BETWEEN YEAR(s.from_date) AND (s.to_date)
GROUP BY de.dept_no
order by count DESC
limit 1)

UNION ALL

(select  YEAR(de.from_date),de.dept_no ,ROUND(AVG(s.salary)), COUNT(de.emp_no) AS count
from dept_emp  AS de
LEFT JOIN salaries AS s
USING(emp_no)
where YEAR(de.from_date) = 2001 AND  YEAR(de.from_date) BETWEEN YEAR(de.from_date) AND (de.to_date)
AND YEAR(de.from_date) BETWEEN YEAR(s.from_date) AND (s.to_date)
GROUP BY de.dept_no
order by count DESC
limit 1)

UNION ALL

(select  YEAR(de.from_date),de.dept_no ,ROUND(AVG(s.salary)), COUNT(de.emp_no) AS count
from dept_emp  AS de
LEFT JOIN salaries AS s
USING(emp_no)
where YEAR(de.from_date) = 2002 AND  YEAR(de.from_date) BETWEEN YEAR(de.from_date) AND (de.to_date)
AND YEAR(de.from_date) BETWEEN YEAR(s.from_date) AND (s.to_date)
GROUP BY de.dept_no
order by count DESC
limit 1);


/*1.4.Покажите подробную информацию о менеджере,
 который дольше всех исполняет свои обязанности на данный момент.*/
 
select *, MAX(datediff(curdate(),from_date)) as diff_working_day
from dept_manager 
INNER JOIN employees
USING(emp_no)
where to_date > curdate();



/*1.3.Покажите топ-10 нынешних сотрудников компании с наибольшей
 разницей между их зарплатой и текущей средней зарплатой в их отделе.*/
 
 WITH CTE_DEP AS (
	SELECT e.emp_no,s.salary,de.dept_no, 
    AVG(salary) OVER(PARTITION BY de.dept_no ORDER BY de.dept_no) AS dep_salary
	FROM employees e
	LEFT JOIN salaries s
		USING(emp_no)
	LEFT JOIN dept_emp de
		USING(emp_no)
	WHERE s.to_date > curdate() and de.to_date > curdate())
 
 SELECT *, salary - dep_salary AS salary_diff
 FROM CTE_DEP
 ORDER BY salary_diff DESC
 LIMIT 10;

/*1.7.Из-за кризиса на одно подразделение на своевременную выплату зарплаты выделяется всего
 500 тысяч долларов. Правление решило, что низкооплачиваемые сотрудники будут первыми получать зарплату. 
 Показать список всех сотрудников, которые будут вовремя получать зарплату
 (обратите внимание, что мы должны платить зарплату за один месяц, но в 
 базе данных мы храним годовые суммы).*/
 
 SELECT month_cume_salary. *             
FROM (
SELECT dept_emp.dept_no, salaries.emp_no, salaries.salary/12 AS month_salary,
SUM(salaries.salary/12) OVER (PARTITION BY dept_emp.dept_no ORDER BY salaries.salary/12) AS month_sum_salary                                                                      
FROM employees.dept_emp
LEFT JOIN employees.salaries 
ON salaries.emp_no = dept_emp.emp_no
WHERE salaries.to_date > now() ) AS month_cume_salary
WHERE  month_sum_salary <= 500000;
-- Part 2
/* Дизайн базы данных:
1.Разработайте базу данных для управления курсами. 
База данных содержит следующие сущности:
a.students: student_no, teacher_no, course_no, student_name, email, birth_date.
b.teachers: teacher_no, teacher_name, phone_no
c.courses: course_no, course_name, start_date, end_date */

CREATE DATABASE COURSES; 

CREATE TABLE students (
 student_no int NOT NULL ,
 teacher_no int NOT NULL,
 course_no int NOT NULL,
 student_name varchar(14) NOT NULL,
 email varchar (30),
 birth_date date NOT NULL,
 PRIMARY KEY (student_no,birth_date))-- В таблице studentsсделать первичный ключ в сочетании двух полей student_noи birth_date



PARTITION BY RANGE (year(birth_date))(   
PARTITION p0 VALUES LESS THAN (2000),   
PARTITION p1 VALUES LESS THAN (2001),   
PARTITION p2 VALUES LESS THAN (2002), 
PARTITION p3 VALUES LESS THAN (2003), 
PARTITION p4 VALUES LESS THAN (2004), 
PARTITION p5 VALUES LESS THAN (2005), 
PARTITION p6 VALUES LESS THAN (2006), 
PARTITION p7 VALUES LESS THAN (2007),
PARTITION p8 VALUES LESS THAN (2008), 
PARTITION p9 VALUES LESS THAN (2009));  -- Секционировать по годам, таблицу studentsпо полю birth_dateс помощью механизма range

CREATE TABLE teachers (
 teacher_no int NOT NULL,
 teacher_name VARCHAR(20) NOT NULL,
 phone_no INTEGER NOT NULL);
 
 CREATE TABLE courses (
 course_no int NOT NULL,
 course_name VARCHAR(20) NOT NULL,
 start_date date NOT NULL,
 end_date date NOT NULL);

create index S_email on students(email) ;  -- Создать индекс по полю students.email

CREATE UNIQUE INDEX T_phone_no ON teachers(phone_no);  -- Создать уникальный индекс по полю teachers.phone_no  
  
/*На свое усмотрение добавить тестовые данные (7-10 строк) в наши три таблицы.*/

INSERT INTO students
VALUES
(1,1,1,'Viktor','@viktor12','2000-02-10'),
(2,2,2,'Vitya','@vitya13','2001-02-12'),
(3,3,3,'Misha','@misha14','2002-01-20'),
(4,4,4,'Vova','@vova15','2003-05-03'),
(5,5,5,'Dima','@dima16','2004-08-04'),
(6,6,6,'Kolya','@kolya17','2005-01-05'),
(7,7,7,'Mark','@mark18','2006-09-06'),
(8,8,8,'Tom','@tom19','2007-10-07'),
(9,9,9,'Kim','@kim20','2008-12-08'),
(10,10,10,'Lom','@lom21','2008-01-09');

INSERT INTO teachers
VALUES
(1, 'Tim', '095485452'),
(2, 'Tony', '093546554'),
(3, 'Kim', '0984235852'),
(4, 'Wol' ,'0987652632'),
(5, 'Solo', '0741585296'),
(6, 'Igor' ,'0741585223'),
(7, 'Nika' ,'096321855'),
(8, 'Shasha' ,'0742896321'),
(9, 'Bob' ,'012398563'),
(10, 'Jek', '032896216');

INSERT INTO courses
VALUES
(1,'maths','2007-01-12','2008-12-01' ),
(2,'chemistry','1998-12-01','1999-12-01'),
(3,'finance', '1785-12-15','1789-12-15'),
(4,'algebra' ,'2001-01-12','2001-08-16'),
(5,'historyy','2002-01-13','2003-08-15' ),
(6,'music','2003-03-03','2005-05-05' ),
(7,'biology' ,'2004-05-04','2004-05-28'),
(8,'astronomy' ,'2006-01-19','2007-12-21'),
(9,'physicist' ,'2007-08-08','2009-07-12'),
(10,'languagee' ,'2000-01-01','2001-05-05');

/*Отобразить данные за любой год из таблицы students и зафиксировать в виду 
комментария план выполнения запроса, где будет видно что запрос будет выполняться по конкретной секции.*/

EXPLAIN SELECT *
FROM students
WHERE birth_date = '2000-02-10' ; /*1	SIMPLE	students	p1	ALL					1	100.00	Using where*/



 /* Отобразить данные учителя, по любому одному номеру телефона и зафиксировать план выполнения запроса, 
 где будет видно, что запрос будет выполняться по индексу, а не методом ALL. 
 Далее индекс из поля teachers.phone_no сделать невидимым и зафиксировать план выполнения запроса, где ожидаемый результат -метод ALL. 
 В итоге индекс оставить в статусе -видимый.  */
EXPLAIN SELECT *
FROM teachers
WHERE phone_no = '0741585296' ; /*	id	select_type	table	partitions	type	possible_keys	key	key_len	ref	rows	filtered	Extra
	1	SIMPLE	teachers		const	T_phone_no	T_phone_no	4	const	1	100.00	*/
 
 ALTER TABLE teachers ADD PRIMARY KEY (teacher_no);
 ALTER TABLE teachers ALTER INDEX T_phone_no INVISIBLE;  

EXPLAIN SELECT *
FROM teachers
WHERE phone_no = '0741585296' ;   /*1	SIMPLE	teachers		ALL					10	10.00	Using where */


-- Специально сделаем 3 дубляжа в таблице students (добавим еще 3 одинаковые строки)
ALTER TABLE students  DROP PRIMARY KEY ;

INSERT INTO students
VALUES
(1,1,1,'Viktor','@viktor12','2000-02-10'),
(2,2,2,'Vitya','@vitya13','2001-02-12'),
(3,3,3,'Misha','@misha14','2002-01-20');



-- Написать запрос, который выводит строки с дубляжами.

SELECT
    Email, student_no, teacher_no, course_no ,student_name ,birth_date, COUNT(*)
FROM
    students
GROUP BY
    Email,student_no, teacher_no, course_no , student_name , birth_date
HAVING 
    COUNT(*) > 1;


