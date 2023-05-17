-------------------------------- TASK 4 ----------------------------------------------------------------------------------------
--          **** Performing Mean Normalization on all numerical column ****
--------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM property_sales; 

SELECT id, 
	mssubclass, 
	bldgtype,
	((CASE WHEN lotfrontage = 'NA' THEN null ELSE CAST(lotfrontage AS FLOAT) END) - AVG(CASE WHEN lotfrontage = 'NA' THEN null ELSE CAST(lotfrontage AS FLOAT) END) OVER()
	 	/max(CASE WHEN lotfrontage = 'NA' THEN null ELSE CAST(lotfrontage AS FLOAT)END) OVER() - min(CASE WHEN lotfrontage = 'NA' then null else cast(lotfrontage as float)end) over()) as lotfrontage_MeanNormal,
	(lotarea - AVG(lotarea) OVER())/(MAX(lotarea) OVER() - MIN(lotarea) OVER()) AS lotarea_MeanNormal, 
	(garagearea - AVG(garagearea) OVER())/(MAX(garagearea) OVER() -  MIN(garagearea) OVER()) AS garagearea_MeanNormal,
	(grlivarea - AVG(grlivarea) OVER())/(MAX(grlivarea) OVER() -  MIN(grlivarea) OVER()) AS grlivarea_MeanNormal,
	(totalbsmtsf - AVG(totalbsmtsf) OVER())/(MAX(totalbsmtsf) OVER() - MIN(totalbsmtsf) OVER()) AS totalbsmtsf_MeanNormal,
	(saleprice - AVG(saleprice) OVER())/(MAX(saleprice) OVER() -  MIN(saleprice) OVER()) AS saleprice_MeanNormal
FROM property_sales
ORDER BY id;
