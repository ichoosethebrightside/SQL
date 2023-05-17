-------------------------------- TASK 2 ------------------------------------------
-- **** Performing Ordinal or Label Encoding in "Overallqual" column ****
----------------------------------------------------------------------------------
SELECT * FROM property_sales;

SELECT Id,mssubclass,housestyle,
	 CASE 
	 	WHEN overallqual = 'Very Poor' THEN '1'
		WHEN overallqual = 'Poor' THEN '2'
		WHEN overallqual = 'Fair' THEN '3'
		WHEN overallqual = 'Below Average' THEN '4'
		WHEN overallqual = 'Average' THEN '5'
		WHEN overallqual = 'Above Average' THEN '6'
		WHEN overallqual = 'Good' THEN '7'
		WHEN overallqual = 'Very Good' THEN '8'
		WHEN overallqual = 'Excellent' THEN '9'
		WHEN overallqual = 'Very Excellent' THEN '10'
	END AS overallqual
FROM property_sales
ORDER BY Id;

-----------------------------------------------------------------------------------
-- **** Performing Ordinal or Label Encoding in "OverallCond" column ****
-----------------------------------------------------------------------------------
select Id,mssubclass,housestyle,
	 case 
	 	when overallcond = 'Very Poor' then '1'
		when overallcond = 'Poor' then '2'
		when overallcond = 'Fair' then '3'
		when overallcond = 'Below Average' then '4'
		when overallcond = 'Average' then '5'
		when overallcond = 'Above Average' then '6'
		when overallcond = 'Good' then '7'
		when overallcond = 'Very Good' then '8'
		when overallcond = 'Excellent' then '9'
		when overallcond = 'Very Excellent' then '10'
	end as overallcond
from property_sales
order by Id;
