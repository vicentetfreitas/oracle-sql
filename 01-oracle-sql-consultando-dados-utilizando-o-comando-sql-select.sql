-- 01 Oracle SQL - Consultando dados utilizando o comando SQL SELECT 

-- Exibindo a estrutura da tabela
DESCRIBE employees;
DESC jobs;
DESCRIBE departments;

-- Comando SELECT b�sico

-- Exibe todas as colunas da tabela
SELECT * FROM employees;
SELECT * FROM jobs;
SELECT * FROM departments;

-- Selecionando colunas espec�ficas
SELECT department_id, location_id
FROM departments;

SELECT employee_id, first_name, last_name, salary
FROM employees;

SELECT department_id, department_name, manager_id
FROM departments;

-- Operadores aritm�ticos
SELECT first_name, last_name, salary, salary * 1.15
FROM employees;

-- Regras de preced�ncia de operadores
SELECT first_name, last_name, salary, salary + 100 * 1.15
FROM employees;

-- Par�nteses para alterar a preced�ncia
SELECT first_name, last_name, salary, ( salary + 100 ) * 1.15
FROM employees;

-- Valor null
SELECT first_name, last_name, job_id, salary, commission_pct
FROM employees;

-- Valores nulos em express�es aritm�ticas
SELECT first_name, last_name, job_id, commission_pct, 200000 * commission_pct
FROM employees
WHERE commission_pct IS NULL;

-- Alias de coluna
SELECT first_name AS nome, last_name sobrenome, salary salario
FROM employees;

SELECT first_name nome, last_name sobrenome, salary salario
FROM employees;

SELECT first_name "Nome", last_name "Sobrenome", salary "Sal�rio ($)",
       commission_pct "Percentual de comiss�o"
FROM employees;

-- Operador de concatena��o
-- Operador de concatena��o e Strings de caracteres
SELECT first_name || ' ' || last_name || ', data de admiss�o: ' || 
       hire_date "Funcion�rio" FROM employees;

-- Operador alternativo para aspas
SELECT department_name || q'[ Department�s Manager Id: ]' ||
manager_id "Departamento e Gerente"
FROM departments;

-- Linhas duplicadas
SELECT DISTINCT last_name
FROM employees;

SELECT DISTINCT last_name, first_name
FROM employees;
