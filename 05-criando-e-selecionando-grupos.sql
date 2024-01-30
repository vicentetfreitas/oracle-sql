-- 05. Oracle SQL - Criando e Selecionando Grupos

-- Criando grupos utilizando a cláusula GROUP BY
SELECT department_id, AVG(salary)
FROM employees
GROUP BY department_id
ORDER BY department_id;

SELECT department_id, job_id, SUM(salary)
FROM employees
GROUP BY department_id, job_id
ORDER BY department_id, job_id;

-- Consultas incorretas utilizando funções de grupos
SELECT department_id, MAX(salary)
FROM employees
WHERE MAX(salary) > 10000
GROUP BY department_id;

-- Restringindo grupos utilizando a cláusula HAVING
SELECT department_id, MAX(salary)
FROM employees
GROUP BY department_id
HAVING MAX(salary)>10000
ORDER BY department_id;

SELECT job_id, SUM(salary) TOTAL
FROM employees
WHERE job_id <> 'SA_REP'
GROUP BY job_id
HAVING SUM(salary) > 10000
ORDER BY job_id;

-- Aninhando funções de grupo
SELECT MAX(AVG(salary))
FROM employees
GROUP BY department_id;
