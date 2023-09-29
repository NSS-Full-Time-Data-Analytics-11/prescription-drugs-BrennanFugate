-- Highest

SELECT *
FROM cbsa 
INNER JOIN population AS p
ON cbsa.fipscounty = p.fipscounty
WHERE cbsaname LIKE '%, TN' 
ORDER BY population DESC
LIMIT 1;

-- LOWEST
SELECT *
FROM cbsa 
INNER JOIN population AS p
ON cbsa.fipscounty = p.fipscounty
WHERE cbsaname LIKE '%, TN' 
ORDER BY population ASC
LIMIT 1;