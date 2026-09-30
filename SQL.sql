-- -- - 5. Display employees earning more than 5000
-- SELECT *
-- FROM HR.EMPLOYEES
-- WHERE SALARY > 5000;


-- -- 6. Display employees earning less than 10000
-- SELECT *
-- FROM HR.EMPLOYEES
-- WHERE SALARY < 10000;


-- -- 7. Display employees earning exactly 6000
-- SELECT *
-- FROM HR.EMPLOYEES
-- WHERE SALARY = 6000;


-- -- 8. Display employees from department 50
-- SELECT *
-- FROM HR.EMPLOYEES
-- WHERE DEPARTMENT_ID = 50;


-- -- 9. Display employees with job ID SA_REP
-- SELECT *
-- FROM HR.EMPLOYEES
-- WHERE JOB_ID = 'SA_REP';


-- -- 10. Display employees whose first name is Steven
-- SELECT *
-- FROM HR.EMPLOYEES
-- WHERE FIRST_NAME = 'Steven';



-- -- 1. Count employees in each department
-- SELECT DEPARTMENT_ID, COUNT(*) AS EMPLOYEE_COUNT
-- FROM HR.EMPLOYEES
-- GROUP BY DEPARTMENT_ID;

-- select Salary FROM HR.EMPLOYEES where DEPARTMENT_ID=90 

-- -- 2. Find average salary in each department
-- SELECT DEPARTMENT_ID, AVG(SALARY) AS AVG_SALARY
-- FROM HR.EMPLOYEES
-- GROUP BY DEPARTMENT_ID;


-- -- 3. Find maximum salary in each department
-- SELECT DEPARTMENT_ID, MAX(SALARY) AS MAX_SALARY
-- FROM HR.EMPLOYEES
-- GROUP BY DEPARTMENT_ID;


-- -- 4. Find minimum salary in each department
-- SELECT DEPARTMENT_ID, MIN(SALARY) AS MIN_SALARY
-- FROM HR.EMPLOYEES
-- GROUP BY DEPARTMENT_ID;


-- -- 5. Find total salary paid by each department
-- SELECT DEPARTMENT_ID, SUM(SALARY) AS TOTAL_SALARY
-- FROM HR.EMPLOYEES
-- GROUP BY DEPARTMENT_ID;


-- -- 6. Count employees for each job
-- SELECT JOB_ID, COUNT(*) AS EMPLOYEE_COUNT
-- FROM HR.EMPLOYEES
-- GROUP BY JOB_ID;


-- -- 1. Count employees by department and job
-- SELECT DEPARTMENT_ID, JOB_ID, COUNT(*) AS EMPLOYEE_COUNT
-- FROM HR.EMPLOYEES
-- GROUP BY DEPARTMENT_ID, JOB_ID;


-- -- 2. Average salary by department and job
-- SELECT DEPARTMENT_ID, JOB_ID, AVG(SALARY) AS AVG_SALARY
-- FROM HR.EMPLOYEES
-- GROUP BY DEPARTMENT_ID, JOB_ID;


-- -- 3. Total salary by department and job
-- SELECT DEPARTMENT_ID, JOB_ID, SUM(SALARY) AS TOTAL_SALARY
-- FROM HR.EMPLOYEES
-- GROUP BY DEPARTMENT_ID, JOB_ID;


-- -- 1. Departments having more than 5 employees
-- SELECT DEPARTMENT_ID, COUNT(*) AS EMPLOYEE_COUNT
-- FROM HR.EMPLOYEES
-- GROUP BY DEPARTMENT_ID
-- HAVING COUNT(*) > 5;


-- -- 2. Departments having average salary greater than 8000
-- SELECT DEPARTMENT_ID, AVG(SALARY) AS AVG_SALARY
-- FROM HR.EMPLOYEES
-- GROUP BY DEPARTMENT_ID
-- HAVING AVG(SALARY) > 8000;


-- -- 3. Departments having total salary greater than 50000
-- SELECT DEPARTMENT_ID, SUM(SALARY) AS TOTAL_SALARY
-- FROM HR.EMPLOYEES
-- GROUP BY DEPARTMENT_ID
-- HAVING SUM(SALARY) > 50000;


-- -- 4. Departments having maximum salary greater than 15000
-- SELECT DEPARTMENT_ID, MAX(SALARY) AS MAX_SALARY
-- FROM HR.EMPLOYEES
-- GROUP BY DEPARTMENT_ID
-- HAVING MAX(SALARY) > 15000;


-- -- 5. Departments having minimum salary less than 5000
-- SELECT DEPARTMENT_ID, MIN(SALARY) AS MIN_SALARY
-- FROM HR.EMPLOYEES
-- GROUP BY DEPARTMENT_ID
-- HAVING MIN(SALARY) < 5000;


-- -- 6. Jobs having more than 3 employees
-- SELECT JOB_ID, COUNT(*) AS EMPLOYEE_COUNT
-- FROM HR.EMPLOYEES
-- GROUP BY JOB_ID
-- HAVING COUNT(*) > 3;


-- ----
-- select * from HR.EMPLOYEES where job_id  between '5000' and '10000'

