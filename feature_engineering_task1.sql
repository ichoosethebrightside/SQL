-------------------------------- TASK 1 ------------------------------------------
-- **** Performing One-Hot Encoding in "LotShape" column ****
----------------------------------------------------------------------------------
SELECT * FROM property_sales;

SELECT Id, mssubclass,
COUNT(CASE WHEN Lotshape = 'Regular' THEN 1 END) AS Regular,
COUNT(CASE WHEN Lotshape = 'Irregular' THEN 1 END) AS Irregular,
COUNT(CASE WHEN Lotshape = 'Slightly irregular' THEN 1 END) AS Slightly_irregular,
COUNT(CASE WHEN Lotshape = 'Moderately irregular' THEN 1 END) AS Moderately_irregular
FROM property_sales
GROUP BY Id, mssubclass
ORDER BY Id;

-----------------------------------------------------------------------------------
-- **** Performing One-Hot Encoding in "bldgtype" column ****
-----------------------------------------------------------------------------------
SELECT Id, mssubclass,
COUNT(CASE WHEN bldgtype = 'Single-family Detached' THEN 1 END) AS Single_family_Detached,
COUNT(CASE WHEN bldgtype = 'Townhouse End Unit' THEN 1 END) AS Townhouse_End_Unit,
COUNT(CASE WHEN bldgtype = 'Two-family Conversion; originally built as one-family dwelling' THEN 1 END) AS Two_family_Conversion,
COUNT(CASE WHEN bldgtype = 'Duplex' THEN 1 END) AS Duplex
FROM property_sales
GROUP BY Id, mssubclass
ORDER BY Id;

-----------------------------------------------------------------------------------
-- **** Performing One-Hot Encoding in "mssubclass" column ****
-----------------------------------------------------------------------------------
select Id, mssubclass,
COUNT(CASE WHEN mssubclass = '2-STORY 1945 & OLDER' THEN 1 END) AS "2-STORY 1945 & OLDER",
COUNT(CASE WHEN mssubclass = '2-STORY 1946 & NEWER' THEN 1 END) AS "2-STORY 1946 & NEWER",
COUNT(CASE WHEN mssubclass = '1-STORY 1946 & NEWER ALL STYLES' THEN 1 END) AS "1-STORY 1946 & NEWER ALL STYLES",
COUNT(CASE WHEN mssubclass = '1-1/2 STORY FINISHED ALL AGES' THEN 1 END) AS "1-1/2 STORY FINISHED ALL AGES",
COUNT(CASE WHEN mssubclass = '1-1/2 STORY - UNFINISHED ALL AGES' THEN 1 END) AS "1-1/2 STORY - UNFINISHED ALL AGES",
COUNT(CASE WHEN mssubclass = 'DUPLEX - ALL STYLES AND AGES' THEN 1 END) AS "1-1/2 DUPLEX - ALL STYLES AND AGES",
COUNT(CASE WHEN mssubclass = 'SPLIT OR MULTI-LEVEL' THEN 1 END) AS "SPLIT OR MULTI-LEVEL",
COUNT(CASE WHEN mssubclass = '2-STORY PUD - 1946 & NEWER' THEN 1 END) AS "2-STORY PUD - 1946 & NEWER",
COUNT(CASE WHEN mssubclass = 'SPLIT FOYER' THEN 1 END) AS "SPLIT FOYER",
COUNT(CASE WHEN mssubclass = '1-STORY PUD (Planned Unit Development) - 1946 & NEWER' THEN 1 END) AS "1-STORY PUD - 1946 & NEWER",
COUNT(CASE WHEN mssubclass = '2 FAMILY CONVERSION - ALL STYLES AND AGES' THEN 1 END) AS "2 FAMILY CONVERSION - ALL STYLES AND AGES",
COUNT(CASE WHEN mssubclass = '2-1/2 STORY ALL AGES' then 1 end) as "2-1/2 STORY ALL AGES",
COUNT(CASE WHEN mssubclass = 'PUD - MULTILEVEL - INCL SPLIT LEV/FOYER' THEN 1 END) AS "PUD - MULTILEVEL - INCL SPLIT LEV/FOYER"
FROM property_sales
GROUP BY Id, mssubclass
ORDER BY Id;

-----------------------------------------------------------------------------------
-- **** Performing One-Hot Encoding in "landslope" column ****
-----------------------------------------------------------------------------------
SELECT Id, mssubclass,
COUNT(CASE WHEN landslope = 'Gentle slope' THEN 1 END) AS Gentle_slope,
COUNT(CASE WHEN landslope = 'Moderate Slope' THEN 1 END) AS Moderate_slope
FROM property_sales
GROUP BY Id, mssubclass
ORDER BY Id;

