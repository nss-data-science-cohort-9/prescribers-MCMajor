--For this exericse, you'll be working with a database derived from the Medicare Part D Prescriber Public Use File. 
--More information about the data is contained in the Methodology PDF file. See also the included entity-relationship diagram.

-- 1. 
-- a. Which prescriber had the highest total 
--number of claims (totaled over all drugs)? 
--Report the npi and the total number of claims.
SELECT
	NPI,
	sum(TOTAL_CLAIM_COUNT) as total_claims
FROM
	PRESCRIPTION
	INNER JOIN DRUG ON PRESCRIPTION.DRUG_NAME = DRUG.DRUG_NAME
GROUP BY
	PRESCRIPTION.NPI
ORDER BY
	total_claims DESC;
/* block of code here */ -- used this at the beginning of the code to block out everything except the lines of code

select *
from prescription;

-- b. Repeat the above, but this time report the nppes_provider_first_name, nppes_provider_last_org_name,
-- specialty_description, and the total number of claims.