-- select * from HR.Employees where salary between 5000 and 10000

-- select salary from HR.Employees where salary not between 5000 and 10000


-- select DEPARTMENT_ID from HR.Employees where DEPARTMENT_ID in (10,20,30)

-- select DEPARTMENT_ID from HR.Employees where DEPARTMENT_ID not in (10,20,30)


-- select First_Name from HR.Employees where First_Name like 'S%'
-- select First_Name from HR.Employees where First_Name like '%un%'


-- select First_Name from HR.Employees where First_Name like '%n'

-- -- First name starts with S
-- SELECT *
-- FROM hr.employees
-- WHERE first_name LIKE 'S%';

-- -- First name ends with n
-- SELECT *
-- FROM hr.employees
-- WHERE first_name LIKE '%n';

-- -- First name contains 'an'
-- SELECT *
-- FROM hr.employees
-- WHERE first_name LIKE '%an%';

-- -- Second character is 'a'
-- SELECT first_name
-- FROM hr.employees
-- WHERE first_name LIKE '_a%';

-- -- Names that do not start with S
-- SELECT first_name
-- FROM hr.employees
-- WHERE first_name NOT LIKE 'S%';



-- -- 1. UNION
-- -- Combines results from both queries
-- -- Removes duplicate rows

-- SELECT employee_id, first_name, salary
-- FROM hr.employees
-- WHERE department_id between 80 and 90

-- UNION

-- SELECT employee_id, first_name, salary
-- FROM hr.employees
-- WHERE salary > 16000;


-- -- ============================================================
-- -- ORACLE SQL STRING / CHARACTER BUILT-IN FUNCTIONS
-- -- TABLE: HR.EMPLOYEES
-- -- ============================================================


-- -- 1. UPPER()
-- -- Converts text to uppercase

-- SELECT first_name,
--        UPPER(first_name) AS upper_name
-- FROM hr.employees;


-- -- ============================================================


-- -- 2. LOWER()
-- -- Converts text to lowercase

-- SELECT first_name,
--        LOWER(first_name) AS lower_name
-- FROM hr.employees;


-- -- ============================================================


-- -- 3. INITCAP()
-- -- Converts the first letter of each word to uppercase
-- -- Remaining letters become lowercase

-- SELECT first_name,
--        INITCAP(lower(first_name) || ' ' ||  lower(LAST_NAME)) AS formatted_name
-- FROM hr.employees;

-- data science

-- Data Science
-- title()

-- capitalize
-- Data science



-- -- ============================================================


-- -- 4. LENGTH()
-- -- Returns the number of characters in a string

-- SELECT first_name,
--        LENGTH(first_name) AS name_length
-- FROM hr.employees;


-- -- ============================================================


-- -- 5. SUBSTR()
-- -- Extracts part of a string
-- -- SUBSTR(string, starting_position, number_of_characters)

-- SELECT first_name,
--        SUBSTR(first_name, 0, 3) AS first_three_characters
-- FROM hr.employees;


-- -- Example:
-- -- Steven -> Ste
-- -- Neena  -> Nee


-- -- ============================================================


-- -- 6. INSTR()
-- -- Finds the position of a character/string inside another string

-- SELECT first_name,
--        INSTR(first_name, 'a') AS position_of_a
-- FROM hr.employees;


-- -- Example:
-- -- Diana -> 3
-- -- Position starts from 1
-- -- If character is not found, Oracle returns 0


-- -- ============================================================


-- -- 7. CONCAT()
-- -- Combines two strings

-- SELECT first_name,
--        last_name,
--        CONCAT(first_name, last_name) AS full_name
-- FROM hr.employees;


-- -- ============================================================


-- -- 8. || CONCATENATION OPERATOR
-- -- Commonly used instead of CONCAT()
-- -- Can combine multiple strings

-- SELECT first_name,
--        last_name,
--        first_name || '@' || last_name AS full_name
-- FROM hr.employees;


-- -- Example:
-- -- Steven @ King


-- -- ============================================================


-- -- 9. TRIM()
-- -- Removes unwanted spaces/characters
-- -- from the beginning and end of a string

-- SELECT TRIM('   ORACLE SQL   ') AS result
-- FROM dual;


-- -- Result:
-- -- ORACLE SQL


-- -- ============================================================


-- -- 10. LTRIM()
-- -- Removes spaces/characters from the LEFT side

-- SELECT LTRIM('   ORACLE SQL') AS result
-- FROM dual;


-- -- Result:
-- -- ORACLE SQL


-- -- ============================================================


-- -- 11. RTRIM()
-- -- Removes spaces/characters from the RIGHT side

-- SELECT RTRIM('ORACLE SQL   ') AS result
-- FROM dual;


-- -- Result:
-- -- ORACLE SQL


-- -- ============================================================


-- -- 12. LPAD()
-- -- Adds characters to the LEFT side
-- -- until the required length is reached

-- SELECT first_name,
--        LPAD(first_name, 15, '*') AS padded_name
-- FROM hr.employees;


-- -- Example:
-- -- ****Steven


-- -- ============================================================


-- -- 13. RPAD()
-- -- Adds characters to the RIGHT side
-- -- until the required length is reached

