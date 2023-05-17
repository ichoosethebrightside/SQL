-------------------------------- TASK 5 ----------------------------------------------------------------------------------------
--          **** Performing Standardization on all numerical column ****
--------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM property_sales; 

SELECT ID, 
	mssubclass, 
	bldgtype,
	((CASE WHEN lotfrontage = 'NA' THEN null ELSE CAST(lotfrontage AS FLOAT) END) - AVG(CASE WHEN lotfrontage = 'NA' THEN null ELSE CAST(lotfrontage AS FLOAT) END) OVER()
	 	/STDDEV_SAMP(CASE WHEN lotfrontage = 'NA' THEN null ELSE CAST(lotfrontage AS FLOAT) END) OVER()) AS lotfrontage_std,
	(lotarea - AVG(lotarea) OVER())/(STDDEV_SAMP(lotarea) OVER()) AS lotarea_std, 
	(garagearea - AVG(garagearea) OVER())/(STDDEV_SAMP(garagearea) OVER()) AS garagearea_std,
	(grlivarea - AVG(grlivarea) OVER())/(STDDEV_SAMP(grlivarea) OVER()) AS grlivarea_std,
	(totalbsmtsf - AVG(totalbsmtsf) OVER())/(STDDEV_SAMP(totalbsmtsf) OVER()) AS totalbsmtsf_std,
	(saleprice - AVG(saleprice) OVER())/(STDDEV_SAMP(saleprice) OVER()) AS saleprice_std
FROM property_sales
ORDER BY ID;
