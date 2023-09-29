-- For each instance that you found in part a, 
-- add a column that indicates whether the drug is an opioid.

SELECT p.drug_name, total_claim_count AS total_claims, 
d.opioid_drug_flag AS opioid,
nppes_provider_first_name||' '||nppes_provider_last_org_name as provider
FROM prescription AS p
INNER JOIN drug AS d
ON d.drug_name = p.drug_name
INNER JOIN prescriber AS p2
ON p.npi = p2.npi
WHERE total_claim_count >= 3000 