-- SELECT first_name,
--        RPAD(first_name, 15, '*') AS padded_name
-- FROM hr.employees;


-- -- Example:
-- -- Steven*****


-- -- ============================================================


-- -- 14. REPLACE()
-- -- Replaces the character in a string with another character

-- select replace('ssss','s','v')

-- SELECT first_name,
--        REPLACE(first_name, 'a', '@') AS modified_name
-- FROM hr.employees;


-- -- Example:
-- -- Diana -> Di@n@


-- -- ============================================================
-- -- ORACLE SQL SET OPERATORS
-- -- UNION, UNION ALL, INTERSECT, MINUS
-- -- ============================================================


-- -- 1. UNION
-- -- Combines results from both queries
-- -- Removes duplicate rows

-- SELECT employee_id, first_name, salary
-- FROM hr.employees
-- WHERE department_id = 50

-- UNION

-- SELECT employee_id, first_name, salary
-- FROM hr.employees
-- WHERE department_id = 80;


-- -- ============================================================


-- -- 2. UNION ALL
-- -- Combines results from both queries
-- -- Keeps duplicate rows

-- SELECT employee_id, first_name, salary
-- FROM hr.employees
-- WHERE department_id = 50

-- UNION ALL

-- SELECT employee_id, first_name, salary
-- FROM hr.employees
-- WHERE salary > 5000;


-- -- ============================================================


-- -- 3. INTERSECT
-- -- Returns rows that are common in both queries

-- SELECT employee_id, first_name, salary
-- FROM hr.employees
-- WHERE department_id = 50

-- INTERSECT

-- SELECT employee_id, first_name, salary
-- FROM hr.employees
-- WHERE salary > 5000;


-- -- ============================================================


-- -- 4. MINUS
-- -- Returns rows from the first query
-- -- that are NOT present in the second query

-- SELECT department_id, first_name, salary
-- FROM hr.employees
-- WHERE department_id = 50

-- MINUS

-- SELECT department_id, first_name, salary
-- FROM hr.employees
-- WHERE salary > 5000;


-- -- ============================================================
-- -- SIMPLE EXAMPLES USING DEPARTMENT_ID
-- -- ============================================================


-- -- UNION
-- -- Get departments having employees with salary > 10000
-- -- OR employees receiving commission
-- -- Duplicates are removed

-- SELECT department_id
-- FROM hr.employees
-- WHERE salary > 10000

-- UNION

-- SELECT department_id
-- FROM hr.employees
-- WHERE commission_pct IS NOT NULL;


-- -- UNION ALL
-- -- Same as UNION, but duplicates are retained

-- SELECT department_id
-- FROM hr.employees
-- WHERE salary > 10000

-- UNION ALL

-- SELECT department_id
-- FROM hr.employees
-- WHERE commission_pct IS NOT NULL;


-- -- INTERSECT
-- -- Get departments satisfying BOTH conditions

-- SELECT department_id
-- FROM hr.employees
-- WHERE salary > 10000

-- INTERSECT

-- SELECT department_id
-- FROM hr.employees
-- WHERE commission_pct IS NOT NULL;


-- -- MINUS
-- -- Get departments from first query
-- -- which are not present in second query

-- SELECT department_id
-- FROM hr.employees
-- WHERE salary > 10000

-- MINUS

-- SELECT department_id
-- FROM hr.employees
-- WHERE commission_pct IS NOT NULL;


-- -- ============================================================
-- -- SUMMARY
-- -- ============================================================

-- -- UNION
-- -- Combines two result sets and REMOVES duplicates

-- -- UNION ALL
-- -- Combines two result sets and KEEPS duplicates

-- -- INTERSECT
-- -- Returns COMMON rows from both result sets

-- -- MINUS
-- -- Returns rows from FIRST query that are NOT in SECOND query


-- -- IMPORTANT RULES:
-- -- 1. Both SELECT statements must have the same number of columns.
-- -- 2. Corresponding columns must have compatible data types.
-- -- 3. Column order should match between the queries.
-- -- 4. ORDER BY should normally be written only at the end.



-- -- Date Related Functions 


-- select first_name,LAST_NAME,HIRE_DATE,sysdate as currentdate from HR.Employees where employee_id = 100



-- -- ============================================================
-- -- ORACLE SQL BASIC DATE FUNCTIONS - 20 EXAMPLES
-- -- Table: HR.EMPLOYEES
-- -- ============================================================


-- -- ============================================================
-- -- 1. SYSDATE
-- -- BUSINESS QUESTION:
-- -- Display each employee's hire date and today's date.
-- -- ============================================================

-- SELECT first_name,
--        hire_date,
--        SYSDATE AS current_date
-- FROM hr.employees;


-- -- ============================================================
-- -- 2. ADD_MONTHS() - ADD 6 MONTHS
-- -- BUSINESS QUESTION:
-- -- What is the date 6 months after each employee joined?
-- -- ============================================================

-- SELECT first_name,
--        hire_date,
--        ADD_MONTHS(hire_date, 6) AS after_6_months
-- FROM hr.employees;


-- select first_name, hire_date, add_months(hire_date,3) as after_3_months
--  from HR.Employees

