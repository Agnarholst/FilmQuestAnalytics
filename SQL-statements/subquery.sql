SELECT title, year, 
    year - (SELECT ROUND(AVG(year), 0)
    FROM watched) AS y_from_avg,
CASE
    WHEN year - (SELECT ROUND(AVG(year), 0) FROM watched) > 0 THEN "new" 
    ELSE "Old"
END AS SOMETHING
FROM watched;

