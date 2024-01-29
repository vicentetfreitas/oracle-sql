-- 05 Oracle SQL - Agregando dados utilizando Funções de Grupo

-- Funções AVG e SUM
SELECT avg( salary ), SUM( salary )
FROM employees;

-- Funções MIN e MAX
SELECT MIN( hire_date ), MAX( hire_date )
FROM employees;

SELECT MIN(salary), MAX( salary )
FROM employees;

-- Função COUNT
SELECT COUNT( * )
FROM employees;

SELECT COUNT( commission_pct ), COUNT( * )
FROM employees;

SELECT COUNT ( NVL( commission_pct,0 ) )
FROM employees;

-- Função COUNT com DISTINCT
SELECT COUNT( DISTINCT department_id )
FROM employees;

SELECT COUNT ( department_id )
FROM employees;

-- Funções de grupo e valores NULOS
SELECT AVG( commission_pct )
FROM employees;

-- Tratamento de NULOS em funções de grupo
SELECT AVG( NVL( commission_pct, 0)  )
FROM employees;