-- -- ============================================================
-- -- 3. ADD_MONTHS() - ADD 12 MONTHS
-- -- BUSINESS QUESTION:
-- -- When does each employee complete one year?
-- -- ============================================================

-- SELECT first_name,
--        hire_date,
--        ADD_MONTHS(hire_date, 12) AS one_year_completion
-- FROM hr.employees;


-- -- ============================================================
-- -- 4. ADD_MONTHS() - ADD 24 MONTHS
-- -- BUSINESS QUESTION:
-- -- When does each employee complete two years?
-- -- ============================================================

-- SELECT first_name,
--        hire_date,
--        ADD_MONTHS(hire_date, 24) AS two_year_completion
-- FROM hr.employees;


-- -- ============================================================
-- -- 5. ADD_MONTHS() - SUBTRACT 6 MONTHS
-- -- BUSINESS QUESTION:
-- -- What was the date 6 months before each employee joined?
-- -- ============================================================

-- SELECT first_name,
--        hire_date,
--        ADD_MONTHS(hire_date, -6) AS six_months_before
-- FROM hr.employees;


-- -- ============================================================
-- -- 6. MONTHS_BETWEEN()
-- -- BUSINESS QUESTION:
-- -- How many months has each employee worked?
-- -- ============================================================

-- SELECT first_name,
--        hire_date,
--        ceil(MONTHS_BETWEEN(SYSDATE, hire_date)) AS months_worked
-- FROM hr.employees;


-- -- ============================================================
-- -- 7. MONTHS_BETWEEN() - YEARS
-- -- BUSINESS QUESTION:
-- -- How many years has each employee worked?
-- -- Result may contain decimal values.
-- -- ============================================================

-- SELECT first_name,
--        hire_date,
--        sysdate,
--        floor(MONTHS_BETWEEN(SYSDATE, hire_date) / 12) AS years_worked
-- FROM hr.employees;


-- -- ============================================================
-- -- 8. LAST_DAY()
-- -- BUSINESS QUESTION:
-- -- What was the last day of the month in which
-- -- each employee joined?
-- -- ============================================================

-- select last_day(sysdate) as lastDayofcurrentMonth
-- -- select first_day(sysdate) as firstDayofcurrentMonth


-- SELECT first_name,
--        hire_date,
--        LAST_DAY(hire_date) AS last_day_of_month
-- FROM hr.employees;

-- select next_day(sysdate,'Friday') 

-- -- ============================================================
-- -- 9. NEXT_DAY() - MONDAY
-- -- BUSINESS QUESTION:
-- -- What was the next Monday after each employee joined?
-- -- ============================================================
-- SELECT first_name,
--        hire_date,
--        NEXT_DAY(hire_date, 'MONDAY') AS next_monday
-- FROM hr.employees;


-- -- ============================================================
-- -- 10. NEXT_DAY() - FRIDAY
-- -- BUSINESS QUESTION:
-- -- What was the next Friday after each employee joined?
-- -- ============================================================

-- SELECT first_name,
--        hire_date,
--        NEXT_DAY(hire_date, 'FRIDAY') AS next_friday
-- FROM hr.employees;



-- -- TRUNC to get the first day of curr month
-- select trunc(sysdate,'MONTH') as firstDayofcurmonth
-- select trunc(sysdate, 'Q') as firstDayOfCurrQuarter
-- select trunc(sysdate,'YEAR') as firstDayOfCurrYear


-- -- ============================================================
-- -- 11. TRUNC()
-- -- BUSINESS QUESTION:
-- -- Remove the time component from today's date.
-- -- ============================================================
-- select sysdate from dual
-- select trunc(sysdate) from dual

-- SELECT first_name,
--        hire_date,
--        TRUNC(SYSDATE) AS today
-- FROM hr.employees;


-- -- ============================================================
-- -- 12. TRUNC() - MONTH
-- -- BUSINESS QUESTION:
-- -- Find the first day of the employee's joining month.
-- -- ============================================================


-- SELECT first_name,
--        hire_date,
--        TRUNC(hire_date, 'MONTH') AS first_day_of_month
-- FROM hr.employees;


-- -- ============================================================
-- -- 13. TRUNC() - YEAR
-- -- BUSINESS QUESTION:
-- -- Find the first day of the employee's joining year.
-- -- ============================================================

-- SELECT first_name,
--        hire_date,
--        TRUNC(hire_date, 'YEAR') AS first_day_of_year
-- FROM hr.employees;


-- -- to_char to display the date in given format 
-- select to_char(sysdate,'DD-MM-YYYY')
-- select to_char(sysdate,'MM-DD-YYYY')

-- select to_char(sysdate,'MONTH')
-- select to_char(sysdate,'DAY')
-- select to_char(sysdate,'YEAR')



-- -- ============================================================
-- -- 14. TO_CHAR() - FORMAT DATE
-- -- BUSINESS QUESTION:
-- -- Display hire date in DD-MM-YYYY format.
-- -- ============================================================

-- SELECT first_name,
--        hire_date,
--        TO_CHAR(hire_date, 'DD-MM-YYYY') AS formatted_hire_date
-- FROM hr.employees;


