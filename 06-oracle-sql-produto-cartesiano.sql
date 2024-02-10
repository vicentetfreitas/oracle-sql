-- 06 Oracle SQL - Produto Cartesiano

-- Gerando um produto cartesiano utilizando CROSS JOIN
SELECT
 last_name,
 department_name
FROM
 employees
CROSS JOIN departments;
