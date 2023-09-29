--For each drug in the drug table,
--return the drug name and then a column named 'drug_type' 
--which says 'opioid' for drugs which have opioid_drug_flag = 'Y',
--says 'antibiotic' for those drugs which have antibiotic_drug_flag = 'Y',
--and says 'neither' for all other drugs.

SELECT drug_name, 
FROM drug
WHERE 
	(SELECT opioid_drug_flag = 'Y' FROM drug) THEN 'opioid'
	 WHEN 
	(SELECT antibiotic_drug_flag = 'Y' FROM drug) THEN 'antibiotic'
		  ELSE 'neither'
		  END AS drug_type

