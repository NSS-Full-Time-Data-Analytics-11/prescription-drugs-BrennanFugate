SELECT specialty_description AS specialty,
SUM(total_claim_count) AS claim_count,
COUNT(d.opioid_drug_flag) AS opioid_count
FROM prescription
INNER JOIN prescriber
ON prescription.npi = prescriber.npi
INNER JOIN drug AS d
ON prescription.drug_name = d.drug_name
WHERE d.opioid_drug_flag = 'Y'
GROUP BY DISTINCT specialty_description
ORDER BY opioid_count DESC
LIMIT 1;

