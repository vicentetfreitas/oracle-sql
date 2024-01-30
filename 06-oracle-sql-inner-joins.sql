-- 06. Oracle SQL - INNER Joins

-- Join com a cláusula ON
SELECT
    e.employee_id,
    j.job_title,
    d.department_name,
    l.city,
    l.state_province,
    l.country_id
FROM
    employees e
    INNER JOIN jobs        j ON e.job_id        = j.job_id
    INNER JOIN departments d ON d.department_id = e.department_id
    INNER JOIN locations   l ON d.location_id   = l.location_id
ORDER BY e.employee_id;

-- Natural Joins
SELECT
    department_id,
    department_name,
    location_id,
    city
FROM
    departments
NATURAL INNER JOIN locations;

SELECT
    department_id,
    department_name,
    location_id,
    city
FROM
 departments
NATURAL JOIN locations;