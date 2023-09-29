-- For each instance that you found in part a, 
-- add a column that indicates whether the drug is an opioid.

SELECT p.drug_name, total_claim_count AS total_claims, d.opioid_drug_flag AS opioid
FROM prescription AS p
INNER JOIN drug AS d
ON d.drug_name = p.drug_name
WHERE total_claim_count >= 3000 

