-- 02 Oracle SQL - Restringindo e Ordenando Dados

-- Cláusula WHERE
SELECT employee_id, last_name, job_id, department_id
FROM employees
WHERE department_id = 60;

-- String de caracteres na cláusula WHERE
SELECT first_name, last_name, job_id, department_id, hire_date
FROM employees
WHERE last_name = 'King';

SELECT first_name, last_name, job_id, department_id, hire_date
FROM employees 
WHERE  hire_date = '30/01/04';

-- Operadores de comparação na cláusula WHERE
SELECT last_name, salary
FROM employees
WHERE salary >= 10000;

-- Operador BETWEEN
SELECT last_name, salary
FROM employees
WHERE salary BETWEEN 10000 AND 15000;

-- Operador IN
SELECT employee_id, last_name, salary, manager_id, job_id
FROM employees
WHERE job_id IN ('IT_PROG', 'FI_ACCOUNT', 'SA_REP');

-- Operador LIKE
SELECT first_name, last_name, job_id
FROM employees
WHERE first_name LIKE 'Sa%';

-- Uso de vários caracteres curinga
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '_a%';

-- Comparações com valor NULL
SELECT last_name, manager_id
FROM employees
WHERE manager_id = NULL;

-- Expressão de comparação IS NULL
SELECT last_name, manager_id
FROM employees
WHERE manager_id IS NULL;

-- Operador AND
SELECT employee_id, last_name, job_id
FROM employees
WHERE salary >= 5000 AND job_id = 'IT_PROG';

--Operador OR
SELECT employee_id, last_name, job_id
FROM employees
WHERE salary >= 5000 OR job_id = 'IT_PROG';

-- Operador NOT
SELECT employee_id, last_name, salary, manager_id, job_id
FROM employees
WHERE job_id NOT IN ('IT_PROG', 'FI_ACCOUNT', 'SA_REP');

-- Regras e precedência
SELECT last_name, job_id, salary
FROM employees
WHERE job_id = 'SA_REP' OR job_id = 'IT_PROG' AND salary > 10000;

-- Utilizando parênteses para sobrepor as regras de precedência
SELECT last_name, job_id, salary
FROM employees
WHERE ( job_id = 'SA_REP' OR job_id = 'IT_PROG' ) AND salary > 10000;

-- ORDER BY
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date ASC;

SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date DESC;

-- ORDER BY referenciando ALIAS
SELECT employee_id, last_name, salary * 12 salario_anual
FROM employees
ORDER BY salario_anual;

-- ORDER BY referenciando a posição
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY 4;

-- ORDER BY Múltiplas colunas ou expressões
SELECT last_name, department_id, salary
FROM employees
ORDER BY department_id, salary, DESC;

-- Variáveis de substituição &
SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE employee_id = &employee_id;

SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE employee_id = &&employee_id;

-- Variáveis de substituição com valores tipo Character e Date
SELECT last_name, department_id, job_id, salary * 12
FROM employees
WHERE job_id = '&job_id';

-- Comando DEFINE
DEFINE employee_id = 101

SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE employee_id = &employee_id;

DEFINE employee_id
UNDEFINE employee_id
