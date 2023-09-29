-- Find all rows in the prescription table where total_claims is at least 3000.
-- Report the drug_name and the total_claim_count.

SELECT p.drug_name, total_claim_count AS total_claims
FROM prescription AS p
INNER JOIN drug AS d
ON d.drug_name = p.drug_name
WHERE total_claim_count >= 3000