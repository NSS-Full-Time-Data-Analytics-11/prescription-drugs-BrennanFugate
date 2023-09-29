-- a. First, create a list of all npi/drug_name combinations for pain management specialists
-- (specialty_description = 'Pain Managment') in the city of Nashville (nppes_provider_city = 'NASHVILLE'), 
--where the drug is an opioid (opiod_drug_flag = 'Y'). 
-- **Warning:** Double-check your query before running it. You will only need to use the prescriber and drug tables since 
-- you don't need the claims numbers yet.

SELECT specialty_description, nppes_provider_city
FROM prescriber AS p1
INNER JOIN prescription AS p2
ON p1.npi = p2.npi




-- b. Next, report the number of claims per drug per prescriber.
-- Be sure to include all combinations, whether or not the prescriber had any claims. 
-- You should report the npi, the drug name, and the number of claims (total_claim_count).
    
-- c. Finally, if you have not done so already, fill in any missing values for total_claim_count with 0.
-- Hint - Google the COALESCE function.