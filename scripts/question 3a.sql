-- Which drug (generic_name) had the highest total drug cost?
-- JOIN prescription/drug drug name, total cost -> order -> limit

SELECT generic_name AS generic, AVG(total_drug_cost) AS cost
FROM prescription AS p
INNER JOIN drug AS d
ON p.drug_name = d.drug_name
GROUP BY DISTINCT generic
ORDER BY cost DESC
LIMIT 1;
