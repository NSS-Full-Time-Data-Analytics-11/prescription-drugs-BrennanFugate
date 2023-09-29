SELECT specialty_description AS specialty,
SUM(total_claim_count) AS claim_count
FROM prescription AS p1
INNER JOIN prescriber AS p2
ON p1.npi = p2.npi
GROUP BY DISTINCT specialty_description
ORDER BY claim_count DESC
LIMIT 1;