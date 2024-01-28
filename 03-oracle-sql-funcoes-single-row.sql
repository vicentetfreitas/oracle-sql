-- 03 Oracle SQL - Utilizando Funções Single Row

-- Uppercase and lowercase conversion functions
SELECT employee_id, last_name, department_id
FROM employees
WHERE last_name = 'KING';

SELECT employee_id, last_name, department_id
FROM employees
WHERE UPPER(last_name) = 'KING';

-- Character manipulation functions
SELECT CONCAT('Course: ', 'ORACLE 19c Introduction'),
       SUBSTR('ORACLE 19c Introduction',1, 11),
       LENGTH('ORACLE 19c Introduction'),
       INSTR('ORACLE 19c Introduction','ORACLE')
FROM dual;

SELECT first_name "Name", 
       LPAD( first_name,20,' ' ) "Right aligned name",
       RPAD( first_name,20,' ' ) "Name aligned left"
FROM employees;

SELECT job_title, REPLACE( job_title,'President', 'Presidente' ) CARGO
FROM jobs
WHERE job_title = 'President';

-- Number type functions
SELECT ROUND( 45.923,2 ), ROUND( 45.923,0 )
FROM dual;

SELECT TRUNC( 45.923,2 ), TRUNC( 45.923,0 )
FROM dual;

SELECT MOD( 1300, 600 ) RESTO
FROM dual;

SELECT ABS( -9 ), SQRT( 9 )
FROM dual;

-- Date type functions
SELECT SYSDATE
FROM dual;

DESC dual;

-- Calculations with date
SELECT SYSDATE, SYSDATE + 30, SYSDATE + 60, SYSDATE - 30
FROM dual;

SELECT last_name, ROUND( (SYSDATE-hire_date)/7,2) "WORK WEEKS"
FROM employees;

SELECT first_name, last_name, ROUND( MONTHS_BETWEEN( SYSDATE, hire_date),2 ) "MONTHS OF WORK"
FROM employees;

SELECT SYSDATE, ADD_MONTHS(SYSDATE,3), NEXT_DAY( SYSDATE, 'SEXTA FEIRA'), LAST_DAY( SYSDATE )
FROM dual;

SELECT SYSDATE, ROUND( SYSDATE, 'MONTH' ), ROUND( SYSDATE, 'YEAR'),
       TRUNC( SYSDATE, 'MONTH' ), TRUNC( SYSDATE, 'YEAR')
FROM dual;

SELECT SYSDATE, TO_CHAR( TRUNC( SYSDATE ), 'DD/MM/YYYY HH24:MI:SS')
FROM dual;
