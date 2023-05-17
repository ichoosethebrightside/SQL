-------------------------------- TASK 3 ----------------------------------------------------------------------------------------
--           **** Performing Mean Encoding in "mssubclass" column ****
-->> NOTE: In order to perform mean encoding, a temporary table is created to contain the target column (i reference the "overallqual"
-->> column for this. I set above average to very excellent as 1 and 0 for average to very poor rating.)
--------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM property_sales;

---------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Target_temp_table
(	id INTEGER PRIMARY KEY,
 	mssubclass VARCHAR(100),
 	overallqual_as_Target integer
);
 
INSERT INTO Target_temp_table
 (	id,
 	mssubclass,
 	overallqual_as_Target)
SELECT Id,mssubclass,
	 CASE 
	 	WHEN overallqual = 'Very Poor' THEN 0
		WHEN overallqual = 'Poor' THEN 0
		WHEN overallqual = 'Fair' THEN 0
		WHEN overallqual = 'Below Average' THEN 0
		WHEN overallqual = 'Average' THEN 0
		WHEN overallqual = 'Above Average' THEN 1
		WHEN overallqual = 'Good' THEN 1
		WHEN overallqual = 'Very Good' THEN 1
		WHEN overallqual = 'Excellent' THEN 1
		WHEN overallqual = 'Very Excellent' THEN 1
	END AS overallqual_as_Target
FROM property_sales;
 
-----------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM Target_temp_table;
-----------------------------------------------------------------------------------------------------------------------------------

WITH
targ_cte (Id,subclass,target) AS
		(SELECT Id, mssubclass, overallqual_as_Target
			FROM Target_temp_table
		),
psls_cte (Id, subclass) AS
		(SELECT Id, mssubclass
			FROM property_sales
		)
SELECT dot.Id, dot.subclass, target, 
		(sum(dot.target) over (partition by dot.subclass)/sum(count(dot.subclass)) over (partition by dot.subclass)) as target_mean
	from targ_cte dot
INNER JOIN psls_cte nut ON dot.Id = nut.Id
GROUP BY dot.Id, dot.Subclass, target
order by dot.Id;
	
------------------------------------------------------------------------------------------------------------------------------
DROP TABLE Target_temp_table;
 