-- -- ============================================================
-- -- 15. TO_CHAR() - MONTH NAME
-- -- BUSINESS QUESTION:
-- -- Display the month name in which each employee joined.
-- -- ============================================================

-- SELECT first_name,
--        hire_date,
--        TO_CHAR(hire_date, 'MONTH') AS joining_month
-- FROM hr.employees;


-- -- ============================================================
-- -- 16. TO_CHAR() - DAY NAME
-- -- BUSINESS QUESTION:
-- -- Display the day of the week on which each employee joined.
-- -- ============================================================

-- SELECT first_name,
--        hire_date,
--        TO_CHAR(hire_date, 'DAY') AS joining_day
-- FROM hr.employees;


-- -- ADD DAYS
-- select sysdate+2
-- select sysdate-2
-- select to_char(sysdate+30, 'MONTH')
-- select to_char(sysdate-2,'DAY')

-- select FIRST_NAME, sysdate-HIRE_DATE as numberodfdaysworked from HR.Employees where employee_id =100

-- SELECT first_name,
--        hire_date,
--        TRUNC(SYSDATE) - TRUNC(hire_date) AS days_worked
-- FROM hr.employees 
--  where employee_id =100
-- -- ============================================================
-- -- 17. ADD DAYS
-- -- BUSINESS QUESTION:
-- -- What is the date 30 days after each employee joined?
-- -- In Oracle, DATE + number adds days.
-- -- ============================================================

-- SELECT first_name,
--        hire_date,
--        hire_date + 30 AS after_30_days
-- FROM hr.employees;


-- -- ============================================================
-- -- 18. SUBTRACT DAYS
-- -- BUSINESS QUESTION:
-- -- What was the date 30 days before each employee joined?
-- -- In Oracle, DATE - number subtracts days.
-- -- ============================================================

-- SELECT first_name,
--        hire_date,
--        hire_date - 30 AS before_30_days
-- FROM hr.employees;

-- -- 


-- -- ============================================================
-- -- 19. DIFFERENCE BETWEEN TWO DATES
-- -- BUSINESS QUESTION:
-- -- How many days has each employee worked?
-- -- DATE - DATE returns the difference in days.
-- -- ============================================================

-- SELECT first_name,
--        hire_date,
--        TRUNC(SYSDATE) - TRUNC(hire_date) AS days_worked
-- FROM hr.employees 


-- -- ============================================================
-- -- 20. TO_DATE()
-- -- BUSINESS QUESTION:
-- -- Find employees who joined after 1st January 2005.
-- -- TO_DATE converts character data into DATE.
-- -- ============================================================
-- select to_char(sysdate,'MONTH')
-- select to_char(sysdate,'DAY')
-- select to_char(sysdate,'DAY')

-- select To_Date('24-09-2026','DD_MM_YYYY') as chartodate

-- SELECT first_name,
--        hire_date
-- FROM hr.employees
-- WHERE hire_date > TO_DATE('01-01-2005', 'DD-MM-YYYY');





-- ---------------------------------------- Analytical Functions ----------------------------------------------------------------------------
-- -- ---Rank Number -----
SELECT
    employee_id,
    first_name,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS salary_rank
FROM hr.employees;

-- -- ============================================================
-- -- 1. RANK employees based on highest salary
-- -- Same salary = same rank, next rank may be skipped
-- -- ============================================================

SELECT
    employee_id,
    first_name,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM hr.employees;


-- -- ============================================================
-- -- 2. DENSE_RANK employees based on highest salary
-- -- Same salary = same rank, but ranks are NOT skipped
-- -- ============================================================

-- SELECT
--     employee_id,
--     first_name,
--     salary,
--     DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_dense_rank
-- FROM hr.employees;


-- -- ============================================================
-- -- 3. ROW_NUMBER employees based on highest salary
-- -- Every employee gets a unique number
-- -- ============================================================

SELECT
    employee_id,
    first_name,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_number
FROM hr.employees;


-- -- ============================================================
-- -- 4. RANK employees department-wise based on salary
-- -- Ranking starts again for every department
-- -- ============================================================

