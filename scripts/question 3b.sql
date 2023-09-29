SELECT generic_name AS generic, 
ROUND(AVG(total_drug_cost)/AVG(total_day_supply), 2) AS cost_per_day
FROM prescription AS p
INNER JOIN drug AS d
ON p.drug_name = d.drug_name
GROUP BY DISTINCT generic
ORDER BY cost_per_day DESC
LIMIT 1;