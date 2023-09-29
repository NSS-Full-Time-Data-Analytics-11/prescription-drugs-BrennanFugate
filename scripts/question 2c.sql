SELECT specialty_description, SUM(total_claim_count) AS total_claims
FROM prescriber AS p1
LEFT JOIN prescription AS p2
ON p1.npi = p2.npi
GROUP BY DISTINCT specialty_description
ORDER BY total_claims DESC;