SELECT
    employee_id,
    first_name,
    department_id,
    salary,
    RANK() OVER (
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS dept_salary_rank
FROM hr.employees where DEPARTMENT_ID=20


-- -- ============================================================
-- -- 5. DENSE_RANK employees department-wise based on salary
-- -- ============================================================

SELECT
    employee_id,
    first_name,
    department_id,
    salary,
    DENSE_RANK() OVER (
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS dept_dense_rank
FROM hr.employees;


-- -- ============================================================
-- -- 6. ROW_NUMBER department-wise based on salary
-- -- ============================================================

SELECT
    employee_id,
    first_name,
    department_id,
    salary,
    ROW_NUMBER() OVER (
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS dept_row_number
FROM hr.employees;


-- -- ============================================================
-- -- 7. Find Top 5 highest-paid employees using ROW_NUMBER
-- -- ============================================================

select * from hr.employees

SELECT *
FROM (
    SELECT
        employee_id,
        first_name,
        salary,
        ROW_NUMBER() OVER (ORDER BY salary DESC) AS rn
    FROM hr.employees
)
WHERE rn <= 5;


SELECT *
FROM (
    SELECT
        employee_id,
        first_name,
        salary,
        ROW_NUMBER() OVER (ORDER BY salary DESC) AS rn
    FROM hr.employees
)
WHERE rn =2;

select employee_id,first_name,salary from hr.employees order by salary desc
FETCH FIRST 5 ROWS ONLY;


-- -- ============================================================
-- -- 8. Find employees with Top 3 salary ranks using DENSE_RANK
-- -- Includes employees having same salary
-- -- ============================================================

SELECT *
FROM (
    SELECT
        employee_id,
        first_name,
        salary,
        DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
    FROM hr.employees
)
WHERE salary_rank <= 3;


-- -- ============================================================
-- -- 9. Display first 10 employees using ROWNUM
-- -- ============================================================

SELECT
    employee_id,
    first_name,
    last_name,
    salary
FROM hr.employees
WHERE ROWNUM <= 10;


-- -- ============================================================
-- -- 10. Find Top 10 highest-paid employees using ROWNUM
-- -- ORDER BY must happen inside the subquery
-- -- ============================================================

SELECT
    employee_id,
    first_name,
    salary
FROM (
    SELECT
        employee_id,
        first_name,
        salary
    FROM hr.employees
    ORDER BY salary DESC
)
WHERE ROWNUM <= 10;





-- NULL VALUE FUNCTIONS 


-- ============================================================
-- 1. Classify employees based on salary
-- ============================================================

SELECT employee_id,
       first_name,
       salary,
       CASE
           WHEN salary >= 15000 THEN 'High Salary'
           WHEN salary >= 8000  THEN 'Medium Salary'
           ELSE 'Low Salary'
       END AS salary_category
FROM hr.employees;


-- ============================================================
-- 2. Check whether employee salary is above 10,000
-- ============================================================

SELECT employee_id,
       first_name,
       salary,
       CASE
           WHEN salary > 10000 THEN 'Above 10000'
           ELSE '10000 or Below'
       END AS salary_status
FROM hr.employees;


-- ============================================================
-- 3. Categorize employees based on department
-- ============================================================

SELECT employee_id,
       first_name,
       department_id,
       CASE
           WHEN department_id = 10 THEN 'Administration'
           WHEN department_id = 20 THEN 'Marketing'
           WHEN department_id = 50 THEN 'Shipping'
           WHEN department_id = 60 THEN 'IT'
           WHEN department_id = 80 THEN 'Sales'
           ELSE 'Other Department'
       END AS department_name
FROM hr.employees;


-- ============================================================
-- 4. Check whether employee has commission
-- ============================================================

SELECT employee_id,
       first_name,
       commission_pct,
       CASE
           WHEN commission_pct IS NULL THEN 'No Commission'
           ELSE 'Commission Available'
       END AS commission_status
FROM hr.employees;


-- ============================================================
-- 5. Categorize employees based on commission percentage
-- ============================================================

SELECT employee_id,
       first_name,
       commission_pct,
       CASE
           WHEN commission_pct >= 0.30 THEN 'High Commission'
           WHEN commission_pct >= 0.20 THEN 'Medium Commission'
           WHEN commission_pct > 0 THEN 'Low Commission'
           ELSE 'No Commission'
       END AS commission_category
FROM hr.employees;


-- ============================================================
-- 6. Categorize employees based on hire year
-- ============================================================
select EXTRACT(YEAR FROM sysdate)  as year
select EXTRACT(Month FROM sysdate)  as Month
select Extract(day from sysdate) as day

select sysdate+3

SELECT employee_id,
       first_name,
       hire_date,
       CASE
           WHEN EXTRACT(YEAR FROM hire_date) < 2005 THEN 'Old Employee'
           WHEN EXTRACT(YEAR FROM hire_date) <= 2007 THEN 'Experienced Employee'
           ELSE 'New Employee'
       END AS employee_category
FROM hr.employees;


-- ============================================================
-- 7. Check whether employee has a manager
-- ============================================================

SELECT employee_id,
       first_name,
       manager_id,
       CASE
           WHEN manager_id IS NULL THEN 'No Manager'
           ELSE 'Has Manager'
       END AS manager_status
FROM hr.employees;


-- ============================================================
-- 8. Categorize employees based on Job ID
-- ============================================================

SELECT employee_id,
       first_name,
       job_id,
       CASE
           WHEN job_id = 'IT_PROG' THEN 'IT Employee'
           WHEN job_id = 'SA_REP'  THEN 'Sales Employee'
           WHEN job_id = 'ST_CLERK' THEN 'Store Employee'
           WHEN job_id = 'FI_ACCOUNT' THEN 'Finance Employee'
           ELSE 'Other Employee'
       END AS job_category
FROM hr.employees;


-- ============================================================
-- 9. Calculate bonus based on salary
-- High salary = 10%
-- Medium salary = 15%
-- Low salary = 20%
-- ============================================================

SELECT employee_id,
       first_name,
       salary,
       CASE
           WHEN salary >= 15000 THEN salary * 0.10
           WHEN salary >= 8000  THEN salary * 0.15
           ELSE salary * 0.20
       END AS bonus
FROM hr.employees;


-- ============================================================
-- 10. Calculate salary after bonus
-- ============================================================

SELECT employee_id,
       first_name,
       salary,
         CASE
           WHEN salary >= 15000 THEN salary * 0.10
           WHEN salary >= 8000  THEN salary * 0.15
           ELSE salary * 0.20
       END AS bonus,
       CASE
           WHEN salary >= 15000 THEN salary + (salary * 0.10)
           WHEN salary >= 8000  THEN salary + (salary * 0.15)
           ELSE salary + (salary * 0.20)
       END AS salary_after_bonus
FROM hr.employees;

-- ============================================================
-- 11. Categorize employees based on first letter of name
-- ============================================================

SELECT employee_id,
       first_name,
       CASE
           WHEN first_name LIKE 'A%' THEN 'Name Starts With A'
           WHEN first_name LIKE 'S%' THEN 'Name Starts With S'
           WHEN first_name LIKE 'J%' THEN 'Name Starts With J'
           ELSE 'Other Name'
       END AS name_category
FROM hr.employees;


-- ============================================================
-- 12. Categorize salary into 4 levels
-- ============================================================

SELECT employee_id,
       first_name,
       salary,
       CASE
           WHEN salary >= 20000 THEN 'Level 1'
           WHEN salary >= 15000 THEN 'Level 2'
           WHEN salary >= 10000 THEN 'Level 3'
           ELSE 'Level 4'
       END AS salary_level
FROM hr.employees;


-- ============================================================
-- 13. Check employee eligibility for bonus
-- ============================================================

SELECT employee_id,
       first_name,
       salary,
       CASE
           WHEN salary < 10000 THEN 'Eligible for Bonus'
           ELSE 'Not Eligible for Bonus'
       END AS bonus_eligibility
FROM hr.employees;


-- ============================================================
-- 14. Categorize departments into business areas
-- ============================================================

SELECT employee_id,
       first_name,
       department_id,
       CASE
           WHEN department_id IN (10, 20, 30) THEN 'Business Operations'
           WHEN department_id IN (50, 60) THEN 'Technical Operations'
           WHEN department_id IN (80, 90) THEN 'Sales and Management'
           ELSE 'Other'
       END AS business_area
FROM hr.employees;


-- ============================================================
-- 15. Categorize salary using AND condition
-- ============================================================

SELECT employee_id,
       first_name,
       salary,
       CASE
           WHEN salary >= 5000 AND salary < 10000
                THEN 'Salary Between 5000 and 9999'

           WHEN salary >= 10000 AND salary < 15000
                THEN 'Salary Between 10000 and 14999'

           WHEN salary >= 15000
                THEN 'Salary 15000 or Above'

           ELSE 'Salary Below 5000'
       END AS salary_range
FROM hr.employees;


-- ============================================================
-- 16. Use CASE WHEN inside ORDER BY
-- Custom department sorting
-- ============================================================

SELECT employee_id,
       first_name,
       department_id
FROM hr.employees
ORDER BY
       CASE
           WHEN department_id = 60 THEN 1
           WHEN department_id = 80 THEN 2
           WHEN department_id = 50 THEN 3
           ELSE 4
       END;


-- ============================================================
-- 17. Count high, medium and low salary employees
-- ============================================================

SELECT 
       SUM(CASE
               WHEN salary >= 15000 THEN 1
               ELSE 0
           END) AS high_salary_count,

       SUM(CASE
               WHEN salary >= 8000 AND salary < 15000 THEN 1
               ELSE 0
           END) AS medium_salary_count,

       SUM(CASE
               WHEN salary < 8000 THEN 1
               ELSE 0
           END) AS low_salary_count
FROM hr.employees;


-- ============================================================
-- 18. Calculate department-wise high salary employee count
-- ============================================================

SELECT department_id,
       COUNT(*) AS total_employees,

       SUM(
           CASE
               WHEN salary >= 10000 THEN 1
               ELSE 0
           END
       ) AS high_salary_employees

FROM hr.employees
GROUP BY department_id
ORDER BY department_id;


-- ============================================================
-- 19. Give different salary increments based on department
-- IT = 20%
-- Sales = 15%
-- Others = 10%
-- ============================================================

SELECT employee_id,
       first_name,
       department_id,
       salary,

       CASE
           WHEN department_id = 60
                THEN salary * 1.20

           WHEN department_id = 80
                THEN salary * 1.15

           ELSE salary * 1.10
       END AS new_salary

FROM hr.employees;


-- ============================================================
-- 20. Multiple conditions: Salary + Department
-- ============================================================

SELECT employee_id,
       first_name,
       department_id,
       salary,

       CASE
           WHEN department_id = 60
                AND salary >= 10000
                THEN 'Senior IT Employee'

           WHEN department_id = 60
                AND salary < 10000
                THEN 'Junior IT Employee'

           WHEN department_id = 80
                AND salary >= 10000
                THEN 'Senior Sales Employee'

           WHEN department_id = 80
                AND salary < 10000
                THEN 'Junior Sales Employee'

           ELSE 'Other Employee'
       END AS employee_status

FROM hr.employees;



/*
====================================================================
ORACLE SQL NULL FUNCTIONS - 20 QUERIES
TABLE: HR.EMPLOYEES

Functions Covered:
1. NVL()
2. NVL2()
3. COALESCE()
4. DECODE()
5. NULLIF()
====================================================================
*/


-- ================================================================
-- NVL() - EXAMPLES
-- NVL(expression, replacement_value)
-- If expression is NULL, Oracle returns replacement_value.
-- ================================================================


-- ----------------------------------------------------------------
-- 1. Replace NULL commission with 0
-- Question:
-- Display employee ID, first name, salary and commission.
-- If commission_pct is NULL, display 0.
-- ----------------------------------------------------------------

SELECT
    employee_id,
    first_name,
    salary,
    commission_pct,
    NVL(commission_pct, 0) AS commission
FROM hr.employees;


-- ----------------------------------------------------------------
-- 2. Calculate commission amount using NVL
-- Question:
-- Calculate the commission amount for every employee.
-- Employees without commission should get commission amount = 0.
--
-- Example:
-- Salary = 10000
-- Commission = 0.20
-- Commission Amount = 2000
-- ----------------------------------------------------------------

SELECT
    employee_id,
    first_name,
    salary,
    commission_pct,
    salary * NVL(commission_pct, 0) AS commission_amount
FROM hr.employees;


-- ----------------------------------------------------------------
-- 3. Calculate total salary including commission
-- Question:
-- Calculate salary + commission amount.
-- If commission_pct is NULL, consider commission as 0.
-- ----------------------------------------------------------------

SELECT
    employee_id,
    first_name,
    salary,
    commission_pct,
    salary + (salary * NVL(commission_pct, 0)) AS total_salary
FROM hr.employees;


-- ----------------------------------------------------------------
-- 4. Replace NULL manager ID
-- Question:
-- Display manager ID.
-- If an employee does not have a manager, display 0.
-- ----------------------------------------------------------------

SELECT
    employee_id,
    first_name,
    last_name,
    manager_id,
    NVL(manager_id, 0) AS manager_id_after_nvl
FROM hr.employees;



-- ================================================================
-- NVL2() - EXAMPLES
--
-- Syntax:
-- NVL2(expression, value_if_not_null, value_if_null)
--
-- If expression IS NOT NULL -> second argument
-- If expression IS NULL     -> third argument
-- ================================================================


-- ----------------------------------------------------------------
-- 5. Check whether an employee receives commission
-- Question:
-- If commission_pct has a value, display 'Gets Commission'.
-- Otherwise display 'No Commission'.
-- ----------------------------------------------------------------

SELECT
    employee_id,
    first_name,
    salary,
    commission_pct,
    NVL2(
        commission_pct,
        'Gets Commission',
        'No Commission'
    ) AS commission_status
FROM hr.employees;


-- ----------------------------------------------------------------
-- 6. Check whether employee has a manager
-- Question:
-- If manager_id is NOT NULL, display 'Has Manager'.
-- If manager_id is NULL, display 'No Manager'.
-- ----------------------------------------------------------------

SELECT
    employee_id,
    first_name,
    manager_id,
    NVL2(
        manager_id,
        'Has Manager',
        'No Manager'
    ) AS manager_status
FROM hr.employees;


-- ----------------------------------------------------------------
-- 7. Calculate bonus using NVL2
-- Question:
-- If employee has commission, give a 20% bonus.
-- If employee does not have commission, give a 10% bonus.
-- ----------------------------------------------------------------

SELECT
    employee_id,
    first_name,
    salary,
    commission_pct,
    NVL2(
        commission_pct,
        salary * 0.20,
        salary * 0.10
    ) AS bonus
FROM hr.employees;


-- ----------------------------------------------------------------
-- 8. Calculate salary after bonus using NVL2
-- Question:
-- Employees with commission get a 20% salary increase.
-- Employees without commission get a 10% salary increase.
-- ----------------------------------------------------------------

SELECT
    employee_id,
    first_name,
    salary,
    commission_pct,
    NVL2(
        commission_pct,
        salary + (salary * 0.20),
        salary + (salary * 0.10)
    ) AS salary_after_bonus
FROM hr.employees;



-- ================================================================
-- COALESCE() - EXAMPLES
--
-- Syntax:
-- COALESCE(value1, value2, value3, ...)
--
-- Returns the FIRST NON-NULL value.
-- ================================================================


-- ----------------------------------------------------------------
-- 9. Return commission if available, otherwise salary
-- Question:
-- Return commission_pct when it is available.
-- If commission_pct is NULL, return salary.
-- ----------------------------------------------------------------

SELECT
    employee_id,
    first_name,
    salary,
    commission_pct,
    COALESCE(commission_pct, salary) AS first_available_value
FROM hr.employees;


-- ----------------------------------------------------------------
-- 10. Find first available contact information
-- Question:
-- Display phone number if available.
-- If phone number is NULL, display email.
-- ----------------------------------------------------------------

SELECT
    employee_id,
    first_name,
    phone_number,
    email,
    COALESCE(phone_number, email) AS preferred_contact
FROM hr.employees;